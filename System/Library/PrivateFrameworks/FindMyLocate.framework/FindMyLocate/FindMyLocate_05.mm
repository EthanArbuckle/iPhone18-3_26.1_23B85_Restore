uint64_t sub_1B802DEE8()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[11];

  v0[9] = v1;
  sub_1B80C927C();
  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B802DF80(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CC9E0, &v12);
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

  v12 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  return sub_1B80C927C();
}

uint64_t sub_1B802E160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802E1AC, v2, 0);
}

uint64_t sub_1B802E1AC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000013, 0x80000001B80CC9C0, sub_1B80348E8, v4, v7);
}

uint64_t sub_1B802E2F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a5;
  v27 = a7;
  v24 = a3;
  v25 = a4;
  v9 = sub_1B80C8E9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  sub_1B80C8A0C();
  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = (v18 + v17);
  v21 = v24;
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v26;

  sub_1B7FC62D8(v21, v20);
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89FC();
  v22 = *(a2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B802E4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802E5E0, 0, 0);
}

uint64_t sub_1B802E5E0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v3 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = *(v3 + 80);
  *(v0 + 216) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  v11 = *(v3 + 32);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = *(MEMORY[0x1E699C838] + 4);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  v14 = _s18LocationConnectionCMa();
  v15 = sub_1B7FCD170(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v13 = v0;
  v13[1] = sub_1B802E794;
  v16 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B80317DC, v10, v14, v15);
}

uint64_t sub_1B802E794()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1B80348F4;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1B802E8B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B802E8B0()
{
  v17 = v0[23];
  v18 = v0[24];
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = (*(v0 + 216) + 16) & ~*(v0 + 216);
  v20 = v0[8];
  v19 = sub_1B80C8D1C();
  v2(v3, v8, v5);
  v10 = swift_allocObject();
  v17(v10 + v9, v3, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_4;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v20 publishLocation:v19 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  v14 = v0[18];
  v13 = v0[19];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B802EA4C(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC9C0, &v12);
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

  v12 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  return sub_1B80C927C();
}

uint64_t sub_1B802EC2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802EC78, v2, 0);
}

uint64_t sub_1B802EC78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD00000000000001ALL, 0x80000001B80CCA10, sub_1B803197C, v4, v7);
}

uint64_t sub_1B802EDC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802EE0C, v2, 0);
}

uint64_t sub_1B802EE0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000021, 0x80000001B80CC9E0, sub_1B80317F4, v4, v7);
}

uint64_t sub_1B802EF54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802EFA0, v2, 0);
}

uint64_t sub_1B802EFA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000013, 0x80000001B80CC9C0, sub_1B803166C, v4, v7);
}

uint64_t sub_1B802F0E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B7FDA404(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
      return sub_1B803453C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B8091A9C();
    goto LABEL_7;
  }

  sub_1B8090668(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1B7FDA404(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B802F510(v12, a2, a3, a1, v18);
}

uint64_t sub_1B802F254(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7FDA47C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B8092468();
      goto LABEL_7;
    }

    sub_1B8091190(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1B7FDA47C(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B802F5BC(v10, a2, a1, v16);
      return sub_1B7FC8DA4(a2, &v27);
    }

LABEL_15:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1B80C8E2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_1B802F3C8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7FDA47C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Location();
      return sub_1B803453C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Location);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1B8092058();
    goto LABEL_7;
  }

  sub_1B80909E0(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1B7FDA47C(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B802F69C(v10, a2, a1, v16);
  return sub_1B7FC8DA4(a2, &v23);
}

uint64_t sub_1B802F510(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  result = sub_1B80344D4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1B802F5BC(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a2[9];
  v8 = (a4[6] + 176 * a1);
  v8[8] = a2[8];
  v8[9] = v7;
  v8[10] = a2[10];
  v9 = a2[5];
  v8[4] = a2[4];
  v8[5] = v9;
  v10 = a2[7];
  v8[6] = a2[6];
  v8[7] = v10;
  v11 = a2[1];
  *v8 = *a2;
  v8[1] = v11;
  v12 = a2[3];
  v8[2] = a2[2];
  v8[3] = v12;
  v13 = a4[7];
  v14 = sub_1B80C8E2C();
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1B802F69C(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a2[9];
  v8 = (a4[6] + 176 * a1);
  v8[8] = a2[8];
  v8[9] = v7;
  v8[10] = a2[10];
  v9 = a2[5];
  v8[4] = a2[4];
  v8[5] = v9;
  v10 = a2[7];
  v8[6] = a2[6];
  v8[7] = v10;
  v11 = a2[1];
  *v8 = *a2;
  v8[1] = v11;
  v12 = a2[3];
  v8[2] = a2[2];
  v8[3] = v12;
  v13 = a4[7];
  v14 = type metadata accessor for Location();
  result = sub_1B80344D4(a3, v13 + *(*(v14 - 8) + 72) * a1, type metadata accessor for Location);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1B802F778(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1B803256C(v10, v8, v6, a2, a3 & 1);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1B803034C(v13, v8, v6, a2, a3 & 1);
  result = MEMORY[0x1B8CB8970](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B802F900(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1B80303DC(v13, v7, v5, a3);
  result = MEMORY[0x1B8CB8970](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B802FA70(unint64_t *a1, uint64_t a2, void *a3)
{
  v58 = a2;
  v59 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v4 = *(*(v65 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v65);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v58 - v8);
  v10 = type metadata accessor for Location();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v15 = 0;
  v66 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v62 = v22;
  if (v21)
  {
    do
    {
      v23 = __clz(__rbit64(v21));
      v93 = (v21 - 1) & v21;
LABEL_10:
      v26 = v23 | (v15 << 6);
      v27 = v66[7];
      v28 = (v66[6] + 176 * v26);
      v30 = v28[1];
      v29 = v28[2];
      v68 = *v28;
      v69 = v30;
      v70 = v29;
      v31 = v28[6];
      v33 = v28[3];
      v32 = v28[4];
      v73 = v28[5];
      v74 = v31;
      v71 = v33;
      v72 = v32;
      v34 = v28[10];
      v36 = v28[7];
      v35 = v28[8];
      v77 = v28[9];
      v78 = v34;
      v75 = v36;
      v76 = v35;
      v37 = *(v63 + 72);
      v61 = v26;
      sub_1B80337A4(v27 + v37 * v26, v14, type metadata accessor for Location);
      v38 = v77;
      v9[8] = v76;
      v9[9] = v38;
      v9[10] = v78;
      v39 = v73;
      v9[4] = v72;
      v9[5] = v39;
      v40 = v75;
      v9[6] = v74;
      v9[7] = v40;
      v41 = v69;
      *v9 = v68;
      v9[1] = v41;
      v42 = v71;
      v9[2] = v70;
      v9[3] = v42;
      v43 = v65;
      sub_1B80337A4(v14, v9 + *(v65 + 48), type metadata accessor for Location);
      sub_1B7FC8F2C(v9, v7, &qword_1EBA660D8, &qword_1B80D2E98);
      v44 = v7[9];
      v79[8] = v7[8];
      v79[9] = v44;
      v79[10] = v7[10];
      v45 = v7[5];
      v79[4] = v7[4];
      v79[5] = v45;
      v46 = v7[7];
      v79[6] = v7[6];
      v79[7] = v46;
      v47 = v7[1];
      v79[0] = *v7;
      v79[1] = v47;
      v48 = v7[3];
      v79[2] = v7[2];
      v79[3] = v48;
      sub_1B7FC8DA4(&v68, v67);
      sub_1B7FC8DA4(&v68, v67);
      sub_1B7FCAD28(v79);
      v49 = v7 + *(v43 + 48);
      v50 = (v49 + *(v64 + 20));
      v51 = v50[7];
      v86 = v50[6];
      v87 = v51;
      v52 = v50[5];
      v84 = v50[4];
      v85 = v52;
      v53 = v50[11];
      v90 = v50[10];
      v91 = v53;
      v54 = v50[3];
      v82 = v50[2];
      v83 = v54;
      v55 = v50[9];
      v88 = v50[8];
      v89 = v55;
      v56 = v50[1];
      v80 = *v50;
      v81 = v56;
      sub_1B7FB8448(&v80, v67, &qword_1EBA65D70, &qword_1B80D1BB0);
      sub_1B803380C(v49, type metadata accessor for Location);
      v92[8] = v88;
      v92[9] = v89;
      v92[10] = v90;
      v92[11] = v91;
      v92[4] = v84;
      v92[5] = v85;
      v92[6] = v86;
      v92[7] = v87;
      v92[0] = v80;
      v92[1] = v81;
      v92[2] = v82;
      v92[3] = v83;
      if (sub_1B8032DBC(v92) == 1)
      {
        sub_1B803380C(v14, type metadata accessor for Location);
        result = sub_1B7FCAD28(&v68);
        *(v59 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        if (__OFADD__(v60++, 1))
        {
          __break(1u);
          return sub_1B80308C0(v59, v58, v60, v66);
        }
      }

      else
      {
        sub_1B7FB86D4(&v80, &qword_1EBA65D70, &qword_1B80D1BB0);
        sub_1B803380C(v14, type metadata accessor for Location);
        result = sub_1B7FCAD28(&v68);
      }

      v22 = v62;
      v21 = v93;
    }

    while (v93);
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1B80308C0(v59, v58, v60, v66);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v93 = (v25 - 1) & v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B802FEE0(unint64_t *a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v60 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v4 = *(*(v65 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v65);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v58 - v8);
  v10 = type metadata accessor for Location();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v15 = 0;
  v66 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v93 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = v66[7];
    v28 = (v66[6] + 176 * v26);
    v30 = v28[1];
    v29 = v28[2];
    v68 = *v28;
    v69 = v30;
    v70 = v29;
    v31 = v28[6];
    v33 = v28[3];
    v32 = v28[4];
    v73 = v28[5];
    v74 = v31;
    v71 = v33;
    v72 = v32;
    v34 = v28[10];
    v36 = v28[7];
    v35 = v28[8];
    v77 = v28[9];
    v78 = v34;
    v75 = v36;
    v76 = v35;
    v37 = *(v63 + 72);
    v62 = v26;
    sub_1B80337A4(v27 + v37 * v26, v14, type metadata accessor for Location);
    v38 = v77;
    v9[8] = v76;
    v9[9] = v38;
    v9[10] = v78;
    v39 = v73;
    v9[4] = v72;
    v9[5] = v39;
    v40 = v75;
    v9[6] = v74;
    v9[7] = v40;
    v41 = v69;
    *v9 = v68;
    v9[1] = v41;
    v42 = v71;
    v9[2] = v70;
    v9[3] = v42;
    v43 = v65;
    sub_1B80337A4(v14, v9 + *(v65 + 48), type metadata accessor for Location);
    sub_1B7FC8F2C(v9, v7, &qword_1EBA660D8, &qword_1B80D2E98);
    v44 = v7[9];
    v79[8] = v7[8];
    v79[9] = v44;
    v79[10] = v7[10];
    v45 = v7[5];
    v79[4] = v7[4];
    v79[5] = v45;
    v46 = v7[7];
    v79[6] = v7[6];
    v79[7] = v46;
    v47 = v7[1];
    v79[0] = *v7;
    v79[1] = v47;
    v48 = v7[3];
    v79[2] = v7[2];
    v79[3] = v48;
    sub_1B7FC8DA4(&v68, v67);
    sub_1B7FC8DA4(&v68, v67);
    sub_1B7FCAD28(v79);
    v49 = v7 + *(v43 + 48);
    v50 = (v49 + *(v64 + 20));
    v51 = v50[7];
    v86 = v50[6];
    v87 = v51;
    v52 = v50[5];
    v84 = v50[4];
    v85 = v52;
    v53 = v50[11];
    v90 = v50[10];
    v91 = v53;
    v54 = v50[3];
    v82 = v50[2];
    v83 = v54;
    v55 = v50[9];
    v88 = v50[8];
    v89 = v55;
    v56 = v50[1];
    v80 = *v50;
    v81 = v56;
    sub_1B7FB8448(&v80, v67, &qword_1EBA65D70, &qword_1B80D1BB0);
    sub_1B803380C(v49, type metadata accessor for Location);
    v92[8] = v88;
    v92[9] = v89;
    v92[10] = v90;
    v92[11] = v91;
    v92[4] = v84;
    v92[5] = v85;
    v92[6] = v86;
    v92[7] = v87;
    v92[0] = v80;
    v92[1] = v81;
    v92[2] = v82;
    v92[3] = v83;
    if (sub_1B8032DBC(v92) == 1)
    {
      sub_1B803380C(v14, type metadata accessor for Location);
      result = sub_1B7FCAD28(&v68);
      v21 = v93;
    }

    else
    {
      sub_1B7FB86D4(&v80, &qword_1EBA65D70, &qword_1B80D1BB0);
      sub_1B803380C(v14, type metadata accessor for Location);
      result = sub_1B7FCAD28(&v68);
      *(v60 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      if (__OFADD__(v61++, 1))
      {
        goto LABEL_17;
      }

      v21 = v93;
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1B80308C0(v60, v59, v61, v66);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v93 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_1B803034C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = sub_1B803256C(result, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

void *sub_1B80303DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_1B8030464(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
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

    v8 = sub_1B80330D0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1B8030500(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v51 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v48 = v42 - v14;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v47 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F8, &qword_1B80D2F88);
  result = sub_1B80C966C();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v45 = result;
  v46 = v9 + 16;
  v19 = v9 + 32;
  v42[1] = 0x80000001B80CB3E0;
  v42[2] = 0x80000001B80CB400;
  v20 = result + 64;
  v21 = v47;
  v43 = v9;
  v44 = a4;
  while (v17)
  {
    v22 = v19;
    v23 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v26 = v23 | (v18 << 6);
    v27 = a4[7];
    v28 = *(a4[6] + v26);
    v50 = *(v9 + 72);
    v29 = v48;
    (*(v9 + 16))(v48, v27 + v50 * v26, v21);
    v30 = *(v9 + 32);
    v31 = v29;
    v19 = v22;
    v30(v51, v31, v21);
    v16 = v45;
    v32 = *(v45 + 40);
    sub_1B80C993C();
    sub_1B80C911C();

    result = sub_1B80C997C();
    v33 = -1 << *(v16 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v21 = v47;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v20 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v21 = v47;
LABEL_26:
    *(v20 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    *(*(v16 + 48) + v36) = v28;
    result = (v30)(*(v16 + 56) + v36 * v50, v51, v21);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v9 = v43;
    a4 = v44;
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v25 = a1[v18];
    ++v24;
    if (v25)
    {
      v22 = v19;
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
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

uint64_t sub_1B80308C0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Location();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v55 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  result = sub_1B80C966C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v55;
  v54 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v58 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 176 * v22);
    v26 = v24[1];
    v25 = v24[2];
    v61 = *v24;
    v62 = v26;
    v63 = v25;
    v27 = v24[6];
    v29 = v24[3];
    v28 = v24[4];
    v66 = v24[5];
    v67 = v27;
    v64 = v29;
    v65 = v28;
    v30 = v24[10];
    v32 = v24[7];
    v31 = v24[8];
    v70 = v24[9];
    v71 = v30;
    v68 = v32;
    v69 = v31;
    v33 = v56;
    v59 = *(v57 + 72);
    sub_1B80337A4(v23 + v59 * v22, v56, type metadata accessor for Location);
    sub_1B80344D4(v33, v18, type metadata accessor for Location);
    v34 = *(v14 + 40);
    sub_1B80C993C();
    sub_1B80C90FC();
    sub_1B7FC8DA4(&v61, &v60);
    sub_1B80C911C();

    result = sub_1B80C997C();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a4 = v54;
      v18 = v55;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v17 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a4 = v54;
    v18 = v55;
LABEL_26:
    *(v17 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 176 * v38);
    v45 = v66;
    v44 = v67;
    v46 = v65;
    v43[3] = v64;
    v43[4] = v46;
    v43[5] = v45;
    v43[6] = v44;
    v48 = v62;
    v47 = v63;
    *v43 = v61;
    v43[1] = v48;
    v43[2] = v47;
    v49 = v68;
    v50 = v69;
    v51 = v71;
    v43[9] = v70;
    v43[10] = v51;
    v43[7] = v49;
    v43[8] = v50;
    result = sub_1B80344D4(v18, *(v14 + 56) + v38 * v59, type metadata accessor for Location);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v58;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v58 = (v21 - 1) & v21;
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

uint64_t sub_1B8030C8C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 32);
      do
      {
        v4 = v3[9];
        v11[8] = v3[8];
        v11[9] = v4;
        v11[10] = v3[10];
        v5 = v3[5];
        v11[4] = v3[4];
        v11[5] = v5;
        v6 = v3[7];
        v11[6] = v3[6];
        v11[7] = v6;
        v7 = v3[1];
        v11[0] = *v3;
        v11[1] = v7;
        v8 = v3[3];
        v11[2] = v3[2];
        v11[3] = v8;
        sub_1B7FC8DA4(v11, v10);
        sub_1B8030D84(v11, v9);
        sub_1B7FCAD28(v11);
        v10[8] = v9[8];
        v10[9] = v9[9];
        v10[10] = v9[10];
        v10[4] = v9[4];
        v10[5] = v9[5];
        v10[6] = v9[6];
        v10[7] = v9[7];
        v10[0] = v9[0];
        v10[1] = v9[1];
        v10[2] = v9[2];
        v10[3] = v9[3];
        result = sub_1B7FB86D4(v10, &qword_1EBA65D78, &qword_1B80D2640);
        v3 += 11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_1B8030D84(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B80C993C();
  v6 = *a1;
  v7 = a1[1];
  sub_1B80C90FC();
  sub_1B80C911C();

  v8 = sub_1B80C997C();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v4 + 48) + 176 * v10);
      v14 = v12[1];
      v13 = v12[2];
      v37 = *v12;
      v38 = v14;
      v39 = v13;
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      v42 = v12[5];
      v43 = v17;
      v40 = v15;
      v41 = v16;
      v18 = v12[7];
      v19 = v12[8];
      v20 = v12[10];
      v46 = v12[9];
      v47 = v20;
      v44 = v18;
      v45 = v19;
      v21 = sub_1B80C90FC();
      v23 = v22;
      if (v21 == sub_1B80C90FC() && v23 == v24)
      {
        break;
      }

      v25 = sub_1B80C981C();
      sub_1B7FC8DA4(&v37, v36);

      sub_1B7FCAD28(&v37);
      if (v25)
      {
        goto LABEL_9;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1B7FC8DA4(&v37, v36);

    sub_1B7FCAD28(&v37);
LABEL_9:
    v31 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v34;
    v36[0] = *v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B80874A0();
      v33 = v36[0];
    }

    memmove(a2, (*(v33 + 48) + 176 * v10), 0xB0uLL);
    sub_1B8030FD4(v10);
    *v34 = v36[0];
    nullsub_1(a2);
  }

  else
  {
LABEL_7:
    sub_1B7FF88D4(&v37);
    v26 = v46;
    a2[8] = v45;
    a2[9] = v26;
    a2[10] = v47;
    v27 = v42;
    a2[4] = v41;
    a2[5] = v27;
    v28 = v44;
    a2[6] = v43;
    a2[7] = v28;
    v29 = v38;
    *a2 = v37;
    a2[1] = v29;
    v30 = v40;
    a2[2] = v39;
    a2[3] = v30;
  }
}

unint64_t sub_1B8030FD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B80C94DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = (*(v3 + 48) + 176 * v6);
        v13 = *v11;
        v12 = v11[1];
        v30[2] = v11[2];
        v14 = v11[3];
        v15 = v11[4];
        v16 = v11[6];
        v30[5] = v11[5];
        v30[6] = v16;
        v30[3] = v14;
        v30[4] = v15;
        v17 = v11[7];
        v18 = v11[8];
        v19 = v11[10];
        v30[9] = v11[9];
        v30[10] = v19;
        v30[7] = v17;
        v30[8] = v18;
        v30[0] = v13;
        v30[1] = v12;
        v20 = *(v3 + 40);
        sub_1B80C993C();
        sub_1B80C90FC();
        sub_1B7FC8DA4(v30, v29);
        sub_1B80C911C();

        v21 = sub_1B80C997C();
        sub_1B7FCAD28(v30);
        v22 = v21 & v7;
        if (v2 >= v10)
        {
          if (v22 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v22 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v22)
        {
LABEL_11:
          v23 = *(v3 + 48);
          v24 = (v23 + 176 * v2);
          v25 = (v23 + 176 * v6);
          if (v2 != v6 || v24 >= v25 + 176)
          {
            memmove(v24, v25, 0xB0uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_1B80311F4(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1B80314EC(v6);
  v6[9] = sub_1B80312F8((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1B8031298;
}

void sub_1B8031298(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1B80312F8(uint64_t a1, unsigned __int8 a2, char a3))(uint64_t result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1B7FDA504(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B809230C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B8090F00(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1B7FDA504(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_1B8031414;
}

uint64_t sub_1B8031414(uint64_t result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_1B8014348(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1B80314EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B8031514;
}

uint64_t sub_1B8031520(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    sub_1B80C993C();

    sub_1B80C911C();
    v11 = sub_1B80C997C();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (sub_1B80C981C() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1B80316A8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B802E4F8(v6, v0 + v3, v8, v9, v10);
}

uint64_t sub_1B8031830()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B802D994(v6, v0 + v3, v8, v9, v10);
}

uint64_t sub_1B80319B8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B802D0CC(v6, v0 + v3, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B8031BA4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t objectdestroy_26Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8031CF8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for ClientID() - 8);
  v20 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *(v0 + v4);
  v18 = *(v7 + 9);
  v9 = (v0 + v5);
  v10 = *(v0 + v5 + 16);
  v17 = *(v0 + v5 + 8);
  v11 = *(v0 + v5 + 24);
  v12 = *(v0 + ((*(v6 + 64) + ((v5 + *(v6 + 80) + 32) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v7 + 8);
  v14 = *v9;
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_1B7FC253C;

  return sub_1B8017FE8(v20, v0 + v3, v8, v13, v18, v14, v17, v10);
}

uint64_t sub_1B8031EE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = v2[9];
      v10[8] = v2[8];
      v10[9] = v3;
      v10[10] = v2[10];
      v4 = v2[5];
      v10[4] = v2[4];
      v10[5] = v4;
      v5 = v2[7];
      v10[6] = v2[6];
      v10[7] = v5;
      v6 = v2[1];
      v10[0] = *v2;
      v10[1] = v6;
      v7 = v2[3];
      v10[2] = v2[2];
      v10[3] = v7;
      sub_1B7FC8DA4(v10, v9);
      sub_1B8086FBC(v8, v10);
      v9[8] = v8[8];
      v9[9] = v8[9];
      v9[10] = v8[10];
      v9[4] = v8[4];
      v9[5] = v8[5];
      v9[6] = v8[6];
      v9[7] = v8[7];
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      result = sub_1B7FCAD28(v9);
      v2 += 11;
      --v1;
    }

    while (v1);
  }

  return result;
}

BOOL sub_1B8031FA4(_OWORD *a1, uint64_t a2, uint64_t *a3, int a4)
{
  LODWORD(v69) = a4;
  v70 = a2;
  v6 = type metadata accessor for Location();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B80C8E2C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v63[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63[-v19];
  v21 = a1[5];
  v72[4] = a1[4];
  v72[5] = v21;
  v22 = a1[3];
  v72[2] = a1[2];
  v72[3] = v22;
  v23 = a1[10];
  v72[9] = a1[9];
  v72[10] = v23;
  v24 = a1[8];
  v72[7] = a1[7];
  v72[8] = v24;
  v72[6] = a1[6];
  v25 = a1[1];
  v72[0] = *a1;
  v72[1] = v25;
  v26 = *a3;
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = sub_1B7FDA47C(v72);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

  v67 = v9;
  v68 = v15;
  v29 = v11[2];
  v29(v20, *(v26 + 56) + v11[9] * v27, v10);
  v30 = *(v70 + *(v6 + 52));
  sub_1B80C8DCC();
  v31 = sub_1B80C8D9C();
  v34 = v11[1];
  v32 = v11 + 1;
  v33 = v34;
  v34(v18, v10);
  if (v31)
  {
    v66 = v32;
    v69 = v33;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v35 = sub_1B80C900C();
    __swift_project_value_buffer(v35, qword_1ED8DDF28);
    v36 = v67;
    sub_1B80337A4(v70, v67, type metadata accessor for Location);
    v29(v68, v20, v10);
    sub_1B7FC8DA4(v72, v71);
    v37 = sub_1B80C8FEC();
    v38 = sub_1B80C941C();
    sub_1B7FCAD28(v72);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v71[0] = v70;
      *v39 = 136447747;
      *(v39 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, v71);
      *(v39 + 12) = 2160;
      *(v39 + 14) = 1752392040;
      *(v39 + 22) = 2081;
      v40 = *(v36 + *(v6 + 52));
      sub_1B80C8DCC();
      sub_1B7FCD170(&qword_1EBA66038, MEMORY[0x1E6969530]);
      v65 = v37;
      v41 = sub_1B80C97FC();
      v64 = v38;
      v43 = v42;
      v44 = v18;
      v45 = v69;
      v69(v44, v10);
      sub_1B803380C(v36, type metadata accessor for Location);
      v46 = sub_1B7FB84FC(v41, v43, v71);

      *(v39 + 24) = v46;
      *(v39 + 32) = 2160;
      *(v39 + 34) = 1752392040;
      *(v39 + 42) = 2081;
      *(v39 + 44) = sub_1B7FB84FC(*&v72[0], *(&v72[0] + 1), v71);
      *(v39 + 52) = 2160;
      *(v39 + 54) = 1752392040;
      *(v39 + 62) = 2081;
      v47 = v68;
      v48 = sub_1B80C97FC();
      v50 = v49;
      v45(v47, v10);
      v51 = sub_1B7FB84FC(v48, v50, v71);

      *(v39 + 64) = v51;
      v52 = v65;
      _os_log_impl(&dword_1B7FB5000, v65, v64, "%{public}s\ndrop older location date:%{private,mask.hash}s\nfor handle: %{private,mask.hash}s\nwith date: %{private,mask.hash}s", v39, 0x48u);
      v53 = v70;
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v53, -1, -1);
      MEMORY[0x1B8CB8970](v39, -1, -1);

      v45(v20, v10);
    }

    else
    {

      v62 = v69;
      v69(v68, v10);
      sub_1B803380C(v36, type metadata accessor for Location);
      v62(v20, v10);
    }

    return 0;
  }

  v33(v20, v10);
  if ((v69 & 1) == 0)
  {
    return 1;
  }

  v54 = (v70 + *(v6 + 20));
  v55 = v54[9];
  v71[8] = v54[8];
  v71[9] = v55;
  v56 = v54[11];
  v71[10] = v54[10];
  v71[11] = v56;
  v57 = v54[5];
  v71[4] = v54[4];
  v71[5] = v57;
  v58 = v54[7];
  v71[6] = v54[6];
  v71[7] = v58;
  v59 = v54[1];
  v71[0] = *v54;
  v71[1] = v59;
  v60 = v54[3];
  v71[2] = v54[2];
  v71[3] = v60;
  return sub_1B8032DBC(v71) == 0;
}

uint64_t sub_1B803256C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v56 = a5;
  v41 = a4;
  v37 = a2;
  v38 = a1;
  v6 = type metadata accessor for Location();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v11 = 0;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v11 << 6);
    v20 = *(a3 + 56);
    v21 = (*(a3 + 48) + 176 * v19);
    v23 = v21[1];
    v22 = v21[2];
    v54[0] = *v21;
    v54[1] = v23;
    v54[2] = v22;
    v24 = v21[6];
    v26 = v21[3];
    v25 = v21[4];
    v54[5] = v21[5];
    v54[6] = v24;
    v54[3] = v26;
    v54[4] = v25;
    v27 = v21[10];
    v29 = v21[7];
    v28 = v21[8];
    v54[9] = v21[9];
    v54[10] = v27;
    v54[7] = v29;
    v54[8] = v28;
    v30 = v21[9];
    v51 = v21[8];
    v52 = v30;
    v53 = v21[10];
    v31 = v21[5];
    v47 = v21[4];
    v48 = v31;
    v32 = v21[7];
    v49 = v21[6];
    v50 = v32;
    v33 = v21[1];
    v43 = *v21;
    v44 = v33;
    v34 = v21[3];
    v45 = v21[2];
    v46 = v34;
    sub_1B80337A4(v20 + *(v40 + 72) * v19, v10, type metadata accessor for Location);
    sub_1B7FC8DA4(v54, &v42);
    v35 = sub_1B8031FA4(&v43, v10, v41, v56 & 1);
    sub_1B803380C(v10, type metadata accessor for Location);
    v55[8] = v51;
    v55[9] = v52;
    v55[10] = v53;
    v55[4] = v47;
    v55[5] = v48;
    v55[6] = v49;
    v55[7] = v50;
    v55[0] = v43;
    v55[1] = v44;
    v55[2] = v45;
    v55[3] = v46;
    result = sub_1B7FCAD28(v55);
    if (v35)
    {
      *(v38 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        return sub_1B80308C0(v38, v37, v39, a3);
      }
    }
  }

  v17 = v11;
  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v15)
    {
      return sub_1B80308C0(v38, v37, v39, a3);
    }

    v18 = *(a3 + 64 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1B8032820(_OWORD *a1, unsigned __int8 a2)
{
  v3 = a1[9];
  v21[8] = a1[8];
  v21[9] = v3;
  v21[10] = a1[10];
  v4 = a1[5];
  v21[4] = a1[4];
  v21[5] = v4;
  v5 = a1[7];
  v21[6] = a1[6];
  v21[7] = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v7 = a1[3];
  v21[2] = a1[2];
  v21[3] = v7;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDF28);
  sub_1B7FC8DA4(v21, v20);
  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();
  sub_1B7FCAD28(v21);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136446979;
    *(v11 + 4) = sub_1B7FB84FC(0xD00000000000004ALL, 0x80000001B80CCA80, v20);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    *(v11 + 24) = sub_1B7FB84FC(*&v21[0], *(&v21[0] + 1), v20);
    *(v11 + 32) = 2082;
    v13 = 0xE800000000000000;
    v14 = 0x776F6C6C6168732ELL;
    v15 = 0xE500000000000000;
    v16 = 0x6576696C2ELL;
    if (a2 != 2)
    {
      v16 = 0xD000000000000014;
      v15 = 0x80000001B80CBF40;
    }

    if (!a2)
    {
      v14 = 0xD000000000000015;
      v13 = 0x80000001B80CBFD0;
    }

    if (a2 <= 1u)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (a2 <= 1u)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = sub_1B7FB84FC(v17, v18, v20);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s for handle: %{private,mask.hash}s\nwith priority: %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }
}

uint64_t sub_1B8032A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8032AF8()
{
  v2 = *(type metadata accessor for ClientID() - 8);
  v3 = (*(v2 + 80) + 77) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B7FC253C;

  return sub_1B802ABF0(v4, v0 + 24, v0 + v3);
}

unint64_t sub_1B8032C04()
{
  result = qword_1ED8DC418;
  if (!qword_1ED8DC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC418);
  }

  return result;
}

uint64_t sub_1B8032C6C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *v7;
  v9 = *(v7 + 9);
  v10 = *(v0 + v5);
  v11 = *(v7 + 8);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1B7FC253C;

  return sub_1B80150A4(v6, v0 + v3, v8, v11, v9);
}

uint64_t sub_1B8032DBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1B8032DE0(_OWORD *a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = a1[9];
  v30[8] = a1[8];
  v30[9] = v5;
  v30[10] = a1[10];
  v6 = a1[5];
  v30[4] = a1[4];
  v30[5] = v6;
  v7 = a1[7];
  v30[6] = a1[6];
  v30[7] = v7;
  v8 = a1[1];
  v30[0] = *a1;
  v30[1] = v8;
  v9 = a1[3];
  v30[2] = a1[2];
  v30[3] = v9;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDF28);
  swift_retain_n();
  sub_1B7FC8DA4(v30, v29);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  sub_1B7FCAD28(v30);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 141558787;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_1B7FB84FC(*&v30[0], *(&v30[0] + 1), &v28);
    *(v13 + 22) = 2082;
    v15 = 0xE800000000000000;
    v16 = 0x776F6C6C6168732ELL;
    v17 = 0xE500000000000000;
    v18 = 0x6576696C2ELL;
    if (a2 != 2)
    {
      v18 = 0xD000000000000014;
      v17 = 0x80000001B80CBF40;
    }

    if (!a2)
    {
      v16 = 0xD000000000000015;
      v15 = 0x80000001B80CBFD0;
    }

    if (a2 <= 1u)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    if (a2 <= 1u)
    {
      v20 = v15;
    }

    else
    {
      v20 = v17;
    }

    v21 = sub_1B7FB84FC(v19, v20, &v28);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2048;
    v22 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
    swift_beginAccess();
    v23 = *(a3 + v22);
    if (*(v23 + 16) && (v24 = sub_1B7FDA504(a2), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CD0];
    }

    v27 = *(v26 + 16);

    *(v13 + 34) = v27;

    _os_log_impl(&dword_1B7FB5000, v11, v12, "After addHandles to LocationStream handle: %{private,mask.hash}s with priority %{public}s, current refresh count: %ld.", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v14, -1, -1);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B80330D0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v61 = a2;
  v62 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v8 = (&v61 - v7);
  v9 = type metadata accessor for Location();
  v67 = *(v9 - 8);
  v10 = *(v67 + 64);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v70 = v8;
  v71 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v73 = a4 + 56;
  v66 = v16;
  v64 = 0;
  v65 = v21;
  v69 = v13;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v72 = (v20 - 1) & v20;
LABEL_15:
    v25 = v22 | (v14 << 6);
    v26 = v71[7];
    v27 = (v71[6] + 176 * v25);
    v29 = v27[1];
    v28 = v27[2];
    v76 = *v27;
    v77 = v29;
    v78 = v28;
    v30 = v27[6];
    v32 = v27[3];
    v31 = v27[4];
    v81 = v27[5];
    v82 = v30;
    v79 = v32;
    v80 = v31;
    v33 = v27[10];
    v35 = v27[7];
    v34 = v27[8];
    v85 = v27[9];
    v86 = v33;
    v83 = v35;
    v84 = v34;
    sub_1B80337A4(v26 + *(v67 + 72) * v25, v13, type metadata accessor for Location);
    v36 = v85;
    v8[8] = v84;
    v8[9] = v36;
    v8[10] = v86;
    v37 = v81;
    v8[4] = v80;
    v8[5] = v37;
    v38 = v83;
    v8[6] = v82;
    v8[7] = v38;
    v39 = v77;
    *v8 = v76;
    v8[1] = v39;
    v40 = v79;
    v8[2] = v78;
    v8[3] = v40;
    sub_1B80337A4(v13, v8 + *(v68 + 48), type metadata accessor for Location);
    if (!*(a4 + 16))
    {
      sub_1B7FC8DA4(&v76, v75);
      sub_1B7FC8DA4(&v76, v75);
LABEL_6:
      v8 = v70;
      sub_1B7FB86D4(v70, &qword_1EBA660D8, &qword_1B80D2E98);
      v13 = v69;
      sub_1B803380C(v69, type metadata accessor for Location);
      result = sub_1B7FCAD28(&v76);
      goto LABEL_7;
    }

    v63 = v25;
    v41 = v76;
    v42 = *(a4 + 40);
    sub_1B80C993C();
    v87 = v41;
    sub_1B80C90FC();
    sub_1B7FC8DA4(&v76, v75);
    sub_1B7FC8DA4(&v76, v75);
    sub_1B80C911C();

    v43 = sub_1B80C997C();
    v44 = -1 << *(a4 + 32);
    v45 = v43 & ~v44;
    if (((*(v73 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
      goto LABEL_6;
    }

    v46 = ~v44;
    while (1)
    {
      v47 = (*(a4 + 48) + 176 * v45);
      v49 = v47[1];
      v48 = v47[2];
      v75[0] = *v47;
      v75[1] = v49;
      v75[2] = v48;
      v50 = v47[6];
      v52 = v47[3];
      v51 = v47[4];
      v75[5] = v47[5];
      v75[6] = v50;
      v75[3] = v52;
      v75[4] = v51;
      v53 = v47[10];
      v55 = v47[7];
      v54 = v47[8];
      v75[9] = v47[9];
      v75[10] = v53;
      v75[7] = v55;
      v75[8] = v54;
      v56 = sub_1B80C90FC();
      v58 = v57;
      if (v56 == sub_1B80C90FC() && v58 == v59)
      {
        break;
      }

      v60 = sub_1B80C981C();
      sub_1B7FC8DA4(v75, v74);

      sub_1B7FCAD28(v75);
      if (v60)
      {
        goto LABEL_24;
      }

      v45 = (v45 + 1) & v46;
      if (((*(v73 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_1B7FC8DA4(v75, v74);

    sub_1B7FCAD28(v75);
LABEL_24:
    v8 = v70;
    sub_1B7FB86D4(v70, &qword_1EBA660D8, &qword_1B80D2E98);
    v13 = v69;
    sub_1B803380C(v69, type metadata accessor for Location);
    result = sub_1B7FCAD28(&v76);
    *(v62 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_28;
    }

    ++v64;
LABEL_7:
    v21 = v65;
    v16 = v66;
    v20 = v72;
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_1B80308C0(v62, v61, v64, v71);
    }

    v24 = v16[v14];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v72 = (v24 - 1) & v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B80335D8(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_1B8030464(v13, v7, a1, a2);
      MEMORY[0x1B8CB8970](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1B80330D0((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1B8033798(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B80337A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B803380C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8033878()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B7FC253C;

  return sub_1B801BF2C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1B80339F0()
{
  v2 = *(type metadata accessor for ClientID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B7FC253C;

  return sub_1B802C190(v4, v0 + v3);
}

uint64_t sub_1B8033B08()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v8 + 8);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1B7FC253C;

  return sub_1B801ACBC(v7, v0 + v3, v9, v11, v0 + v6);
}

uint64_t sub_1B8033CA8()
{
  v2 = *(type metadata accessor for ClientID() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B802BE8C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1B8033DD8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for ClientID() - 8);
  v20 = *(v0 + 16);
  v8 = v0 + v5;
  v9 = *(v0 + v5);
  v17 = *(v0 + v6 + 16);
  v18 = *(v0 + v6 + 8);
  v10 = *(v0 + v6 + 24);
  v11 = *(v0 + v6 + 32);
  v12 = *(v0 + ((*(v7 + 64) + ((v6 + *(v7 + 80) + 33) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v0 + v6);
  v14 = *(v8 + 8);
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_1B7FBA3EC;

  return sub_1B80196DC(v20, v0 + v3, v9, v14, v13, v18, v17, v10);
}

uint64_t objectdestroy_81Tm()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 77) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 8);

  v8 = sub_1B80C8E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v0[v3], v8);
  v11 = *&v0[v3 + 8 + v1[8]];

  v12 = v1[9];
  if (!(*(v9 + 48))(&v0[v3 + v12], 1, v8))
  {
    v10(&v0[v3 + v12], v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B8034128()
{
  v2 = *(type metadata accessor for ClientID() - 8);
  v3 = (*(v2 + 80) + 77) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B7FC253C;

  return sub_1B802B534(v4, v0 + 24, v0 + v3);
}

uint64_t sub_1B803428C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  v11 = *(v0 + v5);
  v12 = *v7;
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1B7FC253C;

  return sub_1B801DEE4(v6, v0 + v3, v12, v8, v9, v10);
}

uint64_t sub_1B80343E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B802C678(v2, v0 + 24);
}

uint64_t sub_1B80344D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B803453C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80345F0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for ClientID() - 8);
  v7 = (v5 + *(v6 + 80) + 11) & ~*(v6 + 80);
  v21 = *(v0 + 16);
  v8 = (v0 + v4);
  v19 = *(v0 + v4 + 8);
  v18 = *(v0 + v4 + 16);
  v17 = *(v0 + v4 + 24);
  v9 = (v0 + v5);
  v10 = *(v0 + v5);
  v11 = v9[9];
  LOBYTE(v4) = v9[10];
  v12 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v8;
  v14 = v9[8];
  v15 = swift_task_alloc();
  *(v1 + 16) = v15;
  *v15 = v1;
  v15[1] = sub_1B7FC253C;

  return sub_1B801D098(v21, v0 + v3, v13, v19, v18, v17, v10, v14);
}

uint64_t sub_1B80347E4(uint64_t a1)
{
  v4 = *(type metadata accessor for Location() - 8);
  v5 = (*(v4 + 80) + 216) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B8025790(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_1B8034910(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8034958, v1, 0);
}

uint64_t sub_1B8034958()
{
  v13 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v12);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v7[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v7[2].i64[0] = v6;
  v8 = *(MEMORY[0x1E699C830] + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v9 = v0;
  v9[1] = sub_1B7FF8D20;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD000000000000032, 0x80000001B80CD130, sub_1B804D064, v7, v10);
}

uint64_t sub_1B8034B88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8034BD4, v2, 0);
}

uint64_t sub_1B8034BD4()
{
  v15 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v14);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = *(v0 + 24);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 40) = v6;
  v10 = *(MEMORY[0x1E699C830] + 4);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v11 = v0;
  v11[1] = sub_1B8034E04;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD00000000000001ELL, 0x80000001B80CD300, sub_1B804DBC8, v8, v12);
}

uint64_t sub_1B8034E04()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1B801DC0C;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = sub_1B7FFF178;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8034F2C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8034F80, v3, 0);
}

uint64_t sub_1B8034F80()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x1E699C830] + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1B8035088;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v7, 0xD00000000000002ELL, 0x80000001B80CD1A0, sub_1B804E0A0, v4, v8);
}

uint64_t sub_1B8035088()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B7FF8E48;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B7FFAF5C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80351B0(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  *(v3 + 96) = *v2;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 61) = *(a1 + 45);
  return MEMORY[0x1EEE6DFA0](sub_1B8035210, v2, 0);
}

uint64_t sub_1B8035210()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = swift_allocObject();
  v0[13] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v4;
  v5[3] = v0 + 2;
  v5[4] = v3;
  v5[5] = v2;
  v6 = *(MEMORY[0x1E699C830] + 4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v7 = v0;
  v7[1] = sub_1B803534C;

  return MEMORY[0x1EEE04418](v0 + 9, 0xD000000000000024, 0x80000001B80CD320, sub_1B804DE0C, v5, v8);
}

uint64_t sub_1B803534C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = sub_1B8035498;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[11];

    v5 = sub_1B803547C;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8035498()
{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1B8035504(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803554C, v1, 0);
}

uint64_t sub_1B803554C()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_1B8035644;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000025, 0x80000001B80CD170, sub_1B804E03C, v2, v5);
}

uint64_t sub_1B8035644()
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

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B803576C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1B80357B8, v3, 0);
}

uint64_t sub_1B80357B8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  swift_weakInit();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B80358EC;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v7, 0xD00000000000001DLL, 0x80000001B80CD110, sub_1B804E020, v4, &type metadata for DecodedLocationNotification);
}

uint64_t sub_1B80358EC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B8035A34, v4, 0);
  }

  else
  {
    v5 = v3[7];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1B8035A34()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1B8035AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_1B80C92CC();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;
    v16[6] = a3;
    v16[7] = a4;
    v16[8] = a5;

    sub_1B80A1D3C(0, 0, v12, &unk_1B80D32A0, v16);
  }

  return result;
}

uint64_t sub_1B8035C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8035C2C, 0, 0);
}

uint64_t sub_1B8035C2C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = _s18LocationConnectionCMa();
  v7 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8035D64;
  v8 = v0[10];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B804CFAC, v3, v6, v7);
}

uint64_t sub_1B8035D64()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B8035FB8;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1B8035E80;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8035E80()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v6 = sub_1B80C90AC();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  v0[6] = sub_1B804CFB4;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_232;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  [v5 decryptNotificationWithPayload:v6 completion:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8035FB8()
{
  v17 = v0;
  v1 = v0[15];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD110, &v16);
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

  v12 = v0[17];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B80361C0(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD110, &v11);
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

void sub_1B8036380(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v41[0] = v10;
      *v9 = 136446210;
      *&v29 = v3;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, v41);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "data(for:) failed with %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    *&v41[0] = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    *&v41[0] = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  v18 = sub_1B80C8CBC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B804CFBC();
  v21 = a1;
  v22 = a2;
  sub_1B80C8C9C();

  v37 = v41[8];
  v38 = v41[9];
  v39 = v41[10];
  v40 = v41[11];
  v33 = v41[4];
  v34 = v41[5];
  v35 = v41[6];
  v36 = v41[7];
  v29 = v41[0];
  v30 = v41[1];
  v31 = v41[2];
  v32 = v41[3];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v23 = sub_1B80C900C();
  __swift_project_value_buffer(v23, qword_1ED8DDF28);
  v24 = sub_1B80C8FEC();
  v25 = sub_1B80C941C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v28[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD110, v28);
    _os_log_impl(&dword_1B7FB5000, v24, v25, "%{public}s session data serialized.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B8CB8970](v27, -1, -1);
    MEMORY[0x1B8CB8970](v26, -1, -1);
  }

  v28[8] = v37;
  v28[9] = v38;
  v28[10] = v39;
  v28[11] = v40;
  v28[4] = v33;
  v28[5] = v34;
  v28[6] = v35;
  v28[7] = v36;
  v28[0] = v29;
  v28[1] = v30;
  v28[2] = v31;
  v28[3] = v32;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v21, v22);
  sub_1B804D010(&v29);
}

uint64_t sub_1B8036918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ClientID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v36 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v39 = result;
    v40 = v10;
    v41 = a4;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v18 = sub_1B80C900C();
    __swift_project_value_buffer(v18, qword_1ED8DDF28);
    sub_1B7FCE69C(a3, v46);
    v19 = sub_1B80C8FEC();
    v20 = sub_1B80C941C();
    sub_1B7FD0404(a3);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = a1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136315138;
      v24 = *(a3 + 16);
      v42 = *a3;
      v43 = v24;
      *v44 = *(a3 + 32);
      *&v44[13] = *(a3 + 45);
      sub_1B7FCE69C(a3, v46);
      v25 = LocationRequest.description.getter();
      v37 = v16;
      v26 = a5;
      v28 = v27;
      v46[0] = v42;
      v46[1] = v43;
      v47[0] = *v44;
      *(v47 + 13) = *&v44[13];
      sub_1B7FD0404(v46);
      v29 = sub_1B7FB84FC(v25, v28, &v45);
      a5 = v26;
      v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = v37;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1B7FB5000, v19, v20, "startRefreshingLocation: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      v30 = v22;
      a1 = v38;
      MEMORY[0x1B8CB8970](v30, -1, -1);
    }

    v31 = v41;
    v32 = sub_1B80C92CC();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    sub_1B804D0A0(v31, v12, type metadata accessor for ClientID);
    v33 = (*(v40 + 80) + 101) & ~*(v40 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v39;
    *(v34 + 40) = a1;
    v35 = *(a3 + 16);
    *(v34 + 48) = *a3;
    *(v34 + 64) = v35;
    *(v34 + 80) = *(a3 + 32);
    *(v34 + 93) = *(a3 + 45);
    sub_1B804D108(v12, v34 + v33);
    *(v34 + ((v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
    sub_1B7FCE69C(a3, v46);

    sub_1B80A1D3C(0, 0, v16, &unk_1B80D3400, v34);
  }

  return result;
}

uint64_t sub_1B8036D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8036D30, 0, 0);
}

uint64_t sub_1B8036D30()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = _s18LocationConnectionCMa();
  v7 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8036E68;
  v8 = v0[17];

  return MEMORY[0x1EEE04428](v0 + 15, sub_1B804DF54, v3, v6, v7);
}

uint64_t sub_1B8036E68()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1B80373A8;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1B8036F84;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8036F84()
{
  v42 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v8 = v2[1];
  v7 = v2[2];
  v9 = *v2;
  *(v0 + 61) = *(v2 + 45);
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  *(v0 + 16) = v9;
  sub_1B804DF5C();
  v10 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v18 = sub_1B80C900C();
    __swift_project_value_buffer(v18, qword_1ED8DDF28);
    v19 = v1;
    v20 = sub_1B80C8FEC();
    v21 = sub_1B80C93FC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v22 = 136446466;
      *(v22 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, &v41);
      *(v22 + 12) = 2114;
      v25 = sub_1B80C8CFC();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B7FB5000, v20, v21, "Failed to create proxy in %{public}s: %{public}@", v22, 0x16u);
      sub_1B7FB86D4(v23, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B8CB8970](v24, -1, -1);
      MEMORY[0x1B8CB8970](v22, -1, -1);
    }

    v26 = *(v0 + 144);
    *(v0 + 128) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v12 = v10;
    v13 = v11;
    v14 = *(v0 + 160);

    v15 = *(v4 + 48);
    v16 = *(v4 + 52);
    swift_allocObject();
    sub_1B80C8CDC();
    type metadata accessor for ClientID();
    sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID);
    v17 = sub_1B80C8CCC();
    v29 = *(v0 + 168);
    v30 = *(v0 + 144);
    v31 = v17;
    v33 = v32;

    v39 = v13;
    v40 = v12;
    v34 = sub_1B80C8D1C();
    v35 = sub_1B80C8D1C();
    v36 = swift_allocObject();
    *(v36 + 16) = v30;
    *(v36 + 24) = v29;
    *(v0 + 104) = sub_1B804DFB0;
    *(v0 + 112) = v36;
    *(v0 + 72) = MEMORY[0x1E69E9820];
    *(v0 + 80) = 1107296256;
    *(v0 + 88) = sub_1B7FC5CCC;
    *(v0 + 96) = &block_descriptor_440;
    v37 = _Block_copy((v0 + 72));
    v38 = *(v0 + 112);

    [v3 startRefreshingLocationWithRequest:v34 clientID:v35 completion:v37];
    _Block_release(v37);

    sub_1B7FC3CCC(v31, v33);
    sub_1B7FC3CCC(v40, v39);
    swift_unknownObjectRelease();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1B80373A8()
{
  v15 = v0;
  v1 = v0[22];

  v2 = v0[24];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
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
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, &v14);
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

  v11 = v0[18];
  v0[16] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B80375A8(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, &v11);
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

void sub_1B8037768(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v6 = sub_1B80C900C();
  __swift_project_value_buffer(v6, qword_1ED8DDF28);
  sub_1B804C5D4(a1, a2);
  v7 = sub_1B80C8FEC();
  v8 = sub_1B80C93EC();
  sub_1B7FC72F8(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38[1] = a2;
    v39 = v10;
    *v9 = 136315138;
    v38[0] = a1;
    v11 = a2;
    sub_1B804C5D4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66168, &qword_1B80D3408);
    v12 = sub_1B80C90EC();
    v14 = sub_1B7FB84FC(v12, v13, &v39);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1B7FB5000, v7, v8, "startRefreshingLocation response: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);

    if (a3)
    {
LABEL_5:
      v15 = a3;
      v16 = sub_1B80C8FEC();
      v17 = sub_1B80C93FC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v38[0] = v19;
        *v18 = 136446210;
        v39 = a3;
        v20 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
        v21 = sub_1B80C90EC();
        v23 = sub_1B7FB84FC(v21, v22, v38);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1B7FB5000, v16, v17, "startRefreshingLocation failed with %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B8CB8970](v19, -1, -1);
        MEMORY[0x1B8CB8970](v18, -1, -1);
      }

      v38[0] = a3;
      sub_1B80C8ACC();

      return;
    }
  }

  else
  {
    v11 = a2;

    if (a3)
    {
      goto LABEL_5;
    }
  }

  if (v11 >> 60 == 15)
  {
    sub_1B8010040();
    v24 = swift_allocError();
    *v25 = 1;
    v38[0] = v24;
    sub_1B80C8ACC();
  }

  else
  {
    v26 = v11;
    v27 = sub_1B80C8CBC();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1B7FC62D8(a1, v11);
    sub_1B80C8CAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
    sub_1B804D2AC();
    sub_1B80C8C9C();

    v30 = v38[0];

    v31 = sub_1B80C8FEC();
    v32 = sub_1B80C941C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v33 = 136446723;
      *(v33 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, v38);
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      type metadata accessor for Location();
      sub_1B8032C04();
      v35 = sub_1B80C902C();
      v37 = sub_1B7FB84FC(v35, v36, v38);

      *(v33 + 24) = v37;
      _os_log_impl(&dword_1B7FB5000, v31, v32, "%{public}s with locations:%{private,mask.hash}s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v34, -1, -1);
      MEMORY[0x1B8CB8970](v33, -1, -1);
    }

    v38[0] = v30;
    sub_1B80C8ADC();
    sub_1B7FC72F8(a1, v26);
  }
}

uint64_t sub_1B8037DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v25 = a6;
  v11 = type metadata accessor for ClientID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = sub_1B80C92CC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1B804D0A0(a4, v14, type metadata accessor for ClientID);
  v20 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v21 = v20 + v13;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a2;
  v22[5] = a1;
  v22[6] = a3;
  sub_1B804D108(v14, v22 + v20);
  *(v22 + v21) = a5;
  *(v22 + (v21 & 0xFFFFFFFFFFFFFFF8) + 8) = v25;

  sub_1B80A1D3C(0, 0, v18, &unk_1B80D32F0, v22);
}

uint64_t sub_1B8037FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = v10;
  *(v8 + 152) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8037FE4, 0, 0);
}

uint64_t sub_1B8037FE4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = _s18LocationConnectionCMa();
  v7 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B803811C;
  v8 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B804D7B4, v3, v6, v7);
}

uint64_t sub_1B803811C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1B80386B0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1B8038238;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8038238()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDF28);
    v16 = v1;
    v17 = sub_1B80C8FEC();
    v18 = sub_1B80C93FC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v40);
      *(v19 + 12) = 2114;
      v22 = sub_1B80C8CFC();
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1B7FB5000, v17, v18, "Failed to create proxy in %{public}s: %{public}@", v19, 0x16u);
      sub_1B7FB86D4(v20, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CB8970](v21, -1, -1);
      MEMORY[0x1B8CB8970](v19, -1, -1);
    }

    v23 = v0[12];
    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v9 = v7;
    v10 = v8;
    v11 = v0[14];

    v12 = *(v4 + 48);
    v13 = *(v4 + 52);
    swift_allocObject();
    sub_1B80C8CDC();
    type metadata accessor for ClientID();
    sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID);
    v14 = sub_1B80C8CCC();
    v26 = v0[15];
    v38 = v14;
    v39 = *(v0 + 152);
    v27 = v0[12];
    v29 = v28;

    v30 = v9;
    v31 = v10;
    v37 = sub_1B80C8D1C();
    v32 = v29;
    v33 = sub_1B80C8D1C();
    v34 = swift_allocObject();
    *(v34 + 16) = v27;
    *(v34 + 24) = v26;
    v0[6] = sub_1B804D7BC;
    v0[7] = v34;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FCE114;
    v0[5] = &block_descriptor_286;
    v35 = _Block_copy(v0 + 2);
    v36 = v0[7];

    [v3 stopRefreshingLocationWithHandles:v37 clientID:v33 priority:v39 completion:v35];
    sub_1B7FC3CCC(v30, v31);
    sub_1B7FC3CCC(v38, v32);

    swift_unknownObjectRelease();
    _Block_release(v35);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B80386B0()
{
  v15 = v0;
  v1 = v0[16];

  v2 = v0[18];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
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
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v14);
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

uint64_t sub_1B80388B0(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v11);
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

void sub_1B8038A70(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "stopRefreshingLocation failed with %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDF28);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B8038D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8038D4C, 0, 0);
}

uint64_t sub_1B8038D4C()
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
  v6 = _s18LocationConnectionCMa();
  v7 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8038E84;
  v8 = v0[10];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B804D64C, v3, v6, v7);
}

uint64_t sub_1B8038E84()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1B803931C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1B8038FA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8038FA0()
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
  type metadata accessor for ClientID();
  sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF28);
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
      *(v13 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v28);
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
    v0[6] = sub_1B804D654;
    v0[7] = v23;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FCE114;
    v0[5] = &block_descriptor_267;
    v24 = _Block_copy(v0 + 2);
    v25 = v0[7];

    [v3 stopRefreshingAllLocationsWithClientID:v22 completion:v24];
    _Block_release(v24);

    sub_1B7FC3CCC(v20, v21);
    swift_unknownObjectRelease();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1B803931C()
{
  v15 = v0;
  v1 = v0[14];

  v2 = v0[16];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
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
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v14);
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

uint64_t sub_1B803951C(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v11);
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

void sub_1B80396DC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "stopRefreshingAllLocations failed with %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDF28);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B8039994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ClientID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_1B80C92CC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1B804D0A0(a3, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;
  v20[5] = a1;
  sub_1B804D108(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v17, a6, v20);
}

uint64_t sub_1B8039B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8039B9C, 0, 0);
}

uint64_t sub_1B8039B9C()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = _s18LocationConnectionCMa();
  v5 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B8039CA8;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B8039CA8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B803A140;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B8039DC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8039DC4()
{
  v29 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for ClientID();
  sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF28);
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
      *(v13 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v28);
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
    v0[6] = sub_1B804D2A4;
    v0[7] = v23;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_249;
    v24 = _Block_copy(v0 + 2);
    v25 = v0[7];

    [v3 subscribeToBackgroundProactiveLocationsWithClientID:v22 completion:v24];
    _Block_release(v24);

    sub_1B7FC3CCC(v20, v21);
    swift_unknownObjectRelease();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1B803A140()
{
  v15 = v0;
  v1 = v0[11];

  v2 = v0[15];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
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
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v14);
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

void sub_1B803A340(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v32);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v32);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v32 = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    v32 = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  v18 = sub_1B80C8CBC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  v21 = a1;
  v22 = a2;
  sub_1B80C8C9C();

  v23 = v32;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v24 = sub_1B80C900C();
  __swift_project_value_buffer(v24, qword_1ED8DDF28);

  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136446723;
    *(v27 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v32);
    *(v27 + 12) = 2160;
    *(v27 + 14) = 1752392040;
    *(v27 + 22) = 2081;
    type metadata accessor for Location();
    sub_1B8032C04();
    v29 = sub_1B80C902C();
    v31 = sub_1B7FB84FC(v29, v30, &v32);

    *(v27 + 24) = v31;
    _os_log_impl(&dword_1B7FB5000, v25, v26, "%{public}s decodedLocations: %{private,mask.hash}s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v28, -1, -1);
    MEMORY[0x1B8CB8970](v27, -1, -1);
  }

  v32 = v23;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v21, v22);
}

uint64_t sub_1B803A944(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803A98C, v1, 0);
}

uint64_t sub_1B803A98C()
{
  v13 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v12);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v7[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v7[2].i64[0] = v6;
  v8 = *(MEMORY[0x1E699C830] + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v9 = v0;
  v9[1] = sub_1B800BD90;

  return MEMORY[0x1EEE04418](v0 + 16, 0x6E6F697461636F6CLL, 0xEF293A726F662873, sub_1B804DD24, v7, v10);
}

uint64_t sub_1B803ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1B80A1D3C(0, 0, v11, &unk_1B80D33F0, v13);
}

uint64_t sub_1B803ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B803AD0C, 0, 0);
}

uint64_t sub_1B803AD0C()
{
  v1 = v0[12];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = _s18LocationConnectionCMa();
  v5 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B803AE18;
  v7 = v0[11];
  v6 = v0[12];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B803AE18()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1B803B2D8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1B803AF34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B803AF34()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF28);
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
      *(v13 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v28);
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
    v0[6] = sub_1B804DE04;
    v0[7] = v23;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_423;
    v24 = _Block_copy(v0 + 2);
    v25 = v0[7];

    [v3 locationsFor:v22 completion:v24];
    _Block_release(v24);

    sub_1B7FC3CCC(v20, v21);
    swift_unknownObjectRelease();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1B803B2D8()
{
  v15 = v0;
  v1 = v0[12];

  v2 = v0[16];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
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
    *(v7 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v14);
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

void sub_1B803B4E0(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v32);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v32);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v32 = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    v32 = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  v18 = sub_1B80C8CBC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  v21 = a1;
  v22 = a2;
  sub_1B80C8C9C();

  v23 = v32;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v24 = sub_1B80C900C();
  __swift_project_value_buffer(v24, qword_1ED8DDF28);

  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136446723;
    *(v27 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v32);
    *(v27 + 12) = 2160;
    *(v27 + 14) = 1752392040;
    *(v27 + 22) = 2081;
    type metadata accessor for Location();
    sub_1B8032C04();
    v29 = sub_1B80C902C();
    v31 = sub_1B7FB84FC(v29, v30, &v32);

    *(v27 + 24) = v31;
    _os_log_impl(&dword_1B7FB5000, v25, v26, "%{public}s decodedLocations: %{private,mask.hash}s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v28, -1, -1);
    MEMORY[0x1B8CB8970](v27, -1, -1);
  }

  v32 = v23;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v21, v22);
}

uint64_t sub_1B803BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ClientID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_1B80C92CC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B804D0A0(a4, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a1;
  v19[6] = a3;
  sub_1B804D108(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

  sub_1B80A1D3C(0, 0, v16, &unk_1B80D33E0, v19);
}

uint64_t sub_1B803BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B803BD24, 0, 0);
}

uint64_t sub_1B803BD24()
{
  v1 = v0[12];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = _s18LocationConnectionCMa();
  v5 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B803BE30;
  v7 = v0[11];
  v6 = v0[12];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B7FE58F0, v6, v4, v5);
}

uint64_t sub_1B803BE30()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B803C3A8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1B803BF4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B803BF4C()
{
  v39 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDF28);
    v16 = v1;
    v17 = sub_1B80C8FEC();
    v18 = sub_1B80C93FC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v38);
      *(v19 + 12) = 2114;
      v22 = sub_1B80C8CFC();
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1B7FB5000, v17, v18, "Failed to create proxy in %{public}s: %{public}@", v19, 0x16u);
      sub_1B7FB86D4(v20, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CB8970](v21, -1, -1);
      MEMORY[0x1B8CB8970](v19, -1, -1);
    }

    v23 = v0[12];
    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v9 = v7;
    v10 = v8;
    v11 = v0[14];

    v12 = *(v4 + 48);
    v13 = *(v4 + 52);
    swift_allocObject();
    sub_1B80C8CDC();
    type metadata accessor for ClientID();
    sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID);
    v14 = sub_1B80C8CCC();
    v26 = v0[15];
    v27 = v0[12];
    v28 = v14;
    v30 = v29;

    v36 = v10;
    v37 = v9;
    v31 = sub_1B80C8D1C();
    v32 = sub_1B80C8D1C();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v26;
    v0[6] = sub_1B804DD1C;
    v0[7] = v33;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_410;
    v34 = _Block_copy(v0 + 2);
    v35 = v0[7];

    [v3 latestLocationsFor:v31 clientID:v32 completion:v34];
    _Block_release(v34);

    sub_1B7FC3CCC(v28, v30);
    sub_1B7FC3CCC(v37, v36);
    swift_unknownObjectRelease();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B803C3A8()
{
  v15 = v0;
  v1 = v0[12];

  v2 = v0[17];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
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
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v14);
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

void sub_1B803C5A8(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v32);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v32);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v32 = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    v32 = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  v18 = sub_1B80C8CBC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  v21 = a1;
  v22 = a2;
  sub_1B80C8C9C();

  v23 = v32;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v24 = sub_1B80C900C();
  __swift_project_value_buffer(v24, qword_1ED8DDF28);

  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136446723;
    *(v27 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v32);
    *(v27 + 12) = 2160;
    *(v27 + 14) = 1752392040;
    *(v27 + 22) = 2081;
    type metadata accessor for Location();
    sub_1B8032C04();
    v29 = sub_1B80C902C();
    v31 = sub_1B7FB84FC(v29, v30, &v32);

    *(v27 + 24) = v31;
    _os_log_impl(&dword_1B7FB5000, v25, v26, "%{public}s decodedLocations: %{private,mask.hash}s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v28, -1, -1);
    MEMORY[0x1B8CB8970](v27, -1, -1);
  }

  v32 = v23;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v21, v22);
}

uint64_t sub_1B803CBAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B803CC50;

  return sub_1B80351B0(a1, a2);
}

uint64_t sub_1B803CC50(uint64_t a1)
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

uint64_t sub_1B803CD50(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B803CDA4, v3, 0);
}

uint64_t sub_1B803CDA4()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x1E699C830] + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1B802CFA4;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v7, 0xD00000000000002ELL, 0x80000001B80CD1A0, sub_1B804D65C, v4, v8);
}

uint64_t sub_1B803CEAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803CEF4, v1, 0);
}

uint64_t sub_1B803CEF4()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_1B8035644;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000025, 0x80000001B80CD170, sub_1B804D368, v2, v5);
}

uint64_t sub_1B803CFEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B804E0A8;

  return sub_1B803A944(a1);
}

uint64_t sub_1B803D080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B804E0A8;

  return sub_1B8034910(a1);
}

uint64_t sub_1B803D114(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B804E0A8;

  return sub_1B8034B88(a1, a2);
}

uint64_t sub_1B803D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1B803D204, v3, 0);
}

uint64_t sub_1B803D204()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  swift_weakInit();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B803D338;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v7, 0xD00000000000001DLL, 0x80000001B80CD110, sub_1B804CEC4, v4, &type metadata for DecodedLocationNotification);
}

uint64_t sub_1B803D338()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B804E0A4, v4, 0);
  }

  else
  {
    v5 = v3[7];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1B803D480()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803D4C8, v0, 0);
}

uint64_t sub_1B803D4C8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6972616853746567, 0xEF292879654B676ELL, sub_1B804CD3C, v4, v7);
}

uint64_t sub_1B803D600()
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

    v5 = sub_1B804E034;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B803D728()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803D770, v0, 0);
}

uint64_t sub_1B803D770()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6972616853746567, 0xEF292879654B676ELL, sub_1B804E0D4, v4, v7);
}

uint64_t sub_1B803D8A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803D8F4, v2, 0);
}

uint64_t sub_1B803D8F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000011, 0x80000001B80CD0F0, sub_1B804CA84, v4, v7);
}

uint64_t sub_1B803DA3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803DA88, v2, 0);
}

uint64_t sub_1B803DA88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000011, 0x80000001B80CD0F0, sub_1B804E028, v4, v7);
}

uint64_t sub_1B803DBD0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803DC18, v0, 0);
}

uint64_t sub_1B803DC18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000010, 0x80000001B80CD0D0, sub_1B804C8FC, v4, v7);
}

uint64_t sub_1B803DD4C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803DD94, v0, 0);
}

uint64_t sub_1B803DD94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B803DEC8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000010, 0x80000001B80CD0D0, sub_1B804E0D0, v4, v7);
}

uint64_t sub_1B803DEC8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1B7FFAF74;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B803DFF0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E038, v0, 0);
}

uint64_t sub_1B803E038()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6572616853746567, 0xEF29287379654B64, sub_1B804C770, v4, v7);
}

uint64_t sub_1B803E170()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E1B8, v0, 0);
}

uint64_t sub_1B803E1B8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6572616853746567, 0xEF29287379654B64, sub_1B804E0CC, v4, v7);
}

uint64_t sub_1B803E2F0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E338, v0, 0);
}

uint64_t sub_1B803E338()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0xD000000000000014, 0x80000001B80CD0B0, sub_1B804C5E8, v4, v7);
}

uint64_t sub_1B803E470()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E4B8, v0, 0);
}

uint64_t sub_1B803E4B8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0xD000000000000014, 0x80000001B80CD0B0, sub_1B804E0C8, v4, v7);
}

uint64_t sub_1B803E5F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803E63C, v2, 0);
}

uint64_t sub_1B803E63C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v9 = *(v0 + 32);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B803E788;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD090, sub_1B804C398, v4, v7);
}

uint64_t sub_1B803E788()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1B804E030;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 48);

    v5 = sub_1B804E034;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B803E8B0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803E8FC, v2, 0);
}

uint64_t sub_1B803E8FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v9 = *(v0 + 32);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B803EA48;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD090, sub_1B804E024, v4, v7);
}

uint64_t sub_1B803EA48()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1B803EB70;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 48);

    v5 = sub_1B804E034;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B803EB70()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1B803EBD4()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803EC1C, v0, 0);
}

uint64_t sub_1B803EC1C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803D600;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6E6F436863746566, 0xED00002928676966, sub_1B804C168, v4, v7);
}

uint64_t sub_1B803ED54()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803ED9C, v0, 0);
}

uint64_t sub_1B803ED9C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1B803EED4;
  v7 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6E6F436863746566, 0xED00002928676966, sub_1B804E0C4, v4, v7);
}

uint64_t sub_1B803EED4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B7FF8E48;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B803EFFC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B803F018()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F060, v0, 0);
}

uint64_t sub_1B803F060()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000013, 0x80000001B80CD070, sub_1B804BFE0, v4, v7);
}

uint64_t sub_1B803F194()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F1DC, v0, 0);
}

uint64_t sub_1B803F1DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000013, 0x80000001B80CD070, sub_1B804E0C0, v4, v7);
}

uint64_t sub_1B803F310()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F358, v0, 0);
}

uint64_t sub_1B803F358()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000024, 0x80000001B80CD040, sub_1B804BE58, v4, v7);
}

uint64_t sub_1B803F48C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F4D4, v0, 0);
}

uint64_t sub_1B803F4D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000024, 0x80000001B80CD040, sub_1B804E0BC, v4, v7);
}

uint64_t sub_1B803F608()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F650, v0, 0);
}

uint64_t sub_1B803F650()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD020, sub_1B804BCD0, v4, v7);
}

uint64_t sub_1B803F784()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F7CC, v0, 0);
}

uint64_t sub_1B803F7CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD020, sub_1B804E0B8, v4, v7);
}

uint64_t sub_1B803F900(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803F948, v1, 0);
}

uint64_t sub_1B803F948()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, v1, v3, 0xD000000000000020, 0x80000001B80CCFF0, sub_1B804B9B0, v4, v7);
}

uint64_t sub_1B803FA84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FACC, v1, 0);
}

uint64_t sub_1B803FACC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v6 = v0;
  v6[1] = sub_1B8000A0C;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, v1, v3, 0xD000000000000020, 0x80000001B80CCFF0, sub_1B804E0B4, v4, v7);
}

uint64_t sub_1B803FC08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FC50, v1, 0);
}

uint64_t sub_1B803FC50()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, v1, v3, 0xD000000000000015, 0x80000001B80CCFB0, sub_1B804B724, v4, v7);
}

uint64_t sub_1B803FD8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FDD4, v1, 0);
}

uint64_t sub_1B803FDD4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v8 = v0[2];

  return MEMORY[0x1EEE6DE38](v8, v1, v3, 0xD000000000000015, 0x80000001B80CCFB0, sub_1B804E0B0, v4, v7);
}

uint64_t sub_1B803FF10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FF58, v1, 0);
}

uint64_t sub_1B803FF58()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0xD000000000000014, 0x80000001B80CCF90, sub_1B804B50C, v4, &type metadata for SecureLocationsStewie.ServiceState);
}

uint64_t sub_1B8040090(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80400D8, v1, 0);
}

uint64_t sub_1B80400D8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1B800B9CC;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0xD000000000000014, 0x80000001B80CCF90, sub_1B804E0AC, v4, &type metadata for SecureLocationsStewie.ServiceState);
}

uint64_t sub_1B8040210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B804029C();
}

uint64_t sub_1B804029C()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80403D4, v0, 0);
}

uint64_t sub_1B80403D4()
{
  v26 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001BLL, 0x80000001B80CD2C0, &v25);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v9 + v10, v6, &qword_1EBA66090, &qword_1B80D2CF8);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[14];
  if (v11)
  {
    sub_1B7FB86D4(v0[14], &qword_1EBA66090, &qword_1B80D2CF8);
  }

  else
  {
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    (*(v14 + 16))(v13, v0[14], v15);
    sub_1B7FB86D4(v12, &qword_1EBA66090, &qword_1B80D2CF8);
    sub_1B80C92FC();
    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[13];
  v17 = v0[8];
  v18 = v0[9];
  (*(v0[11] + 56))(v16, 1, 1, v0[10]);
  swift_beginAccess();
  sub_1B7FCD754(v16, v9 + v10);
  swift_endAccess();
  v19 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v20 = swift_task_alloc();
  v0[15] = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  v21 = *(MEMORY[0x1E69E8920] + 4);
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_1B804074C;
  v23 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v22, v17, v19, 0xD00000000000001BLL, 0x80000001B80CD2C0, sub_1B804DA40, v20, v23);
}

uint64_t sub_1B804074C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1B80408EC;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 64);

    v5 = sub_1B8040874;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8040874()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B80408EC()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_1B8040974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8040A58, a4, 0);
}

uint64_t sub_1B8040A58()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8040BF0;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v12, v13);
}

uint64_t sub_1B8040BF0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8040E84;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B8040D18;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8040D18()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B804E02C;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_213;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 getSharingKeyWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8040E84()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x6972616853746567, 0xEF292879654B676ELL, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B804109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v7[14] = v9;
  v10 = *(v9 - 8);
  v7[15] = v10;
  v7[16] = *(v10 + 64);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8041184, a4, 0);
}

uint64_t sub_1B8041184()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 208) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 168) = v8;
  v9 = *(v2 + 32);
  *(v0 + 176) = v9;
  *(v0 + 184) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8041320;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804CD28, v8, v12, v13);
}

uint64_t sub_1B8041320()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B80415DC;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 80);

    v5 = sub_1B8041448;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8041448()
{
  v17 = v0[22];
  v18 = v0[23];
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = (*(v0 + 208) + 16) & ~*(v0 + 208);
  v20 = v0[8];
  v19 = sub_1B80C8D1C();
  v2(v3, v8, v6);
  v10 = swift_allocObject();
  v17(v10 + v9, v3, v6);
  v0[6] = sub_1B7FCE2F4;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_197;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v20 setSharingKey:v19 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  v14 = v0[17];
  v13 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B80415DC()
{
  v19 = v0;
  v1 = v0[21];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000011, 0x80000001B80CD0F0, &v18);
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
  v0[9] = v0[25];
  sub_1B80C927C();
  v15 = v0[17];
  v14 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B80417F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80418D4, a4, 0);
}

uint64_t sub_1B80418D4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8041A6C;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v12, v13);
}

uint64_t sub_1B8041A6C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8041D00;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B8041B94;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8041B94()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_181;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 performKeyRollWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8041D00()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000010, 0x80000001B80CD0D0, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8041F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8041FF4, a4, 0);
}

uint64_t sub_1B8041FF4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B804218C;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v12, v13);
}

uint64_t sub_1B804218C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8042420;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B80422B4;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80422B4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B804C8F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_165;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 getSharedKeysWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8042420()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x6572616853746567, 0xEF29287379654B64, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8042638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804271C, a4, 0);
}

uint64_t sub_1B804271C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B80428B4;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v12, v13);
}

uint64_t sub_1B80428B4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8042B48;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B80429DC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80429DC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B804E02C;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_149;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 getCachedLocationsWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8042B48()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CD0B0, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8042D58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v32 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - v18;
  v20 = sub_1B80C92CC();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = a2;
  *(v24 + 3) = v21;
  *(v24 + 4) = a2;
  (*(v12 + 32))(&v24[v22], v15, v11);
  v25 = &v24[v23];
  v27 = v29;
  v26 = v30;
  *v25 = v29;
  v25[1] = v26;
  *&v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8] = v31;
  swift_retain_n();
  sub_1B7FC62D8(v27, v26);
  sub_1B80A1D3C(0, 0, v19, v32, v24);
}

uint64_t sub_1B8042FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v7[14] = v9;
  v10 = *(v9 - 8);
  v7[15] = v10;
  v7[16] = *(v10 + 64);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80430A0, a4, 0);
}

uint64_t sub_1B80430A0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 208) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 168) = v8;
  v9 = *(v2 + 32);
  *(v0 + 176) = v9;
  *(v0 + 184) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B804323C;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v12, v13);
}

uint64_t sub_1B804323C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B80434F8;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 80);

    v5 = sub_1B8043364;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8043364()
{
  v17 = v0[22];
  v18 = v0[23];
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = (*(v0 + 208) + 16) & ~*(v0 + 208);
  v20 = v0[8];
  v19 = sub_1B80C8D1C();
  v2(v3, v8, v6);
  v10 = swift_allocObject();
  v17(v10 + v9, v3, v6);
  v0[6] = sub_1B804E02C;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_133;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v20 processIDSServiceMessage:v19 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  v14 = v0[17];
  v13 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B80434F8()
{
  v19 = v0;
  v1 = v0[21];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD090, &v18);
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
  v0[9] = v0[25];
  sub_1B80C927C();
  v15 = v0[17];
  v14 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B804370C(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
    return sub_1B80C927C();
  }

  else
  {
    sub_1B804C5D4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
    return sub_1B80C928C();
  }
}

uint64_t sub_1B80437A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8043888, a4, 0);
}

uint64_t sub_1B8043888()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8043A20;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804C2F0, v8, v12, v13);
}

uint64_t sub_1B8043A20()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8043CB4;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B8043B48;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8043B48()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B804C304;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_117;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 fetchConfigWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8043CB4()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x6E6F436863746566, 0xED00002928676966, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8043ECC(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_1B7FC62D8(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
      return sub_1B80C928C();
    }

    sub_1B8010040();
    swift_allocError();
    *v4 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  return sub_1B80C927C();
}

uint64_t sub_1B8043F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804406C, a4, 0);
}

uint64_t sub_1B804406C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8044204;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v12, v13);
}

uint64_t sub_1B8044204()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8044498;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B804432C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B804432C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_101;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 clearCachedConfigWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8044498()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CD070, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B80446A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804478C, a4, 0);
}

uint64_t sub_1B804478C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8044924;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v12, v13);
}

uint64_t sub_1B8044924()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8044BB8;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B8044A4C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8044A4C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_85;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 triggerStewieProactiveNotificationWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8044BB8()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD040, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8044DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8044EAC, a4, 0);
}

uint64_t sub_1B8044EAC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8045044;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v12, v13);
}

uint64_t sub_1B8045044()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B80452D8;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B804516C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B804516C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_69;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 dismissStewieNotificationsWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B80452D8()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD020, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B80454E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80455D0, a4, 0);
}

uint64_t sub_1B80455D0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 200) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v9 = *(v2 + 32);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B804576C;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804BB38, v8, v12, v13);
}

uint64_t sub_1B804576C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8045A1C;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 80);

    v5 = sub_1B8045894;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8045894()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = (*(v0 + 200) + 16) & ~*(v0 + 200);
  v16 = v0[8];
  (v0[18])(v4, v0[11], v6);
  v9 = swift_allocObject();
  v2(v9 + v8, v4, v6);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v0[6] = sub_1B804BBDC;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_53;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v16 publishCurrentLocationToStewieWithCompletion_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  v13 = v0[16];
  v12 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8045A1C()
{
  v19 = v0;
  v1 = v0[20];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CCFF0, &v18);
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
  v0[9] = v0[24];
  sub_1B80C927C();
  v15 = v0[16];
  v14 = v0[17];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8045C30(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  if (a3)
  {
    v45 = a3;
    v21 = a3;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
    return sub_1B80C927C();
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v22 = swift_allocError();
    *v23 = 1;
    v45 = v22;
    goto LABEL_5;
  }

  v25 = v18;
  v26 = sub_1B80C8CBC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B7FCD1B8(&qword_1EBA66140, type metadata accessor for SecureLocationsStewie.PublishResult);
  v44 = v25;
  sub_1B80C8C9C();

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v29 = sub_1B80C900C();
  __swift_project_value_buffer(v29, qword_1ED8DDF28);
  sub_1B804D0A0(v20, v17, type metadata accessor for SecureLocationsStewie.PublishResult);
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = v31;
    v33 = v32;
    v43 = swift_slowAlloc();
    v47[0] = v43;
    *v33 = 136446723;
    *(v33 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CCFF0, v47);
    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2081;
    sub_1B804D0A0(v17, v14, type metadata accessor for SecureLocationsStewie.PublishResult);
    v45 = 0;
    v46 = 0xE000000000000000;
    v41 = v30;
    sub_1B80C952C();
    MEMORY[0x1B8CB7A40](0x6C6275507473616CLL, 0xEF203A6465687369);
    sub_1B7FB8448(v14, v9, &unk_1EBA65FD0, &unk_1B80D1920);
    v34 = sub_1B80C90EC();
    MEMORY[0x1B8CB7A40](v34);

    MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CCFD0);
    v35 = *&v14[*(v44 + 20)];
    sub_1B80C938C();
    v36 = v45;
    v37 = v46;
    sub_1B804B954(v14);
    sub_1B804B954(v17);
    v38 = sub_1B7FB84FC(v36, v37, v47);

    *(v33 + 24) = v38;
    v39 = v41;
    _os_log_impl(&dword_1B7FB5000, v41, v42, "%{public}s decoded stewiePublishResult: %{private,mask.hash}s", v33, 0x20u);
    v40 = v43;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v40, -1, -1);
    MEMORY[0x1B8CB8970](v33, -1, -1);
  }

  else
  {

    sub_1B804B954(v17);
  }

  sub_1B804D0A0(v20, v14, type metadata accessor for SecureLocationsStewie.PublishResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  sub_1B80C928C();
  sub_1B7FC72F8(a1, a2);
  return sub_1B804B954(v20);
}

uint64_t sub_1B8046310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80463F8, a4, 0);
}

uint64_t sub_1B80463F8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 200) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v9 = *(v2 + 32);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8046594;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E094, v8, v12, v13);
}

uint64_t sub_1B8046594()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8046844;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 80);

    v5 = sub_1B80466BC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80466BC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = (*(v0 + 200) + 16) & ~*(v0 + 200);
  v16 = v0[8];
  (v0[18])(v4, v0[11], v6);
  v9 = swift_allocObject();
  v2(v9 + v8, v4, v6);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v0[6] = sub_1B804B92C;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_37;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v16 stewiePublishResultWithCompletion_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  v13 = v0[16];
  v12 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8046844()
{
  v19 = v0;
  v1 = v0[20];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CCFB0, &v18);
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
  v0[9] = v0[24];
  sub_1B80C927C();
  v15 = v0[16];
  v14 = v0[17];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8046A58(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  if (a3)
  {
    v45 = a3;
    v21 = a3;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
    return sub_1B80C927C();
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v22 = swift_allocError();
    *v23 = 1;
    v45 = v22;
    goto LABEL_5;
  }

  v25 = v18;
  v26 = sub_1B80C8CBC();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B7FCD1B8(&qword_1EBA66140, type metadata accessor for SecureLocationsStewie.PublishResult);
  v44 = v25;
  sub_1B80C8C9C();

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v29 = sub_1B80C900C();
  __swift_project_value_buffer(v29, qword_1ED8DDF28);
  sub_1B804D0A0(v20, v17, type metadata accessor for SecureLocationsStewie.PublishResult);
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = v31;
    v33 = v32;
    v43 = swift_slowAlloc();
    v47[0] = v43;
    *v33 = 136446723;
    *(v33 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CCFB0, v47);
    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2081;
    sub_1B804D0A0(v17, v14, type metadata accessor for SecureLocationsStewie.PublishResult);
    v45 = 0;
    v46 = 0xE000000000000000;
    v41 = v30;
    sub_1B80C952C();
    MEMORY[0x1B8CB7A40](0x6C6275507473616CLL, 0xEF203A6465687369);
    sub_1B7FB8448(v14, v9, &unk_1EBA65FD0, &unk_1B80D1920);
    v34 = sub_1B80C90EC();
    MEMORY[0x1B8CB7A40](v34);

    MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CCFD0);
    v35 = *&v14[*(v44 + 20)];
    sub_1B80C938C();
    v36 = v45;
    v37 = v46;
    sub_1B804B954(v14);
    sub_1B804B954(v17);
    v38 = sub_1B7FB84FC(v36, v37, v47);

    *(v33 + 24) = v38;
    v39 = v41;
    _os_log_impl(&dword_1B7FB5000, v41, v42, "%{public}s decoded stewiePublishResult: %{private,mask.hash}s", v33, 0x20u);
    v40 = v43;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v40, -1, -1);
    MEMORY[0x1B8CB8970](v33, -1, -1);
  }

  else
  {

    sub_1B804B954(v17);
  }

  sub_1B804D0A0(v20, v14, type metadata accessor for SecureLocationsStewie.PublishResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  sub_1B80C928C();
  sub_1B7FC72F8(a1, a2);
  return sub_1B804B954(v20);
}

uint64_t sub_1B8047138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8047220, a4, 0);
}

uint64_t sub_1B8047220()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 200) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v9 = *(v2 + 32);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B80473BC;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804B694, v8, v12, v13);
}

uint64_t sub_1B80473BC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B804766C;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 80);

    v5 = sub_1B80474E4;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80474E4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = (*(v0 + 200) + 16) & ~*(v0 + 200);
  v16 = v0[8];
  (v0[18])(v4, v0[11], v6);
  v9 = swift_allocObject();
  v2(v9 + v8, v4, v6);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v0[6] = sub_1B804B6A8;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_5;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v16 currentStewieStateWithCompletion_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  v13 = v0[16];
  v12 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B804766C()
{
  v19 = v0;
  v1 = v0[20];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CCF90, &v18);
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
  v0[9] = v0[24];
  sub_1B80C927C();
  v15 = v0[16];
  v14 = v0[17];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8047880(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B80C896C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a3)
  {
    v8 = a3;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
    return sub_1B80C927C();
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    swift_allocError();
    *v9 = 1;
    goto LABEL_5;
  }

  sub_1B7FC62D8(a1, a2);
  sub_1B7FC62D8(a1, a2);
  sub_1B80C895C();
  sub_1B804B6D0();
  sub_1B80C961C();
  if (v17 == 1 || (SecureLocationsStewie.ServiceState.init(rawValue:)(v16), v16 == 10))
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v11 = sub_1B80C900C();
    __swift_project_value_buffer(v11, qword_1ED8DDF28);
    v12 = sub_1B80C8FEC();
    v13 = sub_1B80C93FC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7FB5000, v12, v13, "Invalid service state response.", v14, 2u);
      MEMORY[0x1B8CB8970](v14, -1, -1);
    }

    sub_1B8010040();
    swift_allocError();
    *v15 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
    sub_1B80C927C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
    sub_1B80C928C();
  }

  return sub_1B7FC72F8(a1, a2);
}

uint64_t sub_1B8047B18()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD2E0, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8047D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8047E0C, a4, 0);
}

uint64_t sub_1B8047E0C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B8047FA4;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v12, v13);
}

uint64_t sub_1B8047FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8048238;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B80480CC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80480CC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_342;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 stopMonitoringStewieStateWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8048238()
{
  v19 = v0;
  v1 = v0[19];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000001BLL, 0x80000001B80CD2C0, &v18);
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

  v13 = v0[11];
  v12 = v0[12];
  v0[9] = v0[23];
  sub_1B80C927C();
  v15 = v0[15];
  v14 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B8048448(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1B80C927C();
}

uint64_t Session.locationsForHandles(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80484C4, 0, 0);
}

uint64_t sub_1B80484C4()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048560;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B8048560()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B804865C, 0, 0);
}

uint64_t sub_1B804865C()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE7A0;
  v3 = v0[2];

  return sub_1B801F5C4(v3);
}

uint64_t Session.locationsUnavailable(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048718, 0, 0);
}

uint64_t sub_1B8048718()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80487B4;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80487B4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80488B0, 0, 0);
}

uint64_t sub_1B80488B0()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B80274A8(v3);
}

uint64_t Session.stewieServiceStateChanged(_:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048974, 0, 0);
}

uint64_t sub_1B8048974()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048A10;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B8048A10()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8048B0C, 0, 0);
}

uint64_t sub_1B8048B0C()
{
  v1 = *(*(v0 + 16) + 56);
  *(v0 + 40) = *(v0 + 41);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B8048BB0;

  return sub_1B8024C3C((v0 + 40));
}

uint64_t sub_1B8048BB0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B8048CA4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048CC4, 0, 0);
}

uint64_t sub_1B8048CC4()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048D60;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B8048D60()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8048E5C, 0, 0);
}

uint64_t sub_1B8048E5C()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B801F5C4(v3);
}

uint64_t sub_1B8048EF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048718, 0, 0);
}

uint64_t sub_1B8048F18(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048F40, 0, 0);
}

uint64_t sub_1B8048F40()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048FDC;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B8048FDC()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80490D8, 0, 0);
}

uint64_t sub_1B80490D8()
{
  v1 = *(*(v0 + 16) + 56);
  *(v0 + 40) = *(v0 + 41);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804917C;

  return sub_1B8024C3C((v0 + 40));
}

uint64_t sub_1B804917C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}