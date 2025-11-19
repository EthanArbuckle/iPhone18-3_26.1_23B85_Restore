uint64_t sub_1D1D98FF8()
{
  v1 = *(v0 + 16);
  v2 = sub_1D1E65F8C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D1E66A7C();
  sub_1D174A5FC(&qword_1EE07B258);
  v5 = sub_1D1E65F6C();
  v7 = v6;

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_1D1D99124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D99148, 0, 0);
}

uint64_t sub_1D1D99148()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1D1E65F1C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D1E65F0C();
  sub_1D1E66A7C();
  sub_1D174A5FC(&qword_1EC644B20);
  sub_1D1E65EFC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1D99258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66F6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66F5C();
  return MEMORY[0x1D3890480](v7, &unk_1D1EAF438, 0, &unk_1D1EAF440, 0, a1, a2);
}

unint64_t sub_1D1D9931C()
{
  result = qword_1EC64F498;
  if (!qword_1EC64F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64F4A0, &qword_1D1EAF488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F498);
  }

  return result;
}

uint64_t sub_1D1D99394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1D1E685AC();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_1D1E66D2C();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D994D0, 0, 0);
}

uint64_t sub_1D1D994D0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4] + 16;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v4;
  swift_unknownObjectRetain();

  sub_1D1E66D3C();
  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v6;
  v11 = *(MEMORY[0x1E69E8740] + 4);
  v12 = swift_task_alloc();
  v0[13] = v12;
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_1D1D99658;
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];

  return MEMORY[0x1EEE6DB20](v15, &unk_1D1EAF4E8, v10, v16, WitnessTable);
}

void sub_1D1D99658()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[12];
    (*(v2[7] + 8))(v2[8], v2[6]);

    MEMORY[0x1EEE6DFA0](sub_1D1D9AA9C, 0, 0);
  }
}

uint64_t sub_1D1D997B0(uint64_t a1)
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
  v10[1] = sub_1D17C4CF0;

  return sub_1D1D99394(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1D1D99890(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1D9AA98, 0, 0);
}

uint64_t sub_1D1D998D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_1D1E67E3C();
  v18 = sub_1D1E67E7C();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a5;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = v17;

  v20 = sub_1D1AD6BD0(0, 0, v16, 0, 0, a7, v19);

  sub_1D1B14EB4(v16);

  return v20;
}

uint64_t sub_1D1D99A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1D1E685AC();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_1D1E66D2C();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D99B88, 0, 0);
}

uint64_t sub_1D1D99B88()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4] + 16;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v4;
  swift_unknownObjectRetain();

  sub_1D1E66CFC();

  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v6;
  v11 = *(MEMORY[0x1E69E8740] + 4);
  v12 = swift_task_alloc();
  v0[13] = v12;
  WitnessTable = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_1D1D99D18;
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];

  return MEMORY[0x1EEE6DB20](v15, &unk_1D1EAF4D8, v10, v16, WitnessTable);
}

void sub_1D1D99D18()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[12];
    (*(v2[7] + 8))(v2[8], v2[6]);

    MEMORY[0x1EEE6DFA0](sub_1D1D99E70, 0, 0);
  }
}

uint64_t sub_1D1D99E70()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D1D99EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1D99F14, 0, 0);
}

uint64_t sub_1D1D99F14()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);

  v5 = v4(v1);

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t _sScT13HomeDataModelytRszs5NeverORs_rlE9waitUntilyScTyytACGSbyYbYAXAFZ(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1D1E67E3C();
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  v10 = sub_1D1AD6BD0(0, 0, v7, 0, 0, &unk_1D1EAF4B8, v9);

  sub_1D1B14EB4(v7);
  return v10;
}

uint64_t sub_1D1D9A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F4A8, &qword_1D1EAF4C0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F4B0, &qword_1D1EAF4C8);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D9A22C, 0, 0);
}

uint64_t sub_1D1D9A22C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v16 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  swift_unknownObjectRetain();

  sub_1D1E66D3C();
  (*(v4 + 16))(v1, v2, v3);
  sub_1D17D8EA8(&qword_1EC64F4B8, &qword_1EC64F4B0, &qword_1D1EAF4C8);
  sub_1D1E6801C();
  v10 = sub_1D17D8EA8(&unk_1EC64F4C0, &qword_1EC64F4A8, &qword_1D1EAF4C0);
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1D1D9A400;
  v13 = v0[6];
  v14 = v0[4];

  return MEMORY[0x1EEE6D8C8](v0 + 12, v14, v10);
}

uint64_t sub_1D1D9A400()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_2;
  }

  else
  {
    v7 = sub_1D1D9A540;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1D9A540()
{
  v1 = *(v0 + 96);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = sub_1D17D8EA8(&unk_1EC64F4C0, &qword_1EC64F4A8, &qword_1D1EAF4C0);
    v9 = *(MEMORY[0x1E69E85A8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_1D1D9A400;
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);

    return MEMORY[0x1EEE6D8C8](v0 + 96, v12, v8);
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1D9A710(uint64_t a1)
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
  v10[1] = sub_1D17C4BFC;

  return sub_1D1D99A4C(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1D1D9A7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D9A0EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1D9A8BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D1D9A900()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1D1D9A930(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D1A0AB6C;

  return sub_1D1D99EF4(a1, v4);
}

uint64_t sub_1D1D9A9E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D1A0AFF8;

  return sub_1D1D99890(a1, v4);
}

uint64_t OSActivityInSwift.__allocating_init(logger:dso:named:detached:)(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = sub_1D1E6709C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7 + 48);
  v20 = *(v7 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D1D9B9CC(a2, a3, a5, a6, v22);
  v23 = *(v15 + 16);
  v23(v21 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger, a1, v14);
  v23(v18, a1, v14);
  sub_1D1E66FEC();
  (*(v15 + 8))(a1, v14);
  v24 = v21 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
  *v24 = a3;
  *(v24 + 8) = a4;
  *(v24 + 16) = a5;
  return v21;
}

uint64_t OSActivityInSwift.init(logger:dso:named:detached:)(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, int a5, int a6)
{
  v28 = a6;
  v7 = a5;
  v26 = a5;
  v25 = a4;
  v27 = a2;
  v10 = sub_1D1E6709C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D1E6701C();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v24 - v18;
  *(v6 + 16) = sub_1D1D9B9CC(v27, a3, v7, v28, v18);
  v20 = *(v11 + 16);
  v20(v6 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger, a1, v10);
  v20(v14, a1, v10);
  sub_1D1E66FEC();
  (*(v11 + 8))(a1, v10);
  (*(v15 + 32))(v6 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter, v19, v29);
  v21 = v6 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
  v22 = v25;
  *v21 = a3;
  *(v21 + 8) = v22;
  *(v21 + 16) = v26;
  return v6;
}

uint64_t sub_1D1D9AE58@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v39 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E66FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  v10 = *(v1 + 16);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v32 = v10;
  os_activity_scope_enter(v10, &state);
  v29 = state.opaque[1];
  v30 = state.opaque[0];
  v11 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name);
  v12 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name + 16);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v13 = sub_1D1E66FFC();
  v28 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    if ((v12 & 1) == 0)
    {
      if (v11)
      {
LABEL_9:
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v13, v28, v15, v11, "", v14, 2u);
        MEMORY[0x1D3893640](v14, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v11 >> 32)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((v11 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_15;
    }

    if (v11 >> 16 > 0x10)
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }

    v11 = &v33;
    goto LABEL_9;
  }

LABEL_10:

  (*(v3 + 16))(v7, v9, v2);
  v16 = sub_1D1E6705C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1D1E6704C();
  (*(v3 + 8))(v9, v2);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D1D9BE10;
  *(v21 + 24) = v20;
  v37 = sub_1D1B676E8;
  v38 = v21;
  state.opaque[0] = MEMORY[0x1E69E9820];
  state.opaque[1] = 1107296256;
  v35 = sub_1D1D9B1F8;
  v36 = &block_descriptor_24_2;
  v22 = _Block_copy(&state);

  os_activity_apply(v32, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = v30;
  v24 = v31;
  *v31 = v19;
  v24[1] = v25;
  v24[2] = v29;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D9B220(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = sub_1D1E6702C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66FDC();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v28[0] = v4;
    v31 = v11;
    v32 = result;
    v14 = a1[1];
    v29 = a1[2];
    v30 = v14;
    v15 = *(v1 + 16);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1D1D9BDD4;
    *(v17 + 24) = v16;
    v28[1] = v16;
    v37 = sub_1D1B671A4;
    v38 = v17;
    aBlock.opaque[0] = MEMORY[0x1E69E9820];
    aBlock.opaque[1] = 1107296256;
    v35 = sub_1D1D9B1F8;
    v36 = &block_descriptor_60;
    v18 = _Block_copy(&aBlock);

    os_activity_apply(v15, v18);
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name);
      v20 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name + 16);
      v21 = sub_1D1E66FFC();
      sub_1D1E6703C();
      v22 = sub_1D1E683DC();
      if ((sub_1D1E6855C() & 1) == 0)
      {
LABEL_15:

        (*(v31 + 8))(v13, v32);
        aBlock.opaque[0] = v30;
        aBlock.opaque[1] = v29;
        os_activity_scope_leave(&aBlock);

        goto LABEL_16;
      }

      if (v20)
      {
        if (!(v19 >> 32))
        {
          v23 = v28[0];
          if ((v19 & 0xFFFFF800) == 0xD800)
          {
            goto LABEL_21;
          }

          if (v19 >> 16 <= 0x10)
          {
            v19 = &v33;
            goto LABEL_11;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v19)
      {
        v23 = v28[0];
LABEL_11:

        sub_1D1E6706C();

        if ((*(v23 + 88))(v7, v3) == *MEMORY[0x1E69E93E8])
        {
          v24 = "[Error] Interval already ended";
        }

        else
        {
          (*(v23 + 8))(v7, v3);
          v24 = "";
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v21, v22, v26, v19, v24, v25, 2u);
        MEMORY[0x1D3893640](v25, -1, -1);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D1D9B650(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = *(v4 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name);
      v10 = *(v4 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name + 8);
      v11 = *(v4 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name + 16);
      v12 = sub_1D1E6888C();
      v14 = sub_1D1B1312C(v12, v13, &v15);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_1D16EC000, v5, v6, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D3893640](v8, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }
  }
}

uint64_t OSActivityInSwift.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger;
  v3 = sub_1D1E6709C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter;
  v5 = sub_1D1E6701C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t OSActivityInSwift.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger;
  v3 = sub_1D1E6709C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter;
  v5 = sub_1D1E6701C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 Logger.LoggerActivity.init(activity:)@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  *a2 = a1;
  a2[1] = 0;

  sub_1D1D9AE58(&v6);

  v5 = v6;
  v3 = v7;
  sub_1D1A7EEDC(0);
  result = v5;
  *(a2 + 1) = v5;
  a2[3] = v3;
  return result;
}

Swift::Void __swiftcall Logger.LoggerActivity.end()()
{
  v1 = v0 + 1;
  v2 = *v0;
  sub_1D1D9B220(v1);
}

os_activity_t sub_1D1D9B9CC@<X0>(os_activity_t result@<X0>, unint64_t a2@<X1>, char a3@<W3>, char a4@<W4>, unint64_t a5@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (a2)
    {
      if (a4)
      {
        DetachedOSActivity = CreateDetachedOSActivity(result, a2);
      }

      else
      {
        DetachedOSActivity = CreateDefaultOSActivity(result, a2);
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_18;
  }

  a5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v7 = (a2 & 0x3F) << 8;
    v8 = (a2 >> 6) + v7 + 33217;
    v9 = (v7 | (a2 >> 6) & 0x3F) << 8;
    v10 = (a2 >> 18) + ((v9 | (a2 >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (a2 >> 12) + v9 + 8487393;
    if (a5)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (a2 < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_10;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  a5 = a2 >> 16;
  if (a2 >> 16 > 0x10)
  {
    goto LABEL_19;
  }

  if (a2 > 0x7F)
  {
    goto LABEL_20;
  }

  v6 = a2 + 1;
LABEL_10:
  v12 = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (a4)
  {
    DetachedOSActivity = CreateDetachedOSActivity(result, &v12);
  }

  else
  {
    DetachedOSActivity = CreateDefaultOSActivity(result, &v12);
  }

LABEL_14:

  return DetachedOSActivity;
}

uint64_t type metadata accessor for OSActivityInSwift()
{
  result = qword_1EE07B4B0;
  if (!qword_1EE07B4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D9BB54()
{
  result = sub_1D1E6709C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D1E6701C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1D1D9BC68(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t sub_1D1D9BCB8(uint64_t *a1)
{
  v2 = *a1;

  result = a1[1];
  if (result)
  {
  }

  return result;
}

uint64_t *sub_1D1D9BD04(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  if (!a1[1])
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    sub_1D1D9BD88(a1 + 1);
LABEL_5:
    *(a1 + 1) = *(a2 + 1);
    a1[3] = a2[3];
    return a1;
  }

  a1[1] = v5;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t *sub_1D1D9BD88(uint64_t *a1)
{
  v2 = *a1;

  return a1;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SnapshotCoverageConfig.init(stateSnapshotCoverages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE07CD90 != -1)
  {
    v2 = result;
    v3 = a2;
    swift_once();
    a2 = v3;
    result = v2;
  }

  *(a2 + 16) = -1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t SnapshotCoverageConfig.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000002FLL, 0x80000001D1EC95F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3A0, &qword_1D1EAF5D0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EC9620);
  sub_1D1CC45B0();
  v4 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

uint64_t SnapshotCoverageConfig.hasAnyCoverage.getter()
{
  if (*(*v0 + 16))
  {
    HasAny = 1;
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = *(v0 + 16);
    HasAny = SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter();
  }

  return HasAny & 1;
}

uint64_t SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    sub_1D186145C(v1, 255);
    sub_1D1861470(v1, 255);
    sub_1D1861470(0, 3);
    v4 = 1;
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v6 = 0;
    v7 = 3;
    sub_1D186145C(v1, v2);
    sub_1D186145C(v1, v2);
    v3 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v8, &v6);

    sub_1D1861470(v1, v2);
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t SnapshotCoverageConfig.stateSnapshotCoverages.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SnapshotCoverageConfig.matterSnapshotFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1D186145C(v2, v3);
}

uint64_t SnapshotCoverageConfig.matterSnapshotFilter.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1D1861470(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t SnapshotCoverageConfig.init(stateSnapshotCoverages:matterSnapshotFilter:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (qword_1EE07CD90 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  *a3 = a1;
  result = sub_1D1861470(0, 255);
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  return result;
}

uint64_t SnapshotCoverageConfig.init(matterSnapshotFilter:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  *a2 = qword_1EE07CD98;

  result = sub_1D1861470(0, 255);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1D1D9C2F0()
{
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  qword_1EC64F540 = qword_1EE07CD98;
  *algn_1EC64F548 = 0;
  byte_1EC64F550 = -1;

  return sub_1D1861470(0, 255);
}

uint64_t static SnapshotCoverageConfig.all.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642490 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EC64F548;
  *a1 = qword_1EC64F540;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F550;
  *(a1 + 16) = byte_1EC64F550;

  return sub_1D186145C(v1, v2);
}

uint64_t static SnapshotCoverageConfig.noCoverage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642498 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EC64F560;
  *a1 = qword_1EC64F558;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F568;
  *(a1 + 16) = byte_1EC64F568;

  return sub_1D186145C(v1, v2);
}

uint64_t sub_1D1D9C4AC(uint64_t a1, void *a2, void *a3, char a4, _BYTE *a5)
{
  if (qword_1EE07CD90 != -1)
  {
    v7 = a2;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    swift_once();
    a2 = v7;
    a3 = v10;
    a4 = v9;
    a5 = v8;
  }

  *a2 = MEMORY[0x1E69E7CD0];
  *a3 = 0;
  *a5 = a4;

  return sub_1D1861470(0, 255);
}

uint64_t static SnapshotCoverageConfig.matterOnly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6424A0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EC64F578;
  *a1 = qword_1EC64F570;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F580;
  *(a1 + 16) = byte_1EC64F580;

  return sub_1D186145C(v1, v2);
}

uint64_t sub_1D1D9C5D4()
{
  v0 = sub_1D179B6E8(&unk_1F4D66638);
  swift_arrayDestroy();
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  qword_1EC64F588 = v0;
  unk_1EC64F590 = 0;
  byte_1EC64F598 = -1;

  return sub_1D1861470(0, 255);
}

uint64_t static SnapshotCoverageConfig.appIntentsDefault.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6424A8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EC64F590;
  *a1 = qword_1EC64F588;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F598;
  *(a1 + 16) = byte_1EC64F598;

  return sub_1D186145C(v1, v2);
}

uint64_t SnapshotCoverageConfig.with(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  *(a2 + 8) = v6;
  v7 = *(v2 + 16);
  *(a2 + 16) = v7;

  sub_1D186145C(v6, v7);

  *a2 = a1;
  return result;
}

{
  v4 = *a1;
  v5 = *(v2 + 8);
  *a2 = *v2;
  v6 = *(v2 + 16);
  v7 = *(a1 + 8);

  sub_1D186145C(v5, v6);
  sub_1D186145C(v4, v7);
  result = sub_1D1861470(v5, v6);
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  return result;
}

uint64_t SnapshotCoverageConfig.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D176D714(a1, *v1);
  if (v4 == 255)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D3892850](2);

      sub_1D176DB8C(a1, v3);
      v6 = v3;
      v7 = 2;
    }

    else
    {
      MEMORY[0x1D3892850](3);
      v6 = v3;
      v7 = 3;
    }
  }

  else if (v4)
  {
    MEMORY[0x1D3892850](1);

    sub_1D176DCC0(a1, v3);
    v6 = v3;
    v7 = 1;
  }

  else
  {
    MEMORY[0x1D3892850](0);

    sub_1D176D4E8(a1, v3);
    v6 = v3;
    v7 = 0;
  }

  return sub_1D1861470(v6, v7);
}

uint64_t SnapshotCoverageConfig.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  sub_1D176D714(v5, v2);
  if (v3 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        MEMORY[0x1D3892850](2);
        sub_1D176DB8C(v5, v1);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v3)
    {
      MEMORY[0x1D3892850](1);
      sub_1D176DCC0(v5, v1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D176D4E8(v5, v1);
    }
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1D9C9E4(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D176D714(a1, *v1);
  if (v4 == 255)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D3892850](2);

      sub_1D176DB8C(a1, v3);
      v6 = v3;
      v7 = 2;
    }

    else
    {
      MEMORY[0x1D3892850](3);
      v6 = v3;
      v7 = 3;
    }
  }

  else if (v4)
  {
    MEMORY[0x1D3892850](1);

    sub_1D176DCC0(a1, v3);
    v6 = v3;
    v7 = 1;
  }

  else
  {
    MEMORY[0x1D3892850](0);

    sub_1D176D4E8(a1, v3);
    v6 = v3;
    v7 = 0;
  }

  return sub_1D1861470(v6, v7);
}

uint64_t sub_1D1D9CB04()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  sub_1D176D714(v7, v2);
  if (v3 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        MEMORY[0x1D3892850](2);

        sub_1D176DB8C(v7, v1);
        v4 = v1;
        v5 = 2;
      }

      else
      {
        MEMORY[0x1D3892850](3);
        v4 = v1;
        v5 = 3;
      }
    }

    else if (v3)
    {
      MEMORY[0x1D3892850](1);

      sub_1D176DCC0(v7, v1);
      v4 = v1;
      v5 = 1;
    }

    else
    {
      MEMORY[0x1D3892850](0);

      sub_1D176D4E8(v7, v1);
      v4 = v1;
      v5 = 0;
    }

    sub_1D1861470(v4, v5);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel22SnapshotCoverageConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D17A7400(*a1, *a2))
  {
    if (v3 == 255)
    {
      sub_1D186145C(v2, 255);
      if (v5 == 255)
      {
        sub_1D186145C(v4, 255);
        sub_1D1861470(v2, 255);
        return 1;
      }

      sub_1D186145C(v4, v5);
    }

    else
    {
      v10 = v2;
      v11 = v3;
      if (v5 != 255)
      {
        v8 = v4;
        v9 = v5;
        sub_1D186145C(v2, v3);
        sub_1D186145C(v4, v5);
        sub_1D186145C(v2, v3);
        v6 = static MatterStateSnapshot.Filter.== infix(_:_:)(&v10, &v8);

        sub_1D1861470(v2, v3);
        return (v6 & 1) != 0;
      }

      sub_1D186145C(v2, v3);
      sub_1D186145C(v4, 255);
      sub_1D186145C(v2, v3);
    }

    sub_1D1861470(v2, v3);
    sub_1D1861470(v4, v5);
  }

  return 0;
}

unint64_t sub_1D1D9CD78()
{
  result = qword_1EC64F5A0[0];
  if (!qword_1EC64F5A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64F5A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel19MatterStateSnapshotV6FilterOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1D9CDE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D1D9CE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1D9CE78@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t Streamed.init(wrappedValue:buffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Streamed.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21[-v16];
  (*(v9 + 16))(v12, a1, a4);
  v18 = sub_1D1D9D320();
  (*(v9 + 32))(v17, v12, a4);
  *&v17[*(v13 + 28)] = 0;
  *&v17[*(v13 + 32)] = v18;
  v19 = sub_1D1D9E6EC();
  (*(v14 + 8))(v17, v13);
  result = (*(v9 + 8))(a1, a4);
  *a5 = v19;
  *(a5 + 8) = a2;
  *(a5 + 16) = v22 & 1;
  return result;
}

uint64_t sub_1D1D9D320()
{
  v0 = sub_1D1E67EEC();
  v1 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v2 = sub_1D1E67C7C();
  v3 = sub_1D1AC25F8(v2, v1, v0, MEMORY[0x1E69E6540]);

  return v3;
}

uint64_t Streamed.deinit(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  sub_1D1E67EEC();
  sub_1D1E6766C();
  v4 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v5));
  sub_1D1D9E768(v2 + v4, &v7);
  os_unfair_lock_unlock((v2 + v5));

  swift_getWitnessTable();
  sub_1D1E67ADC();
}

uint64_t sub_1D1D9D4EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Streamed.State() + 32));
  sub_1D1E67EEC();
  *a2 = nullsub_2(v3);
}

void Streamed.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *(a1 + 16);
  v5 = **v2;
  v6 = *(v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_1D1D9E7C8(v4 + v6, a2);
  os_unfair_lock_unlock((v4 + v7));
}

uint64_t Streamed.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1D1D9E820();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1D1D9D67C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  sub_1D1E67EEC();
  sub_1D1E6766C();
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1D1D9ECD8(v3 + v5, &v8);
  os_unfair_lock_unlock((v3 + v6));
  swift_getWitnessTable();
  sub_1D1E67ADC();
}

void (*Streamed.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  v14 = v2[1];
  v15 = *(v2 + 16);
  Streamed.wrappedValue.getter(a2, v11);
  return sub_1D1D9D8DC;
}

void sub_1D1D9D8DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1D1D9D67C(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1D1D9D67C((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Streamed.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = a1;
  v3 = *(a1 + 16);
  v4 = sub_1D1E67E9C();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v36 - v7;
  v46 = *(v3 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v36 - v11;
  v44 = sub_1D1E67EEC();
  v41 = *(v44 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v36 - v13;
  v15 = sub_1D1E67EBC();
  v16 = sub_1D1E685AC();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = *(v15 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v36 - v23;
  v25 = *v2;
  v26 = *(v2 + 16);
  v39 = v2[1];
  v51 = v3;
  v52 = v39;
  LOBYTE(v53) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D40, &qword_1D1E891C0);
  sub_1D1D9CE78(sub_1D1D9E824, v50, MEMORY[0x1E69E73E0], v15, v27, v20);
  v28 = *(v21 + 48);
  if (v28(v20, 1, v15) == 1)
  {
    (*(v21 + 104))(v24, *MEMORY[0x1E69E8650], v15);
    if (v28(v20, 1, v15) != 1)
    {
      (*(v37 + 8))(v20, v38);
    }
  }

  else
  {
    (*(v21 + 32))(v24, v20, v15);
  }

  nullsub_2(v3);
  sub_1D1E67E8C();
  v52 = v25;
  v53 = v39;
  v54 = v26;
  v29 = v45;
  v30 = sub_1D1D9DF98(v45, v14, v43);
  v31 = swift_allocObject();
  v31[2] = v3;
  v31[3] = v25;
  v31[4] = v30;

  v32 = v44;
  sub_1D1E67EAC();
  v33 = v46;
  (*(v46 + 16))(v42, v29, v3);
  v34 = v47;
  sub_1D1E67ECC();
  (*(v48 + 8))(v34, v49);
  (*(v33 + 8))(v29, v3);
  (*(v41 + 8))(v14, v32);
  return (*(v21 + 8))(v24, v15);
}

uint64_t sub_1D1D9DED8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = *MEMORY[0x1E69E8640];
  v4 = sub_1D1E67EBC();
  v5 = *(v4 - 8);
  (*(v5 + 104))(a2, v3, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_1D1D9DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = TupleTypeMetadata2 - 8;
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v17[-v10];
  v12 = *v3;
  v18 = v6;
  v19 = a2;
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_1D1D9ECBC(v12 + v13, v11);
  os_unfair_lock_unlock((v12 + v14));
  v15 = *v11;
  (*(*(v6 - 8) + 32))(a1, &v11[*(v8 + 56)], v6);
  return v15;
}

uint64_t sub_1D1D9E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1E67EEC();
  v7 = sub_1D1E685AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-v10];
  v16 = a4;
  v17 = a3;
  v12 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v13));
  sub_1D1D9ECA0();
  os_unfair_lock_unlock((a2 + v13));
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D1D9E23C()
{
  v0 = *(type metadata accessor for Streamed.State() + 32);
  sub_1D1E67EEC();
  sub_1D1E6769C();
  return sub_1D1E6761C();
}

uint64_t sub_1D1D9E2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  (*(*(a2 - 8) + 24))();
  v5 = *(a1 + *(type metadata accessor for Streamed.State() + 32));
  sub_1D1E67EEC();
  *a3 = nullsub_2(v5);
}

uint64_t sub_1D1D9E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E67E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(v5 + 16))(v8, a2, a3);
  sub_1D1E67EEC();
  sub_1D1E67ECC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D1D9E4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1D1E67EEC();
  v9 = sub_1D1E685AC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v21 - v11;
  result = type metadata accessor for Streamed.State();
  v14 = *(result + 28);
  v15 = *(a1 + v14);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    *(a1 + v14) = v15 + 1;
    v17 = a4;
    v18 = *(v8 - 8);
    (*(v18 + 16))(v12, a2, v8);
    (*(v18 + 56))(v12, 0, 1, v8);
    v21[3] = v15;
    v19 = *(v16 + 32);
    sub_1D1E6769C();
    sub_1D1E676BC();
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    *v17 = v15;
    return (*(*(a3 - 8) + 16))(&v17[v20], a1, a3);
  }

  return result;
}

uint64_t sub_1D1D9E6EC()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1D1E6892C();
  return sub_1D1E6891C();
}

uint64_t sub_1D1D9E784()
{
  v1 = *(v0 + 16);
  sub_1D1E67EEC();
  return sub_1D1E67EDC();
}

uint64_t *sub_1D1D9E878(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_1D1D9E8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_1D1E67EEC();
    result = sub_1D1E6769C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1D9E984(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1D1D9EAD0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1D1D9ECA0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1D1D9E23C();
}

uint64_t sub_1D1D9ED10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t static String.hfLocalized(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66ADC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = sub_1D1E677DC();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v25);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;

  v24 = v12;
  sub_1D1E6776C();
  v13 = 0;
  v22[0] = v6;
  v14 = *(v6 + 16);
  v22[7] = 0x80000001D1EC9660;
  v23 = v14;
  v22[5] = 0x80000001D1EC96C0;
  v22[6] = 0x80000001D1EC9690;
  v22[3] = 0x80000001D1EC9720;
  v22[4] = 0x80000001D1EC96F0;
  v22[1] = 0x80000001D1EC68A0;
  v22[2] = 0x80000001D1EC9750;
  while (1)
  {
    v15 = byte_1F4D5ECC8[v13 + 32];
    v23(v10, v24, v25);
    if (qword_1EE07A000 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE0813C0;
    sub_1D1E66ACC();
    v17 = sub_1D1E6787C();
    v19 = v18;

    if ((v17 != a1 || v19 != a2) && (sub_1D1E6904C() & 1) == 0 && (v17 != 95 || v19 != 0xE100000000000000))
    {
      break;
    }

    if (v13 == 7)
    {
      goto LABEL_13;
    }

LABEL_3:
    ++v13;
  }

  v20 = sub_1D1E6904C();
  if (v13 != 7 && (v20 & 1) != 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  (*(v22[0] + 8))(v24, v25);
  return v17;
}

Swift::Bool __swiftcall useWLANInsteadOfWiFi()()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    wapiCapability = MobileGestalt_get_wapiCapability();

    LOBYTE(v0) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return v0;
}

id static String.hfLocalizedWiFi(_:)(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v7 = 1312902231;
    }

    else
    {
      v7 = 1229343063;
    }

    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v7, 0xE400000000000000);

    v8 = static String.hfLocalized(_:)(a1, a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static String.hfLocalizedPercentage<A>(_:minValue:maxValue:strippedPercentageSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v35 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v37 = a6;
  v16 = *(*(*(a6 + 16) + 24) + 8);
  v17 = sub_1D1E6774C();
  v39 = *(v17 - 8);
  v18 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = a2;
  result = sub_1D1E6772C();
  if (result)
  {
    v23 = *(a5 - 8);
    v24 = v23[2];
    v24(v15, v21, a5);
    v25 = TupleTypeMetadata2;
    v24(&v15[*(TupleTypeMetadata2 + 48)], a3, a5);
    v26 = v34;
    v27 = v36;
    (*(v34 + 16))(v36, v15, v25);
    v32 = *(v25 + 48);
    v33 = v17;
    v28 = v23[4];
    v28(v20, v27, a5);
    v29 = v23[1];
    v29(&v27[v32], a5);
    (*(v26 + 32))(v27, v15, v25);
    v30 = v33;
    v28(&v20[*(v33 + 36)], &v27[*(v25 + 48)], a5);
    v29(v27, a5);
    v31 = BinaryFloatingPoint.localizedPercentageString(range:includesPercentSymbol:)(v20, (v38 & 1) == 0, a5, v37);
    (*(v39 + 8))(v20, v30);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static String.hfLocalizedWithFormat(_:_:)(uint64_t a1, uint64_t a2)
{
  static String.hfLocalized(_:)(a1, a2);

  v2 = sub_1D1E6784C();

  return v2;
}

uint64_t static LocalizedStringResource.BundleDescription.homeDataModel.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = _s25_doNotTouchThisDummyClassCMa();
  v2 = *MEMORY[0x1E6968E00];
  v3 = sub_1D1E6658C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_1D1D9F6E0()
{
  _s25_doNotTouchThisDummyClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE0813C0 = result;
  return result;
}

id static NSBundle.homeDataModel.getter()
{
  _s25_doNotTouchThisDummyClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v1;
}

id _sSS13HomeDataModelE24hfLocalizedWiFiStringKey3forS2S_tFZ_0(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v5 = 1312902231;
    }

    else
    {
      v5 = 1229343063;
    }

    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v5, 0xE400000000000000);

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1D17419CC(a1, &v16);
    if (*(&v17 + 1))
    {
LABEL_3:
      sub_1D16EEE20(&v16, v19);
      v6 = v20;
      v7 = v21;
      v8 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x1EEE9AC00](v8);
      v15[2] = a2;
      v9 = type metadata accessor for Weak();
      v11 = sub_1D18CE91C(sub_1D1DA0850, v15, v6, v9, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v10);
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v12 = v19;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *(a1 + 16);
    v16 = *a1;
    v17 = v13;
    v18 = *(a1 + 32);
    if (*(&v13 + 1))
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for Weak();
  result = sub_1D1E67C7C();
  v11 = result;
  if (*(a1 + 24))
  {
    v12 = a1;
LABEL_9:
    result = __swift_destroy_boxed_opaque_existential_1(v12);
  }

  *a3 = v11;
  return result;
}

uint64_t WeakCollection.append(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for Weak();
  sub_1D1DA08A4();
  sub_1D1E67D1C();
  return sub_1D1E67CDC();
}

uint64_t WeakCollection.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = *v3;
  v8 = *(a3 + 16);
  type metadata accessor for Weak();
  sub_1D1E67D1C();

  swift_getWitnessTable();
  v5 = sub_1D1E6895C();
  v6 = *v4;

  *v4 = v5;
  return result;
}

Swift::Void __swiftcall WeakCollection.removeAll()()
{
  v1 = *(v0 + 16);
  type metadata accessor for Weak();
  sub_1D1E67D1C();

  sub_1D1E67D0C();
}

uint64_t WeakCollection.objects()(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66BEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  sub_1D1E66BDC();
  v21 = v9;
  v10 = *(a1 + 16);
  type metadata accessor for Weak();
  v11 = sub_1D1E67D1C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3891090](&v22, v11, WitnessTable);
  v21 = v22;
  v20 = v8;
  v16 = v10;
  v17 = sub_1D1DA0950;
  v18 = &v19;
  sub_1D1E68B6C();
  swift_getWitnessTable();
  v13 = sub_1D1E67A4C();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D1E682CC();
  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t WeakDictionary.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Weak();
    v7 = sub_1D1E6767C();
  }

  else
  {
    v9 = type metadata accessor for Weak();
    swift_getTupleTypeMetadata2();
    v10 = sub_1D1E67C7C();
    v7 = sub_1D1AC25F8(v10, a2, v9, a3);
  }

  *a4 = v7;
  return result;
}

uint64_t WeakDictionary.set(value:key:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a3[2] - 8) + 64);
  if (MEMORY[0x1EEE9AC00](a1))
  {
    (*(v6 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = a3[3];
    type metadata accessor for Weak();
    v12[1] = sub_1D1DA08A4();
    v8 = a3[4];
    sub_1D1E6769C();
    return sub_1D1E676BC();
  }

  else
  {
    v10 = a3[3];
    type metadata accessor for Weak();
    v11 = a3[4];
    sub_1D1E6769C();
    sub_1D1E6761C();
  }
}

uint64_t WeakDictionary.removeValue(forKey:)(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  type metadata accessor for Weak();
  v5 = a2[4];
  sub_1D1E6769C();
  sub_1D1E6761C();
}

Swift::Void __swiftcall WeakDictionary.removeAll()()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Weak();
  v4 = *(v1 + 32);
  v5 = sub_1D1E6769C();

  MEMORY[0x1EEE688F0](0, v5);
}

uint64_t WeakDictionary.dictionary()(void *a1)
{
  v7 = *v1;
  v3 = a1[2];
  v4 = a1[3];

  swift_getTupleTypeMetadata2();
  v5 = sub_1D1E67C7C();
  sub_1D1AC25F8(v5, v3, v4, a1[4]);

  type metadata accessor for Weak();
  sub_1D1E6769C();
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();

  return v8;
}

uint64_t sub_1D1DA01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[2] = a6;
  v25[0] = a3;
  v25[1] = a1;
  type metadata accessor for Weak();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v25 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  (*(v20 + 16))(v12, a2, TupleTypeMetadata2);
  v21 = *&v12[*(TupleTypeMetadata2 + 48)];
  (*(v13 + 32))(v19, v12, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    (*(v13 + 16))(v17, v19, a4);
    v25[5] = v23;
    sub_1D1E6769C();
    swift_unknownObjectRetain();
    sub_1D1E676BC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D1E6769C();
    sub_1D1E6761C();
  }

  return (*(v13 + 8))(v19, a4);
}

uint64_t WeakDictionary.subscript.getter(uint64_t a1, void *a2)
{
  v4 = *v2;
  v6 = a2[2];
  v5 = a2[3];
  type metadata accessor for Weak();
  v7 = a2[4];
  sub_1D1E676AC();
  if (!v10)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1D1DA04F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 24);
  v8 = *(v6 - 16);
  v9 = *(v6 - 8);
  v12 = *a1;
  v10 = type metadata accessor for WeakDictionary();
  result = WeakDictionary.subscript.getter(a2, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1D1DA0558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(v5 - 8);
  v9 = *a1;
  v10 = type metadata accessor for WeakDictionary();
  v11 = swift_unknownObjectRetain();
  j___s13HomeDataModel14WeakDictionaryV3set5value3keyyq_Sg_xtF(v11, a3, v10);

  return swift_unknownObjectRelease();
}

uint64_t WeakDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  j___s13HomeDataModel14WeakDictionaryV3set5value3keyyq_Sg_xtF(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);

  return swift_unknownObjectRelease();
}

void (*WeakDictionary.subscript.modify(uint64_t **a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  v10 = a3[2];
  v8[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v8[4] = v11;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v9[5] = v13;
  (*(v12 + 16))();
  v15 = *v3;
  *v9 = WeakDictionary.subscript.getter(a2, a3);
  return sub_1D1DA076C;
}

void sub_1D1DA076C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    v9 = swift_unknownObjectRetain();
    WeakDictionary.set(value:key:)(v9, v3, v7);
    (*(v4 + 8))(v3, v6);
    swift_unknownObjectRelease();
    v10 = *v2;
  }

  else
  {
    WeakDictionary.set(value:key:)(v8, v3, v7);
    (*(v4 + 8))(v3, v6);
  }

  swift_unknownObjectRelease();
  free(v3);

  free(v2);
}

uint64_t sub_1D1DA0850@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  type metadata accessor for Weak();
  result = sub_1D1DA08A4();
  *a2 = result;
  return result;
}

uint64_t sub_1D1DA08A4()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_1D1DA08F4(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v3();
    swift_unknownObjectRelease();
    return v6 & 1;
  }

  return result;
}

uint64_t sub_1D1DA0950()
{
  v1 = *(v0 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_1D1E66BCC();
    return 0;
  }

  return result;
}

uint64_t sub_1D1DA0998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D1DA09E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  type metadata accessor for Weak();
  result = sub_1D1DA08A4();
  *a2 = result;
  return result;
}

uint64_t sub_1D1DA0A54(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a1;
  v14 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_1D1E6873C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v13 = v3;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D3891EF0](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v3 = v13;
            v11 = v14;
            goto LABEL_19;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v7 = *(v4 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v3 = Strong, swift_unknownObjectRelease(), v3 == a2))
        {
        }

        else
        {
          sub_1D1E6896C();
          v10 = *(v14 + 16);
          sub_1D1E689AC();
          sub_1D1E689BC();
          v3 = &v14;
          sub_1D1E6897C();
        }

        ++v6;
        if (v8 == v5)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *v3 = v11;
  return result;
}

uint64_t sub_1D1DA0BC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1DA0C14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1DA0CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  (*(v2 + 16))(v8 - v4, v0 + OBJC_IVAR____TtC13HomeDataModelP33_2FEE6254CAF7CE650035D3602F82436C12Continuation_continuation, v1);
  sub_1D1DA1910();
  v6 = sub_1D1E68FEC();
  if (!v6)
  {
    v6 = swift_allocError();
  }

  v8[1] = v6;
  sub_1D1E680AC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D1DA0DF0()
{
  v1 = OBJC_IVAR____TtC13HomeDataModelP33_2FEE6254CAF7CE650035D3602F82436C12Continuation_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1D1DA0E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F878, &qword_1D1EAF8B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23[-v10];
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v8 + 16))(v11, a1, v7);
  v13 = type metadata accessor for Continuation();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + OBJC_IVAR____TtC13HomeDataModelP33_2FEE6254CAF7CE650035D3602F82436C12Continuation_continuation, v11, v7);
  v17 = *&v12[OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation];
  *&v12[OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation] = v16;

  v23[15] = 1;
  sub_1D1E6809C();
  (*(v3 + 8))(v6, v2);
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE0813E0);
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6835C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D16EC000, v19, v20, "HomeManagerDataSyncProxy() initialized", v21, 2u);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  (*(v8 + 8))(a1, v7);
  return v12;
}

id sub_1D1DA11D4(id result)
{
  if (!*(v1 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation))
  {
    return result;
  }

  v2 = result;
  v3 = *(v1 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation);

  v4 = [v2 dataSyncState];
  if (v4 != 4)
  {
    if (v4 == 1)
    {
      if (qword_1EE07A0A0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D1E6709C();
      __swift_project_value_buffer(v17, qword_1EE0813E0);
      v18 = v2;
      v7 = sub_1D1E6707C();
      v8 = sub_1D1E6835C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v35 = v10;
        *v9 = 136315138;
        [v18 dataSyncState];
        result = HMHomeManagerDataSyncStateToString();
        if (result)
        {
          v19 = result;
          v20 = sub_1D1E6781C();
          v22 = v21;

          v23 = sub_1D1B1312C(v20, v22, &v35);

          *(v9 + 4) = v23;
          v16 = "homeManagerDidUpdateDataSyncState() dataSyncState:%s - Good to go!";
          goto LABEL_15;
        }

        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v4)
    {
      if (qword_1EE07A0A0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D1E6709C();
      __swift_project_value_buffer(v24, qword_1EE0813E0);
      v25 = v2;
      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6833C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v28 = 136315138;
        [v25 dataSyncState];
        result = HMHomeManagerDataSyncStateToString();
        if (!result)
        {
LABEL_29:
          __break(1u);
          return result;
        }

        v30 = result;
        v31 = sub_1D1E6781C();
        v33 = v32;

        v34 = sub_1D1B1312C(v31, v33, &v35);

        *(v28 + 4) = v34;
        _os_log_impl(&dword_1D16EC000, v26, v27, "homeManagerDidUpdateDataSyncState() dataSyncState:%s - Unable to continue", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1D3893640](v29, -1, -1);
        MEMORY[0x1D3893640](v28, -1, -1);
      }

      sub_1D1DA0CB4();
      goto LABEL_24;
    }
  }

  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE0813E0);
  v6 = v2;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    [v6 dataSyncState];
    result = HMHomeManagerDataSyncStateToString();
    if (result)
    {
      v11 = result;
      v12 = sub_1D1E6781C();
      v14 = v13;

      v15 = sub_1D1B1312C(v12, v14, &v35);

      *(v9 + 4) = v15;
      v16 = "homeManagerDidUpdateDataSyncState() dataSyncState:%s - Pending State, continue waiting";
LABEL_15:
      _os_log_impl(&dword_1D16EC000, v7, v8, v16, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_17:

LABEL_24:
}

void __swiftcall HDMHomeManagerDataSyncProxy.init()(HDMHomeManagerDataSyncProxy *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HDMHomeManagerDataSyncProxy.init()()
{
  *(v0 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation) = 0;
  v2.super_class = HDMHomeManagerDataSyncProxy;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for Continuation()
{
  result = qword_1EC64F848;
  if (!qword_1EC64F848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1DA176C()
{
  sub_1D1DA17FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D1DA17FC()
{
  if (!qword_1EC64F858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v0 = sub_1D1E680BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64F858);
    }
  }
}

unint64_t type metadata accessor for HDMHomeManagerDataSyncProxy()
{
  result = qword_1EC64F860;
  if (!qword_1EC64F860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64F860);
  }

  return result;
}

unint64_t sub_1D1DA1910()
{
  result = qword_1EC64F870;
  if (!qword_1EC64F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F870);
  }

  return result;
}

uint64_t sub_1D1DA1964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F878, &qword_1D1EAF8B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - v5;
  if (*(v0 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation))
  {
    v7 = qword_1EE07A0A0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EE0813E0);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D16EC000, v9, v10, "homeManagerDidUpdateHomes() will yield DataSyncState.finished", v11, 2u);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
    sub_1D1E6809C();
    (*(v2 + 8))(v6, v1);
    v12 = 0;
    sub_1D1E680AC();
  }

  return result;
}

BOOL HMAccessory.hasVisibleService.getter()
{
  v1 = [v0 services];
  sub_1D17DAA94();
  v2 = sub_1D1E67C1C();

  v15 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_1D1E6873C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3891EF0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v6 serviceType];
    v9 = sub_1D1E6781C();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    ServiceKind.init(rawValue:)(v12);
    if (v16 == 53)
    {
    }

    else
    {

      if (v16 > 0x32u || ((1 << v16) & 0x62C232CC03FF7) == 0)
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_21;
    }
  }

  v4 = v3;
LABEL_16:
  if (v15)
  {
    v13 = sub_1D1E6873C();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != v13;
}

BOOL HMAccessory.isValidWidgetCategory.getter()
{
  HMAccessory.specialMediaCategory.getter(&v15);
  v1 = v15;
  if (v16 <= 1u)
  {
    if (!v16)
    {
      sub_1D18EB2D8(v15, 0);
    }

    goto LABEL_7;
  }

  if (v16 != 2)
  {
    if (v16 != 3)
    {
      v1 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v1 = 0;
  }

LABEL_8:
  v2 = [v0 category];
  v3 = [v2 categoryType];

  v4 = sub_1D1E6781C();
  v6 = v5;

  v7 = *MEMORY[0x1E696C9B8];
  if (sub_1D1E6781C() == v4 && v8 == v6)
  {
    goto LABEL_15;
  }

  v10 = sub_1D1E6904C();

  if (v10)
  {
LABEL_16:

    return 0;
  }

  v11 = *MEMORY[0x1E696CA48];
  if (sub_1D1E6781C() == v4 && v12 == v6)
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = sub_1D1E6904C();

  return (v14 & 1) == 0 && (v1 & 1) != 0;
}

uint64_t HMAccessory.staticMatterDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for StaticMatterDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 supportsNativeMatter])
  {
    goto LABEL_5;
  }

  v12 = HMAccessory.matterDevice.getter();
  if (!v12)
  {
    goto LABEL_5;
  }

  v14 = v12;
  v15 = v13;
  swift_unknownObjectRetain();
  StaticMatterDevice.init(device:accessory:)(v14, v15, v1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    sub_1D1BAB210(v6);
LABEL_5:
    v16 = 1;
    return (*(v8 + 56))(a1, v16, 1, v7);
  }

  sub_1D1AE8C0C(v6, v11);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE07A0B0);
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6835C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EC38D0, &v24);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EC38D0, &v24);
    _os_log_impl(&dword_1D16EC000, v19, v20, "%s Found supported StaticMatterDevice: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v22, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  swift_unknownObjectRelease();
  sub_1D1AE8C0C(v11, a1);
  v16 = 0;
  return (*(v8 + 56))(a1, v16, 1, v7);
}

uint64_t Collection<>.usableByWidgets.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(a2 + 8);
  v9 = sub_1D1E67A8C();
  v10 = sub_1D1785608(v9);

  return v10;
}

uint64_t sub_1D1DA228C(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = &v25 - v4;
  v27 = *a1;
  v5 = [v27 services];
  sub_1D17DAA94();
  v6 = sub_1D1E67C1C();

  v26 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_35:
    v7 = sub_1D1E6873C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1D3891EF0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 serviceType];
    v13 = sub_1D1E6781C();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    ServiceKind.init(rawValue:)(v16);
    v17 = v28;
    if (v28 == 53)
    {
    }

    else
    {

      if (v17 > 0x32 || ((1 << v17) & 0x62C232CC03FF7) == 0)
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_34;
    }
  }

  v8 = v7;
LABEL_16:
  if (v26)
  {
    v18 = sub_1D1E6873C();
  }

  else
  {
    v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v27;
  if (v8 != v18 && HMAccessory.isValidWidgetCategory.getter())
  {
    v20 = 1;
    return v20 & 1;
  }

  if (![v19 supportsNativeMatter])
  {
LABEL_25:
    v20 = 0;
    return v20 & 1;
  }

  v21 = v25;
  HMAccessory.staticMatterDevice.getter(v25);
  v22 = type metadata accessor for StaticMatterDevice();
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_1D1BAB210(v21);
    goto LABEL_25;
  }

  if (qword_1EC642270 != -1)
  {
    swift_once();
  }

  v24 = *(v21 + *(v22 + 32));
  if (*(v24 + 16))
  {
    v20 = sub_1D1A46E30(qword_1EC648718, v24) ^ 1;
  }

  else
  {
    v20 = 1;
  }

  sub_1D19D4620(v21);
  return v20 & 1;
}

id MatterExecuteRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t HMService.isVisibleService.getter()
{
  v1 = [v0 serviceType];
  v2 = sub_1D1E6781C();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  ServiceKind.init(rawValue:)(v5);
  return (v7 > 0x35uLL) | (0x19D3DCD33FC008uLL >> v7) & 1;
}

unint64_t sub_1D1DA2678(char *a1)
{
  v25 = *a1;
  v2 = [v1 characteristics];
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v3 = sub_1D1E67C1C();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

LABEL_24:
  v4 = sub_1D1E6873C();
  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3891EF0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v6 characteristicType];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    CharacteristicKind.init(rawValue:)(v13);
    v14 = CharacteristicKind.rawValue.getter();
    v16 = v15;
    if (v14 == CharacteristicKind.rawValue.getter() && v16 == v17)
    {
      break;
    }

    v18 = sub_1D1E6904C();

    if (v18)
    {
      goto LABEL_15;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_25;
    }
  }

LABEL_15:

  v19 = [v7 metadata];
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  v21 = [v19 validValues];
  if (v21)
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v22 = sub_1D1E67C1C();

    if (v22 >> 62)
    {
      v23 = sub_1D1E6873C();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v23 == 2;
  }

  return v21;
}

uint64_t Collection<>.writable.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(a2 + 8);
  return sub_1D1E67A8C();
}

void sub_1D1DA2A0C(id *a1)
{
  v1 = [*a1 properties];
  v2 = sub_1D1E67C1C();

  v8 = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v6 = *v5;
      v7[0] = *(v5 - 1);
      v7[1] = v6;
      sub_1D18C99CC(&v8, v7);
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1D1DA2ADC(unint64_t a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_19:
    v2 = sub_1D1E6873C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1D3891EF0](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_16:
            __break(1u);
            return v15;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * i + 32);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_16;
          }
        }

        v6 = v4;
        v7 = [v6 serviceType];
        v8 = sub_1D1E6781C();
        v10 = v9;

        v11._countAndFlagsBits = v8;
        v11._object = v10;
        ServiceKind.init(rawValue:)(v11);
        if (v14 == 53)
        {

LABEL_10:
        }

        else
        {

          switch(v14)
          {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 22:
            case 23:
            case 26:
            case 27:
            case 29:
            case 32:
            case 33:
            case 37:
            case 42:
            case 43:
            case 45:
            case 49:
            case 50:
              goto LABEL_10;
            default:
              sub_1D1E6896C();
              v12 = *(v15 + 16);
              sub_1D1E689AC();
              sub_1D1E689BC();
              sub_1D1E6897C();
              break;
          }
        }

        if (v5 == v2)
        {
          return v15;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t HMAccessory.isTelevision.getter()
{
  v1 = v0;
  v2 = [v0 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x1E69E7CC0];
  v5 = &v26;
  sub_1D178CF80(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v6 = 0;
  v5 = v26;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D3891EF0](v6, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 serviceType];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    ServiceKind.init(rawValue:)(v13);

    if (v25 == 53)
    {
      v14 = 0;
    }

    else
    {
      v14 = v25;
    }

    v26 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      sub_1D178CF80((v15 > 1), v16 + 1, 1);
      v5 = v26;
    }

    ++v6;
    v5[2] = v16 + 1;
    *(v5 + v16 + 32) = v14;
  }

  while (v4 != v6);

LABEL_17:
  v3 = sub_1D1784388(&unk_1F4D66668);
  v17 = [v1 mediaProfile];
  if (v17)
  {

    goto LABEL_19;
  }

  v20 = [v1 televisionProfiles];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  sub_1D1741B10(0, &qword_1EE079CB8, 0x1E696CC88);
  v22 = sub_1D1E67C1C();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_27:
  v23 = sub_1D1E6873C();
LABEL_24:

  if (v23)
  {
    v24 = sub_1D1929F38(v5, v3);

    v18 = v24 ^ 1;
    return v18 & 1;
  }

LABEL_19:

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D1DA3088(id *a1)
{
  v1 = *a1;
  v2 = [*a1 accessory];
  if (v2)
  {
    v3 = v2;
    if (HMAccessory.isTelevision.getter() & 1) != 0 || (HMAccessory.showAsIndividualTiles.getter())
    {
    }

    else
    {
      v19 = [v3 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v20 = sub_1D1E67C1C();

      v21 = sub_1D1DA2ADC(v20);

      if (v21 >> 62)
      {
        v22 = sub_1D1E6873C();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22 > 1)
      {
        goto LABEL_17;
      }
    }
  }

  v4 = [v1 serviceType];
  v5 = sub_1D1E6781C();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  ServiceKind.init(rawValue:)(v8);
  v9 = v42;
  if (v42 == 53)
  {
    v9 = 0;
  }

  v43 = v9;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3130 == v10)
  {

LABEL_17:
    v18 = 0;
    return v18 & 1;
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {
    goto LABEL_17;
  }

  v12 = [v1 serviceType];
  v13 = sub_1D1E6781C();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  ServiceKind.init(rawValue:)(v16);
  v17 = v43;
  if (v43 > 0x35u)
  {
LABEL_21:
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = off_1EC646318;

    v25 = sub_1D171951C(v17, v24);

    if (v25)
    {
      goto LABEL_13;
    }

    v26 = [v1 serviceType];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    ServiceKind.init(rawValue:)(v30);
    v31 = v44;
    if (v44 == 53)
    {
      v31 = 0;
    }

    v44 = v31;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v32)
    {
    }

    else
    {
      v33 = sub_1D1E6904C();

      if ((v33 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v44 = -96;
    if (sub_1D1DA2678(&v44))
    {
      goto LABEL_13;
    }

LABEL_31:
    v34 = [v1 serviceType];
    v35 = sub_1D1E6781C();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    ServiceKind.init(rawValue:)(v38);
    v39 = v44;
    if (v44 == 53)
    {
      v39 = 0;
    }

    v44 = v39;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v40)
    {
    }

    else
    {
      v41 = sub_1D1E6904C();

      if ((v41 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v44 = -104;
    v18 = sub_1D1DA2678(&v44);
    return v18 & 1;
  }

  if (((1 << v43) & 0x1964490330008) == 0)
  {
    if (v43 == 53)
    {
      v17 = 0;
    }

    goto LABEL_21;
  }

LABEL_13:
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D1DA34B8@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v123 = a2;
  v134 = sub_1D1E66A7C();
  v126 = *(v134 - 8);
  v3 = *(v126 + 64);
  v4 = MEMORY[0x1EEE9AC00](v134);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v122 = &v119 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v125 = &v119 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v119 - v14;
  if (qword_1EE07A098 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v16 = sub_1D1E6709C();
    v17 = __swift_project_value_buffer(v16, qword_1EE0813C8);

    v124 = v17;
    v18 = sub_1D1E6707C();
    LODWORD(v19) = sub_1D1E6835C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = a1 >> 62;
    v131 = v13;
    if (v20)
    {
      break;
    }

    v15 = v134;
LABEL_20:
    if (v21)
    {
      v18 = sub_1D1E6873C();
      v133 = v18;
      if (!v18)
      {
LABEL_51:
        v41 = MEMORY[0x1E69E7CC8];
LABEL_52:
        v129 = v41;
        v70 = v132;
        v6 = sub_1D1E6707C();
        v71 = sub_1D1E6835C();

        v22 = &selRef_addZoneWithName_completionHandler_;
        if (os_log_type_enabled(v6, v71))
        {
          v72 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&v135[0] = v134;
          *v72 = 136315394;
          *(v72 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v135);
          *(v72 + 12) = 2080;
          v73 = [v70 reachabilityByAccessoryUniqueIdentifier];
          sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
          v13 = sub_1D17579AC();
          sub_1D1E675FC();

          v74 = sub_1D1E6760C();
          v76 = v75;

          v77 = sub_1D1B1312C(v74, v76, v135);
          v18 = v133;

          *(v72 + 14) = v77;
          v22 = &selRef_addZoneWithName_completionHandler_;
          _os_log_impl(&dword_1D16EC000, v6, v71, "%s Reachability -> %s", v72, 0x16u);
          v78 = v134;
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v78, -1, -1);
          MEMORY[0x1D3893640](v72, -1, -1);
        }

        if (!v18)
        {
          v80 = MEMORY[0x1E69E7CC8];
          goto LABEL_83;
        }

        v131 = v70;
        v79 = 0;
        v134 = a1 & 0xC000000000000001;
        v21 = a1 & 0xFFFFFFFFFFFFFF8;
        v132 = (v126 + 8);
        v127 = (v126 + 16);
        v80 = MEMORY[0x1E69E7CC8];
LABEL_56:
        v128 = v80;
        v19 = v79;
        while (1)
        {
          if (v134)
          {
            v81 = MEMORY[0x1D3891EF0](v19, a1);
          }

          else
          {
            if (v19 >= *(v21 + 16))
            {
              goto LABEL_87;
            }

            v81 = *(a1 + 8 * v19 + 32);
          }

          v6 = v81;
          v79 = (&v19->isa + 1);
          if (__OFADD__(v19, 1))
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v82 = [v81 service];
          if (v82 && (v83 = v82, v13 = [v82 accessory], v83, v13))
          {
            v84 = [v131 v22[145]];
            sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
            sub_1D17579AC();
            v85 = sub_1D1E675FC();

            v86 = [v13 uniqueIdentifier];
            v87 = v125;
            sub_1D1E66A5C();

            if (*(v85 + 16))
            {
              v88 = sub_1D1742188(v87);
              if (v89)
              {
                v130 = a1;
                v90 = *v132;
                v121 = *(*(v85 + 56) + 8 * v88);
                v120 = v90;
                v90(v87, v15);

                v91 = [v13 uniqueIdentifier];
                v92 = v122;
                sub_1D1E66A5C();

                v93 = [v121 BOOLValue];
                v94 = v128;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v135[0] = v94;
                v97 = sub_1D1742188(v92);
                v98 = *(v94 + 16);
                v99 = (v96 & 1) == 0;
                v100 = v98 + v99;
                if (__OFADD__(v98, v99))
                {
                  goto LABEL_90;
                }

                v18 = v133;
                if (*(v94 + 24) >= v100)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v109 = v96;
                    sub_1D173EB94();
                    LOBYTE(v96) = v109;
                  }
                }

                else
                {
                  LODWORD(v128) = v96;
                  sub_1D1732D10(v100, isUniquelyReferenced_nonNull_native);
                  v101 = sub_1D1742188(v122);
                  v102 = v96 & 1;
                  LOBYTE(v96) = v128;
                  if ((v128 & 1) != v102)
                  {
                    goto LABEL_93;
                  }

                  v97 = v101;
                }

                v22 = &selRef_addZoneWithName_completionHandler_;
                v103 = *&v135[0];
                if (v96)
                {
                  *(*(*&v135[0] + 56) + v97) = v93;

                  v120(v122, v15);
                  a1 = v130;
                  v80 = v103;
                  if (v79 != v18)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_83;
                }

                *(*&v135[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
                v104 = v103[6] + *(v126 + 72) * v97;
                v105 = *(v126 + 16);
                LODWORD(v128) = v93;
                v106 = v122;
                v105(v104, v122, v15);
                *(v103[7] + v97) = v128;

                v120(v106, v15);
                v107 = v103[2];
                v68 = __OFADD__(v107, 1);
                v108 = v107 + 1;
                if (v68)
                {
                  goto LABEL_91;
                }

                v80 = v103;
                v103[2] = v108;
                a1 = v130;
                if (v79 == v18)
                {
LABEL_83:

                  v110 = sub_1D1E6707C();
                  v111 = sub_1D1E6835C();

                  if (os_log_type_enabled(v110, v111))
                  {
                    v112 = swift_slowAlloc();
                    v113 = swift_slowAlloc();
                    *&v135[0] = v113;
                    *v112 = 136315394;
                    *(v112 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v135);
                    *(v112 + 12) = 2080;
                    sub_1D17579AC();
                    v114 = sub_1D1E6760C();
                    v116 = sub_1D1B1312C(v114, v115, v135);

                    *(v112 + 14) = v116;
                    _os_log_impl(&dword_1D16EC000, v110, v111, "%s Mapped result: %s", v112, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x1D3893640](v113, -1, -1);
                    MEMORY[0x1D3893640](v112, -1, -1);
                  }

                  v117 = v123;
                  *v123 = v129;
                  v117[1] = v80;
                  *(v117 + 16) = 4;
                  type metadata accessor for StateSnapshot.UpdateType(0);
                  return swift_storeEnumTagMultiPayload();
                }

                goto LABEL_56;
              }
            }

            (*v132)(v87, v15);
            v18 = v133;
            v22 = &selRef_addZoneWithName_completionHandler_;
          }

          else
          {
          }

          v19 = (v19 + 1);
          if (v79 == v18)
          {
            v80 = v128;
            goto LABEL_83;
          }
        }
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v133 = v18;
      if (!v18)
      {
        goto LABEL_51;
      }
    }

    v6 = 0;
    v128 = a1 & 0xFFFFFFFFFFFFFF8;
    v129 = a1 & 0xC000000000000001;
    v127 = (v126 + 8);
    v41 = MEMORY[0x1E69E7CC8];
    v130 = a1;
    while (1)
    {
      if (v129)
      {
        v47 = MEMORY[0x1D3891EF0](v6, a1);
      }

      else
      {
        if (v6 >= *(v128 + 16))
        {
          goto LABEL_46;
        }

        v47 = *(a1 + 8 * v6 + 32);
      }

      v48 = v47;
      a1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v49 = v41;
      v50 = [v132 valueByCharacteristicUniqueIdentifier];
      sub_1D17579AC();
      v51 = sub_1D1E675FC();

      v52 = [v48 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v51 + 16) && (v53 = sub_1D1742188(v13), (v54 & 1) != 0))
      {
        sub_1D1741970(*(v51 + 56) + 32 * v53, v135);
        (*v127)(v13, v15);
      }

      else
      {

        (*v127)(v13, v15);
        memset(v135, 0, sizeof(v135));
      }

      StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)(v135, v136);
      v15 = v136[0];
      v55 = v136[1];
      v13 = v137;
      v56 = v49;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *&v135[0] = v49;
      v59 = sub_1D171D368(v48);
      v60 = v56[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_47;
      }

      v63 = v58;
      if (v56[3] >= v62)
      {
        if (v57)
        {
          v41 = *&v135[0];
          if (v58)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D1737914();
          v41 = *&v135[0];
          if (v63)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_1D1725FFC(v62, v57);
        v64 = sub_1D171D368(v48);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_92;
        }

        v59 = v64;
        v41 = *&v135[0];
        if (v63)
        {
LABEL_23:
          v42 = v41[7] + 24 * v59;
          v43 = *v42;
          v44 = *(v42 + 8);
          *v42 = v15;
          *(v42 + 8) = v55;
          v45 = *(v42 + 16);
          *(v42 + 16) = v13;
          sub_1D1778940(v43, v44, v45);

          goto LABEL_24;
        }
      }

      v41[(v59 >> 6) + 8] |= 1 << v59;
      *(v41[6] + 8 * v59) = v48;
      v66 = v41[7] + 24 * v59;
      *v66 = v15;
      *(v66 + 8) = v55;
      *(v66 + 16) = v13;
      v67 = v41[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_48;
      }

      v41[2] = v69;
LABEL_24:
      ++v6;
      v18 = v133;
      v15 = v134;
      v46 = a1 == v133;
      a1 = v130;
      v13 = v131;
      if (v46)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

  v22 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  *&v135[0] = v129;
  *v22 = 136315394;
  *(v22 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v135);
  *(v22 + 6) = 2080;
  if (v21)
  {
LABEL_88:
    v23 = sub_1D1E6873C();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x1E69E7CC0];
  v133 = v22;
  if (!v23)
  {
LABEL_19:
    v15 = v134;
    v35 = MEMORY[0x1D3891260](v24, v134);
    v37 = v36;

    v38 = sub_1D1B1312C(v35, v37, v135);

    v39 = v133;
    *(v133 + 14) = v38;
    _os_log_impl(&dword_1D16EC000, v18, v19, "%s Applying characteristics [%s] to StateSnapshot", v39, 0x16u);
    v40 = v129;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v40, -1, -1);
    MEMORY[0x1D3893640](v39, -1, -1);

    goto LABEL_20;
  }

  v136[0] = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    LODWORD(v127) = v19;
    v128 = v18;
    v24 = v136[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = a1;
      for (i = 0; i != v23; ++i)
      {
        MEMORY[0x1D3891EF0](i, a1);
        v27 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v136[0] = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D178CEFC(v28 > 1, v29 + 1, 1);
          v24 = v136[0];
        }

        *(v24 + 16) = v29 + 1;
        (*(v126 + 32))(v24 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v29, v15, v134);
      }
    }

    else
    {
      v25 = a1;
      v30 = (a1 + 32);
      do
      {
        v31 = *v30;
        v32 = [v31 uniqueIdentifier];
        sub_1D1E66A5C();

        v136[0] = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D178CEFC(v33 > 1, v34 + 1, 1);
          v24 = v136[0];
        }

        *(v24 + 16) = v34 + 1;
        (*(v126 + 32))(v24 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v34, v6, v134);
        ++v30;
        --v23;
      }

      while (v23);
    }

    a1 = v25;
    v13 = v131;
    v18 = v128;
    LOBYTE(v19) = v127;
    goto LABEL_19;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  sub_1D1E690FC();
  __break(1u);
LABEL_93:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1DA4364@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v67 - v12);
  if (qword_1EE07A098 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EE0813C8);

    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6835C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = a1 >> 62;
    v75 = a1;
    v76 = v3;
    v74 = v11;
    if (v17)
    {
      break;
    }

LABEL_20:
    if (v18)
    {
      v39 = sub_1D1E6873C();
      if (!v39)
      {
LABEL_50:
        v8 = MEMORY[0x1E69E7CC8];
LABEL_51:
        v64 = sub_1D18DC0DC(MEMORY[0x1E69E7CC0]);
        v65 = v68;
        *v68 = v8;
        v65[1] = v64;
        *(v65 + 16) = 4;
        type metadata accessor for StateSnapshot.UpdateType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_50;
      }
    }

    v40 = 0;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC8];
    v69 = v39;
    v70 = (v4 + 8);
    while (1)
    {
      if (v72)
      {
        v45 = MEMORY[0x1D3891EF0](v40, a1);
      }

      else
      {
        if (v40 >= *(v71 + 16))
        {
          goto LABEL_45;
        }

        v45 = *(a1 + 8 * v40 + 32);
      }

      v4 = v45;
      v46 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v47 = [v73 valueByCharacteristicUniqueIdentifier];
      sub_1D17579AC();
      v48 = sub_1D1E675FC();

      v49 = [v4 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v48 + 16) && (v50 = sub_1D1742188(v11), (v51 & 1) != 0))
      {
        sub_1D1741970(*(v48 + 56) + 32 * v50, v77);
        (*v70)(v11, v3);
      }

      else
      {

        (*v70)(v11, v3);
        memset(v77, 0, sizeof(v77));
      }

      StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)(v77, v78);
      a1 = v78[0];
      v3 = v78[1];
      v11 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = v8;
      v53 = sub_1D171D368(v4);
      v55 = v8[2];
      v56 = (v54 & 1) == 0;
      v57 = __OFADD__(v55, v56);
      v58 = v55 + v56;
      if (v57)
      {
        goto LABEL_46;
      }

      v13 = v54;
      if (v8[3] < v58)
      {
        sub_1D1725FFC(v58, isUniquelyReferenced_nonNull_native);
        v53 = sub_1D171D368(v4);
        if ((v13 & 1) != (v59 & 1))
        {
          goto LABEL_54;
        }

LABEL_38:
        v8 = *&v77[0];
        if (v13)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_38;
      }

      v63 = v53;
      sub_1D1737914();
      v53 = v63;
      v8 = *&v77[0];
      if (v13)
      {
LABEL_23:
        v41 = v8[7] + 24 * v53;
        v42 = *v41;
        v43 = *(v41 + 8);
        *v41 = a1;
        *(v41 + 8) = v3;
        v44 = *(v41 + 16);
        *(v41 + 16) = v11;
        sub_1D1778940(v42, v43, v44);

        goto LABEL_24;
      }

LABEL_39:
      v8[(v53 >> 6) + 8] |= 1 << v53;
      *(v8[6] + 8 * v53) = v4;
      v60 = v8[7] + 24 * v53;
      *v60 = a1;
      *(v60 + 8) = v3;
      *(v60 + 16) = v11;
      v61 = v8[2];
      v57 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v57)
      {
        goto LABEL_47;
      }

      v8[2] = v62;
LABEL_24:
      ++v40;
      a1 = v75;
      v3 = v76;
      v11 = v74;
      if (v46 == v69)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v19 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  *&v77[0] = v70;
  *v19 = 136315394;
  *(v19 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v77);
  *(v19 + 12) = 2080;
  LODWORD(v71) = v16;
  if (v18)
  {
    v20 = sub_1D1E6873C();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  v72 = v19;
  if (!v20)
  {
LABEL_19:
    v33 = MEMORY[0x1D3891260](v21, v3);
    v35 = v34;

    v36 = sub_1D1B1312C(v33, v35, v77);

    v37 = v72;
    *(v72 + 14) = v36;
    _os_log_impl(&dword_1D16EC000, v15, v71, "%s Applying characteristics [%s] to StateSnapshot", v37, 0x16u);
    v38 = v70;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v38, -1, -1);
    MEMORY[0x1D3893640](v37, -1, -1);

    v11 = v74;
    goto LABEL_20;
  }

  v78[0] = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v67 = a1 >> 62;
    v69 = v15;
    v21 = v78[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = 0;
      do
      {
        MEMORY[0x1D3891EF0](v22, v75);
        v23 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v78[0] = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D178CEFC(v24 > 1, v25 + 1, 1);
          v21 = v78[0];
        }

        ++v22;
        *(v21 + 16) = v25 + 1;
        v26 = v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25;
        v3 = v76;
        (*(v4 + 32))(v26, v13, v76);
      }

      while (v20 != v22);
    }

    else
    {
      v27 = (a1 + 32);
      v13 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      do
      {
        v28 = *v27;
        v29 = [v28 uniqueIdentifier];
        sub_1D1E66A5C();

        v78[0] = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D178CEFC(v30 > 1, v31 + 1, 1);
          v21 = v78[0];
        }

        *(v21 + 16) = v31 + 1;
        v32 = v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31;
        v3 = v76;
        (*(v4 + 32))(v32, v8, v76);
        ++v27;
        --v20;
      }

      while (v20);
    }

    a1 = v75;
    v15 = v69;
    v18 = v67;
    goto LABEL_19;
  }

  __break(1u);
LABEL_54:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1DA4B08@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v49 = sub_1D1E66A7C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v49);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  if (qword_1EE07A098 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE0813C8);

    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();

    v16 = (a1 >> 62);
    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_20;
    }

    v45 = v15;
    v17 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, &v51);
    v46 = v17;
    *(v17 + 12) = 2080;
    v18 = v16 ? sub_1D1E6873C() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = MEMORY[0x1E69E7CC0];
    v47 = (a1 >> 62);
    if (v18)
    {
      break;
    }

LABEL_19:
    v29 = MEMORY[0x1D3891260](v19, v49);
    v31 = v30;

    v32 = sub_1D1B1312C(v29, v31, &v51);

    v33 = v46;
    *(v46 + 14) = v32;
    _os_log_impl(&dword_1D16EC000, v14, v45, "%s Applying actionsets [%s] to StateSnapshot", v33, 0x16u);
    v34 = v44;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v33, -1, -1);

    v16 = v47;
LABEL_20:
    v35 = sub_1D18DA708(MEMORY[0x1E69E7CC0]);
    v51 = v35;
    if (v16)
    {
      v40 = v35;
      v10 = sub_1D1E6873C();
      v35 = v40;
      if (!v10)
      {
LABEL_30:
        *a2 = v35;
        type metadata accessor for StateSnapshot.UpdateType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    v12 = a2;
    v36 = 0;
    v6 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v37 = MEMORY[0x1D3891EF0](v36, a1);
      }

      else
      {
        if (v36 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v37 = *(a1 + 8 * v36 + 32);
      }

      a2 = v37;
      v38 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v50 = v37;
      sub_1D1DA506C(&v51, &v50, v3);

      ++v36;
      if (v38 == v10)
      {
        v35 = v51;
        a2 = v12;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v50 = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v42 = v14;
    v43 = a2;
    v19 = v50;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v18; ++i)
      {
        MEMORY[0x1D3891EF0](i, a1);
        v21 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v50 = v19;
        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          sub_1D178CEFC(v22 > 1, v23 + 1, 1);
          v19 = v50;
        }

        v19[2] = v23 + 1;
        (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v12, v49);
      }
    }

    else
    {
      v24 = (a1 + 32);
      v48 = v6 + 32;
      do
      {
        v25 = *v24;
        v26 = [v25 uniqueIdentifier];
        sub_1D1E66A5C();

        v50 = v19;
        v28 = v19[2];
        v27 = v19[3];
        if (v28 >= v27 >> 1)
        {
          sub_1D178CEFC(v27 > 1, v28 + 1, 1);
          v19 = v50;
        }

        v19[2] = v28 + 1;
        (*(v6 + 32))(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, v10, v49);
        ++v24;
        --v18;
      }

      while (v18);
    }

    v14 = v42;
    a2 = v43;
    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1D1DA506C(uint64_t *a1, void **a2, void *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = [a3 isOnByActionSetUniqueIdentifier];
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  sub_1D17579AC();
  v13 = sub_1D1E675FC();

  v14 = [v11 uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v13 + 16) && (v15 = sub_1D1742188(v10), (v16 & 1) != 0))
  {
    v26 = a3;
    v17 = *(v7 + 8);
    v18 = *(*(v13 + 56) + 8 * v15);
    v17(v10, v6);

    v19 = sub_1D1E684CC();
    if (v18)
    {
      v20 = v19;
      v21 = sub_1D1E684FC();

      v19 = v18;
    }

    else
    {
      v21 = 0;
    }

    a3 = v26;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    v19 = sub_1D1E684CC();
    v21 = 0;
  }

  v22 = v21 & 1 | (sub_1D1DA52BC(a3, v11) << 8);
  v23 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *a1;
  result = sub_1D1755C14(v22, v11, isUniquelyReferenced_nonNull_native);
  *a1 = v27;
  return result;
}

uint64_t sub_1D1DA52BC(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 didExecutionFailByActionSetUniqueIdentifier];
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  sub_1D17579AC();
  v10 = sub_1D1E675FC();

  v11 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  if (!*(v10 + 16) || (v12 = sub_1D1742188(v8), (v13 & 1) == 0))
  {

    (*(v5 + 8))(v8, v4);
    v16 = sub_1D1E684CC();
    goto LABEL_7;
  }

  v14 = *(v5 + 8);
  v15 = *(*(v10 + 56) + 8 * v12);
  v14(v8, v4);

  v16 = sub_1D1E684CC();
  if (!v15)
  {
LABEL_7:

    return [a2 isExecuting];
  }

  v17 = v16;
  v18 = sub_1D1E684FC();

  if (v18)
  {
    return 2;
  }

  return [a2 isExecuting];
}

uint64_t WidgetManager.AttributeDescriptor.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000023, 0x80000001D1EC98A0);
  MEMORY[0x1D3890F70](*v0, *(v0 + 8));
  MEMORY[0x1D3890F70](0x656369766564202CLL, 0xEA0000000000203ALL);
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A7368746170202CLL, 0xE900000000000020);
  v1 = *(v0 + 32);
  v2 = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  v3 = MEMORY[0x1D3891260](v1, v2);
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t WidgetManager.monitorState(for:widgetIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  v6[8] = sub_1D1E67E1C();
  v6[9] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA56A8, v9, v8);
}

uint64_t sub_1D1DA56A8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v13 = *(v0 + 32);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_1D1E67E0C();
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v13;
  *(v7 + 56) = v3;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_1D1DA57DC;
  v10 = MEMORY[0x1E69E85E0];
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v9, v6, v10, 0xD000000000000028, 0x80000001D1EC98D0, sub_1D1DA5DC8, v7, v11);
}

uint64_t sub_1D1DA57DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1D1DA5964;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1D1DA5900;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DA5900()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1DA5964()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

void sub_1D1DA59DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[3] = a4;
  v37[4] = a5;
  v42 = a2;
  v39 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v40 = *(v10 - 8);
  v41 = v10;
  v37[5] = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v38 = v37 - v11;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a3 + 64;
    v43 = MEMORY[0x1E69E7CC0];
    v37[1] = a6;
    v37[2] = a7;
    v37[0] = a3 + 64;
    do
    {
      v15 = (v14 + 40 * v13);
      v16 = v13;
      while (1)
      {
        if (v16 >= v12)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_17;
        }

        v17 = *(v15 - 4);
        v18 = *(v15 - 3);
        v19 = *(v15 - 2);
        v20 = *v15;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = v21;
          v23 = objc_allocWithZone(MEMORY[0x1E696CBD0]);
          swift_unknownObjectRetain_n();

          v24 = sub_1D1E677EC();

          sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
          v25 = sub_1D1E67BFC();

          v26 = [v23 initWithMTRDevice:v22 controllerID:v24 attributePaths:v25];
          swift_unknownObjectRelease_n();

          if (v26)
          {
            break;
          }
        }

        ++v16;
        v15 += 5;
        if (v13 == v12)
        {
          goto LABEL_15;
        }
      }

      MEMORY[0x1D3891220]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v43 = aBlock[0];
      v14 = v37[0];
    }

    while (v13 != v12);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  sub_1D1741B10(0, &qword_1EC64F890, 0x1E696CBD0);
  v28 = sub_1D1E67BFC();

  v29 = sub_1D1E677EC();
  v30 = sub_1D1E677EC();
  v31 = v40;
  v32 = v38;
  v33 = v41;
  (*(v40 + 16))(v38, v39, v41);
  v34 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v35 = swift_allocObject();
  (*(v31 + 32))(v35 + v34, v32, v33);
  aBlock[4] = sub_1D1DA8AE0;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_50_0;
  v36 = _Block_copy(aBlock);

  [v42 monitorStateForMTRAttributeDescriptors:v28 widgetIdentifier:v29 kind:v30 completion:v36];
  _Block_release(v36);
}

uint64_t sub_1D1DA5DE0(void *a1)
{
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v2 = swift_allocError();
    sub_1D1E6759C();
    v16 = v2;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D5C();
  }

  if (a1)
  {
    v3 = a1;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE081480);
    v5 = a1;
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EC98D0, &v16);
      *(v8 + 12) = 2112;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s error occured: %@", v8, 0x16u);
      sub_1D179F28C(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    sub_1D1DA87F0();
    v13 = swift_allocError();
    *v14 = a1;
    v16 = v13;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  return sub_1D1E67D6C();
}

uint64_t WidgetManager.monitorAndFetchState(for:widgetIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  v7[9] = sub_1D1E67E1C();
  v7[10] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA60EC, v9, v8);
}

{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  v7[9] = sub_1D1E67E1C();
  v7[10] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA7400, v9, v8);
}

uint64_t sub_1D1DA60EC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v14 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = sub_1D1E67E0C();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v14;
  *(v7 + 56) = v3;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v9 = v0;
  v9[1] = sub_1D1DA6228;
  v11 = *(v0 + 16);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v11, v6, v12, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DA6590, v7, updated);
}

uint64_t sub_1D1DA6228()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1D1DA8B9C;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1D1BFAAB4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1D1DA634C(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v9 = sub_1D1E67BFC();
  v10 = sub_1D1E677EC();
  v11 = sub_1D1E677EC();
  (*(v5 + 16))(v8, v16, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v12, v8, v4);
  *(v14 + v13) = a3;
  aBlock[4] = sub_1D1DA8A20;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_44;
  v15 = _Block_copy(aBlock);

  [v17 monitorAndFetchStateForCharacteristics:v9 widgetIdentifier:v10 kind:v11 completion:v15];
  _Block_release(v15);
}

uint64_t WidgetManager.fetchState(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  v3[5] = sub_1D1E67E1C();
  v3[6] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA664C, v5, v4);
}

{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  v3[5] = sub_1D1E67E1C();
  v3[6] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA7E34, v5, v4);
}

uint64_t sub_1D1DA664C()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 24);
  v2 = sub_1D1E67E0C();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v3[1] = vextq_s8(v10, v10, 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v5 = v0;
  v5[1] = sub_1D1DA6770;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v7, v2, v8, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA6A9C, v3, updated);
}

uint64_t sub_1D1DA6770()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D1DA8BA0;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D1DA8BC0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1D1DA6894(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v11 = sub_1D1E67BFC();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D1DA894C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_38;
  v14 = _Block_copy(aBlock);

  [a2 fetchStateForCharacteristics:v11 completion:v14];
  _Block_release(v14);
}

uint64_t WidgetManager.perform(_:forKind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  v4[6] = sub_1D1E67E1C();
  v4[7] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA6B48, v7, v6);
}

uint64_t sub_1D1DA6B48()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v11 = v0[2];
    }

    if (sub_1D1E6873C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v15 = *(v0 + 1);
    v5 = sub_1D1E67E0C();
    v0[10] = v5;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v15;
    *(v6 + 40) = v4;
    v7 = *(MEMORY[0x1E69E8920] + 4);
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1D1DA6CDC;
    v9 = MEMORY[0x1E69E85E0];
    v10 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v8, v5, v9, 0xD000000000000013, 0x80000001D1EC9920, sub_1D1DA70E8, v6, v10);
  }

  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D1DA6CDC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1D1DA6E64;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1D1DA6E00;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DA6E00()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1DA6E64()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

void sub_1D1DA6EDC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  sub_1D1741B10(0, &qword_1EC6460A0, 0x1E696CC20);
  v9 = sub_1D1E67BFC();
  v10 = sub_1D1E677EC();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_1D1DA8934;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_32_3;
  v13 = _Block_copy(aBlock);

  [a2 performRequests:v9 forKind:v10 completion:v13];
  _Block_release(v13);
}

void sub_1D1DA70E8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1D1DA6EDC(a1, *(v1 + 16));
}

uint64_t sub_1D1DA70F4(void *a1)
{
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v2 = swift_allocError();
    sub_1D1E6759C();
    v16 = v2;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D5C();
  }

  if (a1)
  {
    v3 = a1;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE081480);
    v5 = a1;
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EC9920, &v16);
      *(v8 + 12) = 2112;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s error occured: %@", v8, 0x16u);
      sub_1D179F28C(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    sub_1D1DA87F0();
    v13 = swift_allocError();
    *v14 = a1;
    v16 = v13;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1DA7400()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v14 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = sub_1D1E67E0C();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v14;
  *(v7 + 56) = v3;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v9 = v0;
  v9[1] = sub_1D1DA753C;
  v11 = *(v0 + 16);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v11, v6, v12, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DA791C, v7, updated);
}

uint64_t sub_1D1DA753C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1D1DA7660;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_1D1BF01F0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DA7660()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

void sub_1D1DA76D8(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v9 = sub_1D1E67BFC();
  v10 = sub_1D1E677EC();
  v11 = sub_1D1E677EC();
  (*(v5 + 16))(v8, v16, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v12, v8, v4);
  *(v14 + v13) = a3;
  aBlock[4] = sub_1D1DA8844;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_26_2;
  v15 = _Block_copy(aBlock);

  [v17 monitorAndFetchStateForActionSets:v9 widgetIdentifier:v10 kind:v11 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1D1DA794C(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = *(*(updated - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](updated - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v16 = swift_allocError();
    sub_1D1E6759C();
    v39 = v16;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
    return sub_1D1E67D5C();
  }

  if (a2)
  {
    v17 = a2;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE081480);
    v19 = a2;
    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6835C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_1D1B1312C(0xD000000000000030, 0x80000001D1EC66D0, &v39);
      *(v22 + 12) = 2112;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_1D16EC000, v20, v21, "%s error occured: %@", v22, 0x16u);
      sub_1D179F28C(v23);
      MEMORY[0x1D3893640](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    sub_1D1DA87F0();
    v27 = swift_allocError();
    *v28 = a2;
    goto LABEL_9;
  }

  if (!a1)
  {
    sub_1D1DA87F0();
    v27 = swift_allocError();
    *v37 = 0;
LABEL_9:
    v39 = v27;
    goto LABEL_10;
  }

  v30 = qword_1EE07A070;
  v31 = a1;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_1D1E6709C();
  __swift_project_value_buffer(v32, qword_1EE081480);
  v33 = sub_1D1E6707C();
  v34 = sub_1D1E6835C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1D1B1312C(0xD000000000000030, 0x80000001D1EC66D0, &v39);
    _os_log_impl(&dword_1D16EC000, v33, v34, "%s successfully delivered a response", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1D3893640](v36, -1, -1);
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  a5(a4);
  sub_1D1AB10C0(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  sub_1D1E67D6C();

  return sub_1D1AB1124(v15);
}

uint64_t sub_1D1DA7E34()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 24);
  v2 = sub_1D1E67E0C();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v3[1] = vextq_s8(v10, v10, 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v5 = v0;
  v5[1] = sub_1D1DA7F58;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v7, v2, v8, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA82FC, v3, updated);
}

uint64_t sub_1D1DA7F58()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D1DA807C;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1D1A0DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1DA807C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

void sub_1D1DA80F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v11 = sub_1D1E67BFC();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D1DA87AC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_61;
  v14 = _Block_copy(aBlock);

  [a2 fetchStateForActionSets:v11 completion:v14];
  _Block_release(v14);
}

void **assignWithTake for WidgetManager(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D1DA8368(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = *(*(updated - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](updated - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v16 = swift_allocError();
    sub_1D1E6759C();
    v39 = v16;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
    return sub_1D1E67D5C();
  }

  if (a2)
  {
    v17 = a2;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE081480);
    v19 = a2;
    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6835C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EC9900, &v39);
      *(v22 + 12) = 2112;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_1D16EC000, v20, v21, "%s error occured: %@", v22, 0x16u);
      sub_1D179F28C(v23);
      MEMORY[0x1D3893640](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    sub_1D1DA87F0();
    v27 = swift_allocError();
    *v28 = a2;
    goto LABEL_9;
  }

  if (!a1)
  {
    sub_1D1DA87F0();
    v27 = swift_allocError();
    *v37 = 0;
LABEL_9:
    v39 = v27;
    goto LABEL_10;
  }

  v30 = qword_1EE07A070;
  v31 = a1;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_1D1E6709C();
  __swift_project_value_buffer(v32, qword_1EE081480);
  v33 = sub_1D1E6707C();
  v34 = sub_1D1E6835C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EC9900, &v39);
    _os_log_impl(&dword_1D16EC000, v33, v34, "%s successfully delivered a response", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1D3893640](v36, -1, -1);
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  a5(a4);
  sub_1D1AB10C0(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  sub_1D1E67D6C();

  return sub_1D1AB1124(v15);
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1DA87F0()
{
  result = qword_1EC64F888;
  if (!qword_1EC64F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F888);
  }

  return result;
}

uint64_t sub_1D1DA8870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void, uint64_t))
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return a4(a1, a2, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t objectdestroyTm_9()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_28Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1DA8AF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D1DA8BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66FDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6701C();
  v12 = __swift_project_value_buffer(v11, qword_1EC6BE2B8);
  MEMORY[0x1EEE9AC00](v12);
  *&v15[-32] = a2;
  *&v15[-24] = a3;
  *&v15[-16] = a1;
  sub_1D1E66FCC();
  v13 = sub_1D1DCF7D4("IFObjectHasher.GenerateHash.AppIntentIDs", 40, 2, v10, sub_1D1DA8E24, &v15[-48]);
  (*(v7 + 8))(v10, v6);
  return v13;
}

void sub_1D1DA8D6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];
  sub_1D1DA8E44(a1, a2);
  [v6 finalize];
  v7 = sub_1D1E68FAC();
  v9 = v8;

  *a3 = v7;
  a3[1] = v9;
}

uint64_t sub_1D1DA8E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v19 - v15;
  (*(v6 + 16))(v9, a1, a2);
  sub_1D1E67A2C();
  swift_getAssociatedConformanceWitness();
  sub_1D1E685CC();
  while (v21)
  {
    sub_1D16EEE20(&v20, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_1D1E65EDC();
    v17 = sub_1D1E677EC();

    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_1D1E685CC();
  }

  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

void sub_1D1DA90A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];
  v1 = sub_1D1E677EC();

  [v0 finalize];
  v2 = sub_1D1E68FAC();
  v4 = v3;

  qword_1EC6BE2D0 = v2;
  *algn_1EC6BE2D8 = v4;
}

id sub_1D1DA9170(char *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1D1E65E4C();
  sub_1D1741B10(0, &qword_1EC64F8A8, 0x1E69AC640);
  if (swift_dynamicCast())
  {
    v11 = v3;
    v12 = v32;
    sub_1D1E65E3C();
    sub_1D1741B10(0, &qword_1EC64F8B0, 0x1E69AC678);
    if (swift_dynamicCast())
    {
      v13 = v32;
      v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v15 = sub_1D1E677EC();
      v16 = [v14 initWithAppBundleIdentifier:v15 linkAction:v12 linkActionMetadata:v13];

      (*(v4 + 8))(v11, a2);
      return v16;
    }

    v3 = v11;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE0813C8);
  v19 = *(v4 + 16);
  v19(v10, v3, a2);
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6833C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;
    v19(v8, v10, a2);
    v25 = sub_1D1E678BC();
    v27 = v26;
    v28 = *(v4 + 8);
    v28(v10, a2);
    v29 = sub_1D1B1312C(v25, v27, &v33);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1D16EC000, v20, v21, "Failed to create INAppIntent from : %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);

    v28(v31, a2);
  }

  else
  {

    v30 = *(v4 + 8);
    v30(v3, a2);
    v30(v10, a2);
  }

  return 0;
}

uint64_t sub_1D1DA953C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v83 - v6;
  v8 = sub_1D1E66A7C();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = *(v90 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v93 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v83 - v15;
  v89 = [v0 _indexingHash];
  v17 = [v0 appIntentIdentifier];
  if (v17)
  {
    v18 = v17;
    v88 = sub_1D1E6781C();
    v20 = v19;
  }

  else
  {
    v20 = 0x80000001D1EC9AC0;
    v88 = 0xD000000000000010;
  }

  v21 = [v0 serializedParameters];
  v22 = sub_1D1E675FC();

  *&v95[0] = 0xD000000000000014;
  *(&v95[0] + 1) = 0x80000001D1EC9AE0;
  sub_1D1E687DC();
  if (*(v22 + 16) && (v23 = sub_1D171D804(&v96), (v24 & 1) != 0))
  {
    sub_1D1741970(*(v22 + 56) + 32 * v23, v95);
    sub_1D1741BB4(&v96);
  }

  else
  {

    sub_1D1741BB4(&v96);
    memset(v95, 0, sizeof(v95));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  v25 = sub_1D1E6859C();
  sub_1D1741A30(v95, &qword_1EC649700, &qword_1D1E6E910);
  *&v95[0] = MEMORY[0x1E69E7CC0];
  v96 = v25;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F898, &qword_1D1EAFA60);
  if (swift_dynamicCast())
  {
    v26 = v94;
    if (*(v94 + 16) && (v27 = sub_1D171D2F0(0x696669746E656469, 0xEA00000000007265), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      swift_unknownObjectRetain();

      v94 = v29;
      if (swift_dynamicCast())
      {
        sub_1D1E66A0C();

        v31 = v90;
        v30 = v91;
        if ((*(v90 + 48))(v7, 1, v91) == 1)
        {
          sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v87 = v25;
          v76 = *(v31 + 32);
          v76(v16, v7, v30);
          (*(v31 + 16))(v14, v16, v30);
          v77 = sub_1D177D0AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v79 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v79 >= v78 >> 1)
          {
            v77 = sub_1D177D0AC(v78 > 1, v79 + 1, 1, v77);
          }

          v80 = v90 + 8;
          v81 = v16;
          v82 = v91;
          (*(v90 + 8))(v81, v91);
          *(v77 + 2) = v79 + 1;
          v76(&v77[((*(v80 + 72) + 32) & ~*(v80 + 72)) + *(v80 + 64) * v79], v14, v82);
          *&v95[0] = v77;
        }
      }
    }

    else
    {
    }

    goto LABEL_52;
  }

  v96 = v25;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F8A0, &qword_1D1EAFA68);
  if (!swift_dynamicCast())
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v46 = sub_1D1E6709C();
    __swift_project_value_buffer(v46, qword_1EE0813C8);

    v47 = sub_1D1E6707C();
    v48 = sub_1D1E6833C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v96 = v50;
      *v49 = 136315394;
      v51 = sub_1D1B1312C(v88, v20, &v96);

      *(v49 + 4) = v51;
      *(v49 + 12) = 2048;
      *(v49 + 14) = v89;
      _os_log_impl(&dword_1D16EC000, v47, v48, "%s/%lld does not contain 'accessoriesAndScenes'", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1D3893640](v50, -1, -1);
      MEMORY[0x1D3893640](v49, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v86 = v20;
  v87 = v25;
  v32 = v94;
  v33 = *(v94 + 16);
  if (!v33)
  {
    v92 = MEMORY[0x1E69E7CC0];
    v35 = v91;
    goto LABEL_39;
  }

  v34 = 0;
  v85 = v33 - 1;
  v92 = MEMORY[0x1E69E7CC0];
  v35 = v91;
  do
  {
    v20 = v34;
    while (1)
    {
      if (v20 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v36 = *(v32 + 32 + 8 * v20);
      if (*(v36 + 16))
      {
        break;
      }

LABEL_19:
      if (v33 == ++v20)
      {
        goto LABEL_39;
      }
    }

    v37 = *(v32 + 32 + 8 * v20);

    v38 = sub_1D171D2F0(0x696669746E656469, 0xEA00000000007265);
    if ((v39 & 1) == 0)
    {

      goto LABEL_19;
    }

    v40 = *(*(v36 + 56) + 8 * v38);
    swift_unknownObjectRetain();

    v94 = v40;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v41 = v97;
    if (!v97)
    {
      goto LABEL_19;
    }

    v84 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1D177CF00(0, *(v92 + 2) + 1, 1, v92);
    }

    v43 = *(v92 + 2);
    v42 = *(v92 + 3);
    if (v43 >= v42 >> 1)
    {
      v92 = sub_1D177CF00((v42 > 1), v43 + 1, 1, v92);
    }

    v34 = v20 + 1;
    v44 = v92;
    *(v92 + 2) = v43 + 1;
    v45 = &v44[16 * v43];
    *(v45 + 4) = v84;
    *(v45 + 5) = v41;
    v35 = v91;
  }

  while (v85 != v20);
LABEL_39:

  v53 = v92;
  v54 = *(v92 + 2);
  if (!v54)
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_51:

    sub_1D17A3840(v58);
    v20 = v86;
LABEL_52:
    if (qword_1EE07A098 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  v55 = 0;
  v56 = (v90 + 48);
  v57 = (v90 + 32);
  v20 = (v92 + 40);
  v58 = MEMORY[0x1E69E7CC0];
  while (v55 < *(v53 + 2))
  {
    v60 = *(v20 - 8);
    v59 = *v20;

    sub_1D1E66A0C();

    if ((*v56)(v5, 1, v35) == 1)
    {
      sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      v61 = *v57;
      (*v57)(v93, v5, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1D177D0AC(0, v58[2] + 1, 1, v58);
      }

      v63 = v58[2];
      v62 = v58[3];
      if (v63 >= v62 >> 1)
      {
        v58 = sub_1D177D0AC(v62 > 1, v63 + 1, 1, v58);
      }

      v58[2] = v63 + 1;
      v64 = v58 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v63;
      v35 = v91;
      v61(v64, v93, v91);
    }

    ++v55;
    v20 += 16;
    v53 = v92;
    if (v54 == v55)
    {
      goto LABEL_51;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_53:
  v65 = sub_1D1E6709C();
  __swift_project_value_buffer(v65, qword_1EE0813C8);
  v52 = *&v95[0];
  swift_bridgeObjectRetain_n();

  v66 = sub_1D1E6707C();
  v67 = sub_1D1E6835C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = v20;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v96 = v70;
    *v69 = 136315650;
    v71 = sub_1D1B1312C(v88, v68, &v96);

    *(v69 + 4) = v71;
    *(v69 + 12) = 2048;
    *(v69 + 14) = v89;
    *(v69 + 22) = 2080;
    v94 = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    v72 = sub_1D1E678BC();
    v74 = sub_1D1B1312C(v72, v73, &v96);

    *(v69 + 24) = v74;

    _os_log_impl(&dword_1D16EC000, v66, v67, "%s/%lld contains 'accessoriesAndScenes': %s", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v70, -1, -1);
    MEMORY[0x1D3893640](v69, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v52;
}

uint64_t static IntentItemCollection.createWidgetCollection<>(of:matching:_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, uint64_t a8@<X8>, char *a9)
{
  v148 = a5;
  v147 = a4;
  v162 = a2;
  v152 = a8;
  v151 = a9;
  v13 = sub_1D1E66ADC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1D1E6658C();
  v142 = *(v144 - 8);
  v17 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v143 = (&v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1D1E677DC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v141 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D1E6659C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v140 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1D1E65E7C();
  v26 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v139 = &v135 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F8B8, &unk_1D1EAFA70);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v135 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v161 = &v135 - v34;
  v163 = type metadata accessor for StaticActionSet();
  v35 = *(v163 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v163);
  v160 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v159 = &v135 - v40;
  v41 = a1(v39);
  v42 = *(v41 + 16);
  if (v42)
  {
    v135 = v16;
    v136 = v31;
    v137 = v23;
    v138 = v22;
    v43 = MEMORY[0x1E69E7CC0];
    v177 = MEMORY[0x1E69E7CC0];
    v44 = v41;
    v149 = a6;
    v146 = a7;
    v45 = _s11RoomSectionVMa();
    v46 = MEMORY[0x1E69E6158];
    swift_getTupleTypeMetadata2();
    v47 = sub_1D1E67C7C();
    v48 = sub_1D1AC25F8(v47, v46, v45, MEMORY[0x1E69E6168]);

    v145 = v44;
    v49 = v44 + 32;
    v176 = v48;
    v50 = HIBYTE(a3) & 0xF;
    v51 = v162;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v50 = v162 & 0xFFFFFFFFFFFFLL;
    }

    v158 = (v35 + 56);
    if (a3)
    {
      v52 = v50 == 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = v52;
    LODWORD(v164) = v53;
    v153 = xmmword_1D1E739C0;
    v54 = a3;
    v155 = a3;
    v55 = v163;
    v154 = v45;
    do
    {
      sub_1D17419CC(v49, &v173);
      v57 = v174;
      v58 = v175;
      __swift_project_boxed_opaque_existential_1(&v173, v174);
      v59 = (*(v58 + 144))(v57, v58);
      v61 = 95;
      if (v60)
      {
        v61 = v59;
      }

      v165 = v61;
      if (v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = 0xE100000000000000;
      }

      if (v164)
      {
        goto LABEL_22;
      }

      v64 = v174;
      v63 = v175;
      __swift_project_boxed_opaque_existential_1(&v173, v174);
      *&v169 = (*(v63 + 56))(v64, v63);
      *(&v169 + 1) = v65;
      v166 = v51;
      v167 = v54;
      sub_1D17D8EF0();
      v66 = sub_1D1E6861C();
      v55 = v163;

      if (v66 & 1) != 0 || (*&v169 = v165, *(&v169 + 1) = v62, v166 = v51, v167 = v54, (sub_1D1E6861C()))
      {
LABEL_22:
        sub_1D17419CC(&v173, &v169);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v67 = v161;
        if (swift_dynamicCast())
        {

          (*v158)(v67, 0, 1, v55);
          v68 = v67;
          v69 = v159;
          sub_1D1DACD64(v68, v159);
          sub_1D1DACDC8(v69, v160);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1D177F2B8(0, v43[2] + 1, 1, v43);
          }

          v71 = v43[2];
          v70 = v43[3];
          if (v71 >= v70 >> 1)
          {
            v43 = sub_1D177F2B8((v70 > 1), v71 + 1, 1, v43);
          }

          sub_1D1DACE2C(v159);
          v171 = v55;
          v172 = sub_1D1DACE88();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v169);
          v73 = v160;
          sub_1D1DACDC8(v160, boxed_opaque_existential_1);
          v43[2] = v71 + 1;
          sub_1D16EEE20(&v169, &v43[5 * v71 + 4]);
          sub_1D1DACE2C(v73);
          v177 = v43;
          v51 = v162;
        }

        else
        {
          (*v158)(v67, 1, 1, v55);
          sub_1D1DACC90(v67);
          v74 = v165;
          v166 = v165;
          v167 = v62;

          sub_1D1E676AC();

          v75 = v45;
          v76 = *(&v169 + 1);
          if (*(&v169 + 1))
          {
            v156 = v169;
            v77 = v170;
            sub_1D17419CC(&v173, &v169);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v168 = v77;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v77 = sub_1D177F2B8(0, v77[2] + 1, 1, v77);
              v168 = v77;
            }

            v80 = v77[2];
            v79 = v77[3];
            v157 = v43;
            if (v80 >= v79 >> 1)
            {
              v77 = sub_1D177F2B8((v79 > 1), v80 + 1, 1, v77);
              v168 = v77;
            }

            v81 = v171;
            v82 = v172;
            v83 = __swift_mutable_project_boxed_opaque_existential_1(&v169, v171);
            v84 = *(*(v81 - 8) + 64);
            MEMORY[0x1EEE9AC00](v83);
            v86 = &v135 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v87 + 16))(v86);
            sub_1D1D20B74(v80, v86, &v168, v81, v82);
            __swift_destroy_boxed_opaque_existential_1(&v169);
            *&v169 = v156;
            *(&v169 + 1) = v76;
            v170 = v77;
            v166 = v165;
            v167 = v62;
            v45 = v154;
            sub_1D1E6769C();
            sub_1D1E676BC();
            v43 = v157;
            v54 = v155;
            v51 = v162;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
            v56 = swift_allocObject();
            *(v56 + 16) = v153;
            sub_1D17419CC(&v173, v56 + 32);
            *&v169 = v74;
            *(&v169 + 1) = v62;
            v170 = v56;
            v166 = v74;
            v167 = v62;
            sub_1D1E6769C();

            v51 = v162;
            sub_1D1E676BC();
            v45 = v75;
          }

          v55 = v163;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v173);
      v49 += 40;
      --v42;
    }

    while (v42);

    v88 = v176;
    v173 = v176;
    sub_1D1E6763C();

    swift_getWitnessTable();
    v89 = sub_1D1E67ABC();

    v173 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D17D8EA8(&qword_1EC64F8C0, &qword_1EC643CB0, &qword_1D1E73640);
    v90 = sub_1D1E682AC();
    if (v90)
    {
      v91 = v146;
      if (!v43[2])
      {

        sub_1D1E65ECC();
LABEL_62:
      }
    }

    else
    {
      v91 = v146;
      if (!v43[2])
      {
        if (v89[2] != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_57;
      }
    }

    if (v89[2])
    {
LABEL_47:
      v164 = &v135;
      v173 = v89;
      MEMORY[0x1EEE9AC00](v90);
      v97 = v91;
      v98 = v149;
      *(&v135 - 6) = v149;
      *(&v135 - 5) = v97;
      v99 = v151;
      *(&v135 - 4) = v151;
      *(&v135 - 3) = &v176;
      v157 = v43;
      v100 = v147;
      v101 = v148;
      *(&v135 - 2) = v147;
      *(&v135 - 1) = v101;
      sub_1D17D8EA8(&qword_1EC64F8C8, &qword_1EC643CB0, &qword_1D1E73640);
      v165 = sub_1D1E67A4C();

      v102 = sub_1D1E6758C();
      v164 = &v135;
      v173 = v102;
      *&v169 = v157;
      MEMORY[0x1EEE9AC00](v102);
      *(&v135 - 6) = v98;
      *(&v135 - 5) = v97;
      *(&v135 - 4) = v99;
      *(&v135 - 3) = v100;
      *(&v135 - 2) = v101;

      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
      v104 = sub_1D1E65E5C();
      v105 = sub_1D17D8EA8(qword_1EC64F8D0, &qword_1EC64DC08, &qword_1D1EA7F78);
      v107 = sub_1D18CE91C(sub_1D1DACD1C, (&v135 - 8), v103, v104, MEMORY[0x1E69E73E0], v105, MEMORY[0x1E69E7410], v106);

      *&v169 = v107;
      sub_1D1E67D1C();
      swift_getWitnessTable();
      if (sub_1D1E682AC())
      {
      }

      else
      {
        sub_1D1E6776C();
        v111 = _s25_doNotTouchThisDummyClassCMa();
        v112 = v143;
        *v143 = v111;
        (*(v142 + 104))(v112, *MEMORY[0x1E6968E00], v144);
        sub_1D1E66ACC();
        v113 = v140;
        sub_1D1E665BC();
        MEMORY[0x1D388F4C0](v113, v107, v149, v97);
        sub_1D1E67D1C();
        sub_1D1E67CDC();
      }

      v108 = v138;
      v109 = v137;
      v110 = v136;
      *&v169 = v165;
      sub_1D1E67D1C();
      swift_getWitnessTable();
      sub_1D1E67CCC();
      if (qword_1EE07A098 != -1)
      {
        swift_once();
      }

      v114 = sub_1D1E6709C();
      __swift_project_value_buffer(v114, qword_1EE0813C8);

      v115 = sub_1D1E6707C();
      v116 = sub_1D1E6835C();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 134217984;
        *(v117 + 4) = sub_1D1E67CBC();

        _os_log_impl(&dword_1D16EC000, v115, v116, "createWidgetCollection Multiple sections generated: %ld", v117, 0xCu);
        MEMORY[0x1D3893640](v117, -1, -1);
      }

      else
      {
      }

      (*(v109 + 56))(v110, 1, 1, v108);
      sub_1D1E65EBC();
      goto LABEL_62;
    }

LABEL_57:

    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v118 = sub_1D1E6709C();
    __swift_project_value_buffer(v118, qword_1EE0813C8);
    v119 = sub_1D1E6707C();
    v120 = sub_1D1E6835C();
    v121 = os_log_type_enabled(v119, v120);
    v122 = v151;
    if (v121)
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_1D16EC000, v119, v120, "createWidgetCollection Only 1 room of accessories built. Returning as flat list.", v123, 2u);
      MEMORY[0x1D3893640](v123, -1, -1);
    }

    v173 = v88;
    MEMORY[0x1EEE9AC00](v124);
    v125 = v149;
    *(&v135 - 4) = v149;
    *(&v135 - 3) = v91;
    *(&v135 - 2) = v122;
    sub_1D1E6766C();

    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
    swift_getWitnessTable();
    sub_1D17D8EA8(&qword_1EC64DC10, &qword_1EC64DC08, &qword_1D1EA7F78);
    v165 = v126;
    v127 = sub_1D1E67ACC();

    sub_1D17A53D0(v127);
    v173 = v177;

    v128 = sub_1D1DABC54(&v173);
    MEMORY[0x1EEE9AC00](v128);
    v129 = v146;
    *(&v135 - 6) = v125;
    *(&v135 - 5) = v129;
    v130 = v151;
    v131 = v147;
    *(&v135 - 4) = v151;
    *(&v135 - 3) = v131;
    *(&v135 - 2) = v148;
    v132 = sub_1D17D8EA8(qword_1EC64F8D0, &qword_1EC64DC08, &qword_1D1EA7F78);
    sub_1D18CE91C(sub_1D1DACF4C, (&v135 - 8), v165, v125, MEMORY[0x1E69E73E0], v132, MEMORY[0x1E69E7410], v133);

    (*(v137 + 56))(v136, 1, 1, v138);
    v134 = *(v130 + 1);
    sub_1D1E65EAC();
    goto LABEL_62;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v92 = sub_1D1E6709C();
  __swift_project_value_buffer(v92, qword_1EE0813C8);
  v93 = sub_1D1E6707C();
  v94 = sub_1D1E6833C();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_1D16EC000, v93, v94, "createWidgetCollection No accessories found, returning empty collection", v95, 2u);
    MEMORY[0x1D3893640](v95, -1, -1);
  }

  return sub_1D1E65ECC();
}

BOOL sub_1D1DAB530(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  sub_1D17D8EF0();
  return sub_1D1E6860C() == -1;
}

uint64_t sub_1D1DAB598@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a8;
  v56 = a4;
  v57 = a7;
  v55 = a3;
  v12 = sub_1D1E677BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1D1E66ADC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E6658C();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1D1E677DC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1D1E6659C();
  v53 = *(v23 - 8);
  v54 = v23;
  v24 = *(v53 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v62 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v49 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v61 = v49 - v30;
  v32 = *a1;
  v31 = a1[1];
  v33 = *a2;
  v63 = v32;
  v64 = v31;
  v58 = a5;
  v59 = a6;
  _s11RoomSectionVMa();

  sub_1D1E676AC();

  if (v66)
  {
    v49[1] = v66;
    v49[0] = v67;
    if (v32 == 95 && v31 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
    {
      sub_1D1E6776C();
      *v20 = _s25_doNotTouchThisDummyClassCMa();
      (*(v50 + 104))(v20, *MEMORY[0x1E6968E00], v51);
      sub_1D1E66ACC();
    }

    else
    {
      sub_1D1E677AC();
      sub_1D1E6779C();
      sub_1D1E6778C();
      sub_1D1E6779C();
      sub_1D1E677CC();
      *v20 = _s25_doNotTouchThisDummyClassCMa();
      (*(v50 + 104))(v20, *MEMORY[0x1E6968E00], v51);
      sub_1D1E66ACC();
    }

    v36 = v58;
    sub_1D1E665BC();
    v38 = v53;
    v37 = v54;
    v39 = v61;
    (*(v53 + 32))(v61, v29, v54);
    v40 = (*(v38 + 16))(v62, v39, v37);
    v58 = v49;
    v65 = v49[0];
    MEMORY[0x1EEE9AC00](v40);
    v41 = v59;
    v49[-6] = v36;
    v49[-5] = v41;
    v43 = v55;
    v42 = v56;
    v49[-4] = v57;
    v49[-3] = v43;
    v49[-2] = v42;

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
    v45 = sub_1D17D8EA8(qword_1EC64F8D0, &qword_1EC64DC08, &qword_1D1EA7F78);
    sub_1D18CE91C(sub_1D1DACF1C, &v49[-8], v44, v36, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v46);
    swift_bridgeObjectRelease_n();

    v35 = v60;
    sub_1D1E65E9C();
    (*(v38 + 8))(v61, v37);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v35 = v60;
  }

  v47 = sub_1D1E65E7C();
  return (*(*(v47 - 8) + 56))(v35, v34, 1, v47);
}

uint64_t sub_1D1DABB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  return sub_1D1E65E6C();
}

uint64_t sub_1D1DABC54(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C170(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D1DABCC0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D1DABCC0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1DABF78(v7, v8, a1, v4);
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
    return sub_1D1DABDC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1DABDC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v15 = v6;
    v16 = v5;
    while (1)
    {
      sub_1D17419CC(v5, &v20);
      sub_1D17419CC(v5 - 40, v17);
      v7 = v21;
      v8 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      (*(v8 + 56))(v7, v8);
      v10 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v9 + 56))(v10, v9);
      sub_1D17D8EF0();
      v11 = sub_1D1E6860C();

      __swift_destroy_boxed_opaque_existential_1(v17);
      result = __swift_destroy_boxed_opaque_existential_1(&v20);
      if (v11 != -1)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        v6 = v15 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1D16EEE20(v5, &v20);
      v12 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v12;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1D16EEE20(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DABF78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v105 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v101 = v6;
        v103 = v10;
        v11 = *v7;
        sub_1D17419CC(*v7 + 40 * (v9 + 1), &v114);
        v12 = v11 + 40 * v9;
        sub_1D17419CC(v12, v111);
        v14 = v115;
        v13 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, v115);
        (*(v13 + 56))(v14, v13);
        v16 = v112;
        v15 = v113;
        __swift_project_boxed_opaque_existential_1(v111, v112);
        (*(v15 + 56))(v16, v15);
        v5 = sub_1D17D8EF0();
        v109 = sub_1D1E6860C();

        __swift_destroy_boxed_opaque_existential_1(v111);
        result = __swift_destroy_boxed_opaque_existential_1(&v114);
        v17 = v9 + 2;
        v18 = v12 + 80;
        while (v8 != v17)
        {
          sub_1D17419CC(v18, &v114);
          sub_1D17419CC(v18 - 40, v111);
          v19 = v8;
          v21 = v115;
          v20 = v116;
          __swift_project_boxed_opaque_existential_1(&v114, v115);
          (*(v20 + 56))(v21, v20);
          v23 = v112;
          v22 = v113;
          __swift_project_boxed_opaque_existential_1(v111, v112);
          (*(v22 + 56))(v23, v22);
          v24 = sub_1D1E6860C();
          v8 = v19;

          __swift_destroy_boxed_opaque_existential_1(v111);
          result = __swift_destroy_boxed_opaque_existential_1(&v114);
          ++v17;
          v18 += 40;
          if ((v109 == -1) == (v24 != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v6 = v101;
        v10 = v103;
        v7 = a3;
        if (v109 == -1)
        {
          if (v8 < v9)
          {
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
LABEL_129:
            __break(1u);
            return result;
          }

          if (v9 < v8)
          {
            v25 = v8;
            v26 = 40 * v8 - 40;
            v5 = v25;
            v27 = v9;
            v28 = 40 * v9;
            do
            {
              if (v27 != --v25)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v29 = v34 + v28;
                v30 = v34 + v26;
                v31 = v28;
                sub_1D16EEE20((v34 + v28), &v114);
                v32 = *(v30 + 32);
                v33 = *(v30 + 16);
                *v29 = *v30;
                *(v29 + 16) = v33;
                *(v29 + 32) = v32;
                result = sub_1D16EEE20(&v114, v30);
                v28 = v31;
              }

              ++v27;
              v26 -= 40;
              v28 += 40;
            }

            while (v27 < v25);
            v7 = a3;
            v10 = v103;
            v8 = v5;
          }
        }
      }

      v35 = *(v7 + 8);
      if (v8 >= v35)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v8, v9))
      {
        goto LABEL_119;
      }

      if (v8 - v9 >= a4)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_120;
      }

      if (v9 + a4 >= v35)
      {
        v36 = *(v7 + 8);
      }

      else
      {
        v36 = v9 + a4;
      }

      if (v36 < v9)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v36)
      {
LABEL_28:
        v37 = v8;
        if (v8 < v9)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v102 = v6;
        v104 = v10;
        v84 = *v7;
        v5 = *v7 + 40 * v8;
        v100 = v9;
        v85 = v9 - v8;
        v106 = v36;
        do
        {
          v108 = v5;
          v110 = v8;
          v86 = v85;
          do
          {
            sub_1D17419CC(v5, &v114);
            sub_1D17419CC(v5 - 40, v111);
            v87 = v115;
            v88 = v116;
            __swift_project_boxed_opaque_existential_1(&v114, v115);
            (*(v88 + 56))(v87, v88);
            v89 = v112;
            v90 = v113;
            __swift_project_boxed_opaque_existential_1(v111, v112);
            (*(v90 + 56))(v89, v90);
            sub_1D17D8EF0();
            v91 = sub_1D1E6860C();

            __swift_destroy_boxed_opaque_existential_1(v111);
            result = __swift_destroy_boxed_opaque_existential_1(&v114);
            if (v91 != -1)
            {
              break;
            }

            if (!v84)
            {
              goto LABEL_124;
            }

            sub_1D16EEE20(v5, &v114);
            v92 = *(v5 - 24);
            *v5 = *(v5 - 40);
            *(v5 + 16) = v92;
            *(v5 + 32) = *(v5 - 8);
            sub_1D16EEE20(&v114, v5 - 40);
            v5 -= 40;
          }

          while (!__CFADD__(v86++, 1));
          v8 = v110 + 1;
          v5 = v108 + 40;
          --v85;
          v37 = v106;
        }

        while (v110 + 1 != v106);
        v6 = v102;
        v10 = v104;
        v7 = a3;
        v9 = v100;
        if (v106 < v100)
        {
          goto LABEL_118;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D070(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v39 = *(v10 + 2);
      v38 = *(v10 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1D177D070((v38 > 1), v39 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v40;
      v41 = &v10[16 * v39];
      *(v41 + 4) = v9;
      *(v41 + 5) = v37;
      v5 = *v105;
      if (!*v105)
      {
        goto LABEL_128;
      }

      v9 = v37;
      if (v39)
      {
        while (1)
        {
          v42 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v43 = *(v10 + 4);
            v44 = *(v10 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_48:
            if (v46)
            {
              goto LABEL_107;
            }

            v59 = &v10[16 * v40];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_110;
            }

            v65 = &v10[16 * v42 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_114;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v40 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v69 = &v10[16 * v40];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_62:
          if (v64)
          {
            goto LABEL_109;
          }

          v72 = &v10[16 * v42];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_112;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_69:
          v80 = v42 - 1;
          if (v42 - 1 >= v40)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_121;
          }

          if (!*v7)
          {
            goto LABEL_125;
          }

          v81 = *&v10[16 * v80 + 32];
          v82 = *&v10[16 * v42 + 40];
          sub_1D1DAC82C((*v7 + 40 * v81), (*v7 + 40 * *&v10[16 * v42 + 32]), *v7 + 40 * v82, v5);
          if (v6)
          {
          }

          if (v82 < v81)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v80 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v83 = &v10[16 * v80];
          *(v83 + 4) = v81;
          *(v83 + 5) = v82;
          v117 = v10;
          result = sub_1D1E0BDB8(v42);
          v10 = v117;
          v40 = *(v117 + 16);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v47 = &v10[16 * v40 + 32];
        v48 = *(v47 - 64);
        v49 = *(v47 - 56);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_105;
        }

        v52 = *(v47 - 48);
        v51 = *(v47 - 40);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_106;
        }

        v54 = &v10[16 * v40];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_108;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v58 >= v50)
        {
          v76 = &v10[16 * v42 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_115;
          }

          if (v45 < v79)
          {
            v42 = v40 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v8 = *(v7 + 8);
      if (v9 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v5 = v10;
  v10 = *v105;
  if (!*v105)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_1D1E0BE44(v5);
    v5 = result;
  }

  v94 = v6;
  v117 = v5;
  v95 = *(v5 + 16);
  if (v95 >= 2)
  {
    while (1)
    {
      v96 = *v7;
      if (!*v7)
      {
        goto LABEL_126;
      }

      v6 = v95 - 1;
      v97 = *(v5 + 16 * v95);
      v7 = *(v5 + 16 * (v95 - 1) + 40);
      sub_1D1DAC82C((v96 + 40 * v97), (v96 + 40 * *(v5 + 16 * (v95 - 1) + 32)), v96 + 40 * v7, v10);
      if (v94)
      {
      }

      if (v7 < v97)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D1E0BE44(v5);
      }

      if (v95 - 2 >= *(v5 + 16))
      {
        goto LABEL_117;
      }

      v98 = (v5 + 16 * v95);
      *v98 = v97;
      v98[1] = v7;
      v117 = v5;
      result = sub_1D1E0BDB8(v6);
      v5 = v117;
      v95 = *(v117 + 16);
      v7 = a3;
      if (v95 <= 1)
      {
      }
    }
  }
}

uint64_t sub_1D1DAC82C(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[40 * v10] <= a4)
    {
      v25 = a3;
      memmove(a4, a2, 40 * v10);
      a3 = v25;
    }

    v12 = &v4[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v45 = v5;
    }

    else
    {
      v26 = v5;
      v48 = v6;
      do
      {
        __dst = v26;
        v27 = (v26 - 40);
        v28 = (v12 - 40);
        v29 = a3 - 40;
        v56 = v26 - 40;
        while (1)
        {
          v32 = v4;
          v33 = v28 + 40;
          v34 = v29;
          v35 = (v29 + 40);
          sub_1D17419CC(v28, v53);
          sub_1D17419CC(v27, v50);
          v36 = v54;
          v37 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          (*(v37 + 56))(v36, v37);
          v39 = v51;
          v38 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          (*(v38 + 56))(v39, v38);
          sub_1D17D8EF0();
          v40 = sub_1D1E6860C();

          __swift_destroy_boxed_opaque_existential_1(v50);
          __swift_destroy_boxed_opaque_existential_1(v53);
          if (v40 == -1)
          {
            break;
          }

          v4 = v32;
          if (v35 != v33)
          {
            v41 = *v28;
            v42 = *(v28 + 16);
            *(v34 + 32) = *(v28 + 32);
            *v34 = v41;
            *(v34 + 16) = v42;
          }

          v30 = v28 - 40;
          v29 = v34 - 40;
          v31 = v28 > v32;
          v28 -= 40;
          v27 = v56;
          if (!v31)
          {
            v12 = (v30 + 40);
            v45 = __dst;
            goto LABEL_35;
          }
        }

        v4 = v32;
        v45 = v56;
        a3 = v34;
        if (v35 != __dst)
        {
          v43 = *v56;
          v44 = *(v56 + 1);
          *(v34 + 32) = *(v56 + 4);
          *v34 = v43;
          *(v34 + 16) = v44;
        }

        v12 = (v28 + 40);
        if (v33 <= v32)
        {
          break;
        }

        v26 = v45;
      }

      while (v45 > v48);
      v12 = (v28 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      v11 = a3;
      memmove(a4, __src, 40 * v8);
      a3 = v11;
    }

    v12 = &v4[40 * v8];
    if (v7 >= 40 && v5 < a3)
    {
      while (1)
      {
        v13 = a3;
        v14 = v12;
        sub_1D17419CC(v5, v53);
        sub_1D17419CC(v4, v50);
        v15 = v4;
        v16 = v5;
        v17 = v54;
        v18 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        (*(v18 + 56))(v17, v18);
        v20 = v51;
        v19 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v19 + 56))(v20, v19);
        sub_1D17D8EF0();
        v21 = sub_1D1E6860C();

        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v53);
        if (v21 != -1)
        {
          break;
        }

        v22 = v16;
        v5 = v16 + 40;
        v4 = v15;
        if (v6 != v16)
        {
          goto LABEL_9;
        }

LABEL_10:
        v6 += 40;
        v12 = v14;
        if (v4 < v14)
        {
          a3 = v13;
          if (v5 < v13)
          {
            continue;
          }
        }

        v45 = v6;
        goto LABEL_35;
      }

      v22 = v15;
      v4 = v15 + 40;
      v5 = v16;
      if (v6 == v15)
      {
        goto LABEL_10;
      }

LABEL_9:
      v23 = *v22;
      v24 = *(v22 + 1);
      *(v6 + 4) = *(v22 + 4);
      *v6 = v23;
      *(v6 + 1) = v24;
      goto LABEL_10;
    }

    v45 = v6;
  }

LABEL_35:
  v46 = (v12 - v4) / 40;
  if (v45 != v4 || v45 >= &v4[40 * v46])
  {
    memmove(v45, v4, 40 * v46);
  }

  return 1;
}

uint64_t sub_1D1DACC90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1DACD1C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1D1DABB94(a1, v1[5], v1[6], v1[2]);
}

uint64_t sub_1D1DACD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticActionSet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1DACDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticActionSet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1DACE2C(uint64_t a1)
{
  v2 = type metadata accessor for StaticActionSet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1DACE88()
{
  result = qword_1EC64C000;
  if (!qword_1EC64C000)
  {
    type metadata accessor for StaticActionSet();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C000);
  }

  return result;
}

uint64_t sub_1D1DACEE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1DACF1C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1D1DACF64(uint64_t a1)
{
  v37 = sub_1D1E66A7C();
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
    sub_1D178CD24(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_1D1E6869C();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
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
      v39 = sub_1D1E66A1C();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D178CD24((v19 > 1), v20 + 1, 1);
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
            result = sub_1D1716920(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v10, v38, 0);
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

uint64_t sub_1D1DAD26C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28 = v1;
  v38 = MEMORY[0x1E69E7CC0];
  v30 = v5;
  sub_1D178D784(0, v7, 0);
  v8 = v38;
  v9 = v30 + 56;
  v10 = -1 << *(v30 + 32);
  result = sub_1D1E6869C();
  v12 = result;
  v13 = v30;
  v14 = 0;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v17 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v36 = *(v13 + 36);
    v18 = v33;
    sub_1D1741C08(*(v13 + 48) + *(v34 + 72) * v12, v33, &qword_1EC643018, &qword_1D1E9AC00);
    v37 = *(v18 + *(v35 + 40));
    result = sub_1D1741A30(v18, &qword_1EC643018, &qword_1D1E9AC00);
    v38 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1D178D784((v19 > 1), v20 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v20 + 1;
    *(v8 + 8 * v20 + 32) = v37;
    v15 = 1 << *(v13 + 32);
    if (v12 >= v15)
    {
      goto LABEL_22;
    }

    v9 = v32;
    v21 = *(v32 + 8 * v17);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(v13 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v15 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
    }

    else
    {
      v23 = v17 << 6;
      v24 = v17 + 1;
      v25 = (v29 + 8 * v17);
      v16 = v31;
      while (v24 < (v15 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D1716920(v12, v36, 0);
          v13 = v30;
          v15 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1D1716920(v12, v36, 0);
      v13 = v30;
    }

LABEL_4:
    ++v14;
    v12 = v15;
    if (v14 == v16)
    {
      return v8;
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

uint64_t WidgetWriteRequests.init(requests:configuration:filtered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a3;
  *a5 = a1;
  v9 = type metadata accessor for WidgetWriteRequests();
  v14 = *(a4 - 8);
  (*(v14 + 16))(&a5[v9[9]], a2, a4);
  *&a5[v9[10]] = v8;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6701C();
  __swift_project_value_buffer(v10, qword_1EC6BE2B8);
  v11 = v9[11];
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v12 = *(v14 + 8);

  return v12(a2, a4);
}

uint64_t WidgetDataModel.snapshotOf<A>(updateType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1D1DAD78C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DAD78C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;
  v3[7] = a1;

  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v5;
  v6[1] = sub_1D1DAD918;
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[3];
  v10 = v3[2];

  return WidgetSnapshotModerator.updateState<A>(updateType:timeout:)(v10, v9, v8, v7, 20.0);
}

uint64_t sub_1D1DAD918()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t WidgetDataModel.snapshotModerator.getter()
{
  *(v1 + 16) = v0;
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07B4E0;
  *(v1 + 24) = qword_1EE07B4E0;

  return MEMORY[0x1EEE6DFA0](sub_1D1DADAC4, v2, 0);
}

uint64_t sub_1D1DADAC4()
{
  if (*(v0[2] + 16))
  {
    v5 = v0[1];

    return v5(v1);
  }

  else
  {
    if (qword_1EC6424B8 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC64F958);
    v0[4] = qword_1EC64F960;
    os_unfair_lock_unlock(&dword_1EC64F958);
    sub_1D1E67E1C();
    v0[5] = sub_1D1E67E0C();
    v4 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1DADBFC, v4, v3);
  }
}

uint64_t sub_1D1DADBFC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v0[6] = sub_1D1DC8F84(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DADC74, v3, 0);
}

uint64_t sub_1D1DADC74()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for WidgetSnapshotModerator(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_1D1DB1098(v1);
  v7 = *(v2 + 16);
  *(v2 + 16) = v6;

  v8 = v0[1];

  return v8(v6);
}

uint64_t WidgetSnapshotModerator.staticMatterDevice(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v41 = a2;
  v3 = type metadata accessor for StaticMatterDevice();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - v12;
  v14 = type metadata accessor for MatterStateSnapshot();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(v2 + 120);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v48 = (v4 + 56);
  v49 = v17;
  v51 = v4;
  v43 = (v4 + 48);

  v24 = 0;
  v53 = v3;
  v42 = v18;
  v44 = v13;
  v25 = v50;
  if (!v21)
  {
LABEL_6:
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_28;
      }

      if (v26 >= v22)
      {

        return (*v48)(v41, 1, 1, v3);
      }

      v21 = *(v18 + 8 * v26);
      ++v24;
      if (v21)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
    v26 = v24;
LABEL_9:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v28 = v45;
    sub_1D1DC9148(*(v49 + 56) + *(v46 + 72) * (v27 | (v26 << 6)), v45, type metadata accessor for MatterStateSnapshot);
    v29 = *(v28 + *(v47 + 24));

    sub_1D1DC91B0(v28, type metadata accessor for MatterStateSnapshot);
    v30 = 1 << *(v29 + 32);
    v31 = v30 < 64 ? ~(-1 << v30) : -1;
    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;

    v34 = 0;
    if (!v32)
    {
      break;
    }

    while (1)
    {
      v35 = v34;
LABEL_17:
      sub_1D1DC9148(*(v29 + 56) + *(v51 + 72) * (__clz(__rbit64(v32)) | (v35 << 6)), v25, type metadata accessor for StaticMatterDevice);
      sub_1D1DCF39C(v25, v8, type metadata accessor for StaticMatterDevice);
      if (*&v8[*(v53 + 20)] == v52)
      {
        break;
      }

      v32 &= v32 - 1;
      result = sub_1D1DC91B0(v8, type metadata accessor for StaticMatterDevice);
      v34 = v35;
      if (!v32)
      {
        goto LABEL_14;
      }
    }

    v37 = v44;
    sub_1D1DCF39C(v8, v44, type metadata accessor for StaticMatterDevice);
    v36 = *v48;
    v38 = v37;
    v39 = 0;
LABEL_21:
    v3 = v53;
    v36(v38, v39, 1, v53);

    if ((*v43)(v37, 1, v3) != 1)
    {

      v40 = v41;
      sub_1D1DCF39C(v37, v41, type metadata accessor for StaticMatterDevice);
      return v36(v40, 0, 1, v3);
    }

    result = sub_1D1741A30(v37, &qword_1EC643650, &qword_1D1E71D40);
    v24 = v26;
    v18 = v42;
    if (!v21)
    {
      goto LABEL_6;
    }
  }

LABEL_14:
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v36 = *v48;
      v37 = v44;
      v38 = v44;
      v39 = 1;
      goto LABEL_21;
    }

    v32 = *(v29 + 64 + 8 * v35);
    ++v34;
    if (v32)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D1DAE22C()
{
  type metadata accessor for WidgetActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EE07B4E0 = v0;
  return result;
}

uint64_t static WidgetActor.shared.getter()
{
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }
}

uint64_t static WidgetActor.run<A>(resultType:body:)(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D17C4BFC;

  return v8(a1);
}

uint64_t WidgetActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1DAE418()
{
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1DAE474()
{
  v0 = type metadata accessor for WidgetActor();

  return MEMORY[0x1EEE6DBF0](v0);
}

uint64_t static BasicIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1D1E6904C(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1D1E6904C();
    }
  }

  return result;
}

unint64_t sub_1D1DAE5D0()
{
  if (*v0)
  {
    result = 0x694B746567646977;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1D1DAE614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1EC9000 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x694B746567646977 && a2 == 0xEA0000000000646ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D1DAE704(uint64_t a1)
{
  v2 = sub_1D1DC9524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAE740(uint64_t a1)
{
  v2 = sub_1D1DC9524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BasicIdentity.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F968, &unk_1D1EAFB18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DC9524();
  sub_1D1E6930C();
  v16 = 0;
  sub_1D1E68ECC();
  if (!v5)
  {
    v15 = 1;
    sub_1D1E68ECC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t BasicIdentity.hash(into:)()
{
  sub_1D1E678EC();

  return sub_1D1E678EC();
}

uint64_t BasicIdentity.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t BasicIdentity.init(from:)(uint64_t *a1)
{
  result = sub_1D1DC97E8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D1DAE9FC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D1E6904C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D1E6904C();
    }
  }

  return result;
}

uint64_t sub_1D1DAEAA0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DAEB08()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E678EC();

  return sub_1D1E678EC();
}

uint64_t sub_1D1DAEB58()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DAEBBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D1DC97E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D1DAEC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  sub_1D1778308(a1, a6);
  v11 = type metadata accessor for WidgetRefresh();
  (*(*(a5 - 8) + 32))(a6 + v11[9], a2, a5);
  *(a6 + v11[10]) = v10;
  v12 = v11[11];
  v13 = sub_1D1E66FDC();
  v14 = *(*(v13 - 8) + 32);

  return v14(a6 + v12, a4, v13);
}

uint64_t WidgetRefresh.init(homeID:configuration:filtered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_1D1741C08(a1, a5, &qword_1EC642590, qword_1D1E71260);
  v10 = type metadata accessor for WidgetRefresh();
  v11 = *(a4 - 8);
  (*(v11 + 16))(a5 + v10[9], a2, a4);
  *(a5 + v10[10]) = v9;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6701C();
  __swift_project_value_buffer(v12, qword_1EC6BE2B8);
  v13 = v10[11];
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  (*(v11 + 8))(a2, a4);
  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t WidgetDetailUpdate.init(homeID:characteristics:actionSets:matterDevices:configuration:isMonitoring:filtered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a7;
  sub_1D1741C08(a1, a9, &qword_1EC642590, qword_1D1E71260);
  v18 = type metadata accessor for WidgetDetailUpdate();
  *(a9 + v18[9]) = a2;
  *(a9 + v18[10]) = a3;
  *(a9 + v18[11]) = a4;
  v19 = *(a8 - 8);
  (*(v19 + 16))(a9 + v18[12], a5, a8);
  *(a9 + v18[14]) = a6;
  *(a9 + v18[13]) = v17;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6701C();
  __swift_project_value_buffer(v20, qword_1EC6BE2B8);
  v21 = v18[15];
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  (*(v19 + 8))(a5, a8);
  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}