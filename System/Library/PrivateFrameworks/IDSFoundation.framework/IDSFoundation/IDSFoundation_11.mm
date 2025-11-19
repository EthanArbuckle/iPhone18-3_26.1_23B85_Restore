uint64_t sub_1A7D12354()
{
  v1 = v0[3] + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 16);
  v0[7] = v2;
  *(v1 + 16) = 0;
  os_unfair_lock_unlock(v1);
  if (v2)
  {
    v0[8] = sub_1A7CC7FFC(&qword_1EB2B57A8);
    sub_1A7E226F0();
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D124A8;

    return MEMORY[0x1EEE6DA10]();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A7D124A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A7D12624;
  }

  else
  {
    v2 = sub_1A7D125BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7D125BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D12624()
{
  v21 = v0;
  v1 = v0[10];
  v0[2] = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v3 = sub_1A7E22040();
    v4 = sub_1A7E228D0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[10];
    if (!v5)
    {
LABEL_7:

      goto LABEL_9;
    }

    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1A7B0CB38(*(v7 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name), *(v7 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8), &v20);
LABEL_6:
    sub_1A7B0CD6C(v9);
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    goto LABEL_7;
  }

  v10 = v0[10];
  v11 = v10;

  v3 = sub_1A7E22040();
  v12 = sub_1A7E228E0();

  v13 = os_log_type_enabled(v3, v12);
  v6 = v0[10];
  if (v13)
  {
    v14 = v0[3];
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A7B0CB38(*(v14 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name), *(v14 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8), &v20);
    *(v8 + 12) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v15 = v17;
    sub_1A7D13CA0(v15);
    MEMORY[0x1AC5654B0](v15, -1, -1);
    goto LABEL_6;
  }

LABEL_9:

  v18 = v0[1];

  return v18();
}

uint64_t IDSLinksQualityRepeatingAsyncTask.linkEngine.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1);
  return Strong;
}

uint64_t sub_1A7D12964()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IDSLinksQualityRepeatingAsyncTask.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);

  return v1;
}

uint64_t sub_1A7D12A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_1A7E22640();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_1A7E22CF0();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v10 = sub_1A7E22D10();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D12B94, 0, 0);
}

uint64_t sub_1A7D12B94()
{
  swift_beginAccess();
  if ((sub_1A7E22700() & 1) == 0)
  {
    Strong = swift_weakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v2 = (Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
      v3 = swift_weakLoadStrong();
      v0[26] = v3;
      os_unfair_lock_unlock(v2);
      if (v3)
      {
        v7 = (v0[12] + *v0[12]);
        v4 = swift_task_alloc();
        v0[27] = v4;
        *v4 = v0;
        v4[1] = sub_1A7D12D64;

        return v7(v3);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A7D12D64(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = v3;

  if (v3)
  {
    v7 = sub_1A7D137AC;
  }

  else
  {
    *(v6 + 57) = a3;
    v7 = sub_1A7D12E90;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A7D12E90()
{
  if (*(v0 + 57))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    sub_1A7E23170();
    *(v0 + 64) = v4;
    *(v0 + 72) = v3;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v8 = sub_1A7B059B8(&qword_1EB2B2880, MEMORY[0x1E69E8820]);
    sub_1A7E23150();
    sub_1A7B059B8(&qword_1EB2B2888, MEMORY[0x1E69E87E8]);
    sub_1A7E22D20();
    v9 = *(v6 + 8);
    *(v0 + 248) = v9;
    *(v0 + 256) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_1A7D130CC;
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);

    return MEMORY[0x1EEE6DE58](v12, v0 + 40, v11, v8);
  }
}

uint64_t sub_1A7D130CC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 168), *(v2 + 144));
    v3 = sub_1A7D133EC;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);
    v6 = *(v2 + 176);
    (*(v2 + 248))(*(v2 + 168), *(v2 + 144));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1A7D13224;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7D13224()
{

  if ((sub_1A7E22700() & 1) == 0)
  {
    Strong = swift_weakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v2 = (Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
      v3 = swift_weakLoadStrong();
      v0[26] = v3;
      os_unfair_lock_unlock(v2);
      if (v3)
      {
        v7 = (v0[12] + *v0[12]);
        v4 = swift_task_alloc();
        v0[27] = v4;
        *v4 = v0;
        v4[1] = sub_1A7D12D64;

        return v7(v3);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A7D133EC()
{
  v27 = v0;
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[34];
  v0[10] = v1;
  v2 = v1;
  sub_1A7CC7FFC(&qword_1EB2B57A8);
  if (swift_dynamicCast())
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v3 = sub_1A7E22040();
    v4 = sub_1A7E228D0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[25];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v10 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v11 = sub_1A7B0CB38(v9, v10, &v26);

      *(v7 + 4) = v11;
      sub_1A7B0CD6C(v8);
      MEMORY[0x1AC5654B0](v8, -1, -1);
      MEMORY[0x1AC5654B0](v7, -1, -1);

LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
    v12 = v1;

    v3 = sub_1A7E22040();
    v13 = sub_1A7E228E0();

    v14 = os_log_type_enabled(v3, v13);
    v15 = v0[25];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      v20 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v19 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v21 = sub_1A7B0CB38(v20, v19, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      sub_1A7D13CA0(v17);
      MEMORY[0x1AC5654B0](v17, -1, -1);
      sub_1A7B0CD6C(v18);
      MEMORY[0x1AC5654B0](v18, -1, -1);
      MEMORY[0x1AC5654B0](v16, -1, -1);

      goto LABEL_6;
    }
  }

LABEL_9:

  v24 = v0[1];

  return v24();
}

uint64_t sub_1A7D137AC()
{
  v27 = v0;
  v1 = v0[30];
  v0[10] = v1;
  v2 = v1;
  sub_1A7CC7FFC(&qword_1EB2B57A8);
  if (swift_dynamicCast())
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v3 = sub_1A7E22040();
    v4 = sub_1A7E228D0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[25];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v10 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v11 = sub_1A7B0CB38(v9, v10, &v26);

      *(v7 + 4) = v11;
      sub_1A7B0CD6C(v8);
      MEMORY[0x1AC5654B0](v8, -1, -1);
      MEMORY[0x1AC5654B0](v7, -1, -1);

LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
    v12 = v1;

    v3 = sub_1A7E22040();
    v13 = sub_1A7E228E0();

    v14 = os_log_type_enabled(v3, v13);
    v15 = v0[25];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      v20 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v19 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v21 = sub_1A7B0CB38(v20, v19, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      sub_1A7D13CA0(v17);
      MEMORY[0x1AC5654B0](v17, -1, -1);
      sub_1A7B0CD6C(v18);
      MEMORY[0x1AC5654B0](v18, -1, -1);
      MEMORY[0x1AC5654B0](v16, -1, -1);

      goto LABEL_6;
    }
  }

LABEL_9:

  v24 = v0[1];

  return v24();
}

uint64_t IDSLinksQualityRepeatingAsyncTask.deinit()
{
  v1 = OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger;
  v2 = sub_1A7E22060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A7D13D08(v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state + 8);
  return v0;
}

uint64_t IDSLinksQualityRepeatingAsyncTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger;
  v2 = sub_1A7E22060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A7D13D08(v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D13CA0(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B57A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IDSLinksQualityRepeatingAsyncTask()
{
  result = qword_1EB2B30E8;
  if (!qword_1EB2B30E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7D13D8C()
{
  result = sub_1A7E22060();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7D13E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A7D13EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A7D13F14()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC250);
  sub_1A7B0CB00(v4, qword_1EB2DC250);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D1404C()
{
  v1[10] = v0;
  type metadata accessor for LEToolOptions();
  v1[11] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for LEToolRequest(0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D14138, 0, 0);
}

uint64_t sub_1A7D14138()
{
  type metadata accessor for LEToolQualityDeltaCommand(0);
  sub_1A7CC7FFC(&qword_1EB2B5958);
  sub_1A7E22010();
  if (v0[8] && (v1 = sub_1A7E21990(), v3 = v2, , v3 >> 60 != 15))
  {
    sub_1A7E215B0();
    swift_allocObject();
    sub_1A7E215A0();
    sub_1A7D165B8();
    sub_1A7E21590();
    sub_1A7B1516C(v1, v3);

    v4 = v0[9];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[14];
  v6 = v0[12];
  *v5 = v4;
  swift_storeEnumTagMultiPayload();
  sub_1A7D16550(v5, v6, type metadata accessor for LEToolRequest);
  sub_1A7CC7FFC(&qword_1EB2B5690);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1A7D14390;
  v8 = v0[11];
  v9 = v0[12];

  return sub_1A7DE8A40(v9, v8, (v0 + 2));
}

uint64_t sub_1A7D14390()
{
  v2 = *v1;
  v2[16] = v0;

  v3 = v2[12];
  sub_1A7D1649C(v2[11], type metadata accessor for LEToolOptions);
  sub_1A7D1649C(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C((v2 + 2));
  if (v0)
  {
    v4 = sub_1A7D145B8;
  }

  else
  {
    v4 = sub_1A7D14518;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A7D14518()
{
  sub_1A7D1649C(*(v0 + 112), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D145B8()
{
  sub_1A7D1649C(*(v0 + 112), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D14654@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v41 = a2;
  v42 = sub_1A7CC7FFC(&qword_1EB2B5958);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v2);
  v44 = &v39 - v3;
  v45 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v4);
  v47 = &v39 - v5;
  v48 = sub_1A7CC7FFC(&qword_1EB2B59C8);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v6);
  v8 = &v39 - v7;
  v9 = sub_1A7E21FA0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1A7CC7FFC(&qword_1EB2B59B8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v39 - v15;
  v17 = sub_1A7CC7FFC(&qword_1EB2B59C0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v39 - v19;
  v21 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = type metadata accessor for LEToolQualityDeltaCommand(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  v28 = *(v24 + 28);
  v29 = sub_1A7E21DA0();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  v30 = sub_1A7E21DF0();
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  sub_1A7E21EB0();
  sub_1A7E21F90();
  v31 = v49;
  sub_1A7E22000();
  sub_1A7CC9878(v31, v31[3]);
  sub_1A7D1660C();
  v32 = v50;
  sub_1A7E23250();
  if (!v32)
  {
    v34 = v43;
    v33 = v44;
    v52 = 0;
    sub_1A7CF3788(&qword_1EB2B56D8, &qword_1EB2B5690);
    v35 = v45;
    sub_1A7E22F30();
    (*(v34 + 40))(v27, v47, v35);
    v51 = 1;
    sub_1A7CF3788(&qword_1EB2B59D8, &qword_1EB2B5958);
    v36 = v42;
    v37 = v48;
    sub_1A7E22F30();
    (*(v46 + 8))(v8, v37);
    (*(v40 + 40))(&v27[v28], v33, v36);
    sub_1A7D16550(v27, v41, type metadata accessor for LEToolQualityDeltaCommand);
  }

  sub_1A7B0CD6C(v31);
  return sub_1A7D1649C(v27, type metadata accessor for LEToolQualityDeltaCommand);
}

uint64_t sub_1A7D14CCC()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_1A7D14D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D14DDC(uint64_t a1)
{
  v2 = sub_1A7D1660C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D14E18(uint64_t a1)
{
  v2 = sub_1A7D1660C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D14E54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D1404C();
}

uint64_t sub_1A7D14F04()
{
  v0 = sub_1A7E21FA0();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1A7CC7FFC(&qword_1EB2B59B8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B59C0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  v12 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  v14 = sub_1A7E21DA0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_1A7E21DF0();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1A7E21EB0();
  sub_1A7E21F90();
  return sub_1A7E22000();
}

uint64_t sub_1A7D151E0()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC268);
  sub_1A7B0CB00(v4, qword_1EB2DC268);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D15328()
{
  v1[7] = v0;
  type metadata accessor for LEToolOptions();
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for LEToolRequest(0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D15414, 0, 0);
}

uint64_t sub_1A7D15414()
{
  v1 = v0[11];
  v2 = v0[9];
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1A7D16550(v1, v2, type metadata accessor for LEToolRequest);
  sub_1A7CC7FFC(&qword_1EB2B5690);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1A7D15540;
  v4 = v0[8];
  v5 = v0[9];

  return sub_1A7DE8A40(v5, v4, (v0 + 2));
}

uint64_t sub_1A7D15540()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(v2 + 104) = v0;

  sub_1A7D1649C(v4, type metadata accessor for LEToolOptions);
  sub_1A7D1649C(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C(v2 + 16);
  if (v0)
  {
    v5 = sub_1A7D15764;
  }

  else
  {
    v5 = sub_1A7D156C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A7D156C4()
{
  sub_1A7D1649C(*(v0 + 88), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D15764()
{
  sub_1A7D1649C(*(v0 + 88), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D15804@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5690);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B59A0);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = type metadata accessor for LEToolQualityReportCommand(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D164FC();
  v17 = v24;
  sub_1A7E23250();
  if (!v17)
  {
    v18 = v22;
    sub_1A7CF3788(&qword_1EB2B56D8, &qword_1EB2B5690);
    sub_1A7E22F30();
    (*(v23 + 8))(v10, v7);
    (*(v18 + 40))(v16, v6, v3);
    sub_1A7D16550(v16, v21, type metadata accessor for LEToolQualityReportCommand);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D1649C(v16, type metadata accessor for LEToolQualityReportCommand);
}

uint64_t sub_1A7D15B60(uint64_t a1)
{
  v2 = sub_1A7D164FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D15B9C(uint64_t a1)
{
  v2 = sub_1A7D164FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D15BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD2A2C;

  return sub_1A7D15328();
}

uint64_t sub_1A7D15C88()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions();
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7D15D74()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC280);
  sub_1A7B0CB00(v4, qword_1EB2DC280);
  sub_1A7CC7FFC(&qword_1EB2B5680);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A7E418D0;
  v6 = type metadata accessor for LEToolQualityDeltaCommand(0);
  v7 = sub_1A7D1616C(&qword_1EB2B5938, type metadata accessor for LEToolQualityDeltaCommand);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = type metadata accessor for LEToolQualityReportCommand(0);
  v9 = sub_1A7D1616C(&qword_1EB2B5940, type metadata accessor for LEToolQualityReportCommand);
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v10 = sub_1A7E21EF0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D15F78()
{
  sub_1A7D16080();
  sub_1A7E21E90();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A7D16028()
{
  result = qword_1EB2B5920;
  if (!qword_1EB2B5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5920);
  }

  return result;
}

unint64_t sub_1A7D16080()
{
  result = qword_1EB2B5928;
  if (!qword_1EB2B5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5928);
  }

  return result;
}

unint64_t sub_1A7D160D8()
{
  result = qword_1EB2B5930;
  if (!qword_1EB2B5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5930);
  }

  return result;
}

uint64_t sub_1A7D1616C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A7D16204()
{
  sub_1A7D0293C();
  if (v0 <= 0x3F)
  {
    sub_1A7D16288();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7D16288()
{
  if (!qword_1EB2B5970)
  {
    sub_1A7CC9830(&qword_1EB2B5978);
    v0 = sub_1A7E22030();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B5970);
    }
  }
}

uint64_t sub_1A7D1649C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A7D164FC()
{
  result = qword_1EB2B59A8;
  if (!qword_1EB2B59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59A8);
  }

  return result;
}

uint64_t sub_1A7D16550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D165B8()
{
  result = qword_1EB2B59B0;
  if (!qword_1EB2B59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59B0);
  }

  return result;
}

unint64_t sub_1A7D1660C()
{
  result = qword_1EB2B59D0;
  if (!qword_1EB2B59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59D0);
  }

  return result;
}

unint64_t sub_1A7D16684()
{
  result = qword_1EB2B59E0;
  if (!qword_1EB2B59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59E0);
  }

  return result;
}

unint64_t sub_1A7D166DC()
{
  result = qword_1EB2B59E8;
  if (!qword_1EB2B59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59E8);
  }

  return result;
}

unint64_t sub_1A7D16734()
{
  result = qword_1EB2B59F0;
  if (!qword_1EB2B59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59F0);
  }

  return result;
}

unint64_t sub_1A7D1678C()
{
  result = qword_1EB2B59F8;
  if (!qword_1EB2B59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59F8);
  }

  return result;
}

unint64_t sub_1A7D167E4()
{
  result = qword_1EB2B5A00;
  if (!qword_1EB2B5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A00);
  }

  return result;
}

unint64_t sub_1A7D1683C()
{
  result = qword_1EB2B5A08;
  if (!qword_1EB2B5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A08);
  }

  return result;
}

Swift::Void __swiftcall Data.appendVarInt(rawUInt64:)(Swift::UInt64 rawUInt64)
{
  v1 = rawUInt64;
  v9 = *MEMORY[0x1E69E9840];
  if (rawUInt64 < 0x80)
  {
    LOBYTE(v3) = rawUInt64;
  }

  else
  {
    do
    {
      v2 = sub_1A7CC7FFC(&qword_1EB2B5A10);
      v7 = v2;
      v8 = sub_1A7D16A78();
      LOBYTE(v6[0]) = v1 | 0x80;
      sub_1A7CC9878(v6, v2);
      sub_1A7E219B0();
      sub_1A7B0CD6C(v6);
      v3 = v1 >> 7;
      v4 = v1 >> 14;
      v1 >>= 7;
    }

    while (v4);
  }

  v5 = sub_1A7CC7FFC(&qword_1EB2B5A10);
  v7 = v5;
  v8 = sub_1A7D16A78();
  LOBYTE(v6[0]) = v3;
  sub_1A7CC9878(v6, v5);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v6);
}

unint64_t sub_1A7D16A78()
{
  result = qword_1EB2B3068;
  if (!qword_1EB2B3068)
  {
    sub_1A7CC9830(&qword_1EB2B5A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3068);
  }

  return result;
}

void Data.appendVarInt<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v25 - v16;
  (*(v8 + 16))(v25 - v16, a1, a2, v15);
  if (sub_1A7E22A80() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_1A7E23120(), sub_1A7E230C0(), v18 = sub_1A7E22220(), (*(v8 + 8))(v12, a2), (v18))
  {
    if (sub_1A7E22A70() <= 63)
    {
      goto LABEL_13;
    }

    v25[0] = v3;
    v25[1] = -1;
    v19 = sub_1A7E22A80();
    v20 = sub_1A7E22A70();
    if (v19)
    {
      if (v20 <= 64)
      {
        goto LABEL_11;
      }

      sub_1A7D16F00();
      sub_1A7E22A50();
      v21 = sub_1A7E22210();
      (*(v8 + 8))(v12, a2);
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v20 < 65)
      {
LABEL_12:
        sub_1A7E22A60();
        goto LABEL_13;
      }

      sub_1A7D16F00();
      sub_1A7E22A50();
      v22 = sub_1A7E22210();
      (*(v8 + 8))(v12, a2);
      if ((v22 & 1) == 0)
      {
LABEL_13:
        v24 = sub_1A7E22A60();
        (*(v8 + 8))(v17, a2);
        Data.appendVarInt(rawUInt64:)(v24);
        return;
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    sub_1A7E23120();
    sub_1A7E230C0();
    v23 = sub_1A7E22200();
    (*(v8 + 8))(v12, a2);
    if (v23)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
}

{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v26 - v16;
  (*(v8 + 16))(&v26 - v16, a1, a2, v15);
  if ((sub_1A7E22A80() & 1) != 0 && sub_1A7E22A70() > 64)
  {
    v27 = 0x8000000000000000;
    if (sub_1A7E22A80())
    {
      if (sub_1A7E22A70() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v26 = v3;
    v18 = sub_1A7E22A80();
    v19 = sub_1A7E22A70();
    if (v18)
    {
      if (v19 > 64)
      {
LABEL_8:
        sub_1A7D173B0();
        sub_1A7E22A50();
        v20 = sub_1A7E22210();
        (*(v8 + 8))(v12, a2);
        if ((v20 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return;
      }

      swift_getAssociatedConformanceWitness();
      sub_1A7E23120();
      sub_1A7E230C0();
      v21 = sub_1A7E22210();
      (*(v8 + 8))(v12, a2);
      if (v21)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1A7E22A60();
      goto LABEL_14;
    }

    if (v19 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1A7E22A70() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = sub_1A7E22A80();
    v23 = sub_1A7E22A70();
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v23 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1A7D173B0();
    sub_1A7E22A50();
    v24 = sub_1A7E22210();
    (*(v8 + 8))(v12, a2);
    if (v24)
    {
      __break(1u);
LABEL_19:
      if (sub_1A7E22A70() == 64 && (sub_1A7E22A80() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v23 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1A7E22A60();
LABEL_24:
  v25 = sub_1A7E22A60();
  (*(v8 + 8))(v17, a2);
  Data.appendVarInt(rawUInt64:)((2 * v25) ^ (v25 >> 63));
}

unint64_t sub_1A7D16F00()
{
  result = qword_1EB2B5A18;
  if (!qword_1EB2B5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A18);
  }

  return result;
}

unint64_t sub_1A7D173B0()
{
  result = qword_1EB2B5A20;
  if (!qword_1EB2B5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A20);
  }

  return result;
}

uint64_t sub_1A7D17410(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_57;
    }

    v8 = v8;
LABEL_10:
    if (v8 > a2)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A7D17E10();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = sub_1A7E08C84(a2, a3, a4);
  v16 = v4;
  if (v4)
  {
    return v5;
  }

  v18 = 0;
  v19 = a3;
  v20 = __OFSUB__(HIDWORD(a3), a3);
  v36 = v20;
  v21 = a2;
  v22 = a2 - 0x7FFFFFFFFFFFFFFELL;
  v5 = 1;
  v39 = a2;
  v38 = a2 - 0x7FFFFFFFFFFFFFFELL;
  while (1)
  {
    v23 = (v15 & 0x7F) << v18;
    if (v18 >= 0x20)
    {
      v23 = 0;
    }

    v16 |= v23;
    if ((v15 & 0x80) == 0)
    {
      *a1 = v16;
      return v5;
    }

    v24 = v21 + v5;
    if (__OFADD__(v21, v5))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    if (v22 + v5 == 1)
    {
      goto LABEL_50;
    }

    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v24 <= 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_13;
        }

        memset(v40, 0, 14);
        goto LABEL_21;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      v11 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v11)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v25 = BYTE6(a4);
      if (v7)
      {
        v25 = HIDWORD(a3) - a3;
        if (v36)
        {
          goto LABEL_53;
        }
      }
    }

    if (v25 < (v24 + 1))
    {
      goto LABEL_13;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 == 1)
    {
      if (a3 >> 32 < a3)
      {
        goto LABEL_54;
      }

      v28 = sub_1A7E21630();
      if (!v28)
      {
        goto LABEL_59;
      }

      v29 = v28;
      v30 = sub_1A7E21660();
      if (__OFSUB__(a3, v30))
      {
        goto LABEL_56;
      }

      v31 = a3 - v30 + v29;
      result = sub_1A7E21650();
      if (!v31)
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    LOWORD(v40[0]) = v19;
    BYTE2(v40[0]) = BYTE2(v19);
    BYTE3(v40[0]) = BYTE3(v19);
    BYTE4(v40[0]) = BYTE4(a3);
    BYTE5(v40[0]) = BYTE5(v19);
    BYTE6(v40[0]) = BYTE6(v19);
    HIBYTE(v40[0]) = HIBYTE(v19);
    LOWORD(v40[1]) = a4;
    BYTE2(v40[1]) = BYTE2(a4);
    BYTE3(v40[1]) = BYTE3(a4);
    BYTE4(v40[1]) = BYTE4(a4);
    BYTE5(v40[1]) = BYTE5(a4);
LABEL_21:
    v15 = *(v40 + v24);
LABEL_22:
    ++v5;
    v18 += 7;
    if (v5 == 0x124924924924924BLL)
    {
      goto LABEL_51;
    }
  }

  v32 = *(v19 + 16);
  v33 = sub_1A7E21630();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1A7E21660();
    if (__OFSUB__(v32, v35))
    {
      goto LABEL_55;
    }

    v31 = v32 - v35 + v34;
    result = sub_1A7E21650();
    if (!v31)
    {
      goto LABEL_61;
    }

LABEL_47:
    v15 = *(v31 + v24);
    v21 = v39;
    v19 = a3;
    v22 = v38;
    goto LABEL_22;
  }

  sub_1A7E21650();
  __break(1u);
LABEL_59:
  result = sub_1A7E21650();
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1A7D17798(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_60;
    }

    v8 = v8;
LABEL_10:
    if (v8 > a2)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A7D17E10();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = sub_1A7E08C84(a2, a3, a4);
  v16 = v4;
  if (v4)
  {
    return v5;
  }

  v18 = 0;
  v19 = a3;
  v20 = __OFSUB__(HIDWORD(a3), a3);
  v37 = v20;
  v21 = a2;
  v22 = a2 - 0x7FFFFFFFFFFFFFFELL;
  v5 = 1;
  v40 = a2;
  v39 = a2 - 0x7FFFFFFFFFFFFFFELL;
  while (1)
  {
    v23 = (v15 & 0x7F) << v18;
    if (v18 >= 0x40)
    {
      v23 = 0;
    }

    if (v18 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v16 |= v24;
    if ((v15 & 0x80) == 0)
    {
      *a1 = v16;
      return v5;
    }

    v25 = v21 + v5;
    if (__OFADD__(v21, v5))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (v22 + v5 == 1)
    {
      goto LABEL_53;
    }

    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v25 <= 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_13;
        }

        memset(v41, 0, 14);
        goto LABEL_21;
      }

      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      v11 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v11)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v26 = BYTE6(a4);
      if (v7)
      {
        v26 = HIDWORD(a3) - a3;
        if (v37)
        {
          goto LABEL_56;
        }
      }
    }

    if (v26 < (v25 + 1))
    {
      goto LABEL_13;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 == 1)
    {
      if (a3 >> 32 < a3)
      {
        goto LABEL_57;
      }

      v29 = sub_1A7E21630();
      if (!v29)
      {
        goto LABEL_62;
      }

      v30 = v29;
      v31 = sub_1A7E21660();
      if (__OFSUB__(a3, v31))
      {
        goto LABEL_59;
      }

      v32 = a3 - v31 + v30;
      result = sub_1A7E21650();
      if (!v32)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    }

    LOWORD(v41[0]) = v19;
    BYTE2(v41[0]) = BYTE2(v19);
    BYTE3(v41[0]) = BYTE3(v19);
    BYTE4(v41[0]) = BYTE4(a3);
    BYTE5(v41[0]) = BYTE5(v19);
    BYTE6(v41[0]) = BYTE6(v19);
    HIBYTE(v41[0]) = HIBYTE(v19);
    LOWORD(v41[1]) = a4;
    BYTE2(v41[1]) = BYTE2(a4);
    BYTE3(v41[1]) = BYTE3(a4);
    BYTE4(v41[1]) = BYTE4(a4);
    BYTE5(v41[1]) = BYTE5(a4);
LABEL_21:
    v15 = *(v41 + v25);
LABEL_22:
    ++v5;
    v18 += 7;
    if (v5 == 0x124924924924924BLL)
    {
      goto LABEL_54;
    }
  }

  v33 = *(v19 + 16);
  v34 = sub_1A7E21630();
  if (v34)
  {
    v35 = v34;
    v36 = sub_1A7E21660();
    if (__OFSUB__(v33, v36))
    {
      goto LABEL_58;
    }

    v32 = v33 - v36 + v35;
    result = sub_1A7E21650();
    if (!v32)
    {
      goto LABEL_64;
    }

LABEL_50:
    v15 = *(v32 + v25);
    v21 = v40;
    v19 = a3;
    v22 = v39;
    goto LABEL_22;
  }

  sub_1A7E21650();
  __break(1u);
LABEL_62:
  result = sub_1A7E21650();
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

Swift::UInt64 sub_1A7D17B2C(uint64_t a1, unint64_t a2)
{

  result = sub_1A7E03860(a1, a2);
  v6 = result;
  v7 = v5;
  v8 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_18;
    }

    result = HIDWORD(v6) - v6;
LABEL_10:
    if ((result & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(result))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  result = BYTE6(v5);
LABEL_14:
  Data.appendVarInt(rawUInt64:)(result);
  sub_1A7E21A30();

  return sub_1A7CC7E50(v6, v7);
}

uint64_t sub_1A7D17BF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1A7E222E0();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A7D17410(&v30, a1, a2, a3);
  if (v3)
  {
    return v10;
  }

  v12 = v11;
  v13 = __OFADD__(a1, v11);
  result = a1 + v11;
  if (v13)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = v30;
  v16 = result + v30;
  if (__OFADD__(result, v30))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(a2 + 16);
      v18 = *(a2 + 24);
      v13 = __OFSUB__(v18, v19);
      v20 = v18 - v19;
      if (v13)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v20 >= v16)
      {
LABEL_11:
        if (v16 >= result)
        {
          v21 = v12;
          v22 = sub_1A7E219D0();
          v24 = v23;
          sub_1A7E222D0();
          v25 = sub_1A7E222B0();
          if (!v26)
          {
            sub_1A7D17E10();
            v10 = swift_allocError();
            *v28 = 1;
            swift_willThrow();
            sub_1A7CC7E50(v22, v24);
            return v10;
          }

          v10 = v25;
          result = sub_1A7CC7E50(v22, v24);
          if (!__OFADD__(v21, v15))
          {
            return v10;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else if (v16 <= 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    sub_1A7D17E10();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    return v10;
  }

  if (!v17)
  {
    if (BYTE6(a3) < v16)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    if (HIDWORD(a2) - a2 < v16)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1A7D17E10()
{
  result = qword_1EB2B5A28;
  if (!qword_1EB2B5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A28);
  }

  return result;
}

unint64_t sub_1A7D17E78()
{
  result = qword_1EB2B5A30;
  if (!qword_1EB2B5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A30);
  }

  return result;
}

uint64_t LinkEndpoint.isRealloc.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointIsRealloc);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040);
  return swift_dynamicCast() & v7;
}

_OWORD *LinkEndpoint.isRealloc.setter(char a1)
{
  v3 = &type metadata for IDSLinkEndpointIsRealloc;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointIsRealloc);
}

_OWORD *(*LinkEndpoint.isRealloc.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1A7CE0720(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7D18000;
}

_OWORD *sub_1A7D18000(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for IDSLinkEndpointIsRealloc;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsRealloc);
}

__n128 sub_1A7D180B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A7D180D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 51))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A7D18118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A7D18180()
{
  result = qword_1EB2B5A38;
  if (!qword_1EB2B5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A38);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CLITableColumn.Sizing(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for CLITableColumn.Sizing(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CLITableColumn.Sizing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CLITableColumn.Sizing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for LEToolOptions()
{
  result = qword_1EB2B5A50;
  if (!qword_1EB2B5A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D18340()
{
  sub_1A7D183C4();
  if (v0 <= 0x3F)
  {
    sub_1A7D18458();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7D183C4()
{
  if (!qword_1EB2B5A60)
  {
    type metadata accessor for IDSToolOptions();
    sub_1A7D190C8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
    v0 = sub_1A7E21DE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B5A60);
    }
  }
}

void sub_1A7D18458()
{
  if (!qword_1EB2B5A70)
  {
    v0 = sub_1A7E21FF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B5A70);
    }
  }
}

uint64_t sub_1A7D184A8()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1A7CC7FFC(&qword_1EB2B59C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1A7CC7FFC(&qword_1EB2B5A80);
  sub_1A7E21EE0();
  *(swift_allocObject() + 16) = xmmword_1A7E418D0;
  sub_1A7E21EC0();
  sub_1A7E21ED0();
  sub_1A7E21EA0();
  sub_1A7E21D80();
  sub_1A7E21DB0();
  v8 = sub_1A7E21DA0();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  return sub_1A7E21FE0();
}

uint64_t sub_1A7D1872C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IDSToolOptions();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A7CC7FFC(&qword_1EB2B5A40);
  sub_1A7E21DC0();
  sub_1A7CC7FFC(&qword_1EB2B5A88);
  sub_1A7E21FC0();
  if (v13)
  {
    if (v13 != 1)
    {
      result = sub_1A7D19164(v5, type metadata accessor for IDSToolOptions);
      *a1 = 2;
      *(a1 + 8) = 0;
      return result;
    }

    if (qword_1EB2B4728 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EB2B53F1;
  }

  else
  {
    if (qword_1EB2B4720 != -1)
    {
      swift_once();
    }

    v6 = &qword_1EB2B53E8;
  }

  v7 = *(v6 + 8);
  v8 = *v6 | (*(v6 + 2) << 16);
  v9 = *(v6 + 1);
  sub_1A7D19164(v5, type metadata accessor for IDSToolOptions);
  type metadata accessor for LEToolOptions();
  sub_1A7CC7FFC(&qword_1EB2B5A48);
  result = sub_1A7E21FC0();
  v11 = 0x1000000;
  if (!v12[14])
  {
    v11 = 0;
  }

  *a1 = v11 | (v9 << 32) | v8;
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1A7D1891C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1A7CC7FFC(&qword_1EB2B5A48);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v3);
  v5 = &v26 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v31 = &v26 - v8;
  v32 = sub_1A7CC7FFC(&qword_1EB2B5A90);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v9);
  v11 = &v26 - v10;
  v12 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = type metadata accessor for LEToolOptions();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions();
  sub_1A7D190C8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
  sub_1A7E21DD0();
  v19 = *(v15 + 28);
  sub_1A7D184A8();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D19110();
  v20 = v33;
  sub_1A7E23250();
  if (!v20)
  {
    v21 = v29;
    v35 = 0;
    sub_1A7CF3788(&qword_1EB2B5AA0, &qword_1EB2B5A40);
    sub_1A7E22F30();
    (*(v21 + 40))(v18, v31, v6);
    v34 = 1;
    sub_1A7CF3788(&qword_1EB2B5AA8, &qword_1EB2B5A48);
    v22 = v5;
    v23 = v28;
    v24 = v32;
    sub_1A7E22F30();
    (*(v30 + 8))(v11, v24);
    (*(v26 + 40))(&v18[v19], v22, v23);
    sub_1A7D191C4(v18, v27);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D19164(v18, type metadata accessor for LEToolOptions);
}

uint64_t sub_1A7D18DC4()
{
  if (*v0)
  {
    return 0x4E6564756C636E69;
  }

  else
  {
    return 0x6974704F65736162;
  }
}

uint64_t sub_1A7D18E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974704F65736162 && a2 == 0xEB00000000736E6FLL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E6564756C636E69 && a2 == 0xEC00000073656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D18EF4(uint64_t a1)
{
  v2 = sub_1A7D19110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D18F30(uint64_t a1)
{
  v2 = sub_1A7D19110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D18F6C()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions();
  sub_1A7D190C8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
  sub_1A7E21DD0();
  return sub_1A7D184A8();
}

uint64_t sub_1A7D190C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A7D19110()
{
  result = qword_1EB2B5A98;
  if (!qword_1EB2B5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A98);
  }

  return result;
}

uint64_t sub_1A7D19164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7D191C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D1923C()
{
  result = qword_1EB2B5AB0;
  if (!qword_1EB2B5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AB0);
  }

  return result;
}

unint64_t sub_1A7D19294()
{
  result = qword_1EB2B5AB8;
  if (!qword_1EB2B5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AB8);
  }

  return result;
}

unint64_t sub_1A7D192EC()
{
  result = qword_1EB2B5AC0;
  if (!qword_1EB2B5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AC0);
  }

  return result;
}

void IDSGLTwoWayLinkConnectorPlugin.Behavior.cli.getter(uint64_t a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x7463656E6E6F43;
  if (*v1)
  {
    v3 = 0x656E6E6F63736944;
  }

  v4 = 0xE700000000000000;
  if (*v1)
  {
    v4 = 0xEA00000000007463;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  if (v2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 17) = v5;
}

uint64_t sub_1A7D193A4(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A7CD22FC;

  return v7(v4);
}

uint64_t sub_1A7D19498()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5AC8);
  sub_1A7B0CB00(v0, qword_1EB2B5AC8);
  return sub_1A7E22050();
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A7D19570()
{
  if (*v0)
  {
    return 0x656E6E6F63736964;
  }

  else
  {
    return 0x7463656E6E6F63;
  }
}

uint64_t sub_1A7D195B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEA00000000007463)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D19694(uint64_t a1)
{
  v2 = sub_1A7D19AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D196D0(uint64_t a1)
{
  v2 = sub_1A7D19AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D1970C(uint64_t a1)
{
  v2 = sub_1A7D19B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D19748(uint64_t a1)
{
  v2 = sub_1A7D19B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D19784(uint64_t a1)
{
  v2 = sub_1A7D19B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D197C0(uint64_t a1)
{
  v2 = sub_1A7D19B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.Behavior.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5AE0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v21 = &v19 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5AE8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5AF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D19AAC();
  sub_1A7E23260();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_1A7D19B00();
    v17 = v21;
    sub_1A7E22F80();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_1A7D19B54();
    sub_1A7E22F80();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_1A7D19AAC()
{
  result = qword_1EB2B5AF8;
  if (!qword_1EB2B5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AF8);
  }

  return result;
}

unint64_t sub_1A7D19B00()
{
  result = qword_1EB2B5B00;
  if (!qword_1EB2B5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B00);
  }

  return result;
}

unint64_t sub_1A7D19B54()
{
  result = qword_1EB2B5B08;
  if (!qword_1EB2B5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B08);
  }

  return result;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.Behavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5B10);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5B18);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5B20);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D19AAC();
  v15 = v34;
  sub_1A7E23250();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_1A7E22F70();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1A7CDB538();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_1A7E22BD0();
      swift_allocError();
      v25 = v24;
      sub_1A7CC7FFC(&qword_1EB2B4EC8);
      *v25 = &type metadata for IDSGLTwoWayLinkConnectorPlugin.Behavior;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_1A7D19B00();
        sub_1A7E22E70();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_1A7D19B54();
        sub_1A7E22E70();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return sub_1A7B0CD6C(v16);
}

uint64_t sub_1A7D1A108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v12 = *v0;

  MEMORY[0x1AC561C90](8250, 0xE200000000000000);
  v3 = 0xE700000000000000;
  v4 = 0x6C6C65436E6F4ELL;
  if (v1 != 1)
  {
    v4 = 7958081;
    v3 = 0xE300000000000000;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819043139;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v5, v6);

  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  v7 = 0xE700000000000000;
  v8 = 0x6C6C65436E6F4ELL;
  if (v2 != 1)
  {
    v8 = 7958081;
    v7 = 0xE300000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819043139;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v9, v10);

  return v12;
}

uint64_t sub_1A7D1A218()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A7DAB434(*v0);
  MEMORY[0x1AC561C90](8250, 0xE200000000000000);
  MEMORY[0x1AC561C90](v1, v2);
  return 0;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.register(engine:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A7D1A360;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1A7E46F20;
  *(v4 + 24) = v3;

  sub_1A7D212B4(v5, &unk_1A7E44460, v4, v2);
}

void sub_1A7D1A364(uint64_t a1)
{
  v2 = v1;
  v154 = sub_1A7E22CF0();
  v4 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v5);
  v153 = &v135[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v180 = &v135[-v9];
  v174 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v174, v10);
  v173 = &v135[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v179 = &v135[-v14];
  os_unfair_lock_lock((a1 + 120));
  v16 = *(a1 + 128);
  v15 = *(a1 + 136);

  v166 = a1;
  os_unfair_lock_unlock((a1 + 120));
  if (qword_1EB2B4788 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v17 = sub_1A7E22060();
    v18 = sub_1A7B0CB00(v17, qword_1EB2B5AC8);

    v165 = v18;
    v19 = sub_1A7E22040();
    v20 = sub_1A7E228F0();

    v21 = os_log_type_enabled(v19, v20);
    v177 = v4;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *&v188 = v4;
      *v22 = 136315394;
      *(v22 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v188);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1A7B0CB38(v16, v15, &v188);
      _os_log_impl(&dword_1A7AD9000, v19, v20, "%s[%s]", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v4, -1, -1);
      MEMORY[0x1AC5654B0](v22, -1, -1);
    }

    v23 = LinkEngine.linkConnector.getter();
    v152 = v24;
    v159 = v23;
    if (!v23)
    {

      v180 = sub_1A7E22040();
      v43 = sub_1A7E228E0();

      if (os_log_type_enabled(v180, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v188 = v45;
        *v44 = 136315394;
        *(v44 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v188);
        *(v44 + 12) = 2080;
        v46 = sub_1A7B0CB38(v16, v15, &v188);

        *(v44 + 14) = v46;
        _os_log_impl(&dword_1A7AD9000, v180, v43, "%s[%s]: no link connector", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v45, -1, -1);
        MEMORY[0x1AC5654B0](v44, -1, -1);
      }

      else
      {

        v134 = v180;
      }

      return;
    }

    os_unfair_lock_lock((v2 + 40));
    sub_1A7D1D874((v2 + 48), v16, v15, v2, &v188);
    v164 = 0;
    v158 = v16;
    v172 = v15;
    os_unfair_lock_unlock((v2 + 40));
    v139 = *(&v188 + 1);
    v25 = v188;
    v137 = *(&v189 + 1);
    v138 = v189;
    v26 = *(v188 + 16);
    v161 = v2;
    v160 = v188;
    v155 = v26;
    if (v26)
    {
      break;
    }

    v41 = 0;
LABEL_33:
    v136 = v41;
    v157 = (*(v2 + 112))(v166);
    os_unfair_lock_lock((v2 + 40));
    v151 = *(v2 + 48);
    v47 = *(v2 + 56);
    v156 = *(v2 + 72);

    os_unfair_lock_unlock((v2 + 40));
    if (!v26)
    {
      v171 = MEMORY[0x1E69E7CC0];
LABEL_83:

      v117 = v161;
      os_unfair_lock_lock(v161 + 10);
      *(v117 + 64) = v171;

      os_unfair_lock_unlock((v117 + 40));
      v118 = v172;

      v119 = sub_1A7E22040();
      v120 = sub_1A7E228F0();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&v185 = v122;
        *v121 = 136315650;
        *(v121 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v185);
        *(v121 + 12) = 2080;
        *(v121 + 14) = sub_1A7B0CB38(v158, v118, &v185);
        *(v121 + 22) = 2080;

        v124 = MEMORY[0x1AC561E20](v123, &type metadata for IDSGLTwoWayLinkConnectorPlugin.AllocatedLink);
        v126 = v125;

        v127 = sub_1A7B0CB38(v124, v126, &v185);

        *(v121 + 24) = v127;
        _os_log_impl(&dword_1A7AD9000, v119, v120, "%s TwoWay[%s]: new allocated links: %s", v121, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v122, -1, -1);
        MEMORY[0x1AC5654B0](v121, -1, -1);
      }

      if (*(v117 + 200) == 1)
      {
        v128 = v172;

        v129 = sub_1A7E22040();
        v130 = sub_1A7E228F0();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *&v185 = v132;
          *v131 = 136315394;
          *(v131 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v185);
          *(v131 + 12) = 2080;
          v133 = v158;
          *(v131 + 14) = sub_1A7B0CB38(v158, v128, &v185);
          _os_log_impl(&dword_1A7AD9000, v129, v130, "%s TwoWay[%s]: is initiator; checking if we need another allocation...", v131, 0x16u);
          v117 = v161;
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v132, -1, -1);
          MEMORY[0x1AC5654B0](v131, -1, -1);
        }

        else
        {

          v133 = v158;
        }

        os_unfair_lock_lock((v117 + 40));
        sub_1A7D1E11C(v117 + 48, v133, v128, v139, v138, v160, v137, v136, v117);

        os_unfair_lock_unlock((v117 + 40));
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return;
    }

    v15 = 0;
    v49 = v25 + 32;
    v150 = 0x80000001A7EADE80;
    v147 = (v177 + 8);
    *&v48 = 136315906;
    v141 = v48;
    *(&v50 + 1) = 2;
    v163 = xmmword_1A7E418C0;
    *&v50 = 136315650;
    v140 = v50;
    v171 = MEMORY[0x1E69E7CC0];
    v149 = v47;
    v148 = v25 + 32;
    while (v15 < *(v25 + 16))
    {
      v51 = (v49 + 48 * v15);
      v53 = v51[1];
      v52 = v51[2];
      v188 = *v51;
      v189 = v53;
      v190 = v52;
      v176 = *(&v53 + 1);
      v4 = v53;
      v2 = *(&v52 + 1);
      v175 = v52;
      if (*(v47 + 16))
      {
        v168 = v188;
        v167 = BYTE1(v188);
        v54 = *(&v188 + 1);
        sub_1A7D25A14(&v188, &v185);
        sub_1A7D25A14(&v188, &v185);
        v170 = v54;
        v55 = sub_1A7CD1248(v54, v4);
        if (v56)
        {
          v169 = v4;
          v162 = v15;
          v57 = *(v47 + 56) + 32 * v55;
          v59 = *v57;
          v58 = *(v57 + 8);
          v2 = *(v57 + 16);
          v60 = *(v57 + 17);
          v61 = *(v57 + 24);

          sub_1A7D25A14(&v188, &v185);

          v62 = sub_1A7E22040();
          v63 = sub_1A7E228F0();

          sub_1A7D25A4C(&v188);

          if (os_log_type_enabled(v62, v63))
          {
            v64 = v188;
            v65 = swift_slowAlloc();
            v177 = v59;
            LODWORD(v178) = v60;
            v66 = v65;
            v67 = v2;
            v2 = swift_slowAlloc();
            v184 = v2;
            *v66 = v141;
            *(v66 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v184);
            *(v66 + 12) = 2080;
            *(v66 + 14) = sub_1A7B0CB38(v158, v172, &v184);
            *(v66 + 22) = 2080;
            v181 = 0;
            v182 = 0xE000000000000000;
            sub_1A7D25A14(&v188, &v185);
            sub_1A7DAB434(v64);
            MEMORY[0x1AC561C90](8250, 0xE200000000000000);
            MEMORY[0x1AC561C90](v170, v169);
            sub_1A7D25A4C(&v188);
            v68 = sub_1A7B0CB38(v181, v182, &v184);

            *(v66 + 24) = v68;
            *(v66 + 32) = 2080;
            *&v185 = v177;
            *(&v185 + 1) = v58;
            LOBYTE(v186) = v67;
            BYTE1(v186) = v178;
            *(&v186 + 1) = v61;

            v69 = sub_1A7D1A108();
            v71 = v70;

            v72 = sub_1A7B0CB38(v69, v71, &v184);

            *(v66 + 34) = v72;
            _os_log_impl(&dword_1A7AD9000, v62, v63, "%s TwoWay[%s]: for allocated link: %s, allocation: %s", v66, 0x2Au);
            swift_arrayDestroy();
            v73 = v161;
            MEMORY[0x1AC5654B0](v2, -1, -1);
            MEMORY[0x1AC5654B0](v66, -1, -1);
          }

          else
          {

            v73 = v161;
          }

          sub_1A7CC7FFC(&qword_1EB2B4AF0);
          inited = swift_initStackObject();
          *(inited + 16) = v163;
          sub_1A7CC7FFC(&qword_1EB2B4B60);
          v75 = swift_allocObject();
          *(v75 + 16) = v163;
          *(v75 + 32) = sub_1A7D25A7C;
          *(v75 + 40) = v73;
          *(v75 + 48) = 0xD000000000000012;
          *(v75 + 56) = v150;
          *(inited + 32) = v75;
          *&v185 = v156;

          sub_1A7DDF468(inited);
          v76 = v185;
          *&v185 = MEMORY[0x1E69E7CC0];
          v16 = EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(v166, v157, v61, v76, &v185);

          v77 = *&v73[42]._os_unfair_lock_opaque;
          v78 = *&v73[44]._os_unfair_lock_opaque;
          sub_1A7CC9878(&v73[36]._os_unfair_lock_opaque, v77);
          v79 = (*(v78 + 8))(v16, v77, v78);
          sub_1A7D25A14(&v188, &v185);
          *&v185 = sub_1A7D20C18(v79);
          v80 = v164;
          sub_1A7D25690(&v185, &v188);
          sub_1A7D25A4C(&v188);
          v29 = &v187;
          v164 = v80;
          if (v80)
          {
            goto LABEL_101;
          }

          v81 = *(v185 + 16);
          v82 = v180;
          v83 = v179;
          v4 = v172;
          if (v81)
          {
            *&v185 = MEMORY[0x1E69E7CC0];
            sub_1A7E22C20();
            v84 = 40;
            do
            {

              sub_1A7E22BF0();
              sub_1A7E22C40();
              sub_1A7E22C50();
              sub_1A7E22C00();
              v84 += 16;
              --v81;
            }

            while (v81);

            v2 = v185;
            v4 = v172;
          }

          else
          {

            v2 = MEMORY[0x1E69E7CC0];
          }

          v85 = sub_1A7E22040();
          v15 = sub_1A7E228F0();

          if (os_log_type_enabled(v85, v15))
          {
            v86 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v184 = v146;
            *v86 = v140;
            *(v86 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v184);
            *(v86 + 12) = 2080;
            *(v86 + 14) = sub_1A7B0CB38(v158, v4, &v184);
            *(v86 + 22) = 2080;
            if (v2 >> 62)
            {
              v87 = sub_1A7E22DA0();
            }

            else
            {
              v87 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v178 = v2;
            if (v87)
            {
              v183 = MEMORY[0x1E69E7CC0];
              sub_1A7CCE918(0, v87 & ~(v87 >> 63), 0);
              if (v87 < 0)
              {
                goto LABEL_98;
              }

              v142 = v86;
              v143 = v15;
              v144 = v85;
              v145 = v16;
              v88 = v2;
              v89 = v183;
              v90 = type metadata accessor for LinkStateComponent(0);
              v91 = 0;
              v177 = v88 & 0xC000000000000001;
              do
              {
                if (v177)
                {
                  v92 = MEMORY[0x1AC562480](v91, v178);
                }

                else
                {
                  v92 = *(v178 + 8 * v91 + 32);
                }

                v181 = 8237;
                v182 = 0xE200000000000000;
                os_unfair_lock_lock((v92 + 40));
                v93 = *(v92 + 48);
                if (*(v93 + 16) && (v94 = sub_1A7CD0DFC(v90), (v95 & 1) != 0))
                {
                  sub_1A7B0CD10(*(v93 + 56) + 32 * v94, &v185);
                }

                else
                {
                  v185 = 0u;
                  v186 = 0u;
                }

                os_unfair_lock_unlock((v92 + 40));
                sub_1A7CC7FFC(&qword_1EB2B66D0);
                v96 = swift_dynamicCast();
                v97 = *(v90 - 8);
                (*(v97 + 56))(v82, v96 ^ 1u, 1, v90);
                if ((*(v97 + 48))(v82, 1, v90))
                {
                  sub_1A7CC9970(v82, &qword_1EB2B4A80);
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  v98 = v173;
                  sub_1A7CD0EC4(v82, v173);
                  sub_1A7CC9970(v82, &qword_1EB2B4A80);
                  sub_1A7D25A84(v98, v83, type metadata accessor for LinkState);
                }

                v99 = LinkState.description.getter();
                MEMORY[0x1AC561C90](v99);

                sub_1A7CD0E68(v83);
                MEMORY[0x1AC561C90](8250, 0xE200000000000000);
                MEMORY[0x1AC561C90](*(v92 + 16), *(v92 + 24));

                v100 = v181;
                v101 = v182;
                v183 = v89;
                v103 = *(v89 + 16);
                v102 = *(v89 + 24);
                if (v103 >= v102 >> 1)
                {
                  sub_1A7CCE918((v102 > 1), v103 + 1, 1);
                  v89 = v183;
                }

                ++v91;
                *(v89 + 16) = v103 + 1;
                v104 = v89 + 16 * v103;
                *(v104 + 32) = v100;
                *(v104 + 40) = v101;
                v82 = v180;
                v83 = v179;
              }

              while (v87 != v91);
              v16 = v145;
              v85 = v144;
              LOBYTE(v15) = v143;
              v86 = v142;
            }

            else
            {
              v89 = MEMORY[0x1E69E7CC0];
            }

            *&v185 = v89;
            sub_1A7CC7FFC(&qword_1EB2B4AA0);
            sub_1A7CD0F8C();
            v105 = sub_1A7E221F0();
            v107 = v106;

            v108 = sub_1A7B0CB38(v105, v107, &v184);

            *(v86 + 24) = v108;
            _os_log_impl(&dword_1A7AD9000, v85, v15, "%s TwoWay[%s]:     calling connector with links:\n         %s", v86, 0x20u);
            v109 = v146;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v109, -1, -1);
            MEMORY[0x1AC5654B0](v86, -1, -1);

            v26 = v155;
            v47 = v149;
            v15 = v162;
            v49 = v148;
            v2 = v178;
          }

          else
          {

            v26 = v155;
            v47 = v149;
            v15 = v162;
            v49 = v148;
          }

          v110 = v190;
          v111 = v153;
          sub_1A7E22CC0();
          LOBYTE(v110) = sub_1A7D21B34(v159, v152, v166, v2, v151, v111, v110);
          (*v147)(v111, v154);
          if ((v110 & 1) == 0 && v16 >> 62)
          {
            sub_1A7E22DA0();
          }

          v191 = *(&v190 + 1);
          sub_1A7CC9970(&v191, &qword_1EB2B5B70);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v171 = sub_1A7CCDA68(0, *(v171 + 2) + 1, 1, v171);
          }

          v113 = *(v171 + 2);
          v112 = *(v171 + 3);
          if (v113 >= v112 >> 1)
          {
            v171 = sub_1A7CCDA68((v112 > 1), v113 + 1, 1, v171);
          }

          sub_1A7D25A4C(&v188);
          v114 = v171;
          *(v171 + 2) = v113 + 1;
          v115 = &v114[48 * v113];
          v115[32] = v168;
          v115[33] = v167;
          v4 = v169;
          *(v115 + 5) = v170;
          *(v115 + 6) = v4;
          v116 = v175;
          *(v115 + 7) = v176;
          *(v115 + 8) = v116;
          *(v115 + 9) = v2;
          v25 = v160;
        }

        else
        {
          sub_1A7D25A4C(&v188);
        }
      }

      else
      {
        sub_1A7D25A14(&v188, &v185);
      }

      ++v15;

      if (v15 == v26)
      {
        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v27 = 0;
  v28 = v188 + 32;
  v4 = &type metadata for IDSObservedRemoteRAT;
  v16 = &unk_1A7E41920;
  v170 = v188 + 32;
  while (1)
  {
    v29 = *(v25 + 16);
    if (v27 >= v29)
    {
      break;
    }

    v30 = (v28 + 48 * v27);
    v31 = v30[2];
    v32 = v30[3];
    v34 = v30[4];
    v33 = v30[5];
    v178 = v27;
    if (v33 >> 62)
    {
      v42 = v31;
      v2 = sub_1A7E22DA0();
      v31 = v42;
    }

    else
    {
      v2 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v176 = v31;

    v175 = v32;

    v171 = v34;

    swift_bridgeObjectRetain_n();
    if (!v2)
    {
LABEL_31:
      swift_bridgeObjectRelease_n();

      v41 = 1;
      v2 = v161;
      v25 = v160;
      v26 = v155;
      goto LABEL_33;
    }

    v35 = 0;
    ++v178;
    v15 = v33 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1AC562480](v35, v33);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v36 = *(v33 + 8 * v35 + 32);

        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_96;
        }
      }

      os_unfair_lock_lock((v36 + 40));
      v38 = *(v36 + 48);
      if (*(v38 + 16) && (v39 = sub_1A7CD0DFC(&type metadata for IDSObservedRemoteRAT), (v40 & 1) != 0))
      {
        sub_1A7B0CD10(*(v38 + 56) + 32 * v39, &v188);
      }

      else
      {
        v188 = 0u;
        v189 = 0u;
      }

      os_unfair_lock_unlock((v36 + 40));

      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) != 0 && (BYTE4(v185) & 1) == 0)
      {
        break;
      }

      ++v35;
      if (v37 == v2)
      {
        goto LABEL_31;
      }
    }

    swift_bridgeObjectRelease_n();

    v41 = 0;
    v26 = v155;
    v27 = v178;
    v2 = v161;
    v25 = v160;
    v28 = v170;
    if (v178 == v155)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_101:

  __break(1u);
  os_unfair_lock_unlock((v2 + 40));
  __break(1u);
}

uint64_t sub_1A7D1BCEC(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1A7D1BD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D1BCEC(a1, v4);
}

char *sub_1A7D1BE04(void *a1)
{
  i = a1[7];
  v186 = a1[6];

  v217 = sub_1A7D1D684(v198);
  v216 = a1[2];
  v191 = a1;
  v3 = a1[5];
  v4 = qword_1EB2B4788;
  v208 = v216;

  if (v4 == -1)
  {
    goto LABEL_2;
  }

LABEL_162:
  swift_once();
LABEL_2:
  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B5AC8);

  v6 = sub_1A7E22040();
  v7 = sub_1A7E228F0();

  v199 = i;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v209 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, &v209);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1A7B0CB38(v186, i, &v209);
    *(v8 + 22) = 2080;
    sub_1A7D25B5C();

    v10 = sub_1A7E227B0();
    v12 = v11;

    v13 = sub_1A7B0CB38(v10, v12, &v209);
    i = v199;

    *(v8 + 24) = v13;
    *(v8 + 32) = 2080;
    v14 = MEMORY[0x1AC561E20](v3, &type metadata for IDSLinkCellularTuple);
    v16 = sub_1A7B0CB38(v14, v15, &v209);

    *(v8 + 34) = v16;
    _os_log_impl(&dword_1A7AD9000, v6, v7, "%s TwoWay[%s]: allocations available: %s, desired link types: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  v203 = *(v3 + 2);
  v17 = v198;
  if (v203)
  {
    v18 = v3;
    v19 = 0;
    v20 = v3 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v205 = v18;
    while (v19 < *(v18 + 2))
    {
      v23 = &v20[2 * v19];
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v216 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = (v216 + 40);
        while (1)
        {
          if (v24 == 2 || ((v32 = *(v28 - 8), v24 != v32) ? (v33 = v32 == 2) : (v33 = 1), v33))
          {
            v29 = *(v28 - 7);
            v30 = v25 == v29 || v25 == 2;
            if (v30 || v29 == 2)
            {
              break;
            }
          }

          ++v27;
          v28 += 6;
          if (v26 == v27)
          {
            goto LABEL_27;
          }
        }

        if (*(v17 + 16))
        {
          v37 = *v28;
          v38 = v28[1];

          v39 = sub_1A7CD1248(v37, v38);
          if (v40)
          {
            v21 = (*(v17 + 56) + 32 * v39);
            v22 = v21[1];
            v195 = *v21;
            swift_beginAccess();

            sub_1A7D91A30(v195, v22, &v209);
            swift_endAccess();

            v17 = v198;

            sub_1A7D21920(v209, v210);
            sub_1A7D1D7D0(v27, &v209);
          }

          i = v199;
          v18 = v205;
        }
      }

      else
      {
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1A7CCDB88(0, *(v3 + 2) + 1, 1, v3);
        }

        v35 = *(v3 + 2);
        v34 = *(v3 + 3);
        if (v35 >= v34 >> 1)
        {
          v3 = sub_1A7CCDB88((v34 > 1), v35 + 1, 1, v3);
        }

        *(v3 + 2) = v35 + 1;
        v36 = &v3[2 * v35];
        v36[32] = v24;
        v36[33] = v25;
      }

      if (++v19 == v203)
      {
        goto LABEL_36;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v41 = *(v208 + 2);
  if (v41)
  {
    v42 = v208 + 72;
    v206 = v3;
    do
    {
      if (*(v17 + 16))
      {
        v45 = *(v42 - 4);
        v46 = *(v42 - 3);

        v47 = sub_1A7CD1248(v45, v46);
        if (v48)
        {
          v43 = (*(v17 + 56) + 32 * v47);
          v44 = v43[1];
          v200 = *v43;
          swift_beginAccess();

          v3 = v206;
          sub_1A7D91A30(v200, v44, &v209);
          swift_endAccess();

          v17 = v198;

          i = v199;

          sub_1A7D21920(v209, v210);
        }

        else
        {
        }
      }

      v42 += 48;
      --v41;
    }

    while (v41);
  }

  v49 = sub_1A7E22040();
  v50 = sub_1A7E228F0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v209 = v52;
    *v51 = 136315650;
    *(v51 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, &v209);
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_1A7B0CB38(v186, i, &v209);
    *(v51 + 22) = 2080;

    v54 = MEMORY[0x1AC561E20](v53, &type metadata for IDSLinkCellularTuple);
    v56 = v55;

    v57 = sub_1A7B0CB38(v54, v56, &v209);

    *(v51 + 24) = v57;
    _os_log_impl(&dword_1A7AD9000, v49, v50, "%s TwoWay[%s]: remaining link types after accounting for existing allocated links: %s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v52, -1, -1);
    MEMORY[0x1AC5654B0](v51, -1, -1);
  }

  v58 = v194;
  v59 = MEMORY[0x1E69E7CC0];
  v207 = v3;
  v198 = *(v3 + 2);
  if (v198)
  {
    v196 = v3 + 32;

    swift_beginAccess();
    v60 = 0;
    while (v60 < *(v3 + 2))
    {
      v62 = 0;
      v63 = &v196[2 * v60];
      v64 = 1 << *(v217 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v66 = v65 & *(v217 + 56);
      v67 = *v63;
      v3 = v63[1];
      ++v60;
      while (v66)
      {
LABEL_59:
        v69 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v70 = *(v217 + 48) + ((v62 << 11) | (32 * v69));
        v71 = *(v70 + 16);
        if (v67 == v71 || v67 == 2 || v71 == 2)
        {
          if ((v74 = *(v70 + 17), *(v58 + 200) != 1) || v3 == 2 || (v3 != v74 ? (v75 = v74 == 2) : (v75 = 1), v75))
          {
            v76 = *(v70 + 8);
            v190 = *v70;
            v77 = *(v70 + 24);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            v78 = sub_1A7E22040();
            v79 = sub_1A7E228F0();
            v192 = v77;

            v188 = v79;
            v201 = v59;
            if (os_log_type_enabled(v78, v79))
            {
              log = v78;
              v80 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              v215[0] = v184;
              *v80 = 136316162;
              *(v80 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, v215);
              *(v80 + 12) = 2080;
              *(v80 + 14) = sub_1A7B0CB38(v186, v199, v215);
              *(v80 + 22) = 2080;
              v81 = 0x6C6C65436E6F4ELL;
              if (v67 != 1)
              {
                v81 = 7958081;
              }

              v82 = 0xE700000000000000;
              if (v67 != 1)
              {
                v82 = 0xE300000000000000;
              }

              if (v67)
              {
                v83 = v81;
              }

              else
              {
                v83 = 1819043139;
              }

              if (v67)
              {
                v84 = v82;
              }

              else
              {
                v84 = 0xE400000000000000;
              }

              v85 = sub_1A7B0CB38(v83, v84, v215);

              *(v80 + 24) = v85;
              *(v80 + 32) = 2080;
              v86 = 0x6C6C65436E6F4ELL;
              if (v3 != 1)
              {
                v86 = 7958081;
              }

              v87 = 0xE700000000000000;
              if (v3 != 1)
              {
                v87 = 0xE300000000000000;
              }

              if (v3)
              {
                v88 = v86;
              }

              else
              {
                v88 = 1819043139;
              }

              if (v3)
              {
                v89 = v87;
              }

              else
              {
                v89 = 0xE400000000000000;
              }

              v90 = v76;
              v91 = sub_1A7B0CB38(v88, v89, v215);

              *(v80 + 34) = v91;
              *(v80 + 42) = 2080;
              v209 = v190;
              v210 = v76;
              v211 = v71;
              v212 = v74;
              v213 = v192;

              v92 = sub_1A7D1A108();
              v94 = v93;

              v95 = sub_1A7B0CB38(v92, v94, v215);

              *(v80 + 44) = v95;
              _os_log_impl(&dword_1A7AD9000, log, v188, "%s TwoWay[%s]:     found unused allocation matching %s-%s: %s", v80, 0x34u);
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v184, -1, -1);
              MEMORY[0x1AC5654B0](v80, -1, -1);
            }

            else
            {

              v90 = v76;
            }

            type metadata accessor for EndpointLinkCreationController();
            v98 = swift_allocObject();
            type metadata accessor for LinkCreationController();
            v99 = swift_allocObject();
            *(v99 + 16) = 0;
            *(v99 + 40) = 0;
            *(v99 + 24) = MEMORY[0x1E69E7CD0];
            *(v99 + 32) = 0;
            *(v98 + 16) = v99;
            v100 = *(v194 + 128);
            v101 = *(v194 + 136);
            type metadata accessor for LinkEngineConnectFirstController();
            v102 = swift_allocObject();
            *(v102 + 16) = v100;
            *(v102 + 24) = v101;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v208 = sub_1A7CCDA68(0, *(v208 + 2) + 1, 1, v208);
            }

            v104 = *(v208 + 2);
            v103 = *(v208 + 3);
            if (v104 >= v103 >> 1)
            {
              v208 = sub_1A7CCDA68((v103 > 1), v104 + 1, 1, v208);
            }

            *(v208 + 2) = v104 + 1;
            v105 = &v208[48 * v104];
            v105[32] = v67;
            v105[33] = v3;
            *(v105 + 5) = v190;
            *(v105 + 6) = v90;
            *(v105 + 7) = v98;
            *(v105 + 8) = v102;
            *(v105 + 9) = MEMORY[0x1E69E7CC0];
            v191[2] = v208;
            swift_beginAccess();
            sub_1A7D91A30(v190, v90, &v209);
            swift_endAccess();

            sub_1A7D21920(v209, v210);
            i = v199;
            v59 = v201;
            v58 = v194;
            goto LABEL_48;
          }
        }
      }

      while (1)
      {
        v68 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          __break(1u);
          goto LABEL_156;
        }

        if (v68 >= ((v64 + 63) >> 6))
        {
          break;
        }

        v66 = *(v217 + 56 + 8 * v68);
        ++v62;
        if (v66)
        {
          v62 = v68;
          goto LABEL_59;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1A7CCDB88(0, *(v59 + 2) + 1, 1, v59);
      }

      v97 = *(v59 + 2);
      v96 = *(v59 + 3);
      if (v97 >= v96 >> 1)
      {
        v59 = sub_1A7CCDB88((v96 > 1), v97 + 1, 1, v59);
      }

      *(v59 + 2) = v97 + 1;
      v61 = &v59[2 * v97];
      v61[32] = v67;
      v61[33] = v3;
LABEL_48:
      v3 = v207;
      if (v60 == v198)
      {
        v106 = v59;

        goto LABEL_108;
      }
    }

    goto LABEL_158;
  }

  v106 = MEMORY[0x1E69E7CC0];
LABEL_108:

  v107 = sub_1A7E22040();
  v108 = sub_1A7E228F0();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v209 = v110;
    *v109 = 136315650;
    *(v109 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, &v209);
    *(v109 + 12) = 2080;
    *(v109 + 14) = sub_1A7B0CB38(v186, i, &v209);
    *(v109 + 22) = 2080;

    v112 = MEMORY[0x1AC561E20](v111, &type metadata for IDSLinkCellularTuple);
    v114 = v113;

    v115 = sub_1A7B0CB38(v112, v114, &v209);

    *(v109 + 24) = v115;
    v58 = v194;
    _os_log_impl(&dword_1A7AD9000, v107, v108, "%s TwoWay[%s]: remaining link types after assigning links matching affinities: %s", v109, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v110, -1, -1);
    MEMORY[0x1AC5654B0](v109, -1, -1);
  }

  v116 = MEMORY[0x1E69E7CC0];
  v202 = v106;
  v198 = *(v106 + 2);
  if (v198)
  {
    v197 = v106 + 32;

    swift_beginAccess();
    v3 = 0;
    while (2)
    {
      if (v3 >= *(v106 + 2))
      {
        goto LABEL_157;
      }

      v118 = 0;
      v119 = 0;
      v120 = &v197[2 * v3];
      v121 = *v120;
      v122 = v120[1];
      ++v3;
      v123 = v217 + 56;
      v124 = 1 << *(v217 + 32);
      while (1)
      {
        v125 = *(v123 + 8 * v119);
        if (v125)
        {
          break;
        }

        ++v119;
        v118 -= 64;
        if ((v124 + 63) >> 6 == v119)
        {
          goto LABEL_120;
        }
      }

      v126 = __clz(__rbit64(v125));
      if (v126 - v124 == v118)
      {
LABEL_120:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1A7CCDB88(0, *(v116 + 2) + 1, 1, v116);
        }

        v128 = *(v116 + 2);
        v127 = *(v116 + 3);
        v129 = v116;
        if (v128 >= v127 >> 1)
        {
          v129 = sub_1A7CCDB88((v127 > 1), v128 + 1, 1, v116);
        }

        *(v129 + 2) = v128 + 1;
        v116 = v129;
        v117 = &v129[2 * v128];
        v117[32] = v121;
        v117[33] = v122;
        goto LABEL_113;
      }

      if (-v118 < 0)
      {
        goto LABEL_160;
      }

      v130 = v126 - v118;
      if (v130 >= v124)
      {
        goto LABEL_160;
      }

      if (((*(v123 + 8 * (v119 & 0x3FFFFFFFFFFFFFFLL)) >> v126) & 1) == 0)
      {
        goto LABEL_161;
      }

      v189 = *v120;
      v193 = v116;
      v131 = *(v217 + 48) + 32 * v130;
      v132 = i;
      v133 = *v131;
      v134 = *(v131 + 8);
      v135 = *(v131 + 16);
      v136 = *(v131 + 17);
      v137 = *(v131 + 24);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v138 = sub_1A7E22040();
      v139 = sub_1A7E228F0();

      if (os_log_type_enabled(v138, v139))
      {
        v185 = v122;
        v140 = v135;
        v141 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v214[0] = v183;
        *v141 = 136315650;
        *(v141 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, v214);
        v182 = v139;
        *(v141 + 12) = 2080;
        *(v141 + 14) = sub_1A7B0CB38(v186, v132, v214);
        *(v141 + 22) = 2080;
        v209 = v133;
        v210 = v134;
        v211 = v140;
        v122 = v185;
        v212 = v136;
        v213 = v137;

        v142 = sub_1A7D1A108();
        v144 = v143;

        v145 = sub_1A7B0CB38(v142, v144, v214);

        *(v141 + 24) = v145;
        _os_log_impl(&dword_1A7AD9000, v138, v182, "%s TwoWay[%s]:     found unused allocation (not matching affinity): %s", v141, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v183, -1, -1);
        MEMORY[0x1AC5654B0](v141, -1, -1);
      }

      type metadata accessor for EndpointLinkCreationController();
      v146 = swift_allocObject();
      type metadata accessor for LinkCreationController();
      v147 = swift_allocObject();
      *(v147 + 16) = 0;
      *(v147 + 40) = 0;
      *(v147 + 24) = MEMORY[0x1E69E7CD0];
      *(v147 + 32) = 0;
      *(v146 + 16) = v147;
      v148 = *(v194 + 128);
      v149 = *(v194 + 136);
      type metadata accessor for LinkEngineConnectFirstController();
      v150 = swift_allocObject();
      *(v150 + 16) = v148;
      *(v150 + 24) = v149;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_1A7CCDA68(0, *(v208 + 2) + 1, 1, v208);
      }

      v152 = *(v208 + 2);
      v151 = *(v208 + 3);
      if (v152 >= v151 >> 1)
      {
        v208 = sub_1A7CCDA68((v151 > 1), v152 + 1, 1, v208);
      }

      *(v208 + 2) = v152 + 1;
      v153 = &v208[48 * v152];
      v153[32] = v189;
      v153[33] = v122;
      *(v153 + 5) = v133;
      *(v153 + 6) = v134;
      *(v153 + 7) = v146;
      *(v153 + 8) = v150;
      *(v153 + 9) = MEMORY[0x1E69E7CC0];
      v191[2] = v208;
      swift_beginAccess();
      sub_1A7D91A30(v133, v134, &v209);
      swift_endAccess();

      sub_1A7D21920(v209, v210);
      i = v199;
      v116 = v193;
      v58 = v194;
LABEL_113:
      v106 = v202;
      if (v3 != v198)
      {
        continue;
      }

      break;
    }

    v3 = v207;
  }

  if (!v203 || (*(v58 + 200) & 1) != 0)
  {
    goto LABEL_151;
  }

  swift_beginAccess();
  v154 = v217 + 56;
  v155 = 1 << *(v217 + 32);
  v156 = -1;
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  v157 = v156 & *(v217 + 56);
  v158 = (v155 + 63) >> 6;
  v204 = v217;

  for (i = 0; v157; v3 = v207)
  {
LABEL_144:
    v160 = (*(v204 + 48) + ((i << 11) | (32 * __clz(__rbit64(v157)))));
    v162 = *v160;
    v161 = v160[1];
    type metadata accessor for EndpointLinkCreationController();
    v163 = swift_allocObject();
    type metadata accessor for LinkCreationController();
    v164 = swift_allocObject();
    *(v164 + 16) = 0;
    *(v164 + 40) = 0;
    *(v164 + 24) = MEMORY[0x1E69E7CD0];
    *(v164 + 32) = 0;
    *(v163 + 16) = v164;
    v165 = *(v194 + 128);
    v166 = *(v194 + 136);
    type metadata accessor for LinkEngineConnectFirstController();
    v167 = swift_allocObject();
    *(v167 + 16) = v165;
    *(v167 + 24) = v166;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_1A7CCDA68(0, *(v208 + 2) + 1, 1, v208);
    }

    v169 = *(v208 + 2);
    v168 = *(v208 + 3);
    if (v169 >= v168 >> 1)
    {
      v208 = sub_1A7CCDA68((v168 > 1), v169 + 1, 1, v208);
    }

    *(v208 + 2) = v169 + 1;
    v170 = &v208[48 * v169];
    *(v170 + 16) = 514;
    v157 &= v157 - 1;
    *(v170 + 5) = v162;
    *(v170 + 6) = v161;
    *(v170 + 7) = v163;
    *(v170 + 8) = v167;
    *(v170 + 9) = MEMORY[0x1E69E7CC0];
    v191[2] = v208;
  }

  while (1)
  {
    v159 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v159 >= v158)
    {
      break;
    }

    v157 = *(v154 + 8 * v159);
    ++i;
    if (v157)
    {
      i = v159;
      goto LABEL_144;
    }
  }

  v217 = MEMORY[0x1E69E7CD0];

  i = v199;
LABEL_151:

  v171 = sub_1A7E22040();
  v172 = sub_1A7E228F0();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v214[0] = v174;
    *v173 = 136315650;
    *(v173 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, v214);
    *(v173 + 12) = 2080;
    v175 = sub_1A7B0CB38(v186, i, v214);

    *(v173 + 14) = v175;
    *(v173 + 22) = 2080;

    v177 = MEMORY[0x1AC561E20](v176, &type metadata for IDSLinkCellularTuple);
    v179 = v178;

    v180 = sub_1A7B0CB38(v177, v179, v214);

    *(v173 + 24) = v180;
    _os_log_impl(&dword_1A7AD9000, v171, v172, "%s TwoWay[%s]: remaining link types after assigning links not matching affinities: %s", v173, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v174, -1, -1);
    MEMORY[0x1AC5654B0](v173, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  return v208;
}

uint64_t sub_1A7D1D568(uint64_t a1)
{
  result = MEMORY[0x1AC5620A0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A7CF0154(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D1D684(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A7D25B5C();
  result = MEMORY[0x1AC5620A0](v2, &type metadata for IDSGLTwoWayLinkConnectorPlugin.Allocation, v3);
  v5 = 0;
  v18 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(a1 + 56) + ((v10 << 11) | (32 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 24);
    v16 = *(v12 + 16);

    sub_1A7CF04F4(v17, v13, v14, v16, v15);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v18;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D1D7D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A7CDD0CC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    *a2 = v10;
    *(a2 + 8) = v11;
    v12 = *(v9 + 32);
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 32) = v12;
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7D1D874@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v56 = a4;
  v57 = a5;
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v54 - v10;
  v70 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v70, v12);
  v69 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;

  a1[6] = a2;
  a1[7] = a3;
  v55 = a1;
  v19 = a1[2];
  v60 = *(v19 + 16);
  if (v60)
  {
    v20 = 0;
    v59 = v19 + 32;
    v67 = MEMORY[0x1E69E7CC0];
    v58 = v19;
    while (v20 < *(v19 + 16))
    {
      v21 = (v59 + 48 * v20);
      v66 = *v21;
      v22 = v21[1];
      v23 = *(v21 + 2);
      v65 = *(v21 + 1);
      v24 = *(v21 + 3);
      v25 = *(v21 + 4);
      v26 = *(v21 + 5);
      if (v26 >> 62)
      {
        v27 = sub_1A7E22DA0();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v72 = v26;
      v68 = v22;
      if (v27)
      {
        v63 = v24;
        v64 = v23;
        result = type metadata accessor for LinkStateComponent(0);
        if (v27 < 1)
        {
          goto LABEL_42;
        }

        v28 = result;
        v62 = v20;
        v71 = v26 & 0xC000000000000001;

        v61 = v25;

        swift_bridgeObjectRetain_n();
        for (i = 0; i != v27; ++i)
        {
          if (v71)
          {
            v30 = MEMORY[0x1AC562480](i, v26);
          }

          else
          {
            v30 = *(v26 + 8 * i + 32);
          }

          os_unfair_lock_lock((v30 + 40));
          v31 = *(v30 + 48);
          if (*(v31 + 16) && (v32 = sub_1A7CD0DFC(v28), (v33 & 1) != 0))
          {
            sub_1A7B0CD10(*(v31 + 56) + 32 * v32, &v73);
          }

          else
          {
            v73 = 0u;
            v74 = 0u;
          }

          os_unfair_lock_unlock((v30 + 40));
          sub_1A7CC7FFC(&qword_1EB2B66D0);
          v34 = swift_dynamicCast();
          v35 = *(v28 - 8);
          (*(v35 + 56))(v11, v34 ^ 1u, 1, v28);
          if ((*(v35 + 48))(v11, 1, v28))
          {
            sub_1A7CC9970(v11, &qword_1EB2B4A80);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v36 = v69;
            sub_1A7CD0EC4(v11, v69);
            sub_1A7CC9970(v11, &qword_1EB2B4A80);
            sub_1A7D25A84(v36, v17, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v37 = sub_1A7E22CF0();
            (*(*(v37 - 8) + 8))(v17, v37);
            os_unfair_lock_lock((v30 + 40));
            v38 = *(v30 + 48);
            if (*(v38 + 16) && (v39 = sub_1A7CD0DFC(&type metadata for IDSObservedRemoteRAT), (v40 & 1) != 0))
            {
              sub_1A7B0CD10(*(v38 + 56) + 32 * v39, &v73);
            }

            else
            {
              v73 = 0u;
              v74 = 0u;
            }

            v26 = v72;
            os_unfair_lock_unlock((v30 + 40));

            if ((swift_dynamicCast() & 1) != 0 && (v76 & 1) == 0)
            {
              v68 = (v75 < 0xB) & (0x601u >> v75);
            }
          }

          else
          {

            sub_1A7CD0E68(v17);
            v26 = v72;
          }
        }

        v41 = v67;
        v20 = v62;
        v24 = v63;
        v23 = v64;
        v42 = v61;
      }

      else
      {

        v42 = v25;
        v41 = v67;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1A7CCDA68(0, *(v41 + 2) + 1, 1, v41);
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v67 = sub_1A7CCDA68((v43 > 1), v44 + 1, 1, v41);
      }

      else
      {
        v67 = v41;
      }

      ++v20;
      v45 = v72;

      v46 = v67;
      *(v67 + 2) = v44 + 1;
      v47 = &v46[48 * v44];
      v47[32] = v66;
      v47[33] = v68;
      *(v47 + 5) = v65;
      *(v47 + 6) = v23;
      *(v47 + 7) = v24;
      *(v47 + 8) = v42;
      *(v47 + 9) = v45;
      v19 = v58;
      if (v20 == v60)
      {

        v48 = v67;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v49 = v55;
    v55[2] = v48;
    result = sub_1A7D1BE04(v49);
    v50 = v57;
    *v57 = result;
    v50[1] = v51;
    v50[2] = v52;
    v50[3] = v53;
  }

  return result;
}

uint64_t sub_1A7D1DEC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 16));
  if (*(v3 + 40) == 1)
  {
    sub_1A7D85A68();
  }

  v5 = sub_1A7CD203C(v4);

  os_unfair_lock_unlock((v3 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);

      v8(a1);

      v7 += 16;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1A7D1DF94(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = *a2;
  LinkEngineLink.definition.getter(&v16);
  v6 = v16;
  if (v16)
  {
    v7 = v17;

    sub_1A7CDB84C(v6);
    v16 = v7;
    v8 = LinkEndpoint.isCellular.getter();

    v9 = ~v8 & 1;
  }

  else
  {
    sub_1A7CDB84C(0);
    v9 = 2;
  }

  LinkEngineLink.definition.getter(&v16);
  v10 = v16;
  if (v16)
  {
    v11 = v17;

    sub_1A7CDB84C(v10);
    v16 = v11;
    v12 = LinkEndpoint.isCellular.getter();

    v13 = (v12 & 1) == 0;
  }

  else
  {
    sub_1A7CDB84C(0);
    v13 = 2;
  }

  v14 = *a3;
  if (v14 == 2 || v9 == v14)
  {
    if (v14 == 2 || v13 == 2 || v13 == v14)
    {
      return v4 < v5;
    }

    return 1;
  }

  if (v13 == v14)
  {
    if (v9 != 2)
    {
      return 0;
    }

    return v4 < v5;
  }

  if (v9 == 2)
  {
    if (v13 == 2)
    {
      return v4 < v5;
    }

    return 1;
  }

  if (v13 == 2)
  {
    return 0;
  }

  return v4 < v5;
}

void sub_1A7D1E11C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  if (!*(*(a1 + 8) + 16))
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v18 = sub_1A7E22060();
    sub_1A7B0CB00(v18, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:     no initial allocation, so will not trigger any new ones.";
    goto LABEL_26;
  }

  if (!*(a4 + 16))
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v19 = sub_1A7E22060();
    sub_1A7B0CB00(v19, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:     no remaining tuples; no allocation needed.";
    goto LABEL_26;
  }

  if (*(a5 + 16))
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v12 = sub_1A7E22060();
    sub_1A7B0CB00(v12, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:     still have allocations we've not allocated; no new allocation needed";
LABEL_26:
    _os_log_impl(&dword_1A7AD9000, v13, v14, v17, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v16, -1, -1);
    MEMORY[0x1AC5654B0](v15, -1, -1);
LABEL_27:

    *(a1 + 32) = 3;
    return;
  }

  if (*(a6 + 16) >= a7)
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v21 = sub_1A7E22060();
    sub_1A7B0CB00(v21, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:      have used our allocation budget; no new allocation needed";
    goto LABEL_26;
  }

  if (a8)
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v20 = sub_1A7E22060();
    sub_1A7B0CB00(v20, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:      have allocated links but some are not fully connected; not making another allocation until connection done";
    goto LABEL_26;
  }

  if (qword_1EB2B4788 != -1)
  {
    swift_once();
  }

  v22 = sub_1A7E22060();
  sub_1A7B0CB00(v22, qword_1EB2B5AC8);

  v23 = sub_1A7E22040();
  v24 = sub_1A7E228F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    _os_log_impl(&dword_1A7AD9000, v23, v24, "%s TwoWay[%s]:      want another allocation; checking if we've already asked", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v26, -1, -1);
    MEMORY[0x1AC5654B0](v25, -1, -1);
  }

  v27 = *(a4 + 32);
  LODWORD(v28) = *(a4 + 33);
  v29 = *(a1 + 32);
  if (*(a1 + 32) == 3)
  {
    if (v27 != 3)
    {
LABEL_41:
      v44 = v27 | (v28 << 8);

      v37 = sub_1A7E22040();
      v38 = sub_1A7E228F0();

      if (os_log_type_enabled(v37, v38))
      {
        v47 = v28;
        v28 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48 = v45;
        *v28 = 136315650;
        *(v28 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_1A7B0CB38(a2, a3, &v48);
        *(v28 + 22) = 2080;
        v39 = IDSLinkCellularTuple.description.getter();
        v41 = sub_1A7B0CB38(v39, v40, &v48);

        *(v28 + 24) = v41;
        _os_log_impl(&dword_1A7AD9000, v37, v38, "%s TwoWay[%s]:     have remaining tuples and have connected all allocations we've got; need to allocate for tuple %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v45, -1, -1);
        v42 = v28;
        LOBYTE(v28) = v47;
        MEMORY[0x1AC5654B0](v42, -1, -1);
      }

      *(a1 + 32) = v44;
      v43 = *(a9 + 184);
      LOBYTE(v48) = v27;
      BYTE1(v48) = v28;
      v43(&v48);
      return;
    }
  }

  else if (v27 == 3 || v27 != v29 || v29 >> 8 != v28)
  {
    goto LABEL_41;
  }

  v30 = sub_1A7E22040();
  v31 = sub_1A7E228F0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v48 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    *(v32 + 22) = 2080;
    v34 = IDSLinkCellularTuple.description.getter();
    v36 = sub_1A7B0CB38(v34, v35, &v48);

    *(v32 + 24) = v36;
    _os_log_impl(&dword_1A7AD9000, v30, v31, "%s TwoWay[%s]:     have remaining tuples and have connected all allocations we've got; already asked for allocation for %s, no need to ask again...", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v33, -1, -1);
    MEMORY[0x1AC5654B0](v32, -1, -1);
  }
}

void sub_1A7D1EB70(char **a1, uint64_t a2)
{
  v6 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 40);
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1A7CCCAA4(0, *(v10 + 2) + 1, 1, v10);
    *a1 = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1A7CCCAA4((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = 0x3A736B6E694CLL;
  *(v14 + 5) = 0xE600000000000000;
  *a1 = v10;
  v15 = v2[21];
  v16 = v2[22];
  sub_1A7CC9878(v2 + 18, v15);
  v17 = (*(v16 + 8))(v9, v15, v16);
  v18 = v17;
  if (v17 >> 62)
  {
    v53 = v17;
    v19 = sub_1A7E22DA0();
    v18 = v53;
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_37:

    return;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v19 >= 1)
  {
    v54 = a1;
    v20 = 0;
    v57 = 0x80000001A7EAEAB0;
    v58 = v18 & 0xC000000000000001;
    v55 = "  RAT: CommandConnected: ";
    v56 = 0x80000001A7EAEAD0;
    v59 = v19;
    v60 = v18;
    while (1)
    {
      if (v58)
      {
        v21 = MEMORY[0x1AC562480](v20);
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      *&v62 = 8237;
      *(&v62 + 1) = 0xE200000000000000;
      v22 = v61;
      LinkEngineLink.state.getter(v61);
      v23 = LinkState.description.getter();
      MEMORY[0x1AC561C90](v23);

      sub_1A7CD0E68(v22);
      MEMORY[0x1AC561C90](8250, 0xE200000000000000);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);

      MEMORY[0x1AC561C90](v24, v25);

      v26 = v62;
      v28 = *(v10 + 2);
      v27 = *(v10 + 3);
      if (v28 >= v27 >> 1)
      {
        v10 = sub_1A7CCCAA4((v27 > 1), v28 + 1, 1, v10);
      }

      *(v10 + 2) = v28 + 1;
      *&v10[16 * v28 + 32] = v26;
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1A7E22B70();

      v68 = 0xD000000000000015;
      v69 = v57;
      LinkEngineLink.definition.getter(&v65);
      v29 = v65;
      if (!v65)
      {
        break;
      }

      sub_1A7CE07D8(v67, &v62);
      v30 = v64;
      if (!v64)
      {
        v34 = v29;
        goto LABEL_20;
      }

      v32 = *(&v62 + 1);
      v31 = v63;
      v33 = v62;

      sub_1A7D25988(v33, v32, v31, v30);
      sub_1A7CDB84C(v29);
      if (!v32)
      {
        goto LABEL_21;
      }

LABEL_22:
      MEMORY[0x1AC561C90](v33, v32);

      v35 = v68;
      v36 = v69;
      v38 = *(v10 + 2);
      v37 = *(v10 + 3);
      if (v38 >= v37 >> 1)
      {
        v10 = sub_1A7CCCAA4((v37 > 1), v38 + 1, 1, v10);
      }

      *(v10 + 2) = v38 + 1;
      v39 = &v10[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_1A7E22B70();

      v65 = 0xD000000000000019;
      v66 = v56;
      os_unfair_lock_lock((v21 + 40));
      sub_1A7CCBE5C((v21 + 48), &v62);
      os_unfair_lock_unlock((v21 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) != 0 && (v68 & 0x100000000) == 0)
      {
        v41 = IDSRadioAccessTechnology.description.getter(v68);
        v40 = v42;
      }

      else
      {
        v40 = 0xE400000000000000;
        v41 = 1701736302;
      }

      MEMORY[0x1AC561C90](v41, v40);

      MEMORY[0x1AC561C90](0xD000000000000012, v55 | 0x8000000000000000);
      LinkEngineLink.definition.getter(&v62);
      v43 = v62;
      if (!v62 || (sub_1A7CE072C(v63, &v68), BYTE4(v68) == 1))
      {
        sub_1A7CDB84C(v43);
        v47 = 0xE400000000000000;
        v45 = 1701736302;
      }

      else
      {
        v44 = v68;
        sub_1A7CDB84C(v43);
        v45 = IDSRadioAccessTechnology.description.getter(v44);
        v47 = v46;
      }

      MEMORY[0x1AC561C90](v45, v47);

      v48 = v65;
      v49 = v66;
      v51 = *(v10 + 2);
      v50 = *(v10 + 3);
      if (v51 >= v50 >> 1)
      {
        v10 = sub_1A7CCCAA4((v50 > 1), v51 + 1, 1, v10);
      }

      ++v20;

      *(v10 + 2) = v51 + 1;
      v52 = &v10[16 * v51];
      *(v52 + 4) = v48;
      *(v52 + 5) = v49;
      v18 = v60;
      if (v59 == v20)
      {

        *v54 = v10;
        return;
      }
    }

    v34 = 0;
LABEL_20:
    sub_1A7CDB84C(v34);
LABEL_21:

    v32 = 0xE400000000000000;
    v33 = 1701736302;
    goto LABEL_22;
  }

  __break(1u);
  os_unfair_lock_unlock(v3 + 10);
  __break(1u);
}

void IDSGLTwoWayLinkConnectorPlugin.logState(_:engine:)(unint64_t *a1)
{
  os_unfair_lock_lock((v1 + 40));
  sub_1A7D1F1AC((v1 + 48), a1, v1);

  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_1A7D1F1AC(_BYTE *a1, unint64_t *a2, uint64_t a3)
{
  v123 = 0;
  v124 = 0xE000000000000000;
  MEMORY[0x1AC561C90](0x726F697661686542, 0xEA0000000000203ALL);
  v108 = a1;
  LOBYTE(v129) = *a1;
  sub_1A7E22D30();
  v5 = 0;
  v6 = 0xE000000000000000;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = a2;
  *a2 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_2;
  }

LABEL_84:
  v7 = sub_1A7CCCAA4(0, *(v7 + 16) + 1, 1, v7);
  *v120 = v7;
LABEL_2:
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A7CCCAA4((v9 > 1), v10 + 1, 1, v7);
    *v120 = v7;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  v123 = 0x6F74616974696E49;
  v124 = 0xEB00000000203A72;
  if (*(a3 + 200))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(a3 + 200))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v12, v13);

  v14 = v123;
  v15 = v124;
  v16 = *v120;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1A7CCCAA4(0, *(v16 + 2) + 1, 1, v16);
    *v120 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1A7CCCAA4((v18 > 1), v19 + 1, 1, v16);
    *v120 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v14;
  *(v20 + 5) = v15;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1A7E22B70();

  v123 = 0xD000000000000014;
  v124 = 0x80000001A7EAEA70;
  v21 = MEMORY[0x1AC561E20](*(v108 + 5), &type metadata for IDSLinkCellularTuple);
  MEMORY[0x1AC561C90](v21);

  v22 = v123;
  v23 = v124;
  v24 = *v120;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_1A7CCCAA4(0, *(v24 + 2) + 1, 1, v24);
    *v120 = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1A7CCCAA4((v26 > 1), v27 + 1, 1, v24);
    *v120 = v24;
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v22;
  *(v28 + 5) = v23;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1A7E22B70();

  v123 = 0xD000000000000014;
  v124 = 0x80000001A7EAEA90;
  if (*(v108 + 16) == 3)
  {
    v29 = 0xE400000000000000;
    v30 = 1701736302;
  }

  else
  {
    LOWORD(v129) = *(v108 + 16);
    v30 = IDSLinkCellularTuple.description.getter();
    v29 = v31;
  }

  MEMORY[0x1AC561C90](v30, v29);

  v32 = v123;
  v33 = v124;
  v34 = *v120;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_1A7CCCAA4(0, *(v34 + 2) + 1, 1, v34);
    *v120 = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = sub_1A7CCCAA4((v36 > 1), v37 + 1, 1, v34);
    *v120 = v34;
  }

  *(v34 + 2) = v37 + 1;
  v38 = &v34[16 * v37];
  *(v38 + 4) = v32;
  *(v38 + 5) = v33;
  v39 = *v120;
  v41 = *(*v120 + 2);
  v40 = *(*v120 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1A7CCCAA4((v40 > 1), v41 + 1, 1, v39);
    *v120 = v39;
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[16 * v41];
  *(v42 + 4) = 0;
  *(v42 + 5) = 0xE000000000000000;
  v43 = *v120;
  v45 = *(*v120 + 2);
  v44 = *(*v120 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1A7CCCAA4((v44 > 1), v45 + 1, 1, v43);
    *v120 = v43;
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[16 * v45];
  strcpy(v46 + 32, "Allocations:");
  v46[45] = 0;
  *(v46 + 23) = -5120;
  v47 = *(v108 + 1);
  v50 = *(v47 + 64);
  v49 = v47 + 64;
  v48 = v50;
  v51 = 1 << *(*(v108 + 1) + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v7 = v52 & v48;
  v53 = (v51 + 63) >> 6;
  v114 = *(v108 + 1);

  v6 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v110 = v53;
  for (i = v49; v7; v49 = i)
  {
LABEL_36:
    v55 = *(v114 + 56) + ((v6 << 11) | (32 * __clz(__rbit64(v7))));
    v57 = *v55;
    v56 = *(v55 + 8);
    v119 = *(v55 + 16);
    v117 = *(v55 + 17);
    v58 = *(v55 + 24);
    v121 = v7;
    v123 = 8237;
    v124 = 0xE200000000000000;
    swift_bridgeObjectRetain_n();

    MEMORY[0x1AC561C90](v57, v56);

    v59 = v123;
    v115 = v124;
    v60 = *v120;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *v120 = v60;
    if ((v61 & 1) == 0)
    {
      v60 = sub_1A7CCCAA4(0, *(v60 + 2) + 1, 1, v60);
      *v120 = v60;
    }

    v63 = *(v60 + 2);
    v62 = *(v60 + 3);
    if (v63 >= v62 >> 1)
    {
      v60 = sub_1A7CCCAA4((v62 > 1), v63 + 1, 1, v60);
      *v120 = v60;
    }

    *(v60 + 2) = v63 + 1;
    v64 = &v60[16 * v63];
    *(v64 + 4) = v59;
    *(v64 + 5) = v115;
    v129 = v5;
    v123 = v57;
    v124 = v56;
    LOBYTE(v125) = v119;
    BYTE1(v125) = v117;
    v126 = v58;
    sub_1A7D25748(&v129, &v123);

    v65 = v129;
    v66 = *(v129 + 2);
    if (v66)
    {
      v131 = v5;
      sub_1A7CCE918(0, v66, 0);
      v67 = v131;
      v68 = (v65 + 40);
      do
      {
        v70 = *(v68 - 1);
        v69 = *v68;
        v123 = 538976288;
        v124 = 0xE400000000000000;

        MEMORY[0x1AC561C90](v70, v69);

        v72 = v123;
        v71 = v124;
        v131 = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1A7CCE918((v73 > 1), v74 + 1, 1);
          v67 = v131;
        }

        *(v67 + 16) = v74 + 1;
        v75 = v67 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v71;
        v68 += 2;
        --v66;
      }

      while (v66);
    }

    else
    {
      v67 = v5;
    }

    sub_1A7DDEE7C(v67);

    v76 = *v120;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *v120 = v76;
    if ((v77 & 1) == 0)
    {
      v76 = sub_1A7CCCAA4(0, *(v76 + 2) + 1, 1, v76);
      *v120 = v76;
    }

    v79 = *(v76 + 2);
    v78 = *(v76 + 3);
    if (v79 >= v78 >> 1)
    {
      v76 = sub_1A7CCCAA4((v78 > 1), v79 + 1, 1, v76);
      *v120 = v76;
    }

    v7 = (v121 - 1) & v121;
    *(v76 + 2) = v79 + 1;
    v80 = &v76[16 * v79];
    *(v80 + 4) = 0;
    *(v80 + 5) = 0xE000000000000000;
    v5 = MEMORY[0x1E69E7CC0];
    v53 = v110;
  }

  while (1)
  {
    v54 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_84;
    }

    if (v54 >= v53)
    {
      break;
    }

    v7 = *(v49 + 8 * v54);
    ++v6;
    if (v7)
    {
      v6 = v54;
      goto LABEL_36;
    }
  }

  v82 = *(v108 + 2);
  v83 = *(v82 + 16);
  if (v83)
  {
    v84 = (v82 + 40);
    do
    {
      v118 = v83;
      v85 = *(v84 - 8);
      v86 = *(v84 - 7);
      v87 = v84[1];
      v88 = v84[2];
      v89 = v84[3];
      v111 = v84[4];
      v122 = *v84;
      v123 = 8237;
      v124 = 0xE200000000000000;
      v129 = 0;
      v130 = 0xE000000000000000;
      if (v85 == 1)
      {
        v90 = 0x6C6C65436E6F4ELL;
      }

      else
      {
        v90 = 7958081;
      }

      v91 = 0xE700000000000000;
      if (v85 != 1)
      {
        v91 = 0xE300000000000000;
      }

      v113 = v85;
      if (v85)
      {
        v92 = v90;
      }

      else
      {
        v92 = 1819043139;
      }

      if (v85)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0xE400000000000000;
      }

      v116 = v88;

      MEMORY[0x1AC561C90](v92, v93);

      MEMORY[0x1AC561C90](45, 0xE100000000000000);
      if (v86 == 1)
      {
        v94 = 0x6C6C65436E6F4ELL;
      }

      else
      {
        v94 = 7958081;
      }

      v95 = 0xE700000000000000;
      if (v86 != 1)
      {
        v95 = 0xE300000000000000;
      }

      if (v86)
      {
        v96 = v94;
      }

      else
      {
        v96 = 1819043139;
      }

      if (v86)
      {
        v97 = v95;
      }

      else
      {
        v97 = 0xE400000000000000;
      }

      MEMORY[0x1AC561C90](v96, v97);

      MEMORY[0x1AC561C90](v129, v130);

      MEMORY[0x1AC561C90](8250, 0xE200000000000000);

      MEMORY[0x1AC561C90](v122, v87);

      v98 = v123;
      v99 = v124;
      v100 = *v120;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *v120 = v100;
      if ((v101 & 1) == 0)
      {
        v100 = sub_1A7CCCAA4(0, *(v100 + 2) + 1, 1, v100);
        *v120 = v100;
      }

      v103 = *(v100 + 2);
      v102 = *(v100 + 3);
      v104 = v86;
      if (v103 >= v102 >> 1)
      {
        v107 = sub_1A7CCCAA4((v102 > 1), v103 + 1, 1, v100);
        v104 = v86;
        v100 = v107;
        *v120 = v107;
      }

      *(v100 + 2) = v103 + 1;
      v105 = &v100[16 * v103];
      *(v105 + 4) = v98;
      *(v105 + 5) = v99;
      v129 = MEMORY[0x1E69E7CC0];
      LOBYTE(v123) = v113;
      BYTE1(v123) = v104;
      v124 = v122;
      v125 = v87;
      v126 = v116;
      v127 = v89;
      v128 = v111;
      sub_1A7D1EB70(&v129, &v123);
      v123 = v129;
      v106._countAndFlagsBits = 538976288;
      v106._object = 0xE400000000000000;
      LinkEngineStateLog.log(_:indentation:)(&v123, v106);

      v84 += 6;
      v83 = v118 - 1;
    }

    while (v118 != 1);
  }

  return result;
}

uint64_t sub_1A7D1FC58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = *result;
    v6 = *(result + 24);
    v7 = *(result + 16);
    v8 = *(v6 + 16);
    if (v8)
    {
      v16 = MEMORY[0x1E69E7CC0];

      sub_1A7CCE918(0, v8, 0);
      v4 = v16;
      v9 = v6 + 32;
      do
      {
        result = LinkEndpoint.uniqueID.getter();
        v17 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          v15 = result;
          v14 = v10;
          sub_1A7CCE918((v11 > 1), v12 + 1, 1);
          v10 = v14;
          result = v15;
          v4 = v17;
        }

        *(v4 + 16) = v12 + 1;
        v13 = v4 + 16 * v12;
        *(v13 + 32) = result;
        *(v13 + 40) = v10;
        v9 += 8;
        --v8;
      }

      while (v8);
    }

    else
    {
    }
  }

  else
  {
    v7 = 2;
    v3 = 0xE300000000000000;
    v5 = 7104878;
  }

  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  return result;
}

size_t sub_1A7D1FD88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v82 = a3;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v92 = &v75 - v9;
  v84 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v84, v10);
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v75 - v14;
  v16 = type metadata accessor for LEToolLink();
  v90 = *(v16 - 8);
  v91 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v80 = a1[1];
  v81 = v20;
  v21 = *(a1 + 5);
  if (*(a2 + 16) && (v22 = sub_1A7CD1248(*(a1 + 1), *(a1 + 2)), (v23 & 1) != 0))
  {
    v24 = *(a2 + 56) + 32 * v22;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 24);
    v28 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v27 = 0;
  }

  *&v127 = v25;
  *(&v127 + 1) = v26;
  *&v128 = v28;
  *(&v128 + 1) = v27;
  sub_1A7D1FC58(&v127, v146);
  sub_1A7D21920(v25, v26);
  v29 = v146[0];
  v30 = v146[1];
  v77 = v147;
  v76 = v148;
  v31 = v4[21];
  v32 = v4[22];
  sub_1A7CC9878(v4 + 18, v31);
  v33 = (*(v32 + 8))(v21, v31, v32);
  v34 = v33;
  v78 = v30;
  v79 = v29;
  if (v33 >> 62)
  {
    v35 = sub_1A7E22DA0();
    if (v35)
    {
      goto LABEL_7;
    }

LABEL_38:

    v37 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v72 = v82;
    v73 = v80;
    *v82 = v81;
    v72[1] = v73;
    v74 = v78;
    *(v72 + 1) = v79;
    *(v72 + 2) = v74;
    v72[24] = v77;
    *(v72 + 4) = v76;
    *(v72 + 5) = v37;
    return result;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_7:
  v145 = MEMORY[0x1E69E7CC0];
  result = sub_1A7CCEB90(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = v145;
    v38 = 0;
    v93 = type metadata accessor for LinkStateComponent(0);
    v86 = v93 - 8;
    v87 = v34 & 0xC000000000000001;
    v85 = v35 - 1;
    v88 = v34;
    v89 = v15;
    if ((v34 & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v39 = MEMORY[0x1AC562480](v38, v34);
    while (1)
    {
      v41 = *(v39 + 16);
      v40 = *(v39 + 24);

      os_unfair_lock_lock((v39 + 40));
      v42 = *(v39 + 48);
      if (*(v42 + 16) && (v43 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v44 & 1) != 0))
      {
        sub_1A7B0CD10(*(v42 + 56) + 32 * v43, v141);
      }

      else
      {
        memset(v141, 0, sizeof(v141));
      }

      v94 = v41;
      v95 = v40;
      v45 = v38;
      os_unfair_lock_unlock((v39 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v47 = v142;
      v46 = v143;
      v48 = v144;
      if (v142 == 1)
      {
        goto LABEL_22;
      }

      sub_1A7CDB7B8(v142);
      sub_1A7CDBC48(v47);
      if (!v47)
      {
        goto LABEL_23;
      }

      v110[2] = v46;
      LinkEndpoint.toolRepresentation.getter(&v118);
      v110[1] = v48;
      LinkEndpoint.toolRepresentation.getter(v125);
      sub_1A7CE0528(v47, v110);
      v49 = v110[0];
      sub_1A7CDB84C(v47);
      v50 = MEMORY[0x1E69E7CC0];
      if (v49)
      {
        v50 = v49;
      }

      v115 = v122;
      v116 = v123;
      LOWORD(v117[0]) = v124;
      v111 = v118;
      v112 = v119;
      v113 = v120;
      v114 = v121;
      *(v117 + 8) = v125[0];
      *(&v117[1] + 8) = v125[1];
      *(&v117[2] + 8) = v125[2];
      WORD4(v117[6]) = v126;
      *(&v117[5] + 8) = v125[5];
      *(&v117[4] + 8) = v125[4];
      *(&v117[3] + 8) = v125[3];
      v98 = v120;
      v99 = v121;
      v96 = v118;
      v97 = v119;
      v102 = v117[0];
      v103 = v117[1];
      v100 = v122;
      v101 = v123;
      v107 = v117[5];
      v108 = v117[6];
      v105 = v117[3];
      v106 = v117[4];
      v104 = v117[2];
      v109 = v50;
      nullsub_15(&v96);
      v137 = v106;
      v138 = v107;
      v139 = v108;
      v140 = v109;
      v133 = v102;
      v134 = v103;
      v135 = v104;
      v136 = v105;
      v129 = v98;
      v130 = v99;
      v131 = v100;
      v132 = v101;
      v127 = v96;
      v128 = v97;
LABEL_24:
      v51 = v92;
      v52 = v45;
      v54 = v94;
      v53 = v95;
      os_unfair_lock_lock((v39 + 40));
      v55 = *(v39 + 48);
      if (*(v55 + 16) && (v56 = sub_1A7CD0DFC(v93), (v57 & 1) != 0))
      {
        sub_1A7B0CD10(*(v55 + 56) + 32 * v56, &v96);
      }

      else
      {
        v96 = 0u;
        v97 = 0u;
      }

      os_unfair_lock_unlock((v39 + 40));

      v58 = v93;
      v59 = swift_dynamicCast();
      v60 = *(v58 - 8);
      (*(v60 + 56))(v51, v59 ^ 1u, 1, v58);
      if ((*(v60 + 48))(v51, 1, v58))
      {
        sub_1A7CC9970(v51, &qword_1EB2B4A80);
        v61 = v89;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v62 = v83;
        sub_1A7CD0EC4(v51, v83);
        sub_1A7CC9970(v51, &qword_1EB2B4A80);
        v63 = v62;
        v61 = v89;
        sub_1A7D25A84(v63, v89, type metadata accessor for LinkState);
      }

      *v19 = v54;
      *(v19 + 1) = v53;
      v64 = v138;
      *(v19 + 11) = v137;
      *(v19 + 12) = v64;
      *(v19 + 13) = v139;
      *(v19 + 28) = v140;
      v65 = v134;
      *(v19 + 7) = v133;
      *(v19 + 8) = v65;
      v66 = v136;
      *(v19 + 9) = v135;
      *(v19 + 10) = v66;
      v67 = v130;
      *(v19 + 3) = v129;
      *(v19 + 4) = v67;
      v68 = v132;
      *(v19 + 5) = v131;
      *(v19 + 6) = v68;
      v69 = v128;
      *(v19 + 1) = v127;
      *(v19 + 2) = v69;
      sub_1A7D25A84(v61, &v19[*(v91 + 24)], type metadata accessor for LinkState);
      v145 = v37;
      v71 = *(v37 + 16);
      v70 = *(v37 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1A7CCEB90(v70 > 1, v71 + 1, 1);
        v37 = v145;
      }

      *(v37 + 16) = v71 + 1;
      sub_1A7D25A84(v19, v37 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v71, type metadata accessor for LEToolLink);
      if (v85 == v52)
      {

        goto LABEL_39;
      }

      v38 = v52 + 1;
      v34 = v88;
      if (v87)
      {
        goto LABEL_9;
      }

LABEL_10:
      v39 = *(v34 + 8 * v38 + 32);
    }

    v142 = 1;
    v143 = 0;
    v144 = 0;
LABEL_22:
    sub_1A7CDBC48(1);
LABEL_23:
    sub_1A7D21964(&v127);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D20568@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 200);

  v9 = sub_1A7DF29D0(v8);

  v11 = sub_1A7DF2D00(v10, a2, a1);

  v12 = *(a1 + 5);
  v13 = 256;
  if (!v7)
  {
    v13 = 0;
  }

  v14 = *(a1 + 16) | 0x8000000000000000;
  *a3 = v13 | v6;
  a3[1] = v9;
  a3[2] = v11;
  a3[3] = v14;
  a3[4] = v12;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.deinit()
{

  sub_1A7D21440(v0 + 48);

  sub_1A7B0CD6C(v0 + 144);

  return v0;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.__deallocating_deinit()
{

  sub_1A7D21440(v0 + 48);

  sub_1A7B0CD6C(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D206FC()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A7D2072C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A7D25CDC;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1A7E473A8;
  *(v4 + 24) = v3;

  sub_1A7D212B4(v5, &unk_1A7E473B0, v4, v2);
}

void sub_1A7D207F4(unint64_t *a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 40));
  sub_1A7D1F1AC((v3 + 48), a1, v3);

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_1A7D20858(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, unsigned __int8 *a5)
{
  v50 = a5;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 4;
  v11 = a3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v10 < v13 >> 4)
  {
    v15 = __dst;
    if (__dst != __src || &__src[2 * v10] <= __dst)
    {
      memmove(__dst, __src, 16 * v10);
    }

    v16 = &v15[2 * v10];
    if (v8 < 16 || v6 >= v11)
    {
LABEL_21:
      v24 = v7;
      goto LABEL_52;
    }

    v17 = v11;
    while (1)
    {
      v18 = v6[1];
      v48 = *v6;
      v49 = v18;
      v19 = v15[1];
      v46 = *v15;
      v47 = v19;

      v20 = sub_1A7D1DF94(&v48, &v46, v50);
      if (v5)
      {

        v35 = v16 - v15 + 15;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF0)) || v7 != v15)
        {
          v36 = 16 * (v35 >> 4);
          v24 = v7;
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v6;
      v23 = v7 == v6;
      v6 += 2;
      if (!v23)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 2;
      if (v15 >= v16 || v6 >= v17)
      {
        goto LABEL_21;
      }
    }

    v22 = v15;
    v23 = v7 == v15;
    v15 += 2;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v22;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[2 * v14] <= __dst)
  {
    v25 = __dst;
    memmove(__dst, a2, 16 * v14);
    __dst = v25;
  }

  __srca = __dst;
  v16 = &__dst[2 * v14];
  if (v12 < 16 || v6 <= v7)
  {
    v24 = v6;
    v15 = __dst;
    goto LABEL_52;
  }

LABEL_27:
  v26 = 0;
  v27 = v16;
  v43 = v6 - 2;
  v44 = v11;
  while (1)
  {
    v28 = v27;
    v29 = &v27[v26];
    v30 = &v27[v26 - 2];
    v31 = v27[v26 - 1];
    v48 = *v30;
    v49 = v31;
    v32 = *(v6 - 1);
    v46 = *(v6 - 2);
    v47 = v32;

    v33 = sub_1A7D1DF94(&v48, &v46, v50);
    if (v5)
    {
      break;
    }

    v34 = v33;

    if (v34)
    {
      v24 = v6 - 2;
      v11 = &v44[v26 - 2];
      if (&v44[v26] != v6)
      {
        *v11 = *v43;
      }

      v16 = &v28[v26];
      v15 = __srca;
      if (&v28[v26] <= __srca || (v6 -= 2, v43 <= v7))
      {
        v16 = &v28[v26];
        goto LABEL_52;
      }

      goto LABEL_27;
    }

    v27 = v28;
    if (&v44[v26] != v29)
    {
      *&v44[v26 - 2] = *v30;
    }

    v26 -= 2;
    v16 = &v28[v26];
    v15 = __srca;
    if (&v28[v26] <= __srca)
    {
      v24 = v6;
LABEL_52:
      v41 = v16 - v15 + 15;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (v24 >= v15 && v24 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF0)) && v24 == v15)
      {
        goto LABEL_60;
      }

      v36 = 16 * (v41 >> 4);
LABEL_58:
      v37 = v15;
LABEL_59:
      memmove(v24, v37, v36);
      goto LABEL_60;
    }
  }

  v37 = __srca;
  v38 = v28 - __srca + v26 * 8;
  v39 = v38 + 15;
  if (v38 >= 0)
  {
    v39 = v28 - __srca + v26 * 8;
  }

  v40 = v39 >> 4;
  if (v6 < __srca || v6 >= (__srca + (v39 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, __srca, 16 * v40);
    goto LABEL_60;
  }

  if (v6 != __srca)
  {
    v36 = 16 * v40;
    v24 = v6;
    goto LABEL_59;
  }

LABEL_60:
  sub_1A7D25A4C(v50);
  return 1;
}

unint64_t sub_1A7D20C18(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1AC562480](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1A7E22DA0();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1A7CC7FFC(&qword_1EB2B4CA0);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1A7D20E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AAC820;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8);
  *(a4 + 24) = v13[0];

  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D21854;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AAC820;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7D20F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AADFE0;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AADFE0;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7D21128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AB0808;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AB0808;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7D212B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSGLTwoWayLinkConnectorPlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSGLTwoWayLinkConnectorPlugin;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

unint64_t sub_1A7D21474()
{
  result = qword_1EB2B5B28;
  if (!qword_1EB2B5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B28);
  }

  return result;
}

uint64_t sub_1A7D21514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D2155C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7D215F0()
{
  result = qword_1EB2B5B38;
  if (!qword_1EB2B5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B38);
  }

  return result;
}

unint64_t sub_1A7D21648()
{
  result = qword_1EB2B5B40;
  if (!qword_1EB2B5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B40);
  }

  return result;
}

unint64_t sub_1A7D216A0()
{
  result = qword_1EB2B5B48;
  if (!qword_1EB2B5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B48);
  }

  return result;
}

unint64_t sub_1A7D216F8()
{
  result = qword_1EB2B5B50;
  if (!qword_1EB2B5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B50);
  }

  return result;
}

unint64_t sub_1A7D21750()
{
  result = qword_1EB2B5B58;
  if (!qword_1EB2B5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B58);
  }

  return result;
}

unint64_t sub_1A7D217A8()
{
  result = qword_1EB2B5B60;
  if (!qword_1EB2B5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B60);
  }

  return result;
}

unint64_t sub_1A7D21800()
{
  result = qword_1EB2B5B68;
  if (!qword_1EB2B5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B68);
  }

  return result;
}

uint64_t sub_1A7D21858(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD22FC;

  return sub_1A7D193A4(a1, a2, v6);
}

uint64_t sub_1A7D21920(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1A7D21964(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  return result;
}

void sub_1A7D219A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSConnectRelayLinksByInterfaceTypePlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSConnectRelayLinksByInterfaceTypePlugin;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

uint64_t sub_1A7D21B34(uint64_t a1, void (**a2)(void, void), uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v280 = a7;
  v294 = a6;
  v290 = a2;
  v288 = a1;
  v298 = sub_1A7E22CF0();
  v10 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298, v11);
  v271 = &v260 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v260 - v15;
  v17 = sub_1A7CC7FFC(&qword_1EB2B5B78);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v274 = &v260 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v267 = &v260 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v278 = &v260 - v25;
  v26 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v268 = &v260 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v270 = &v260 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v272 = &v260 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v277 = (&v260 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v291 = &v260 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v279 = &v260 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v285 = (&v260 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v293 = &v260 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v260 - v52;
  MEMORY[0x1EEE9AC00](v54, v55);
  v287 = &v260 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v296 = (&v260 - v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v260 - v62;
  v64 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v269 = &v260 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v276 = (&v260 - v69);
  MEMORY[0x1EEE9AC00](v70, v71);
  v273 = (&v260 - v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  v283 = (&v260 - v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  v284 = (&v260 - v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  v275 = &v260 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v281 = (&v260 - v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  v289 = &v260 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v292 = &v260 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v94 = &v260 - v93;
  MEMORY[0x1EEE9AC00](v95, v96);
  v295 = (&v260 - v97);
  MEMORY[0x1EEE9AC00](v98, v99);
  v282 = &v260 - v100;
  v103.n128_f64[0] = MEMORY[0x1EEE9AC00](v101, v102);
  v105 = &v260 - v104;
  v300 = a4;
  v301 = v106;
  v107 = a4 >> 62;
  if (a5)
  {
    if (!v107)
    {
      v108 = *((v300 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
LABEL_4:
        v109 = type metadata accessor for LinkStateComponent(0);
        if (v108 < 1)
        {
          goto LABEL_162;
        }

        v16 = v109;
        v110 = 0;
        v293 = (v300 & 0xC000000000000001);
        v281 = (v300 & 0xFFFFFFFFFFFFFF8);
        v291 = (v109 - 8);
        v285 = (v10 + 8);
        v284 = (v10 + 16);
        v283 = (v290 + 3);
        v289 = v108;
        v10 = v63;
        v286 = v63;
        v292 = v109;
        do
        {
          if (v293)
          {
            a4 = MEMORY[0x1AC562480](v110, v300);
          }

          else
          {
            if (v110 >= *(v281 + 2))
            {
              goto LABEL_94;
            }

            a4 = *(v300 + 8 * v110 + 32);
          }

          os_unfair_lock_lock((a4 + 40));
          v111 = *(a4 + 48);
          v299 = (a4 + 48);
          if (*(v111 + 16) && (v112 = sub_1A7CD0DFC(v16), (v113 & 1) != 0))
          {
            sub_1A7B0CD10(*(v111 + 56) + 32 * v112, &v302);
          }

          else
          {
            v302 = 0u;
            v303 = 0u;
          }

          os_unfair_lock_unlock((a4 + 40));
          sub_1A7CC7FFC(&qword_1EB2B66D0);
          v114 = swift_dynamicCast();
          v115 = *(v16 - 1);
          v63 = (v115 + 56);
          v94 = *(v115 + 56);
          (v94)(v10, v114 ^ 1u, 1, v16);
          v297 = *(v115 + 48);
          if ((v297)(v10, 1, v16))
          {
            v116 = v10;
            sub_1A7CC9970(v10, &qword_1EB2B4A80);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v117 = v105;
            v118 = v64;
            v119 = v282;
            sub_1A7CD0EC4(v10, v282);
            v116 = v10;
            sub_1A7CC9970(v10, &qword_1EB2B4A80);
            v120 = v119;
            v64 = v118;
            v105 = v117;
            v108 = v289;
            sub_1A7D25A84(v120, v105, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() >= 2)
          {

            sub_1A7CD0E68(v105);
            v10 = v116;
            v16 = v292;
          }

          else
          {
            v121 = v298;
            (*v285)(v105, v298);
            v122 = v295;
            (*v284)(v295, v294, v121);
            swift_storeEnumTagMultiPayload();
            v123 = v296;
            sub_1A7CD0EC4(v122, v296);
            v16 = v292;
            (v94)(v123, 0, 1, v292);
            os_unfair_lock_lock((a4 + 40));
            v63 = v287;
            sub_1A7CD1F00(v123, v287, &qword_1EB2B4A80);
            if ((v297)(v63, 1, v16) == 1)
            {
              sub_1A7CC9970(v63, &qword_1EB2B4A80);
              v302 = 0u;
              v303 = 0u;
            }

            else
            {
              *(&v303 + 1) = v16;
              v124 = sub_1A7CC98BC(&v302);
              sub_1A7D25A84(v63, v124, type metadata accessor for LinkStateComponent);
            }

            v108 = v289;
            sub_1A7CC8D74(&v302, v16);
            os_unfair_lock_unlock((a4 + 40));
            sub_1A7CD0E68(v295);
            sub_1A7CC9970(v296, &qword_1EB2B4A80);
            ObjectType = swift_getObjectType();
            v290[3](a4, ObjectType);

            v64 = v301;
            v10 = v286;
          }

          ++v110;
        }

        while (v108 != v110);
      }

      return 0;
    }

LABEL_96:
    v108 = sub_1A7E22DA0();
    if (v108)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v305 = MEMORY[0x1E69E7CC0];
  if (v107)
  {
    v126 = sub_1A7E22DA0();
  }

  else
  {
    v126 = *((v300 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v263 = v16;
  v264 = a3;
  v299 = v126;
  v282 = v10;
  if (!v126)
  {
    goto LABEL_54;
  }

  a4 = 0;
  v16 = (v300 & 0xC000000000000001);
  v127 = v10;
  v10 = v300 & 0xFFFFFFFFFFFFFF8;
  v297 = v127 + 8;
  while (!v16)
  {
    if (a4 >= *(v10 + 16))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v105 = *(v300 + 8 * a4 + 32);

    v64 = (a4 + 1);
    if (__OFADD__(a4, 1))
    {
      goto LABEL_52;
    }

LABEL_33:
    os_unfair_lock_lock(v105 + 10);
    v129 = *(v105 + 6);
    if (*(v129 + 16) && (v130 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v131 & 1) != 0))
    {
      sub_1A7B0CD10(*(v129 + 56) + 32 * v130, &v302);
    }

    else
    {
      v302 = 0u;
      v303 = 0u;
    }

    os_unfair_lock_unlock(v105 + 10);
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if (swift_dynamicCast() & 1) != 0 && v304 != 2 && (v304)
    {
    }

    else
    {
      os_unfair_lock_lock(v105 + 10);
      v132 = type metadata accessor for LinkStateComponent(0);
      v63 = v132;
      v133 = *(v105 + 6);
      if (*(v133 + 16) && (v134 = sub_1A7CD0DFC(v132), (v135 & 1) != 0))
      {
        sub_1A7B0CD10(*(v133 + 56) + 32 * v134, &v302);
      }

      else
      {
        v302 = 0u;
        v303 = 0u;
      }

      os_unfair_lock_unlock(v105 + 10);
      v136 = swift_dynamicCast();
      v137 = *(v63 - 1);
      (*(v137 + 56))(v53, v136 ^ 1u, 1, v63);
      if ((*(v137 + 48))(v53, 1, v63))
      {
        sub_1A7CC9970(v53, &qword_1EB2B4A80);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v138 = v292;
        sub_1A7CD0EC4(v53, v292);
        sub_1A7CC9970(v53, &qword_1EB2B4A80);
        sub_1A7D25A84(v138, v94, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v297)(v94, v298);
        sub_1A7E22BF0();
        v63 = *(v305 + 16);
        sub_1A7E22C40();
        sub_1A7E22C50();
        sub_1A7E22C00();
      }

      else
      {

        sub_1A7CD0E68(v94);
      }
    }

    ++a4;
    v128 = v64 == v299;
    v64 = v301;
    if (v128)
    {
      goto LABEL_53;
    }
  }

  v105 = MEMORY[0x1AC562480](a4, v300, v103);
  v64 = (a4 + 1);
  if (!__OFADD__(a4, 1))
  {
    goto LABEL_33;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v10 = v282;
LABEL_54:

  *&v302 = sub_1A7DB25A8(v139);
  v63 = 0;
  sub_1A7D311D4(&v302);
  v94 = v298;
  v16 = v289;

  a4 = v302;
  if ((v302 & 0x8000000000000000) != 0 || (v302 & 0x4000000000000000) != 0)
  {
    if (sub_1A7E22DA0())
    {
      goto LABEL_57;
    }

    goto LABEL_100;
  }

  if (!*(v302 + 16))
  {
LABEL_100:

    v190 = v10 + 56;
    v289 = *(v10 + 56);
    (v289)(v278, 1, 1, v94);
    if (!v299)
    {
LABEL_155:
      v255 = v278;
      v256 = v267;
      sub_1A7CD1F00(v278, v267, &qword_1EB2B5B78);
      v257 = v282;
      if ((*(v282 + 48))(v256, 1, v94) == 1)
      {
        sub_1A7CC9970(v255, &qword_1EB2B5B78);
        v258 = v256;
      }

      else
      {
        v259 = v263;
        (*(v257 + 32))(v263, v256, v94);
        LinkEngine.scheduleUpdate(for:)(v259);
        (*(v257 + 8))(v259, v94);
        v258 = v255;
      }

      sub_1A7CC9970(v258, &qword_1EB2B5B78);
      return 0;
    }

    v297 = 0;
    v293 = (v300 & 0xC000000000000001);
    v287 = (v300 & 0xFFFFFFFFFFFFFF8);
    v285 = (v282 + 16);
    v261 = v290 + 2;
    v284 = (v282 + 8);
    v281 = (v290 + 1);
    v265 = (v282 + 32);
    v192 = 1;
    *&v191 = 136315650;
    v262 = v191;
    *&v191 = 136315394;
    v260 = v191;
    v286 = v190;
    while (1)
    {
      if (v293)
      {
        v16 = MEMORY[0x1AC562480](v297, v300);
      }

      else
      {
        if (v297 >= *(v287 + 2))
        {
          goto LABEL_161;
        }

        v16 = *(v300 + 8 * v297 + 32);
      }

      v193 = v297 + 1;
      if (__OFADD__(v297, 1))
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        v287 = MEMORY[0x1AC562480](0, a4);
LABEL_60:

        if (qword_1EB2B47C0 != -1)
        {
          swift_once();
        }

        v140 = sub_1A7E22060();
        v141 = sub_1A7B0CB00(v140, qword_1EB2B5F68);
        v105 = v287;

        v278 = v141;
        v142 = sub_1A7E22040();
        v143 = sub_1A7E228F0();

        if (os_log_type_enabled(v142, v143))
        {
          v63 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *&v302 = v144;
          *v63 = 136315138;
          v145 = *(v105 + 2);
          v105 = *(v105 + 3);

          v64 = sub_1A7B0CB38(v145, v105, &v302);

          *(v63 + 4) = v64;
          _os_log_impl(&dword_1A7AD9000, v142, v143, "earliest connected link: %s", v63, 0xCu);
          sub_1A7B0CD6C(v144);
          MEMORY[0x1AC5654B0](v144, -1, -1);
          MEMORY[0x1AC5654B0](v63, -1, -1);
        }

        if (v299)
        {
          a4 = v300;
          v292 = v300 & 0xC000000000000001;
          v10 = type metadata accessor for LinkStateComponent(0);
          v146 = 0;
          v280 = a4 & 0xFFFFFFFFFFFFFF8;
          v291 = (v10 - 8);
          v283 = (v282 + 8);
          v277 = (v282 + 16);
          v276 = (v290 + 3);
          *&v147 = 136315906;
          v272 = v147;
          do
          {
            if (v292)
            {
              v148 = MEMORY[0x1AC562480](v146, v300);
              v63 = (v146 + 1);
              if (__OFADD__(v146, 1))
              {
                goto LABEL_93;
              }
            }

            else
            {
              if (v146 >= *(v280 + 16))
              {
                goto LABEL_95;
              }

              v148 = *(v300 + 8 * v146 + 32);

              v63 = (v146 + 1);
              if (__OFADD__(v146, 1))
              {
                goto LABEL_93;
              }
            }

            os_unfair_lock_lock((v148 + 40));
            v149 = *(v148 + 48);
            v297 = v148 + 48;
            if (*(v149 + 16) && (v150 = sub_1A7CD0DFC(v10), (v151 & 1) != 0))
            {
              sub_1A7B0CD10(*(v149 + 56) + 32 * v150, &v302);
            }

            else
            {
              v302 = 0u;
              v303 = 0u;
            }

            os_unfair_lock_unlock((v148 + 40));
            sub_1A7CC7FFC(&qword_1EB2B66D0);
            v152 = v293;
            v153 = swift_dynamicCast();
            v154 = *(v10 - 8);
            v64 = (v154 + 56);
            v295 = *(v154 + 56);
            (v295)(v152, v153 ^ 1u, 1, v10);
            v155 = *(v154 + 48);
            v105 = (v154 + 48);
            v296 = v155;
            if ((v155)(v152, 1, v10))
            {
              sub_1A7CC9970(v152, &qword_1EB2B4A80);
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v156 = v281;
              sub_1A7CD0EC4(v152, v281);
              sub_1A7CC9970(v152, &qword_1EB2B4A80);
              v157 = v156;
              v16 = v289;
              sub_1A7D25A84(v157, v289, type metadata accessor for LinkState);
            }

            if (swift_getEnumCaseMultiPayload() >= 2)
            {

              sub_1A7CD0E68(v16);
            }

            else
            {
              (*v283)(v16, v94);
              if (v148 != v287)
              {
                v286 = v63;
                v158 = v94;
                v159 = v287;

                v160 = sub_1A7E22040();
                v161 = sub_1A7E228F0();
                v162 = v159;

                LODWORD(v282) = v161;
                if (os_log_type_enabled(v160, v161))
                {
                  v163 = swift_slowAlloc();
                  v274 = swift_slowAlloc();
                  *&v302 = v274;
                  *v163 = v272;
                  v273 = v160;
                  v164 = *(v148 + 16);
                  v165 = *(v148 + 24);

                  v166 = sub_1A7B0CB38(v164, v165, &v302);

                  *(v163 + 4) = v166;
                  *(v163 + 12) = 2080;
                  v167 = *(v162 + 16);
                  v168 = *(v162 + 24);

                  v169 = sub_1A7B0CB38(v167, v168, &v302);

                  *(v163 + 14) = v169;
                  *(v163 + 22) = 2080;
                  v170 = v275;
                  LinkEngineLink.state.getter(v275);
                  v171 = LinkState.description.getter();
                  v173 = v172;
                  sub_1A7CD0E68(v170);
                  v174 = sub_1A7B0CB38(v171, v173, &v302);

                  *(v163 + 24) = v174;
                  *(v163 + 32) = 2080;
                  LinkEngineLink.state.getter(v170);
                  v175 = LinkState.description.getter();
                  v177 = v176;
                  v178 = v170;
                  a4 = v279;
                  sub_1A7CD0E68(v178);
                  v179 = sub_1A7B0CB38(v175, v177, &v302);
                  v16 = v289;

                  *(v163 + 34) = v179;
                  v180 = v273;
                  _os_log_impl(&dword_1A7AD9000, v273, v282, "%s: Disconnecting because it is not %s; state: %s, earlier link state: %s", v163, 0x2Au);
                  v181 = v274;
                  swift_arrayDestroy();
                  MEMORY[0x1AC5654B0](v181, -1, -1);
                  v182 = v163;
                  v94 = v298;
                  MEMORY[0x1AC5654B0](v182, -1, -1);
                }

                else
                {

                  v94 = v158;
                  a4 = v279;
                  v16 = v289;
                }

                v183 = v284;
                (*v277)(v284, v294, v94);
                swift_storeEnumTagMultiPayload();
                v184 = v183;
                v185 = v285;
                sub_1A7CD0EC4(v184, v285);
                (v295)(v185, 0, 1, v10);
                os_unfair_lock_lock((v148 + 40));
                v64 = &qword_1EB2B4A80;
                sub_1A7CD1F00(v185, a4, &qword_1EB2B4A80);
                v186 = (v296)(a4, 1, v10);
                v63 = v286;
                if (v186 == 1)
                {
                  sub_1A7CC9970(a4, &qword_1EB2B4A80);
                  v302 = 0u;
                  v303 = 0u;
                }

                else
                {
                  *(&v303 + 1) = v10;
                  v187 = sub_1A7CC98BC(&v302);
                  sub_1A7D25A84(a4, v187, type metadata accessor for LinkStateComponent);
                }

                v105 = &unk_1A7E41910;
                sub_1A7CC8D74(&v302, v10);
                os_unfair_lock_unlock((v148 + 40));
                sub_1A7CD0E68(v284);
                sub_1A7CC9970(v285, &qword_1EB2B4A80);
                v188 = swift_getObjectType();
                v290[3](v148, v188);
              }
            }

            ++v146;
          }

          while (v63 != v299);
        }

        return 1;
      }

      os_unfair_lock_lock(v16 + 10);
      v195 = v16 + 48;
      v194 = *(v16 + 6);
      if (*(v194 + 16) && (v196 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v197 & 1) != 0))
      {
        sub_1A7B0CD10(*(v194 + 56) + 32 * v196, &v302);
      }

      else
      {
        v302 = 0u;
        v303 = 0u;
      }

      os_unfair_lock_unlock(v16 + 10);
      a4 = sub_1A7CC7FFC(&qword_1EB2B66D0);
      if (swift_dynamicCast() & 1) != 0 && v305 != 2 && (v305)
      {
        goto LABEL_103;
      }

      os_unfair_lock_lock(v16 + 10);
      v198 = type metadata accessor for LinkStateComponent(0);
      v199 = v198;
      v200 = *v195;
      if (*(*v195 + 16) && (v201 = sub_1A7CD0DFC(v198), (v202 & 1) != 0))
      {
        sub_1A7B0CD10(*(v200 + 56) + 32 * v201, &v302);
      }

      else
      {
        v302 = 0u;
        v303 = 0u;
      }

      os_unfair_lock_unlock(v16 + 10);
      v203 = v291;
      v204 = swift_dynamicCast();
      v205 = *(v199 - 8);
      v295 = *(v205 + 56);
      (v295)(v203, v204 ^ 1u, 1, v199);
      v206 = *(v205 + 48);
      v63 = (v205 + 48);
      v296 = v206;
      if ((v206)(v203, 1, v199))
      {
        sub_1A7CC9970(v203, &qword_1EB2B4A80);
        a4 = v283;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v207 = v273;
        sub_1A7CD0EC4(v203, v273);
        sub_1A7CC9970(v203, &qword_1EB2B4A80);
        a4 = v283;
        sub_1A7D25A84(v207, v283, type metadata accessor for LinkState);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          if (v192)
          {
LABEL_131:
            if (qword_1EB2B47C0 != -1)
            {
              swift_once();
            }

            v209 = sub_1A7E22060();
            sub_1A7B0CB00(v209, qword_1EB2B5F68);

            v210 = sub_1A7E22040();
            v211 = sub_1A7E228F0();

            v212 = os_log_type_enabled(v210, v211);
            v292 = v193;
            if (v212)
            {
              v213 = swift_slowAlloc();
              v279 = swift_slowAlloc();
              *&v302 = v279;
              *v213 = v262;
              v214 = sub_1A7E22230();
              v266 = v211;
              v216 = sub_1A7B0CB38(v214, v215, &v302);

              *(v213 + 4) = v216;
              *(v213 + 12) = 2080;
              v217 = *(v16 + 2);
              v218 = *(v16 + 3);

              v219 = sub_1A7B0CB38(v217, v218, &v302);

              *(v213 + 14) = v219;
              *(v213 + 22) = 2080;
              v220 = v275;
              LinkEngineLink.state.getter(v275);
              v221 = LinkState.description.getter();
              v223 = v222;
              sub_1A7CD0E68(v220);
              v224 = sub_1A7B0CB38(v221, v223, &v302);

              *(v213 + 24) = v224;
              _os_log_impl(&dword_1A7AD9000, v210, v266, "%s %s: %s -> connecting", v213, 0x20u);
              v225 = v279;
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v225, -1, -1);
              v226 = v213;
              v64 = v301;
              MEMORY[0x1AC5654B0](v226, -1, -1);
            }

            v227 = v272;
            v228 = v276;
            (*v285)(v276, v294, v298);
            swift_storeEnumTagMultiPayload();
            v229 = v228;
            v230 = v277;
            sub_1A7CD0EC4(v229, v277);
            (v295)(v230, 0, 1, v199);
            os_unfair_lock_lock(v16 + 10);
            sub_1A7CD1F00(v230, v227, &qword_1EB2B4A80);
            if ((v296)(v227, 1, v199) == 1)
            {
              sub_1A7CC9970(v227, &qword_1EB2B4A80);
              v302 = 0u;
              v303 = 0u;
            }

            else
            {
              *(&v303 + 1) = v199;
              v251 = sub_1A7CC98BC(&v302);
              sub_1A7D25A84(v227, v251, type metadata accessor for LinkStateComponent);
            }

            sub_1A7CC8D74(&v302, v199);
            os_unfair_lock_unlock(v16 + 10);
            sub_1A7CD0E68(v276);
            sub_1A7CC9970(v277, &qword_1EB2B4A80);
            v252 = swift_getObjectType();
            (v290)[1](v16, v252);
            v63 = v274;
            sub_1A7E22CD0();

            a4 = v278;
            sub_1A7CC9970(v278, &qword_1EB2B5B78);
            v94 = v298;
            (v289)(v63, 0, 1, v298);
            sub_1A7D25AEC(v63, a4);
            if (v292 == v299)
            {
              goto LABEL_155;
            }

            goto LABEL_151;
          }

LABEL_147:

          v94 = v298;
          if (v193 == v299)
          {
            goto LABEL_155;
          }

LABEL_151:
          v192 = 0;
          goto LABEL_105;
        }

        if (*(a4 + 9))
        {
          if (qword_1EB2B47C0 != -1)
          {
            swift_once();
          }

          v232 = sub_1A7E22060();
          sub_1A7B0CB00(v232, qword_1EB2B5F68);

          v233 = sub_1A7E22040();
          v234 = sub_1A7E228F0();

          v235 = os_log_type_enabled(v233, v234);
          v292 = v193;
          if (v235)
          {
            v236 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            *&v302 = v279;
            *v236 = v260;
            v266 = v234;
            v237 = *(v16 + 2);
            v238 = *(v16 + 3);

            v239 = sub_1A7B0CB38(v237, v238, &v302);

            *(v236 + 4) = v239;
            *(v236 + 12) = 2080;
            v240 = v275;
            LinkEngineLink.state.getter(v275);
            v241 = LinkState.description.getter();
            v243 = v242;
            sub_1A7CD0E68(v240);
            v244 = sub_1A7B0CB38(v241, v243, &v302);

            *(v236 + 14) = v244;
            _os_log_impl(&dword_1A7AD9000, v233, v266, "%s: %s -> connecting (reconnect)", v236, 0x16u);
            v245 = v279;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v245, -1, -1);
            MEMORY[0x1AC5654B0](v236, -1, -1);
          }

          v246 = v278;
          v247 = v268;
          v248 = v269;
          (*v285)(v269, v294, v298);
          v64 = v301;
          swift_storeEnumTagMultiPayload();
          v249 = v248;
          v250 = v270;
          sub_1A7CD0EC4(v249, v270);
          (v295)(v250, 0, 1, v199);
          os_unfair_lock_lock(v16 + 10);
          sub_1A7CD1F00(v250, v247, &qword_1EB2B4A80);
          if ((v296)(v247, 1, v199) == 1)
          {
            sub_1A7CC9970(v247, &qword_1EB2B4A80);
            v302 = 0u;
            v303 = 0u;
          }

          else
          {
            *(&v303 + 1) = v199;
            v253 = sub_1A7CC98BC(&v302);
            sub_1A7D25A84(v247, v253, type metadata accessor for LinkStateComponent);
          }

          v63 = v286;
          sub_1A7CC8D74(&v302, v199);
          os_unfair_lock_unlock(v16 + 10);
          sub_1A7CD0E68(v269);
          sub_1A7CC9970(v270, &qword_1EB2B4A80);
          v254 = swift_getObjectType();
          (v290)[2](v16, v254);
          a4 = v274;
          sub_1A7E22CD0();

          sub_1A7CC9970(v246, &qword_1EB2B5B78);
          v94 = v298;
          (v289)(a4, 0, 1, v298);
          sub_1A7D25AEC(a4, v246);
          v192 = 0;
          v193 = v292;
        }

        else
        {

          v94 = v298;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          (*v284)(a4, v298);
          if (v192)
          {
            goto LABEL_131;
          }

          goto LABEL_147;
        }

        sub_1A7CD0E68(a4);
        v94 = v298;
      }

      else
      {
        v63 = v271;
        v94 = v298;
        (*v265)(v271, a4, v298);
        sub_1A7E22CE0();
        a4 = *(v280 + 16);
        if ((sub_1A7E232A0() & 1) == 0)
        {
          (*v284)(v63, v94);
LABEL_103:

          goto LABEL_104;
        }

        v231 = v274;
        sub_1A7E22CD0();

        (*v284)(v63, v94);
        a4 = v278;
        sub_1A7CC9970(v278, &qword_1EB2B5B78);
        (v289)(v231, 0, 1, v94);
        sub_1A7D25AEC(v231, a4);
        v192 = 0;
      }

LABEL_104:
      if (v193 == v299)
      {
        goto LABEL_155;
      }

LABEL_105:
      ++v297;
    }
  }

LABEL_57:
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_163;
  }

  if (*(a4 + 16))
  {
    v287 = *(a4 + 32);

    goto LABEL_60;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1A7D23EAC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    sub_1A7D25A14(a5, &v173);
    sub_1A7D25A14(a5, &v173);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_216:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_258;
    }

    sub_1A7D25A14(a5, &v173);
    sub_1A7D25A14(a5, &v173);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_252:
      v8 = sub_1A7CF0024(v8);
    }

    v175 = v8;
    v136 = *(v8 + 16);
    if (v136 >= 2)
    {
      do
      {
        v137 = *a3;
        if (!*a3)
        {
          goto LABEL_256;
        }

        v138 = *(v8 + 16 * v136);
        v139 = v8;
        v140 = *(v8 + 16 * (v136 - 1) + 40);
        v141 = (v137 + 16 * v138);
        v142 = (v137 + 16 * *(v8 + 16 * (v136 - 1) + 32));
        v8 = v137 + 16 * v140;
        sub_1A7D25A14(a5, &v173);
        sub_1A7D20858(v141, v142, v8, __dst, a5);
        if (v157)
        {
          sub_1A7D25A4C(a5);
          sub_1A7D25A4C(a5);

          sub_1A7D25A4C(a5);
          v144 = a5;
          return sub_1A7D25A4C(v144);
        }

        if (v140 < v138)
        {
          goto LABEL_245;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1A7CF0024(v139);
        }

        if (v136 - 2 >= *(v139 + 2))
        {
          goto LABEL_246;
        }

        v143 = &v139[16 * v136];
        *v143 = v138;
        *(v143 + 1) = v140;
        v175 = v139;
        sub_1A7CEFF98(v136 - 1);
        v8 = v175;
        v136 = *(v175 + 2);
      }

      while (v136 > 1);
    }

    v135 = a5;
    sub_1A7D25A4C(a5);
    sub_1A7D25A4C(a5);

LABEL_227:
    sub_1A7D25A4C(v135);
    v144 = v135;
    return sub_1A7D25A4C(v144);
  }

  sub_1A7D25A14(a5, &v173);
  sub_1A7D25A14(a5, &v173);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_82;
    }

    v10 = *a3;
    v11 = (*a3 + 16 * v7);
    v12 = v11[1];
    *&v173 = *v11;
    *(&v173 + 1) = v12;
    v13 = (v10 + 16 * v9);
    v14 = v13[1];
    *&v169 = *v13;
    *(&v169 + 1) = v14;

    v165 = sub_1A7D1DF94(&v173, &v169, a5);
    if (v157)
    {

LABEL_214:
      v135 = a5;
      goto LABEL_227;
    }

    v7 = v9 + 2;
    if (v9 + 2 < v6)
    {
      v146 = v9;
      v148 = v8;
      v15 = v13 + 3;
      v163 = v6;
      while (1)
      {
        v158 = v7;
        v16 = v15;
        v17 = v15[1];
        v19 = v15[2];
        v15 += 2;
        v18 = v19;
        v20 = *(v16 - 1);
        v21 = *v16;

        os_unfair_lock_lock((v19 + 40));
        v22 = *(v19 + 48);
        v166 = v20;
        if (*(v22 + 16) && (v23 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v24 & 1) != 0))
        {
          sub_1A7B0CD10(*(v22 + 56) + 32 * v23, &v173);
        }

        else
        {
          v173 = 0u;
          v174 = 0u;
        }

        os_unfair_lock_unlock(v18 + 10);
        sub_1A7CC7FFC(&qword_1EB2B66D0);
        __dst = v17;
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v25 = v169;
        if (v169 == 1)
        {
          v6 = v163;
LABEL_18:
          sub_1A7CDBC48(1);
LABEL_19:
          sub_1A7CDB84C(0);
          v26 = 1;
          v27 = 2;
          goto LABEL_20;
        }

        sub_1A7CDB7B8(v169);
        sub_1A7CDBC48(v25);
        if (!v25)
        {
          v6 = v163;
          goto LABEL_19;
        }

        sub_1A7CDB84C(v25);
        if (!*(*(&v25 + 1) + 16) || (v40 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v41 & 1) == 0))
        {
          v171 = 0;
          v172 = 1;
LABEL_66:
          v6 = v163;
LABEL_67:

          v26 = 0;
          v27 = 1;
          goto LABEL_20;
        }

        sub_1A7B0CD10(*(*(&v25 + 1) + 56) + 32 * v40, &v173);
        sub_1A7B1503C(&v173, &v169);
        sub_1A7CC7FFC(&qword_1EB2B5040);
        v42 = swift_dynamicCast();
        if ((v42 & 1) == 0)
        {
          v171 = 0;
          v172 = v42 ^ 1;
          goto LABEL_66;
        }

        v172 = v42 ^ 1;
        v6 = v163;
        if (v171 <= 0xA && ((1 << v171) & 0x601) != 0)
        {
          goto LABEL_67;
        }

        v26 = 0;
        v27 = 0;
LABEL_20:
        os_unfair_lock_lock((v21 + 40));
        v28 = *(v21 + 48);
        if (*(v28 + 16) && (v29 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v30 & 1) != 0))
        {
          sub_1A7B0CD10(*(v28 + 56) + 32 * v29, &v173);
        }

        else
        {
          v173 = 0u;
          v174 = 0u;
        }

        os_unfair_lock_unlock((v21 + 40));
        if ((swift_dynamicCast() & 1) == 0)
        {
          v169 = 1uLL;
          v170 = 0;
LABEL_34:
          sub_1A7CDBC48(1);
LABEL_35:
          sub_1A7CDB84C(0);
          v35 = 1;
          v36 = 2;
          goto LABEL_36;
        }

        v31 = v169;
        if (v169 == 1)
        {
          goto LABEL_34;
        }

        sub_1A7CDB7B8(v169);
        sub_1A7CDBC48(v31);
        if (!v31)
        {
          v6 = v163;
          goto LABEL_35;
        }

        sub_1A7CDB84C(v31);
        v6 = v163;
        if (!*(*(&v31 + 1) + 16) || (v32 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v33 & 1) == 0))
        {
          v171 = 0;
          v172 = 1;
LABEL_64:

          v35 = 0;
          v36 = 1;
          goto LABEL_36;
        }

        sub_1A7B0CD10(*(*(&v31 + 1) + 56) + 32 * v32, &v173);
        sub_1A7B1503C(&v173, &v169);
        sub_1A7CC7FFC(&qword_1EB2B5040);
        v34 = swift_dynamicCast();
        if ((v34 & 1) == 0)
        {
          v171 = 0;
          v172 = v34 ^ 1;
          goto LABEL_64;
        }

        v172 = v34 ^ 1;
        if (v171 <= 0xA && ((1 << v171) & 0x601) != 0)
        {
          goto LABEL_64;
        }

        v35 = 0;
        v36 = 0;
LABEL_36:
        v37 = *a5;

        if (v37 == 2 || v27 == v37)
        {
          if (v37 == 2 || v36 == v37)
          {
            v39 = 1;
          }

          else
          {
            v39 = v35;
          }

          v7 = v158;
          if (v39 != 1)
          {
LABEL_48:
            if ((v165 & 1) == 0)
            {
              v9 = v146;
              v8 = v148;
              goto LABEL_82;
            }

            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v7 = v158;
        if (v36 == v37)
        {
          if (v26)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (v26)
          {
            if ((v35 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_8:
            if (((v165 ^ (__dst >= v166)) & 1) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_9;
          }

          if (!v35)
          {
            goto LABEL_8;
          }
        }

        if (v165)
        {
          v9 = v146;
          v8 = v148;
          if (v158 < v146)
          {
LABEL_251:
            __break(1u);
            goto LABEL_252;
          }

LABEL_76:
          if (v9 < v7)
          {
            v43 = 0;
            v44 = 16 * v7;
            v45 = 16 * v9;
            v46 = v9;
            do
            {
              if (v46 != v7 + v43 - 1)
              {
                v47 = *a3;
                if (!*a3)
                {
                  goto LABEL_255;
                }

                v48 = (v47 + v45);
                v49 = v47 + v44;
                v50 = *v48;
                v51 = v48[1];
                *v48 = *(v49 - 16);
                *(v49 - 16) = v50;
                *(v49 - 8) = v51;
              }

              ++v46;
              --v43;
              v44 -= 16;
              v45 += 16;
            }

            while (v46 < v7 + v43);
          }

          goto LABEL_82;
        }

LABEL_9:
        if (v6 == ++v7)
        {
          v7 = v6;
LABEL_73:
          v9 = v146;
          v8 = v148;
          goto LABEL_74;
        }
      }

      v169 = 1uLL;
      v170 = 0;
      goto LABEL_18;
    }

LABEL_74:
    if (v165)
    {
      if (v7 < v9)
      {
        goto LABEL_251;
      }

      goto LABEL_76;
    }

LABEL_82:
    v52 = a3[1];
    if (v7 < v52)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_248;
      }

      if (v7 - v9 < a4)
      {
        v53 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_249;
        }

        if (v53 >= v52)
        {
          v53 = a3[1];
        }

        if (v53 < v9)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        if (v7 != v53)
        {
          break;
        }
      }
    }

LABEL_161:
    if (v7 < v9)
    {
      goto LABEL_247;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A7CCC08C(0, *(v8 + 16) + 1, 1, v8);
    }

    v84 = *(v8 + 16);
    v83 = *(v8 + 24);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      v8 = sub_1A7CCC08C((v83 > 1), v84 + 1, 1, v8);
    }

    *(v8 + 16) = v85;
    v86 = (v8 + 16 * v84);
    v86[4] = v9;
    v86[5] = v7;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_257;
    }

    v160 = v7;
    if (v84)
    {
      while (1)
      {
        v87 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v88 = *(v8 + 32);
          v89 = *(v8 + 40);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_181:
          if (v91)
          {
            goto LABEL_236;
          }

          v104 = (v8 + 16 * v85);
          v106 = *v104;
          v105 = v104[1];
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_239;
          }

          v110 = (v8 + 32 + 16 * v87);
          v112 = *v110;
          v111 = v110[1];
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_242;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_243;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v87 = v85 - 2;
            }

            goto LABEL_202;
          }

          goto LABEL_195;
        }

        v114 = (v8 + 16 * v85);
        v116 = *v114;
        v115 = v114[1];
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_195:
        if (v109)
        {
          goto LABEL_238;
        }

        v117 = (v8 + 16 * v87);
        v119 = v117[4];
        v118 = v117[5];
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_241;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_202:
        v125 = v87 - 1;
        if (v87 - 1 >= v85)
        {
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v126 = *a3;
        if (!*a3)
        {
          goto LABEL_254;
        }

        v127 = v8;
        v128 = *(v8 + 32 + 16 * v125);
        v129 = v87;
        v130 = *(v8 + 32 + 16 * v87);
        v8 = *(v8 + 32 + 16 * v87 + 8);
        v131 = (v126 + 16 * v128);
        v132 = (v126 + 16 * v130);
        v133 = (v126 + 16 * v8);
        sub_1A7D25A14(a5, &v173);
        sub_1A7D20858(v131, v132, v133, __dst, a5);
        if (v157)
        {

          goto LABEL_214;
        }

        if (v8 < v128)
        {
          goto LABEL_232;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1A7CF0024(v127);
        }

        if (v125 >= *(v127 + 2))
        {
          goto LABEL_233;
        }

        v134 = &v127[16 * v125];
        *(v134 + 4) = v128;
        *(v134 + 5) = v8;
        v175 = v127;
        sub_1A7CEFF98(v129);
        v8 = v175;
        v85 = *(v175 + 2);
        v7 = v160;
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = v8 + 32 + 16 * v85;
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_234;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_235;
      }

      v99 = (v8 + 16 * v85);
      v101 = *v99;
      v100 = v99[1];
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_237;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_240;
      }

      if (v103 >= v95)
      {
        v121 = (v8 + 32 + 16 * v87);
        v123 = *v121;
        v122 = v121[1];
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_244;
        }

        if (v90 < v124)
        {
          v87 = v85 - 2;
        }

        goto LABEL_202;
      }

      goto LABEL_181;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_216;
    }
  }

  v147 = v9;
  v149 = v8;
  v54 = *a5;
  v161 = v54;
  v162 = *a3;
  v55 = (*a3 + 16 * v7);
  v56 = v9 - v7;
  v152 = v53;
  while (2)
  {
    v159 = v7;
    v57 = (v162 + 16 * v7);
    v58 = *v57;
    v59 = v57[1];
    v153 = v56;
    v154 = v55;
LABEL_93:
    __dst = v58;
    v167 = *(v55 - 2);
    v60 = *(v55 - 1);

    os_unfair_lock_lock(v59 + 10);
    v61 = v59[6];
    if (*(v61 + 16) && (v62 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v63 & 1) != 0))
    {
      sub_1A7B0CD10(*(v61 + 56) + 32 * v62, &v173);
    }

    else
    {
      v173 = 0u;
      v174 = 0u;
    }

    os_unfair_lock_unlock(v59 + 10);
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    if (swift_dynamicCast())
    {
      v64 = v169;
      if (v169 == 1)
      {
        v54 = v161;
        goto LABEL_101;
      }

      sub_1A7CDB7B8(v169);
      sub_1A7CDBC48(v64);
      if (v64)
      {

        sub_1A7CDB84C(v64);
        if (*(*(&v64 + 1) + 16) && (v77 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v78 & 1) != 0))
        {
          sub_1A7B0CD10(*(*(&v64 + 1) + 56) + 32 * v77, &v173);
          sub_1A7B1503C(&v173, &v169);
          sub_1A7CC7FFC(&qword_1EB2B5040);
          v79 = swift_dynamicCast();
          if (v79)
          {
            v172 = v79 ^ 1;
            v54 = v161;
            if (v171 > 0xA || ((1 << v171) & 0x601) == 0)
            {

              v164 = 0;
              v65 = 0;
              goto LABEL_103;
            }

LABEL_155:

            v164 = 0;
            v65 = 1;
            goto LABEL_103;
          }

          v171 = 0;
          v172 = v79 ^ 1;
        }

        else
        {
          v171 = 0;
          v172 = 1;
        }

        v54 = v161;
        goto LABEL_155;
      }

      v54 = v161;
    }

    else
    {
      v169 = 1uLL;
      v170 = 0;
LABEL_101:
      sub_1A7CDBC48(1);
    }

    sub_1A7CDB84C(0);
    v164 = 1;
    v65 = 2;
LABEL_103:
    os_unfair_lock_lock((v60 + 40));
    v66 = *(v60 + 48);
    if (*(v66 + 16) && (v67 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v68 & 1) != 0))
    {
      sub_1A7B0CD10(*(v66 + 56) + 32 * v67, &v173);
    }

    else
    {
      v173 = 0u;
      v174 = 0u;
    }

    os_unfair_lock_unlock((v60 + 40));
    if ((swift_dynamicCast() & 1) == 0)
    {
      v169 = 1uLL;
      v170 = 0;
      goto LABEL_117;
    }

    v69 = v169;
    if (v169 == 1)
    {
LABEL_117:
      sub_1A7CDBC48(1);
LABEL_118:
      sub_1A7CDB84C(0);
      v73 = 1;
      v74 = 2;
      goto LABEL_119;
    }

    sub_1A7CDB7B8(v169);
    sub_1A7CDBC48(v69);
    if (!v69)
    {
      v54 = v161;
      goto LABEL_118;
    }

    sub_1A7CDB84C(v69);
    if (!*(*(&v69 + 1) + 16) || (v70 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v71 & 1) == 0))
    {
      v171 = 0;
      v172 = 1;
      v54 = v161;
LABEL_152:

      v73 = 0;
      v74 = 1;
      goto LABEL_119;
    }

    sub_1A7B0CD10(*(*(&v69 + 1) + 56) + 32 * v70, &v173);
    sub_1A7B1503C(&v173, &v169);
    sub_1A7CC7FFC(&qword_1EB2B5040);
    v72 = swift_dynamicCast();
    v54 = v161;
    if ((v72 & 1) == 0)
    {
      v171 = 0;
      v172 = v72 ^ 1;
      goto LABEL_152;
    }

    v172 = v72 ^ 1;
    if (v171 <= 0xA && ((1 << v171) & 0x601) != 0)
    {
      goto LABEL_152;
    }

    v73 = 0;
    v74 = 0;
LABEL_119:

    if (v54 == 2 || v65 == v54)
    {
      v75 = __dst;
      if (v54 == 2 || v74 == v54)
      {
        if (__dst >= v167)
        {
          goto LABEL_91;
        }

        break;
      }

      goto LABEL_138;
    }

    v75 = __dst;
    if (v74 != v54)
    {
      if ((v164 & 1) == 0)
      {
        if (__dst >= v167)
        {
          v81 = 1;
        }

        else
        {
          v81 = v73;
        }

        if (v81)
        {
          goto LABEL_91;
        }

        break;
      }

LABEL_138:
      if (v75 >= v167)
      {
        v80 = v73;
      }

      else
      {
        v80 = 0;
      }

      if (v80)
      {
        goto LABEL_91;
      }

      break;
    }

    v76 = v164;
    if (__dst >= v167)
    {
      v76 = 0;
    }

    if ((v76 & 1) == 0)
    {
LABEL_91:
      v7 = v159 + 1;
      v55 = v154 + 2;
      v56 = v153 - 1;
      if (v159 + 1 == v152)
      {
        v7 = v152;
        v9 = v147;
        v8 = v149;
        goto LABEL_161;
      }

      continue;
    }

    break;
  }

  if (v162)
  {
    v58 = *v55;
    v59 = v55[1];
    *v55 = *(v55 - 1);
    *(v55 - 1) = v59;
    *(v55 - 2) = v58;
    v55 -= 2;
    if (__CFADD__(v56++, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_254:
  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_255:
  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_256:
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_257:
  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_258:
  sub_1A7D25A4C(a5);
  result = sub_1A7D25A4C(a5);
  __break(1u);
  return result;
}

uint64_t sub_1A7D24FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  if (a3 != a2)
  {
    v37 = *a4;
    v5 = (*a4 + 16 * a3);
    v6 = result - a3;
    v36 = *a5;
LABEL_5:
    v34 = v5;
    v35 = a3;
    v7 = (v37 + 16 * a3);
    v8 = *v7;
    v9 = v7[1];
    v33 = v6;
    while (1)
    {
      v10 = *(v5 - 1);
      v40 = *(v5 - 2);
      v41 = v8;

      os_unfair_lock_lock((v9 + 40));
      v11 = *(v9 + 48);
      if (*(v11 + 16) && (v12 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v13 & 1) != 0))
      {
        sub_1A7B0CD10(*(v11 + 56) + 32 * v12, &v44);
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      os_unfair_lock_unlock((v9 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v14 = v42;
      if (v42 == 1)
      {
        goto LABEL_20;
      }

      sub_1A7CDB7B8(v42);
      sub_1A7CDBC48(v14);
      if (!v14)
      {
        goto LABEL_21;
      }

      sub_1A7CDB84C(v14);
      if (!*(*(&v14 + 1) + 16) || (v15 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v16 & 1) == 0))
      {
        v46 = 0;
        v47 = 1;
LABEL_64:

        v38 = 0;
        v39 = 1;
        goto LABEL_22;
      }

      sub_1A7B0CD10(*(*(&v14 + 1) + 56) + 32 * v15, &v44);
      sub_1A7B1503C(&v44, &v42);
      sub_1A7CC7FFC(&qword_1EB2B5040);
      v17 = swift_dynamicCast();
      if ((v17 & 1) == 0)
      {
        v46 = 0;
        v47 = v17 ^ 1;
        goto LABEL_64;
      }

      v47 = v17 ^ 1;
      if (v46 <= 0xA && ((1 << v46) & 0x601) != 0)
      {
        goto LABEL_64;
      }

      v38 = 0;
      v39 = 0;
LABEL_22:
      os_unfair_lock_lock((v10 + 40));
      v18 = *(v10 + 48);
      if (*(v18 + 16) && (v19 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v20 & 1) != 0))
      {
        sub_1A7B0CD10(*(v18 + 56) + 32 * v19, &v44);
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      os_unfair_lock_unlock((v10 + 40));
      if ((swift_dynamicCast() & 1) == 0)
      {
        v42 = 1uLL;
        v43 = 0;
LABEL_36:
        sub_1A7CDBC48(1);
LABEL_37:
        sub_1A7CDB84C(0);
        v25 = 1;
        v26 = 2;
        goto LABEL_38;
      }

      v21 = v42;
      if (v42 == 1)
      {
        goto LABEL_36;
      }

      sub_1A7CDB7B8(v42);
      sub_1A7CDBC48(v21);
      if (!v21)
      {
        goto LABEL_37;
      }

      sub_1A7CDB84C(v21);
      if (!*(*(&v21 + 1) + 16) || (v22 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v23 & 1) == 0))
      {
        v46 = 0;
        v47 = 1;
LABEL_66:

        v25 = 0;
        v26 = 1;
        goto LABEL_38;
      }

      sub_1A7B0CD10(*(*(&v21 + 1) + 56) + 32 * v22, &v44);
      sub_1A7B1503C(&v44, &v42);
      sub_1A7CC7FFC(&qword_1EB2B5040);
      v24 = swift_dynamicCast();
      if ((v24 & 1) == 0)
      {
        v46 = 0;
        v47 = v24 ^ 1;
        goto LABEL_66;
      }

      v47 = v24 ^ 1;
      if (v46 <= 0xA && ((1 << v46) & 0x601) != 0)
      {
        goto LABEL_66;
      }

      v25 = 0;
      v26 = 0;
LABEL_38:

      if (v36 == 2 || v39 == v36)
      {
        v27 = v41;
        if (v36 == 2 || v26 == v36)
        {
          if (v41 >= v40)
          {
            goto LABEL_4;
          }

          goto LABEL_59;
        }

LABEL_50:
        if (v27 >= v40)
        {
          v29 = v25;
        }

        else
        {
          v29 = 0;
        }

        if (v29)
        {
          goto LABEL_4;
        }

        goto LABEL_59;
      }

      v27 = v41;
      if (v26 == v36)
      {
        v28 = v38;
        if (v41 >= v40)
        {
          v28 = 0;
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_59;
      }

      if (v38)
      {
        goto LABEL_50;
      }

      if (v41 >= v40)
      {
        v30 = 1;
      }

      else
      {
        v30 = v25;
      }

      if (v30)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v34 + 2;
        v6 = v33 - 1;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_59:
      if (!v37)
      {
        __break(1u);
        return result;
      }

      v8 = *v5;
      v9 = v5[1];
      *v5 = *(v5 - 1);
      *(v5 - 1) = v9;
      *(v5 - 2) = v8;
      v5 -= 2;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    v42 = 1uLL;
    v43 = 0;
LABEL_20:
    sub_1A7CDBC48(1);
LABEL_21:
    sub_1A7CDB84C(0);
    v38 = 1;
    v39 = 2;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A7D25530(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = a1[1];
  sub_1A7D25A14(a2, v10);
  sub_1A7D25A14(a2, v10);
  result = sub_1A7E23080();
  if (result >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        sub_1A7D25A14(a2, v10);
        sub_1A7D24FC4(0, v4, 1, a1, a2);
        sub_1A7D25A4C(a2);
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A7CC7FFC(&qword_1EB2B4CA8);
        v8 = sub_1A7E22580();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1A7D25A14(a2, v10);
      sub_1A7D23EAC(v9, v10, a1, v6, a2);
      sub_1A7D25A4C(a2);
      *(v8 + 16) = 0;

LABEL_10:
      sub_1A7D25A4C(a2);
      return sub_1A7D25A4C(a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}