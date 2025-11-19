uint64_t sub_1D1BE6318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE63B8, 0, 0);
}

uint64_t sub_1D1BE63B8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_1D1A01DDC(v1, &unk_1D1EA0360, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v8 = v0[4];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v9 = v0[4];
    }

    if (sub_1D1E6873C())
    {
      goto LABEL_5;
    }
  }

  else if (*(v8 + 16))
  {
LABEL_5:
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v6(v10, 1, 1, v5);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = v12;
    v15 = v11;

    sub_1D1A01DDC(v10, &unk_1D1EA0370, v14);
    sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_1D1BE65E8;
  v17 = v0[2];

  return sub_1D1A047E0(0, 0);
}

uint64_t sub_1D1BE65E8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D1BE66F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C790, &qword_1D1EA0378) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for StateSnapshot(0);
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6828, 0, 0);
}

uint64_t sub_1D1BE6828()
{
  *(v0 + 184) = sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE68C0, v2, v1);
}

uint64_t sub_1D1BE68C0()
{
  v1 = *(v0 + 192);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6958, 0, 0);
}

uint64_t sub_1D1BE6958()
{
  v1 = *(v0 + 184);
  *(v0 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE69E4, v3, v2);
}

uint64_t sub_1D1BE69E4()
{
  v1 = *(v0 + 200);

  *(v0 + 208) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6A58, 0, 0);
}

uint64_t sub_1D1BE6A58()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 216) = *(v2 + 16);
  *(v0 + 320) = *(v2 + 24);
  *(v0 + 224) = *(v2 + 32);

  *(v0 + 232) = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6B18, v4, v3);
}

uint64_t sub_1D1BE6B18()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[30] = v4;
  v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6BB4, 0, 0);
}

uint64_t sub_1D1BE6BB4()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 224);
    v3 = *(v0 + 184);
    *(v0 + 64) = *(v0 + 216);
    *(v0 + 72) = v1;
    *(v0 + 80) = v2;
    *(v0 + 248) = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BE6CFC, v5, v4);
  }

  else
  {
    v6 = *(v0 + 216);

    v7 = *(v0 + 176);
    v8 = *(v0 + 144);
    (*(*(v0 + 160) + 56))(v7, 1, 1, *(v0 + 152));
    sub_1D1741A30(v7, &unk_1EC649E30, &unk_1D1E91250);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D1BE6CFC()
{
  v1 = v0[31];
  v2 = v0[26];

  v0[32] = sub_1D1E0FF44(v0 + 8, 0);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6D78, 0, 0);
}

uint64_t sub_1D1BE6D78()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 320);
    v4 = *(v0 + 224);
    *(v0 + 88) = *(v0 + 216);
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;
    v5 = swift_task_alloc();
    *(v0 + 264) = v5;
    *v5 = v0;
    v5[1] = sub_1D1BE6EE8;
    v6 = *(v0 + 208);
    v7 = *(v0 + 144);

    return sub_1D1E10298(v7, (v0 + 88), v1, v2);
  }

  else
  {

    v9 = *(v0 + 216);

    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    (*(*(v0 + 160) + 56))(v10, 1, 1, *(v0 + 152));
    sub_1D1741A30(v10, &unk_1EC649E30, &unk_1D1E91250);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D1BE6EE8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE6FE4, 0, 0);
}

uint64_t sub_1D1BE6FE4()
{
  v1 = *(v0 + 144);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642958, &unk_1D1EB2A00);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);

    sub_1D1741A30(v1, &qword_1EC64C790, &qword_1D1EA0378);
    v6 = 1;
LABEL_5:
    v13 = *(v0 + 176);
    v14 = *(v0 + 144);
    (*(*(v0 + 160) + 56))(v13, v6, 1, *(v0 + 152));
    sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);

    v15 = *(v0 + 8);

    return v15();
  }

  v7 = *(v0 + 320);
  v8 = *(v0 + 168);
  *(v0 + 272) = *(v1 + *(v2 + 48));
  sub_1D1BED33C(v1, v8, type metadata accessor for StateSnapshot);
  if (v7)
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);

    sub_1D1BED33C(v11, v12, type metadata accessor for StateSnapshot);
    v6 = 0;
    goto LABEL_5;
  }

  v17 = *(v0 + 224);
  *(v0 + 112) = *(v0 + 216);
  *(v0 + 120) = *(v0 + 320);
  *(v0 + 128) = v17;
  v18 = swift_task_alloc();
  *(v0 + 280) = v18;
  *v18 = v0;
  v18[1] = sub_1D1BE7224;

  return CharacteristicValueSet.characteristicsAndValues.getter();
}

uint64_t sub_1D1BE7224(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7324, 0, 0);
}

uint64_t sub_1D1BE7324()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = sub_1D18A6E38(v0[36]);
  v0[37] = v3;

  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_1D1BE73F4;
  v5 = v0[34];

  return sub_1D1E13068(v3, v1, v2, v5, 0, 1);
}

uint64_t sub_1D1BE73F4()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v6 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_1D1BE761C;
  }

  else
  {
    v4 = sub_1D1BE7524;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BE7524()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[22];

  sub_1D1BED33C(v4, v5, type metadata accessor for StateSnapshot);
  v6 = v0[22];
  v7 = v0[18];
  (*(v0[20] + 56))(v6, 0, 1, v0[19]);
  sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1BE761C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[18];

  sub_1D1BECDC4(v4, type metadata accessor for StateSnapshot);

  v7 = v0[1];
  v8 = v0[39];

  return v7();
}

uint64_t sub_1D1BE76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1D1E66A7C();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE779C, 0, 0);
}

uint64_t sub_1D1BE779C()
{
  *(v0 + 184) = sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7834, v2, v1);
}

uint64_t sub_1D1BE7834()
{
  v1 = *(v0 + 192);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BE78CC, 0, 0);
}

uint64_t sub_1D1BE78CC()
{
  v1 = *(v0 + 184);
  *(v0 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7958, v3, v2);
}

uint64_t sub_1D1BE7958()
{
  v1 = *(v0 + 200);

  *(v0 + 208) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BE79CC, 0, 0);
}

uint64_t sub_1D1BE79CC()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = [*(v0 + 144) uniqueIdentifier];
  sub_1D1E66A5C();

  *(v0 + 216) = sub_1D1E66A2C();
  (*(v4 + 8))(v2, v3);
  *(v0 + 224) = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7AB4, v7, v6);
}

uint64_t sub_1D1BE7AB4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  v0[29] = [v3 homeFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1BE7B44, 0, 0);
}

uint64_t sub_1D1BE7B44()
{
  v1 = v0[29];
  if (v1)
  {
    sub_1D1BFAAD8(v0[19]);
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v2 = sub_1D1E6815C();
    v0[30] = v2;

    v0[2] = v0;
    v0[3] = sub_1D1BE7D18;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_49;
    v0[14] = v3;
    [v1 executeActions:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[22];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1BE7D18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1D1BE7E98;
  }

  else
  {
    v3 = sub_1D1BE7E28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE7E28()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1BE7E98()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_1D1BE7F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a8;
  *(v8 + 144) = v16;
  *(v8 + 120) = a5;
  *(v8 + 128) = a7;
  *(v8 + 240) = a6;
  *(v8 + 112) = a1;
  v9 = sub_1D1E66A7C();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v8 + 176) = updated;
  v13 = *(*(updated - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE8028, 0, 0);
}

uint64_t sub_1D1BE8028()
{
  v1 = v0[15].i8[0];
  v2 = v0[7].i64[1];
  v3 = swift_task_alloc();
  v0[12].i64[0] = v3;
  v3[1] = vextq_s8(v0[8], v0[8], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i8[8] = v1 & 1;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  v0[12].i64[1] = v5;
  *v5 = v0;
  v5[1] = sub_1D1BE812C;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, 0, 0, &unk_1D1EA0400, v3, v8);
}

uint64_t sub_1D1BE812C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1D1BE8704;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1D1BE8248;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BE8248()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[16];
  v4 = *(v0[18] + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v3;
  *(inited + 40) = 1;
  v6 = v3;
  v7 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v7;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_1D1BE83A4;
  v9 = v0[23];

  return sub_1D1AB6894(v9, 0, 0, 0, 1);
}

uint64_t sub_1D1BE83A4(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 224) = a1;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE84D8, 0, 0);
}

uint64_t sub_1D1BE84D8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);
  v3 = [*(v0 + 136) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 168);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 168));
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 112);
      v12 = *(*(v0 + 224) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1BED4F0(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v6, v8);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 224);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 224);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 184);
  v21 = *(v0 + 168);
  (*(v14 + 56))(*(v0 + 112), v15, 1, v13);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D1BE8704()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[16];

  v6 = *(v4 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v5;
  *(inited + 40) = 16386;
  v8 = v5;
  v9 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v2 = v9;
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_1D1BE8868;
  v11 = v0[23];

  return sub_1D1AB6894(v11, 0, 0, 0, 1);
}

uint64_t sub_1D1BE8868()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 184);
  v4 = *v0;

  sub_1D1BECDC4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BE89A0, 0, 0);
}

uint64_t sub_1D1BE89A0()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_1D1BE8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 73) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE8AC8, 0, 0);
}

uint64_t sub_1D1BE8AC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 73);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = sub_1D1E67E7C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v9 = v4;
  v10 = v3;
  sub_1D1A01DDC(v1, &unk_1D1EA0410, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v2 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64A290);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 40);
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_1D16EC000, v12, v13, "executing actionSet with timeout: %f", v15, 0xCu);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 16);

    v7(v16, 1, 1, v6);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    sub_1D1A01DDC(v16, &unk_1D1EA0420, v19);
    sub_1D1741A30(v16, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v20 = *(MEMORY[0x1E69E8708] + 4);
  v21 = swift_task_alloc();
  *(v0 + 56) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v21 = v0;
  v21[1] = sub_1D1BE8D98;
  v23 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 72, 0, 0, v22);
}

uint64_t sub_1D1BE8D98()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D1BE900C;
  }

  else
  {
    v3 = sub_1D1BE8EAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE8EAC()
{
  v1 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64A290);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D16EC000, v3, v4, "actionSet execution has completed, cancelling timeout", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v6 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1BE900C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1D1BE9070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_1D1E6702C();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_1D1E66FDC();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE91BC, 0, 0);
}

uint64_t sub_1D1BE91BC()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_1D1E6701C();
  v0[30] = __swift_project_value_buffer(v2, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v3 = sub_1D1E66FFC();
  v4 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v7, "actionSetExecution", "", v6, 2u);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v8 = v0[28];
  v9 = v0[29];
  v10 = v0[24];
  v11 = v0[25];
  v13 = v0[18];
  v12 = v0[19];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_1D1E6705C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[31] = sub_1D1E6704C();
  v17 = *(v11 + 8);
  v0[32] = v17;
  v0[33] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  v0[2] = v0;
  v0[3] = sub_1D1BE9438;
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_115;
  v0[14] = v18;
  [v13 executeActionSet:v12 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1BE9438()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1D1BE9728;
  }

  else
  {
    v3 = sub_1D1BE9548;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BE9548()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v5 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v6 = v0[31];
    v7 = v0[23];
    v8 = v0[20];
    v9 = v0[21];

    sub_1D1E6706C();

    if ((*(v9 + 88))(v7, v8) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[21] + 8))(v0[23], v0[20]);
      v10 = "";
    }

    v11 = v0[27];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v4, v5, v13, "actionSetExecution", v10, v12, 2u);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v14 = v0[32];
  v15 = v0[33];
  v16 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v22 = v0[23];
  v21 = v0[24];
  v25 = v0[22];

  v14(v19, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D1BE9728()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[26];
  swift_willThrow();
  v5 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v6 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v7 = v0[31];
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[20];

    sub_1D1E6706C();

    if ((*(v8 + 88))(v9, v10) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[21] + 8))(v0[22], v0[20]);
      v11 = "";
    }

    v12 = v0[26];
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v5, v6, v14, "actionSetExecution", v11, v13, 2u);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  v15 = v0[33];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[32];
  v20 = v0[28];
  v19 = v0[29];
  v21 = v5;
  v23 = v0[26];
  v22 = v0[27];
  v24 = v0[24];
  v28 = v0[23];
  v29 = v0[22];

  v18(v23, v24);
  swift_willThrow();

  v25 = v0[1];
  v26 = v0[34];

  return v25();
}

uint64_t sub_1D1BE991C(double a1)
{
  *(v1 + 32) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BE99DC, 0, 0);
}

uint64_t sub_1D1BE99DC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D1BE9AB8;
  v7 = v0[7];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1BE9AB8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v5 = sub_1D1B0BC6C;
  }

  else
  {
    v5 = sub_1D1BE9C20;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1BE9C20()
{
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "actionSet execution timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  type metadata accessor for HMError(0);
  v0[3] = 8;
  sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
  sub_1D1BED2E4();
  sub_1D1E6654C();
  v5 = v0[2];
  swift_willThrow();
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1BE9D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a1;
  v7[15] = a5;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v7[19] = v12;
  v13 = *(v12 - 8);
  v7[20] = v13;
  v14 = *(v13 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v7[23] = updated;
  v16 = *(*(updated - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v17 = swift_task_alloc();
  v7[25] = v17;
  *v17 = v7;
  v17[1] = sub_1D1BE9F10;

  return sub_1D1BEA9D8(a5, a6, a7);
}

uint64_t sub_1D1BE9F10()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1D1BEA4EC;
  }

  else
  {
    v3 = sub_1D1BEA024;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BEA024()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[16];
  v4 = *(v0[15] + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  v6 = v3;
  v7 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v7;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_1D1BEA178;
  v9 = v0[24];

  return sub_1D1AB6894(v9, 0, 0, 0, 1);
}

uint64_t sub_1D1BEA178(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 224) = a1;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEA2AC, 0, 0);
}

uint64_t sub_1D1BEA2AC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = [*(v0 + 136) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 176);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 176));
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 112);
      v12 = *(*(v0 + 224) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1BED4F0(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 224);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 224);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 192);
  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v23 = *(v0 + 144);
  (*(v14 + 56))(*(v0 + 112), v15, 1, v13);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D1BEA4EC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[16];
  v4 = *(v0[15] + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v3;
  *(inited + 40) = 16386;
  v6 = v3;
  v7 = sub_1D18DA708(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
  *v1 = v7;
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1D1BEA644;
  v9 = v0[24];

  return sub_1D1AB6894(v9, 0, 0, 0, 1);
}

uint64_t sub_1D1BEA644(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 240) = a1;

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEA778, 0, 0);
}

uint64_t sub_1D1BEA778()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = [*(v0 + 136) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 168);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 168));
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 144);
      v12 = *(*(v0 + 240) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1BED4F0(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v6, v8);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 240);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 240);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 144);
  (*(v14 + 56))(v24, v15, 1, v13);
  sub_1D1741A30(v24, &unk_1EC649E30, &unk_1D1E91250);
  swift_willThrow();

  v25 = *(v0 + 8);
  v26 = *(v0 + 208);

  return v25();
}

uint64_t sub_1D1BEA9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D1E66A7C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BEAA9C, 0, 0);
}

uint64_t sub_1D1BEAA9C()
{
  v72 = v0;
  v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v2 = [*(v0 + 24) actions];
  *(v0 + 64) = sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  *(v0 + 72) = sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v3 = sub_1D1E6816C();

  sub_1D1BDD3B8(v3);
  v5 = v4;
  *(v0 + 80) = 0;

  v71 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v0 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = [v8 characteristicType];
      v11 = sub_1D1E6781C();
      v1 = v12;

      v13._countAndFlagsBits = v11;
      v13._object = v1;
      CharacteristicKind.init(rawValue:)(v13);
      if (v69 != 174 && (v69 == 3 || v69 == 105))
      {
        sub_1D1E6896C();
        v14 = v71[2];
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
      }

      else
      {
      }

      ++v7;
      if (v0 == v6)
      {
        v15 = v71;
        v0 = i;
        v1 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v6 = sub_1D1E6873C();
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *(v0 + 88) = v15;

  v16 = swift_allocObject();
  *(v0 + 96) = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v16 + 24) = 0;
  *(v16 + 32) = 2;
  if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
  {
    v18 = *(v15 + 16);
    *(v0 + 104) = v18;
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_42:
    v34 = *(v0 + 80);
    v33 = *(v0 + 88);
    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    v37 = *(v0 + 24);

    v38 = [v37 v1[108]];
    v39 = sub_1D1E6816C();

    sub_1D1BDD65C(v39);
    v41 = v40;

    v71 = v17;
    if (v41 >> 62)
    {
      goto LABEL_57;
    }

    for (j = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D1E6873C())
    {
      v43 = 0;
      v0 = v41 & 0xC000000000000001;
      while (1)
      {
        if (v0)
        {
          v44 = MEMORY[0x1D3891EF0](v43, v41);
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if ([v44 state] == 1)
        {
          sub_1D1E6896C();
          v47 = v71[2];
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v43;
        if (v46 == j)
        {
          v48 = v71;
          v0 = i;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v48 = MEMORY[0x1E69E7CC0];
LABEL_59:

    v70 = MEMORY[0x1E69E7CD0];
    if ((v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
    {
      goto LABEL_73;
    }

    for (k = *(v48 + 16); k; k = sub_1D1E6873C())
    {
      v50 = 0;
      while (1)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1D3891EF0](v50, v48);
        }

        else
        {
          if (v50 >= *(v48 + 16))
          {
            goto LABEL_72;
          }

          v51 = *(v48 + 8 * v50 + 32);
        }

        v52 = v51;
        v0 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        v53 = [v51 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v54 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v55 = sub_1D1E6815C();

        v56 = [v54 initWithMediaProfiles:v55 playbackState:2 volume:0];

        sub_1D1768400(&v71, v56);
        ++v50;
        v57 = v0 == k;
        v0 = i;
        if (v57)
        {
          v58 = v70;
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v58 = MEMORY[0x1E69E7CD0];
LABEL_75:
    *(v0 + 144) = v58;
    v59 = *(v0 + 96);
    v60 = *(v0 + 32);
    v61 = *(v0 + 16);

    v62 = swift_task_alloc();
    *(v0 + 152) = v62;
    v62[2] = v61;
    v62[3] = v59;
    v62[4] = v58;
    v62[5] = v60;
    v63 = *(MEMORY[0x1E69E88A0] + 4);
    v64 = swift_task_alloc();
    *(v0 + 160) = v64;
    *v64 = v0;
    v64[1] = sub_1D1BEB9A8;
    v65 = MEMORY[0x1E69E7CA8] + 8;
    v74 = MEMORY[0x1E69E7CA8] + 8;
    v66 = MEMORY[0x1E69E7CA8] + 8;
    v67 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v64, v65, v66, 0, 0, &unk_1D1EA03C0, v62, v67);
  }

LABEL_41:
  v32 = sub_1D1E6873C();
  *(v0 + 104) = v32;
  if (!v32)
  {
    goto LABEL_42;
  }

LABEL_23:
  v19 = 0;
  while (1)
  {
    v20 = *(v0 + 88);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1D3891EF0](v19);
    }

    else
    {
      if (v19 >= *(v20 + 16))
      {
        goto LABEL_40;
      }

      v21 = *(v20 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = v19 + 1;
    *(v0 + 112) = v21;
    *(v0 + 120) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (sub_1D1E67F7C())
    {
      break;
    }

    v24 = [v22 service];
    *(v0 + 128) = v24;
    if (v24)
    {
      v31 = swift_task_alloc();
      *(v0 + 136) = v31;
      *v31 = v0;
      v31[1] = sub_1D1BEB23C;

      return sub_1D1BDD8E0();
    }

    v25 = *(v0 + 104);

    ++v19;
    if (v23 == v25)
    {
      goto LABEL_42;
    }
  }

  v26 = *(v0 + 88);
  v27 = *(v0 + 96);

  v28 = *(v0 + 56);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1D1BEB23C(char a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEB33C, 0, 0);
}

uint64_t sub_1D1BEB33C()
{
  v65 = v1;
  v2 = *(v1 + 176);
  if (v2 == 2)
  {
    v3 = v1[16];

LABEL_9:
    goto LABEL_10;
  }

  v3 = v1[16];
  v4 = v1[14];
  if ((v2 & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = v1[12];
  v6 = v1[6];
  v0 = v1[7];
  v7 = v62[5];
  v8 = [v1[14] characteristicType];
  v9 = sub_1D1E6781C();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  CharacteristicKind.init(rawValue:)(v12);
  if (v64 == 174)
  {
    v13 = 0;
  }

  else
  {
    v13 = v64;
  }

  v14 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1BECA54(0, v13, v0, (v5 + 16));
  v1 = v62;
  (*(v6 + 8))(v0, v7);
LABEL_10:
  v15 = v1[15];
  if (v15 == v1[13])
  {
LABEL_11:
    v17 = v1[10];
    v16 = v1[11];
    v18 = v1[8];
    v19 = v1[9];
    v20 = v1[3];

    v21 = [v20 actions];
    v22 = sub_1D1E6816C();

    sub_1D1BDD65C(v22);
    v0 = v23;

    v64 = MEMORY[0x1E69E7CC0];
    if (v0 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v25 = 0;
      while (1)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1D3891EF0](v25, v0);
        }

        else
        {
          if (v25 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v26 = *(v0 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if ([v26 state] == 1)
        {
          sub_1D1E6896C();
          v29 = v64[2];
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        else
        {
        }

        ++v25;
        if (v28 == i)
        {
          v35 = v64;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v63 = MEMORY[0x1E69E7CD0];
    v42 = v62;
    if ((v35 & 0x8000000000000000) != 0 || (v35 & 0x4000000000000000) != 0)
    {
      goto LABEL_58;
    }

    for (j = *(v35 + 16); j; j = sub_1D1E6873C())
    {
      v44 = 0;
      v42 = 0x1E696CBF0;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1D3891EF0](v44, v35);
        }

        else
        {
          if (v44 >= *(v35 + 16))
          {
            goto LABEL_57;
          }

          v45 = *(v35 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v48 = [v45 mediaProfiles];
        sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
        sub_1D1E6816C();

        v49 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
        v50 = sub_1D1E6815C();

        v51 = [v49 initWithMediaProfiles:v50 playbackState:2 volume:0];

        sub_1D1768400(&v64, v51);
        ++v44;
        if (v47 == j)
        {
          v52 = v63;
          v42 = v62;
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    v52 = MEMORY[0x1E69E7CD0];
LABEL_60:
    v42[18] = v52;
    v53 = v42[12];
    v54 = v42[4];
    v55 = v42[2];

    v56 = swift_task_alloc();
    v42[19] = v56;
    v56[2] = v55;
    v56[3] = v53;
    v56[4] = v52;
    v56[5] = v54;
    v57 = *(MEMORY[0x1E69E88A0] + 4);
    v58 = swift_task_alloc();
    v42[20] = v58;
    *v58 = v42;
    v58[1] = sub_1D1BEB9A8;
    v59 = MEMORY[0x1E69E7CA8] + 8;
    v67 = MEMORY[0x1E69E7CA8] + 8;
    v60 = MEMORY[0x1E69E7CA8] + 8;
    v61 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v58, v59, v60, 0, 0, &unk_1D1EA03C0, v56, v61);
  }

  else
  {
    while (1)
    {
      v30 = v1[11];
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1D3891EF0](v15);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        v31 = *(v30 + 8 * v15 + 32);
      }

      v32 = v31;
      v0 = v15 + 1;
      v1[14] = v31;
      v1[15] = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_41;
      }

      if (sub_1D1E67F7C())
      {
        break;
      }

      v33 = [v32 service];
      v1[16] = v33;
      if (v33)
      {
        v41 = swift_task_alloc();
        v1[17] = v41;
        *v41 = v1;
        v41[1] = sub_1D1BEB23C;

        return sub_1D1BDD8E0();
      }

      v34 = v62[13];

      ++v15;
      v1 = v62;
      if (v0 == v34)
      {
        goto LABEL_11;
      }
    }

    v36 = v1[11];
    v37 = v1[12];

    v38 = v1[7];

    v39 = v1[1];

    return v39();
  }
}

uint64_t sub_1D1BEB9A8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1D1BEBB38;
  }

  else
  {
    v5 = *(v2 + 144);
    v6 = *(v2 + 152);

    v4 = sub_1D1BEBACC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BEBACC()
{
  v1 = v0[12];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1BEBB38()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[12];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_1D1BEBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BEBC68, 0, 0);
}

uint64_t sub_1D1BEBC68()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_1D1E67E7C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v2;

  sub_1D1A01DDC(v1, &unk_1D1EA03D0, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v9 = v0[5];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = v0[5];
    }

    if (sub_1D1E6873C())
    {
      goto LABEL_5;
    }
  }

  else if (*(v9 + 16))
  {
LABEL_5:
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = v0[2];
    v7(v11, 1, 1, v6);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    v15[5] = v13;
    v16 = v12;

    sub_1D1A01DDC(v11, &unk_1D1EA03E0, v15);
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1D1BEBEA4;
  v18 = v0[2];

  return sub_1D1A047E0(0, 0);
}

uint64_t sub_1D1BEBEA4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D1BEBFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BEC08C, 0, 0);
}

uint64_t sub_1D1BEC08C()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *(v0 + 40) = *(v1 + 16);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1D1BEC178;
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  return HomeState.Stream.write(characteristicValueSet:timeout:)(v5, (v0 + 40), 0, 1);
}

uint64_t sub_1D1BEC178()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v5 = *v0;

  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEC290, 0, 0);
}

uint64_t sub_1D1BEC290()
{
  v1 = v0[10];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    sub_1D1741A30(v1, &qword_1EC646080, &qword_1D1E7E488);
    v4 = type metadata accessor for StateSnapshot(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);
    v5 = v0[12];
    v6 = v0[10];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = *(v1 + *(v2 + 48));
    v0[14] = v9;
    v10 = *(MEMORY[0x1E69E86A8] + 4);
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v11 = v0;
    v11[1] = sub_1D1BEC46C;
    v14 = v0[11];
    v13 = v0[12];
    v15 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v13, v9, v14, v12, v15);
  }
}

uint64_t sub_1D1BEC46C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1D1BEC630;
  }

  else
  {
    v5 = *(v2 + 112);
    sub_1D1741A30(*(v2 + 96), &unk_1EC649E30, &unk_1D1E91250);

    v4 = sub_1D1BEC5A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BEC5A4()
{
  sub_1D1BECDC4(v0[10], type metadata accessor for StateSnapshot);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1BEC630()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  sub_1D1BECDC4(v3, type metadata accessor for StateSnapshot);

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1D1BEC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1BEC6E8, 0, 0);
}

uint64_t sub_1D1BEC6E8()
{
  v1 = v0[18];
  sub_1D1BFAAD8(v0[19]);
  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v2 = sub_1D1E6815C();
  v0[20] = v2;

  v0[2] = v0;
  v0[3] = sub_1D1BEC870;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_85;
  v0[14] = v3;
  [v1 executeActions:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1BEC870()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1D1BEC9E4;
  }

  else
  {
    v3 = sub_1D1BEC980;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BEC980()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BEC9E4()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_1D1BECA54(char a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = MEMORY[0x1E69E6370];
  LOBYTE(v22[0]) = a1;
  if (!*(*a4 + 16) || (sub_1D1742188(a3), (v13 & 1) == 0))
  {
    v14 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    v15 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *a4;
    sub_1D1752B8C(v14, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v21[0];
  }

  (*(v9 + 16))(v12, a3, v8);
  v17 = sub_1D1C76E38(v21);
  if (*v18)
  {
    sub_1D1741970(v22, v20);
    sub_1D1B0CE00(v20, a2);
  }

  (v17)(v21, 0);
  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D1BECC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = MEMORY[0x1E69E6530];
  v22[0] = a1;
  if (!*(*a4 + 16) || (sub_1D1742188(a3), (v13 & 1) == 0))
  {
    v14 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    v15 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *a4;
    sub_1D1752B8C(v14, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v21[0];
  }

  (*(v9 + 16))(v12, a3, v8);
  v17 = sub_1D1C76E38(v21);
  if (*v18)
  {
    sub_1D1741970(v22, v20);
    sub_1D1B0CE00(v20, a2);
  }

  (v17)(v21, 0);
  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D1BECDC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1BECE24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1BE45C4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1D1BECEFC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1BE6318(a1, a2, v6, v7, v8);
}

uint64_t sub_1D1BECFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1BE66F8(a1, v4, v5, v6);
}

uint64_t sub_1D1BED074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BE76DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1BED160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1BE4BC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1BED228()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1BE5EA8(v4);
}

unint64_t sub_1D1BED2E4()
{
  result = qword_1EC6428A0;
  if (!qword_1EC6428A0)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6428A0);
  }

  return result;
}

uint64_t sub_1D1BED33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BED3A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for StaticActionSet() - 8);
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
  v14[1] = sub_1D17C4CF0;

  return sub_1D1BE9D8C(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_1D1BED4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BED558(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1BEBBC4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D1BED620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BEBFB4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1BED728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BEC6C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1BED7E8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for StaticActionSet() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D17C4CF0;

  return sub_1D1BE7F24(a1, v10, v11, v1 + v5, v13, v14, v15, v16);
}

uint64_t sub_1D1BED95C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1BE8A24(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1D1BEDA28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1BE9070(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1BEDAE8()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1BE991C(v4);
}

uint64_t StaticActionSet.toggle(options:context:)(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  *(v4 + 32) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0);
  *(v4 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v4 + 56) = v11;
  *(v4 + 64) = v12;
  v13 = a3[1];
  *(v4 + 72) = *a3;
  *(v4 + 88) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEDCBC, 0, 0);
}

uint64_t sub_1D1BEDCBC()
{
  if ((v0[8] & 0x400) != 0 && v0[10] >= 2uLL && v0[12])
  {

    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1D1BEDE00;

    return sub_1D1E387D4();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_1D1BEE654;
    v4 = v0[2];
    v5 = v0[3];

    return StaticActionSet.toggle()(v4);
  }
}

uint64_t sub_1D1BEDE00(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEDF00, 0, 0);
}

uint64_t sub_1D1BEDF00()
{
  v1 = *(v0 + 112);
  if (v1 && (v2 = *(v0 + 24), v3 = StaticActionSet.get(from:)(*(v0 + 112)), *(v0 + 120) = v3, v1, v3))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v24 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    if (*(v7 + *(type metadata accessor for StaticActionSet() + 56)))
    {
      v8 = 0x1E696CB90;
    }

    else
    {
      v8 = 0x1E696CB88;
    }

    v9 = *v8;
    v10 = [objc_opt_self() executeRequestWithActionSet_];
    *(v0 + 128) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D1E73FA0;
    *(v11 + 32) = v10;
    *(v6 + 8) = v24;
    *(v6 + 24) = v5;
    *(v6 + 32) = v4;
    *v6 = v11;
    *(v6 + 40) = 1;
    v12 = qword_1EC642488;
    v13 = v10;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = sub_1D1E6701C();
    __swift_project_value_buffer(v16, qword_1EC6BE2B8);
    v17 = *(v15 + 44);
    sub_1D1E66FFC();
    sub_1D1E66FAC();
    if (qword_1EE07AC80 != -1)
    {
      swift_once();
    }

    *(v0 + 136) = qword_1EE07B4E0;
    type metadata accessor for WidgetDataModel();
    *(v0 + 144) = swift_initStaticObject();

    return MEMORY[0x1EEE6DFA0](sub_1D1BEE17C, 0, 0);
  }

  else
  {
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);

    sub_1D1BFA824();
    swift_allocError();
    swift_willThrow();
    v20 = *(v0 + 56);
    v21 = *(v0 + 40);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1D1BEE17C()
{
  v1 = v0[4];
  sub_1D1741A90(v0[7], v0[5], &qword_1EC646098, &unk_1D1E7E4D0);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1D1BEE240;
  v3 = v0[18];

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1BEE240(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = swift_task_alloc();
  v3[21] = v6;
  *v6 = v5;
  v6[1] = sub_1D1BEE3BC;
  v7 = v3[5];
  v8 = v3[2];
  v9.n128_u64[0] = 20.0;

  return (sub_1D1BF8FC0)(v8, v7, v9);
}

uint64_t sub_1D1BEE3BC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v5 = sub_1D1BEE5D8;
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = sub_1D1BEE4FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1D1BEE518()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);

  v3 = type metadata accessor for StateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1BEE5D8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 176);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1BEE654()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v7 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D1BEE784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v5[7] = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = sub_1D1E67E1C();
  v5[10] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v5[11] = v9;
  v5[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEE858, v9, v8);
}

uint64_t sub_1D1BEE858()
{
  v11 = v0;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE0813C8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v10);
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s Informing HomeKit it should send a timeline refresh", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[9];
  v0[14] = *(v0[6] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
  v0[15] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v0[16] = v8;
  v0[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEEA1C, v8, v7);
}

uint64_t sub_1D1BEEA1C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v14 = *(v0 + 16);
  v5 = sub_1D1E67E0C();
  *(v0 + 144) = v5;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v1;
  *(v6 + 24) = v7;
  *(v6 + 32) = v14;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1D1BEEB50;
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v5, v12, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1BFAAAC, v6, v11);
}

uint64_t sub_1D1BEEB50()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v12 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1D1BEED88;
  }

  else
  {
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[5];
    v10 = v2[3];
    sub_1D1BFA9A4(v2[8], type metadata accessor for StateSnapshot.UpdateType);

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1D1BEECBC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1BEECBC()
{
  v1 = v0[15];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1BEED20, v2, v3);
}

uint64_t sub_1D1BEED20()
{
  v1 = v0[10];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1BEED88()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[5];
  v5 = v0[3];

  v6 = v0[11];
  v7 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1BEEE20, v6, v7);
}

uint64_t sub_1D1BEEE20()
{
  v18 = v0;
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v17);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s Unable to execute monitorAndFetchState call, will not try again. reason=%@", v9, 0x16u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D1BEEFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v7;
  *(v8 + 192) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = sub_1D1E67E1C();
  *(v8 + 80) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEF09C, v10, v9);
}

uint64_t sub_1D1BEF09C()
{
  v36 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 56);
  v3 = [*(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1821898();
  v4 = sub_1D1E67C1C();

  v5 = sub_1D1DC8B60(v4, v2);
  *(v0 + 104) = v5;

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 56);
    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE0813C8);

    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 56);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v35);
      *(v11 + 12) = 2080;
      v13 = sub_1D1E66A7C();
      v14 = MEMORY[0x1D3891260](v10, v13);
      v16 = sub_1D1B1312C(v14, v15, v35);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1D16EC000, v8, v9, "%s Monitoring characteristics: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v17 = *(v0 + 72);
    *(v0 + 112) = *(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 120) = sub_1D1E67E0C();
    v19 = sub_1D1E67D4C();
    *(v0 + 128) = v19;
    *(v0 + 136) = v18;

    return MEMORY[0x1EEE6DFA0](sub_1D1BEF53C, v19, v18);
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 56);
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EE0813C8);

    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6835C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 56);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v35);
      *(v25 + 12) = 2080;
      v27 = sub_1D1E66A7C();
      v28 = MEMORY[0x1D3891260](v24, v27);
      v30 = sub_1D1B1312C(v28, v29, v35);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1D16EC000, v22, v23, "%s Fetching characteristics: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    v31 = *(v0 + 64);
    v32 = swift_task_alloc();
    *(v0 + 176) = v32;
    *v32 = v0;
    v32[1] = sub_1D1BEF898;
    v33 = *(v0 + 16);

    return WidgetManager.fetchState(for:)(v33, v5);
  }
}

uint64_t sub_1D1BEF53C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v12 = *(v0 + 104);
  v13 = *(v0 + 24);
  v4 = sub_1D1E67E0C();
  *(v0 + 144) = v4;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = vextq_s8(v12, v12, 8uLL);
  *(v5 + 32) = v13;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v7 = v0;
  v7[1] = sub_1D1BEF670;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v4, v10, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1BFAA1C, v5, updated);
}

uint64_t sub_1D1BEF670()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v11 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1D1BEF80C;
  }

  else
  {
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[13];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1D1BEF7A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1BEF7A8()
{
  v1 = v0[15];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1BFAAB4, v2, v3);
}

uint64_t sub_1D1BEF80C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[13];

  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1BFAAA0, v5, v6);
}

uint64_t sub_1D1BEF898()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1D1BFAAA4;
  }

  else
  {
    v7 = sub_1D1BFAAA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1BEF9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v7;
  *(v8 + 192) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = sub_1D1E67E1C();
  *(v8 + 80) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEFA80, v10, v9);
}

uint64_t sub_1D1BEFA80()
{
  v36 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 56);
  v3 = [*(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1821898();
  v4 = sub_1D1E67C1C();

  v5 = sub_1D1DC83E4(v4, v2);
  *(v0 + 104) = v5;

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 56);
    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE0813C8);

    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 56);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v35);
      *(v11 + 12) = 2080;
      v13 = sub_1D1E66A7C();
      v14 = MEMORY[0x1D3891260](v10, v13);
      v16 = sub_1D1B1312C(v14, v15, v35);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1D16EC000, v8, v9, "%s Monitoring actionSets: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v17 = *(v0 + 72);
    *(v0 + 112) = *(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 120) = sub_1D1E67E0C();
    v19 = sub_1D1E67D4C();
    *(v0 + 128) = v19;
    *(v0 + 136) = v18;

    return MEMORY[0x1EEE6DFA0](sub_1D1BEFF20, v19, v18);
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 56);
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EE0813C8);

    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6835C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 56);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v35);
      *(v25 + 12) = 2080;
      v27 = sub_1D1E66A7C();
      v28 = MEMORY[0x1D3891260](v24, v27);
      v30 = sub_1D1B1312C(v28, v29, v35);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1D16EC000, v22, v23, "%s Fetching actionSets: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    v31 = *(v0 + 64);
    v32 = swift_task_alloc();
    *(v0 + 176) = v32;
    *v32 = v0;
    v32[1] = sub_1D1BF0344;
    v33 = *(v0 + 16);

    return WidgetManager.fetchState(for:)(v33, v5);
  }
}

uint64_t sub_1D1BEFF20()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v12 = *(v0 + 104);
  v13 = *(v0 + 24);
  v4 = sub_1D1E67E0C();
  *(v0 + 144) = v4;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = vextq_s8(v12, v12, 8uLL);
  *(v5 + 32) = v13;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v7 = v0;
  v7[1] = sub_1D1BF0054;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v4, v10, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1BFAA04, v5, updated);
}

uint64_t sub_1D1BF0054()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v11 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1D1BF0254;
  }

  else
  {
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[13];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1D1BF018C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D1BF018C()
{
  v1 = v0[15];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1BF01F0, v2, v3);
}

uint64_t sub_1D1BF01F0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BF0254()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[13];

  v5 = v0[11];
  v6 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1BF02E0, v5, v6);
}

uint64_t sub_1D1BF02E0()
{
  v1 = v0[21];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1BF0344()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1D1BF04EC;
  }

  else
  {
    v7 = sub_1D1BF0480;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1BF0480()
{
  v1 = v0[13];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1BF04EC()
{
  v1 = v0[13];

  v2 = v0[23];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1BF0558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 136) = a8;
  *(v9 + 144) = v8;
  *(v9 + 320) = a7;
  *(v9 + 120) = a5;
  *(v9 + 128) = a6;
  *(v9 + 104) = a3;
  *(v9 + 112) = a4;
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v11 = sub_1D1E66FDC();
  *(v9 + 160) = v11;
  v12 = *(v11 - 8);
  *(v9 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  v14 = sub_1D1E66A7C();
  *(v9 + 192) = v14;
  v15 = *(v14 - 8);
  *(v9 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v17 = type metadata accessor for MatterStateSnapshot();
  *(v9 + 224) = v17;
  v18 = *(v17 - 8);
  *(v9 + 232) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF073C, v8, 0);
}

uint64_t sub_1D1BF073C()
{
  v155 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  v3 = [*(v0 + 96) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v4 = *(v2 + 120);
  if (*(v4 + 16) && (v5 = sub_1D1742188(*(v0 + 216)), (v6 & 1) != 0))
  {
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 136);
    sub_1D1BFA920(*(v4 + 56) + *(*(v0 + 232) + 72) * v5, v8, type metadata accessor for MatterStateSnapshot);
    sub_1D1AFBD48(v8, v7, type metadata accessor for MatterStateSnapshot);
    swift_endAccess();
    v13 = *(v11 + 8);
    *(v0 + 256) = v13;
    *(v0 + 264) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v144 = v13;
    v13(v9, v10);
    v14 = swift_task_alloc();
    *(v14 + 16) = v7;
    v15 = sub_1D1788858(sub_1D1BFA988, v14, v12);

    v16 = v15[2];

    if (v16)
    {
      if (*(v0 + 320))
      {
        v17 = *(v0 + 136);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v0 + 144);
          v20 = (v17 + 32);
          v21 = MEMORY[0x1E69E7CC0];
          do
          {
            v23 = *v20++;
            v22 = v23;
            swift_beginAccess();
            v24 = *(v19 + 152);
            if (*(v24 + 16) && (v25 = sub_1D17420B0(v22), (v26 & 1) != 0))
            {
              v27 = *(v24 + 56) + 40 * v25;
              v29 = *v27;
              v28 = *(v27 + 8);
              v148 = *(v27 + 16);
              v30 = *(v27 + 32);
              swift_endAccess();

              swift_unknownObjectRetain();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_1D177E7E0(0, *(v21 + 2) + 1, 1, v21);
              }

              v32 = *(v21 + 2);
              v31 = *(v21 + 3);
              if (v32 >= v31 >> 1)
              {
                v21 = sub_1D177E7E0((v31 > 1), v32 + 1, 1, v21);
              }

              *(v21 + 2) = v32 + 1;
              v33 = &v21[40 * v32];
              *(v33 + 4) = v29;
              *(v33 + 5) = v28;
              *(v33 + 3) = v148;
              *(v33 + 8) = v30;
            }

            else
            {
              swift_endAccess();
            }

            --v18;
          }

          while (v18);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        *(v0 + 272) = v21;
        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v110 = *(v0 + 128);
        v111 = *(v0 + 136);
        v112 = *(v0 + 112);
        v113 = *(v0 + 96);
        v114 = sub_1D1E6709C();
        *(v0 + 280) = __swift_project_value_buffer(v114, qword_1EE0813C8);

        v115 = v113;

        v116 = sub_1D1E6707C();
        v117 = sub_1D1E6835C();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = *(v0 + 208);
          v143 = *(v0 + 192);
          v119 = *(v0 + 128);
          v152 = *(v0 + 136);
          v120 = *(v0 + 104);
          v121 = *(v0 + 112);
          v122 = *(v0 + 96);
          v123 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v153 = v139;
          *v123 = 136315906;
          *(v123 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v153);
          *(v123 + 12) = 2080;

          v124 = sub_1D1B1312C(v120, v121, &v153);

          *(v123 + 14) = v124;
          *(v123 + 22) = 2080;
          v125 = [v122 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
          v126 = sub_1D1E68FAC();
          v128 = v127;
          v144(v118, v143);
          v129 = sub_1D1B1312C(v126, v128, &v153);

          *(v123 + 24) = v129;
          *(v123 + 32) = 2080;
          v130 = MEMORY[0x1D3891260](v152, MEMORY[0x1E69E76D8]);
          v132 = sub_1D1B1312C(v130, v131, &v153);

          *(v123 + 34) = v132;
          _os_log_impl(&dword_1D16EC000, v116, v117, "%s W:{%s} HM:{%s} Sending Native Matter Monitor command [%s]", v123, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v139, -1, -1);
          MEMORY[0x1D3893640](v123, -1, -1);
        }

        else
        {
          v133 = *(v0 + 128);
          v134 = *(v0 + 112);
        }

        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v135 = *(v0 + 184);
        v136 = sub_1D1E6701C();
        *(v0 + 288) = __swift_project_value_buffer(v136, qword_1EC6BE2B8);
        sub_1D1E66FCC();

        return MEMORY[0x1EEE6DFA0](sub_1D1BF154C, 0, 0);
      }

      v88 = *(v0 + 248);
      v90 = *(v0 + 224);
      v89 = *(v0 + 232);
      v137 = *(v0 + 208);
      v91 = *(v0 + 152);
      v147 = v88;
      v151 = *(v0 + 144);
      v92 = *(v0 + 136);
      v93 = *(v0 + 96);
      v138 = v90;
      v142 = *(v0 + 88);

      v95 = sub_1D1785204(v94);

      v96 = v93;

      v98 = sub_1D1785204(v97);

      sub_1D1BFA920(v88, v91, type metadata accessor for MatterStateSnapshot);
      v99 = *(v89 + 56);
      v99(v91, 0, 1, v90);
      v100 = sub_1D1A2B978(v91, v95, v93, 2, v96, v98, 1);

      v101 = [v96 matterControllerID];
      v102 = sub_1D1E6781C();
      v104 = v103;

      v105 = [v96 uniqueIdentifier];
      sub_1D1E66A5C();

      v153 = v98;
      v154 = 1;
      sub_1D1A28CB8(v102, v104, v137, v100, &v153, v142);
      sub_1D1741A30(v91, &unk_1EC64F390, &qword_1D1E92B10);
      v106 = [v96 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA920(v142, v91, type metadata accessor for MatterStateSnapshot);
      v99(v91, 0, 1, v138);
      swift_beginAccess();
      sub_1D1B0E5E8(v91, v137);
      swift_endAccess();
      sub_1D1BFA9A4(v147, type metadata accessor for MatterStateSnapshot);
    }

    else
    {
      if (qword_1EE07A098 != -1)
      {
        swift_once();
      }

      v69 = *(v0 + 128);
      v70 = *(v0 + 112);
      v71 = *(v0 + 96);
      v72 = sub_1D1E6709C();
      __swift_project_value_buffer(v72, qword_1EE0813C8);

      v73 = v71;
      v74 = sub_1D1E6707C();
      v75 = sub_1D1E6833C();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = *(v0 + 208);
        v150 = *(v0 + 192);
        v77 = *(v0 + 128);
        v78 = *(v0 + 104);
        v79 = *(v0 + 112);
        v141 = *(v0 + 96);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v153 = v81;
        *v80 = 136315650;
        *(v80 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v153);
        *(v80 + 12) = 2080;

        v82 = sub_1D1B1312C(v78, v79, &v153);

        *(v80 + 14) = v82;
        *(v80 + 22) = 2080;
        v83 = [v141 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v84 = sub_1D1E68FAC();
        v86 = v85;
        v144(v76, v150);
        v87 = sub_1D1B1312C(v84, v86, &v153);

        *(v80 + 24) = v87;
        _os_log_impl(&dword_1D16EC000, v74, v75, "%s W:{%s} HM:{%s} 0 matching devices", v80, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v81, -1, -1);
        MEMORY[0x1D3893640](v80, -1, -1);
      }

      else
      {
        v107 = *(v0 + 128);
        v108 = *(v0 + 112);
      }

      v109 = *(v0 + 248);
      sub_1D1BFA920(v109, *(v0 + 88), type metadata accessor for MatterStateSnapshot);
      sub_1D1BFA9A4(v109, type metadata accessor for MatterStateSnapshot);
    }
  }

  else
  {
    v34 = *(v0 + 216);
    v35 = *(v0 + 192);
    v36 = *(v0 + 200);
    swift_endAccess();
    v37 = *(v36 + 8);
    v37(v34, v35);
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 128);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);
    v41 = sub_1D1E6709C();
    __swift_project_value_buffer(v41, qword_1EE0813C8);

    v42 = v40;
    v43 = sub_1D1E6707C();
    v44 = sub_1D1E6833C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 208);
      v146 = *(v0 + 192);
      v46 = *(v0 + 128);
      v48 = *(v0 + 104);
      v47 = *(v0 + 112);
      v140 = *(v0 + 96);
      v49 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v153 = v149;
      *v49 = 136315650;
      *(v49 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v153);
      v145 = v37;
      *(v49 + 12) = 2080;

      v50 = sub_1D1B1312C(v48, v47, &v153);

      *(v49 + 14) = v50;
      *(v49 + 22) = 2080;
      v51 = [v140 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v52 = sub_1D1E68FAC();
      v54 = v53;
      v145(v45, v146);
      v55 = sub_1D1B1312C(v52, v54, &v153);

      *(v49 + 24) = v55;
      _os_log_impl(&dword_1D16EC000, v43, v44, "%s W:{%s} HM:{%s} failed to find MatterStateSnapshot", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v149, -1, -1);
      MEMORY[0x1D3893640](v49, -1, -1);
    }

    else
    {
      v56 = *(v0 + 128);
      v57 = *(v0 + 112);
    }

    if (qword_1EE07D498 != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 88);
    v59 = __swift_project_value_buffer(*(v0 + 224), qword_1EE07D4A0);
    sub_1D1BFA920(v59, v58, type metadata accessor for MatterStateSnapshot);
  }

  v61 = *(v0 + 240);
  v60 = *(v0 + 248);
  v63 = *(v0 + 208);
  v62 = *(v0 + 216);
  v65 = *(v0 + 176);
  v64 = *(v0 + 184);
  v66 = *(v0 + 152);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_1D1BF154C()
{
  v1 = v0[36];
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.Monitor.Matter", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v10 = v0[21];
  v11 = v0[18];

  (*(v10 + 16))(v8, v7, v9);
  v12 = sub_1D1E6705C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[37] = sub_1D1E6704C();
  v15 = swift_task_alloc();
  v0[38] = v15;
  *v15 = v0;
  v15[1] = sub_1D1BF16DC;
  v16 = v0[34];
  v17 = v0[15];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[14];

  return WidgetManager.monitorState(for:widgetIdentifier:kind:)(v16, v19, v20, v17, v18);
}

uint64_t sub_1D1BF16DC()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1D1BF1DD8;
  }

  else
  {
    v3 = sub_1D1BF17F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1BF17F0()
{
  v1 = v0[34];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  sub_1D1760838(v0[36], "Widget.Monitor.Matter", 21, 2, v0[37]);

  (*(v4 + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF18B4, v5, 0);
}

uint64_t sub_1D1BF18B4()
{
  v66 = v0;
  v1 = v0[35];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[12];

  v6 = v5;

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();

  if (os_log_type_enabled(v7, v8))
  {
    v57 = v0[32];
    v59 = v0[33];
    v9 = v0[26];
    v55 = v0[24];
    v10 = v0[16];
    v60 = v0[17];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = v62;
    *v14 = 136315906;
    *(v14 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v64);
    *(v14 + 12) = 2080;

    v15 = sub_1D1B1312C(v11, v12, &v64);

    *(v14 + 14) = v15;
    *(v14 + 22) = 2080;
    v16 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v17 = sub_1D1E68FAC();
    v19 = v18;
    v57(v9, v55);
    v20 = sub_1D1B1312C(v17, v19, &v64);

    *(v14 + 24) = v20;
    *(v14 + 32) = 2080;
    v21 = MEMORY[0x1D3891260](v60, MEMORY[0x1E69E76D8]);
    v23 = sub_1D1B1312C(v21, v22, &v64);

    *(v14 + 34) = v23;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s W:{%s} HM:{%s} Native Matter Monitor command succeeded [%s]", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v62, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {
    v24 = v0[16];
    v25 = v0[14];
  }

  v26 = v0[31];
  v28 = v0[28];
  v27 = v0[29];
  v53 = v0[26];
  v29 = v0[19];
  v61 = v26;
  v63 = v0[18];
  v30 = v0[17];
  v31 = v0[12];
  v56 = v28;
  v58 = v0[11];

  v33 = sub_1D1785204(v32);

  v34 = v31;

  v36 = sub_1D1785204(v35);

  sub_1D1BFA920(v26, v29, type metadata accessor for MatterStateSnapshot);
  v54 = *(v27 + 56);
  v54(v29, 0, 1, v28);
  v52 = sub_1D1A2B978(v29, v33, v31, 2, v34, v36, 1);

  v37 = [v34 matterControllerID];
  v38 = sub_1D1E6781C();
  v40 = v39;

  v41 = [v34 uniqueIdentifier];
  sub_1D1E66A5C();

  v64 = v36;
  v65 = 1;
  sub_1D1A28CB8(v38, v40, v53, v52, &v64, v58);
  sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
  v42 = [v34 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1BFA920(v58, v29, type metadata accessor for MatterStateSnapshot);
  v54(v29, 0, 1, v56);
  swift_beginAccess();
  sub_1D1B0E5E8(v29, v53);
  swift_endAccess();
  sub_1D1BFA9A4(v61, type metadata accessor for MatterStateSnapshot);
  v44 = v0[30];
  v43 = v0[31];
  v46 = v0[26];
  v45 = v0[27];
  v48 = v0[22];
  v47 = v0[23];
  v49 = v0[19];

  v50 = v0[1];

  return v50();
}

uint64_t sub_1D1BF1DD8()
{
  v1 = v0[34];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  sub_1D1760838(v0[36], "Widget.Monitor.Matter", 21, 2, v0[37]);

  (*(v4 + 8))(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF1E9C, v5, 0);
}

uint64_t sub_1D1BF1E9C()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  sub_1D1BFA9A4(v0[31], type metadata accessor for MatterStateSnapshot);

  v7 = v0[1];
  v8 = v0[39];

  return v7();
}

uint64_t sub_1D1BF1F74(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[16] = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v13 = type metadata accessor for StateSnapshot(0);
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  v16 = *(*(type metadata accessor for StaticHome() - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[30] = v17;
  v18 = *(v17 - 8);
  v3[31] = v18;
  v19 = *(v18 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF224C, v2, 0);
}

uint64_t sub_1D1BF224C()
{
  v29 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  sub_1D1741C08(v5, v2, &qword_1EC642590, qword_1D1E71260);
  v6 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440) + 40));
  *(v0 + 52) = v6;
  sub_1D1741C08(v2, v1, &qword_1EC642590, qword_1D1E71260);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = *(v0 + 256);
  if (v7 == 1)
  {
    sub_1D1741A30(*(v0 + 256), &qword_1EC642590, qword_1D1E71260);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v10 = sub_1D1E66A1C();
    v9 = v13;
    (*(v12 + 8))(v8, v11);
  }

  *(v0 + 272) = v10;
  *(v0 + 280) = v9;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  *(v0 + 288) = __swift_project_value_buffer(v14, qword_1EE0813C8);

  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6835C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D1B1312C(v10, v9, &v27);
    *(v17 + 12) = 2080;
    v28 = v6;
    WidgetRefreshOptions.description.getter();
    v21 = sub_1D1B1312C(v19, v20, &v27);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v15, v16, "updateMinimalState(homeID:filtered:) HM:{%s} F:{%s}", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  *v22 = v0;
  v22[1] = sub_1D1BF253C;
  v23 = *(v0 + 264);
  v24 = *(v0 + 232);
  v25 = *(v0 + 72);

  return sub_1D1DB11A0(v24, v23, 1);
}

uint64_t sub_1D1BF253C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 280);
    v5 = *(v2 + 72);

    v6 = sub_1D1BF2AA0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 72);
    v6 = sub_1D1BF2664;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D1BF2664()
{
  v45 = v0;
  v1 = v0[38];
  v2 = v0[29];
  v3 = *(v0[9] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  v0[39] = v3;
  v4 = [v3 homes];
  sub_1D1821898();
  v5 = sub_1D1E67C1C();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = sub_1D174A6C4(sub_1D1BFA878, v6, v5);
  v0[40] = v7;

  sub_1D1BFA9A4(v2, type metadata accessor for StaticHome);
  if (v7)
  {
    v8 = v0[35];

    if (qword_1EC642488 != -1)
    {
      swift_once();
    }

    v9 = v0[25];
    v10 = v0[9];
    v11 = sub_1D1E6701C();
    v0[41] = __swift_project_value_buffer(v11, qword_1EC6BE2B8);
    v12 = v7;

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1BF2BE0, 0, 0);
  }

  else
  {
    v14 = v0[35];
    v13 = v0[36];

    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[35];
    if (v17)
    {
      v19 = v0[34];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136315138;
      v22 = sub_1D1B1312C(v19, v18, &v44);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_1D16EC000, v15, v16, "updateMinimalState(homeID:filtered:) HM:{%s} failed to find home", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {
    }

    v23 = v0[33];
    v24 = v0[30];
    v25 = v0[31];
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1BFA898(&qword_1EC64C7B0, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v27 = v26;
    sub_1D1741C08(v23, v26, &qword_1EC642590, qword_1D1E71260);
    (*(v25 + 56))(v27, 0, 4, v24);
    swift_willThrow();
    v28 = v0[32];
    v30 = v0[28];
    v29 = v0[29];
    v31 = v0[24];
    v32 = v0[25];
    v34 = v0[22];
    v33 = v0[23];
    v35 = v0[21];
    v38 = v0[18];
    v39 = v0[17];
    v40 = v0[15];
    v41 = v0[14];
    v42 = v0[11];
    v43 = v0[10];
    sub_1D1741A30(v0[33], &qword_1EC642590, qword_1D1E71260);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_1D1BF2AA0()
{
  v17 = v0[38];
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v0[18];
  v12 = v0[17];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[10];
  sub_1D1741A30(v0[33], &qword_1EC642590, qword_1D1E71260);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1BF2BE0()
{
  v1 = v0[41];
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = v0[25];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.FirstSnapshot", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v14 = v0[16];
  v23 = v0[15];
  v24 = v0[9];

  v15 = *(v11 + 16);
  v0[42] = v15;
  v0[43] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v10, v9, v12);
  v16 = sub_1D1E6705C();
  v0[44] = v16;
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[45] = sub_1D1E6704C();
  *v13 = v7;
  swift_storeEnumTagMultiPayload();
  v19 = v7;
  v20 = v8;
  v21 = [v19 uniqueIdentifier];
  sub_1D1E66A5C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF2D98, v24, 0);
}

uint64_t sub_1D1BF2D98()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1D1742188(v0[15]), (v4 & 1) != 0))
  {
    sub_1D1BFA920(*(v2 + 56) + *(v0[27] + 72) * v3, v0[11], type metadata accessor for StateSnapshot);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[26];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];
  v11 = *(v0[27] + 56);
  v0[46] = v11;
  v11(v10, v5, 1, v6);
  swift_endAccess();
  v12 = *(v9 + 8);
  v0[47] = v12;
  v0[48] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF2EBC, 0, 0);
}

uint64_t sub_1D1BF2EBC()
{
  if ((*(v0 + 52) & 0x61) != 0)
  {
    if (qword_1EE07CD90 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE07CD98;
  }

  else
  {
    v1 = sub_1D179B6E8(&unk_1F4D5FF60);
    swift_arrayDestroy();
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 224);
  v6 = *(v0 + 160);
  v13 = *(v0 + 152);
  v14 = *(v0 + 200);
  v7 = *(v0 + 144);
  v8 = *(v0 + 88);
  v12 = *(v0 + 72);
  v9 = *(v0 + 320);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v7, v4, v9, v8, v1, v5);
  sub_1D1760838(v3, "Widget.FirstSnapshot", 20, 2, v2);

  v10 = *(v6 + 8);
  *(v0 + 392) = v10;
  *(v0 + 400) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v14, v13);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF305C, v12, 0);
}

uint64_t sub_1D1BF305C()
{
  v82 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 320);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 376);
    v77 = *(v0 + 384);
    v6 = *(v0 + 320);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81 = v10;
    *v9 = 136315138;
    v11 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v5(v7, v8);
    v15 = sub_1D1B1312C(v12, v14, &v81);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateMinimalState(homeID:filtered:) HM:{%s} generated snapshot", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v16 = *(v0 + 52);
  if ((v16 & 0x1000001) != 0)
  {
    v17 = *(v0 + 288);
    v18 = *(v0 + 320);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 376);
      v78 = *(v0 + 384);
      v22 = *(v0 + 320);
      v23 = *(v0 + 112);
      v24 = *(v0 + 96);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v81 = v26;
      *v25 = 136315138;
      v27 = [v22 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v28 = sub_1D1E68FAC();
      v30 = v29;
      v21(v23, v24);
      v31 = sub_1D1B1312C(v28, v30, &v81);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1D16EC000, v19, v20, "updateMinimalState(homeID:filtered:) HM:{%s} includes Matter update", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    v32 = *(v0 + 184);
    v33 = *(v0 + 72);
    v34 = *(v0 + 320);

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1BF3778, 0, 0);
  }

  else if ((v16 & 0x1000) != 0 && (v35 = *(v0 + 72), v36 = sub_1D1DB0D74(*(v0 + 320)), (*(v0 + 424) = v36) != 0))
  {
    v38 = v36;
    v39 = v37;
    v40 = *(v0 + 288);
    v41 = *(v0 + 320);
    v42 = sub_1D1E6707C();
    v43 = sub_1D1E6835C();

    if (os_log_type_enabled(v42, v43))
    {
      v75 = *(v0 + 376);
      v79 = *(v0 + 384);
      v44 = *(v0 + 320);
      v45 = *(v0 + 112);
      v46 = *(v0 + 96);
      v47 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81 = v73;
      *v47 = 136315138;
      v48 = [v44 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v49 = sub_1D1E68FAC();
      v51 = v50;
      v75(v45, v46);
      v52 = sub_1D1B1312C(v49, v51, &v81);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D16EC000, v42, v43, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1D3893640](v73, -1, -1);
      MEMORY[0x1D3893640](v47, -1, -1);
    }

    v53 = *(v0 + 176);
    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v54 = swift_task_alloc();
    *(v0 + 432) = v54;
    *v54 = v0;
    v54[1] = sub_1D1BF3EC8;
    v55 = *(v0 + 328);
    v56 = *(v0 + 176);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v56, v55, v38, v39);
  }

  else
  {
    v57 = *(v0 + 320);
    v58 = *(v0 + 224);
    v59 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 264), &qword_1EC642590, qword_1D1E71260);

    sub_1D1BFA920(v58, v59, type metadata accessor for StateSnapshot);
    v61 = *(v0 + 256);
    v60 = *(v0 + 264);
    v62 = *(v0 + 232);
    v64 = *(v0 + 192);
    v63 = *(v0 + 200);
    v65 = *(v0 + 176);
    v66 = *(v0 + 184);
    v67 = *(v0 + 168);
    v70 = *(v0 + 144);
    v71 = *(v0 + 136);
    v72 = *(v0 + 120);
    v74 = *(v0 + 112);
    v76 = *(v0 + 88);
    v80 = *(v0 + 80);
    sub_1D1BFA9A4(*(v0 + 224), type metadata accessor for StateSnapshot);

    v68 = *(v0 + 8);

    return v68();
  }
}

uint64_t sub_1D1BF3778()
{
  v1 = *(v0 + 328);
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.BuildMatterDeviceCache", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 336);
  v10 = *(v0 + 320);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 152);

  v9(v11, v12, v13);
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 408) = sub_1D1E6704C();
  *(v0 + 40) = sub_1D179C134(&unk_1F4D600A8);
  *(v0 + 48) = 2;
  v16 = swift_task_alloc();
  *(v0 + 416) = v16;
  *v16 = v0;
  v16[1] = sub_1D1BF390C;
  v17 = *(v0 + 72);

  return sub_1D1DB3224(v10, (v0 + 40));
}

uint64_t sub_1D1BF390C()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v5 = *v0;

  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF3A24, 0, 0);
}

uint64_t sub_1D1BF3A24()
{
  v1 = v0[50];
  v2 = v0[49];
  v3 = v0[40];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[9];
  sub_1D1760838(v0[41], "Widget.BuildMatterDeviceCache", 29, 2, v0[51]);

  v2(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF3AEC, v6, 0);
}

uint64_t sub_1D1BF3AEC()
{
  v46 = v0;
  if ((*(v0 + 52) & 0x1001) != 0 && (v1 = *(v0 + 72), v2 = sub_1D1DB0D74(*(v0 + 320)), (*(v0 + 424) = v2) != 0))
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0 + 288);
    v7 = *(v0 + 320);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v41 = *(v0 + 376);
      v43 = *(v0 + 384);
      v10 = *(v0 + 320);
      v11 = *(v0 + 112);
      v12 = *(v0 + 96);
      v13 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v13 = 136315138;
      v14 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v15 = sub_1D1E68FAC();
      v17 = v16;
      v41(v11, v12);
      v18 = sub_1D1B1312C(v15, v17, &v45);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D16EC000, v8, v9, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D3893640](v39, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v19 = *(v0 + 176);
    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v20 = swift_task_alloc();
    *(v0 + 432) = v20;
    *v20 = v0;
    v20[1] = sub_1D1BF3EC8;
    v21 = *(v0 + 328);
    v22 = *(v0 + 176);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v22, v21, v4, v5);
  }

  else
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 224);
    v26 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 264), &qword_1EC642590, qword_1D1E71260);

    sub_1D1BFA920(v25, v26, type metadata accessor for StateSnapshot);
    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    v29 = *(v0 + 232);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v32 = *(v0 + 176);
    v33 = *(v0 + 184);
    v34 = *(v0 + 168);
    v36 = *(v0 + 144);
    v37 = *(v0 + 136);
    v38 = *(v0 + 120);
    v40 = *(v0 + 112);
    v42 = *(v0 + 88);
    v44 = *(v0 + 80);
    sub_1D1BFA9A4(*(v0 + 224), type metadata accessor for StateSnapshot);

    v35 = *(v0 + 8);

    return v35();
  }
}

void sub_1D1BF3EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = a1;

  v7 = v3[53];
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v4[49];
    v8 = v4[50];
    v10 = v4[22];
    v11 = v4[19];
    v12 = v4[9];
    swift_unknownObjectRelease();
    v9(v10, v11);

    MEMORY[0x1EEE6DFA0](sub_1D1BF4048, v12, 0);
  }
}

uint64_t sub_1D1BF4048()
{
  v80 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 320);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 376);
    v76 = *(v0 + 384);
    v6 = *(v0 + 320);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v79 = v10;
    *v9 = 136315138;
    v11 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v5(v7, v8);
    v15 = sub_1D1B1312C(v12, v14, &v79);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateMinimalState(homeID:filtered:) HM:{%s} predictions fetched", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v16 = *(v0 + 328);
  v17 = *(v0 + 168);
  sub_1D1E66FCC();
  v18 = sub_1D1E66FFC();
  v19 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v20 = *(v0 + 168);
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v18, v19, v22, "Widget.MergedPredictionsSnapshot", "", v21, 2u);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v24 = *(v0 + 344);
  v23 = *(v0 + 352);
  v25 = *(v0 + 336);
  v26 = v18;
  v27 = *(v0 + 52);
  v60 = *(v0 + 440);
  v61 = *(v0 + 224);
  v67 = *(v0 + 216);
  v70 = *(v0 + 208);
  v73 = *(v0 + 368);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v31 = *(v0 + 136);
  v59 = *(v0 + 128);
  v32 = *(v0 + 80);

  v64 = v27 & 0x61;
  v25(v28, v29, v30);
  v33 = *(v23 + 48);
  v34 = *(v23 + 52);
  swift_allocObject();
  v77 = sub_1D1E6704C();
  *v31 = v60;
  swift_storeEnumTagMultiPayload();
  sub_1D1BFA920(v61, v32, type metadata accessor for StateSnapshot);
  v73(v32, 0, 1, v70);
  v35 = *(v0 + 440);
  v36 = *(v0 + 312);
  if (v64)
  {
    v37 = qword_1EE07CD90;
    v38 = v36;

    if (v37 != -1)
    {
      swift_once();
    }

    v39 = qword_1EE07CD98;
  }

  else
  {
    v40 = v36;

    v39 = sub_1D179B6E8(&unk_1F4D65038);
    swift_arrayDestroy();
  }

  v41 = *(v0 + 424);
  v65 = *(v0 + 440);
  v68 = *(v0 + 392);
  v42 = *(v0 + 328);
  v43 = *(v0 + 312);
  v71 = *(v0 + 264);
  v74 = *(v0 + 400);
  v62 = *(v0 + 168);
  v44 = *(v0 + 152);
  v45 = *(v0 + 136);
  v46 = *(v0 + 80);
  v47 = *(v0 + 56);
  v48 = *(v0 + 320);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v45, v43, v48, v46, v39, v47);
  sub_1D1760838(v42, "Widget.MergedPredictionsSnapshot", 32, 2, v77);

  swift_unknownObjectRelease();

  v68(v62, v44);
  sub_1D1741A30(v71, &qword_1EC642590, qword_1D1E71260);
  v50 = *(v0 + 256);
  v49 = *(v0 + 264);
  v51 = *(v0 + 232);
  v53 = *(v0 + 192);
  v52 = *(v0 + 200);
  v54 = *(v0 + 176);
  v55 = *(v0 + 184);
  v56 = *(v0 + 168);
  v63 = *(v0 + 144);
  v66 = *(v0 + 136);
  v69 = *(v0 + 120);
  v72 = *(v0 + 112);
  v75 = *(v0 + 88);
  v78 = *(v0 + 80);
  sub_1D1BFA9A4(*(v0 + 224), type metadata accessor for StateSnapshot);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1D1BF45A8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[10] = updated;
  v5 = *(updated - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[14] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v3[15] = v8;
  v3[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1BF46AC, v8, v7);
}

uint64_t sub_1D1BF46AC()
{
  v1 = *(v0 + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
  *(v0 + 136) = v2;
  v3 = *(v1 + v2[9]);
  v4 = (v1 + v2[12]);
  v5 = *(v1 + v2[14]);
  *(v0 + 208) = v5;
  v6 = *v4;
  *(v0 + 144) = *v4;
  v7 = v4[1];
  *(v0 + 152) = v7;
  v8 = v4[2];
  *(v0 + 160) = v8;
  v9 = v4[3];
  *(v0 + 168) = v9;
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  *v10 = v0;
  v10[1] = sub_1D1BF47E0;
  v11 = *(v0 + 104);
  v12 = *(v0 + 72);

  return sub_1D1BEEFF0(v11, v6, v7, v8, v9, v3, v5);
}

uint64_t sub_1D1BF47E0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1D1BF4B28;
  }

  else
  {
    v7 = sub_1D1BF491C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1BF491C()
{
  v1 = *(*(v0 + 64) + *(*(v0 + 136) + 40));
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_1D1BF49EC;
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 208);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);

  return sub_1D1BEF9D4(v8, v5, v6, v3, v4, v1, v7);
}

uint64_t sub_1D1BF49EC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1D1BF4D94;
  }

  else
  {
    v7 = sub_1D1BF4B9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D1BF4B28()
{
  v1 = v0[14];

  v2 = v0[23];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1BF4B9C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D1E6F900;
  v10 = (v9 + v8);
  *v10 = v6;
  swift_storeEnumTagMultiPayload();
  sub_1D1BFA920(v2, v10 + v7, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BFA920(v3, v10 + 2 * v7, type metadata accessor for StateSnapshot.UpdateType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v6;
  v12 = v6;
  v13 = sub_1D1ABB498(v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_setDeallocating();
  v14 = *(inited + 16);
  swift_arrayDestroy();
  sub_1D1BFA9A4(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot.UpdateType);

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_1D1BF4D94()
{
  v2 = v0[13];
  v1 = v0[14];

  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot.UpdateType);
  v3 = v0[25];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1BF4E24(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v6 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v8 = sub_1D1E66FDC();
  v3[27] = v8;
  v9 = *(v8 - 8);
  v3[28] = v9;
  v10 = *(v9 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
  v3[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v13 = type metadata accessor for StateSnapshot(0);
  v3[33] = v13;
  v14 = *(v13 - 8);
  v3[34] = v14;
  v15 = *(v14 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v16 = sub_1D1E66A7C();
  v3[39] = v16;
  v17 = *(v16 - 8);
  v3[40] = v17;
  v18 = *(v17 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v20 = *(*(type metadata accessor for StaticHome() - 8) + 64) + 15;
  v21 = swift_task_alloc();
  v3[48] = v21;
  v22 = swift_task_alloc();
  v3[49] = v22;
  *v22 = v3;
  v22[1] = sub_1D1BF5194;

  return sub_1D1DB11A0(v21, a2, 1);
}

uint64_t sub_1D1BF5194()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1D1BF5BD0;
  }

  else
  {
    v6 = sub_1D1BF52C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1BF52C0()
{
  v105 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(*(v0 + 176) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  *(v0 + 408) = v3;
  v4 = [v3 homes];
  sub_1D1821898();
  v5 = sub_1D1E67C1C();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = sub_1D174A6C4(sub_1D1BFAA84, v6, v5);
  *(v0 + 416) = v7;

  sub_1D1BFA9A4(v2, type metadata accessor for StaticHome);
  if (v7)
  {
    v8 = *(v0 + 344);
    v9 = *(v0 + 176);
    v10 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_beginAccess();
    v11 = *(v9 + 112);
    if (*(v11 + 16) && (v12 = sub_1D1742188(*(v0 + 344)), (v13 & 1) != 0))
    {
      sub_1D1BFA920(*(v11 + 56) + *(*(v0 + 272) + 72) * v12, *(v0 + 376), type metadata accessor for StateSnapshot);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(v0 + 376);
    v16 = *(v0 + 344);
    v17 = *(v0 + 312);
    v18 = *(v0 + 320);
    v19 = *(v0 + 264);
    v20 = *(v0 + 272);
    v21 = *(v20 + 56);
    *(v0 + 424) = v21;
    v21(v15, v14, 1, v19);
    swift_endAccess();
    v22 = *(v18 + 8);
    *(v0 + 432) = v22;
    *(v0 + 440) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v16, v17);
    v23 = *(v20 + 48);
    if (v23(v15, 1, v19) == 1)
    {
      v25 = *(v0 + 248);
      v24 = *(v0 + 256);
      v26 = *(v0 + 224);
      v102 = *(v0 + 216);
      v27 = *(v0 + 168);
      sub_1D1741C08(v27, v24, &qword_1EC642590, qword_1D1E71260);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v29 = (v27 + v28[12]);
      v31 = *v29;
      v30 = v29[1];
      *(v0 + 448) = v30;
      v33 = v29[2];
      v32 = v29[3];
      *(v0 + 456) = v32;
      v34 = *(v27 + v28[13]);
      v35 = v28[15];
      v36 = v25[11];
      *(v0 + 552) = v36;
      (*(v26 + 16))(v24 + v36, v27 + v35, v102);
      v37 = (v24 + v25[9]);
      *v37 = v31;
      v37[1] = v30;
      v37[2] = v33;
      v37[3] = v32;
      *(v24 + v25[10]) = v34;

      v38 = swift_task_alloc();
      *(v0 + 464) = v38;
      *v38 = v0;
      v38[1] = sub_1D1BF5D18;
      v39 = *(v0 + 296);
      v40 = *(v0 + 256);
      v41 = *(v0 + 176);

      return sub_1D1BF1F74(v39, v40);
    }

    else
    {
      v58 = *(v0 + 368);
      v59 = *(v0 + 264);
      sub_1D1741C08(*(v0 + 376), v58, &unk_1EC649E30, &unk_1D1E91250);
      v60 = v23(v58, 1, v59);
      if (v60 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1D1AFBD48(*(v0 + 368), *(v0 + 296), type metadata accessor for StateSnapshot);
        v63 = *(v0 + 168);
        sub_1D1AFBD48(*(v0 + 296), *(v0 + 304), type metadata accessor for StateSnapshot);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
        *(v0 + 480) = v64;
        v65 = *(v63 + *(v64 + 56));
        *(v0 + 556) = v65;
        if (v65 == 1)
        {
          v66 = *(v0 + 416);
          v68 = *(v0 + 168);
          v67 = *(v0 + 176);
          v69 = *(v68 + *(v64 + 36));
          v70 = v64;
          v71 = swift_task_alloc();
          *(v71 + 16) = v68;
          *(v71 + 24) = v66;
          v72 = sub_1D1892678(sub_1D1BFAA6C, v71, v69);

          swift_beginAccess();
          sub_1D1951664(v72);
          swift_endAccess();

          v73 = *(v68 + *(v70 + 40));
          v74 = swift_task_alloc();
          *(v74 + 16) = v68;
          *(v74 + 24) = v66;
          v75 = sub_1D1892678(sub_1D1BFA900, v74, v73);

          swift_beginAccess();
          sub_1D1951664(v75);
          swift_endAccess();
        }

        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v76 = *(v0 + 416);
        v77 = sub_1D1E6709C();
        *(v0 + 488) = __swift_project_value_buffer(v77, qword_1EE0813C8);
        v78 = v76;
        v79 = sub_1D1E6707C();
        v80 = sub_1D1E6835C();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = *(v0 + 432);
          v103 = *(v0 + 440);
          v82 = *(v0 + 416);
          v83 = *(v0 + 336);
          v84 = *(v0 + 312);
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v104 = v86;
          *v85 = 136315138;
          v87 = [v82 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
          v88 = sub_1D1E68FAC();
          v90 = v89;
          v81(v83, v84);
          v91 = sub_1D1B1312C(v88, v90, &v104);

          *(v85 + 4) = v91;
          _os_log_impl(&dword_1D16EC000, v79, v80, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v86);
          MEMORY[0x1D3893640](v86, -1, -1);
          MEMORY[0x1D3893640](v85, -1, -1);
        }

        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v92 = *(v0 + 240);
        v93 = sub_1D1E6701C();
        *(v0 + 496) = __swift_project_value_buffer(v93, qword_1EC6BE2B8);
        sub_1D1E66FCC();
        v60 = sub_1D1BF5EA0;
        v61 = 0;
        v62 = 0;
      }

      return MEMORY[0x1EEE6DFA0](v60, v61, v62);
    }
  }

  else
  {
    v43 = *(v0 + 168);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1BFA898(&qword_1EC64C7B0, type metadata accessor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v45 = v44;
    sub_1D1741C08(v43, v44, &qword_1EC642590, qword_1D1E71260);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v46 - 8) + 56))(v45, 0, 4, v46);
    swift_willThrow();
    v48 = *(v0 + 376);
    v47 = *(v0 + 384);
    v50 = *(v0 + 360);
    v49 = *(v0 + 368);
    v51 = *(v0 + 344);
    v52 = *(v0 + 352);
    v54 = *(v0 + 328);
    v53 = *(v0 + 336);
    v56 = *(v0 + 296);
    v55 = *(v0 + 304);
    v94 = *(v0 + 288);
    v95 = *(v0 + 280);
    v96 = *(v0 + 256);
    v97 = *(v0 + 240);
    v98 = *(v0 + 232);
    v99 = *(v0 + 208);
    v100 = *(v0 + 200);
    v101 = *(v0 + 184);

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_1D1BF5BD0()
{
  v21 = v0[50];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[37];
  v9 = v0[38];
  v13 = v0[36];
  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1BF5D18()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v14 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_1D1BF7474;
  }

  else
  {
    v6 = *(v2 + 552);
    v8 = *(v2 + 448);
    v7 = *(v2 + 456);
    v9 = *(v2 + 256);
    v10 = *(v2 + 216);
    v11 = *(v2 + 224);
    v12 = *(v2 + 176);
    sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);

    (*(v11 + 8))(v9 + v6, v10);
    v5 = sub_1D1BF70AC;
    v4 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1BF5EA0()
{
  v1 = v0[62];
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = v0[30];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v6, "Widget.MergedSnapshotUpdate", "", v5, 2u);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v7 = v0[52];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[27];
  v11 = v0[28];

  (*(v11 + 16))(v9, v8, v10);
  v12 = sub_1D1E6705C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[63] = sub_1D1E6704C();
  v15 = swift_task_alloc();
  v0[64] = v15;
  *v15 = v0;
  v15[1] = sub_1D1BF6014;
  v16 = v0[21];
  v17 = v0[22];

  return sub_1D1BF45A8(v7, v16);
}

uint64_t sub_1D1BF6014(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 512);
  v7 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {
    v5 = sub_1D1BF640C;
  }

  else
  {
    v5 = sub_1D1BF612C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1BF612C()
{
  v1 = *(v0 + 520);
  v2 = sub_1D1BFA920(*(v0 + 304), *(v0 + 280), type metadata accessor for StateSnapshot);
  v36 = *(v1 + 16);
  v37 = v1;
  if (v36)
  {
    v5 = 0;
    v6 = *(v0 + 192);
    v34 = v6;
    v35 = *(v0 + 480);
    v33 = *(v0 + 272) + 56;
    while (v5 < *(v37 + 16))
    {
      v11 = *(v0 + 424);
      v12 = *(v0 + 360);
      v13 = *(v0 + 280);
      v14 = *(v0 + 264);
      v16 = *(v0 + 200);
      v15 = *(v0 + 208);
      v17 = *(v0 + 168);
      sub_1D1BFA920(*(v0 + 520) + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v5, v15, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1BFA920(v15, v16, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1AFBD48(v13, v12, type metadata accessor for StateSnapshot);
      v11(v12, 0, 1, v14);
      v19 = *(v0 + 408);
      v18 = *(v0 + 416);
      if ((*(v17 + *(v35 + 52)) & 0x61) != 0)
      {
        v20 = qword_1EE07CD90;
        v21 = v18;
        v22 = v19;
        if (v20 != -1)
        {
          swift_once();
        }

        v9 = qword_1EE07CD98;
      }

      else
      {
        v7 = v18;
        v8 = v19;
        v9 = sub_1D179B6E8(&unk_1F4D65068);
        swift_arrayDestroy();
      }

      ++v5;
      v10 = *(v0 + 208);
      StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(*(v0 + 200), *(v0 + 408), *(v0 + 416), *(v0 + 360), v9, *(v0 + 280));
      v2 = sub_1D1BFA9A4(v10, type metadata accessor for StateSnapshot.UpdateType);
      if (v36 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v23 = *(v0 + 520);
    v24 = *(v0 + 496);
    v25 = *(v0 + 504);
    v27 = *(v0 + 280);
    v26 = *(v0 + 288);
    v28 = *(v0 + 240);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v31 = *(v0 + 176);

    sub_1D1AFBD48(v27, v26, type metadata accessor for StateSnapshot);
    sub_1D1760838(v24, "Widget.MergedSnapshotUpdate", 27, 2, v25);

    (*(v30 + 8))(v28, v29);
    v2 = sub_1D1BF6650;
    v3 = v31;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D1BF640C()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  sub_1D1760838(v0[62], "Widget.MergedSnapshotUpdate", 27, 2, v0[63]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF64C4, v4, 0);
}

uint64_t sub_1D1BF64C4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot);
  v23 = *(v0 + 528);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v15 = *(v0 + 288);
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);
  v18 = *(v0 + 240);
  v19 = *(v0 + 232);
  v20 = *(v0 + 208);
  v21 = *(v0 + 200);
  v22 = *(v0 + 184);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1BF6650()
{
  v73 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 416);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 432);
    v69 = *(v0 + 440);
    v7 = *(v0 + 416);
    v8 = *(v0 + 336);
    v9 = *(v0 + 312);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v72 = v11;
    *v10 = 136315138;
    v12 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v13 = sub_1D1E68FAC();
    v15 = v14;
    v6(v8, v9);
    v16 = sub_1D1B1312C(v13, v15, &v72);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1D16EC000, v3, v4, "updateDetailedState(detailed:) HM:{%s} updated snapshot", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v17 = v11;
    v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v70 = *(v0 + 480);
  v18 = *(v0 + 424);
  v19 = *(v0 + 352);
  v20 = *(v0 + 336);
  v21 = *(v0 + 288);
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = [*(v0 + 416) v5[61]];
  sub_1D1E66A5C();

  sub_1D1BFA920(v21, v19, type metadata accessor for StateSnapshot);
  v18(v19, 0, 1, v22);
  swift_beginAccess();
  sub_1D1B0D344(v19, v20);
  swift_endAccess();
  if ((*(v25 + *(v70 + 52)) & 0x1000001) != 0)
  {
    if (*(v0 + 556) == 1)
    {
      v27 = *(v0 + 528);
      v28 = *(v0 + 416);
      v30 = *(v0 + 168);
      v29 = *(v0 + 176);
      v31 = *(v30 + *(*(v0 + 480) + 44));
      v32 = swift_task_alloc();
      *(v32 + 16) = v30;
      *(v32 + 24) = v28;
      v33 = sub_1D1892878(sub_1D1BFA8E0, v32, v31);

      swift_beginAccess();
      sub_1D195168C(v33);
      swift_endAccess();
    }

    v34 = *(v0 + 480);
    v35 = *(v0 + 416);
    v36 = *(v0 + 328);
    v37 = *(v0 + 168);
    v38 = [v35 uniqueIdentifier];
    sub_1D1E66A5C();

    v39 = (v37 + *(v34 + 48));
    v40 = *(v37 + *(v34 + 44));
    v41 = *v39;
    v42 = v39[1];
    v43 = v39[2];
    v44 = v39[3];
    v45 = swift_task_alloc();
    *(v0 + 536) = v45;
    *v45 = v0;
    v45[1] = sub_1D1BF6BBC;
    v46 = *(v0 + 556);
    v48 = *(v0 + 176);
    v47 = *(v0 + 184);

    return sub_1D1BF0558(v47, v35, v41, v42, v43, v44, v46, v40);
  }

  else
  {
    v51 = *(v0 + 376);
    v50 = *(v0 + 384);
    v52 = *(v0 + 360);
    v53 = *(v0 + 368);
    v54 = *(v0 + 344);
    v55 = *(v0 + 352);
    v60 = *(v0 + 336);
    v61 = *(v0 + 328);
    v56 = *(v0 + 304);
    v57 = *(v0 + 288);
    v62 = *(v0 + 296);
    v63 = *(v0 + 280);
    v64 = *(v0 + 256);
    v65 = *(v0 + 240);
    v66 = *(v0 + 232);
    v67 = *(v0 + 208);
    v68 = *(v0 + 200);
    v71 = *(v0 + 184);
    v58 = *(v0 + 160);

    sub_1D1741A30(v51, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1AFBD48(v57, v58, type metadata accessor for StateSnapshot);
    sub_1D1BFA9A4(v56, type metadata accessor for StateSnapshot);

    v59 = *(v0 + 8);

    return v59();
  }
}

uint64_t sub_1D1BF6BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = *(v2 + 440);
    v5 = *(v2 + 176);
    (*(v2 + 432))(*(v2 + 328), *(v2 + 312));
    v6 = sub_1D1BF6F0C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 176);
    v6 = sub_1D1BF6CEC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1D1BF6CEC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = type metadata accessor for MatterStateSnapshot();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  swift_beginAccess();
  sub_1D1B0E5E8(v3, v1);
  swift_endAccess();
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v16 = *(v0 + 336);
  v17 = *(v0 + 328);
  v11 = *(v0 + 304);
  v12 = *(v0 + 288);
  v18 = *(v0 + 296);
  v19 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 208);
  v24 = *(v0 + 200);
  v25 = *(v0 + 184);
  v13 = *(v0 + 160);

  sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1AFBD48(v12, v13, type metadata accessor for StateSnapshot);
  sub_1D1BFA9A4(v11, type metadata accessor for StateSnapshot);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1BF6F0C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);

  sub_1D1BFA9A4(v3, type metadata accessor for StateSnapshot);
  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot);
  v24 = *(v0 + 544);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v16 = *(v0 + 288);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v21 = *(v0 + 208);
  v22 = *(v0 + 200);
  v23 = *(v0 + 184);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1BF70AC()
{
  v36 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 168);
  sub_1D1AFBD48(*(v0 + 296), *(v0 + 304), type metadata accessor for StateSnapshot);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
  *(v0 + 480) = v3;
  v4 = *(v2 + *(v3 + 56));
  *(v0 + 556) = v4;
  if (v4 == 1)
  {
    v5 = *(v0 + 416);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v7 + *(v3 + 36));
    v9 = v3;
    v10 = swift_task_alloc();
    *(v10 + 16) = v7;
    *(v10 + 24) = v5;
    v11 = sub_1D1892678(sub_1D1BFAA6C, v10, v8);

    swift_beginAccess();
    sub_1D1951664(v11);
    swift_endAccess();

    v12 = *(v7 + *(v9 + 40));
    v13 = swift_task_alloc();
    *(v13 + 16) = v7;
    *(v13 + 24) = v5;
    v14 = sub_1D1892678(sub_1D1BFA900, v13, v12);

    swift_beginAccess();
    sub_1D1951664(v14);
    swift_endAccess();
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 416);
  v16 = sub_1D1E6709C();
  *(v0 + 488) = __swift_project_value_buffer(v16, qword_1EE0813C8);
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 432);
    v34 = *(v0 + 440);
    v21 = *(v0 + 416);
    v22 = *(v0 + 336);
    v23 = *(v0 + 312);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136315138;
    v26 = [v21 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v27 = sub_1D1E68FAC();
    v29 = v28;
    v20(v22, v23);
    v30 = sub_1D1B1312C(v27, v29, &v35);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1D16EC000, v18, v19, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1D3893640](v25, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 240);
  v32 = sub_1D1E6701C();
  *(v0 + 496) = __swift_project_value_buffer(v32, qword_1EC6BE2B8);
  sub_1D1E66FCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF5EA0, 0, 0);
}

uint64_t sub_1D1BF7474()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 376);
  v5 = *(v0 + 256);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);

  (*(v7 + 8))(v5 + v1, v6);
  v28 = *(v0 + 472);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v17 = *(v0 + 296);
  v16 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 280);
  v22 = *(v0 + 256);
  v23 = *(v0 + 240);
  v24 = *(v0 + 232);
  v25 = *(v0 + 208);
  v26 = *(v0 + 200);
  v27 = *(v0 + 184);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1BF7630(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF77B0, v2, 0);
}

uint64_t sub_1D1BF77B0()
{
  v27 = v0;
  v1 = **(v0 + 56);
  *(v0 + 168) = v1;
  v26 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 176) = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v0 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
      {
        v8 = [v7 actionSet];
        v9 = [v8 home];
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          type metadata accessor for MatterExecuteRequest();
          swift_dynamicCastClass();
LABEL_21:

          goto LABEL_14;
        }

        v12 = [v11 characteristic];
        v13 = [v12 service];

        if (!v13)
        {
          goto LABEL_21;
        }

        v8 = [v13 accessory];

        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = [v8 home];
      }

      v10 = v9;

      if (v10)
      {
        break;
      }

LABEL_14:
      ++v4;
      if (v0 == v2)
      {
        goto LABEL_28;
      }
    }

    MEMORY[0x1D3891220]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v3 = v26;
  }

  while (v0 != v2);
LABEL_28:
  v15 = sub_1D1785278(v3);
  v25[23] = v15;

  if ((v15 & 0xC000000000000001) != 0)
  {
    if (sub_1D1E6873C() < 2)
    {
      goto LABEL_37;
    }
  }

  else if (*(v15 + 16) < 2)
  {
    goto LABEL_37;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE0813C8);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6833C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC6750, &v26);
    _os_log_impl(&dword_1D16EC000, v17, v18, "%s Write requested with accessories from multiple homes. This is undefined behavior.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

LABEL_37:
  v21 = swift_task_alloc();
  v25[24] = v21;
  *v21 = v25;
  v21[1] = sub_1D1BF7C20;
  v22 = v25[20];
  v23 = v25[8];

  return sub_1D1DC07C0(v22, v15, v23);
}

uint64_t sub_1D1BF7C20()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 64);

  if (v0)
  {
    v7 = sub_1D1BF8338;
  }

  else
  {
    v7 = sub_1D1BF7D68;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1BF7D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[21];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v26 = v3[21];
    }

    else
    {
      v26 = v3[22];
    }

    v5 = sub_1D1E6873C();
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v3[17];
      v8 = (v7 + 48);
      v53 = v7;
      v55 = (v7 + 32);
      v57 = (v7 + 56);
      v9 = MEMORY[0x1E69E7CC0];
      v59 = v5;
      while (1)
      {
        v10 = v3[21];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3891EF0](v6);
        }

        else
        {
          if (v6 >= *(v3[22] + 16))
          {
            goto LABEL_54;
          }

          v5 = *(v10 + 8 * v6 + 32);
        }

        v11 = v5;
        v12 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13 || (objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) != 0))
        {
          v14 = v3[14];
          v15 = [v13 actionSet];
          v16 = [v15 uniqueIdentifier];

          sub_1D1E66A5C();
          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v19 = v3[15];
        v18 = v3[16];
        v20 = v3[14];

        (*v57)(v20, v17, 1, v18);
        sub_1D1741A90(v20, v19, &qword_1EC642590, qword_1D1E71260);
        if ((*v8)(v19, 1, v18) == 1)
        {
          v5 = sub_1D1741A30(v3[15], &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v21 = *v55;
          (*v55)(v3[19], v3[15], v3[16]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D177D0AC(0, *(v9 + 2) + 1, 1, v9);
          }

          v23 = *(v9 + 2);
          v22 = *(v9 + 3);
          if (v23 >= v22 >> 1)
          {
            v9 = sub_1D177D0AC(v22 > 1, v23 + 1, 1, v9);
          }

          v24 = v3[19];
          v25 = v3[16];
          *(v9 + 2) = v23 + 1;
          v5 = v21(&v9[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v23], v24, v25);
        }

        ++v6;
        if (v12 == v59)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    v5 = *(v3[22] + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v3[26] = v9;
  v27 = v3[21];
  if (v27 >> 62)
  {
    if (v27 < 0)
    {
      v48 = v3[21];
    }

    else
    {
      v48 = v3[22];
    }

    v5 = sub_1D1E6873C();
    v28 = v5;
    if (v5)
    {
LABEL_28:
      v29 = 0;
      v30 = v3[17];
      v56 = (v30 + 48);
      v58 = (v30 + 56);
      v52 = v30;
      v54 = (v30 + 32);
      v60 = MEMORY[0x1E69E7CC0];
      v31 = qword_1D1E71260;
      while (1)
      {
        v10 = v3[21];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3891EF0](v29);
        }

        else
        {
          if (v29 >= *(v3[22] + 16))
          {
            goto LABEL_56;
          }

          v5 = *(v10 + 8 * v29 + 32);
        }

        v32 = v5;
        v33 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v34 = v31;
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = v3[12];
          v37 = [v35 characteristic];
          v38 = [v37 uniqueIdentifier];

          sub_1D1E66A5C();
          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = v3[16];
        v41 = v3[12];
        v42 = v3[13];

        (*v58)(v41, v39, 1, v40);
        v31 = v34;
        sub_1D1741A90(v41, v42, &qword_1EC642590, v34);
        if ((*v56)(v42, 1, v40) == 1)
        {
          v5 = sub_1D1741A30(v3[13], &qword_1EC642590, v34);
        }

        else
        {
          v43 = *v54;
          (*v54)(v3[18], v3[13], v3[16]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_1D177D0AC(0, *(v60 + 2) + 1, 1, v60);
          }

          v45 = *(v60 + 2);
          v44 = *(v60 + 3);
          if (v45 >= v44 >> 1)
          {
            v60 = sub_1D177D0AC(v44 > 1, v45 + 1, 1, v60);
          }

          v46 = v3[18];
          v47 = v3[16];
          *(v60 + 2) = v45 + 1;
          v5 = v43(&v60[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v45], v46, v47);
          v31 = v34;
        }

        ++v29;
        if (v33 == v28)
        {
          goto LABEL_50;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v10, a3);
    }
  }

  else
  {
    v28 = *(v3[22] + 16);
    if (v28)
    {
      goto LABEL_28;
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v3[27] = v60;
  v3[28] = *(v3[8] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
  sub_1D1E67E1C();
  v3[29] = sub_1D1E67E0C();
  v49 = sub_1D1E67D4C();
  a3 = v50;
  v3[30] = v49;
  v3[31] = v50;
  v5 = sub_1D1BF840C;
  v10 = v49;

  return MEMORY[0x1EEE6DFA0](v5, v10, a3);
}

uint64_t sub_1D1BF8338()
{
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1BF840C()
{
  v1 = v0[7];
  v0[5] = v0[28];
  v2 = *(v1 + 24);
  v0[32] = v2;
  v3 = *(v1 + 32);
  v0[33] = v3;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1D1BF84D4;
  v5 = v0[21];

  return WidgetManager.perform(_:forKind:)(v5, v2, v3);
}

uint64_t sub_1D1BF84D4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[27];

    v6 = v2[30];
    v7 = v2[31];
    v8 = sub_1D1BF8AD0;
  }

  else
  {
    v6 = v2[30];
    v7 = v2[31];
    v8 = sub_1D1BF85F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D1BF85F8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF8664, v2, 0);
}

uint64_t sub_1D1BF8664()
{
  v1 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v26 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  swift_beginAccess();
  v9 = *(v6 + 144);
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;

  v11 = sub_1D1B525A0(sub_1D1BFAA34, v10, v9);

  v12 = sub_1D1DAD26C(v11);
  *(v0 + 288) = v12;

  (*(v2 + 16))(v5, v26, v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v13 = *(v8 + 8);
  v14 = *(v8 + 16);
  *(v0 + 296) = v14;
  LODWORD(v2) = *(v8 + 40);
  v15 = (v4 + v7[12]);
  *v15 = v13;
  v15[1] = v14;
  v15[2] = v27;
  v15[3] = v28;
  sub_1D1741C08(v5, v4, &qword_1EC642590, qword_1D1E71260);
  *(v4 + v7[9]) = v29;
  *(v4 + v7[10]) = v30;
  *(v4 + v7[11]) = v12;
  *(v4 + v7[14]) = 1;
  *(v4 + v7[13]) = v2;
  v16 = qword_1EC642488;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v19 = *(v0 + 72);
  v20 = sub_1D1E6701C();
  __swift_project_value_buffer(v20, qword_1EC6BE2B8);
  *(v0 + 320) = *(v19 + 60);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  v21 = swift_task_alloc();
  *(v0 + 304) = v21;
  *v21 = v0;
  v21[1] = sub_1D1BF890C;
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 48);

  return sub_1D1BF4E24(v24, v22);
}

uint64_t sub_1D1BF890C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v16 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1D1BF8D18;
  }

  else
  {
    v6 = *(v2 + 320);
    v8 = *(v2 + 288);
    v7 = *(v2 + 296);
    v9 = *(v2 + 264);
    v11 = *(v2 + 208);
    v10 = *(v2 + 216);
    v12 = *(v2 + 80);
    v13 = *(v2 + 64);
    sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);

    v14 = sub_1D1E66FDC();
    (*(*(v14 - 8) + 8))(v12 + v6, v14);
    v5 = sub_1D1BF8C28;
    v4 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1BF8AD0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF8B3C, v2, 0);
}

uint64_t sub_1D1BF8B3C()
{
  (*(v0[17] + 8))(v0[20], v0[16]);
  v1 = v0[35];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1BF8C28()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[15];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  (*(v0[17] + 8))(v0[20], v0[16]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1BF8D18()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 264);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 80);
  (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
  sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);

  v8 = sub_1D1E66FDC();
  (*(*(v8 - 8) + 8))(v7 + v1, v8);
  v9 = *(v0 + 312);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 144);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D1BF8E90(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if (v4 == (*(v7 + 8))(v6, v7) && v5 == v8)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v13 = a2[3];
  v12 = a2[4];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (v13 == (*(v15 + 16))(v14, v15) && v12 == v16)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D1BF8FC0(uint64_t a1, uint64_t a2, double a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v6 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v4[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_1D1BF90BC;

  return WidgetSnapshotModerator.updateHomes(timeout:)(a3);
}

uint64_t sub_1D1BF90BC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1D1BF9370;
  }

  else
  {
    v6 = sub_1D1BF91E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1BF91E8()
{
  v1 = v0[4];
  v0[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_1D1BF4E24;
      v3 = swift_task_alloc();
      v0[14] = v3;
      *v3 = v0;
      v4 = sub_1D1BF98A8;
    }

    else
    {
      v9 = sub_1D1BF7630;
      v3 = swift_task_alloc();
      v0[16] = v3;
      *v3 = v0;
      v4 = sub_1D1BF99D4;
    }
  }

  else
  {
    v9 = sub_1D1BF1F74;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v4 = sub_1D1BF977C;
  }

  v3[1] = v4;
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];

  return v9(v5, v6);
}

uint64_t sub_1D1BF9370()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 56);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    *(v0 + 144) = v6;
    v7 = *(v6 - 8);
    *(v0 + 152) = v7;
    if ((*(v7 + 48))(v5, 4, v6) == 4)
    {
      v8 = *(v0 + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v10 = *(v0 + 32);
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v35 = v10 + 1;
          v36 = v10 + 2;
          v37 = v10 + 3;
          v38 = v10 + 4;
          goto LABEL_18;
        }

        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438) + 48);
      }

      else
      {
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440) + 36);
      }

      v35 = (v10 + v11);
      v36 = v35 + 1;
      v37 = v35 + 2;
      v38 = v35 + 3;
LABEL_18:
      v39 = *v37;
      v40 = *v36;
      v41 = *v35;
      v42 = *v38;

      v43 = swift_task_alloc();
      *(v0 + 160) = v43;
      *v43 = v0;
      v43[1] = sub_1D1BFA280;
      v44 = *(v0 + 40);

      return sub_1D1BEE784(v41, v40, v39, v42);
    }

    sub_1D1BFA9A4(v5, type metadata accessor for WidgetSnapshotModerator.Error);
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14)
  {
    if (v14 == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v16 = *&v13[v15[9]];

      v17 = *&v13[v15[10]];

      v18 = *&v13[v15[11]];

      v19 = &v13[v15[12]];
      v20 = *(v19 + 1);
      v21 = *(v19 + 3);

      v22 = v15[15];
    }

    else
    {
      v27 = *v13;

      v28 = *(v13 + 2);
      v29 = *(v13 + 4);

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
    v24 = &v13[*(v23 + 36)];
    v25 = *(v24 + 1);
    v26 = *(v24 + 3);

    v22 = *(v23 + 44);
  }

  v30 = sub_1D1E66FDC();
  (*(*(v30 - 8) + 8))(&v13[v22], v30);
  v32 = *(v0 + 56);
  v31 = *(v0 + 64);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D1BF977C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1D1BF9B00;
  }

  else
  {
    v6 = sub_1D1BFAAB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1BF98A8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1D1BF9CDC;
  }

  else
  {
    v6 = sub_1D1BFAAB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1BF99D4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1D1BFA0A4;
  }

  else
  {
    v6 = sub_1D1BF9EB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1BF9B00()
{
  v1 = v0[13];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v5 = *&v2[v4[9]];

      v6 = *&v2[v4[10]];

      v7 = *&v2[v4[11]];

      v8 = &v2[v4[12]];
      v9 = *(v8 + 1);
      v10 = *(v8 + 3);

      v11 = v4[15];
    }

    else
    {
      v16 = *v2;

      v17 = *(v2 + 2);
      v18 = *(v2 + 4);

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
    v13 = &v2[*(v12 + 36)];
    v14 = *(v13 + 1);
    v15 = *(v13 + 3);

    v11 = *(v12 + 44);
  }

  v19 = sub_1D1E66FDC();
  (*(*(v19 - 8) + 8))(&v2[v11], v19);
  v21 = v0[7];
  v20 = v0[8];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1BF9CDC()
{
  v1 = v0[15];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v5 = *&v2[v4[9]];

      v6 = *&v2[v4[10]];

      v7 = *&v2[v4[11]];

      v8 = &v2[v4[12]];
      v9 = *(v8 + 1);
      v10 = *(v8 + 3);

      v11 = v4[15];
    }

    else
    {
      v16 = *v2;

      v17 = *(v2 + 2);
      v18 = *(v2 + 4);

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
    v13 = &v2[*(v12 + 36)];
    v14 = *(v13 + 1);
    v15 = *(v13 + 3);

    v11 = *(v12 + 44);
  }

  v19 = sub_1D1E66FDC();
  (*(*(v19 - 8) + 8))(&v2[v11], v19);
  v21 = v0[7];
  v20 = v0[8];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1BF9EB8()
{
  v1 = v0[11];
  v2 = v0[4];
  sub_1D1AFBD48(v0[8], v0[3], type metadata accessor for StateSnapshot);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[4];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v6 = *&v4[v5[9]];

      v7 = *&v4[v5[10]];

      v8 = *&v4[v5[11]];

      v9 = &v4[v5[12]];
      v10 = *(v9 + 1);
      v11 = *(v9 + 3);

      v12 = v5[15];
    }

    else
    {
      v17 = *v4;

      v18 = *(v4 + 2);
      v19 = *(v4 + 4);

      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
    v14 = &v4[*(v13 + 36)];
    v15 = *(v14 + 1);
    v16 = *(v14 + 3);

    v12 = *(v13 + 44);
  }

  v20 = sub_1D1E66FDC();
  (*(*(v20 - 8) + 8))(&v4[v12], v20);
  v22 = v0[7];
  v21 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D1BFA0A4()
{
  v1 = v0[17];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v5 = *&v2[v4[9]];

      v6 = *&v2[v4[10]];

      v7 = *&v2[v4[11]];

      v8 = &v2[v4[12]];
      v9 = *(v8 + 1);
      v10 = *(v8 + 3);

      v11 = v4[15];
    }

    else
    {
      v16 = *v2;

      v17 = *(v2 + 2);
      v18 = *(v2 + 4);

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
    v13 = &v2[*(v12 + 36)];
    v14 = *(v13 + 1);
    v15 = *(v13 + 3);

    v11 = *(v12 + 44);
  }

  v19 = sub_1D1E66FDC();
  (*(*(v19 - 8) + 8))(&v2[v11], v19);
  v21 = v0[7];
  v20 = v0[8];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1BFA280()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BFA390, v2, 0);
}

uint64_t sub_1D1BFA390()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 48);
  sub_1D1BFA898(&qword_1EC64C7B0, type metadata accessor for WidgetSnapshotModerator.Error);
  swift_allocError();
  (*(v2 + 56))(v4, 4, 4, v1);
  swift_willThrow();

  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v8 = *&v5[v7[9]];

      v9 = *&v5[v7[10]];

      v10 = *&v5[v7[11]];

      v11 = &v5[v7[12]];
      v12 = *(v11 + 1);
      v13 = *(v11 + 3);

      v14 = v7[15];
    }

    else
    {
      v19 = *v5;

      v20 = *(v5 + 2);
      v21 = *(v5 + 4);

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
    v16 = &v5[*(v15 + 36)];
    v17 = *(v16 + 1);
    v18 = *(v16 + 3);

    v14 = *(v15 + 44);
  }

  v22 = sub_1D1E66FDC();
  (*(*(v22 - 8) + 8))(&v5[v14], v22);
  v24 = *(v0 + 56);
  v23 = *(v0 + 64);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D1BFA5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438) + 48));
  *(a4 + 3) = &type metadata for BasicIdentity;
  *(a4 + 4) = &protocol witness table for BasicIdentity;
  v8 = swift_allocObject();
  *a4 = v8;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v8[2] = *v7;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;

  v12 = [a3 uniqueIdentifier];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v14 = &a4[*(v13 + 36)];
  sub_1D1E66A5C();

  v15 = *(v13 + 40);
  v16 = sub_1D1E66A7C();
  return (*(*(v16 - 8) + 16))(&a4[v15], a1, v16);
}

void sub_1D1BFA728(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438) + 48));
  a4[3] = &type metadata for BasicIdentity;
  a4[4] = &protocol witness table for BasicIdentity;
  v8 = swift_allocObject();
  *a4 = v8;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v8[2] = *v7;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;

  v12 = [a3 uniqueIdentifier];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v14 = a4 + *(v13 + 36);
  sub_1D1E66A5C();

  *(a4 + *(v13 + 40)) = v6;
}

unint64_t sub_1D1BFA824()
{
  result = qword_1EC64C798;
  if (!qword_1EC64C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C798);
  }

  return result;
}

uint64_t sub_1D1BFA898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1BFA920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BFA9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1BFAAF4(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  if (!sub_1D1E6873C())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643070, &unk_1D1EA0D80);
  v8 = sub_1D1E6882C();
LABEL_6:
  if (sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8) == MEMORY[0x1E69E6158])
  {
    if (v7)
    {

      sub_1D1E686EC();
      sub_1D1741B10(0, a2, a3);
      sub_1D1771944(a4, a2, a3);
      sub_1D1E681BC();
      v6 = v46;
      v13 = v47;
      v14 = v48;
      v15 = v49;
      v16 = v50;
    }

    else
    {
      v36 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v14 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v16 = v38 & *(v6 + 56);

      v15 = 0;
    }

    while (1)
    {
      if (v6 < 0)
      {
        if (!sub_1D1E6877C())
        {
LABEL_55:
          sub_1D1716918();

          return;
        }

        sub_1D1741B10(0, a2, a3);
        swift_dynamicCast();
        v41 = v45;
      }

      else
      {
        if (v16)
        {
          v39 = v15;
        }

        else
        {
          v42 = v15;
          do
          {
            v39 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_58;
            }

            if (v39 >= ((v14 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v16 = *(v13 + 8 * v39);
            ++v42;
          }

          while (!v16);
          v15 = v39;
        }

        v40 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v41 = *(*(v6 + 48) + ((v39 << 9) | (8 * v40)));
      }

      sub_1D1C05F8C(v41);
    }
  }

  v43 = a3;
  if (v7)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, a2, a3);
    sub_1D1771944(a4, a2, a3);
    sub_1D1E681BC();
    v6 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
    v12 = v50;
  }

  else
  {
    v17 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(v6 + 56);

    v11 = 0;
  }

  v20 = (v10 + 64) >> 6;
  v21 = v8 + 56;
  while (v6 < 0)
  {
    if (!sub_1D1E6877C())
    {
      goto LABEL_55;
    }

    sub_1D1741B10(0, a2, v43);
    swift_dynamicCast();
    v24 = v45;
LABEL_29:
    v27 = *(v8 + 40);
    v28 = sub_1D1E684EC();
    v29 = -1 << *(v8 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      do
      {
        if (++v31 == v33 && (v32 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = *(v21 + 8 * v31);
      }

      while (v35 == -1);
      v22 = __clz(__rbit64(~v35)) + (v31 << 6);
    }

    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v8 + 48) + 8 * v22) = v24;
    ++*(v8 + 16);
  }

  if (v12)
  {
    v23 = v11;
LABEL_28:
    v26 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v45 = *(*(v6 + 48) + ((v23 << 9) | (8 * v26)));
    v24 = v45;
    goto LABEL_29;
  }

  v25 = v11;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_55;
    }

    v12 = *(v9 + 8 * v23);
    ++v25;
    if (v12)
    {
      v11 = v23;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

BOOL StaticMediaProfile.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for StatusStrings.Options();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[13];
  v11 = sub_1D1E669FC();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *v9 = 257;
  v9[2] = 1;
  *(v9 + 3) = 0;
  v9[v6[14]] = 2;
  v12 = &v9[v6[15]];
  v12[4] = 0;
  *v12 = 2;
  v13 = type metadata accessor for StaticMatterDevice();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  StaticMediaProfile.statusString(with:associatedMatterDevice:)(v9);
  v15 = v14;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C09494(v9, type metadata accessor for StatusStrings.Options);
  if (!v15)
  {
    return *(v0 + *(type metadata accessor for StaticMediaProfile() + 76)) == 1;
  }

  return 0;
}

uint64_t StaticMediaProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMediaProfile.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaProfile() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaProfile.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile() + 24));
}

uint64_t StaticMediaProfile.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaProfile() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaProfile.iconSymbol.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaProfile() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaProfile.staticAccessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMediaProfile() + 56);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMediaProfile.staticServicesDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile() + 68));
}

uint64_t StaticMediaProfile.playbackState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaProfile();
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StaticMediaProfile.sleepWakeState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaProfile();
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t StaticMediaProfile.mediaId.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaProfile() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaProfile.audioDestinationId.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticMediaProfile() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticMediaProfile.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMediaProfile() + 92);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D18EB144(v4, v5);
}

uint64_t StaticMediaProfile.symptoms.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile() + 96));
}

uint64_t StaticMediaProfile.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaProfile();
  *a1 = *(v1 + *(result + 104));
  return result;
}

unint64_t sub_1D1BFB728(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7364496D6F6F72;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0x6564644165746164;
      break;
    case 5:
      result = 0x626D79536E6F6369;
      break;
    case 6:
      result = 0x656C62756F447369;
      break;
    case 7:
      result = 0x69726F7661467369;
      break;
    case 8:
    case 22:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6168636165527369;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x6449656369766564;
      break;
    case 15:
      result = 0x6B63616279616C70;
      break;
    case 16:
      result = 0x6B61577065656C73;
      break;
    case 17:
      result = 0x6449616964656DLL;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x736D6F74706D7973;
      break;
    case 21:
      result = 0x6572617774666F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1BFB9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1C081FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1BFB9FC(uint64_t a1)
{
  v2 = sub_1D1C0721C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BFBA38(uint64_t a1)
{
  v2 = sub_1D1C0721C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7B8, &unk_1D1EA0490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C0721C();
  sub_1D1E6930C();
  LOBYTE(v40) = 0;
  sub_1D1E66A7C();
  sub_1D1C07270(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticMediaProfile();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v40) = 1;
    sub_1D1E68ECC();
    v40 = *(v3 + v11[6]);
    v42 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C07360(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v40) = 3;
    sub_1D1E68E0C();
    v39[1] = v11[8];
    LOBYTE(v40) = 4;
    sub_1D1E669FC();
    sub_1D1C07270(&qword_1EC642EC8, MEMORY[0x1E6969530]);
    sub_1D1E68E5C();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v40) = 5;
    sub_1D1E68ECC();
    v21 = *(v3 + v11[10]);
    LOBYTE(v40) = 6;
    sub_1D1E68EDC();
    v22 = *(v3 + v11[11]);
    LOBYTE(v40) = 7;
    sub_1D1E68EDC();
    v23 = *(v3 + v11[12]);
    LOBYTE(v40) = 8;
    sub_1D1E68EDC();
    v24 = *(v3 + v11[13]);
    LOBYTE(v40) = 9;
    sub_1D1E68EDC();
    v25 = v11[14];
    LOBYTE(v40) = 10;
    sub_1D1E68F1C();
    v26 = *(v3 + v11[15]);
    LOBYTE(v40) = 11;
    sub_1D1E68EDC();
    v27 = *(v3 + v11[16]);
    LOBYTE(v40) = 12;
    sub_1D1E68EDC();
    v40 = *(v3 + v11[17]);
    v42 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v28 = v11[18];
    LOBYTE(v40) = 14;
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    sub_1D1C07270(&qword_1EC64C328, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1E68E5C();
    LOBYTE(v40) = *(v3 + v11[19]);
    v42 = 15;
    sub_1D1C072B8();
    sub_1D1E68E5C();
    LOBYTE(v40) = *(v3 + v11[20]);
    v42 = 16;
    sub_1D1C0730C();
    sub_1D1E68E5C();
    v29 = (v3 + v11[21]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v40) = 17;
    sub_1D1E68E0C();
    v32 = (v3 + v11[22]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v40) = 18;
    sub_1D1E68E0C();
    v35 = v3 + v11[23];
    v36 = *(v35 + 8);
    v40 = *v35;
    v41 = v36;
    v42 = 19;
    sub_1D18EB144(v40, v36);
    sub_1D18F1630();
    sub_1D1E68E5C();
    sub_1D18EB2D8(v40, v41);
    v40 = *(v3 + v11[24]);
    v42 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
    sub_1D1BC93A0(&qword_1EC64C348, sub_1D1BC9140);
    sub_1D1E68E5C();
    v37 = v11[25];
    LOBYTE(v40) = 21;
    type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1C07270(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E68E5C();
    LOBYTE(v40) = *(v3 + v11[26]);
    v42 = 22;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticMediaProfile.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v71 - v9;
  v10 = sub_1D1E66A7C();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v77 = &v71 - v20;
  v21 = sub_1D1E669FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v71 - v27;
  sub_1D1C07270(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v82 = v10;
  sub_1D1E676EC();
  v29 = type metadata accessor for StaticMediaProfile();
  v30 = (v1 + v29[5]);
  v31 = *v30;
  v32 = v30[1];
  sub_1D1E678EC();
  sub_1D176D4E8(a1, *(v1 + v29[6]));
  v33 = (v1 + v29[7]);
  if (v33[1])
  {
    v34 = *v33;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v1 + v29[8], v28, &qword_1EC642570, &qword_1D1E6C6A0);
  v35 = (*(v22 + 48))(v28, 1, v21);
  v36 = v79;
  if (v35 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v37 = v74;
    (*(v22 + 32))(v74, v28, v21);
    sub_1D1E6922C();
    sub_1D1C07270(&qword_1EC642A50, MEMORY[0x1E6969530]);
    sub_1D1E676EC();
    (*(v22 + 8))(v37, v21);
  }

  v38 = (v1 + v29[9]);
  v39 = *v38;
  v40 = v38[1];
  sub_1D1E678EC();
  v41 = *(v1 + v29[10]);
  sub_1D1E6922C();
  v42 = *(v1 + v29[11]);
  sub_1D1E6922C();
  v43 = *(v1 + v29[12]);
  sub_1D1E6922C();
  v44 = *(v1 + v29[13]);
  sub_1D1E6922C();
  v45 = v1 + v29[14];
  v46 = v82;
  sub_1D1E676EC();
  v47 = *(v2 + v29[15]);
  sub_1D1E6922C();
  v48 = *(v2 + v29[16]);
  sub_1D1E6922C();
  sub_1D18599F4(a1, *(v2 + v29[17]));
  v49 = v77;
  sub_1D1741C08(v2 + v29[18], v77, &qword_1EC643C58, &unk_1D1E995D0);
  if ((*(v78 + 48))(v49, 1, v36) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v50 = v80;
    sub_1D1C0942C(v49, v80, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1E6922C();
    v51 = v75;
    sub_1D1C09520(v50, v75, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v72;
      v52 = v73;
      (*(v73 + 32))(v72, v51, v46);
      MEMORY[0x1D3892850](1);
      sub_1D1E676EC();
      (*(v52 + 8))(v53, v46);
    }

    else
    {
      v54 = *v51;
      v55 = v51[1];
      MEMORY[0x1D3892850](0);
      sub_1D1E678EC();
    }

    sub_1D1C09494(v80, type metadata accessor for StaticAccessory.DeviceIdentifier);
  }

  v56 = *(v2 + v29[19]);
  sub_1D1E6922C();
  if (v56 != 6)
  {
    MEMORY[0x1D3892850](v56);
  }

  v57 = *(v2 + v29[20]);
  sub_1D1E6922C();
  if (v57 != 4)
  {
    MEMORY[0x1D3892850](v57);
  }

  v58 = (v2 + v29[21]);
  if (v58[1])
  {
    v59 = *v58;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v60 = (v2 + v29[22]);
  if (v60[1])
  {
    v61 = *v60;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v62 = v2 + v29[23];
  v63 = *(v62 + 8);
  if (v63 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    v85 = *v62;
    v64 = v85;
    v86 = v63;
    sub_1D1E6922C();
    sub_1D1771B4C(v64, v63);
    StaticAccessory.SpecialMediaCategory.hash(into:)(a1);
    sub_1D1771B5C(v85, v86);
  }

  v65 = *(v2 + v29[24]);
  sub_1D1E6922C();
  if (v65)
  {
    sub_1D1771CBC(a1, v65);
  }

  v66 = v81;
  sub_1D1741C08(v2 + v29[25], v81, &qword_1EC644760, &unk_1D1E9E530);
  v67 = v84;
  if ((*(v83 + 48))(v66, 1, v84) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v68 = v76;
    sub_1D1C0942C(v66, v76, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    sub_1D1E676EC();
    v69 = v68 + *(v67 + 20);
    StaticSoftwareUpdate.Kind.hash(into:)();
    sub_1D1C09494(v68, type metadata accessor for StaticSoftwareUpdate);
  }

  return MEMORY[0x1D3892850](*(v2 + v29[26]));
}

uint64_t StaticMediaProfile.hashValue.getter()
{
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = v52 - v11;
  v12 = sub_1D1E66A7C();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = v52 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7D8, &unk_1D1EA04A0);
  v62 = *(v64 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v20 = v52 - v19;
  v21 = type metadata accessor for StaticMediaProfile();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C0721C();
  v63 = v20;
  v26 = v65;
  sub_1D1E692FC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v60;
  v53 = v16;
  v54 = v21;
  v55 = a1;
  v65 = v24;
  LOBYTE(v66) = 0;
  v28 = sub_1D1C07270(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v29 = v61;
  sub_1D1E68D7C();
  v30 = *(v59 + 32);
  v31 = v65;
  v61 = v12;
  v30(v65, v29);
  LOBYTE(v66) = 1;
  v32 = sub_1D1E68D2C();
  v52[0] = v30;
  v52[1] = v28;
  v33 = v54;
  v34 = &v31[v54[5]];
  *v34 = v32;
  v34[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v68 = 2;
  sub_1D1C07360(&qword_1EC646B78, &qword_1EC644B20);
  v52[2] = 0;
  sub_1D1E68D7C();
  *&v31[v33[6]] = v66;
  LOBYTE(v66) = 3;
  v36 = sub_1D1E68C6C();
  v37 = &v31[v33[7]];
  *v37 = v36;
  v37[1] = v38;
  sub_1D1E669FC();
  LOBYTE(v66) = 4;
  sub_1D1C07270(&qword_1EC642EB8, MEMORY[0x1E6969530]);
  sub_1D1E68CBC();
  sub_1D1741A90(v27, &v31[v33[8]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v66) = 5;
  v39 = sub_1D1E68D2C();
  v40 = &v31[v33[9]];
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v66) = 6;
  v31[v33[10]] = sub_1D1E68D3C() & 1;
  LOBYTE(v66) = 7;
  v31[v54[11]] = sub_1D1E68D3C() & 1;
  LOBYTE(v66) = 8;
  v65[v54[12]] = sub_1D1E68D3C() & 1;
  LOBYTE(v66) = 9;
  v65[v54[13]] = sub_1D1E68D3C() & 1;
  LOBYTE(v66) = 10;
  sub_1D1E68D7C();
  (v52[0])(&v65[v54[14]], v53, v61);
  LOBYTE(v66) = 11;
  v65[v54[15]] = sub_1D1E68D3C() & 1;
  LOBYTE(v66) = 12;
  v65[v54[16]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v68 = 13;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  *&v65[v54[17]] = v66;
  type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  LOBYTE(v66) = 14;
  sub_1D1C07270(&qword_1EC64C368, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1E68CBC();
  sub_1D1741A90(v58, &v65[v54[18]], &qword_1EC643C58, &unk_1D1E995D0);
  v68 = 15;
  sub_1D1C073FC();
  sub_1D1E68CBC();
  v65[v54[19]] = v66;
  v68 = 16;
  sub_1D1C07450();
  sub_1D1E68CBC();
  v65[v54[20]] = v66;
  LOBYTE(v66) = 17;
  v42 = sub_1D1E68C6C();
  v43 = &v65[v54[21]];
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v66) = 18;
  v45 = sub_1D1E68C6C();
  v46 = &v65[v54[22]];
  *v46 = v45;
  v46[1] = v47;
  v68 = 19;
  sub_1D18F18D0();
  sub_1D1E68CBC();
  v48 = v67;
  v49 = &v65[v54[23]];
  *v49 = v66;
  v49[8] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
  v68 = 20;
  sub_1D1BC93A0(&qword_1EC64C380, sub_1D1BC9418);
  sub_1D1E68CBC();
  *&v65[v54[24]] = v66;
  type metadata accessor for StaticSoftwareUpdate(0);
  LOBYTE(v66) = 21;
  sub_1D1C07270(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate);
  sub_1D1E68CBC();
  sub_1D1741A90(v56, &v65[v54[25]], &qword_1EC644760, &unk_1D1E9E530);
  v68 = 22;
  sub_1D1BC934C();
  sub_1D1E68D7C();
  (*(v62 + 8))(v63, v64);
  v50 = v65;
  v65[v54[26]] = v66;
  sub_1D1C09520(v50, v57, type metadata accessor for StaticMediaProfile);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_1D1C09494(v50, type metadata accessor for StaticMediaProfile);
}

uint64_t sub_1D1BFDD68()
{
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BFDDAC()
{
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

id StaticMediaProfile.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaProfile();
  v5 = v4;
  v6 = *(v1 + v4[15]);
  if (*(v1 + v4[23] + 8) != 1 || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v1 + v4[16]) ^ 1;
  }

  v9 = *(v1 + v4[26]);
  if (*(v1 + v4[19]) == 6)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    LOBYTE(v23[0]) = *(v1 + v4[19]);
    v10 = sub_1D1CF8E54();
    v11 = v12;
  }

  v13 = v5[25];
  v14 = a1[4];
  LOBYTE(v23[0]) = v14;
  v15 = sub_1D1D32844(v2 + v13, v23);
  if (!v16)
  {
    v17 = *(v2 + v5[24]);
    LOBYTE(v23[0]) = v14;
    v15 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v17, v23);
  }

  LOBYTE(v20) = v6;
  BYTE1(v20) = v9;
  BYTE2(v20) = 2;
  BYTE3(v20) = v8 & 1;
  BYTE4(v20) = 2;
  *(&v20 + 1) = v10;
  *&v21 = v11;
  *(&v21 + 1) = v15;
  v22 = v16;
  v18 = StatusStrings.string(for:)(a1);
  v23[0] = v20;
  v23[1] = v21;
  v24 = v22;
  sub_1D1A46590(v23);
  return v18;
}

uint64_t StaticMediaProfile.tileIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaProfile();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1C09520(v2, v8, type metadata accessor for StaticMediaProfile);
  v9 = &v8[*(v5 + 100)];
  v10 = v9[8];
  if (v10 == 255)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v32 = *&qword_1EC646788;
    v33 = xmmword_1EC646798;
    *v34 = xmmword_1EC6467A8;
    *&v34[9] = *(&xmmword_1EC6467A8 + 9);
    v30 = xmmword_1EC646768;
    v31 = xmmword_1EC646778;
    sub_1D18A9844(&v30, v29);
    result = sub_1D1C09494(v8, type metadata accessor for StaticMediaProfile);
    v26 = *&v34[8];
    v27 = *&v34[16];
    v21 = v34[24];
    v25 = *(&v33 + 1);
    v24 = v33;
    v20 = v34[0];
    v22 = *(&v31 + 1);
    v23 = v32;
    v19 = BYTE8(v32);
    v16 = *(&v30 + 1);
    v14 = v30;
    v18 = v31;
  }

  else
  {
    v11 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v11;
    v13 = inited + 32;
    *(inited + 40) = v10;
    v14 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
    v16 = v15;
    swift_setDeallocating();
    sub_1D18EB144(v11, v10);
    sub_1D18EB158(v13);
    sub_1D1C09494(v8, type metadata accessor for StaticMediaProfile);
    result = swift_bridgeObjectRetain_n();
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v14;
    v23 = v16;
    v24 = v14;
    v25 = v16;
    v26 = v14;
    v27 = v16;
  }

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  *(a1 + 40) = v19;
  *(a1 + 48) = v24;
  *(a1 + 56) = v25;
  *(a1 + 64) = v20;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v21;
  return result;
}

uint64_t StaticMediaProfile.foregroundColor.getter()
{
  if (StaticMediaProfile.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t sub_1D1BFE228()
{
  if (StaticMediaProfile.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t StaticMediaProfile.mediaProfile.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE32C, 0, 0);
}

uint64_t sub_1D1BFE32C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1BFE41C;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1BFE750;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1BFE41C()
{
  v33 = v0;
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v32[0] = sub_1D1749970(v4);
    sub_1D1747DDC(v32);

    v5 = v32[0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[5];
  v9 = *(v0[7] + 16);
  v9(v0[9], v8, v7);
  v9(v6, v8, v7);
  if (v5 >> 62)
  {
LABEL_31:
    v10 = sub_1D1E6873C();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = v5 & 0xC000000000000001;
  v13 = (v5 + 32);
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x1D3891EF0](v11, v5);
    }

    else
    {
      if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v14 = *(v5 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v0[8];
    v32[0] = v14;
    sub_1D1A877DC(v32, v16, &v31);

    v17 = v31;
    if (v17)
    {
      v10 = v11;
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_30;
    }
  }

  if (!(v5 >> 62))
  {
    if (v10 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v13 = *(v0[7] + 8);
    (v13)(v0[9], v0[6]);
    v24 = 0;
    goto LABEL_26;
  }

  if (v10 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v12)
  {
    v19 = MEMORY[0x1D3891EF0](v10, v5);
  }

  else
  {
    if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v19 = v13[v10];
  }

  v20 = v19;
  v21 = v0[9];
  v22 = v0[6];
  v23 = v0[7];
  v32[0] = v19;
  sub_1D1A877DC(v32, v21, &v31);
  v13 = *(v23 + 8);
  (v13)(v21, v22);

  v24 = v31;
  if (!v31)
  {
LABEL_34:
    v27 = (v13)(v0[8], v0[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }

LABEL_26:
  v0[11] = v24;
  v25 = v0[8];
  v26 = v0[6];

  (v13)(v25, v26);
  v27 = sub_1D1B9A998;
  v28 = 0;
  v29 = 0;

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D1BFE750()
{
  v1 = *(v0 + 104);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE7E8, 0, 0);
}

uint64_t sub_1D1BFE7E8()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE874, v3, v2);
}

uint64_t sub_1D1BFE874()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE8E8, 0, 0);
}

uint64_t sub_1D1BFE8E8()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[16] = sub_1D1E66A2C();
  v0[17] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE980, v4, v3);
}

uint64_t sub_1D1BFE980()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = [v3 mediaProfileFor_];

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7(v4);
}

uint64_t Set<>.staticMediaProfilesIgnoringCurrentDevice.getter(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticMediaProfile();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 32);
  v6 = v4 & 0x3F;
  v7 = ((1 << v4) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v24 = &v24;
    v25 = v7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v10 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v8);
    v26 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v8 = v16 | (v11 << 6);
      sub_1D1C09520(*(a1 + 48) + *(v27 + 72) * v8, v5, type metadata accessor for StaticMediaProfile);
      v7 = v5[*(v2 + 52)];
      sub_1D1C09494(v5, type metadata accessor for StaticMediaProfile);
      if ((v7 & 1) == 0)
      {
        *&v10[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_1D19E04D8(v10, v25, v26, a1);
          goto LABEL_17;
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
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v22 = swift_slowAlloc();
  v23 = sub_1D1C05EFC(v22, v7, a1, sub_1D1BFECF8, 0);
  MEMORY[0x1D3893640](v22, -1, -1);
  result = v23;
LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

size_t StaticMediaProfile.staticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile() + 68));
  v2 = v1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D18042C8(v1[2], 0);
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = sub_1D1804A58(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);

  sub_1D1716918();
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t StaticMediaProfile.isConfiguring.getter()
{
  v1 = type metadata accessor for StaticMediaProfile();
  if (*(v0 + v1[23] + 8) == 1 && *(v0 + v1[15]) == 1)
  {
    v2 = *(v0 + v1[16]) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t StaticMediaProfile.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13[-v3];
  v5 = type metadata accessor for StaticSoftwareUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StaticMediaProfile();
  result = 0;
  if (*(v0 + v10[15]) == 1)
  {
    v12 = *(v0 + v10[24]);
    sub_1D1741C08(v0 + v10[25], v4, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1D1741A30(v4, &qword_1EC644760, &unk_1D1E9E530);
    }

    else
    {
      sub_1D1C0942C(v4, v9, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v14);
      if (v14 != 8 && (v14 == 3 || v14 == 5))
      {
        sub_1D1C09494(v9, type metadata accessor for StaticSoftwareUpdate);
        return 0xD000000000000015;
      }

      sub_1D1C09494(v9, type metadata accessor for StaticSoftwareUpdate);
    }

    return _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(v12);
  }

  return result;
}

uint64_t StaticMediaProfile.hasDetailAttentionMessages.getter()
{
  v1 = type metadata accessor for StaticMediaProfile();
  v2 = *(v1 + 100);
  v8 = 2;
  sub_1D1D32844(v0 + v2, &v8);
  if (!v3)
  {
    v4 = *(v0 + *(v1 + 96));
    v7 = 2;
    _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v4, &v7);
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1BFF168@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v15 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v29 - v20;
  v22 = [*a1 mediaProfile];
  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = v22;
  sub_1D1C09520(a2, v17, type metadata accessor for StateSnapshot.UpdateType);
  v30 = a5;

  v24 = a4;

  sub_1D1BFF3D4(v23, v17, a3, v24, &v30, a6, v21);
  v25 = type metadata accessor for StaticMediaProfile();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_1D1741A30(v21, &qword_1EC643758, &qword_1D1E71EB0);
LABEL_4:
    v27 = type metadata accessor for StaticMediaProfile();
    return (*(*(v27 - 8) + 56))(a7, 1, 1, v27);
  }

  sub_1D1C0942C(v21, a7, type metadata accessor for StaticMediaProfile);
  return (*(v26 + 56))(a7, 0, 1, v25);
}

uint64_t sub_1D1BFF3D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v232 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v219 = &v200 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v233 = *(v16 - 8);
  v234 = v16;
  v17 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v207 = &v200 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v215 = &v200 - v21;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v22 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v222 = (&v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v218 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v217 = &v200 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v216 = &v200 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v214 = &v200 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v213 = &v200 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v221 = &v200 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v211 = &v200 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v210 = &v200 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v200 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v228 = &v200 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v200 - v48;
  v50 = sub_1D1E66A7C();
  v235 = *(v50 - 8);
  v236 = v50;
  v51 = *(v235 + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = &v200 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v227 = &v200 - v55;
  v56 = type metadata accessor for StaticMediaProfile();
  v226 = *(v56 - 8);
  v57 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v224 = &v200 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = *a5;
  v231 = a1;
  v59 = [v231 accessory];
  if (v59)
  {
    v60 = v59;
    v220 = a6;
    v208 = a4;
    v61 = [v59 home];
    if (v61)
    {
      v62 = v61;
      v205 = a2;
      v206 = v56;
      v63 = [v231 accessory];
      v225 = v60;
      if (v63)
      {
        v64 = v63;
        v65 = [v63 uniqueIdentifier];

        sub_1D1E66A5C();
        v67 = v235;
        v66 = v236;
        v68 = *(v235 + 32);
        v68(v49, v54, v236);
        (*(v67 + 56))(v49, 0, 1, v66);
        v69 = v66;
        v60 = v225;
        v68(v227, v49, v69);
        v70 = v228;
      }

      else
      {
        v75 = v235;
        v74 = v236;
        (*(v235 + 56))(v49, 1, 1, v236);
        sub_1D1E66A6C();
        v76 = (*(v75 + 48))(v49, 1, v74);
        v70 = v228;
        if (v76 != 1)
        {
          sub_1D1741A30(v49, &qword_1EC642590, qword_1D1E71260);
        }
      }

      v77 = v224;
      if (*(v232 + 16) && (v78 = sub_1D1742188(v227), (v79 & 1) != 0))
      {
        v80 = v78;
        v81 = *(v232 + 56);
        v82 = type metadata accessor for StaticAccessory(0);
        v83 = *(v82 - 8);
        v84 = v81 + *(v83 + 72) * v80;
        v60 = v225;
        sub_1D1C09520(v84, v228, type metadata accessor for StaticAccessory);
        v70 = v228;

        (*(v83 + 56))(v70, 0, 1, v82);
      }

      else
      {

        v85 = type metadata accessor for StaticAccessory(0);
        (*(*(v85 - 8) + 56))(v70, 1, 1, v85);
      }

      v86 = [v60 room];
      if (!v86)
      {
        v86 = [v62 roomForEntireHome];
      }

      v201 = v62;
      v204 = a7;
      v87 = v231;
      v88 = [v231 uniqueIdentifier];

      sub_1D1E66A5C();
      sub_1D1741C08(v70, v44, &qword_1EC6436C8, &unk_1D1E97C40);
      v89 = type metadata accessor for StaticAccessory(0);
      v90 = *(v89 - 1);
      v229 = *(v90 + 48);
      v230 = v90 + 48;
      if (v229(v44, 1, v89) == 1)
      {
        sub_1D1741A30(v44, &qword_1EC6436C8, &unk_1D1E97C40);
        v91 = [v86 name];
        v92 = sub_1D1E6781C();
        v94 = v93;
      }

      else
      {
        v95 = &v44[v89[7]];
        v92 = *v95;
        v94 = v95[1];

        sub_1D1C09494(v44, type metadata accessor for StaticAccessory);
      }

      v96 = v86;
      v97 = v206;
      v98 = &v77[v206[5]];
      *v98 = v92;
      v98[1] = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v99 = v235;
      v100 = *(v235 + 72);
      v101 = (*(v235 + 80) + 32) & ~*(v235 + 80);
      v102 = swift_allocObject();
      v232 = xmmword_1D1E739C0;
      *(v102 + 16) = xmmword_1D1E739C0;
      v103 = [v96 uniqueIdentifier];
      sub_1D1E66A5C();

      v104 = sub_1D179BE14(v102);
      swift_setDeallocating();
      v106 = *(v99 + 8);
      v105 = v99 + 8;
      v202 = v106;
      v106((v102 + v101), v236);
      swift_deallocClassInstance();
      *&v77[v97[6]] = v104;
      v203 = v96;
      v107 = [v96 name];
      v108 = sub_1D1E6781C();
      v110 = v109;

      v111 = &v77[v97[7]];
      *v111 = v108;
      v111[1] = v110;
      v112 = v225;
      HMAccessory.dateAdded.getter(&v77[v97[8]]);
      v77[v97[10]] = sub_1D1A11844() & 1;
      v77[v97[11]] = HMAccessory.isFavorite.getter() & 1;
      v77[v97[12]] = HMAccessory.shouldShowInDashboard.getter() & 1;
      v77[v97[13]] = [v112 isCurrentAccessory];
      v113 = v228;
      v114 = v210;
      sub_1D1741C08(v228, v210, &qword_1EC6436C8, &unk_1D1E97C40);
      v115 = v229(v114, 1, v89);
      v209 = v89;
      if (v115 == 1)
      {
        v116 = 0x69662E6573756F68;
        sub_1D1741A30(v114, &qword_1EC6436C8, &unk_1D1E97C40);
        v117 = 0xEA00000000006C6CLL;
        v118 = v204;
      }

      else
      {
        v119 = v114 + v89[23];
        v120 = *v119;
        v121 = *(v119 + 8);
        sub_1D18EB144(*v119, *(v119 + 8));
        sub_1D1C09494(v114, type metadata accessor for StaticAccessory);
        v118 = v204;
        if (v121 == 255)
        {
          v116 = 0x69662E6573756F68;
          v117 = 0xEA00000000006C6CLL;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
          inited = swift_initStackObject();
          *(inited + 16) = v232;
          *(inited + 32) = v120;
          v123 = inited + 32;
          *(inited + 40) = v121;
          v116 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
          v117 = v124;
          v113 = v228;
          swift_setDeallocating();
          v89 = v209;
          sub_1D18EB158(v123);
        }
      }

      v125 = &v77[v97[9]];
      *v125 = v116;
      v125[1] = v117;
      v126 = *(v235 + 16);
      v127 = &v77[v97[14]];
      v235 += 16;
      *&v232 = v126;
      v126(v127, v227, v236);
      v128 = v211;
      sub_1D1741C08(v113, v211, &qword_1EC6436C8, &unk_1D1E97C40);
      if (v229(v128, 1, v89) == 1)
      {
        sub_1D1741A30(v128, &qword_1EC6436C8, &unk_1D1E97C40);
        v129 = 0;
      }

      else
      {
        v129 = *(v128 + v89[31]);
        sub_1D1C09494(v128, type metadata accessor for StaticAccessory);
      }

      v77[v97[15]] = v129;
      v130 = [v231 settings];
      if (v130 && (v131 = v130, v132 = [v130 rootGroup], v131, v132))
      {

        v133 = 1;
      }

      else
      {
        v133 = 0;
      }

      v77[v97[16]] = v133;
      v134 = v222;
      v135 = v201;
      *v222 = v201;
      swift_storeEnumTagMultiPayload();
      v136 = v221;
      (*(v90 + 56))(v221, 1, 1, v89);
      v137 = v135;
      v138 = v225;
      v139 = [v225 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v140 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v141);
      *(&v200 - 64) = 1;
      *(&v200 - 7) = v138;
      *(&v200 - 6) = v134;
      updated = v137;
      *(&v200 - 5) = v137;
      *(&v200 - 32) = v223;
      v142 = v220;
      *(&v200 - 3) = v136;
      *(&v200 - 2) = v142;
      v143 = 0;
      v144 = sub_1D17893E4(sub_1D1C094F4, (&v200 - 10), v140);

      v145 = v144[2];
      if (v145)
      {
        v210 = 0;
        v211 = v105;
        v237 = MEMORY[0x1E69E7CC0];
        sub_1D178D2D8(0, v145, 0);
        v146 = v237;
        v147 = *(type metadata accessor for StaticService(0) - 8);
        v148 = (*(v147 + 80) + 32) & ~*(v147 + 80);
        v201 = v144;
        v149 = v144 + v148;
        v150 = *(v147 + 72);
        v151 = v207;
        do
        {
          v152 = *(v234 + 48);
          sub_1D1C09520(v149, v151 + v152, type metadata accessor for StaticService);
          (v232)(v151, v151 + v152, v236);
          v237 = v146;
          v154 = *(v146 + 16);
          v153 = *(v146 + 24);
          if (v154 >= v153 >> 1)
          {
            sub_1D178D2D8(v153 > 1, v154 + 1, 1);
            v146 = v237;
          }

          *(v146 + 16) = v154 + 1;
          sub_1D1741A90(v151, v146 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v154, &qword_1EC6436E8, &unk_1D1E71E40);
          v149 += v150;
          --v145;
        }

        while (v145);

        v118 = v204;
        v143 = v210;
      }

      else
      {

        v146 = MEMORY[0x1E69E7CC0];
      }

      v155 = v208;
      v156 = v213;
      if (*(v146 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
        v157 = sub_1D1E68BCC();
      }

      else
      {
        v157 = MEMORY[0x1E69E7CC8];
      }

      v158 = v206;
      v159 = v224;
      v237 = v157;
      sub_1D1CBFC40(v146, 1, &v237);
      if (v143)
      {

        __break(1u);
      }

      else
      {

        v160 = v237;
        sub_1D1741A30(v221, &qword_1EC6436C8, &unk_1D1E97C40);
        sub_1D1C09494(v222, type metadata accessor for StateSnapshot.UpdateType);
        *(v159 + v158[17]) = v160;
        v161 = v228;
        sub_1D1741C08(v228, v156, &qword_1EC6436C8, &unk_1D1E97C40);
        v162 = v209;
        if (v229(v156, 1, v209) == 1)
        {
          sub_1D1741A30(v156, &qword_1EC6436C8, &unk_1D1E97C40);
          v163 = 1;
          v164 = v215;
        }

        else
        {
          v164 = v215;
          sub_1D1C09520(v156 + v162[8], v215, type metadata accessor for StaticAccessory.DeviceIdentifier);
          sub_1D1C09494(v156, type metadata accessor for StaticAccessory);
          v163 = 0;
        }

        v165 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
        (*(*(v165 - 8) + 56))(v164, v163, 1, v165);
        sub_1D1741A90(v164, v159 + v158[18], &qword_1EC643C58, &unk_1D1E995D0);
        v166 = v161;
        v167 = v214;
        sub_1D1741C08(v166, v214, &qword_1EC6436C8, &unk_1D1E97C40);
        if (v229(v167, 1, v162) == 1)
        {
          sub_1D1741A30(v167, &qword_1EC6436C8, &unk_1D1E97C40);
          v168 = 0;
          v169 = -1;
        }

        else
        {
          v170 = v167 + v162[23];
          v168 = *v170;
          v169 = *(v170 + 8);
          sub_1D18EB144(*v170, v169);
          sub_1D1C09494(v167, type metadata accessor for StaticAccessory);
        }

        v237 = v168;
        v238 = v169;
        v171 = v231;
        StaticMediaSystemComponent.PlaybackState.init(from:specialMediaCategory:)(v171, &v237, &v239);
        *(v159 + v158[19]) = v239;
        sub_1D1C00B5C(v205, v171, &v237);
        *(v159 + v158[20]) = v237;
        v172 = [v171 mediaSession];
        if (v172 && (v173 = v172, v174 = [v172 mediaUniqueIdentifier], v173, v174))
        {
          v175 = v118;
          v176 = sub_1D1E6781C();
          v178 = v177;
        }

        else
        {
          v175 = v118;
          v176 = 0;
          v178 = 0;
        }

        v179 = (v159 + v158[21]);
        *v179 = v176;
        v179[1] = v178;
        v180 = v225;
        v181 = [v225 audioDestinationIdentifier];
        if (v181)
        {
          v182 = v181;
          v183 = sub_1D1E6781C();
          v185 = v184;
        }

        else
        {

          v183 = 0;
          v185 = 0;
        }

        sub_1D1C09494(v205, type metadata accessor for StateSnapshot.UpdateType);
        v202(v227, v236);
        v186 = (v159 + v158[22]);
        *v186 = v183;
        v186[1] = v185;
        v187 = v228;
        v188 = v216;
        sub_1D1741C08(v228, v216, &qword_1EC6436C8, &unk_1D1E97C40);
        v189 = v209;
        v190 = v229(v188, 1, v209);
        v191 = v219;
        if (v190 == 1)
        {
          sub_1D1741A30(v188, &qword_1EC6436C8, &unk_1D1E97C40);
          v192 = 0;
          v193 = -1;
        }

        else
        {
          v194 = v188 + v189[23];
          v192 = *v194;
          v193 = *(v194 + 8);
          sub_1D18EB144(*v194, v193);
          sub_1D1C09494(v188, type metadata accessor for StaticAccessory);
        }

        v195 = v159 + v158[23];
        *v195 = v192;
        *(v195 + 8) = v193;
        v196 = v217;
        sub_1D1741C08(v187, v217, &qword_1EC6436C8, &unk_1D1E97C40);
        if (v229(v196, 1, v189) == 1)
        {
          sub_1D1741A30(v196, &qword_1EC6436C8, &unk_1D1E97C40);
          v197 = 0;
        }

        else
        {
          v197 = *(v196 + v189[33]);

          sub_1D1C09494(v196, type metadata accessor for StaticAccessory);
        }

        *(v159 + v158[24]) = v197;
        v198 = v218;
        sub_1D1741A90(v187, v218, &qword_1EC6436C8, &unk_1D1E97C40);
        if (v229(v198, 1, v189) == 1)
        {
          sub_1D1741A30(v198, &qword_1EC6436C8, &unk_1D1E97C40);
          v199 = type metadata accessor for StaticSoftwareUpdate(0);
          (*(*(v199 - 8) + 56))(v191, 1, 1, v199);
        }

        else
        {
          sub_1D1741C08(v198 + v189[30], v191, &qword_1EC644760, &unk_1D1E9E530);
          sub_1D1C09494(v198, type metadata accessor for StaticAccessory);
        }

        sub_1D1741A90(v191, v159 + v158[25], &qword_1EC644760, &unk_1D1E9E530);
        *(v159 + v158[26]) = v223;
        sub_1D1C0942C(v159, v175, type metadata accessor for StaticMediaProfile);
        return (*(v226 + 56))(v175, 0, 1, v158);
      }

      return result;
    }
  }

  else
  {
  }

  v71 = v231;

  sub_1D1C09494(a2, type metadata accessor for StateSnapshot.UpdateType);
  v72 = *(v226 + 56);

  return v72(a7, 1, 1, v56);
}

void sub_1D1C00B5C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C09520(a1, v14, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v15 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
    v16 = *(v7 + 8);
    v16(v14, v6);
    v17 = [a2 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v15 + 16) && (v18 = sub_1D1742188(v10), (v19 & 1) != 0))
    {
      v20 = *(*(v15 + 56) + v18);
      v16(v10, v6);

      if (v20 < 0)
      {
        v21 = (v20 & 1) == 0;
        goto LABEL_12;
      }
    }

    else
    {

      v16(v10, v6);
    }
  }

  else
  {
    sub_1D1C09494(v14, type metadata accessor for StateSnapshot.UpdateType);
  }

  v22 = [a2 mediaSession];
  if (v22 && (v23 = v22, v24 = [v22 sleepWakeState], v23, v24 <= 2))
  {
    v21 = 2 - v24;
  }

  else
  {
    v21 = 3;
  }

LABEL_12:
  *a3 = v21;
}

uint64_t sub_1D1C00DDC(uint64_t a1)
{
  v2 = sub_1D1C075F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}