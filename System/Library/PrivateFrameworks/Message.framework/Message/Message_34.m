uint64_t sub_1B0901844(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B090187C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B09018B4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B09018EC(void *a1)
{
  v29 = a1;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v24 = sub_1B0E42E68();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v7 - v27;
  v30 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v7 - v30;
  v32 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v33 = &v7 - v32;
  v37 = v4;
  v34 = [v4 mf_externalReference];
  if (v34)
  {
    v23 = v34;
    v22 = v34;
    sub_1B0E42DE8();
    (*(v25 + 32))(v31, v28, v24);
    (*(v25 + 56))(v31, 0, 1, v24);
    MEMORY[0x1E69E5920](v22);
  }

  else
  {
    (*(v25 + 56))(v31, 1, 1, v24);
  }

  sub_1B07C8260(v31, v33);
  if ((*(v25 + 48))(v33, 1, v24) == 1)
  {
    sub_1B06E3800(v33);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v18 = sub_1B0E42D18();
    v19 = v5;
    (*(v25 + 8))(v33, v24);
    v20 = v18;
    v21 = v19;
  }

  v16 = v21;
  v17 = v20;
  if (v21)
  {
    v14 = v17;
    v15 = v16;
    v9 = v16;
    v8 = v17;
    v35 = v17;
    v36 = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = &v38;
    v38 = v8;
    v39 = v9;
    MEMORY[0x1E69E5928](v29);
    v10 = [v29 messageSize];
    MEMORY[0x1E69E5920](v29);
    v40 = v10;

    MEMORY[0x1E69E5920](v29);
    sub_1B03B1198(v7);
    v11 = v8;
    v12 = v9;
    v13 = v10;
  }

  else
  {
    MEMORY[0x1E69E5920](v29);
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  return v11;
}

id sub_1B0901D3C()
{
  v2 = sub_1B0E44AC8();
  v3 = [v1 initWithString_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

uint64_t sub_1B0901DA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s6LoggerVMa_2();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B0901E30()
{
  v1 = *(_s6LoggerVMa_2() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B08F9D74(v2);
}

void *sub_1B0901E9C(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
  if (!(*(*(v24 - 8) + 48))(a1, 1))
  {
    v1 = a1[1];

    v2 = a1[3];

    v3 = a1[5];

    v4 = a1[7];

    v5 = a1[9];

    v6 = a1[11];

    v21 = type metadata accessor for WatchOSRender.Message();
    v18 = a1 + v21[10];
    v19 = sub_1B0E43108();
    v20 = *(*(v19 - 8) + 8);
    v20(v18);
    (v20)(a1 + v21[11], v19);
    v7 = *(a1 + v21[12] + 8);

    v8 = *(a1 + v21[13]);

    v9 = *(a1 + v21[14]);

    v10 = *(a1 + v21[15]);

    v11 = *(a1 + v21[16] + 8);

    v12 = *(a1 + v21[17] + 8);

    v13 = *(a1 + v21[18] + 8);

    v22 = (a1 + *(v24 + 48));
    if ((v22[2] & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_1B0391D50(v22[1], v22[2]);
    }

    if ((v22[4] & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_1B0391D50(v22[3], v22[4]);
    }

    v14 = v22[6];

    v15 = v22[8];

    v16 = v22[9];
  }

  return a1;
}

char *sub_1B0902120(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v7 = type metadata accessor for WatchOSRender.Message();
  v4 = v7[10];
  v5 = sub_1B0E43108();
  v6 = *(*(v5 - 8) + 32);
  v6(&a2[v4], &a1[v4]);
  (v6)(&a2[v7[11]], &a1[v7[11]], v5);
  *&a2[v7[12]] = *&a1[v7[12]];
  *&a2[v7[13]] = *&a1[v7[13]];
  *&a2[v7[14]] = *&a1[v7[14]];
  *&a2[v7[15]] = *&a1[v7[15]];
  *&a2[v7[16]] = *&a1[v7[16]];
  *&a2[v7[17]] = *&a1[v7[17]];
  *&a2[v7[18]] = *&a1[v7[18]];
  *&a2[v7[19]] = *&a1[v7[19]];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
  memcpy(&a2[*(v2 + 48)], &a1[*(v2 + 48)], 0x50uLL);
  return a2;
}

char *sub_1B09022F0(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 7);

  v5 = *(a1 + 9);

  v6 = *(a1 + 11);

  v21 = type metadata accessor for WatchOSRender.Message();
  v18 = v21[10];
  v19 = sub_1B0E43108();
  v20 = *(*(v19 - 8) + 8);
  v20(&a1[v18]);
  (v20)(&a1[v21[11]], v19);
  v7 = *&a1[v21[12] + 8];

  v8 = *&a1[v21[13]];

  v9 = *&a1[v21[14]];

  v10 = *&a1[v21[15]];

  v11 = *&a1[v21[16] + 8];

  v12 = *&a1[v21[17] + 8];

  v13 = *&a1[v21[18] + 8];

  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610) + 48);
  if ((*&a1[v23 + 16] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*&a1[v23 + 8], *&a1[v23 + 16]);
  }

  if ((*&a1[v23 + 32] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*&a1[v23 + 24], *&a1[v23 + 32]);
  }

  v14 = *&a1[v23 + 48];

  v15 = *&a1[v23 + 64];

  v16 = *&a1[v23 + 72];

  return a1;
}

uint64_t sub_1B0902558(const void *a1)
{
  v12 = *(_s6LoggerVMa_2() - 8);
  v2 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v3 = (v2 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + v3);
  v7 = v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1B08FDB38(a1, v4, v5, v1 + v2, v6, v8, v9);
}

char *sub_1B0902624(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v7;
  *(a2 + 2) = *(a1 + 2);
  v8 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v8;
  *(a2 + 4) = *(a1 + 4);
  v9 = *(a1 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 5) = v9;
  *(a2 + 6) = *(a1 + 6);
  v10 = *(a1 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 7) = v10;
  *(a2 + 8) = *(a1 + 8);
  v11 = *(a1 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 9) = v11;
  *(a2 + 10) = *(a1 + 10);
  v12 = *(a1 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 11) = v12;
  v31 = type metadata accessor for WatchOSRender.Message();
  v13 = v31[10];
  v14 = sub_1B0E43108();
  v15 = *(*(v14 - 8) + 16);
  v15(&a2[v13], &a1[v13]);
  (v15)(&a2[v31[11]], &a1[v31[11]], v14);
  v2 = v31[12];
  v16 = &a2[v2];
  *&a2[v2] = *&a1[v2];
  v17 = *&a1[v2 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v16 + 1) = v17;
  v18 = v31[13];
  v19 = *&a1[v18];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v18] = v19;
  v20 = v31[14];
  v21 = *&a1[v20];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v20] = v21;
  v22 = v31[15];
  v23 = *&a1[v22];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v22] = v23;
  v3 = v31[16];
  v24 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v25 = *&a1[v3 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 1) = v25;
  v4 = v31[17];
  v26 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v27 = *&a1[v4 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v26 + 1) = v27;
  v5 = v31[18];
  v29 = &a2[v5];
  *&a2[v5] = *&a1[v5];
  v30 = *&a1[v5 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v29 + 1) = v30;
  *&a2[v31[19]] = *&a1[v31[19]];
  return result;
}

uint64_t sub_1B090297C()
{
  v1 = *(type metadata accessor for WatchOSRender.Message() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B0901844(v2);
}

uint64_t sub_1B09029E0()
{
  v1 = *(type metadata accessor for WatchOSRender.Message() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B090187C(v2);
}

uint64_t sub_1B0902A44()
{
  v1 = *(type metadata accessor for WatchOSRender.Message() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B09018B4(v2);
}

unint64_t sub_1B0902AA8()
{
  v2 = qword_1EB6E3C90;
  if (!qword_1EB6E3C90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3C90);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFNanoServerMessageContentLoader2()
{
  v2 = qword_1EB6E2F38;
  if (!qword_1EB6E2F38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2F38);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0902BAC()
{
  v2 = _s6LoggerVMa_2();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B0902D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v13 = a1;
  v14 = a2;
  v12 = v3;
  v8 = [v3 displayedAccounts];
  sub_1B08CE3C0();
  sub_1B0902ED4();
  v10[0] = sub_1B0E453F8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F58, &qword_1B0EA0780);
  sub_1B090FD64();
  sub_1B0E44FB8();

  sub_1B039E440(v10);
  MEMORY[0x1E69E5920](v8);
  v9 = v10[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F60, &qword_1B0EA0788);
  v4 = sub_1B07BC130();
  sub_1B039A570(sub_1B090FDEC, 0, v6, MEMORY[0x1E69E73E0], v4, v7, &v11);
  sub_1B06D4E94(&v9);
  return v11;
}

unint64_t sub_1B0902ED4()
{
  v2 = qword_1EB6DACA8;
  if (!qword_1EB6DACA8)
  {
    sub_1B08CE3C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0902F54()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DB9E8);
  __swift_project_value_buffer(v1, qword_1EB6DB9E8);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B0902FF8()
{
  if (qword_1EB6DB9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DB9E8);
}

uint64_t sub_1B0903064()
{
  result = sub_1B0E44838();
  qword_1EB6DBCB0 = result;
  qword_1EB6DBCB8 = v1;
  return result;
}

uint64_t *sub_1B09030A8()
{
  if (qword_1EB6DBCA8 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBCB0;
}

uint64_t sub_1B0903108()
{
  result = sub_1B0E44838();
  qword_1EB6DBD18 = result;
  qword_1EB6DBD20 = v1;
  return result;
}

uint64_t *sub_1B090314C()
{
  if (qword_1EB6DBD10 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DBD18;
}

uint64_t sub_1B0903220()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_suggestion);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09032FC()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_accountID);
  v3 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_accountID + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B09033E0()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexQuery_mailboxURLs);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

id sub_1B09034A8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1B0E44AC8();
  sub_1B0E42E68();
  v3 = sub_1B0E451A8();
  v6 = [v2 initWithSuggestion:a1 accountID:v4 mailboxes:? limit:?];
  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](a1);
  return v6;
}

char *sub_1B0903580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v18 = a1;
  v16 = a2;
  v17 = a3;
  v15 = a4;
  v14 = a5;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR___MFServerMessagesIndexQuery_suggestion = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = &v19[OBJC_IVAR___MFServerMessagesIndexQuery_accountID];
  *v5 = a2;
  *(v5 + 1) = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v19[OBJC_IVAR___MFServerMessagesIndexQuery_mailboxURLs] = a4;
  *&v19[OBJC_IVAR___MFServerMessagesIndexQuery_limit] = a5;
  v13.receiver = v19;
  v13.super_class = MFServerMessagesIndexQuery;
  v12 = objc_msgSendSuper2(&v13, sel_init);
  MEMORY[0x1E69E5928](v12);
  v19 = v12;

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v19);
  return v12;
}

uint64_t sub_1B09038F0()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_mailAccountsProvider);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B0903930()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

  return v2;
}

uint64_t sub_1B09039E4()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_searchRequestQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B0903A2C()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_currentTask);

  return v2;
}

uint64_t sub_1B0903A6C()
{
  v2 = *(v0 + OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest);

  return v2;
}

uint64_t sub_1B0903B0C(uint64_t a1)
{
  v10 = a1;
  v9 = sub_1B0E43108();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9);
  v5 = &v3 - v4;
  (*(v7 + 16))(v1);
  (*(v7 + 40))(v6, v5, v9);
  return (*(v7 + 8))(v10, v9);
}

uint64_t sub_1B0903C20()
{
  v1 = (v0 + *(_s16LastStatsRequestVMa() + 20));
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return result;
}

uint64_t sub_1B0903C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  StatsRequestVMa = _s16LastStatsRequestVMa();
  result = a1;
  v7 = (v4 + *(StatsRequestVMa + 20));
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return result;
}

uint64_t sub_1B0903CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = sub_1B0E43108();
  (*(*(v6 - 8) + 32))(a6, a1);
  result = _s16LastStatsRequestVMa();
  v8 = (a6 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  return result;
}

uint64_t sub_1B0903D5C(uint64_t a1)
{
  v40 = a1;
  v18 = "Fatal error";
  v19 = "Message/MFServerMessagesIndexer.swift";
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v46 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
  v20 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v12 - v20;
  v39 = 0;
  v21 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v28 = &v12 - v21;
  v22 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v27 = &v12 - v22;
  v23 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v26 = &v12 - v23;
  v50 = v2;
  v51 = v1;
  v30 = v1;
  v29 = OBJC_IVAR___MFServerMessagesIndexer_searchRequestQueue;
  sub_1B06CCC58();
  v34 = 1;
  v24 = sub_1B0E44838();
  v25 = v3;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v28);
  *&v30[v29] = sub_1B0E45A08();
  v33 = v51;
  v32 = OBJC_IVAR___MFServerMessagesIndexer_currentTask;
  v31 = &v49;
  v49 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB8, &unk_1B0EA0798);
  v5 = sub_1B06C70B0(v31, v4);
  *&v33[v32] = v5;
  v38 = v51;
  v37 = OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest;
  StatsRequestVMa = _s16LastStatsRequestVMa();
  (*(*(StatsRequestVMa - 8) + 56))(v35, v34);
  v7 = sub_1B06C70B0(v35, v36);
  *&v38[v37] = v7;
  v41 = v51;
  swift_unknownObjectRetain();
  *&v41[OBJC_IVAR___MFServerMessagesIndexer_mailAccountsProvider] = v40;
  v42 = v51;
  type metadata accessor for SearchSession();
  v8 = SearchSession.__allocating_init()();
  v43 = 0;
  v44 = v8;
  v45 = 0;
  v14 = &OBJC_PROTOCOL___MFDataConsumer;
  *&v42[OBJC_IVAR___MFServerMessagesIndexer_searchSession] = v8;
  v47.receiver = v51;
  v47.super_class = MFServerMessagesIndexer;
  v15 = objc_msgSendSuper2(&v47, sel_init);
  MEMORY[0x1E69E5928](v15);
  v51 = v15;
  v16 = *&v15[v14[55].inst_meths];

  SearchSession.activate()();
  v17 = v9;
  if (v9)
  {
    v13 = v17;

    v11 = v13;
    v46 = v13;
    sub_1B0E44838();
    result = sub_1B0E465B8();
    __break(1u);
  }

  else
  {

    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v51);
    return v15;
  }

  return result;
}

uint64_t sub_1B0904340()
{
  v13 = sub_1B0910FA0;
  v32 = 0;
  v14 = 0;
  v18 = sub_1B0E44238();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = &v4 - v5;
  v22 = sub_1B0E44288();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v6 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v21 = &v4 - v6;
  v10 = sub_1B0E44248();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v11 = &v4 - v7;
  v32 = v0;
  sub_1B06CCC58();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E7F98], v10);
  v24 = sub_1B0E45A28();
  (*(v8 + 8))(v11, v10);
  MEMORY[0x1E69E5928](v12);
  v1 = swift_allocObject();
  v2 = v13;
  *(v1 + 16) = v12;
  v30 = v2;
  v31 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = 0;
  v28 = sub_1B038C908;
  v29 = &block_descriptor_13;
  v23 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v14, v21, v17, v23);
  (*(v15 + 8))(v17, v18);
  (*(v19 + 8))(v21, v22);
  _Block_release(v23);

  return MEMORY[0x1E69E5920](v24);
}

uint64_t sub_1B09046C0()
{
  sub_1B0910FA8();
  v0 = sub_1B09030A8();
  v2 = *v0;
  v3 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B090B480();
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresExternalPower_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresProtectionClass_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresUserInactivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setPriority_];
  MEMORY[0x1E69E5920](v5);
  [v5 setInterval_];
  MEMORY[0x1E69E5928](v5);
  [v5 setExpectedDuration_];
  MEMORY[0x1E69E5920](v5);
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  sub_1B090BB7C(v5, sub_1B091100C, v4);

  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B0904908()
{
  sub_1B0910FA8();
  v0 = sub_1B090314C();
  v2 = *v0;
  v3 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B090B480();
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresNetworkConnectivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresInexpensiveNetworkConnectivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresExternalPower_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresProtectionClass_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setRequiresUserInactivity_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v5);
  [v5 setPriority_];
  MEMORY[0x1E69E5920](v5);
  [v5 setInterval_];
  MEMORY[0x1E69E5928](v5);
  [v5 setExpectedDuration_];
  MEMORY[0x1E69E5920](v5);
  v4 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  sub_1B090BB7C(v5, sub_1B0911014, v4);

  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1B0904C1C(void *a1, void (*a2)(void), uint64_t a3)
{
  v78 = a1;
  v77 = a2;
  v76 = a3;
  v69 = sub_1B0911050;
  v70 = sub_1B091101C;
  v71 = sub_1B039BCF8;
  v72 = sub_1B0398F5C;
  v73 = sub_1B0398F5C;
  v74 = sub_1B039BCEC;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v75 = 0;
  v87 = 0uLL;
  v86 = 0;
  v79 = sub_1B0E439A8();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v78);
  v83 = v36 - v82;
  v96 = v5;
  v94 = v6;
  v95 = v7;
  v93 = v3;
  v84 = [v5 accountID];
  v8._countAndFlagsBits = sub_1B0E44AD8();
  v85 = AccountID.init(rawValue:)(v8);
  MEMORY[0x1E69E5920](v84);
  if (*(&v85 + 1))
  {
    v67 = v85;
    v64 = *(&v85 + 1);
    v65 = v85;
    v87 = v85;
    v63 = [v68 mailAccountsProvider];
    ObjectType = swift_getObjectType();
    v10 = sub_1B0902D08(v65, v64, ObjectType);
    v66 = v10;
    if (v10)
    {
      v62 = v66;
      v61 = v66;
      v86 = v66;
      swift_unknownObjectRelease();
      v60 = [v78 mailboxURLs];
      sub_1B0E42E68();
      v59 = sub_1B0E451B8();
      v58 = [v68 searchRequestQueue];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1E69E5928](v68);
      MEMORY[0x1E69E5928](v78);

      v11 = swift_allocObject();
      v12 = v68;
      v13 = v78;
      v14 = v77;
      v15 = v76;
      v16 = v69;
      v17 = v58;
      v18 = v64;
      v19 = v11;
      v20 = v59;
      v57 = v19;
      v19[2] = v65;
      v19[3] = v18;
      v19[4] = v12;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v15;
      sub_1B075168C(v20, v17, v16, v19);

      MEMORY[0x1E69E5920](v58);

      MEMORY[0x1E69E5920](v60);
      MEMORY[0x1E69E5920](v61);
    }

    swift_unknownObjectRelease();
  }

  v22 = v83;
  v23 = sub_1B0902FF8();
  (*(v80 + 16))(v22, v23, v79);
  MEMORY[0x1E69E5928](v78);
  v46 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = v78;
  v55 = sub_1B0E43988();
  v56 = sub_1B0E458E8();
  v44 = 17;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v45 = 32;
  v24 = swift_allocObject();
  v25 = v47;
  v48 = v24;
  *(v24 + 16) = v70;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v48;
  v52 = v26;
  *(v26 + 16) = v71;
  *(v26 + 24) = v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v51 = sub_1B0E46A48();
  v53 = v28;

  v29 = v49;
  v30 = v53;
  *v53 = v72;
  v30[1] = v29;

  v31 = v50;
  v32 = v53;
  v53[2] = v73;
  v32[3] = v31;

  v33 = v52;
  v34 = v53;
  v53[4] = v74;
  v34[5] = v33;
  sub_1B0394964();

  if (os_log_type_enabled(v55, v56))
  {
    v35 = v75;
    v37 = sub_1B0E45D78();
    v36[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v38 = sub_1B03949A8(0);
    v39 = sub_1B03949A8(1);
    v40 = &v92;
    v92 = v37;
    v41 = &v91;
    v91 = v38;
    v42 = &v90;
    v90 = v39;
    sub_1B0394A48(2, &v92);
    sub_1B0394A48(1, v40);
    v88 = v72;
    v89 = v49;
    sub_1B03949FC(&v88, v40, v41, v42);
    v43 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v88 = v73;
      v89 = v50;
      sub_1B03949FC(&v88, &v92, &v91, &v90);
      v36[6] = 0;
      v88 = v74;
      v89 = v52;
      sub_1B03949FC(&v88, &v92, &v91, &v90);
      _os_log_impl(&dword_1B0389000, v55, v56, "Could not find account %s", v37, 0xCu);
      sub_1B03998A8(v38);
      sub_1B03998A8(v39);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v55);
  (*(v80 + 8))(v83, v79);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
  v36[1] = 0;
  v36[4] = sub_1B0E46A48();
  v36[2] = sub_1B0E42E68();
  v36[3] = type metadata accessor for MFUIDSet();
  sub_1B07BAD2C();
  v36[5] = sub_1B0E445D8();
  v77();
}

uint64_t sub_1B0905670(void *a1)
{
  v2 = [a1 accountID];
  v3 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B09056CC(uint64_t a1, Swift::Int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B09057C8(a1, a2, a3);
  v18 = v7;
  v16 = *(a4 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

  sub_1B0905EB0(a5, v17, v18, a6, a7);
}

uint64_t sub_1B09057C8(uint64_t a1, Swift::Int a2, void *a3)
{
  v40 = a1;
  v29 = a2;
  v30._rawValue = a3;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v41 = __b;
  v43 = 40;
  memset(__b, 0, sizeof(__b));
  isa = 0;
  v47 = 0;
  memset(&v45[3], 0, 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v23 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v10[-v23];
  v36 = 0;
  v39 = sub_1B0E42E68();
  v25 = *(v39 - 8);
  v26 = v39 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v28 = &v10[-v27];
  v54 = &v10[-v27];
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC8, &qword_1B0EA07B0) - 8) + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v10[-v31];
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v10[-v34];
  v51 = v5;
  v49 = v6;
  v50 = v7;
  v37 = &type metadata for Mailbox;
  v52 = sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FD0, &qword_1B0EA07B8);
  v38 = sub_1B0E46A48();
  sub_1B091106C();
  v53 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07BAD2C();
  v42 = &v55;
  sub_1B0E445C8();
  memcpy(v41, v42, v43);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FD8, &qword_1B0EA07C0);
    sub_1B0E446D8();
    sub_1B09110E4(v33, v35);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE0, &qword_1B0EA07C8);
    if ((*(*(v22 - 8) + 48))(v35, 1) == 1)
    {
      break;
    }

    v9 = &v35[*(v22 + 48)];
    v18.underlying.super.isa = *v9;
    v11 = *(v9 + 2);
    (*(v25 + 32))(v28);
    isa = v18.underlying.super.isa;
    v47 = v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = Mailbox.init(name:accountID:)(v18, v29, v30);
    v16 = v56.suggestion.underlying.super.isa;
    limit = v56.limit;
    rawValue = v56.mailboxes._rawValue;
    *&v45[3] = v56;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = v45;
    v45[0] = v16;
    v45[1] = limit;
    v45[2] = rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE8, &qword_1B0EA07D0);
    v14 = &v52;
    sub_1B0E452E8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    (*(v25 + 16))(v24, v28, v39);
    (*(v25 + 56))(v24, 0, 1, v39);
    v15 = v44;
    v44[0] = v16;
    v44[1] = limit;
    v44[2] = rawValue;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FF0, &qword_1B0EA07D8);
    sub_1B0E44788();

    (*(v25 + 8))(v28, v39);
  }

  sub_1B06B91B0(__b);
  v19 = &v52;
  v21 = v52;
  v20 = v53;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B07F22C0(v19);
  return v21;
}

uint64_t sub_1B0905EB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a1;
  v69._rawValue = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v76 = sub_1B070B550;
  v78 = sub_1B06BA324;
  v82 = sub_1B0911244;
  v86 = sub_1B039BCF8;
  v88 = sub_1B0398F5C;
  v90 = sub_1B0398F5C;
  v92 = sub_1B03993BC;
  v94 = sub_1B0398F5C;
  v96 = sub_1B0398F5C;
  v99 = sub_1B039BCEC;
  v59 = sub_1B0911250;
  v118 = 0;
  v116 = 0;
  v117 = 0;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  memset(&v112, 0, sizeof(v112));
  v110 = 0;
  v111 = 0;
  v60 = 0;
  v73 = sub_1B0E439A8();
  v71 = *(v73 - 8);
  v72 = v73 - 8;
  v64 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v66);
  v6 = v51 - v64;
  v65 = v51 - v64;
  v118 = v7;
  v116 = v8;
  v117 = v9;
  v114 = v10;
  v115 = v11;
  v113 = v12;
  v67.underlying.super.isa = Suggestion.init(_:)([v7 suggestion]).underlying.super.isa;
  v68 = [v66 limit];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v119 = SearchQuery.init(suggestion:limit:mailboxes:)(v67, v68, v69);
  v70 = v119;
  v112 = v119;
  v74 = SearchQuery.id.getter(v119.suggestion.underlying.super.isa);
  v75 = v13;
  v110 = v74;
  v111 = v13;
  v14 = sub_1B0902FF8();
  (*(v71 + 16))(v6, v14, v73);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v83 = 32;
  v84 = 7;
  v15 = swift_allocObject();
  v16 = v75;
  v77 = v15;
  *(v15 + 16) = v74;
  *(v15 + 24) = v16;

  v17 = swift_allocObject();
  v18 = v77;
  v85 = v17;
  *(v17 + 16) = v76;
  *(v17 + 24) = v18;

  v103 = sub_1B0E43988();
  v104 = sub_1B0E45908();
  v80 = 17;
  v89 = swift_allocObject();
  *(v89 + 16) = 112;
  v91 = swift_allocObject();
  v81 = 8;
  *(v91 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = 1752392040;
  v19 = swift_allocObject();
  v20 = v79;
  v93 = v19;
  *(v19 + 16) = v78;
  *(v19 + 24) = v20;
  v95 = swift_allocObject();
  *(v95 + 16) = 37;
  v97 = swift_allocObject();
  *(v97 + 16) = v81;
  v21 = swift_allocObject();
  v22 = v85;
  v87 = v21;
  *(v21 + 16) = v82;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v87;
  v100 = v23;
  *(v23 + 16) = v86;
  *(v23 + 24) = v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v98 = sub_1B0E46A48();
  v101 = v25;

  v26 = v89;
  v27 = v101;
  *v101 = v88;
  v27[1] = v26;

  v28 = v91;
  v29 = v101;
  v101[2] = v90;
  v29[3] = v28;

  v30 = v93;
  v31 = v101;
  v101[4] = v92;
  v31[5] = v30;

  v32 = v95;
  v33 = v101;
  v101[6] = v94;
  v33[7] = v32;

  v34 = v97;
  v35 = v101;
  v101[8] = v96;
  v35[9] = v34;

  v36 = v100;
  v37 = v101;
  v101[10] = v99;
  v37[11] = v36;
  sub_1B0394964();

  if (os_log_type_enabled(v103, v104))
  {
    v38 = v60;
    v52 = sub_1B0E45D78();
    v51[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v53 = sub_1B03949A8(0);
    v54 = sub_1B03949A8(1);
    v55 = &v109;
    v109 = v52;
    v56 = &v108;
    v108 = v53;
    v57 = &v107;
    v107 = v54;
    sub_1B0394A48(3, &v109);
    sub_1B0394A48(2, v55);
    v105 = v88;
    v106 = v89;
    sub_1B03949FC(&v105, v55, v56, v57);
    v58 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v105 = v90;
      v106 = v91;
      sub_1B03949FC(&v105, &v109, &v108, &v107);
      v51[5] = 0;
      v105 = v92;
      v106 = v93;
      sub_1B03949FC(&v105, &v109, &v108, &v107);
      v51[4] = 0;
      v105 = v94;
      v106 = v95;
      sub_1B03949FC(&v105, &v109, &v108, &v107);
      v51[3] = 0;
      v105 = v96;
      v106 = v97;
      sub_1B03949FC(&v105, &v109, &v108, &v107);
      v51[2] = 0;
      v105 = v99;
      v106 = v100;
      sub_1B03949FC(&v105, &v109, &v108, &v107);
      _os_log_impl(&dword_1B0389000, v103, v104, "[%{sensitive,mask.hash}s] Sending search query.", v52, 0x16u);
      sub_1B03998A8(v53);
      sub_1B03998A8(v54);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v103);
  (*(v71 + 8))(v65, v73);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39 = swift_allocObject();
  v40 = v62;
  v41 = v63;
  rawValue = v69._rawValue;
  v43 = v61;
  limit = v70.limit;
  v45 = v59;
  v46 = v75;
  v47 = v70.mailboxes._rawValue;
  v48 = v39;
  isa = v70.suggestion.underlying.super.isa;
  v51[1] = v48;
  v48[2] = v74;
  v48[3] = v46;
  v48[4] = v40;
  v48[5] = v41;
  v48[6] = rawValue;
  v48[7] = v43;
  SearchSession.perform(query:_:)(isa, limit, v47, v45, v48);

  MEMORY[0x1E69E5920](v70.suggestion.underlying.super.isa);
}

uint64_t sub_1B0906B98(uint64_t a1, uint64_t a2)
{
  sub_1B0E42E68();
  type metadata accessor for MFUIDSet();
  sub_1B07BAD2C();
  v4 = sub_1B0E44598();
  (*(a2 + 16))();
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B0906C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *(v4 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

  v7 = sub_1B0E46A48();
  v10 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v10 = a1;
  v10[1] = a2;
  sub_1B0394964();
  (MEMORY[0x1E69E5928])();

  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = a3;
  v14[4] = a4;
  SearchSession.lookUp(identifiers:_:)(v7, sub_1B0911274, v14);
}

uint64_t sub_1B0906D7C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
  sub_1B0911AF0();
  sub_1B0E45018();
  MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B0906EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v46 = a1;
  v42 = a2;
  v44 = a3;
  v36 = a4;
  v39 = a5;
  v37 = a6;
  v38 = a7;
  v35 = sub_1B0912198;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v39);
  v41 = v26 - v40;
  v58 = v8;
  v59 = v9;
  v60 = v10;
  v57 = v11;
  v56 = v12;
  v54 = v13;
  v55 = v14;
  v45 = [v12 mailAccountsProvider];
  ObjectType = swift_getObjectType();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = sub_1B0902D08(v42, v44, ObjectType);

  v53 = v49;
  swift_unknownObjectRelease();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = MailboxName.init(_:)(v46);
  v48 = v15;
  v51 = v47;
  v52 = v15;
  MEMORY[0x1E69E5928](v49);
  if (v49)
  {
    v34 = v49;
    v31 = v49;
    v32 = sub_1B0751598();
    MEMORY[0x1E69E5920](v31);
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v30 = v33;
  if (v33)
  {
    v29 = v30;
    v28 = v30;
    v50 = v30;
    v27 = [v39 searchRequestQueue];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v17 = swift_allocObject();
    v18 = v37;
    v19 = v38;
    v20 = v48;
    v21 = v35;
    v22 = v27;
    v23 = v17;
    v24 = v47;
    v26[1] = v23;
    v23[2] = v36;
    v23[3] = v18;
    v23[4] = v19;
    sub_1B0A482AC(v24, v20, v22, v21, v23);

    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v28);
  }

  else
  {

    v16 = sub_1B0E42E68();
    (*(*(v16 - 8) + 56))(v41, 1);
    v37(v41, 0);
    sub_1B06E3800(v41);
  }

  return MEMORY[0x1E69E5920](v49);
}

uint64_t sub_1B090727C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
  sub_1B09121A8();
  sub_1B0E45728();
  if (v10)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = v9;
    v6 = 0;
  }

  if (v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  a3(a1, v4);
}

uint64_t sub_1B0907524(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  v9 = a2;
  v10 = a3;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v5 - v12;
  sub_1B071C180(v3, &v5 - v12);
  v14 = sub_1B0E42E68();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_1B0E42D58();
    (*(v15 + 8))(v13, v14);
    v8 = v7;
  }

  v6 = v8;
  (*(v10 + 16))();
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B0907698(void (*a1)(uint64_t, void), uint64_t a2)
{
  v92 = a1;
  v91 = a2;
  v102 = sub_1B091128C;
  v66 = sub_1B09114AC;
  v67 = sub_1B0911694;
  v68 = sub_1B03FB3E4;
  v69 = sub_1B039BCF8;
  v70 = sub_1B0398F5C;
  v71 = sub_1B0398F5C;
  v72 = sub_1B039BCEC;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  v87 = 0;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v77 = &v35 - v76;
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v80 = *(StatsRequestVMa - 8);
  v79 = StatsRequestVMa - 8;
  v81 = v80;
  v82 = *(v80 + 64);
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](StatsRequestVMa);
  v84 = &v35 - v83;
  v85 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v83);
  v86 = &v35 - v85;
  v120 = &v35 - v85;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
  v88 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v35 - v88;
  v90 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v35 - v90;
  v119 = &v35 - v90;
  v93 = sub_1B0E43108();
  v95 = *(v93 - 8);
  v94 = v93 - 8;
  v96 = v95;
  v97 = *(v95 + 64);
  v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92);
  v99 = &v35 - v98;
  v100 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v35 - v100;
  v118 = &v35 - v100;
  v116 = v7;
  v117 = v8;
  v115 = v101;
  sub_1B0E430E8();
  v105 = *(v101 + OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest);

  v109 = v103;
  sub_1B03E1B3C(v102, v108, v105, v106, v106);
  v107 = 0;

  sub_1B09112B4(v104, v89);
  if ((*(v80 + 48))(v89, 1, StatsRequestVMa) == 1)
  {
    sub_1B0911408(v89);
    v40 = *(v101 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

    MEMORY[0x1E69E5928](v101);
    v36 = v96;
    (*(v95 + 16))(v99, v103, v93);

    v37 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v38 = (v37 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = v37;
    v28 = v99;
    v29 = v95;
    v30 = v93;
    v39 = v26;
    *(v26 + 16) = v101;
    (*(v29 + 32))(v26 + v27, v28, v30);
    v31 = v91;
    v32 = v39;
    v33 = v66;
    v34 = (v39 + v38);
    *v34 = v92;
    v34[1] = v31;
    SearchSession.getIndexingStatistics(_:)(v33, v32);

    sub_1B0911408(v104);
    return (*(v95 + 8))(v103, v93);
  }

  else
  {
    v9 = v77;
    sub_1B0911564(v89, v86);
    v10 = sub_1B0902FF8();
    (*(v74 + 16))(v9, v10, v73);
    sub_1B09115FC(v86, v84);
    v51 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v55 = 7;
    v52 = swift_allocObject();
    sub_1B0911564(v84, v52 + v51);

    v54 = 32;
    v11 = swift_allocObject();
    v12 = v52;
    v56 = v11;
    *(v11 + 16) = v67;
    *(v11 + 24) = v12;

    v64 = sub_1B0E43988();
    v65 = sub_1B0E45908();
    v53 = 17;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v13 = swift_allocObject();
    v14 = v56;
    v57 = v13;
    *(v13 + 16) = v68;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v57;
    v61 = v15;
    *(v15 + 16) = v69;
    *(v15 + 24) = v16;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v60 = sub_1B0E46A48();
    v62 = v17;

    v18 = v58;
    v19 = v62;
    *v62 = v70;
    v19[1] = v18;

    v20 = v59;
    v21 = v62;
    v62[2] = v71;
    v21[3] = v20;

    v22 = v61;
    v23 = v62;
    v62[4] = v72;
    v23[5] = v22;
    sub_1B0394964();

    if (os_log_type_enabled(v64, v65))
    {
      v24 = v107;
      v44 = sub_1B0E45D78();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v45 = sub_1B03949A8(0);
      v46 = sub_1B03949A8(1);
      v47 = &v114;
      v114 = v44;
      v48 = &v113;
      v113 = v45;
      v49 = &v112;
      v112 = v46;
      sub_1B0394A48(2, &v114);
      sub_1B0394A48(1, v47);
      v110 = v70;
      v111 = v58;
      sub_1B03949FC(&v110, v47, v48, v49);
      v50 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v110 = v71;
        v111 = v59;
        sub_1B03949FC(&v110, &v114, &v113, &v112);
        v42 = 0;
        v110 = v72;
        v111 = v61;
        sub_1B03949FC(&v110, &v114, &v113, &v112);
        _os_log_impl(&dword_1B0389000, v64, v65, "Returning cached indexing statistics from %s", v44, 0xCu);
        sub_1B03998A8(v45);
        sub_1B03998A8(v46);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v64);
    (*(v74 + 8))(v77, v73);

    v41 = sub_1B0908464(*(v86 + *(StatsRequestVMa + 20)), *(v86 + *(StatsRequestVMa + 20) + 8), *(v86 + *(StatsRequestVMa + 20) + 16), *(v86 + *(StatsRequestVMa + 20) + 24));
    v92(v41, 0);

    sub_1B0911788(v86);
    sub_1B0911408(v104);
    return (*(v95 + 8))(v103, v93);
  }
}

uint64_t sub_1B0908464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FF8, &unk_1B0EA07E0);
  sub_1B0E46A48();
  v11 = v4;
  sub_1B06BD0C8(MEMORY[0x1E699AA30], v4);
  sub_1B039A494();
  v11[1] = sub_1B041A060(a1);
  sub_1B06BD0C8(MEMORY[0x1E699AAE8], v11 + 2);
  v11[3] = sub_1B041A060(a2);
  sub_1B06BD0C8(MEMORY[0x1E699AAF0], v11 + 4);
  v5 = IndexingStatistics.messagesNotIndexed.getter(a1, a2);
  v11[5] = sub_1B041A060(v5);
  sub_1B06BD0C8(MEMORY[0x1E699AAF8], v11 + 6);
  v11[7] = sub_1B041A060(a3);
  sub_1B06BD0C8(MEMORY[0x1E699AA80], v11 + 8);
  v11[9] = sub_1B041A060(a4);
  sub_1B06BD0C8(MEMORY[0x1E699AA28], v11 + 10);
  v11[11] = sub_1B0E45CC8();
  sub_1B06BD0C8(MEMORY[0x1E699AAD8], v11 + 12);
  v11[13] = sub_1B0E45CC8();
  sub_1B06BD0C8(MEMORY[0x1E699AAE0], v11 + 14);
  v11[15] = sub_1B0E45CC8();
  sub_1B0394964();
  type metadata accessor for EMPersistenceStatisticsKey();
  sub_1B0694A78();
  return sub_1B0E445D8();
}

uint64_t sub_1B090865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v20 = a1;
  v19 = a2;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0.0;
  v17 = 0;
  v12 = sub_1B0E43108();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v10 - v15;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v26 = &v10 - v18;
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v23 = *(StatsRequestVMa - 8);
  v24 = StatsRequestVMa - 8;
  v21 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v10 - v21;
  v30 = &v10 - v21;
  v29 = v3;
  v28 = v4;
  sub_1B09112B4(v3, v5);
  if ((*(v23 + 48))(v26, 1, StatsRequestVMa) == 1)
  {
    sub_1B0911408(v26);
    return (*(v23 + 56))(v11, 1, 1, StatsRequestVMa);
  }

  else
  {
    v7 = sub_1B0911564(v26, v22);
    (*(v13 + 16))(v16, v22, v12, v7);
    sub_1B0E43048();
    v10 = v8;
    (*(v13 + 8))(v16, v12);
    v27 = v10;
    if (v10 <= 300.0)
    {
      v9 = sub_1B09115FC(v22, v11);
      (*(v23 + 56))(v11, 0, 1, StatsRequestVMa, v9);
    }

    else
    {
      (*(v23 + 56))(v11, 1, 1, StatsRequestVMa, 300.0);
    }

    return sub_1B0911788(v22);
  }
}

uint64_t sub_1B0908A08(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v30 = a5;
  v31 = a4;
  v32 = a3;
  v33 = a2;
  v37 = 0;
  v36 = 0u;
  v35 = 0u;
  v34 = 0;
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v38 = a4;
  v39 = a5;
  v5 = *a1;
  v6 = a1[1];
  v45 = *(a1 + 32);
  v44 = v6;
  v43 = v5;
  if (v45)
  {
    v12 = v43;

    v13 = v43;
    v31(0, v43);

    return v34;
  }

  else
  {
    v7 = v34;
    v25 = *(&v43 + 1);
    v22 = v43;
    v19 = v43;
    v23 = *(&v44 + 1);
    v26 = v44;
    v20 = v44;
    v35 = v43;
    v36 = v44;
    v28 = *(v33 + OBJC_IVAR___MFServerMessagesIndexer_lastStatsRequest);
    v21 = v28;

    v24 = &v16;
    MEMORY[0x1EEE9AC00](&v16);
    v27 = v15;
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v25;
    v15[5] = v26;
    v15[6] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
    sub_1B03E1B3C(sub_1B0911EB4, v27, v28, v11, MEMORY[0x1E69E7CA8] + 8);
    v29 = v7;

    v17 = sub_1B0908464(v19, *(&v19 + 1), v20, *(&v20 + 1));
    v31(v17, 0);

    return v29;
  }
}

char *sub_1B0908CF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v15[2] = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v29 = 0;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v23 = 0;
  v16 = sub_1B0E43108();
  v17 = *(v16 - 8);
  v15[1] = v16 - 8;
  v15[0] = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v22 = v15 - v15[0];
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v22);
  v24 = v15 - v8;
  v29 = v25;
  v28 = v9;
  *&v26 = v18;
  *(&v26 + 1) = v10;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  (*(v17 + 16))(v7);
  sub_1B0903CB4(v22, v18, v19, v20, v21, v24);
  StatsRequestVMa = _s16LastStatsRequestVMa();
  (*(*(StatsRequestVMa - 8) + 56))(v24, 0, 1);
  return sub_1B0911EEC(v24, v25);
}

uint64_t sub_1B0908F90(uint64_t a1, void *a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    type metadata accessor for EMPersistenceStatisticsKey();
    sub_1B039A494();
    sub_1B0694A78();
    v7 = sub_1B0E44598();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v3 = a2;
  if (a2)
  {
    v5 = sub_1B0E42CC8();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, v8);
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v8);
}

uint64_t sub_1B09090D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](v4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  v10[5] = v4;
  sub_1B09096A4(a1, sub_1B09117EC, v10);
}

uint64_t sub_1B09091CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B07BA724(a1);
  if (a1)
  {
    v9 = *(a7 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

    v10 = sub_1B091260C(sub_1B09093D4, 0, &type metadata for UID);

    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    SearchSession.excludeIndexedUIDs(in:from:completion:)(a1, a2, a3, v10, sub_1B0911EA8, v8);
  }

  else
  {

    a4(a6);
  }
}

uint64_t sub_1B09093D4@<X0>(_DWORD *a1@<X8>)
{
  result = UID.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t sub_1B0909410(uint64_t a1, void (*a2)(void))
{

  type metadata accessor for MFUIDSet();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B09094B0(a1);
  a2();
  MEMORY[0x1E69E5920](v5);
}

id sub_1B09094B0(uint64_t a1)
{
  v10 = a1;
  v17 = 0;
  v16 = sub_1B090FE84;
  v24 = 0;
  v22 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v8 - v11;
  v13 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v8 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v15 = &v8 - v14;
  v24 = &v8 - v14;
  v22 = v5;
  v21 = v5;
  v6 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v6);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
  sub_1B0911800();
  sub_1B0E44FD8();
  sub_1B03D08AC(v15, v12);
  v9 = sub_1B09127A4(v12);
  MEMORY[0x1E69E5928](v9);
  v23 = v9;
  sub_1B03D09B8(v15);

  MEMORY[0x1E69E5920](v23);
  return v9;
}

uint64_t sub_1B09096A4(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v93 = a1;
  v110 = a2;
  v108 = a3;
  v4 = v3;
  v5 = v93;
  v109 = v4;
  v94 = sub_1B090B1AC;
  v95 = sub_1B09118EC;
  v96 = sub_1B0911888;
  v97 = sub_1B039BCF8;
  v98 = sub_1B0398F5C;
  v99 = sub_1B0398F5C;
  v100 = sub_1B039BCEC;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v134 = 0;
  v101 = 0;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v102 = 0;
  v103 = sub_1B0E439A8();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v107 = v42 - v106;
  v111 = sub_1B0E42E68();
  v113 = *(v111 - 8);
  v112 = v111 - 8;
  v114 = v113;
  v115 = *(v113 + 64);
  v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v117 = v42 - v116;
  v137 = v5;
  v135 = v6;
  v136 = v7;
  v134 = v8;
  v119 = objc_opt_self();
  sub_1B0E42D18();
  v118 = v9;
  v121 = sub_1B0E44AC8();

  v120 = *MEMORY[0x1E699A698];
  MEMORY[0x1E69E5928](v120);
  v122 = [v119 accountIDFromMailboxURLString:v121 urlScheme:v120];
  MEMORY[0x1E69E5920](v120);
  MEMORY[0x1E69E5920](v121);
  if (v122)
  {
    v92 = v122;
    v87 = v122;
    v88 = sub_1B0E44AD8();
    v89 = v10;
    MEMORY[0x1E69E5920](v87);
    v90 = v88;
    v91 = v89;
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  v11 = v101;
  v131[0] = v90;
  v131[1] = v91;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  result = sub_1B039A570(v94, 0, v12, MEMORY[0x1E69E73E0], &type metadata for AccountID, v85, &v132);
  v86 = v11;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_1B03B1198(v131);
    v83 = v132;
    v84 = v133;
    if (v133)
    {
      v81 = v83;
      v82 = v84;
      v78 = v84;
      v79 = v83;
      v124 = v83;
      v125 = v84;
      v77 = [v109 mailAccountsProvider];
      ObjectType = swift_getObjectType();
      v15 = sub_1B0902D08(v79, v78, ObjectType);
      v80 = v15;
      if (v15)
      {
        v76 = v80;
        v75 = v80;
        v123 = v80;
        swift_unknownObjectRelease();
        v65 = sub_1B0E46A48();
        v68 = v114;
        v67 = *(v113 + 16);
        v66 = v113 + 16;
        v67(v16, v93, v111);
        v17 = v65;
        sub_1B0394964();
        v74 = v17;
        v73 = [v109 searchRequestQueue];
        v67(v117, v93, v111);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v69 = (*(v68 + 80) + 16) & ~*(v68 + 80);
        v70 = (v69 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        (*(v113 + 32))(v72 + v69, v117, v111);
        v18 = v108;
        v19 = v71;
        v20 = v79;
        v21 = v95;
        v22 = v72;
        v23 = v73;
        v24 = v78;
        v25 = v74;
        v26 = (v72 + v70);
        *v26 = v110;
        v26[1] = v18;
        v27 = (v22 + v19);
        *v27 = v20;
        v27[1] = v24;
        sub_1B075168C(v25, v23, v21, v22);

        MEMORY[0x1E69E5920](v73);

        MEMORY[0x1E69E5920](v75);
      }

      swift_unknownObjectRelease();
    }

    v28 = v107;
    v29 = sub_1B0902FF8();
    (*(v104 + 16))(v28, v29, v103);
    v50 = v114;
    (*(v113 + 16))(v117, v93, v111);
    v51 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v54 = 7;
    v55 = swift_allocObject();
    (*(v113 + 32))(v55 + v51, v117, v111);
    v63 = sub_1B0E43988();
    v64 = sub_1B0E458E8();
    v52 = 17;
    v57 = swift_allocObject();
    *(v57 + 16) = 34;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v53 = 32;
    v30 = swift_allocObject();
    v31 = v55;
    v56 = v30;
    *(v30 + 16) = v96;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v56;
    v60 = v32;
    *(v32 + 16) = v97;
    *(v32 + 24) = v33;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v59 = sub_1B0E46A48();
    v61 = v34;

    v35 = v57;
    v36 = v61;
    *v61 = v98;
    v36[1] = v35;

    v37 = v58;
    v38 = v61;
    v61[2] = v99;
    v38[3] = v37;

    v39 = v60;
    v40 = v61;
    v61[4] = v100;
    v40[5] = v39;
    sub_1B0394964();

    if (os_log_type_enabled(v63, v64))
    {
      v41 = v86;
      v43 = sub_1B0E45D78();
      v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v44 = sub_1B03949A8(0);
      v45 = sub_1B03949A8(1);
      v46 = &v130;
      v130 = v43;
      v47 = &v129;
      v129 = v44;
      v48 = &v128;
      v128 = v45;
      sub_1B0394A48(2, &v130);
      sub_1B0394A48(1, v46);
      v126 = v98;
      v127 = v57;
      sub_1B03949FC(&v126, v46, v47, v48);
      v49 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v126 = v99;
        v127 = v58;
        sub_1B03949FC(&v126, &v130, &v129, &v128);
        v42[0] = 0;
        v126 = v100;
        v127 = v60;
        sub_1B03949FC(&v126, &v130, &v129, &v128);
        _os_log_impl(&dword_1B0389000, v63, v64, "Could not find account for mailbox '%{public}s'", v43, 0xCu);
        sub_1B03998A8(v44);
        sub_1B03998A8(v45);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v63);
    (*(v104 + 8))(v107, v103);

    v110(0, 0);
  }

  return result;
}

uint64_t sub_1B090A68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5928](a2);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v5;
  v12[5] = a2;
  v12[6] = a3;
  sub_1B09096A4(a1, sub_1B09119BC, v12);
}

uint64_t sub_1B090A798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v32 = a4;
  v33 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  sub_1B07BA724(a1);
  if (a1)
  {
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v13 = *(a6 + OBJC_IVAR___MFServerMessagesIndexer_searchSession);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3098, &qword_1B0EA08F8);
    sub_1B03F1A20(sub_1B090AA44, 0, v8, MEMORY[0x1E69E73E0], &type metadata for UID, v14, &v24);
    v10 = v24;
    v11 = v25;

    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    LODWORD(v23) = v10;
    BYTE4(v23) = v11 & 1;
    SearchSession.getIndexingDiagnostics(in:before:limit:completion:)(a1, a2, a3, v23, a8, sub_1B0911DD4, v12);
  }

  else
  {

    sub_1B039A494();
    v15 = sub_1B0E46A48();
    sub_1B0E46A48();
    a4(v15);
  }
}

uint64_t sub_1B090AA44@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = UID.init(rawValue:)([*a1 unsignedIntValue]);
  *a2 = result;
  return result;
}

uint64_t sub_1B090AA90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v22 = a1;
  v23 = a2;
  v20 = a3;
  v21 = a4;
  sub_1B0911DE0(a1);
  if (a1)
  {
    v18 = a1;
    v19 = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30A0, &qword_1B0EA0900);
    v7 = sub_1B039A494();
    v9 = sub_1B0911E20();
    v10 = sub_1B039CA88(sub_1B090AD28, 0, v6, v7, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v8);
    sub_1B039E440(&v17);
    v16 = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = a2;
    v5 = sub_1B039CA88(sub_1B090AD28, 0, v6, v7, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v8);
    sub_1B039E440(&v15);

    (a3)(v10, v5);
  }

  else
  {

    sub_1B039A494();
    v11 = sub_1B0E46A48();
    sub_1B0E46A48();
    a3(v11);
  }
}

id sub_1B090AD28@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1B039A494();
  result = sub_1B074A93C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1B090AF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B039A494();
  v6 = sub_1B0E451A8();
  v5 = sub_1B0E451A8();
  (*(a3 + 16))(a3, v6);
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B090B084()
{
  v6 = objc_opt_self();
  _swift_stdlib_has_malloc_size();
  v7 = sub_1B0E42DF8();
  v8 = v0;
  if (v0)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = sub_1B0E44838();
    v10 = v1;
  }

  v3 = sub_1B0E44AC8();

  v4 = [v6 partiallyRedactedStringForString_];
  MEMORY[0x1E69E5920](v3);
  v5 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1B090B210(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, Swift::Int a5, void *a6)
{
  v25 = a1;
  v21 = a2;
  v23 = a3;
  v18 = a4;
  v19 = a5;
  v20._rawValue = a6;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v26 = sub_1B0E42E68();
  v24 = *(v26 - 8);
  v22 = v26 - 8;
  v6 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v26);
  v27 = &v14 - v8;
  v39 = v25;
  v38 = v9;
  v36 = v23;
  v37 = v10;
  v34 = v11;
  v35 = v12;
  (*(v24 + 16))(v7);
  sub_1B07BAD2C();
  sub_1B0E44778();
  v28 = v32;
  v29 = v33;
  if (v32)
  {
    v16 = v28;
    v17 = v29;
    v15.underlying.super.isa = v28;
    v30 = v28;
    v31 = v29;
    (*(v24 + 8))(v27, v26);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = Mailbox.init(name:accountID:)(v15, v19, v20);
    v23();
    sub_1B07BA794(v14.suggestion.underlying.super.isa);
  }

  else
  {
    (*(v24 + 8))(v27, v26);

    (v23)(0, 0);
  }
}

uint64_t sub_1B090B4C8(void *a1, uint64_t a2)
{
  v52 = a2;
  v51 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v66 = 0;
  v65 = 0;
  v49 = 0;
  v61 = 0;
  v53 = sub_1B0E439A8();
  v54 = *(v53 - 8);
  v55 = v54;
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v4;
  v57 = v5 + 16;
  v65 = v5 + 16;
  v58 = &v70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v59 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v48 = v59;
    v41 = v59;
    v61 = v59;
    v40 = *&v59[OBJC_IVAR___MFServerMessagesIndexer_searchSession];

    v8 = v51;
    v9 = swift_allocObject();
    v39 = v9;
    *(v9 + 16) = v51;
    SearchSession.sendAnalytics(completion:)(sub_1B09122A8, v9);

    v42 = v49;
  }

  else
  {
    v6 = v56;
    v7 = sub_1B0902FF8();
    (*(v55 + 16))(v6, v7, v53);
    v46 = sub_1B0E43988();
    v43 = v46;
    v45 = sub_1B0E458E8();
    v44 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v47 = sub_1B0E46A48();
    if (os_log_type_enabled(v46, v45))
    {
      v10 = v49;
      v30 = sub_1B0E45D78();
      v26 = v30;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v28 = 0;
      v31 = sub_1B03949A8(0);
      v29 = v31;
      v32 = sub_1B03949A8(v28);
      v63 = v30;
      v68 = v31;
      v67 = v32;
      v33 = 0;
      v34 = &v63;
      sub_1B0394A48(0, &v63);
      sub_1B0394A48(v33, v34);
      v62 = v47;
      v35 = &v17;
      MEMORY[0x1EEE9AC00](&v17);
      v36 = &v17 - 6;
      *(&v17 - 4) = v11;
      *(&v17 - 3) = &v68;
      *(&v17 - 2) = &v67;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v38 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v43, v44, "BGSystemTask started, but MFServerMessagesIndexer is gone.", v26, 2u);
        v24 = 0;
        sub_1B03998A8(v29);
        sub_1B03998A8(v32);
        sub_1B0E45D58();

        v25 = v38;
      }
    }

    else
    {

      v25 = v49;
    }

    v21 = v25;

    (*(v55 + 8))(v56, v53);
    v69 = 0;
    sub_1B041A044();
    v64[1] = v12;
    sub_1B0912230();
    sub_1B0E453D8();
    v64[0] = v69;
    v23 = [v51 setTaskExpiredWithRetryAfter:v64 error:?];
    v22 = v64[0];
    v13 = v64[0];
    v14 = v69;
    v69 = v22;

    if (v23)
    {
      v20 = v21;
    }

    else
    {
      v17 = v69;
      v18 = sub_1B0E42CD8();

      swift_willThrow();
      v19 = 0;

      v20 = v19;
    }

    v42 = v20;
  }

  result = v42;
  v16 = __OFSUB__(*MEMORY[0x1E69E9840], v71);
  return result;
}

void sub_1B090BB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v252 = a1;
  v237 = a2;
  v236 = a3;
  v254 = sub_1B09119DC;
  v258 = sub_1B039BCF8;
  v260 = sub_1B0398F5C;
  v262 = sub_1B0398F5C;
  v265 = sub_1B039BCEC;
  v211 = sub_1B09119E4;
  v212 = "Fatal error";
  v213 = "Message/MFServerMessagesIndexer.swift";
  v214 = sub_1B09119DC;
  v215 = sub_1B039BCF8;
  v216 = sub_1B0398F5C;
  v217 = sub_1B0398F5C;
  v218 = sub_1B039BCEC;
  v219 = sub_1B09119DC;
  v220 = sub_1B039BCF8;
  v221 = sub_1B0911A54;
  v222 = sub_1B0911A5C;
  v223 = sub_1B070B324;
  v224 = sub_1B0398F5C;
  v225 = sub_1B0398F5C;
  v226 = sub_1B039BCEC;
  v227 = sub_1B0398F5C;
  v228 = sub_1B0398F5C;
  v229 = sub_1B070B4B4;
  v230 = sub_1B09119DC;
  v231 = sub_1B039BCF8;
  v232 = sub_1B0398F5C;
  v233 = sub_1B0398F5C;
  v234 = sub_1B039BCEC;
  v309[1] = *MEMORY[0x1E69E9840];
  v299 = 0;
  v297 = 0;
  v298 = 0;
  v296 = 0;
  v288 = 0;
  v235 = 0;
  v280 = 0;
  v249 = sub_1B0E439A8();
  v247 = *(v249 - 8);
  v248 = v249 - 8;
  v243 = v247[8];
  v238 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v252);
  v239 = v97 - v238;
  v240 = v238;
  MEMORY[0x1EEE9AC00](v3);
  v241 = v97 - v240;
  v242 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v244 = v97 - v242;
  v245 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v6 = v97 - v245;
  v246 = v97 - v245;
  v299 = v7;
  v297 = v8;
  v298 = v9;
  v296 = v10;
  v11 = sub_1B0902FF8();
  v250 = v247[2];
  v251 = v247 + 2;
  v250(v6, v11, v249);
  MEMORY[0x1E69E5928](v252);
  v256 = 7;
  v257 = swift_allocObject();
  *(v257 + 16) = v252;
  v269 = sub_1B0E43988();
  v270 = sub_1B0E45908();
  v253 = 17;
  v261 = swift_allocObject();
  *(v261 + 16) = 32;
  v263 = swift_allocObject();
  *(v263 + 16) = 8;
  v255 = 32;
  v12 = swift_allocObject();
  v13 = v257;
  v259 = v12;
  *(v12 + 16) = v254;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v259;
  v266 = v14;
  *(v14 + 16) = v258;
  *(v14 + 24) = v15;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v264 = sub_1B0E46A48();
  v267 = v16;

  v17 = v261;
  v18 = v267;
  *v267 = v260;
  v18[1] = v17;

  v19 = v263;
  v20 = v267;
  v267[2] = v262;
  v20[3] = v19;

  v21 = v266;
  v22 = v267;
  v267[4] = v265;
  v22[5] = v21;
  sub_1B0394964();

  if (os_log_type_enabled(v269, v270))
  {
    v23 = v235;
    v204 = sub_1B0E45D78();
    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v205 = sub_1B03949A8(0);
    v206 = sub_1B03949A8(1);
    v207 = &v273;
    v273 = v204;
    v208 = &v301;
    v301 = v205;
    v209 = &v300;
    v300 = v206;
    sub_1B0394A48(2, &v273);
    sub_1B0394A48(1, v207);
    v271 = v260;
    v272 = v261;
    sub_1B03949FC(&v271, v207, v208, v209);
    v210 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v271 = v262;
      v272 = v263;
      sub_1B03949FC(&v271, &v273, &v301, &v300);
      v201 = 0;
      v271 = v265;
      v272 = v266;
      sub_1B03949FC(&v271, &v273, &v301, &v300);
      v200 = 0;
      _os_log_impl(&dword_1B0389000, v269, v270, "Registering BGSystemTask for SearchIndexer: %s", v204, 0xCu);
      sub_1B03998A8(v205);
      sub_1B03998A8(v206);
      sub_1B0E45D58();

      v202 = v200;
    }
  }

  else
  {
    v24 = v235;

    v202 = v24;
  }

  v191 = v202;
  MEMORY[0x1E69E5920](v269);
  v192 = v247[1];
  v193 = v247 + 1;
  v192(v246, v249);
  v198 = [objc_opt_self() sharedScheduler];
  v195 = [v252 identifier];
  sub_1B0E44AD8();
  v194 = v25;
  v197 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](v195);

  v26 = swift_allocObject();
  v27 = v236;
  v28 = v211;
  *(v26 + 16) = v237;
  *(v26 + 24) = v27;
  v294 = v28;
  v295 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v290 = 1107296256;
  v291 = 0;
  v292 = sub_1B090E4EC;
  v293 = &block_descriptor_158;
  v196 = _Block_copy(&aBlock);

  v199 = [v198 registerForTaskWithIdentifier:v197 usingQueue:0 launchHandler:v196];
  _Block_release(v196);
  MEMORY[0x1E69E5920](v197);
  MEMORY[0x1E69E5920](v198);
  v288 = v199 & 1;
  if (v199)
  {
    v189 = [objc_opt_self() sharedScheduler];
    v187 = [v252 identifier];
    sub_1B0E44AD8();
    v186 = v29;
    v188 = sub_1B0E44AC8();

    MEMORY[0x1E69E5920](v187);
    v190 = [v189 taskRequestForIdentifier_];
    MEMORY[0x1E69E5920](v188);
    MEMORY[0x1E69E5920](v189);
    v309[0] = v190;
    v185 = v190 == 0;
    v184 = v185;
    sub_1B06D4E94(v309);
    if (v184)
    {
      v306 = 0;
      v182 = [objc_opt_self() sharedScheduler];
      v281 = v306;
      v183 = [v182 submitTaskRequest:v252 error:&v281];
      v181 = v281;
      MEMORY[0x1E69E5928](v281);
      v30 = v306;
      v306 = v181;
      MEMORY[0x1E69E5920](v30);
      MEMORY[0x1E69E5920](v182);
      if (v183)
      {
        v31 = v244;
        v32 = sub_1B0902FF8();
        v250(v31, v32, v249);
        MEMORY[0x1E69E5928](v252);
        v171 = 7;
        v172 = swift_allocObject();
        *(v172 + 16) = v252;
        v179 = sub_1B0E43988();
        v180 = sub_1B0E45908();
        v169 = 17;
        v174 = swift_allocObject();
        *(v174 + 16) = 32;
        v175 = swift_allocObject();
        *(v175 + 16) = 8;
        v170 = 32;
        v33 = swift_allocObject();
        v34 = v172;
        v173 = v33;
        *(v33 + 16) = v230;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v173;
        v177 = v35;
        *(v35 + 16) = v231;
        *(v35 + 24) = v36;
        v176 = sub_1B0E46A48();
        v178 = v37;

        v38 = v174;
        v39 = v178;
        *v178 = v232;
        v39[1] = v38;

        v40 = v175;
        v41 = v178;
        v178[2] = v233;
        v41[3] = v40;

        v42 = v177;
        v43 = v178;
        v178[4] = v234;
        v43[5] = v42;
        sub_1B0394964();

        if (os_log_type_enabled(v179, v180))
        {
          v44 = v191;
          v162 = sub_1B0E45D78();
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v163 = sub_1B03949A8(0);
          v164 = sub_1B03949A8(1);
          v165 = &v276;
          v276 = v162;
          v166 = &v303;
          v303 = v163;
          v167 = &v302;
          v302 = v164;
          sub_1B0394A48(2, &v276);
          sub_1B0394A48(1, v165);
          v274 = v232;
          v275 = v174;
          sub_1B03949FC(&v274, v165, v166, v167);
          v168 = v44;
          if (v44)
          {

            __break(1u);
          }

          else
          {
            v274 = v233;
            v275 = v175;
            sub_1B03949FC(&v274, &v276, &v303, &v302);
            v160 = 0;
            v274 = v234;
            v275 = v177;
            sub_1B03949FC(&v274, &v276, &v303, &v302);
            _os_log_impl(&dword_1B0389000, v179, v180, "Submitted new task request for SearchIndexer: %s", v162, 0xCu);
            sub_1B03998A8(v163);
            sub_1B03998A8(v164);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v179);
        v192(v244, v249);
      }

      else
      {
        v107 = v306;
        v110 = sub_1B0E42CD8();
        MEMORY[0x1E69E5920](v107);
        swift_willThrow();
        v67 = v239;
        v108 = 0;
        v68 = v110;
        v280 = v110;
        v69 = sub_1B0902FF8();
        v250(v67, v69, v249);
        MEMORY[0x1E69E5928](v252);
        v109 = 24;
        v117 = 7;
        v70 = swift_allocObject();
        v71 = v110;
        v111 = v70;
        *(v70 + 16) = v252;
        v72 = v71;
        v115 = swift_allocObject();
        *(v115 + 16) = v110;
        sub_1B07575C4();

        v128 = sub_1B0E43988();
        v129 = sub_1B0E458F8();
        v113 = 17;
        v120 = swift_allocObject();
        *(v120 + 16) = 32;
        v121 = swift_allocObject();
        v114 = 8;
        *(v121 + 16) = 8;
        v116 = 32;
        v73 = swift_allocObject();
        v74 = v111;
        v112 = v73;
        *(v73 + 16) = v219;
        *(v73 + 24) = v74;
        v75 = swift_allocObject();
        v76 = v112;
        v122 = v75;
        *(v75 + 16) = v220;
        *(v75 + 24) = v76;
        v123 = swift_allocObject();
        *(v123 + 16) = 64;
        v124 = swift_allocObject();
        *(v124 + 16) = v114;
        v77 = swift_allocObject();
        v78 = v115;
        v118 = v77;
        *(v77 + 16) = v221;
        *(v77 + 24) = v78;
        v79 = swift_allocObject();
        v80 = v118;
        v119 = v79;
        *(v79 + 16) = v222;
        *(v79 + 24) = v80;
        v81 = swift_allocObject();
        v82 = v119;
        v126 = v81;
        *(v81 + 16) = v223;
        *(v81 + 24) = v82;
        v125 = sub_1B0E46A48();
        v127 = v83;

        v84 = v120;
        v85 = v127;
        *v127 = v224;
        v85[1] = v84;

        v86 = v121;
        v87 = v127;
        v127[2] = v225;
        v87[3] = v86;

        v88 = v122;
        v89 = v127;
        v127[4] = v226;
        v89[5] = v88;

        v90 = v123;
        v91 = v127;
        v127[6] = v227;
        v91[7] = v90;

        v92 = v124;
        v93 = v127;
        v127[8] = v228;
        v93[9] = v92;

        v94 = v126;
        v95 = v127;
        v127[10] = v229;
        v95[11] = v94;
        sub_1B0394964();

        if (os_log_type_enabled(v128, v129))
        {
          v96 = v108;
          v99 = sub_1B0E45D78();
          v97[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v98 = 1;
          v100 = sub_1B03949A8(1);
          v101 = sub_1B03949A8(v98);
          v103 = &v279;
          v279 = v99;
          v104 = &v305;
          v305 = v100;
          v105 = &v304;
          v304 = v101;
          v102 = 2;
          sub_1B0394A48(2, &v279);
          sub_1B0394A48(v102, v103);
          v277 = v224;
          v278 = v120;
          sub_1B03949FC(&v277, v103, v104, v105);
          v106 = v96;
          if (v96)
          {

            __break(1u);
          }

          else
          {
            v277 = v225;
            v278 = v121;
            sub_1B03949FC(&v277, &v279, &v305, &v304);
            v97[4] = 0;
            v277 = v226;
            v278 = v122;
            sub_1B03949FC(&v277, &v279, &v305, &v304);
            v97[3] = 0;
            v277 = v227;
            v278 = v123;
            sub_1B03949FC(&v277, &v279, &v305, &v304);
            v97[2] = 0;
            v277 = v228;
            v278 = v124;
            sub_1B03949FC(&v277, &v279, &v305, &v304);
            v97[1] = 0;
            v277 = v229;
            v278 = v126;
            sub_1B03949FC(&v277, &v279, &v305, &v304);
            _os_log_impl(&dword_1B0389000, v128, v129, "Could not submit new BGSystemTask for %s: %@", v99, 0x16u);
            v97[0] = 1;
            sub_1B03998A8(v100);
            sub_1B03998A8(v101);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v128);
        v192(v239, v249);
      }
    }

    else
    {
      v45 = v241;
      v46 = sub_1B0902FF8();
      v250(v45, v46, v249);
      MEMORY[0x1E69E5928](v252);
      v150 = 7;
      v151 = swift_allocObject();
      *(v151 + 16) = v252;
      v158 = sub_1B0E43988();
      v159 = sub_1B0E45908();
      v148 = 17;
      v153 = swift_allocObject();
      *(v153 + 16) = 32;
      v154 = swift_allocObject();
      *(v154 + 16) = 8;
      v149 = 32;
      v47 = swift_allocObject();
      v48 = v151;
      v152 = v47;
      *(v47 + 16) = v214;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v152;
      v156 = v49;
      *(v49 + 16) = v215;
      *(v49 + 24) = v50;
      v155 = sub_1B0E46A48();
      v157 = v51;

      v52 = v153;
      v53 = v157;
      *v157 = v216;
      v53[1] = v52;

      v54 = v154;
      v55 = v157;
      v157[2] = v217;
      v55[3] = v54;

      v56 = v156;
      v57 = v157;
      v157[4] = v218;
      v57[5] = v56;
      sub_1B0394964();

      if (os_log_type_enabled(v158, v159))
      {
        v58 = v191;
        v141 = sub_1B0E45D78();
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v142 = sub_1B03949A8(0);
        v143 = sub_1B03949A8(1);
        v144 = &v284;
        v284 = v141;
        v145 = &v308;
        v308 = v142;
        v146 = &v307;
        v307 = v143;
        sub_1B0394A48(2, &v284);
        sub_1B0394A48(1, v144);
        v282 = v216;
        v283 = v153;
        sub_1B03949FC(&v282, v144, v145, v146);
        v147 = v58;
        if (v58)
        {

          __break(1u);
        }

        else
        {
          v282 = v217;
          v283 = v154;
          sub_1B03949FC(&v282, &v284, &v308, &v307);
          v139 = 0;
          v282 = v218;
          v283 = v156;
          sub_1B03949FC(&v282, &v284, &v308, &v307);
          _os_log_impl(&dword_1B0389000, v158, v159, "Task already exists for SearchIndexer: %s", v141, 0xCu);
          sub_1B03998A8(v142);
          sub_1B03998A8(v143);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v158);
      v192(v241, v249);
    }
  }

  else
  {
    MEMORY[0x1E69E5928](v252);
    v130 = 36;
    v59 = sub_1B0E46A28();
    v136 = &v286;
    v286 = v59;
    v287 = v60;
    v134 = 1;
    v61 = sub_1B0E44838();
    v131 = v62;
    MEMORY[0x1B2728B30](v61);

    v133 = [v252 identifier];
    v63 = sub_1B0E44AD8();
    v132 = v285;
    v285[0] = v63;
    v285[1] = v64;
    sub_1B0E46A08();
    sub_1B03B1198(v132);
    MEMORY[0x1E69E5920](v133);
    v65 = sub_1B0E44838();
    v135 = v66;
    MEMORY[0x1B2728B30](v65);

    v138 = v286;
    v137 = v287;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v136);
    sub_1B0E44C88();
    sub_1B0E465B8();
    __break(1u);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t sub_1B090D734(void *a1, uint64_t a2)
{
  v83 = a2;
  v82 = a1;
  v111 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v103 = 0;
  v102 = 0;
  v80 = 0;
  v98 = 0;
  v84 = sub_1B0E439A8();
  v85 = *(v84 - 8);
  v86 = v85;
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  v88 = &v21 - v89;
  MEMORY[0x1EEE9AC00](v2);
  v90 = &v21 - v89;
  v103 = v3;
  v91 = v4 + 16;
  v102 = v4 + 16;
  v92 = &v110;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v93 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v79 = v93;
    v73 = v93;
    v98 = v93;
    if ([objc_opt_self() preferenceEnabled_])
    {
      v7 = v88;
      v8 = sub_1B0902FF8();
      (*(v86 + 16))(v7, v8, v84);
      v70 = sub_1B0E43988();
      v67 = v70;
      v69 = sub_1B0E458E8();
      v68 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v71 = sub_1B0E46A48();
      if (os_log_type_enabled(v70, v69))
      {
        v9 = v80;
        v58 = sub_1B0E45D78();
        v54 = v58;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v56 = 0;
        v59 = sub_1B03949A8(0);
        v57 = v59;
        v60 = sub_1B03949A8(v56);
        v96 = v58;
        v105 = v59;
        v104 = v60;
        v61 = 0;
        v62 = &v96;
        sub_1B0394A48(0, &v96);
        sub_1B0394A48(v61, v62);
        v95 = v71;
        v63 = &v21;
        MEMORY[0x1EEE9AC00](&v21);
        v64 = &v21 - 6;
        *(&v21 - 4) = v10;
        *(&v21 - 3) = &v105;
        *(&v21 - 2) = &v104;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
        sub_1B06D3AB0();
        sub_1B0E45018();
        v66 = v9;
        if (v9)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1B0389000, v67, v68, "WARNING: BGSystemTask started, but indexing is disabled using internal settings", v54, 2u);
          v52 = 0;
          sub_1B03998A8(v57);
          sub_1B03998A8(v60);
          sub_1B0E45D58();

          v53 = v66;
        }
      }

      else
      {

        v53 = v80;
      }

      v49 = v53;

      (*(v86 + 8))(v88, v84);
      v106 = 0;
      sub_1B041A044();
      v97[1] = v11;
      sub_1B0912230();
      sub_1B0E453D8();
      v97[0] = v106;
      v51 = [v82 setTaskExpiredWithRetryAfter:v97 error:?];
      v50 = v97[0];
      v12 = v97[0];
      v13 = v106;
      v106 = v50;

      if (v51)
      {
        v48 = v49;
      }

      else
      {
        v22 = v106;
        v23 = sub_1B0E42CD8();

        swift_willThrow();
        v24 = 0;

        v48 = v24;
      }

      v47 = v48;

      v72 = v47;
    }

    else
    {
      sub_1B090E29C(v82);

      v72 = v80;
    }
  }

  else
  {
    v5 = v90;
    v6 = sub_1B0902FF8();
    (*(v86 + 16))(v5, v6, v84);
    v77 = sub_1B0E43988();
    v74 = v77;
    v76 = sub_1B0E458E8();
    v75 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v78 = sub_1B0E46A48();
    if (os_log_type_enabled(v77, v76))
    {
      v14 = v80;
      v38 = sub_1B0E45D78();
      v34 = v38;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v36 = 0;
      v39 = sub_1B03949A8(0);
      v37 = v39;
      v40 = sub_1B03949A8(v36);
      v100 = v38;
      v108 = v39;
      v107 = v40;
      v41 = 0;
      v42 = &v100;
      sub_1B0394A48(0, &v100);
      sub_1B0394A48(v41, v42);
      v99 = v78;
      v43 = &v21;
      MEMORY[0x1EEE9AC00](&v21);
      v44 = &v21 - 6;
      *(&v21 - 4) = v15;
      *(&v21 - 3) = &v108;
      *(&v21 - 2) = &v107;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v46 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v74, v75, "BGSystemTask started, but MFServerMessagesIndexer is gone.", v34, 2u);
        v32 = 0;
        sub_1B03998A8(v37);
        sub_1B03998A8(v40);
        sub_1B0E45D58();

        v33 = v46;
      }
    }

    else
    {

      v33 = v80;
    }

    v29 = v33;

    (*(v86 + 8))(v90, v84);
    v109 = 0;
    sub_1B041A044();
    v101[1] = v16;
    sub_1B0912230();
    sub_1B0E453D8();
    v101[0] = v109;
    v31 = [v82 setTaskExpiredWithRetryAfter:v101 error:?];
    v30 = v101[0];
    v17 = v101[0];
    v18 = v109;
    v109 = v30;

    if (v31)
    {
      v28 = v29;
    }

    else
    {
      v25 = v109;
      v26 = sub_1B0E42CD8();

      swift_willThrow();
      v27 = 0;

      v28 = v27;
    }

    v72 = v28;
  }

  result = v72;
  v20 = __OFSUB__(*MEMORY[0x1E69E9840], v111);
  return result;
}

uint64_t sub_1B090E29C(uint64_t a1)
{
  v10 = 0;
  v13 = a1;
  v12 = v1;
  v6 = *(v1 + OBJC_IVAR___MFServerMessagesIndexer_currentTask);

  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](v1);
  v8 = a1;
  v9 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB8, &unk_1B0EA0798);
  sub_1B03E1B3C(sub_1B0911A68, v7, v6, v2, v2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v1);

  v4 = v11;
  v10 = v11;

  if (v4)
  {
    sub_1B0A2781C();
  }
}

uint64_t sub_1B090E420(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B090E47C(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);
}

uint64_t sub_1B090E4EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

void *sub_1B090E58C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v110 = a3;
  v112 = a2;
  v111 = a1;
  v109 = a4;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v127 = 0;
  v126 = 0;
  v113 = sub_1B0E439A8();
  v114 = *(v113 - 8);
  v115 = v114;
  v116 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = &v38 - v118;
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v38 - v118;
  v136 = v5;
  v135 = v6;
  v134 = v7;
  v121 = *v5;
  v120 = v121;

  if (v121)
  {
    v107 = v120;
    v8 = v119;
    v100 = v120;
    v126 = v120;
    v9 = sub_1B0902FF8();
    (*(v115 + 16))(v8, v9, v113);
    v104 = sub_1B0E43988();
    v101 = v104;
    v103 = sub_1B0E458E8();
    v102 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v105 = sub_1B0E46A48();
    if (os_log_type_enabled(v104, v103))
    {
      v98 = v108;
      v90 = sub_1B0E45D78();
      v86 = v90;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v88 = 0;
      v91 = sub_1B03949A8(0);
      v89 = v91;
      v92 = sub_1B03949A8(v88);
      v125 = v90;
      v124 = v91;
      v123 = v92;
      v93 = 0;
      v94 = &v125;
      sub_1B0394A48(0, &v125);
      sub_1B0394A48(v93, v94);
      v122 = v105;
      v95 = &v38;
      MEMORY[0x1EEE9AC00](&v38);
      v96 = &v38 - 6;
      *(&v38 - 4) = v11;
      *(&v38 - 3) = &v124;
      *(&v38 - 2) = &v123;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      v12 = v98;
      sub_1B0E45018();
      v99 = v12;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v101, v102, "Existing SearchIndexerBackgroundTask while trying to start a new one.", v86, 2u);
        v84 = 0;
        sub_1B03998A8(v89);
        sub_1B03998A8(v92);
        sub_1B0E45D58();

        v85 = v99;
      }
    }

    else
    {

      v85 = v108;
    }

    v83 = v85;

    (*(v115 + 8))(v119, v113);
    sub_1B0A27744();
    v13 = *v111;
    *v111 = 0;

    v106 = v83;
  }

  else
  {
    v106 = v108;
  }

  v79 = v106;
  type metadata accessor for SearchIndexerBackgroundTask();
  v14 = v112;
  v15 = v110;
  v16 = [v110 mailAccountsProvider];
  v17 = v79;
  v18 = sub_1B0A27778(v112, v110, &off_1F26E1420, v16);
  v80 = v17;
  v81 = v18;
  v82 = v17;
  if (v17)
  {
    v21 = v117;
    v57 = v82;
    v56 = 0;
    v22 = v82;
    v133 = v57;
    v23 = sub_1B0902FF8();
    (*(v115 + 16))(v21, v23, v113);
    v24 = v57;
    v64 = 7;
    v65 = swift_allocObject();
    *(v65 + 16) = v57;
    v75 = sub_1B0E43988();
    v58 = v75;
    v74 = sub_1B0E458E8();
    v59 = v74;
    v60 = 17;
    v68 = swift_allocObject();
    v61 = v68;
    *(v68 + 16) = 64;
    v69 = swift_allocObject();
    v62 = v69;
    *(v69 + 16) = 8;
    v63 = 32;
    v25 = swift_allocObject();
    v26 = v65;
    v66 = v25;
    *(v25 + 16) = sub_1B07135E4;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v66;
    v72 = v27;
    v67 = v27;
    *(v27 + 16) = sub_1B070B324;
    *(v27 + 24) = v28;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v70 = sub_1B0E46A48();
    v71 = v29;

    v30 = v68;
    v31 = v71;
    *v71 = sub_1B0398F5C;
    v31[1] = v30;

    v32 = v69;
    v33 = v71;
    v71[2] = sub_1B0398F5C;
    v33[3] = v32;

    v34 = v71;
    v35 = v72;
    v71[4] = sub_1B070B4B4;
    v34[5] = v35;
    sub_1B0394964();

    if (os_log_type_enabled(v75, v74))
    {
      v53 = v56;
      v48 = sub_1B0E45D78();
      v45 = v48;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v51 = 1;
      v49 = sub_1B03949A8(1);
      v47 = v49;
      v50 = sub_1B03949A8(0);
      v132 = v48;
      v131 = v49;
      v130 = v50;
      v52 = &v132;
      sub_1B0394A48(2, &v132);
      sub_1B0394A48(v51, v52);
      v36 = v53;
      v128 = sub_1B0398F5C;
      v129 = v61;
      sub_1B03949FC(&v128, v52, &v131, &v130);
      v54 = v36;
      v55 = v36;
      if (v36)
      {
        v43 = 0;

        __break(1u);
      }

      else
      {
        v128 = sub_1B0398F5C;
        v129 = v62;
        sub_1B03949FC(&v128, &v132, &v131, &v130);
        v41 = 0;
        v42 = 0;
        v128 = sub_1B070B4B4;
        v129 = v67;
        sub_1B03949FC(&v128, &v132, &v131, &v130);
        v39 = 0;
        v40 = 0;
        _os_log_impl(&dword_1B0389000, v58, v59, "Failed to create SearchIndexerBackgroundTask: %@.", v45, 0xCu);
        sub_1B03998A8(v47);
        sub_1B03998A8(v50);
        sub_1B0E45D58();

        v44 = v39;
      }
    }

    else
    {

      v44 = v56;
    }

    v38 = v44;

    (*(v115 + 8))(v117, v113);
    v37 = v57;
    *v109 = 0;

    return v38;
  }

  else
  {
    v78 = v81;
    v127 = v81;
    if (*v111)
    {
      v77 = *v111;

      sub_1B0A27744();
    }

    v19 = *v111;
    *v111 = v78;

    *v109 = v78;

    result = v80;
    v76 = v80;
  }

  return result;
}

uint64_t sub_1B090F294(uint64_t a1)
{
  v38 = a1;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v33 = sub_1B0E439A8();
  v34 = *(v33 - 8);
  v35 = v34;
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v4;
  v47 = v1;
  v39 = *(v1 + OBJC_IVAR___MFServerMessagesIndexer_currentTask);
  v37 = v39;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB8, &unk_1B0EA0798);
  sub_1B03E1B3C(sub_1B0911A94, v38, v39, v5, MEMORY[0x1E69E6370]);
  v40 = 0;

  v45 = v46;
  if (v46)
  {
    return v40;
  }

  v6 = v36;
  v7 = sub_1B0902FF8();
  (*(v35 + 16))(v6, v7, v33);
  v31 = sub_1B0E43988();
  v28 = v31;
  v30 = sub_1B0E458E8();
  v29 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v32 = sub_1B0E46A48();
  if (os_log_type_enabled(v31, v30))
  {
    v8 = v40;
    v19 = sub_1B0E45D78();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v17 = 0;
    v20 = sub_1B03949A8(0);
    v18 = v20;
    v21 = sub_1B03949A8(v17);
    v44 = v19;
    v43 = v20;
    v42 = v21;
    v22 = 0;
    v23 = &v44;
    sub_1B0394A48(0, &v44);
    sub_1B0394A48(v22, v23);
    v41 = v32;
    v24 = &v11;
    MEMORY[0x1EEE9AC00](&v11);
    v25 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v43;
    *(&v11 - 2) = &v42;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    sub_1B06D3AB0();
    sub_1B0E45018();
    v27 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B0389000, v28, v29, "BGSystemTask did complete, but it is not the current task.", v15, 2u);
      v13 = 0;
      sub_1B03998A8(v18);
      sub_1B03998A8(v21);
      sub_1B0E45D58();

      v14 = v27;
    }
  }

  else
  {

    v14 = v40;
  }

  v11 = v14;

  (*(v35 + 8))(v36, v33);
  return v11;
}

uint64_t sub_1B090F720@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *a1;

  if (!v8)
  {
    goto LABEL_9;
  }

  v5 = sub_1B0E46B58();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {

LABEL_9:
    *a2 = 0;
    return result;
  }

  if (*a1)
  {
    v4 = *a1;

    sub_1B0A27744();
  }

  v3 = *a1;
  *a1 = 0;

  *a2 = 1;
}

uint64_t sub_1B090F870(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v4 = [v1 displayedAccounts];
  sub_1B08CE3C0();
  sub_1B0902ED4();
  v5 = sub_1B0E453F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F58, &qword_1B0EA0780);
  sub_1B090FD64();
  v3 = sub_1B0E44F58();
  sub_1B039E440(&v5);
  MEMORY[0x1E69E5920](v4);
  return v3;
}

void *sub_1B090F97C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = 0;
  v8 = *a1;
  v11 = v8;
  MEMORY[0x1E69E5928](v8);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
    v5 = 0;
  }

  v10 = v5;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3090, &qword_1B0EA08F0);
  result = sub_1B039A570(sub_1B090FA98, 0, v2, MEMORY[0x1E69E73E0], &type metadata for AccountConfiguration, v4, a2);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = &v10;
    sub_1B06D4E94(&v10);
  }

  return result;
}

void *sub_1B090FA98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1B0A28230(v3);
  return memcpy(a2, v5, 0x23uLL);
}

uint64_t sub_1B090FB00(id *a1, uint64_t a2, void *a3)
{
  v12.rawValue._countAndFlagsBits = a2;
  v12.rawValue._object = a3;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v13 = *a1;
  v22 = v13;
  v20 = a2;
  v21 = a3;
  MEMORY[0x1E69E5928](v13);
  v14 = [v13 identifier];
  if (v14)
  {
    v8 = sub_1B0E44AD8();
    v9 = v3;
    MEMORY[0x1E69E5920](v14);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  MEMORY[0x1E69E5920](v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = String.init(_:)(v12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = v10;
  v18[1] = v11;
  v19 = v4;
  if (!v11)
  {
    if (!v19._object)
    {
      sub_1B03B1198(v18);
      v7 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_1B070B280(v18, &v17);
  if (!v19._object)
  {
    sub_1B03B1198(&v17);
LABEL_11:
    sub_1B06FF6F0(v18);
    v7 = 0;
    goto LABEL_10;
  }

  v16 = v17;
  v15 = v19;
  v6 = MEMORY[0x1B2726DE0](v17, *(&v17 + 1), v19._countAndFlagsBits, v19._object);
  sub_1B03B1198(&v15);
  sub_1B03B1198(&v16);
  sub_1B03B1198(v18);
  v7 = v6;
LABEL_10:

  return v7 & 1;
}

unint64_t sub_1B090FD64()
{
  v2 = qword_1EB6DACF8;
  if (!qword_1EB6DACF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2F58, &qword_1B0EA0780);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B090FDEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v4);
    *a2 = 0;
  }

  return result;
}

BOOL sub_1B090FE84(uint64_t a1, unsigned int *a2)
{
  v7 = 0;
  v8 = a1;
  v2 = *a2;
  v7 = a2;
  v5 = UID.init(rawValue:)(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v6, &v5, v3);
}

uint64_t sub_1B090FF00()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3010, &qword_1B0EA0800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
  sub_1B0911AF0();
  sub_1B0E44F58();

  sub_1B0E42E68();
  type metadata accessor for MFUIDSet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3018, &qword_1B0EA0808);
  sub_1B07BAD2C();
  sub_1B0911B78();
  return sub_1B0E445E8();
}

uint64_t sub_1B09100B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a7;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v23 = a4;
  v24 = a5;
  v30 = a6;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v22 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v18 - v22;
  v34 = sub_1B0E42E68();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v25 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v18 - v25;
  v43 = &v18 - v25;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  v39 = v11;
  v37 = v12;
  v38 = v13;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = v36;
  v36[0] = v27;
  v36[1] = v28;
  v36[2] = v29;
  sub_1B091106C();
  sub_1B0E44778();
  sub_1B06E38F8(v31);
  if ((*(v32 + 48))(v35, 1, v34) == 1)
  {
    sub_1B06E3800(v35);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
    return (*(*(v14 - 8) + 56))(v21, 1);
  }

  else
  {
    (*(v32 + 32))(v26, v35, v34);

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC0, &qword_1B0EA07A8);
    v19 = *(v20 + 48);
    (*(v32 + 16))(v21, v26, v34);
    type metadata accessor for MFUIDSet();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = sub_1B09094B0(v23);
    v17 = v20;
    *(v21 + v19) = v16;
    (*(*(v17 - 8) + 56))();
    return (*(v32 + 8))(v26, v34);
  }
}

uint64_t sub_1B0910488(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a1;
  v64 = a2;
  v65 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v66 = sub_1B070B550;
  v68 = sub_1B06BA324;
  v72 = sub_1B0911244;
  v76 = sub_1B039BCF8;
  v78 = sub_1B0398F5C;
  v80 = sub_1B0398F5C;
  v82 = sub_1B03993BC;
  v84 = sub_1B0398F5C;
  v86 = sub_1B0398F5C;
  v89 = sub_1B039BCEC;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v53 = 0;
  v63 = sub_1B0E439A8();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v59 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v7 = v45 - v59;
  v60 = v45 - v59;
  v106 = v8;
  v104 = v9;
  v105 = v10;
  v102 = v11;
  v103 = v12;
  v100 = v13;
  v101 = v14;
  v15 = sub_1B0902FF8();
  (*(v61 + 16))(v7, v15, v63);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v73 = 32;
  v74 = 7;
  v16 = swift_allocObject();
  v17 = v65;
  v67 = v16;
  *(v16 + 16) = v64;
  *(v16 + 24) = v17;

  v18 = swift_allocObject();
  v19 = v67;
  v75 = v18;
  *(v18 + 16) = v66;
  *(v18 + 24) = v19;

  v93 = sub_1B0E43988();
  v94 = sub_1B0E45908();
  v70 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 112;
  v81 = swift_allocObject();
  v71 = 8;
  *(v81 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = 1752392040;
  v20 = swift_allocObject();
  v21 = v69;
  v83 = v20;
  *(v20 + 16) = v68;
  *(v20 + 24) = v21;
  v85 = swift_allocObject();
  *(v85 + 16) = 37;
  v87 = swift_allocObject();
  *(v87 + 16) = v71;
  v22 = swift_allocObject();
  v23 = v75;
  v77 = v22;
  *(v22 + 16) = v72;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v77;
  v90 = v24;
  *(v24 + 16) = v76;
  *(v24 + 24) = v25;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v88 = sub_1B0E46A48();
  v91 = v26;

  v27 = v79;
  v28 = v91;
  *v91 = v78;
  v28[1] = v27;

  v29 = v81;
  v30 = v91;
  v91[2] = v80;
  v30[3] = v29;

  v31 = v83;
  v32 = v91;
  v91[4] = v82;
  v32[5] = v31;

  v33 = v85;
  v34 = v91;
  v91[6] = v84;
  v34[7] = v33;

  v35 = v87;
  v36 = v91;
  v91[8] = v86;
  v36[9] = v35;

  v37 = v90;
  v38 = v91;
  v91[10] = v89;
  v38[11] = v37;
  sub_1B0394964();

  if (os_log_type_enabled(v93, v94))
  {
    v39 = v53;
    v46 = sub_1B0E45D78();
    v45[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v47 = sub_1B03949A8(0);
    v48 = sub_1B03949A8(1);
    v49 = &v99;
    v99 = v46;
    v50 = &v98;
    v98 = v47;
    v51 = &v97;
    v97 = v48;
    sub_1B0394A48(3, &v99);
    sub_1B0394A48(2, v49);
    v95 = v78;
    v96 = v79;
    sub_1B03949FC(&v95, v49, v50, v51);
    v52 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v95 = v80;
      v96 = v81;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v45[4] = 0;
      v95 = v82;
      v96 = v83;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v45[3] = 0;
      v95 = v84;
      v96 = v85;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v45[2] = 0;
      v95 = v86;
      v96 = v87;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v45[1] = 0;
      v95 = v89;
      v96 = v90;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      _os_log_impl(&dword_1B0389000, v93, v94, "[%{sensitive,mask.hash}s] Received search reply.", v46, 0x16u);
      sub_1B03998A8(v47);
      sub_1B03998A8(v48);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v93);
  (*(v61 + 8))(v60, v63);

  v45[0] = sub_1B090FF00();
  v54(v45[0], v40, v41, v42, v43);
}

id sub_1B0910EC8()
{
  v2 = sub_1B0E44AC8();
  v3 = [v1 initWithIdentifier_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

uint64_t _s16LastStatsRequestVMa()
{
  v1 = qword_1EB6DA908;
  if (!qword_1EB6DA908)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B0910FA8()
{
  v2 = qword_1EB6DA720;
  if (!qword_1EB6DA720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA720);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B091106C()
{
  v2 = qword_1EB6DC388;
  if (!qword_1EB6DC388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC388);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B09110E4(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FE0, &qword_1B0EA07C8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FC8, &qword_1B0EA07B0);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E42E68();
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = &a2[*(v9 + 48)];
    v4 = &a1[*(v9 + 48)];
    *v3 = *v4;
    *(v3 + 2) = *(v4 + 2);
    (*(v10 + 56))();
  }

  return a2;
}

uint64_t sub_1B0911274(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1B0906D7C(a1, v1[2]);
}

char *sub_1B09112B4(char *a1, char *a2)
{
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v10 = *(StatsRequestVMa - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = &a2[*(StatsRequestVMa + 20)];
    v4 = &a1[*(StatsRequestVMa + 20)];
    *v3 = *v4;
    *(v3 + 1) = *(v4 + 1);
    (*(v10 + 56))();
  }

  return a2;
}

uint64_t sub_1B0911408(uint64_t a1)
{
  StatsRequestVMa = _s16LastStatsRequestVMa();
  if (!(*(*(StatsRequestVMa - 8) + 48))(a1, 1))
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B09114AC(__int128 *a1)
{
  v9 = *(sub_1B0E43108() - 8);
  v2 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v3 = *(v1 + 16);
  v4 = v1 + ((v2 + *(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1B0908A08(a1, v3, v1 + v2, v5, v6);
}

__n128 sub_1B0911564(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(a2, a1);
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v4 = a1 + *(StatsRequestVMa + 20);
  v5 = a2 + *(StatsRequestVMa + 20);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

__n128 sub_1B09115FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(a2, a1);
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v4 = a1 + *(StatsRequestVMa + 20);
  v5 = a2 + *(StatsRequestVMa + 20);
  *v5 = *v4;
  result = *(v4 + 16);
  *(v5 + 16) = result;
  return result;
}

uint64_t sub_1B0911694@<X0>(uint64_t a1@<X8>)
{
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v3 = v1 + ((*(*(StatsRequestVMa - 8) + 80) + 16) & ~*(*(StatsRequestVMa - 8) + 80));

  return sub_1B09089A8(v3, a1);
}

unint64_t sub_1B0911708()
{
  v2 = qword_1EB6DECF0;
  if (!qword_1EB6DECF0)
  {
    sub_1B0E43108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DECF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0911788(uint64_t a1)
{
  v1 = sub_1B0E43108();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1B0911800()
{
  v2 = qword_1EB6E3008;
  if (!qword_1EB6E3008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0911888()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B090B084();
}

uint64_t sub_1B09118EC(uint64_t a1)
{
  v13 = *(sub_1B0E42E68() - 8);
  v2 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v3 = (v2 + *(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v1 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v1 + v4);
  v9 = *v8;
  v10 = v8[1];

  return sub_1B090B210(a1, v1 + v2, v6, v7, v9, v10);
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B0911AF0()
{
  v2 = qword_1EB6DB758;
  if (!qword_1EB6DB758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3010, &qword_1B0EA0800);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0911B78()
{
  v2 = qword_1EB6DB670;
  if (!qword_1EB6DB670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3018, &qword_1B0EA0808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB670);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFServerMessagesIndexQuery()
{
  v2 = qword_1EB6E3020;
  if (!qword_1EB6E3020)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3020);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0911CB4()
{
  v2 = sub_1B0E43108();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t type metadata accessor for MFServerMessagesIndexer()
{
  v2 = qword_1EB6E3088;
  if (!qword_1EB6E3088)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3088);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B0911DE0(uint64_t result)
{
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

unint64_t sub_1B0911E20()
{
  v2 = qword_1EB6E30A8;
  if (!qword_1EB6E30A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E30A0, &qword_1B0EA0900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E30A8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0911EEC(char *a1, char *a2)
{
  StatsRequestVMa = _s16LastStatsRequestVMa();
  v14 = *(StatsRequestVMa - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, StatsRequestVMa))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
      memcpy(a2, a1, *(*(v9 - 8) + 64));
    }

    else
    {
      v6 = sub_1B0E43108();
      (*(*(v6 - 8) + 32))(a2, a1);
      v7 = &a2[*(StatsRequestVMa + 20)];
      v8 = &a1[*(StatsRequestVMa + 20)];
      *v7 = *v8;
      *(v7 + 1) = *(v8 + 1);
      (*(v14 + 56))();
    }
  }

  else if (v15(a1, 1, StatsRequestVMa))
  {
    sub_1B0911788(a2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2FB0, &qword_1B0EA0790);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 40))(a2, a1);
    v3 = &a2[*(StatsRequestVMa + 20)];
    v4 = &a1[*(StatsRequestVMa + 20)];
    *v3 = *v4;
    *(v3 + 1) = *(v4 + 1);
    *(v3 + 2) = *(v4 + 2);
    *(v3 + 3) = *(v4 + 3);
  }

  return a2;
}

unint64_t sub_1B09121A8()
{
  v2 = qword_1EB6E30B0;
  if (!qword_1EB6E30B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3000, &unk_1B0EA07F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E30B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0912230()
{
  v2 = qword_1EB6DB870;
  if (!qword_1EB6DB870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB870);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B09122DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v9 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v7 - v10;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v7 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = *(v20 + 64);
  v12 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v7 - v12;
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](&v7 - v12);
  v16 = &v7 - v14;
  v26 = &v7 - v14;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v18 = &v7 - v17;
  v25 = &v7 - v17;
  v24 = a1;
  sub_1B091290C();
  sub_1B041C1E8();
  MessageIdentifierSetNonEmpty.init(set:)(v19, v22);
  if ((*(v20 + 48))(v22, 1, v23) == 1)
  {
    sub_1B0754028(v22);
    MEMORY[0x1E69E5920](v9);
    return (*(v20 + 56))(v8, 1, 1, v23);
  }

  else
  {
    sub_1B074BA2C(v22, v16);
    sub_1B03D08AC(v16, v13);
    sub_1B074BA2C(v13, v18);
    sub_1B03D09B8(v16);
    sub_1B03D08AC(v18, v8);
    (*(v20 + 56))(v8, 0, 1, v23);
    MEMORY[0x1E69E5920](v9);
    return sub_1B03D09B8(v18);
  }
}

uint64_t sub_1B091260C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = a2;
  v18 = a3;
  v21 = sub_1B09135F4;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v32 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v13 = v10 - v12;
  v30 = v4;
  v31 = v5;
  v29 = v3;
  sub_1B091290C();
  v16 = &v24;
  v25 = v18;
  v26 = v14;
  v27 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  v6 = sub_1B074B4A4();
  v7 = v20;
  v8 = sub_1B039CA88(v21, v16, v17, v18, v19, v6, MEMORY[0x1E69E7288], &v28);
  v22 = v7;
  v23 = v8;
  if (v7)
  {
    v10[1] = v28;
    sub_1B03D09B8(v13);
    return v10[2];
  }

  else
  {
    v11 = v23;
    sub_1B03D09B8(v13);
    return v11;
  }
}

id sub_1B09127A4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3[1]);
  v5 = v3 - v4;
  v10 = v1;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s7WrapperCMa();
  sub_1B03D08AC(v8, v5);
  v7 = sub_1B0913364(v5);
  v9 = [v6 initWithWrapper_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v9);
  v11 = v9;
  sub_1B03D09B8(v8);
  MEMORY[0x1E69E5920](v11);
  return v9;
}

uint64_t sub_1B091290C()
{
  v3 = 0;
  sub_1B039AEC8(v0 + OBJC_IVAR___MFUIDSet__underlying, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return swift_dynamicCast();
}

uint64_t sub_1B0912A1C()
{
  v6 = 0;
  v10 = sub_1B090AD28;
  v12 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v5 = &v3 - v4;
  v12 = v0;
  sub_1B091290C();
  v8 = sub_1B039A494();
  v1 = sub_1B074B4A4();
  v11 = sub_1B039CA88(v10, v6, v7, v8, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v9);
  v3 = v11;
  sub_1B03D09B8(v5);
  return v3;
}

uint64_t sub_1B0912BA0()
{
  v7 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v2 - v3;
  v7 = v0;
  sub_1B091290C();
  v6 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v5);
  return v6;
}

id sub_1B0912C58()
{
  v6 = 0;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  __swift_allocate_boxed_opaque_existential_0(v5);
  v0 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v0);
  *&v1 = sub_1B0392800(v5, OBJC_IVAR___MFUIDSet__underlying).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = MFUIDSet;
  v3 = objc_msgSendSuper2(&v4, sel_init, v1);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id sub_1B0912D5C(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWrapper_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

id sub_1B0912DB4(uint64_t a1)
{
  v9 = 0;
  v8[4] = a1;
  v4 = a1 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set;
  swift_beginAccess();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  sub_1B03D08AC(v4, boxed_opaque_existential_0);
  swift_endAccess();
  *&v2 = sub_1B0392800(v8, OBJC_IVAR___MFUIDSet__underlying).n128_u64[0];
  v7.receiver = v9;
  v7.super_class = MFUIDSet;
  v6 = objc_msgSendSuper2(&v7, sel_init, v2);
  MEMORY[0x1E69E5928](v6);
  v9 = v6;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v6;
}

id sub_1B0912F14()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B039A494();
  v2 = sub_1B0E451A8();
  v3 = [v1 initWithUIDs_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

id sub_1B0912F94(uint64_t a1)
{
  v13 = 0;
  v12[4] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30C8, qword_1B0EA0908);
  v1 = sub_1B09136A8();
  v10 = sub_1B039CA88(sub_1B0913158, 0, v7, &type metadata for UID, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v8);
  v12[3] = v6;
  __swift_allocate_boxed_opaque_existential_0(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  sub_1B074B97C();
  sub_1B07F193C();
  sub_1B0E46098();
  *&v2 = sub_1B0392800(v12, OBJC_IVAR___MFUIDSet__underlying).n128_u64[0];
  v9.receiver = v13;
  v9.super_class = MFUIDSet;
  v4 = objc_msgSendSuper2(&v9, sel_init, v2);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;

  MEMORY[0x1E69E5920](v13);
  return v4;
}

uint64_t sub_1B0913158@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = UID.init(rawValue:)([*a1 unsignedIntValue]);
  *a2 = result;
  return result;
}

uint64_t sub_1B091321C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set;
  swift_beginAccess();
  sub_1B03D08AC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B0913280(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1B03D08AC(v2, &v4 - v4);
  v6 = v1 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set;
  v7 = &v9;
  swift_beginAccess();
  sub_1B074F0FC(v5, v6);
  swift_endAccess();
  return sub_1B03D09B8(v8);
}

id sub_1B09133A0(uint64_t a1)
{
  v7 = a1;
  ObjectType = swift_getObjectType();
  v11 = 0;
  v10 = 0;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v3;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = v1;
  v4 = v1;
  sub_1B03D08AC(v10, &v3 - v3);
  sub_1B074BA2C(v5, v4 + OBJC_IVAR___MFUIDSetUIDSetWrapper_set);
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  sub_1B03D09B8(v7);
  MEMORY[0x1E69E5920](v11);
  return v8;
}

uint64_t sub_1B0913580(unsigned int *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  result = a2(*a1);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t _s7WrapperCMa()
{
  v1 = qword_1EB6E30D8;
  if (!qword_1EB6E30D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B09136A8()
{
  v2 = qword_1EB6E30D0;
  if (!qword_1EB6E30D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E30C8, qword_1B0EA0908);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E30D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFUIDSet()
{
  v2 = qword_1EB6DA5B8;
  if (!qword_1EB6DA5B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B09137B0()
{
  v2 = sub_1B0913884();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B0913884()
{
  v4 = qword_1EB6DA2D0;
  if (!qword_1EB6DA2D0)
  {
    sub_1B03D06F8();
    v3 = sub_1B0E46EF8();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DA2D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B0913920(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v14 = sub_1B0914330;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v25 = 0;
  v15 = sub_1B0E44238();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v6 - v18;
  v20 = sub_1B0E44288();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v6 - v23;
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v6 - v26;
  v30 = sub_1B0E42E68();
  v32 = *(v30 - 8);
  v31 = v30 - 8;
  v33 = v32;
  v35 = *(v32 + 64);
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v36 = &v6 - v34;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v38 = &v6 - v37;
  v48 = &v6 - v37;
  v47 = v4;
  v46 = v3;
  result = sub_1B0913E74(v3);
  if (result)
  {
    sub_1B0913F1C(v28, v27);
    if ((*(v32 + 48))(v27, 1, v30) == 1)
    {
      return sub_1B06E3800(v27);
    }

    else
    {
      v7 = v33;
      v10 = *(v32 + 32);
      v9 = v32 + 32;
      v10(v38, v27, v30);
      v13 = *sub_1B09142A4();
      MEMORY[0x1E69E5928](v13);
      (*(v32 + 16))(v36, v38, v30);
      v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v11 = swift_allocObject();
      v10((v11 + v8), v36, v30);
      v44 = v14;
      v45 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = 0;
      v42 = sub_1B038C908;
      v43 = &block_descriptor_14;
      v12 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v24, v19, v12);
      (*(v16 + 8))(v19, v15);
      (*(v21 + 8))(v24, v20);
      _Block_release(v12);

      MEMORY[0x1E69E5920](v13);
      return (*(v32 + 8))(v38, v30);
    }
  }

  return result;
}

uint64_t sub_1B0913E74(uint64_t a1)
{
  if (*sub_1B0915F8C())
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_1B0915FEC(a1);
    MEMORY[0x1E69E5920](v2);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1B0913F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v16 = a1;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v14 = 0;
  v24 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30F8, &qword_1B0EA0960);
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v22 = (&v9 - v15);
  v17 = sub_1B0E42E68();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v9 - v20;
  v27 = &v9 - v20;
  v26 = v3;
  sub_1B0915530(v4);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
  if ((*(*(v23 - 8) + 48))(v22, 1) == 1)
  {
    sub_1B0916EF0(v22);
    return (*(v18 + 56))(v13, 1, 1, v17);
  }

  else
  {
    v5 = v14;
    v10 = *v22;
    v6 = v22 + *(v23 + 48);
    v25 = v10;
    (*(v18 + 32))(v21, v6, v17);
    v11 = sub_1B0E443C8();
    sub_1B0916FB8();
    sub_1B0915888();
    v12 = v5;
    if (v5)
    {
      v9 = v12;
      v8 = v12;
      v24 = v9;
      (*(v18 + 56))(v13, 1, 1, v17);
    }

    else
    {
      (*(v18 + 16))(v13, v21, v17);
      (*(v18 + 56))(v13, 0, 1, v17);
    }

    sub_1B091582C();
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t *sub_1B09142A4()
{
  if (qword_1EB6E0B68 != -1)
  {
    swift_once();
  }

  return &qword_1EB6E30E8;
}

uint64_t sub_1B0914330()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0914304(v2);
}

uint64_t sub_1B0914394(uint64_t a1)
{
  v18 = a1;
  v15 = sub_1B091709C;
  v29 = sub_1B0917114;
  v41 = 0;
  v40 = 0;
  v5 = 0;
  v26 = sub_1B0E42E68();
  v9 = *(v26 - 8);
  v10 = v26 - 8;
  v8 = v9;
  v22 = v9[8];
  v6 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v5 - v6;
  v41 = v1;
  sub_1B0917038();
  v7 = 1;
  v17 = sub_1B0E44838();
  v12 = v2;
  v13 = sub_1B0E44838();
  v14 = v3;
  v20 = v9[2];
  v19 = v9 + 2;
  v20(v25, v18, v26);
  v21 = *(v8 + 20);
  v11 = (v21 + 16) & ~v21;
  v23 = 7;
  v16 = swift_allocObject();
  v28 = v9[4];
  v27 = v9 + 4;
  v28(v16 + v11, v25, v26);
  v32 = sub_1B0914BC4(v17, v12, v13, v14, v15, v16);
  v40 = v32;
  v20(v25, v18, v26);
  v24 = (v21 + 16) & ~v21;
  v30 = swift_allocObject();
  v28(v30 + v24, v25, v26);
  v38 = v29;
  v39 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_1B038C908;
  v37 = &block_descriptor_9_1;
  v31 = _Block_copy(&aBlock);

  [v32 promptToFileWithCompletionHandler_];
  _Block_release(v31);
  return MEMORY[0x1E69E5920](v32);
}

uint64_t sub_1B0914724()
{
  v13 = 0;
  v2 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v2 - v2;
  v3 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v10 = &v2 - v3;
  v7 = sub_1B0E459C8();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v12 = &v2 - v4;
  sub_1B06CCC58();
  v8 = sub_1B0E44838();
  v9 = v0;
  (*(v5 + 104))(v12, *MEMORY[0x1E69E8098], v7);
  sub_1B039B81C();
  sub_1B06BFBDC();
  result = sub_1B0E45A08();
  qword_1EB6E30E8 = result;
  return result;
}

id sub_1B0914904(void *a1, uint64_t a2)
{
  v23 = a1;
  v25 = 0;
  v24 = 0;
  v13 = 0;
  v19 = sub_1B0E42E68();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v7[0] = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v7 - v7[0];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v24 = a2;
  v9 = 1;
  sub_1B0E44838();
  v7[1] = v3;
  v8 = sub_1B0E44AC8();

  [v23 setTitle_];
  MEMORY[0x1E69E5920](v8);
  [v23 setPrependSystemVersionToTitle_];
  sub_1B0E44838();
  v10 = v4;
  v11 = sub_1B0E44AC8();

  [v23 setRadarDescription_];
  MEMORY[0x1E69E5920](v11);
  [v23 setAppendStandardDisclaimerToDescription_];
  [v23 setComponent_];
  v12 = 5;
  [v23 setClassification_];
  [v23 setReproducibility_];
  v14 = MEMORY[0x1E69E6158];
  v15 = sub_1B0E46A48();
  v16 = sub_1B0E451A8();

  [v23 setExtensionIdentifiers_];
  MEMORY[0x1E69E5920](v16);
  sub_1B0E42CE8();
  sub_1B0E42E18();
  v21 = v5;
  v22 = sub_1B0E44AC8();
  (*(v17 + 8))(v20, v19);

  [v23 setAttachmentPath_];
  MEMORY[0x1E69E5920](v22);
  return [v23 setAutoDiagnostics_];
}

id sub_1B0914BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B0E44AC8();
  v10 = sub_1B0E44AC8();
  v18 = a5;
  v19 = a6;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_1B090E4EC;
  v17 = &block_descriptor_53;
  v9 = _Block_copy(&aBlock);
  v12 = [swift_getObjCClassFromMetadata() interactionWithTitle:v11 message:v10 builder:v9];
  _Block_release(v9);

  MEMORY[0x1E69E5920](v10);

  MEMORY[0x1E69E5920](v11);

  return v12;
}

uint64_t sub_1B0914D1C(uint64_t a1)
{
  v22 = a1;
  v30 = sub_1B0917178;
  v53 = 0;
  v11 = 0;
  v35 = sub_1B0E44238();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v8 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v7 - v8;
  v39 = sub_1B0E44288();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v9 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v7 - v9;
  v29 = sub_1B0E42E68();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v23 = v25;
  v24 = *(v25 + 64);
  v10 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v7 - v10;
  v18 = sub_1B0E44208();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v17 = (&v7 - v12);
  v42 = sub_1B0E44418();
  v19 = *(v42 - 8);
  v20 = v42 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v22);
  v21 = &v7 - v13;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v41 = &v7 - v14;
  v53 = v3;
  v45 = *sub_1B09142A4();
  MEMORY[0x1E69E5928](v45);
  sub_1B0E44408();
  v4 = v15;
  *v17 = 20;
  v5 = *MEMORY[0x1E69E7F48];
  (*(v4 + 104))();
  MEMORY[0x1B2726590](v21, v17);
  (*(v15 + 8))(v17, v18);
  v44 = *(v19 + 8);
  v43 = v19 + 8;
  v44(v21, v42);
  (*(v25 + 16))(v28, v22, v29);
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v31 = swift_allocObject();
  (*(v25 + 32))(v31 + v27, v28, v29);
  v51 = v30;
  v52 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = 0;
  v49 = sub_1B038C908;
  v50 = &block_descriptor_15;
  v40 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727AB0](v41, v38, v34, v40);
  (*(v32 + 8))(v34, v35);
  (*(v36 + 8))(v38, v39);
  _Block_release(v40);

  v44(v41, v42);
  return MEMORY[0x1E69E5920](v45);
}

void sub_1B0915310(uint64_t a1)
{
  v7 = a1;
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v10 = sub_1B0E42E68();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v3 - v6;
  v11 = &v3 - v6;
  v17 = MEMORY[0x1EEE9AC00](v7);
  v18 = 0;
  v14 = [objc_opt_self() defaultManager];
  (*(v8 + 16))(v1, v7, v10);
  v13 = sub_1B0E42D58();
  (*(v8 + 8))(v11, v10);
  v16 = v18;
  v15 = [v14 removeItemAtURL:v13 error:&v16];
  v12 = v16;
  MEMORY[0x1E69E5928](v16);
  v2 = v18;
  v18 = v12;
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  if ((v15 & 1) == 0)
  {
    v4 = v18;
    v5 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v4);
    swift_willThrow();
  }

  *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0915530@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = 0;
  v26 = sub_1B0915950;
  v6[1] = 0;
  v15 = sub_1B0E42CF8();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v14 = v6 - v7;
  v19 = sub_1B0E42E68();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v19);
  v20 = v6 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v11 = v6 - v9;
  v10 = [objc_opt_self() defaultManager];
  v23 = [v10 temporaryDirectory];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v10);
  v3 = sub_1B0E44838();
  v16 = v27;
  v27[0] = v3;
  v27[1] = v4;
  (*(v12 + 104))(v14, *MEMORY[0x1E6968F68], v15);
  sub_1B07C7F5C();
  sub_1B0E42E58();
  (*(v12 + 8))(v14, v15);
  sub_1B03B1198(v16);
  v21 = *(v17 + 8);
  v22 = v17 + 8;
  v21(v20, v19);
  MEMORY[0x1E69E5920](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E30F8, &qword_1B0EA0960);
  sub_1B0E42DC8();
  return (v21)(v11, v19);
}

uint64_t sub_1B0915888()
{
  v4 = sub_1B0E43B48();
  if ((v0 & 1) == 0)
  {
    return v4;
  }

  if (sub_1B0A61510(18, 0, 0))
  {
    sub_1B09179C4();
    swift_willThrowTypedImpl();
  }

  sub_1B09179C4();
  swift_allocError();
  result = v3;
  *v1 = v4;
  return result;
}

size_t sub_1B0915950@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  v56 = a1;
  v53 = a2;
  v54 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v62 = 0;
  v2 = *(*(sub_1B0E44B68() - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v55 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B0E42E68();
  v58 = *(v57 - 8);
  v59 = v58;
  v4 = *(v58 + 64);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v60 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v60;
  v70 = v5;
  if (!v5)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
    result = (*(*(v7 - 8) + 56))(v53, 1);
    v50 = v52;
    return result;
  }

  v51 = v56;
  v48 = v56;
  v69 = v56;
  result = strlen(v56);
  v9 = __OFADD__(result, 1);
  v49 = result + 1;
  if (v9)
  {
    goto LABEL_17;
  }

  v45 = v52;
  v68 = v49;
  v42 = sub_1B0E44A48();
  v41 = v10;
  v66 = v42;
  v67 = v10;
  v64 = 0;
  v65 = sub_1B0E45348();
  v43 = &v29;
  v11 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v25;
  v27 = v11;
  v28 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v14 = v45;
  v46 = v13;
  sub_1B0E45268();
  v47 = v14;
  if (v14)
  {
    result = v43;
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v40 = v63;
  v62 = v63;
  if (v63 < 1)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
    (*(*(v24 - 8) + 56))(v53, 1);
    sub_1B039E440(&v65);
    result = v47;
    v50 = v47;
  }

  else
  {
    v35 = v65;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61 = v35;
    sub_1B0E44B48();
    sub_1B07B517C();
    v36 = &v61;
    v15 = sub_1B0E44B08();
    v39 = v16;
    v37 = v15;
    v38 = v16;
    sub_1B039E440(v36);
    if (v39)
    {
      v33 = v37;
      v34 = v38;
    }

    else
    {
      LODWORD(v27) = 0;
      v26 = 87;
      v25 = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    v29 = v34;
    v31 = 0;
    sub_1B0E42D48();

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
    v30 = v53 + *(v32 + 48);
    v17 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v40);
    v18 = v59;
    v19 = v60;
    v20 = v57;
    v22 = v21;
    v23 = v30;
    *v53 = v22;
    (*(v18 + 16))(v23, v19, v20, v17);
    (*(*(v32 - 8) + 56))(v53, v31, 1);
    (*(v59 + 8))(v60, v57);
    sub_1B039E440(&v65);
    result = v47;
    v50 = v47;
  }

  return result;
}

uint64_t sub_1B0915EC4@<X0>(_DWORD *a1@<X8>)
{
  MEMORY[0x1B2727230]();
  sub_1B0E45E48();
  v3 = sub_1B0E45E58();
  if (v3)
  {
    result = mkstemps(v3, 4);
  }

  else
  {
    result = mkstemps(0, 4);
  }

  *a1 = result;
  return result;
}

char *sub_1B0915F8C()
{
  if (qword_1EB6E0B70 != -1)
  {
    swift_once();
  }

  return &byte_1EB6E30F0;
}

uint64_t sub_1B0915FEC(uint64_t a1)
{
  v99 = a1;
  v85 = sub_1B091792C;
  v86 = sub_1B03B0DF8;
  v87 = sub_1B0398F5C;
  v88 = sub_1B0398F5C;
  v89 = sub_1B0399260;
  v90 = sub_1B091792C;
  v91 = sub_1B03B0DF8;
  v92 = sub_1B0398F5C;
  v93 = sub_1B0398F5C;
  v94 = sub_1B0399260;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0.0;
  v95 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v96 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v33 - v96;
  v98 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v33 - v96);
  v106 = &v33 - v98;
  v107 = sub_1B0E43108();
  v104 = *(v107 - 8);
  v105 = v107 - 8;
  v100 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v99);
  v101 = &v33 - v100;
  v122 = &v33 - v100;
  v102 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v103 = &v33 - v102;
  v121 = &v33 - v102;
  v120 = v6;
  v119 = v1;
  sub_1B0E430F8();
  sub_1B0917298(v106);
  if ((*(v104 + 48))(v106, 1, v107) == 1)
  {
    sub_1B06B97A8(v106);
LABEL_16:
    (*(v104 + 16))(v97, v103, v107);
    (*(v104 + 56))(v97, 0, 1, v107);
    sub_1B0917488(v97);
    (*(v104 + 8))(v103, v107);
    v35 = 1;
    return v35 & 1;
  }

  (*(v104 + 32))(v101, v106, v107);
  sub_1B0E43048();
  v84 = v7;
  v118 = v7;
  if (v7 > 172800.0)
  {
    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v84;
    v82 = sub_1B0E43988();
    v83 = sub_1B0E45908();
    v71 = 17;
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v72 = 32;
    v8 = swift_allocObject();
    v9 = v74;
    v75 = v8;
    *(v8 + 16) = v90;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v75;
    v79 = v10;
    *(v10 + 16) = v91;
    *(v10 + 24) = v11;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v78 = sub_1B0E46A48();
    v80 = v12;

    v13 = v76;
    v14 = v80;
    *v80 = v92;
    v14[1] = v13;

    v15 = v77;
    v16 = v80;
    v80[2] = v93;
    v16[3] = v15;

    v17 = v79;
    v18 = v80;
    v80[4] = v94;
    v18[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v82, v83))
    {
      v19 = v95;
      v64 = sub_1B0E45D78();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v63 = 0;
      v65 = sub_1B03949A8(0);
      v66 = sub_1B03949A8(v63);
      v67 = &v112;
      v112 = v64;
      v68 = &v111;
      v111 = v65;
      v69 = &v110;
      v110 = v66;
      sub_1B0394A48(0, &v112);
      sub_1B0394A48(1, v67);
      v108 = v92;
      v109 = v76;
      sub_1B03949FC(&v108, v67, v68, v69);
      v70 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v108 = v93;
        v109 = v77;
        sub_1B03949FC(&v108, &v112, &v111, &v110);
        v61 = 0;
        v108 = v94;
        v109 = v79;
        sub_1B03949FC(&v108, &v112, &v111, &v110);
        _os_log_impl(&dword_1B0389000, v82, v83, "Will prompt for tap-to-radar for MIME parsing failure (last prompt was %ld hours ago.", v64, 0xCu);
        v60 = 0;
        sub_1B03998A8(v65);
        sub_1B03998A8(v66);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v82);
    (*(v104 + 8))(v101, v107);
    goto LABEL_16;
  }

  v49 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v84;
  v58 = sub_1B0E43988();
  v59 = sub_1B0E45908();
  v47 = 17;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v48 = 32;
  v20 = swift_allocObject();
  v21 = v50;
  v51 = v20;
  *(v20 + 16) = v85;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v51;
  v55 = v22;
  *(v22 + 16) = v86;
  *(v22 + 24) = v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v54 = sub_1B0E46A48();
  v56 = v24;

  v25 = v52;
  v26 = v56;
  *v56 = v87;
  v26[1] = v25;

  v27 = v53;
  v28 = v56;
  v56[2] = v88;
  v28[3] = v27;

  v29 = v55;
  v30 = v56;
  v56[4] = v89;
  v30[5] = v29;
  sub_1B0394964();

  if (os_log_type_enabled(v58, v59))
  {
    v31 = v95;
    v40 = sub_1B0E45D78();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v39 = 0;
    v41 = sub_1B03949A8(0);
    v42 = sub_1B03949A8(v39);
    v43 = &v117;
    v117 = v40;
    v44 = &v116;
    v116 = v41;
    v45 = &v115;
    v115 = v42;
    sub_1B0394A48(0, &v117);
    sub_1B0394A48(1, v43);
    v113 = v87;
    v114 = v52;
    sub_1B03949FC(&v113, v43, v44, v45);
    v46 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v113 = v88;
      v114 = v53;
      sub_1B03949FC(&v113, &v117, &v116, &v115);
      v37 = 0;
      v113 = v89;
      v114 = v55;
      sub_1B03949FC(&v113, &v117, &v116, &v115);
      _os_log_impl(&dword_1B0389000, v58, v59, "Not prompting for tap-to-radar for MIME parsing failure (last prompt was %ld hours ago.", v40, 0xCu);
      v36 = 0;
      sub_1B03998A8(v41);
      sub_1B03998A8(v42);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v58);
  v34 = *(v104 + 8);
  v33 = v104 + 8;
  v34(v101, v107);
  v34(v103, v107);
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1B0916EF0(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3100, qword_1B0EA0968);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 48);
    v1 = sub_1B0E42E68();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

unint64_t sub_1B0916FB8()
{
  v2 = qword_1EB6DB988;
  if (!qword_1EB6DB988)
  {
    sub_1B0E443C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB988);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0917038()
{
  v2 = qword_1EB6E3108;
  if (!qword_1EB6E3108)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E3108);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1B091709C(void *a1)
{
  v2 = sub_1B0E42E68();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0914904(a1, v3);
}

uint64_t sub_1B0917114()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0914CF0(v2);
}

void sub_1B0917178()
{
  v1 = *(sub_1B0E42E68() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1B0915310(v2);
}

uint64_t sub_1B09171DC()
{
  result = sub_1B0917200();
  byte_1EB6E30F0 = result & 1;
  return result;
}

uint64_t sub_1B0917200()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 isInternal];
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1B0917298@<X0>(uint64_t a1@<X8>)
{
  v12 = 0;
  sub_1B0917268();
  v6 = sub_1B0E44AC8();

  v7 = [v5 objectForKey_];
  MEMORY[0x1E69E5920](v6);
  if (v7)
  {
    sub_1B0E45FE8();
    sub_1B0392800(v8, &v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v3 = sub_1B0E43108();
    if (swift_dynamicCast())
    {
      return (*(*(v3 - 8) + 56))(a1, 0, 1);
    }

    else
    {
      return (*(*(v3 - 8) + 56))(a1, 1);
    }
  }

  else
  {
    sub_1B041C0EC(v11);
    v2 = sub_1B0E43108();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_1B0917488(uint64_t a1)
{
  v20 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v19 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v28 = v11 - v19;
  v27 = sub_1B0E43108();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v21 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v20);
  v22 = v11 - v21;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v24 = v11 - v23;
  v31 = v11 - v23;
  v30 = v5;
  v29 = v1;
  sub_1B06BC2F4(v5, v6);
  if ((*(v25 + 48))(v28, 1, v27) == 1)
  {
    sub_1B06B97A8(v28);
    sub_1B0917268();
    v11[1] = v9;
    v12 = sub_1B0E44AC8();

    [v18 removeObjectForKey_];
    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v7 = v22;
    (*(v25 + 32))(v24, v28, v27);
    (*(v25 + 16))(v7, v24, v27);
    v15 = sub_1B0E43068();
    v17 = *(v25 + 8);
    v16 = v25 + 8;
    v17(v22, v27);
    sub_1B0917268();
    v13 = v8;
    v14 = sub_1B0E44AC8();

    [v18 setObject:v15 forKey:v14];
    MEMORY[0x1E69E5920](v14);
    swift_unknownObjectRelease();
    v17(v24, v27);
  }

  return sub_1B06B97A8(v20);
}

uint64_t sub_1B0917784(double a1)
{
  v2 = a1 / 60.0 / 60.0;
  if (((*&v2 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return v2;
}

uint64_t sub_1B0917934@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B0915EC4(a1);
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B09179C4()
{
  v2 = qword_1EB6E3110;
  if (!qword_1EB6E3110)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0917A3C()
{
  v14 = [v0 sourceRemoteID];
  if (v14)
  {
    v12 = sub_1B0E44AD8();
    v13 = v1;
    MEMORY[0x1E69E5920](v14);
    v2 = sub_1B08252D8(v12, v13);
  }

  else
  {
    v2 = sub_1B08252D8(0, 0);
  }

  v16 = v2;
  v17 = BYTE4(v2) & 1;
  MEMORY[0x1E69E5928](v0);
  if (v17)
  {
    v11 = [v0 sourceMessage];
    if (v11)
    {
      swift_getObjectType();
      v10 = [v11 remoteID];
      if (v10)
      {
        v6 = sub_1B0E44AD8();
        v7 = v4;
        MEMORY[0x1E69E5920](v10);
        v8 = v6;
        v9 = v7;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      swift_unknownObjectRelease();
      v3 = sub_1B08252D8(v8, v9);
    }

    else
    {
      v3 = sub_1B08252D8(0, 0);
    }

    v18 = v3;
    v19 = BYTE4(v3) & 1;
  }

  else
  {
    v18 = v16;
    v19 = 0;
  }

  MEMORY[0x1E69E5920](v0);
  LODWORD(v15) = v18;
  BYTE4(v15) = v19 & 1;
  return v15;
}

uint64_t sub_1B0917CB8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  swift_allocBox();
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v3 = sub_1B0E46A48();
  sub_1B041C1E8();
  MessageIdentifierSet.init(arrayLiteral:)(v3, &type metadata for UID);
  v5 = [v8 itemsToDownload];
  sub_1B071C094();
  v4 = sub_1B0E451B8();
  sub_1B0928BB4(v4);

  MEMORY[0x1E69E5920](v5);
  v7 = [v8 itemsToCopy];
  v6 = sub_1B0E451B8();
  sub_1B0928BB4(v6);

  MEMORY[0x1E69E5920](v7);
  v10 = [v8 itemsToDelete];
  v9 = sub_1B0E451B8();
  sub_1B0928BB4(v9);

  MEMORY[0x1E69E5920](v10);
  swift_beginAccess();
  sub_1B03D08AC(v11, a1);
  swift_endAccess();
}

unint64_t sub_1B0917E74(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = a4;
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a1;

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B0928D58;
  *(v13 + 24) = v9;

  v20 = sub_1B074F260;
  v21 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = 0;
  v18 = sub_1B074C0AC;
  v19 = &block_descriptor_15;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 initWithIMAPServerMessageBuilder_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v12);
    v26 = v12;
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v26);

    return v12;
  }

  return result;
}

uint64_t sub_1B09180BC(uint64_t a1, int a2, uint64_t a3)
{
  v257 = a3;
  v258 = a2;
  v259 = a1;
  v285 = 0;
  v249 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v279 = 0;
  v276 = 0;
  v275 = 0;
  v273 = 0;
  v242 = sub_1B0E439A8();
  v243 = *(v242 - 8);
  v244 = v243;
  v245 = *(v243 + 64);
  v4 = MEMORY[0x1EEE9AC00](0);
  v247 = (v245 + 15) & 0xFFFFFFFFFFFFFFF0;
  v246 = &v92[-v247];
  MEMORY[0x1EEE9AC00](v4);
  v248 = &v92[-v247];
  v250 = _s6LoggerVMa();
  v252 = *(*(v250 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v249);
  v254 = (v252 + 15) & 0xFFFFFFFFFFFFFFF0;
  v251 = &v92[-v254];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v253 = &v92[-v254];
  MEMORY[0x1EEE9AC00](v6);
  v255 = &v92[-v254];
  v7 = *(*(_s18MailboxPersistenceVMa() - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v259);
  v256 = &v92[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v284 = v8;
  v285 = v10;
  v283 = v11;
  v282 = v3;

  v264 = v3;
  v265 = v257;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E35D0, &qword_1B0EA0980);
  sub_1B09B21DC(v259, v258, sub_1B0928D6C, &v263, v260, &v280);
  v261 = 0;
  v262 = 0;

  v239 = v280;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v281 = v239;
  v278 = v239;
  sub_1B0928DEC();
  v240 = sub_1B0E45748();

  if (v240)
  {
    v93 = sub_1B0E46A48();
    sub_1B039E440(&v281);
    v95 = v93;
    v96 = v261;
    return v95;
  }

  v12 = v261;
  v221 = sub_1B09B0434();
  v219 = v241 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v233 = 32;
  v220 = &v277;
  swift_beginAccess();
  sub_1B03F4D78(v219, v256);
  swift_endAccess();
  v222 = sub_1B0884248(v221, v256);
  v224 = v13;
  v225 = v14;
  v226 = v15;
  v232 = sub_1B0883C9C();
  v223 = v232;
  v276 = v232;

  v229 = swift_allocObject();
  v227 = v229;
  v234 = v229 + 16;
  v228 = (v229 + 16);
  v275 = v229 + 16;
  sub_1B0451F2C();
  *(v229 + 16) = sub_1B0E44588();
  v231 = v281;
  v230 = v281;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v274 = v231;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v235 = v92;
  v16 = MEMORY[0x1EEE9AC00](v232);
  v236 = &v92[-32];
  *&v92[-16] = v16;
  *&v92[-8] = v17;
  sub_1B0928EA4();
  v18 = sub_1B0E46398();
  v237 = v12;
  v238 = v18;
  if (!v12)
  {
    v215 = v238;

    v273 = v215;
    v212 = *v228;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v272 = v212;
    v214 = &v271;
    swift_beginAccess();
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B06E3654();
    sub_1B0E45568();
    swift_endAccess();
    v216 = &unk_1F26C9018;
    v218 = sub_1B0E452A8();
    v217 = sub_1B0E452A8();

    if (v218 == v217)
    {
      v98 = v237;
    }

    else
    {
      v19 = v248;
      v146 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
      sub_1B0394784(v241 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v255);
      (*(v244 + 16))(v19, v255, v242);
      sub_1B039480C(v255);

      sub_1B0394784(v241 + *v146, v253);
      v20 = &v253[*(v250 + 20)];
      v148 = *v20;
      v149 = *(v20 + 1);
      sub_1B039480C(v253);

      v147 = 24;
      v186 = 7;
      v21 = swift_allocObject();
      v22 = v149;
      v160 = v21;
      *(v21 + 16) = v148;
      *(v21 + 20) = v22;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v23 = swift_allocObject();
      v24 = v149;
      v150 = v23;
      *(v23 + 16) = v148;
      *(v23 + 20) = v24;

      v185 = 32;
      v25 = swift_allocObject();
      v26 = v150;
      v172 = v25;
      *(v25 + 16) = sub_1B039BBE8;
      *(v25 + 24) = v26;
      sub_1B0394868();
      sub_1B0394868();

      v151 = v281;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = swift_allocObject();
      v28 = v215;
      v177 = v27;
      *(v27 + 16) = v151;
      *(v27 + 24) = v28;

      v211 = sub_1B0E43988();
      v152 = v211;
      v210 = sub_1B0E45908();
      v153 = v210;
      v181 = 17;
      v189 = swift_allocObject();
      v154 = v189;
      v163 = 16;
      *(v189 + 16) = 16;
      v190 = swift_allocObject();
      v155 = v190;
      v170 = 4;
      *(v190 + 16) = 4;
      v29 = swift_allocObject();
      v156 = v29;
      *(v29 + 16) = sub_1B0394C30;
      v166 = 0;
      *(v29 + 24) = 0;
      v30 = swift_allocObject();
      v31 = v156;
      v191 = v30;
      v157 = v30;
      *(v30 + 16) = sub_1B0394C24;
      *(v30 + 24) = v31;
      v192 = swift_allocObject();
      v158 = v192;
      v180 = 0;
      *(v192 + 16) = 0;
      v193 = swift_allocObject();
      v159 = v193;
      *(v193 + 16) = 1;
      v32 = swift_allocObject();
      v33 = v160;
      v161 = v32;
      *(v32 + 16) = sub_1B039BA2C;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v161;
      v194 = v34;
      v162 = v34;
      *(v34 + 16) = sub_1B039BA88;
      *(v34 + 24) = v35;
      v195 = swift_allocObject();
      v164 = v195;
      *(v195 + 16) = v163;
      v196 = swift_allocObject();
      v165 = v196;
      *(v196 + 16) = v170;
      v36 = swift_allocObject();
      v37 = v166;
      v167 = v36;
      *(v36 + 16) = sub_1B039BB94;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v167;
      v197 = v38;
      v168 = v38;
      *(v38 + 16) = sub_1B0394C24;
      *(v38 + 24) = v39;
      v198 = swift_allocObject();
      v169 = v198;
      *(v198 + 16) = v180;
      v199 = swift_allocObject();
      v171 = v199;
      *(v199 + 16) = v170;
      v40 = swift_allocObject();
      v41 = v172;
      v173 = v40;
      *(v40 + 16) = sub_1B039BBA0;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v173;
      v200 = v42;
      v174 = v42;
      *(v42 + 16) = sub_1B039BC08;
      *(v42 + 24) = v43;
      v201 = swift_allocObject();
      v175 = v201;
      *(v201 + 16) = v180;
      v202 = swift_allocObject();
      v176 = v202;
      v183 = 8;
      *(v202 + 16) = 8;
      v44 = swift_allocObject();
      v45 = v177;
      v178 = v44;
      *(v44 + 16) = sub_1B0928F2C;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v178;
      v203 = v46;
      v179 = v46;
      *(v46 + 16) = sub_1B03B0DF8;
      *(v46 + 24) = v47;
      v204 = swift_allocObject();
      v182 = v204;
      *(v204 + 16) = v180;
      v205 = swift_allocObject();
      v184 = v205;
      *(v205 + 16) = v183;
      v48 = swift_allocObject();
      v49 = v227;
      v187 = v48;
      *(v48 + 16) = sub_1B0928F38;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v187;
      v208 = v50;
      v188 = v50;
      *(v50 + 16) = sub_1B03B0DF8;
      *(v50 + 24) = v51;
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v206 = sub_1B0E46A48();
      v207 = v52;

      v53 = v189;
      v54 = v207;
      *v207 = sub_1B0398F5C;
      v54[1] = v53;

      v55 = v190;
      v56 = v207;
      v207[2] = sub_1B0398F5C;
      v56[3] = v55;

      v57 = v191;
      v58 = v207;
      v207[4] = sub_1B0399178;
      v58[5] = v57;

      v59 = v192;
      v60 = v207;
      v207[6] = sub_1B0398F5C;
      v60[7] = v59;

      v61 = v193;
      v62 = v207;
      v207[8] = sub_1B0398F5C;
      v62[9] = v61;

      v63 = v194;
      v64 = v207;
      v207[10] = sub_1B039BA94;
      v64[11] = v63;

      v65 = v195;
      v66 = v207;
      v207[12] = sub_1B0398F5C;
      v66[13] = v65;

      v67 = v196;
      v68 = v207;
      v207[14] = sub_1B0398F5C;
      v68[15] = v67;

      v69 = v197;
      v70 = v207;
      v207[16] = sub_1B0399178;
      v70[17] = v69;

      v71 = v198;
      v72 = v207;
      v207[18] = sub_1B0398F5C;
      v72[19] = v71;

      v73 = v199;
      v74 = v207;
      v207[20] = sub_1B0398F5C;
      v74[21] = v73;

      v75 = v200;
      v76 = v207;
      v207[22] = sub_1B03991EC;
      v76[23] = v75;

      v77 = v201;
      v78 = v207;
      v207[24] = sub_1B0398F5C;
      v78[25] = v77;

      v79 = v202;
      v80 = v207;
      v207[26] = sub_1B0398F5C;
      v80[27] = v79;

      v81 = v203;
      v82 = v207;
      v207[28] = sub_1B0399260;
      v82[29] = v81;

      v83 = v204;
      v84 = v207;
      v207[30] = sub_1B0398F5C;
      v84[31] = v83;

      v85 = v205;
      v86 = v207;
      v207[32] = sub_1B0398F5C;
      v86[33] = v85;

      v87 = v207;
      v88 = v208;
      v207[34] = sub_1B0399260;
      v87[35] = v88;
      sub_1B0394964();

      if (os_log_type_enabled(v211, v210))
      {
        v89 = v237;
        v140 = sub_1B0E45D78();
        v136 = v140;
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v138 = 0;
        v141 = sub_1B03949A8(0);
        v139 = v141;
        v142 = sub_1B03949A8(v138);
        v270 = v140;
        v269 = v141;
        v268 = v142;
        v143 = &v270;
        sub_1B0394A48(0, &v270);
        sub_1B0394A48(6, v143);
        v266 = sub_1B0398F5C;
        v267 = v154;
        sub_1B03949FC(&v266, v143, &v269, &v268);
        v144 = v89;
        v145 = v89;
        if (v89)
        {
          v134 = 0;

          __break(1u);
        }

        else
        {
          v266 = sub_1B0398F5C;
          v267 = v155;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v132 = 0;
          v133 = 0;
          v266 = sub_1B0399178;
          v267 = v157;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v130 = 0;
          v131 = 0;
          v266 = sub_1B0398F5C;
          v267 = v158;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v128 = 0;
          v129 = 0;
          v266 = sub_1B0398F5C;
          v267 = v159;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v126 = 0;
          v127 = 0;
          v266 = sub_1B039BA94;
          v267 = v162;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v124 = 0;
          v125 = 0;
          v266 = sub_1B0398F5C;
          v267 = v164;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v122 = 0;
          v123 = 0;
          v266 = sub_1B0398F5C;
          v267 = v165;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v120 = 0;
          v121 = 0;
          v266 = sub_1B0399178;
          v267 = v168;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v118 = 0;
          v119 = 0;
          v266 = sub_1B0398F5C;
          v267 = v169;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v116 = 0;
          v117 = 0;
          v266 = sub_1B0398F5C;
          v267 = v171;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v114 = 0;
          v115 = 0;
          v266 = sub_1B03991EC;
          v267 = v174;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v112 = 0;
          v113 = 0;
          v266 = sub_1B0398F5C;
          v267 = v175;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v110 = 0;
          v111 = 0;
          v266 = sub_1B0398F5C;
          v267 = v176;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v108 = 0;
          v109 = 0;
          v266 = sub_1B0399260;
          v267 = v179;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v106 = 0;
          v107 = 0;
          v266 = sub_1B0398F5C;
          v267 = v182;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v104 = 0;
          v105 = 0;
          v266 = sub_1B0398F5C;
          v267 = v184;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v102 = 0;
          v103 = 0;
          v266 = sub_1B0399260;
          v267 = v188;
          sub_1B03949FC(&v266, &v270, &v269, &v268);
          v100 = 0;
          v101 = 0;
          _os_log_impl(&dword_1B0389000, v152, v153, "[%.*hhx-%.*X] Excluding '%ld' message move/copy since %ld destination mailbox(es) have modifications.", v136, 0x2Bu);
          v99 = 0;
          sub_1B03998A8(v139);
          sub_1B03998A8(v142);
          sub_1B0E45D58();

          v135 = v100;
        }
      }

      else
      {
        v90 = v237;

        v135 = v90;
      }

      v97 = v135;

      (*(v244 + 8))(v248, v242);
      v98 = v97;
    }

    v94 = v98;

    sub_1B039E440(&v281);
    v95 = v215;
    v96 = v94;
    return v95;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B091AD40@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = sub_1B09B0668();
  v5 = sub_1B091ADD0(v4, a1);

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1B091ADD0(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1B091FFC0(a1, a2, v12);
  v11 = v12[0];
  v7 = v12[1];
  v8 = v12[2];
  v9 = v12[3];
  v10 = v12[4];
  v6 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v6);
  sub_1B07B639C(v7, v8, v9, v10, a1);
  MEMORY[0x1E69E5920](v6);

  return v11;
}

uint64_t sub_1B091AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v12 = a1;
  v11 = a2;
  v10 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v5;
  v9 = v6;
  sub_1B0451F2C();
  v7 = sub_1B0E45528();
  sub_1B039E440(&v8);
  if (v7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B0E454D8();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1B091B008()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E452A8();

  v0 = sub_1B0E452A8();
  result = v3;
  v4 = v3 - v0;
  if (__OFSUB__(v3, v0))
  {
    __break(1u);
  }

  else
  {

    return v4;
  }

  return result;
}

uint64_t sub_1B091B094(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0451F2C();
  v4 = sub_1B0E454A8();

  return v4;
}

uint64_t sub_1B091B114(const void *a1, uint64_t a2)
{
  memset(&v12[2], 0, 0x28uLL);
  memcpy(__dst, a1, sizeof(__dst));
  v12[2] = __dst[0];
  v12[3] = __dst[1];
  LODWORD(v12[4]) = __dst[2];
  v12[5] = __dst[3];
  v12[6] = __dst[4];
  v12[1] = a2;
  v10 = a2;
  sub_1B0828300(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  sub_1B071CEA8();
  sub_1B0E44FB8();
  sub_1B08283D8(a1);
  v8 = v11;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3190, &unk_1B0EA0988);
  v2 = sub_1B074AEA4();
  sub_1B039A570(sub_1B091B3A8, 0, v4, MEMORY[0x1E69E73E0], v2, v5, v12);
  sub_1B06D4E94(&v8);
  return v12[0];
}

uint64_t sub_1B091B2C0(id *a1, uint64_t *a2)
{
  v4 = [*a1 persistentID];
  v10 = [v4 stringValue];
  v6 = sub_1B0E44AD8();
  v9 = v2;
  MEMORY[0x1E69E5920](v4);
  v7 = *a2;
  v8 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = MEMORY[0x1B2726DE0](v6, v9, v7, v8);

  MEMORY[0x1E69E5920](v10);
  return v11 & 1;
}

uint64_t sub_1B091B3A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v4);
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1B091B440(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v14 = a3;
  v24 = sub_1B0929098;
  v25 = sub_1B074F260;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v46 = a2;
  v21 = a2;
  v22 = BYTE4(a2);
  v13 = *(_s6LoggerVMa_1() - 8);
  v15 = v13;
  v16 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12[1]);
  v18 = v12 - v3;
  v44 = v17;
  v42 = v21;
  v30 = 1;
  v43 = v4 & 1;
  v41 = v5;
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B0928F6C(v17, v40);
  sub_1B074B69C(v14, v18);
  v19 = (*(v15 + 80) + 124) & ~*(v15 + 80);
  v23 = 7;
  v20 = (v19 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = swift_allocObject();
  memcpy((v26 + 16), v17, 0x6CuLL);
  sub_1B074E41C(v18, v26 + v19);
  v6 = v22;
  v7 = v30;
  v8 = v26 + v20;
  *v8 = v21;
  *(v8 + 4) = v6 & 1 & v7;

  v9 = swift_allocObject();
  v10 = v26;
  v31 = v9;
  *(v9 + 16) = v24;
  *(v9 + 24) = v10;

  v38 = v25;
  v39 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_1B074C0AC;
  v37 = &block_descriptor_228;
  v28 = _Block_copy(&aBlock);

  v29 = [v27 initWithBuilder_];
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5928](v29);
    v45 = v29;
    sub_1B074B764(v14);
    sub_1B09291C8(v17);
    MEMORY[0x1E69E5920](v45);

    return v29;
  }

  return result;
}

uint64_t sub_1B091B848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v258 = a1;
  v259 = a2;
  v243 = a3;
  v199 = sub_1B074E050;
  v200 = sub_1B03F7AE0;
  v201 = sub_1B0394C30;
  v202 = sub_1B0394C24;
  v203 = sub_1B074DFFC;
  v204 = sub_1B039BA88;
  v205 = sub_1B039BB94;
  v206 = sub_1B0394C24;
  v207 = sub_1B039BBA0;
  v208 = sub_1B039BC08;
  v209 = sub_1B06BA324;
  v210 = sub_1B074E0E4;
  v211 = sub_1B039BCF8;
  v212 = sub_1B07AB020;
  v213 = sub_1B039BC08;
  v214 = sub_1B0398F5C;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0399178;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0398F5C;
  v219 = sub_1B039BA94;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0399178;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0398F5C;
  v225 = sub_1B03991EC;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0398F5C;
  v228 = sub_1B03993BC;
  v229 = sub_1B0398F5C;
  v230 = sub_1B0398F5C;
  v231 = sub_1B039BCEC;
  v232 = sub_1B0398F5C;
  v233 = sub_1B0398F5C;
  v234 = sub_1B03991EC;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v273 = 0;
  v274 = 0;
  v272 = 0;
  v271 = 0;
  v235 = 0;
  v264 = 0uLL;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v284 = a4;
  v249 = a4;
  v244 = BYTE4(a4);
  v251 = 0;
  v236 = _s6LoggerVMa_1();
  v237 = (*(*(v236 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v238 = v108 - v237;
  v239 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v240 = v108 - v239;
  v241 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v242 = v108 - v241;
  v245 = sub_1B0E439A8();
  v246 = *(v245 - 8);
  v247 = v245 - 8;
  v248 = (*(v246 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v258);
  v250 = v108 - v248;
  v277 = v8;
  v276 = v9;
  v275 = v10;
  v273 = v249;
  v274 = v11 & 1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v258 setPhaseForResults_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v255 = sub_1B071C094();
  v254 = sub_1B0E46A48();
  v252 = v12;
  v253 = *(v259 + 64);
  MEMORY[0x1E69E5928](v253);
  v13 = v254;
  *v252 = v253;
  sub_1B0394964();
  v256 = v13;
  v257 = sub_1B0E451A8();

  [v258 setFailedItems_];
  MEMORY[0x1E69E5920](v257);
  result = swift_unknownObjectRelease();
  v279 = *(v259 + 40);
  v280 = *(v259 + 48);
  v281 = v279;
  v282 = v280;
  v260 = v279;
  if (v280)
  {
    if (v260)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v195 = 0;
      v188 = sub_1B0E46A48();
      v189 = sub_1B0E451A8();

      [v258 setFailedItems_];
      MEMORY[0x1E69E5920](v189);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v192 = sub_1B0E46A48();
      v190 = v15;
      v191 = *(v259 + 64);
      MEMORY[0x1E69E5928](v191);
      v16 = v192;
      *v190 = v191;
      sub_1B0394964();
      v193 = v16;
      v194 = sub_1B0E451A8();

      [v258 setCompletedItems_];
      MEMORY[0x1E69E5920](v194);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v196 = sub_1B086F238();
      v197 = sub_1B0E46A48();
      v198 = sub_1B0E451A8();

      [v258 setCreatedServerMessages_];
      MEMORY[0x1E69E5920](v198);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v187 = v281;
    v271 = HIDWORD(v281);
    v272 = v281;
    v278 = *(v259 + 80);
    sub_1B070B280(&v278, &v270);
    v283 = v278;
    if (*(&v278 + 1))
    {
      v179 = v283;
      v264 = v283;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v180 = sub_1B0E46A48();
      v181 = sub_1B0E451A8();

      [v258 setFailedItems_];
      MEMORY[0x1E69E5920](v181);
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v184 = sub_1B0E46A48();
      v182 = v17;
      v183 = *(v259 + 64);
      MEMORY[0x1E69E5928](v183);
      v18 = v184;
      *v182 = v183;
      sub_1B0394964();
      v185 = v18;
      v186 = sub_1B0E451A8();

      [v258 setCompletedItems_];
      MEMORY[0x1E69E5920](v186);
      swift_unknownObjectRelease();
      if ((v244 & 1) != 0 || (v178 = v249, v263 = v249, !static UIDValidity.__derived_struct_equals(_:_:)(SHIDWORD(v187), v249)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v166 = 0;
        v167 = sub_1B086F238();
        v168 = sub_1B0E46A48();
        v169 = sub_1B0E451A8();

        [v258 setCreatedServerMessages_];
        MEMORY[0x1E69E5920](v169);
        swift_unknownObjectRelease();
      }

      else
      {
        v170 = 0;
        sub_1B071FB18();
        v177 = sub_1B08C0C38();
        v262 = v177;
        v173 = sub_1B086F238();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1E69E5928](v177);
        v176 = sub_1B0917E74(v187, v179, *(&v179 + 1), v177);
        v261 = v176;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v172 = sub_1B0E46A48();
        v171 = v19;
        MEMORY[0x1E69E5928](v176);
        v20 = v172;
        *v171 = v176;
        sub_1B0394964();
        v174 = v20;
        v175 = sub_1B0E451A8();

        [v258 setCreatedServerMessages_];
        MEMORY[0x1E69E5920](v175);
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v176);
        MEMORY[0x1E69E5920](v177);
      }
    }

    else
    {
      (*(v246 + 16))(v250, v243, v245);
      sub_1B074B69C(v243, v242);
      sub_1B074B69C(v242, v240);
      sub_1B074E41C(v242, v238);
      v21 = (v240 + *(v236 + 20));
      v118 = *v21;
      v119 = *(v21 + 1);
      v120 = *(v21 + 1);
      v121 = *(v21 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v240);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v117 = 36;
      v137 = 7;
      v22 = swift_allocObject();
      v23 = v119;
      v24 = v120;
      v25 = v121;
      v124 = v22;
      *(v22 + 16) = v118;
      *(v22 + 20) = v23;
      *(v22 + 24) = v24;
      *(v22 + 32) = v25;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = swift_allocObject();
      v27 = v119;
      v28 = v120;
      v29 = v121;
      v116 = v26;
      *(v26 + 16) = v118;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;

      v136 = 32;
      v30 = swift_allocObject();
      v31 = v116;
      v128 = v30;
      *(v30 + 16) = v199;
      *(v30 + 24) = v31;
      sub_1B0394868();
      sub_1B0394868();

      v32 = swift_allocObject();
      v33 = v119;
      v34 = v120;
      v35 = v121;
      v36 = v32;
      v37 = v238;
      v132 = v36;
      *(v36 + 16) = v118;
      *(v36 + 20) = v33;
      *(v36 + 24) = v34;
      *(v36 + 32) = v35;
      sub_1B074B764(v37);
      v122 = swift_allocObject();
      *(v122 + 16) = v187;

      v38 = swift_allocObject();
      v39 = v122;
      v138 = v38;
      *(v38 + 16) = v200;
      *(v38 + 24) = v39;

      v164 = sub_1B0E43988();
      v165 = sub_1B0E458E8();
      v134 = 17;
      v140 = swift_allocObject();
      v126 = 16;
      *(v140 + 16) = 16;
      v141 = swift_allocObject();
      v135 = 4;
      *(v141 + 16) = 4;
      v40 = swift_allocObject();
      v123 = v40;
      *(v40 + 16) = v201;
      *(v40 + 24) = 0;
      v41 = swift_allocObject();
      v42 = v123;
      v142 = v41;
      *(v41 + 16) = v202;
      *(v41 + 24) = v42;
      v143 = swift_allocObject();
      *(v143 + 16) = 0;
      v144 = swift_allocObject();
      *(v144 + 16) = 1;
      v43 = swift_allocObject();
      v44 = v124;
      v125 = v43;
      *(v43 + 16) = v203;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v125;
      v145 = v45;
      *(v45 + 16) = v204;
      *(v45 + 24) = v46;
      v146 = swift_allocObject();
      *(v146 + 16) = v126;
      v147 = swift_allocObject();
      *(v147 + 16) = v135;
      v47 = swift_allocObject();
      v127 = v47;
      *(v47 + 16) = v205;
      *(v47 + 24) = 0;
      v48 = swift_allocObject();
      v49 = v127;
      v148 = v48;
      *(v48 + 16) = v206;
      *(v48 + 24) = v49;
      v149 = swift_allocObject();
      *(v149 + 16) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = v135;
      v50 = swift_allocObject();
      v51 = v128;
      v129 = v50;
      *(v50 + 16) = v207;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v129;
      v151 = v52;
      *(v52 + 16) = v208;
      *(v52 + 24) = v53;
      v152 = swift_allocObject();
      *(v152 + 16) = 112;
      v153 = swift_allocObject();
      v131 = 8;
      *(v153 + 16) = 8;
      v130 = swift_allocObject();
      *(v130 + 16) = 0x786F626C69616DLL;
      v54 = swift_allocObject();
      v55 = v130;
      v154 = v54;
      *(v54 + 16) = v209;
      *(v54 + 24) = v55;
      v155 = swift_allocObject();
      *(v155 + 16) = 37;
      v156 = swift_allocObject();
      *(v156 + 16) = v131;
      v56 = swift_allocObject();
      v57 = v132;
      v133 = v56;
      *(v56 + 16) = v210;
      *(v56 + 24) = v57;
      v58 = swift_allocObject();
      v59 = v133;
      v157 = v58;
      *(v58 + 16) = v211;
      *(v58 + 24) = v59;
      v158 = swift_allocObject();
      *(v158 + 16) = 0;
      v159 = swift_allocObject();
      *(v159 + 16) = v135;
      v60 = swift_allocObject();
      v61 = v138;
      v139 = v60;
      *(v60 + 16) = v212;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v139;
      v161 = v62;
      *(v62 + 16) = v213;
      *(v62 + 24) = v63;
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v160 = sub_1B0E46A48();
      v162 = v64;

      v65 = v140;
      v66 = v162;
      *v162 = v214;
      v66[1] = v65;

      v67 = v141;
      v68 = v162;
      v162[2] = v215;
      v68[3] = v67;

      v69 = v142;
      v70 = v162;
      v162[4] = v216;
      v70[5] = v69;

      v71 = v143;
      v72 = v162;
      v162[6] = v217;
      v72[7] = v71;

      v73 = v144;
      v74 = v162;
      v162[8] = v218;
      v74[9] = v73;

      v75 = v145;
      v76 = v162;
      v162[10] = v219;
      v76[11] = v75;

      v77 = v146;
      v78 = v162;
      v162[12] = v220;
      v78[13] = v77;

      v79 = v147;
      v80 = v162;
      v162[14] = v221;
      v80[15] = v79;

      v81 = v148;
      v82 = v162;
      v162[16] = v222;
      v82[17] = v81;

      v83 = v149;
      v84 = v162;
      v162[18] = v223;
      v84[19] = v83;

      v85 = v150;
      v86 = v162;
      v162[20] = v224;
      v86[21] = v85;

      v87 = v151;
      v88 = v162;
      v162[22] = v225;
      v88[23] = v87;

      v89 = v152;
      v90 = v162;
      v162[24] = v226;
      v90[25] = v89;

      v91 = v153;
      v92 = v162;
      v162[26] = v227;
      v92[27] = v91;

      v93 = v154;
      v94 = v162;
      v162[28] = v228;
      v94[29] = v93;

      v95 = v155;
      v96 = v162;
      v162[30] = v229;
      v96[31] = v95;

      v97 = v156;
      v98 = v162;
      v162[32] = v230;
      v98[33] = v97;

      v99 = v157;
      v100 = v162;
      v162[34] = v231;
      v100[35] = v99;

      v101 = v158;
      v102 = v162;
      v162[36] = v232;
      v102[37] = v101;

      v103 = v159;
      v104 = v162;
      v162[38] = v233;
      v104[39] = v103;

      v105 = v161;
      v106 = v162;
      v162[40] = v234;
      v106[41] = v105;
      sub_1B0394964();

      if (os_log_type_enabled(v164, v165))
      {
        v107 = v235;
        v109 = sub_1B0E45D78();
        v108[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v110 = sub_1B03949A8(0);
        v111 = sub_1B03949A8(1);
        v112 = &v269;
        v269 = v109;
        v113 = &v268;
        v268 = v110;
        v114 = &v267;
        v267 = v111;
        sub_1B0394A48(3, &v269);
        sub_1B0394A48(7, v112);
        v265 = v214;
        v266 = v140;
        sub_1B03949FC(&v265, v112, v113, v114);
        v115 = v107;
        if (v107)
        {

          __break(1u);
        }

        else
        {
          v265 = v215;
          v266 = v141;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[19] = 0;
          v265 = v216;
          v266 = v142;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[18] = 0;
          v265 = v217;
          v266 = v143;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[17] = 0;
          v265 = v218;
          v266 = v144;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[16] = 0;
          v265 = v219;
          v266 = v145;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[15] = 0;
          v265 = v220;
          v266 = v146;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[14] = 0;
          v265 = v221;
          v266 = v147;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[13] = 0;
          v265 = v222;
          v266 = v148;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[12] = 0;
          v265 = v223;
          v266 = v149;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[11] = 0;
          v265 = v224;
          v266 = v150;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[10] = 0;
          v265 = v225;
          v266 = v151;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[9] = 0;
          v265 = v226;
          v266 = v152;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[8] = 0;
          v265 = v227;
          v266 = v153;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[7] = 0;
          v265 = v228;
          v266 = v154;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[6] = 0;
          v265 = v229;
          v266 = v155;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[5] = 0;
          v265 = v230;
          v266 = v156;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[4] = 0;
          v265 = v231;
          v266 = v157;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[3] = 0;
          v265 = v232;
          v266 = v158;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[2] = 0;
          v265 = v233;
          v266 = v159;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v108[1] = 0;
          v265 = v234;
          v266 = v161;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          _os_log_impl(&dword_1B0389000, v164, v165, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Received a new UID %u from the server, but there’s no local destinationPersistentID.", v109, 0x31u);
          sub_1B03998A8(v110);
          sub_1B03998A8(v111);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v164);
      return (*(v246 + 8))(v250, v245);
    }
  }

  return result;
}

uint64_t sub_1B091DF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;
  v12[2] = a5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44AC8();

  [a1 setMessagePersistentID_];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [a1 setServerFlags_];
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v12[0] = a5;
  v10 = sub_1B07467B8();
  v5 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v12, MEMORY[0x1E69E7668], &type metadata for UID, v10, v5);
  [a1 setImapUID_];
  return swift_unknownObjectRelease();
}

void *sub_1B091E0AC(void *a1)
{
  sub_1B0929244(a1, v4);
  sub_1B09292C4(a1, v2);
  return sub_1B0929338(a1);
}

uint64_t sub_1B091E0EC()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48) & 1;
  return result;
}

uint64_t sub_1B091E0FC(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1B091E110()
{
  v2 = *(v0 + 56);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B091E144(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B091E198()
{
  v2 = *(v0 + 64);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B091E1CC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B091E230()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B091E268(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

void *sub_1B091E2B0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, int a11)
{
  memcpy(__dst, a1, sizeof(__dst));
  LOBYTE(v21[0]) = __dst[0];
  HIDWORD(v21[0]) = HIDWORD(__dst[0]);
  v21[1] = __dst[1];
  LODWORD(v21[2]) = __dst[2];
  v21[3] = __dst[3];
  v21[4] = __dst[4];
  v21[5] = a2;
  LOBYTE(v21[6]) = a3 & 1;
  v21[7] = a4;
  v21[8] = a5;
  LODWORD(v21[9]) = a6;
  v21[10] = a7;
  v21[11] = a8;
  v21[12] = a10;
  LODWORD(v21[13]) = a11;
  return memcpy(a9, v21, 0x6CuLL);
}

uint64_t sub_1B091E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a4;
  v13 = a1;
  v10 = a2;
  v11 = a3;
  v12 = sub_1B0929374;
  v8[1] = *v4;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v8[0] = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v8 - v8[0];
  v22 = MEMORY[0x1EEE9AC00](v13);
  v20 = v5;
  v21 = v6;
  v19 = v4;
  v17 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder);
  v18 = *(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder + 8);

  v16 = sub_1B09B0668();

  sub_1B0394784(v15 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v14);
  sub_1B091E6E0(v13, v10, v11, v17, v18, v16, v12, v15, v9, v14);
  sub_1B039480C(v14);
}

uint64_t sub_1B091E578(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  v12 = a2;
  v10 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31A0, &qword_1B0EA0998);
  sub_1B09B21DC(a1, a2, sub_1B091E674, 0, v3, &v8);
  LODWORD(v7) = v8;
  BYTE4(v7) = v9 & 1;
  return v7;
}

uint64_t sub_1B091E674@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B0A42CF0();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B091E6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v62 = a9;
  v45 = a1;
  v43 = a2;
  v44 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v55 = a7;
  v56 = a8;
  v38 = a10;
  v60 = sub_1B0929404;
  v64 = sub_1B09294E8;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v70 = 0;
  v36 = 0;
  v37 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v42 = &v36 - v37;
  v39 = *(_s6LoggerVMa_1() - 8);
  v47 = v39;
  v48 = *(v39 + 64);
  v40 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v38);
  v53 = &v36 - v40;
  v41 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v36 - v41;
  v80 = &v36 - v41;
  v79 = v45;
  v77 = v13;
  v78 = v14;
  v75 = v15;
  v76 = v16;
  v74 = v17;
  v72 = v18;
  v73 = v19;
  v71 = v12;
  v70 = v10;
  sub_1B0394784(v12, v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v42, v43, v44, v67);
  v69[1] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E31A8, &qword_1B0EA09A0);
  v21 = sub_1B092937C();
  MEMORY[0x1B27270C0](v69, v46, v21);
  v66 = &v68;
  v68 = v69[0];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B69C(v67, v53);

  v52 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v59 = 7;
  v54 = (v52 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v50;
  v24 = v51;
  v25 = v52;
  v26 = v22;
  v27 = v53;
  v61 = v26;
  v26[2] = v49;
  v26[3] = v23;
  v26[4] = v24;
  sub_1B074E41C(v27, v26 + v25);
  v28 = v56;
  v29 = v57;
  v30 = v58;
  v31 = v61;
  v32 = (v61 + v54);
  *v32 = v55;
  v32[1] = v28;
  *(v31 + v30) = v29;
  v33 = swift_allocObject();
  v34 = v61;
  v65 = v33;
  *(v33 + 16) = v60;
  *(v33 + 24) = v34;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E31B8, &qword_1B0EA09A8);
  sub_1B09294F4();
  sub_1B0E46718();

  sub_1B039E440(v66);
  return sub_1B074B764(v67);
}

uint64_t sub_1B091EB8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void), uint64_t a9)
{
  v39 = a1;
  v38 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v31 = a8;
  v32 = a9;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v45 = 0;
  v46 = 0;
  v40 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v20 - v40;
  v56 = MEMORY[0x1EEE9AC00](v39);
  v54 = v9;
  v55 = v10 & 1;
  v52 = v11;
  v53 = v12;
  v51 = v13;
  v50 = v14;
  v48 = v15;
  v49 = v16;
  v42 = v57;
  sub_1B09B24E0(v56, v9, v10 & 1, v11, v12, v13, v14, v57);
  memcpy(__dst, v42, 0x6CuLL);
  if (__dst[1])
  {
    v26 = v59;
    memcpy(v59, __dst, 0x6CuLL);

    v21 = v59[12];
    HIDWORD(v20) = v59[13];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = v31(v21, HIDWORD(v20));
    v22 = v47;
    v23 = BYTE4(v47);

    v45 = v22;
    v24 = 1;
    v46 = v23 & 1;

    v25 = v59[7];
    MEMORY[0x1E69E5928](v59[7]);
    sub_1B074EFAC();
    sub_1B0928F6C(v26, &v44);
    sub_1B074B69C(v37, v41);
    LODWORD(v43) = v22;
    BYTE4(v43) = v23 & 1 & v24;
    sub_1B091B440(v26, v43, v41);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v25);
    v28 = v17;
    v27 = v18;
    sub_1B09291C8(v26);
    v29 = v28;
    v30 = v27;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  return v29;
}

uint64_t sub_1B091EE48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(_BYTE *, void, void)@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  result = a2(__dst, *(a1 + 40), *(a1 + 48) & 1);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t sub_1B091EEC4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __b[3] = 0;
  __b[4] = 0;
  MEMORY[0x1E69E5928](a1);
  v25 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  v28 = [v25 stringValue];
  v26 = sub_1B0E44AD8();
  v27 = v3;
  MEMORY[0x1E69E5920](v25);
  __b[0] = v26;
  __b[1] = v27;
  MEMORY[0x1E69E5920](v28);
  if ([a1 transferType] >= 2)
  {
    goto LABEL_14;
  }

  v30 = sub_1B0917A3C();
  if ((v30 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v4 = [a2 destinationMessage];
  v22 = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = [v22 persistentID];
    v19 = v5;
    if (v5)
    {
      v15 = sub_1B0E44AD8();
      v16 = v6;
      MEMORY[0x1E69E5920](v19);
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    swift_unknownObjectRelease();
    v20 = v17;
    v21 = v18;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (!v21)
  {
LABEL_14:
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B03B1198(__b);
    result = sub_1B03B1198(&__b[3]);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    LODWORD(__b[2]) = v30;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __b[3] = v20;
    __b[4] = v21;

    v8 = __b[0];
    v9 = __b[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    result = sub_1B08283D8(__b);
    v10 = v8;
    v11 = v9;
    v12 = v30;
    v13 = v20;
    v14 = v21;
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v14;
  return result;
}

uint64_t sub_1B091F2F8(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = sub_1B0E44838();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v15[0], v2, a1, a2);
  sub_1B03B1198(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = sub_1B0E44838();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1B2726DE0](v14[0], v3, a1, a2);
  sub_1B03B1198(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13[0] = sub_1B0E44838();
  v13[1] = v4;
  v7 = MEMORY[0x1B2726DE0](v13[0], v4, a1, a2);
  sub_1B03B1198(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

uint64_t sub_1B091F64C(uint64_t a1)
{
  v17 = a1;
  v36 = 0;
  v35 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3248, &unk_1B0EA1050);
  v18 = *(v28 - 8);
  v19 = v28 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v23 = v6 - v20;
  v36 = v2;
  v35 = v1;
  v21 = v2[3];
  v22 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v21);
  sub_1B09295F8();
  sub_1B0E46D48();
  v3 = v25;
  v26 = *v24;
  v27 = v24[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34 = 0;
  sub_1B0E46928();
  v29 = v3;
  v30 = v3;
  if (v3)
  {
    v7 = v30;

    result = (*(v18 + 8))(v23, v28);
    v8 = v7;
  }

  else
  {

    v37 = *(v24 + 4);
    v14 = &v33;
    v33 = v37;
    v13 = &v32;
    v32 = 1;
    sub_1B092A620();
    v4 = v29;
    sub_1B0E46958();
    v15 = v4;
    v16 = v4;
    if (v4)
    {
      v6[2] = v16;
    }

    else
    {
      v9 = v24[3];
      v10 = v24[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = 2;
      sub_1B0E468C8();
      v11 = 0;
      v12 = 0;
    }

    return (*(v18 + 8))(v23, v28);
  }

  return result;
}

uint64_t sub_1B091F984@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v53 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3238, &qword_1B0EA1048);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v43 = &v15 - v42;
  v53 = v2;
  v57 = 0;
  v58 = 0;
  v45 = v2[3];
  v46 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v45);
  sub_1B09295F8();
  v3 = v44;
  sub_1B0E46D18();
  v47 = v3;
  v48 = v3;
  if (v3)
  {
    v18 = v48;
    v19 = 4;
  }

  else
  {
    v52 = 0;
    v4 = sub_1B0E46848();
    v33 = 0;
    v34 = v4;
    v35 = v5;
    v36 = 0;
    v54 = v4;
    v55 = v5;
    v30 = &v50;
    v50 = 1;
    sub_1B092A5A8();
    v6 = v33;
    sub_1B0E46868();
    v31 = v6;
    v32 = v6;
    if (!v6)
    {
      v25 = v51;
      v56 = v51;
      v49 = 2;
      v7 = sub_1B0E46818();
      v26 = 0;
      v27 = v7;
      v28 = v8;
      v29 = 0;
      v24 = v8;
      v23 = v7;
      v20 = &v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v57 = v23;
      v58 = v24;

      (*(v40 + 8))(v43, v39);
      v21 = v54;
      v22 = v55;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_destroy_boxed_opaque_existential_0(v38);
      result = sub_1B08283D8(v20);
      v10 = v22;
      v11 = v25;
      v12 = v23;
      v13 = v37;
      v14 = v24;
      *v37 = v21;
      v13[1] = v10;
      *(v13 + 4) = v11;
      v13[3] = v12;
      v13[4] = v14;
      return result;
    }

    v17 = v32;
    (*(v40 + 8))(v43, v39);
    v18 = v17;
    v19 = 5;
  }

  v16 = v19;
  v15 = v18;
  __swift_destroy_boxed_opaque_existential_0(v38);
  if (v16)
  {
    sub_1B03B1198(&v54);
  }

  return sub_1B03B1198(&v57);
}

uint64_t sub_1B091FE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B091F2F8(a1, a2);
  *a3 = result;
  return result;
}

void *sub_1B091FEDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B091F984(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x28uLL);
  }

  return result;
}

uint64_t sub_1B091FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  v66 = a1;
  v65 = a2;
  v74 = sub_1B0929674;
  v94 = sub_1B092967C;
  v64 = sub_1B092973C;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  memset(v119, 0, sizeof(v119));
  v118 = 0;
  v106 = 0;
  v71 = 0;
  v67 = *(_s6LoggerVMa_1() - 8);
  v83 = v67;
  v84 = *(v67 + 64);
  v68 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v66);
  v88 = &v39 - v68;
  v69 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v99 = &v39 - v69;
  v132 = &v39 - v69;
  v131 = v6;
  v130 = v7;
  v129 = v3;
  v121[1] = v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v8 = sub_1B071CEA8();
  MEMORY[0x1B27270C0](v121, v70, v8);
  v75 = &v120;
  v120 = v121[0];

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B60, &unk_1B0EA09B0);
  v73 = sub_1B074AEA4();
  sub_1B074AF08();
  sub_1B0E46718();

  sub_1B039E440(v75);
  v76 = v122;
  v77 = v123;
  v78 = v124;
  v79 = v125;
  v80 = v126;
  v81 = v127;
  v82 = v128;
  v119[0] = v122;
  v119[1] = v123;
  v119[2] = v124;
  v119[3] = v125;
  v119[4] = v126;
  v119[5] = v127;
  v119[6] = v128;
  v85 = 7;
  v91 = swift_allocObject();
  v118 = v91 + 2;
  v9 = sub_1B07B681C();
  v10 = v76;
  v11 = v77;
  v12 = v78;
  v13 = v79;
  v14 = v80;
  v15 = v81;
  v16 = v82;
  v17 = v90;
  v18 = v9;
  v19 = v91;
  v21 = v20;
  v22 = v99;
  v91[2] = v18;
  v19[3] = v21;
  v19[4] = v23;
  v19[5] = v24;
  v108 = v10;
  v109 = v11;
  v110 = v12;
  v111 = v13;
  v112 = v14;
  v113 = v15;
  v114 = v16;
  sub_1B074B69C(v17 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v22);
  sub_1B074B69C(v99, v88);

  v86 = *(v83 + 80);
  v87 = (v86 + 16) & ~v86;
  v89 = (v87 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_1B074E41C(v88, v95 + v87);
  v25 = v91;
  v26 = v92;
  v27 = v95;
  v28 = v99;
  *(v95 + v89) = v90;
  *(v27 + v26) = v25;
  sub_1B074B764(v28);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1B68, &qword_1B0E9AF90);
  sub_1B074AF90();
  v96 = &v115;
  sub_1B0E46718();

  v97 = __dst;
  v98 = 104;
  memcpy(__dst, v96, sizeof(__dst));
  memcpy(v107, __dst, sizeof(v107));
  v106 = v99;
  sub_1B074B69C(v90 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v99);
  sub_1B074B69C(v99, v88);

  v40 = (v86 + 16) & ~v86;
  v41 = (v40 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_1B074E41C(v88, v46 + v40);
  v29 = v42;
  v30 = v46;
  v31 = v91;
  v32 = v99;
  *(v46 + v41) = v90;
  *(v30 + v29) = v31;
  sub_1B074B764(v32);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31D8, &qword_1B0EA09C0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E35D0, &qword_1B0EA0980);
  v45 = sub_1B09297FC();
  sub_1B0929884();
  v48 = &v116;
  v47 = v107;
  sub_1B0E46748();

  sub_1B092990C(v47);
  v49 = v104;
  v50 = 120;
  memcpy(v104, v48, sizeof(v104));
  memcpy(v103, v104, sizeof(v103));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E31E0, &qword_1B0EA09C8);
  sub_1B0929980();
  v52 = &v117;
  sub_1B0E45738();
  v57 = v105;
  v53 = 168;
  memcpy(v105, v52, sizeof(v105));
  sub_1B0929D20(v105, &v102);
  v55 = v101;
  memcpy(v101, v57, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3218, &qword_1B0EA09F0);
  sub_1B0929EB0();
  v58 = sub_1B0E45378();
  v56 = &v100;
  swift_beginAccess();
  v59 = v91[2];
  v60 = v91[3];
  v61 = v91[4];
  v62 = v91[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B0929F38(v57);

  result = v58;
  v34 = v59;
  v35 = v60;
  v36 = v61;
  v37 = v63;
  v38 = v62;
  *v63 = v58;
  v37[1] = v34;
  v37[2] = v35;
  v37[3] = v36;
  v37[4] = v38;
  return result;
}

id sub_1B092070C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = a3;
  v7 = a1;
  v5[1] = a2;
  v15 = 0;
  v14 = 0;
  v10 = sub_1B0E42E68();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = v5 - v6;
  v15 = *v7;
  v14 = v3;
  (*(v8 + 16))();
  v13 = sub_1B0829F6C(v11);
  (*(v8 + 8))(v11, v10);
  result = v13;
  *v12 = v13;
  return result;
}

uint64_t sub_1B092083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v586 = a5;
  v724 = a1;
  v723 = a2;
  v721 = a3;
  v722 = a4;
  v587 = sub_1B074E050;
  v588 = sub_1B0394C30;
  v589 = sub_1B0394C24;
  v590 = sub_1B074DFFC;
  v591 = sub_1B039BA88;
  v592 = sub_1B039BB94;
  v593 = sub_1B0394C24;
  v594 = sub_1B039BBA0;
  v595 = sub_1B039BC08;
  v596 = 0x786F626C69616DLL;
  v597 = sub_1B06BA324;
  v598 = sub_1B074E0E4;
  v599 = sub_1B039BCF8;
  v600 = sub_1B092A7B4;
  v601 = sub_1B070B324;
  v602 = sub_1B0398F5C;
  v603 = sub_1B0398F5C;
  v604 = sub_1B0399178;
  v605 = sub_1B0398F5C;
  v606 = sub_1B0398F5C;
  v607 = sub_1B039BA94;
  v608 = sub_1B0398F5C;
  v609 = sub_1B0398F5C;
  v610 = sub_1B0399178;
  v611 = sub_1B0398F5C;
  v612 = sub_1B0398F5C;
  v613 = sub_1B03991EC;
  v614 = sub_1B0398F5C;
  v615 = sub_1B0398F5C;
  v616 = sub_1B03993BC;
  v617 = sub_1B0398F5C;
  v618 = sub_1B0398F5C;
  v619 = sub_1B039BCEC;
  v620 = sub_1B0398F5C;
  v621 = sub_1B0398F5C;
  v622 = sub_1B070B4B4;
  v623 = sub_1B074E050;
  v624 = sub_1B092A7BC;
  v625 = sub_1B0394C24;
  v626 = sub_1B074DFFC;
  v627 = sub_1B039BA88;
  v628 = sub_1B0394C24;
  v629 = sub_1B039BBA0;
  v630 = sub_1B039BC08;
  v631 = sub_1B06BA324;
  v632 = sub_1B074E0E4;
  v633 = sub_1B039BCF8;
  v634 = sub_1B03FB440;
  v635 = sub_1B039BCF8;
  v636 = sub_1B092A7B4;
  v637 = sub_1B070B324;
  v638 = sub_1B0398F5C;
  v639 = sub_1B0398F5C;
  v640 = sub_1B0399178;
  v641 = sub_1B0398F5C;
  v642 = sub_1B0398F5C;
  v643 = sub_1B039BA94;
  v644 = sub_1B0398F5C;
  v645 = sub_1B0398F5C;
  v646 = sub_1B0399178;
  v647 = sub_1B0398F5C;
  v648 = sub_1B0398F5C;
  v649 = sub_1B03991EC;
  v650 = sub_1B0398F5C;
  v651 = sub_1B0398F5C;
  v652 = sub_1B03993BC;
  v653 = sub_1B0398F5C;
  v654 = sub_1B0398F5C;
  v655 = sub_1B039BCEC;
  v656 = sub_1B0398F5C;
  v657 = sub_1B0398F5C;
  v658 = sub_1B039BCEC;
  v659 = sub_1B0398F5C;
  v660 = sub_1B0398F5C;
  v661 = sub_1B070B4B4;
  v662 = sub_1B074E050;
  v663 = sub_1B092A7BC;
  v664 = sub_1B0394C24;
  v665 = sub_1B074DFFC;
  v666 = sub_1B039BA88;
  v667 = sub_1B0394C24;
  v668 = sub_1B039BBA0;
  v669 = sub_1B039BC08;
  v670 = sub_1B06BA324;
  v671 = sub_1B074E0E4;
  v672 = sub_1B039BCF8;
  v673 = sub_1B03FB440;
  v674 = sub_1B039BCF8;
  v675 = sub_1B092A7B4;
  v676 = sub_1B070B324;
  v677 = sub_1B0398F5C;
  v678 = sub_1B0398F5C;
  v679 = sub_1B0399178;
  v680 = sub_1B0398F5C;
  v681 = sub_1B0398F5C;
  v682 = sub_1B039BA94;
  v683 = sub_1B0398F5C;
  v684 = sub_1B0398F5C;
  v685 = sub_1B0399178;
  v686 = sub_1B0398F5C;
  v687 = sub_1B0398F5C;
  v688 = sub_1B03991EC;
  v689 = sub_1B0398F5C;
  v690 = sub_1B0398F5C;
  v691 = sub_1B03993BC;
  v692 = sub_1B0398F5C;
  v693 = sub_1B0398F5C;
  v694 = sub_1B039BCEC;
  v695 = sub_1B0398F5C;
  v696 = sub_1B0398F5C;
  v697 = sub_1B039BCEC;
  v698 = sub_1B0398F5C;
  v699 = sub_1B0398F5C;
  v700 = sub_1B070B4B4;
  v771 = 0;
  v770 = 0;
  v769 = 0;
  v768 = 0;
  v767 = 0;
  v701 = 0;
  v741 = 0;
  v742 = 0;
  v736 = 0;
  v716 = 0;
  v702 = _s6LoggerVMa_1();
  v703 = (*(*(v702 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v704 = v311 - v703;
  v705 = sub_1B0E439A8();
  v706 = *(v705 - 8);
  v707 = v705 - 8;
  v708 = (*(v706 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v716);
  v709 = v311 - v708;
  v710 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v711 = v311 - v710;
  v712 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v713 = v311 - v712;
  v9 = _s18MailboxPersistenceVMa();
  v714 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v715 = v311 - v714;
  v717 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v716);
  v718 = v311 - v717;
  v719 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v720 = v311 - v719;
  v725 = sub_1B0E42E68();
  v727 = *(v725 - 8);
  v726 = v725 - 8;
  v728 = v727;
  v729 = *(v727 + 64);
  v730 = (v729 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v724);
  v731 = v311 - v730;
  v732 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v733 = v311 - v732;
  v771 = v311 - v732;
  v734 = *v14;
  v770 = v734;
  v769 = v15;
  v768 = v16;
  v767 = v17 + 16;
  v735 = [v734 destinationMailboxURL];
  if (v735)
  {
    v585 = v735;
    v584 = v735;
    sub_1B0E42DE8();
    (*(v727 + 32))(v720, v731, v725);
    (*(v727 + 56))(v720, 0, 1, v725);
    MEMORY[0x1E69E5920](v584);
  }

  else
  {
    (*(v727 + 56))(v720, 1, 1, v725);
  }

  if ((*(v727 + 48))(v720, 1, v725) == 1)
  {
    v226 = v709;
    sub_1B06E3800(v720);
    (*(v706 + 16))(v226, v723, v705);

    sub_1B074B69C(v721 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v704);
    v227 = (v704 + *(v702 + 20));
    v322 = *v227;
    v323 = *(v227 + 1);
    v324 = *(v227 + 1);
    v325 = *(v227 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v704);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v321 = 36;
    v341 = 7;
    v228 = swift_allocObject();
    v229 = v323;
    v230 = v324;
    v231 = v325;
    v327 = v228;
    *(v228 + 16) = v322;
    *(v228 + 20) = v229;
    *(v228 + 24) = v230;
    *(v228 + 32) = v231;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v232 = swift_allocObject();
    v233 = v323;
    v234 = v324;
    v235 = v325;
    v320 = v232;
    *(v232 + 16) = v322;
    *(v232 + 20) = v233;
    *(v232 + 24) = v234;
    *(v232 + 32) = v235;

    v340 = 32;
    v236 = swift_allocObject();
    v237 = v320;
    v332 = v236;
    *(v236 + 16) = v587;
    *(v236 + 24) = v237;
    sub_1B0394868();
    sub_1B0394868();

    v238 = swift_allocObject();
    v239 = v323;
    v240 = v324;
    v241 = v325;
    v336 = v238;
    *(v238 + 16) = v322;
    *(v238 + 20) = v239;
    *(v238 + 24) = v240;
    *(v238 + 32) = v241;

    MEMORY[0x1E69E5928](v734);
    v334 = 24;
    v342 = swift_allocObject();
    *(v342 + 16) = v734;
    v368 = sub_1B0E43988();
    v369 = sub_1B0E458E8();
    v338 = 17;
    v344 = swift_allocObject();
    v329 = 16;
    *(v344 + 16) = 16;
    v345 = swift_allocObject();
    v331 = 4;
    *(v345 + 16) = 4;
    v242 = swift_allocObject();
    v326 = v242;
    *(v242 + 16) = v588;
    *(v242 + 24) = 0;
    v243 = swift_allocObject();
    v244 = v326;
    v346 = v243;
    *(v243 + 16) = v589;
    *(v243 + 24) = v244;
    v347 = swift_allocObject();
    *(v347 + 16) = 0;
    v348 = swift_allocObject();
    *(v348 + 16) = 1;
    v245 = swift_allocObject();
    v246 = v327;
    v328 = v245;
    *(v245 + 16) = v590;
    *(v245 + 24) = v246;
    v247 = swift_allocObject();
    v248 = v328;
    v349 = v247;
    *(v247 + 16) = v591;
    *(v247 + 24) = v248;
    v350 = swift_allocObject();
    *(v350 + 16) = v329;
    v351 = swift_allocObject();
    *(v351 + 16) = v331;
    v249 = swift_allocObject();
    v330 = v249;
    *(v249 + 16) = v592;
    *(v249 + 24) = 0;
    v250 = swift_allocObject();
    v251 = v330;
    v352 = v250;
    *(v250 + 16) = v593;
    *(v250 + 24) = v251;
    v353 = swift_allocObject();
    *(v353 + 16) = 0;
    v354 = swift_allocObject();
    *(v354 + 16) = v331;
    v252 = swift_allocObject();
    v253 = v332;
    v333 = v252;
    *(v252 + 16) = v594;
    *(v252 + 24) = v253;
    v254 = swift_allocObject();
    v255 = v333;
    v355 = v254;
    *(v254 + 16) = v595;
    *(v254 + 24) = v255;
    v356 = swift_allocObject();
    *(v356 + 16) = 112;
    v357 = swift_allocObject();
    v339 = 8;
    *(v357 + 16) = 8;
    v335 = swift_allocObject();
    *(v335 + 16) = v596;
    v256 = swift_allocObject();
    v257 = v335;
    v358 = v256;
    *(v256 + 16) = v597;
    *(v256 + 24) = v257;
    v359 = swift_allocObject();
    *(v359 + 16) = 37;
    v360 = swift_allocObject();
    *(v360 + 16) = v339;
    v258 = swift_allocObject();
    v259 = v336;
    v337 = v258;
    *(v258 + 16) = v598;
    *(v258 + 24) = v259;
    v260 = swift_allocObject();
    v261 = v337;
    v361 = v260;
    *(v260 + 16) = v599;
    *(v260 + 24) = v261;
    v362 = swift_allocObject();
    *(v362 + 16) = 64;
    v363 = swift_allocObject();
    *(v363 + 16) = v339;
    v262 = swift_allocObject();
    v263 = v342;
    v343 = v262;
    *(v262 + 16) = v600;
    *(v262 + 24) = v263;
    v264 = swift_allocObject();
    v265 = v343;
    v365 = v264;
    *(v264 + 16) = v601;
    *(v264 + 24) = v265;
    v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v364 = sub_1B0E46A48();
    v366 = v266;

    v267 = v344;
    v268 = v366;
    *v366 = v602;
    v268[1] = v267;

    v269 = v345;
    v270 = v366;
    v366[2] = v603;
    v270[3] = v269;

    v271 = v346;
    v272 = v366;
    v366[4] = v604;
    v272[5] = v271;

    v273 = v347;
    v274 = v366;
    v366[6] = v605;
    v274[7] = v273;

    v275 = v348;
    v276 = v366;
    v366[8] = v606;
    v276[9] = v275;

    v277 = v349;
    v278 = v366;
    v366[10] = v607;
    v278[11] = v277;

    v279 = v350;
    v280 = v366;
    v366[12] = v608;
    v280[13] = v279;

    v281 = v351;
    v282 = v366;
    v366[14] = v609;
    v282[15] = v281;

    v283 = v352;
    v284 = v366;
    v366[16] = v610;
    v284[17] = v283;

    v285 = v353;
    v286 = v366;
    v366[18] = v611;
    v286[19] = v285;

    v287 = v354;
    v288 = v366;
    v366[20] = v612;
    v288[21] = v287;

    v289 = v355;
    v290 = v366;
    v366[22] = v613;
    v290[23] = v289;

    v291 = v356;
    v292 = v366;
    v366[24] = v614;
    v292[25] = v291;

    v293 = v357;
    v294 = v366;
    v366[26] = v615;
    v294[27] = v293;

    v295 = v358;
    v296 = v366;
    v366[28] = v616;
    v296[29] = v295;

    v297 = v359;
    v298 = v366;
    v366[30] = v617;
    v298[31] = v297;

    v299 = v360;
    v300 = v366;
    v366[32] = v618;
    v300[33] = v299;

    v301 = v361;
    v302 = v366;
    v366[34] = v619;
    v302[35] = v301;

    v303 = v362;
    v304 = v366;
    v366[36] = v620;
    v304[37] = v303;

    v305 = v363;
    v306 = v366;
    v366[38] = v621;
    v306[39] = v305;

    v307 = v365;
    v308 = v366;
    v366[40] = v622;
    v308[41] = v307;
    sub_1B0394964();

    if (os_log_type_enabled(v368, v369))
    {
      v309 = v701;
      v313 = sub_1B0E45D78();
      v311[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v312 = 1;
      v314 = sub_1B03949A8(1);
      v315 = sub_1B03949A8(v312);
      v316 = &v764;
      v764 = v313;
      v317 = &v763;
      v763 = v314;
      v318 = &v762;
      v762 = v315;
      sub_1B0394A48(3, &v764);
      sub_1B0394A48(7, v316);
      v760 = v602;
      v761 = v344;
      sub_1B03949FC(&v760, v316, v317, v318);
      v319 = v309;
      if (v309)
      {

        __break(1u);
      }

      else
      {
        v760 = v603;
        v761 = v345;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[22] = 0;
        v760 = v604;
        v761 = v346;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[21] = 0;
        v760 = v605;
        v761 = v347;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[20] = 0;
        v760 = v606;
        v761 = v348;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[19] = 0;
        v760 = v607;
        v761 = v349;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[18] = 0;
        v760 = v608;
        v761 = v350;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[17] = 0;
        v760 = v609;
        v761 = v351;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[16] = 0;
        v760 = v610;
        v761 = v352;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[15] = 0;
        v760 = v611;
        v761 = v353;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[14] = 0;
        v760 = v612;
        v761 = v354;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[13] = 0;
        v760 = v613;
        v761 = v355;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[12] = 0;
        v760 = v614;
        v761 = v356;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[11] = 0;
        v760 = v615;
        v761 = v357;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[10] = 0;
        v760 = v616;
        v761 = v358;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[9] = 0;
        v760 = v617;
        v761 = v359;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[8] = 0;
        v760 = v618;
        v761 = v360;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[7] = 0;
        v760 = v619;
        v761 = v361;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[6] = 0;
        v760 = v620;
        v761 = v362;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[5] = 0;
        v760 = v621;
        v761 = v363;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        v311[4] = 0;
        v760 = v622;
        v761 = v365;
        sub_1B03949FC(&v760, &v764, &v763, &v762);
        _os_log_impl(&dword_1B0389000, v368, v369, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Action has no target mailbox for move/copy action %@", v313, 0x35u);
        v311[3] = 1;
        sub_1B03998A8(v314);
        sub_1B03998A8(v315);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v368);
    (*(v706 + 8))(v709, v705);
    MEMORY[0x1E69E5928](v734);
    v311[0] = [v734 persistentID];
    MEMORY[0x1E69E5920](v734);
    v311[1] = v766;
    v766[0] = v311[0];
    v311[2] = &v765;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
    sub_1B0E454D8();
    swift_endAccess();
    result = MEMORY[0x1E69E5920](v766[1]);
    v310 = v586;
    *v586 = 0;
    v310[1] = 0;
    v310[2] = 0;
    v310[3] = 0;
    v310[4] = 0;
  }

  else
  {
    v18 = v715;
    v577 = *(v727 + 32);
    v578 = v727 + 32;
    v577(v733, v720, v725);
    sub_1B03F4D78(v721 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v18);
    v579 = *(v727 + 16);
    v580 = v727 + 16;
    v579(v718, v733, v725);
    v581 = *(v727 + 56);
    v582 = v727 + 56;
    v583 = 1;
    v581(v718, 0);
    sub_1B07BF670(v718, &v758);
    sub_1B06E3800(v718);
    sub_1B03F4F08(v715);
    v756[2] = v758;
    v757 = v759 & 1 & v583;
    v576 = v757 == 0;
    if (v757)
    {
      (*(v706 + 16))(v711, v723, v705);

      sub_1B074B69C(v721 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v704);
      v127 = (v704 + *(v702 + 20));
      v405 = *v127;
      v406 = *(v127 + 1);
      v407 = *(v127 + 1);
      v408 = *(v127 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v704);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v404 = 36;
      v427 = 7;
      v128 = swift_allocObject();
      v129 = v406;
      v130 = v407;
      v131 = v408;
      v412 = v128;
      *(v128 + 16) = v405;
      *(v128 + 20) = v129;
      *(v128 + 24) = v130;
      *(v128 + 32) = v131;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v132 = swift_allocObject();
      v133 = v406;
      v134 = v407;
      v135 = v408;
      v403 = v132;
      *(v132 + 16) = v405;
      *(v132 + 20) = v133;
      *(v132 + 24) = v134;
      *(v132 + 32) = v135;

      v426 = 32;
      v136 = swift_allocObject();
      v137 = v403;
      v417 = v136;
      *(v136 + 16) = v623;
      *(v136 + 24) = v137;
      sub_1B0394868();
      sub_1B0394868();

      v138 = swift_allocObject();
      v139 = v406;
      v140 = v407;
      v141 = v408;
      v420 = v138;
      *(v138 + 16) = v405;
      *(v138 + 20) = v139;
      *(v138 + 24) = v140;
      *(v138 + 32) = v141;

      v579(v731, v733, v725);
      v409 = (*(v728 + 80) + 16) & ~*(v728 + 80);
      v410 = swift_allocObject();
      v577((v410 + v409), v731, v725);

      v142 = swift_allocObject();
      v143 = v410;
      v422 = v142;
      *(v142 + 16) = v624;
      *(v142 + 24) = v143;

      MEMORY[0x1E69E5928](v734);
      v430 = 24;
      v428 = swift_allocObject();
      *(v428 + 16) = v734;
      v458 = sub_1B0E43988();
      v459 = sub_1B0E45908();
      v424 = 17;
      v431 = swift_allocObject();
      v414 = 16;
      *(v431 + 16) = 16;
      v432 = swift_allocObject();
      v416 = 4;
      *(v432 + 16) = 4;
      v144 = swift_allocObject();
      v411 = v144;
      *(v144 + 16) = v588;
      *(v144 + 24) = 0;
      v145 = swift_allocObject();
      v146 = v411;
      v433 = v145;
      *(v145 + 16) = v625;
      *(v145 + 24) = v146;
      v434 = swift_allocObject();
      *(v434 + 16) = 0;
      v435 = swift_allocObject();
      *(v435 + 16) = 1;
      v147 = swift_allocObject();
      v148 = v412;
      v413 = v147;
      *(v147 + 16) = v626;
      *(v147 + 24) = v148;
      v149 = swift_allocObject();
      v150 = v413;
      v436 = v149;
      *(v149 + 16) = v627;
      *(v149 + 24) = v150;
      v437 = swift_allocObject();
      *(v437 + 16) = v414;
      v438 = swift_allocObject();
      *(v438 + 16) = v416;
      v151 = swift_allocObject();
      v415 = v151;
      *(v151 + 16) = v592;
      *(v151 + 24) = 0;
      v152 = swift_allocObject();
      v153 = v415;
      v439 = v152;
      *(v152 + 16) = v628;
      *(v152 + 24) = v153;
      v440 = swift_allocObject();
      *(v440 + 16) = 0;
      v441 = swift_allocObject();
      *(v441 + 16) = v416;
      v154 = swift_allocObject();
      v155 = v417;
      v418 = v154;
      *(v154 + 16) = v629;
      *(v154 + 24) = v155;
      v156 = swift_allocObject();
      v157 = v418;
      v442 = v156;
      *(v156 + 16) = v630;
      *(v156 + 24) = v157;
      v443 = swift_allocObject();
      *(v443 + 16) = 112;
      v444 = swift_allocObject();
      v425 = 8;
      *(v444 + 16) = 8;
      v419 = swift_allocObject();
      *(v419 + 16) = v596;
      v158 = swift_allocObject();
      v159 = v419;
      v445 = v158;
      *(v158 + 16) = v631;
      *(v158 + 24) = v159;
      v446 = swift_allocObject();
      *(v446 + 16) = 37;
      v447 = swift_allocObject();
      *(v447 + 16) = v425;
      v160 = swift_allocObject();
      v161 = v420;
      v421 = v160;
      *(v160 + 16) = v632;
      *(v160 + 24) = v161;
      v162 = swift_allocObject();
      v163 = v421;
      v448 = v162;
      *(v162 + 16) = v633;
      *(v162 + 24) = v163;
      v449 = swift_allocObject();
      *(v449 + 16) = 32;
      v450 = swift_allocObject();
      *(v450 + 16) = v425;
      v164 = swift_allocObject();
      v165 = v422;
      v423 = v164;
      *(v164 + 16) = v634;
      *(v164 + 24) = v165;
      v166 = swift_allocObject();
      v167 = v423;
      v451 = v166;
      *(v166 + 16) = v635;
      *(v166 + 24) = v167;
      v452 = swift_allocObject();
      *(v452 + 16) = 64;
      v453 = swift_allocObject();
      *(v453 + 16) = v425;
      v168 = swift_allocObject();
      v169 = v428;
      v429 = v168;
      *(v168 + 16) = v636;
      *(v168 + 24) = v169;
      v170 = swift_allocObject();
      v171 = v429;
      v455 = v170;
      *(v170 + 16) = v637;
      *(v170 + 24) = v171;
      v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v454 = sub_1B0E46A48();
      v456 = v172;

      v173 = v431;
      v174 = v456;
      *v456 = v638;
      v174[1] = v173;

      v175 = v432;
      v176 = v456;
      v456[2] = v639;
      v176[3] = v175;

      v177 = v433;
      v178 = v456;
      v456[4] = v640;
      v178[5] = v177;

      v179 = v434;
      v180 = v456;
      v456[6] = v641;
      v180[7] = v179;

      v181 = v435;
      v182 = v456;
      v456[8] = v642;
      v182[9] = v181;

      v183 = v436;
      v184 = v456;
      v456[10] = v643;
      v184[11] = v183;

      v185 = v437;
      v186 = v456;
      v456[12] = v644;
      v186[13] = v185;

      v187 = v438;
      v188 = v456;
      v456[14] = v645;
      v188[15] = v187;

      v189 = v439;
      v190 = v456;
      v456[16] = v646;
      v190[17] = v189;

      v191 = v440;
      v192 = v456;
      v456[18] = v647;
      v192[19] = v191;

      v193 = v441;
      v194 = v456;
      v456[20] = v648;
      v194[21] = v193;

      v195 = v442;
      v196 = v456;
      v456[22] = v649;
      v196[23] = v195;

      v197 = v443;
      v198 = v456;
      v456[24] = v650;
      v198[25] = v197;

      v199 = v444;
      v200 = v456;
      v456[26] = v651;
      v200[27] = v199;

      v201 = v445;
      v202 = v456;
      v456[28] = v652;
      v202[29] = v201;

      v203 = v446;
      v204 = v456;
      v456[30] = v653;
      v204[31] = v203;

      v205 = v447;
      v206 = v456;
      v456[32] = v654;
      v206[33] = v205;

      v207 = v448;
      v208 = v456;
      v456[34] = v655;
      v208[35] = v207;

      v209 = v449;
      v210 = v456;
      v456[36] = v656;
      v210[37] = v209;

      v211 = v450;
      v212 = v456;
      v456[38] = v657;
      v212[39] = v211;

      v213 = v451;
      v214 = v456;
      v456[40] = v658;
      v214[41] = v213;

      v215 = v452;
      v216 = v456;
      v456[42] = v659;
      v216[43] = v215;

      v217 = v453;
      v218 = v456;
      v456[44] = v660;
      v218[45] = v217;

      v219 = v455;
      v220 = v456;
      v456[46] = v661;
      v220[47] = v219;
      sub_1B0394964();

      if (os_log_type_enabled(v458, v459))
      {
        v221 = v701;
        v396 = sub_1B0E45D78();
        v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v397 = sub_1B03949A8(1);
        v398 = sub_1B03949A8(2);
        v399 = &v754;
        v754 = v396;
        v400 = &v753;
        v753 = v397;
        v401 = &v752;
        v752 = v398;
        sub_1B0394A48(3, &v754);
        sub_1B0394A48(8, v399);
        v750 = v638;
        v751 = v431;
        sub_1B03949FC(&v750, v399, v400, v401);
        v402 = v221;
        if (v221)
        {

          __break(1u);
        }

        else
        {
          v750 = v639;
          v751 = v432;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v394 = 0;
          v750 = v640;
          v751 = v433;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v393 = 0;
          v750 = v641;
          v751 = v434;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v392 = 0;
          v750 = v642;
          v751 = v435;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v391 = 0;
          v750 = v643;
          v751 = v436;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v390 = 0;
          v750 = v644;
          v751 = v437;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v389 = 0;
          v750 = v645;
          v751 = v438;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v388 = 0;
          v750 = v646;
          v751 = v439;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v387 = 0;
          v750 = v647;
          v751 = v440;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v386 = 0;
          v750 = v648;
          v751 = v441;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v385 = 0;
          v750 = v649;
          v751 = v442;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v384 = 0;
          v750 = v650;
          v751 = v443;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v383 = 0;
          v750 = v651;
          v751 = v444;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v382 = 0;
          v750 = v652;
          v751 = v445;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v381 = 0;
          v750 = v653;
          v751 = v446;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v380 = 0;
          v750 = v654;
          v751 = v447;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v379 = 0;
          v750 = v655;
          v751 = v448;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v378 = 0;
          v750 = v656;
          v751 = v449;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v377 = 0;
          v750 = v657;
          v751 = v450;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v376 = 0;
          v750 = v658;
          v751 = v451;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v375 = 0;
          v750 = v659;
          v751 = v452;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v374 = 0;
          v750 = v660;
          v751 = v453;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          v373 = 0;
          v750 = v661;
          v751 = v455;
          sub_1B03949FC(&v750, &v754, &v753, &v752);
          _os_log_impl(&dword_1B0389000, v458, v459, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Target mailbox URL '%s' for move/copy action %@ no longer exists.", v396, 0x3Fu);
          sub_1B03998A8(v397);
          sub_1B03998A8(v398);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v458);
      (*(v706 + 8))(v711, v705);
      MEMORY[0x1E69E5928](v734);
      v370 = [v734 persistentID];
      MEMORY[0x1E69E5920](v734);
      v371 = v756;
      v756[0] = v370;
      v372 = &v755;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
      sub_1B0E454D8();
      swift_endAccess();
      MEMORY[0x1E69E5920](v756[1]);
      v222 = v586;
      v223 = v727;
      v224 = v733;
      v225 = v725;
      *v586 = 0;
      v222[1] = 0;
      v222[2] = 0;
      v222[3] = 0;
      v222[4] = 0;
      return (*(v223 + 8))(v224, v225);
    }

    else
    {
      sub_1B03F4D78(v721 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v715);
      v579(v718, v733, v725);
      (v581)(v718, 0, 1, v725);
      v575 = sub_1B07BF5C8(v718);
      v574 = v19;
      sub_1B06E3800(v718);
      sub_1B03F4F08(v715);
      if (v575)
      {
        v572 = v575;
        v573 = v574;
        v565 = v574;
        v566 = v575;
        v741 = v575;
        v742 = v574;
        v570 = [v734 itemsToCopy];
        v567 = sub_1B071C094();
        v569 = sub_1B0E451B8();
        v740[2] = v569;
        v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
        sub_1B071C0F8();
        v571 = sub_1B0E45748();

        MEMORY[0x1E69E5920](v570);
        if (v571)
        {
          MEMORY[0x1E69E5928](v734);
          v550 = [v734 persistentID];
          MEMORY[0x1E69E5920](v734);
          v551 = v740;
          v740[0] = v550;
          v552 = &v739;
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
          sub_1B0E454D8();
          swift_endAccess();
          MEMORY[0x1E69E5920](v740[1]);
          v27 = v586;
          *v586 = 0;
          v27[1] = 0;
          v27[2] = 0;
          v27[3] = 0;
          v27[4] = 0;
        }

        else
        {
          v20 = [v734 transferType];
          v564 = &v738;
          v738 = v20;
          v562 = &v737;
          v737 = 0;
          v563 = type metadata accessor for ECTransferMessageActionType();
          sub_1B071C014();
          v561 = (sub_1B0E46AE8() & 1) != 0;
          v553 = v561;
          v736 = v561;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v555 = [v734 itemsToCopy];
          v554 = sub_1B0E451B8();
          MEMORY[0x1E69E5928](v734);
          sub_1B09258B4(v553, v566, v565, v554, v734, v772);
          v556 = v772[0];
          v557 = v773;
          v558 = v774;
          v559 = v775;
          v560 = v776;
          MEMORY[0x1E69E5920](v555);
          v21 = v557;
          v22 = v558;
          v23 = v559;
          v24 = v586;
          v25 = v560;
          *v586 = v556 & 1;
          v24[1] = v21;
          v24[2] = v22;
          v24[3] = v23;
          v24[4] = v25;
        }

        return (*(v727 + 8))(v733, v725);
      }

      else
      {
        (*(v706 + 16))(v713, v723, v705);

        sub_1B074B69C(v721 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v704);
        v28 = (v704 + *(v702 + 20));
        v495 = *v28;
        v496 = *(v28 + 1);
        v497 = *(v28 + 1);
        v498 = *(v28 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v704);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v494 = 36;
        v517 = 7;
        v29 = swift_allocObject();
        v30 = v496;
        v31 = v497;
        v32 = v498;
        v502 = v29;
        *(v29 + 16) = v495;
        *(v29 + 20) = v30;
        *(v29 + 24) = v31;
        *(v29 + 32) = v32;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v33 = swift_allocObject();
        v34 = v496;
        v35 = v497;
        v36 = v498;
        v493 = v33;
        *(v33 + 16) = v495;
        *(v33 + 20) = v34;
        *(v33 + 24) = v35;
        *(v33 + 32) = v36;

        v516 = 32;
        v37 = swift_allocObject();
        v38 = v493;
        v507 = v37;
        *(v37 + 16) = v662;
        *(v37 + 24) = v38;
        sub_1B0394868();
        sub_1B0394868();

        v39 = swift_allocObject();
        v40 = v496;
        v41 = v497;
        v42 = v498;
        v510 = v39;
        *(v39 + 16) = v495;
        *(v39 + 20) = v40;
        *(v39 + 24) = v41;
        *(v39 + 32) = v42;

        v579(v731, v733, v725);
        v499 = (*(v728 + 80) + 16) & ~*(v728 + 80);
        v500 = swift_allocObject();
        v577((v500 + v499), v731, v725);

        v43 = swift_allocObject();
        v44 = v500;
        v512 = v43;
        *(v43 + 16) = v663;
        *(v43 + 24) = v44;

        MEMORY[0x1E69E5928](v734);
        v520 = 24;
        v518 = swift_allocObject();
        *(v518 + 16) = v734;
        v548 = sub_1B0E43988();
        v549 = sub_1B0E458E8();
        v514 = 17;
        v521 = swift_allocObject();
        v504 = 16;
        *(v521 + 16) = 16;
        v522 = swift_allocObject();
        v506 = 4;
        *(v522 + 16) = 4;
        v45 = swift_allocObject();
        v501 = v45;
        *(v45 + 16) = v588;
        *(v45 + 24) = 0;
        v46 = swift_allocObject();
        v47 = v501;
        v523 = v46;
        *(v46 + 16) = v664;
        *(v46 + 24) = v47;
        v524 = swift_allocObject();
        *(v524 + 16) = 0;
        v525 = swift_allocObject();
        *(v525 + 16) = 1;
        v48 = swift_allocObject();
        v49 = v502;
        v503 = v48;
        *(v48 + 16) = v665;
        *(v48 + 24) = v49;
        v50 = swift_allocObject();
        v51 = v503;
        v526 = v50;
        *(v50 + 16) = v666;
        *(v50 + 24) = v51;
        v527 = swift_allocObject();
        *(v527 + 16) = v504;
        v528 = swift_allocObject();
        *(v528 + 16) = v506;
        v52 = swift_allocObject();
        v505 = v52;
        *(v52 + 16) = v592;
        *(v52 + 24) = 0;
        v53 = swift_allocObject();
        v54 = v505;
        v529 = v53;
        *(v53 + 16) = v667;
        *(v53 + 24) = v54;
        v530 = swift_allocObject();
        *(v530 + 16) = 0;
        v531 = swift_allocObject();
        *(v531 + 16) = v506;
        v55 = swift_allocObject();
        v56 = v507;
        v508 = v55;
        *(v55 + 16) = v668;
        *(v55 + 24) = v56;
        v57 = swift_allocObject();
        v58 = v508;
        v532 = v57;
        *(v57 + 16) = v669;
        *(v57 + 24) = v58;
        v533 = swift_allocObject();
        *(v533 + 16) = 112;
        v534 = swift_allocObject();
        v515 = 8;
        *(v534 + 16) = 8;
        v509 = swift_allocObject();
        *(v509 + 16) = v596;
        v59 = swift_allocObject();
        v60 = v509;
        v535 = v59;
        *(v59 + 16) = v670;
        *(v59 + 24) = v60;
        v536 = swift_allocObject();
        *(v536 + 16) = 37;
        v537 = swift_allocObject();
        *(v537 + 16) = v515;
        v61 = swift_allocObject();
        v62 = v510;
        v511 = v61;
        *(v61 + 16) = v671;
        *(v61 + 24) = v62;
        v63 = swift_allocObject();
        v64 = v511;
        v538 = v63;
        *(v63 + 16) = v672;
        *(v63 + 24) = v64;
        v539 = swift_allocObject();
        *(v539 + 16) = 32;
        v540 = swift_allocObject();
        *(v540 + 16) = v515;
        v65 = swift_allocObject();
        v66 = v512;
        v513 = v65;
        *(v65 + 16) = v673;
        *(v65 + 24) = v66;
        v67 = swift_allocObject();
        v68 = v513;
        v541 = v67;
        *(v67 + 16) = v674;
        *(v67 + 24) = v68;
        v542 = swift_allocObject();
        *(v542 + 16) = 64;
        v543 = swift_allocObject();
        *(v543 + 16) = v515;
        v69 = swift_allocObject();
        v70 = v518;
        v519 = v69;
        *(v69 + 16) = v675;
        *(v69 + 24) = v70;
        v71 = swift_allocObject();
        v72 = v519;
        v545 = v71;
        *(v71 + 16) = v676;
        *(v71 + 24) = v72;
        v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v544 = sub_1B0E46A48();
        v546 = v73;

        v74 = v521;
        v75 = v546;
        *v546 = v677;
        v75[1] = v74;

        v76 = v522;
        v77 = v546;
        v546[2] = v678;
        v77[3] = v76;

        v78 = v523;
        v79 = v546;
        v546[4] = v679;
        v79[5] = v78;

        v80 = v524;
        v81 = v546;
        v546[6] = v680;
        v81[7] = v80;

        v82 = v525;
        v83 = v546;
        v546[8] = v681;
        v83[9] = v82;

        v84 = v526;
        v85 = v546;
        v546[10] = v682;
        v85[11] = v84;

        v86 = v527;
        v87 = v546;
        v546[12] = v683;
        v87[13] = v86;

        v88 = v528;
        v89 = v546;
        v546[14] = v684;
        v89[15] = v88;

        v90 = v529;
        v91 = v546;
        v546[16] = v685;
        v91[17] = v90;

        v92 = v530;
        v93 = v546;
        v546[18] = v686;
        v93[19] = v92;

        v94 = v531;
        v95 = v546;
        v546[20] = v687;
        v95[21] = v94;

        v96 = v532;
        v97 = v546;
        v546[22] = v688;
        v97[23] = v96;

        v98 = v533;
        v99 = v546;
        v546[24] = v689;
        v99[25] = v98;

        v100 = v534;
        v101 = v546;
        v546[26] = v690;
        v101[27] = v100;

        v102 = v535;
        v103 = v546;
        v546[28] = v691;
        v103[29] = v102;

        v104 = v536;
        v105 = v546;
        v546[30] = v692;
        v105[31] = v104;

        v106 = v537;
        v107 = v546;
        v546[32] = v693;
        v107[33] = v106;

        v108 = v538;
        v109 = v546;
        v546[34] = v694;
        v109[35] = v108;

        v110 = v539;
        v111 = v546;
        v546[36] = v695;
        v111[37] = v110;

        v112 = v540;
        v113 = v546;
        v546[38] = v696;
        v113[39] = v112;

        v114 = v541;
        v115 = v546;
        v546[40] = v697;
        v115[41] = v114;

        v116 = v542;
        v117 = v546;
        v546[42] = v698;
        v117[43] = v116;

        v118 = v543;
        v119 = v546;
        v546[44] = v699;
        v119[45] = v118;

        v120 = v545;
        v121 = v546;
        v546[46] = v700;
        v121[47] = v120;
        sub_1B0394964();

        if (os_log_type_enabled(v548, v549))
        {
          v122 = v701;
          v486 = sub_1B0E45D78();
          v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v487 = sub_1B03949A8(1);
          v488 = sub_1B03949A8(2);
          v489 = &v747;
          v747 = v486;
          v490 = &v746;
          v746 = v487;
          v491 = &v745;
          v745 = v488;
          sub_1B0394A48(3, &v747);
          sub_1B0394A48(8, v489);
          v743 = v677;
          v744 = v521;
          sub_1B03949FC(&v743, v489, v490, v491);
          v492 = v122;
          if (v122)
          {

            __break(1u);
          }

          else
          {
            v743 = v678;
            v744 = v522;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v484 = 0;
            v743 = v679;
            v744 = v523;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v483 = 0;
            v743 = v680;
            v744 = v524;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v482 = 0;
            v743 = v681;
            v744 = v525;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v481 = 0;
            v743 = v682;
            v744 = v526;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v480 = 0;
            v743 = v683;
            v744 = v527;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v479 = 0;
            v743 = v684;
            v744 = v528;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v478 = 0;
            v743 = v685;
            v744 = v529;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v477 = 0;
            v743 = v686;
            v744 = v530;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v476 = 0;
            v743 = v687;
            v744 = v531;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v475 = 0;
            v743 = v688;
            v744 = v532;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v474 = 0;
            v743 = v689;
            v744 = v533;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v473 = 0;
            v743 = v690;
            v744 = v534;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v472 = 0;
            v743 = v691;
            v744 = v535;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v471 = 0;
            v743 = v692;
            v744 = v536;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v470 = 0;
            v743 = v693;
            v744 = v537;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v469 = 0;
            v743 = v694;
            v744 = v538;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v468 = 0;
            v743 = v695;
            v744 = v539;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v467 = 0;
            v743 = v696;
            v744 = v540;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v466 = 0;
            v743 = v697;
            v744 = v541;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v465 = 0;
            v743 = v698;
            v744 = v542;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v464 = 0;
            v743 = v699;
            v744 = v543;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            v463 = 0;
            v743 = v700;
            v744 = v545;
            sub_1B03949FC(&v743, &v747, &v746, &v745);
            _os_log_impl(&dword_1B0389000, v548, v549, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to get target mailbox name for URL '%s' for move/copy action %@", v486, 0x3Fu);
            sub_1B03998A8(v487);
            sub_1B03998A8(v488);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v548);
        (*(v706 + 8))(v713, v705);
        MEMORY[0x1E69E5928](v734);
        v460 = [v734 persistentID];
        MEMORY[0x1E69E5920](v734);
        v461 = v749;
        v749[0] = v460;
        v462 = &v748;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
        sub_1B0E454D8();
        swift_endAccess();
        MEMORY[0x1E69E5920](v749[1]);
        v123 = v586;
        v124 = v727;
        v125 = v733;
        v126 = v725;
        *v586 = 0;
        v123[1] = 0;
        v123[2] = 0;
        v123[3] = 0;
        v123[4] = 0;
        return (*(v124 + 8))(v125, v126);
      }
    }
  }

  return result;
}