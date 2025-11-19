uint64_t sub_1000CDBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v36 = *v3;
  v5 = v36;
  v6 = sub_1001C5648();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1001C5688();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  __chkstk_darwin(v39);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[10];
  v13 = v5[11];
  v14 = *(v13 + 8);
  v15 = sub_1001C5D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  v20 = v5[21];
  if (*(v3 + v20))
  {
    v21 = *(v3 + v20);

    sub_1001C5BF8();
  }

  else
  {
    v34 = v11;
    v23 = v36;
    v35 = *(v3 + v36[19]);
    (*(v16 + 16))(v19, a1, v15);
    v24 = (*(v16 + 80) + 56) & ~*(v16 + 80);
    v25 = (v17 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 2) = v12;
    *(v26 + 3) = v13;
    *(v26 + 4) = v23[12];
    *(v26 + 5) = v23[13];
    *(v26 + 6) = v3;
    (*(v16 + 32))(&v26[v24], v19, v15);
    v27 = &v26[v25];
    v28 = v43;
    *v27 = v42;
    *(v27 + 1) = v28;
    aBlock[4] = sub_1000CEB28;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100245960;
    v29 = _Block_copy(aBlock);

    v30 = v34;
    sub_1001C5668();
    v44 = _swiftEmptyArrayStorage;
    sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
    v31 = v38;
    v32 = v41;
    sub_1001C68C8();
    sub_1001C6698();
    _Block_release(v29);
    (*(v40 + 8))(v31, v32);
    (*(v37 + 8))(v30, v39);
  }
}

id *sub_1000CE08C()
{
  v1 = *v0;
  sub_1000CEB00((v0 + 2));

  v2 = *(*v0 + 16);
  v3 = v1[10];
  v4 = *(v1[11] + 8);
  v5 = sub_1001C5D68();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(*v0 + 17);
  v7 = sub_1001C4B28();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = (v0 + *(*v0 + 18));
  v9 = v8[1];
  sub_1000044D8(*v8);

  v10 = *(v0 + *(*v0 + 20));

  v11 = *(v0 + *(*v0 + 21));

  v12 = *(*v0 + 24);
  v13 = sub_1001C5148();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t sub_1000CE24C()
{
  v0 = *sub_1000CE08C();
  v1 = v0[12];
  v2 = *(v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CE2B8()
{
  result = sub_1001C5148();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CE390()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 152));
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000CE470()
{
  v1 = v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRDTModelFileSyncTransport: About to disconnect", v4, 2u);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000CF424;
  *(v8 + 24) = v7;
  v12[4] = sub_1000B3DA0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000906F4;
  v12[3] = &unk_100245AC8;
  v9 = _Block_copy(v12);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + 16);
    return sub_1000CD134(sub_1000CEA24, &unk_1002457F8);
  }

  return result;
}

uint64_t sub_1000CE670()
{
  v1 = v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRDTModelFileSyncTransport: About to reconnect", v4, 2u);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000CEFCC;
  *(v8 + 24) = v7;
  v12[4] = sub_1000B3DA0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000906F4;
  v12[3] = &unk_1002459D8;
  v9 = _Block_copy(v12);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1000CB924();
    v11 = *(v1 + 16);
    return sub_1000CD134(sub_1000CE958, &unk_1002456E0);
  }

  return result;
}

uint64_t sub_1000CE878()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = qword_1002700D8;
  v4 = sub_1001C5148();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1000CE8E8()
{
  sub_1000CE878();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CE958()
{
  sub_1000CC6C4();
}

uint64_t sub_1000CE980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CE998(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1000CCDB0(a1);
}

uint64_t sub_1000CE9A8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1000CD3D8(a1);
}

void sub_1000CE9B8()
{
  v1 = v0[2];
  v2 = *(v0[3] + 8);
  v3 = *(sub_1001C5D68() - 8);
  v4 = v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  v5 = v0[6];
  sub_1000CD9B8(v4);
}

void sub_1000CEA38()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_1000CEA64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CEAAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000CEB28()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v0[3] + 8);
  v4 = *(sub_1001C5D68() - 8);
  v5 = v0[6];
  v6 = (v1 + ((*(v4 + 64) + ((*(v4 + 80) + 56) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  sub_1000CC6C4();
  sub_1001C5BF8();
}

uint64_t sub_1000CEBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a4;
  v23 = sub_1001C6668();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C6638();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_1001C5688();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  *(a2 + 32) = 0;
  v13 = sub_1000C5A14();
  v22[1] = "ncTransport.access";
  v22[2] = v13;
  sub_1001C5678();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *(a2 + 40) = sub_1001C66A8();
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  sub_1001C5138();
  v14 = v25;
  *(a2 + 16) = v24;
  *(a2 + 24) = v14;
  *(a2 + 56) = 0x403E000000000000;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000CF3B4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100245AF0;
  v17 = _Block_copy(aBlock);

  v18 = sub_1001C5FE8();
  v19 = [v16 initWithNotifyBlock:v17 blockDescription:v18];

  _Block_release(v17);

  [v19 setCoalescingDelay:60.0];
  v20 = *(a2 + 32);
  *(a2 + 32) = v19;

  return a2;
}

void *sub_1000CEFEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v40 = a1;
  v33 = *v3;
  v5 = v33;
  v6 = sub_1001C4B28();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = ".ReadingHistoryDataStore.model";
  v34 = *(v33 + 80);
  v9 = *(*(&v34 + 1) + 8);
  v10 = v34;
  v11 = sub_1001C5D68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_1001C69C8(20);

  *&v41 = 0xD000000000000012;
  *(&v41 + 1) = 0x80000001001FE0E0;
  v16 = *(v5 + 104);
  v43._countAndFlagsBits = (*(v16 + 8))(v10, v16);
  sub_1001C6138(v43);

  sub_1001C5138();
  *&v17 = *(v33 + 96);
  *(&v17 + 1) = v16;
  v42 = v17;
  v41 = v34;
  v18 = type metadata accessor for _CRDTModelFileSyncTransport();
  (*(v12 + 16))(v15, v38, v11);
  v19 = v35;
  v20 = v36;
  v21 = v39;
  v22 = v37;
  (*(v36 + 16))(v35, v39, v37);
  v23 = *(v18 + 48);
  v24 = *(v18 + 52);
  swift_allocObject();
  v3[2] = sub_1000CC1C8(v40, v15, v19);
  v25 = type metadata accessor for _TransportConnectionManager();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();

  v30 = sub_1000CEBF8(v29, v28, v18, &off_100245698);
  (*(v20 + 8))(v21, v22);
  v4[3] = v30;
  *(v4[2] + 24) = &off_1002456C8;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1000CF350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return a4(a1, a2, a3);
}

uint64_t static CRDTModelContextStore.persistentContext()()
{
  v0 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v49 = &v46 - v2;
  v3 = sub_1001C4988();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4B28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  sub_1000CFA38();
  sub_1000CFA38();
  sub_1000CFB78();
  sub_1001C4AA8();

  v48 = v8;
  v52 = *(v8 + 8);
  v53 = v7;
  v52(v14, v7);
  sub_1001C6578();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v20 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001F0670;
  v56 = v17;
  v22 = sub_1001C4A58();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  v25 = sub_100084570();
  *(v21 + 64) = v25;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v51 = v20;
  sub_1001C5118();

  sub_1001C4978();
  sub_1001C4968();
  v26 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v27);
  v29 = v28;
  *&v57 = 0;
  LODWORD(v24) = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v57];

  v30 = v6;
  v31 = v19;
  v50 = v30;
  if (v24)
  {
    v32 = v57;
    sub_1001C4A78();
    v46 = sub_1001C5E38();
    v33 = v48;
    v34 = v53;
    (*(v48 + 16))(v47, v56, v53);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    (*(v33 + 56))(v49, 1, 1, v34);
    v44 = sub_1001C5E28();
    (*(v54 + 8))(v30, v55);
    v45 = v56;
  }

  else
  {
    v35 = v57;
    sub_1001C4A28();

    swift_willThrow();
    v34 = v53;
    sub_1001C6598();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1001F0660;
    v37 = v56;
    v38 = sub_1001C4A58();
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v25;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;
    swift_getErrorValue();
    v40 = sub_1001C6D98();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v25;
    *(v36 + 72) = v40;
    *(v36 + 80) = v41;
    sub_1001C5118();

    sub_1001C5E38();
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v44 = sub_1001C5E18();

    sub_1000CFBF0(&v57);
    (*(v54 + 8))(v50, v55);
    v45 = v37;
  }

  v42 = v52;
  v52(v45, v34);
  v42(v31, v34);
  return v44;
}

uint64_t sub_1000CFA38()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000CFB78()
{
  v2 = *(v0 + 80);
  swift_getMetatypeMetadata();
  v3 = sub_1001C6098();

  v4._countAndFlagsBits = 0x2E747865746E6F43;
  v4._object = 0xEA00000000006264;
  sub_1001C6138(v4);

  return v3;
}

uint64_t sub_1000CFBF0(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026EF20, &unk_1001F1FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReadingHistory.Streak.description.getter()
{
  sub_1001C69C8(23);

  sub_1001C4CA8();
  sub_1000D51E8(&qword_100270A80, &type metadata accessor for Date);
  v3._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v3);

  v4._countAndFlagsBits = 0x6874676E656C202CLL;
  v4._object = 0xE90000000000003ALL;
  sub_1001C6138(v4);
  v2 = *(v0 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
  v5._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v5);

  v6._countAndFlagsBits = 125;
  v6._object = 0xE100000000000000;
  sub_1001C6138(v6);
  return 0x65746144646E657BLL;
}

uint64_t ReadingHistory.Streak.init(endDate:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001C4CA8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

bookdatastored::ReadingHistory::Day __swiftcall ReadingHistory.Day.init(readingTime:goal:isStreakDay:)(Swift::Int readingTime, Swift::Int goal, Swift::Bool isStreakDay)
{
  v3 = isStreakDay;
  result.goal = goal;
  result.readingTime = readingTime;
  result.isStreakDay = v3;
  return result;
}

uint64_t ReadingHistory.State.init(currentStreak:longestStreak:today:readingHistory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for ReadingHistory.State(0);
  v15 = v14[5];
  v16 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  result = sub_1000CFF8C(a2, &a7[v15]);
  v18 = &a7[v14[6]];
  *v18 = a3;
  *(v18 + 1) = a4;
  v18[16] = a5;
  *&a7[v14[7]] = a6;
  return result;
}

uint64_t sub_1000CFF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReadingHistory.Day.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1001C69C8(29);

  v7._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v7);

  v8._countAndFlagsBits = 0x3A6C616F67202CLL;
  v8._object = 0xE700000000000000;
  sub_1001C6138(v8);
  v9._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v9);

  v10._countAndFlagsBits = 0x6B6165727473202CLL;
  v10._object = 0xE90000000000003ALL;
  sub_1001C6138(v10);
  if (a3)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (a3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1001C6138(v4);

  v11._countAndFlagsBits = 125;
  v11._object = 0xE100000000000000;
  sub_1001C6138(v11);
  return 0x3A656D69747BLL;
}

uint64_t sub_1000D01E0()
{
  v1 = 1818324839;
  if (*v0 != 1)
  {
    v1 = 0x6B61657274537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54676E6964616572;
  }
}

uint64_t sub_1000D0244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D4C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D026C(uint64_t a1)
{
  v2 = sub_1000D04B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D02A8(uint64_t a1)
{
  v2 = sub_1000D04B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingHistory.Day.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = sub_100084528(&qword_1002701E0, &qword_1001F1FD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D04B0();
  sub_1001C6E78();
  v15 = 0;
  sub_1001C6C98();
  if (v3)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = 1;
  sub_1001C6C98();
  v13 = 2;
  sub_1001C6C78();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000D04B0()
{
  result = qword_1002701E8;
  if (!qword_1002701E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002701E8);
  }

  return result;
}

uint64_t ReadingHistory.Day.init(from:)(uint64_t *a1)
{
  result = sub_1000D4D20(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000D052C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D0560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000D4D20(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t ReadingHistory.DayEntry.date.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReadingHistory.DayEntry.date.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReadingHistory.DayEntry.day.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t ReadingHistory.DayEntry.day.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t ReadingHistory.DayEntry.description.getter()
{
  sub_1001C6138(*v0);
  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  sub_1001C6138(v2);
  v3._countAndFlagsBits = ReadingHistory.Day.description.getter(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1001C6138(v3);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 123;
}

uint64_t sub_1000D06B8()
{
  if (*v0)
  {
    result = 7954788;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1000D06E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1000D07C0(uint64_t a1)
{
  v2 = sub_1000D4EEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D07FC(uint64_t a1)
{
  v2 = sub_1000D4EEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static ReadingHistory.DayEntry.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1001C6D08(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    return v7 && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0;
  }

  return result;
}

uint64_t ReadingHistory.DayEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_1002701F0, &qword_1001F1FE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D4EEC();
  sub_1001C6E78();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v15) = 0;
  sub_1001C6C68();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 32);
    v14[15] = 1;
    sub_1000D4F40();
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v9, v5);
}

double ReadingHistory.DayEntry.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D4F94(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000D0A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_1001C6D08(), result = 0, (v9 & 1) != 0))
  {
    v12 = v2 == v5 && v3 == v6;
    return v12 & (v4 ^ v7 ^ 1u);
  }

  return result;
}

uint64_t sub_1000D0B48()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x65746144646E65;
  }

  *v0;
  return result;
}

uint64_t sub_1000D0B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1000D0C58(uint64_t a1)
{
  v2 = sub_1000D5194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0C94(uint64_t a1)
{
  v2 = sub_1000D5194();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static ReadingHistory.Streak.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1001C4C68() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReadingHistory.Streak(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ReadingHistory.Streak.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100270208, &qword_1001F1FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5194();
  sub_1001C6E78();
  v13[15] = 0;
  sub_1001C4CA8();
  sub_1000D51E8(&qword_10026F970, &type metadata accessor for Date);
  sub_1001C6CA8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
    v13[14] = 1;
    sub_1001C6C98();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ReadingHistory.Streak.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1001C4CA8();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100084528(&qword_100270218, &qword_1001F1FF0);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5194();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v23 = v14;
  v16 = v25;
  v17 = v26;
  v30 = 0;
  sub_1000D51E8(&qword_10026F980, &type metadata accessor for Date);
  v18 = v27;
  sub_1001C6C28();
  (*(v17 + 32))(v23, v7, v18);
  v29 = 1;
  v19 = sub_1001C6C18();
  (*(v16 + 8))(v10, v28);
  v21 = v23;
  v20 = v24;
  *&v23[*(v11 + 20)] = v19;
  sub_1000D54CC(v21, v20, type metadata accessor for ReadingHistory.Streak);
  sub_10008E7BC(a1);
  return sub_1000D5534(v21, type metadata accessor for ReadingHistory.Streak);
}

uint64_t ReadingHistory.State.longestStreak.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1000D5230(v3, a1);
}

uint64_t ReadingHistory.State.longestStreak.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1000CFF8C(a1, v3);
}

uint64_t ReadingHistory.State.today.getter()
{
  v1 = (v0 + *(type metadata accessor for ReadingHistory.State(0) + 24));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t ReadingHistory.State.today.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ReadingHistory.State(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t ReadingHistory.State.readingHistory.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistory.State(0) + 28));
}

uint64_t ReadingHistory.State.readingHistory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistory.State(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReadingHistory.State.description.getter()
{
  v1 = v0;
  v2 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001F0CF0;
  v42 = *v0;
  sub_10008E704();
  v7 = sub_1001C6878();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100084570();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v11 = type metadata accessor for ReadingHistory.State(0);
  sub_1000D5230(v1 + v11[5], v5);
  v12 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_10008875C(v5, &qword_10026F508, &qword_1001F1150);
    v13 = (v6 + 72);
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
  }

  else
  {
    v14 = ReadingHistory.Streak.description.getter();
    v16 = v15;
    sub_1000D5534(v5, type metadata accessor for ReadingHistory.Streak);
    v13 = (v6 + 72);
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
    if (v16)
    {
      *v13 = v14;
      goto LABEL_6;
    }
  }

  *v13 = 7104878;
  v16 = 0xE300000000000000;
LABEL_6:
  *(v6 + 80) = v16;
  v17 = ReadingHistory.Day.description.getter(*(v1 + v11[6]), *(v1 + v11[6] + 8), *(v1 + v11[6] + 16));
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v10;
  *(v6 + 112) = v17;
  *(v6 + 120) = v18;
  v19 = *(v1 + v11[7]);
  v20 = *(v19 + 16);
  v21 = &_swiftEmptyArrayStorage;
  if (v20)
  {
    v37 = v10;
    v38 = v6;
    v41 = &_swiftEmptyArrayStorage;
    sub_1000D3898(0, v20, 0);
    v21 = v41;
    v22 = (v19 + 64);
    do
    {
      v23 = *(v22 - 4);
      v24 = *(v22 - 3);
      v25 = *(v22 - 2);
      v26 = *(v22 - 1);
      v27 = *v22;
      v39 = 123;
      v40 = 0xE100000000000000;

      v43._countAndFlagsBits = v23;
      v43._object = v24;
      sub_1001C6138(v43);
      v44._countAndFlagsBits = 8250;
      v44._object = 0xE200000000000000;
      sub_1001C6138(v44);
      v45._countAndFlagsBits = ReadingHistory.Day.description.getter(v25, v26, v27);
      sub_1001C6138(v45);

      v46._countAndFlagsBits = 125;
      v46._object = 0xE100000000000000;
      sub_1001C6138(v46);

      v28 = v39;
      v29 = v40;
      v41 = v21;
      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        sub_1000D3898((v30 > 1), v31 + 1, 1);
        v21 = v41;
      }

      v21[2] = v31 + 1;
      v32 = &v21[2 * v31];
      v32[4] = v28;
      v32[5] = v29;
      v22 += 40;
      --v20;
    }

    while (v20);
    v10 = v37;
    v6 = v38;
  }

  v39 = v21;
  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000D52A0();
  v33 = sub_1001C5FA8();
  v35 = v34;

  *(v6 + 176) = &type metadata for String;
  *(v6 + 184) = v10;
  *(v6 + 152) = v33;
  *(v6 + 160) = v35;
  return sub_1001C6048();
}

uint64_t sub_1000D1870()
{
  v1 = 0x53746E6572727563;
  v2 = 0x7961646F74;
  if (*v0 != 2)
  {
    v2 = 0x48676E6964616572;
  }

  if (*v0)
  {
    v1 = 0x53747365676E6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000D18FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D65A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D1930(uint64_t a1)
{
  v2 = sub_1000D5304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D196C(uint64_t a1)
{
  v2 = sub_1000D5304();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingHistory.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100270220, &qword_1001F1FF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5304();
  sub_1001C6E78();
  v11 = *v3;
  LOBYTE(v19) = 0;
  sub_1001C6C98();
  if (!v2)
  {
    v12 = type metadata accessor for ReadingHistory.State(0);
    v13 = v12[5];
    LOBYTE(v19) = 1;
    type metadata accessor for ReadingHistory.Streak(0);
    sub_1000D51E8(&qword_100270230, type metadata accessor for ReadingHistory.Streak);
    sub_1001C6C58();
    v14 = v3 + v12[6];
    v15 = v14[16];
    v19 = *v14;
    v20 = v15;
    v18 = 2;
    sub_1000D4F40();
    sub_1001C6CA8();
    *&v19 = *(v3 + v12[7]);
    v18 = 3;
    sub_100084528(&qword_100270238, &qword_1001F2000);
    sub_1000D5400(&qword_100270240, sub_1000D5358);
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ReadingHistory.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = &v25 - v5;
  v31 = sub_100084528(&qword_100270250, &qword_1001F2008);
  v28 = *(v31 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v31);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ReadingHistory.State(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 20);
  v15 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5304();
  v30 = v8;
  v17 = v32;
  sub_1001C6E58();
  if (v17)
  {
    sub_10008E7BC(a1);
    return sub_10008875C(v13 + v14, &qword_10026F508, &qword_1001F1150);
  }

  else
  {
    v26 = a1;
    v32 = v14;
    v18 = v28;
    v19 = v29;
    LOBYTE(v33) = 0;
    v20 = v30;
    v21 = v31;
    *v13 = sub_1001C6C18();
    LOBYTE(v33) = 1;
    sub_1000D51E8(&qword_100270258, type metadata accessor for ReadingHistory.Streak);
    sub_1001C6BD8();
    sub_1000CFF8C(v19, v13 + v32);
    v35 = 2;
    sub_1000D53AC();
    sub_1001C6C28();
    v22 = v34;
    v23 = v13 + *(v9 + 24);
    *v23 = v33;
    v23[16] = v22;
    sub_100084528(&qword_100270238, &qword_1001F2000);
    v35 = 3;
    sub_1000D5400(&qword_100270268, sub_1000D5478);
    sub_1001C6C28();
    (*(v18 + 8))(v20, v21);
    *(v13 + *(v9 + 28)) = v33;
    sub_1000D54CC(v13, v27, type metadata accessor for ReadingHistory.State);
    sub_10008E7BC(v26);
    return sub_1000D5534(v13, type metadata accessor for ReadingHistory.State);
  }
}

uint64_t sub_1000D20CC(uint64_t a1)
{
  v2 = sub_1000D5594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2108(uint64_t a1)
{
  v2 = sub_1000D5594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D21D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001C4CA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(date:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1001C4CA8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1000D22D8()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1000D230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1000D23E8(uint64_t a1)
{
  v2 = sub_1000D5608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2424(uint64_t a1)
{
  v2 = sub_1000D5608();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingHistory.Notification.AddFakeSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100270288, &qword_1001F2018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5608();
  sub_1001C6E78();
  v13[15] = 0;
  sub_1001C4CA8();
  sub_1000D51E8(&qword_10026F970, &type metadata accessor for Date);
  sub_1001C6CA8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ReadingHistory.Notification.AddFakeSession(0) + 20));
    v13[14] = 1;
    sub_1001C6C88();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1001C4CA8();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100084528(&qword_100270298, &qword_1001F2020);
  v27 = *(v30 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v30);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5608();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v25 = v14;
  v16 = v27;
  v17 = v28;
  v32 = 0;
  sub_1000D51E8(&qword_10026F980, &type metadata accessor for Date);
  v18 = v29;
  sub_1001C6C28();
  (*(v17 + 32))(v25, v7, v18);
  v31 = 1;
  sub_1001C6C08();
  v20 = v19;
  (*(v16 + 8))(v10, v30);
  v22 = v25;
  v21 = v26;
  *&v25[*(v11 + 20)] = v20;
  sub_1000D54CC(v22, v21, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
  sub_10008E7BC(a1);
  return sub_1000D5534(v22, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
}

uint64_t sub_1000D2994(uint64_t a1)
{
  v2 = sub_1000D565C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D29D0(uint64_t a1)
{
  v2 = sub_1000D565C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D2A50(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_100084528(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10009BB74(a1, a1[3]);
  a4();
  sub_1001C6E78();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000D2BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_100084528(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10009BB74(a1, a1[3]);
  a6();
  sub_1001C6E78();
  return (*(v9 + 8))(v12, v8);
}

BDSReadingHistoryDayInfo __swiftcall ReadingHistory.Day.toInfo()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = objc_allocWithZone(BDSReadingHistoryDayInfo);

  v7 = [v6 initWithReadingTime:v5 goal:v4 isStreakDay:v3 & 1];
  result._goal = v10;
  result._readingTime = v9;
  result.super.isa = v7;
  result._isStreakDay = v8;
  return result;
}

id static ReadingHistory.Day.from(info:)(void *a1)
{
  v2 = [a1 readingTime];
  [a1 goal];
  [a1 isStreakDay];
  return v2;
}

BDSReadingHistoryDayEntryInfo __swiftcall ReadingHistory.DayEntry.toInfo()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:v0[2] goal:v0[3] isStreakDay:v0[4] & 1];
  v4 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
  v5 = sub_1001C5FE8();
  v6 = [v4 initWithDate:v5 day:v3];

  v9 = v6;
  result._day = v8;
  result._date = v7;
  result.super.isa = v9;
  return result;
}

void static ReadingHistory.DayEntry.from(info:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 date];
  v5 = sub_1001C6018();
  v7 = v6;

  v8 = [a1 day];
  v9 = [v8 readingTime];
  v10 = [v8 goal];
  v11 = [v8 isStreakDay];

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
}

BDSReadingHistoryStreakInfo __swiftcall ReadingHistory.Streak.toInfo()()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
  v2 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
  isa = sub_1001C4C38().super.isa;
  v4 = [v2 initWithEndDate:isa length:v1];

  v7 = v4;
  result._length = v6;
  result._endDate = v5;
  result.super.isa = v7;
  return result;
}

uint64_t static ReadingHistory.Streak.from(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 endDate];
  sub_1001C4C78();

  v5 = [a1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

void __swiftcall ReadingHistory.State.toInfo()(BDSReadingHistoryStateInfo *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = *v2;
  v8 = type metadata accessor for ReadingHistory.State(0);
  sub_1000D5230(v2 + v8[5], v6);
  v9 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_10008875C(v6, &qword_10026F508, &qword_1001F1150);
    v10 = 0;
  }

  else
  {
    v11 = *&v6[*(v9 + 20)];
    v12 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
    isa = sub_1001C4C38().super.isa;
    v10 = [v12 initWithEndDate:isa length:v11];

    sub_1000D5534(v6, type metadata accessor for ReadingHistory.Streak);
  }

  v14 = v2 + v8[6];
  v15 = BCCloudDataManager;
  v16 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:*v14 goal:*(v14 + 1) isStreakDay:v14[16]];
  v17 = v16;
  v18 = *(v2 + v8[7]);
  v19 = *(v18 + 16);
  if (v19)
  {
    v35 = v16;
    v36 = v10;
    v37 = v7;
    v38 = &_swiftEmptyArrayStorage;
    sub_1001C6A78();
    v20 = (v18 + 64);
    do
    {
      v21 = *(v20 - 4);
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *(v20 - 1);
      v25 = *v20;
      v20 += 40;
      v26 = v15;
      v27 = objc_allocWithZone(&v15[80]);

      v28 = v27;
      v15 = v26;
      v29 = [v28 initWithReadingTime:v23 goal:v24 isStreakDay:v25];
      v30 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
      v31 = sub_1001C5FE8();
      [v30 initWithDate:v31 day:v29];

      sub_1001C6A48();
      v32 = v38[2];
      sub_1001C6A88();
      sub_1001C6A98();
      sub_1001C6A58();
      --v19;
    }

    while (v19);
    v7 = v37;
    v17 = v35;
    v10 = v36;
  }

  v33 = objc_allocWithZone(BDSReadingHistoryStateInfo);
  sub_1000D56B0();
  v34 = sub_1001C6288().super.isa;

  [v33 initWithCurrentStreak:v7 longestStreak:v10 today:v17 readingHistory:v34];
}

uint64_t static ReadingHistory.State.from(info:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = [a1 currentStreak];
  v9 = [a1 longestStreak];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 endDate];
    sub_1001C4C78();

    v12 = [v10 length];
    v13 = type metadata accessor for ReadingHistory.Streak(0);
    *&v7[*(v13 + 20)] = v12;
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  v15 = [a1 today];
  v16 = [v15 readingTime];
  v17 = [v15 goal];
  v18 = [v15 isStreakDay];

  v19 = [a1 readingHistory];
  sub_1000D56B0();
  v20 = sub_1001C6298();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_16:

    v24 = &_swiftEmptyArrayStorage;
LABEL_17:
    v39 = type metadata accessor for ReadingHistory.State(0);
    v40 = v39[5];
    v41 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v41 - 8) + 56))(&a2[v40], 1, 1, v41);
    *a2 = v8;
    result = sub_1000CFF8C(v7, &a2[v40]);
    v42 = &a2[v39[6]];
    *v42 = v16;
    *(v42 + 1) = v17;
    v42[16] = v18;
    *&a2[v39[7]] = v24;
    return result;
  }

  v21 = sub_1001C6B38();
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_6:
  v52 = &_swiftEmptyArrayStorage;
  result = sub_1000D38B8(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v50 = v21;
    v51 = v20;
    HIDWORD(v43) = v18;
    v44 = v17;
    v45 = v16;
    v46 = v8;
    v47 = v7;
    v23 = 0;
    v24 = v52;
    v25 = v20;
    v48 = a2;
    v49 = v20 & 0xC000000000000001;
    do
    {
      if (v49)
      {
        v26 = sub_1001C69F8();
      }

      else
      {
        v26 = *(v25 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 date];
      v29 = sub_1001C6018();
      v31 = v30;

      v32 = [v27 day];
      v33 = [v32 readingTime];
      v34 = [v32 goal];
      v35 = [v32 isStreakDay];

      v52 = v24;
      v37 = v24[2];
      v36 = v24[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000D38B8((v36 > 1), v37 + 1, 1);
        v24 = v52;
      }

      ++v23;
      v24[2] = v37 + 1;
      v38 = &v24[5 * v37];
      v38[4] = v29;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v34;
      *(v38 + 64) = v35;
      v25 = v51;
    }

    while (v50 != v23);

    v7 = v47;
    a2 = v48;
    v16 = v45;
    v8 = v46;
    v17 = v44;
    LOBYTE(v18) = BYTE4(v43);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t BDSReadingHistoryStreakInfo.toStreak()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 endDate];
  sub_1001C4C78();

  v4 = [v1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

bookdatastored::ReadingHistory::Day __swiftcall BDSReadingHistoryDayInfo.toDay()()
{
  v1 = [v0 readingTime];
  v2 = [v0 goal];
  v3 = [v0 isStreakDay];
  v4 = v1;
  v5 = v2;
  result.goal = v5;
  result.readingTime = v4;
  result.isStreakDay = v3;
  return result;
}

char *sub_1000D3814(char *a1, int64_t a2, char a3)
{
  result = sub_1000D3A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3834(char *a1, int64_t a2, char a3)
{
  result = sub_1000D3B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000D3854(size_t a1, int64_t a2, char a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_10026F778, &qword_1001F13A8, _s21PriceDropNotificationVMa);
  *v3 = result;
  return result;
}

char *sub_1000D3898(char *a1, int64_t a2, char a3)
{
  result = sub_1000D3CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D38B8(char *a1, int64_t a2, char a3)
{
  result = sub_1000D3F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000D38D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_100270570, &unk_1001F2BA0, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
  *v3 = result;
  return result;
}

size_t sub_1000D391C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_100273D10, &unk_1001F2B40, _s8CardItemVMa);
  *v3 = result;
  return result;
}

char *sub_1000D3960(char *a1, int64_t a2, char a3)
{
  result = sub_1000D4034(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3980(char *a1, int64_t a2, char a3)
{
  result = sub_1000D4140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000D39A0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_10026F780, &qword_1001F13B0, _s4DealVMa);
  *v3 = result;
  return result;
}

size_t sub_1000D39E4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_10026F768, &unk_1001F2B60, _s11TrackedItemVMa);
  *v3 = result;
  return result;
}

char *sub_1000D3A28(char *a1, int64_t a2, char a3)
{
  result = sub_1000D445C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3A48(char *a1, int64_t a2, char a3)
{
  result = sub_1000D4560(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270558, &qword_1001F2B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D3B90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F7B8, &qword_1001F2B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000D3CBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000D3DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270578, &unk_1001F5230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000D3F18(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F920, &qword_1001F2BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D4034(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270550, &qword_1001F2B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000D4140(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F770, &qword_1001F13A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000D425C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_1000D445C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270548, &qword_1001F2B30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000D4560(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270540, &qword_1001F2B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1000D46AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(a5, a6);
  v16 = *(sub_100084528(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
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
  v21 = *(sub_100084528(a7, a8) - 8);
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

uint64_t _s14bookdatastored14ReadingHistoryO5StateV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_100084528(&qword_100270580, &qword_1001F2BB8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v17 = type metadata accessor for ReadingHistory.State(0);
  v18 = v17[5];
  v19 = *(v13 + 48);
  sub_1000D5230(a1 + v18, v16);
  sub_1000D5230(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_1000D5230(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_1000D6720(&v16[v19], v8);
      if (sub_1001C4C68())
      {
        v29 = *(v4 + 20);
        v30 = *&v12[v29];
        v31 = *&v8[v29];
        sub_1000D5534(v8, type metadata accessor for ReadingHistory.Streak);
        sub_1000D5534(v12, type metadata accessor for ReadingHistory.Streak);
        sub_10008875C(v16, &qword_10026F508, &qword_1001F1150);
        if (v30 == v31)
        {
          goto LABEL_5;
        }

LABEL_13:
        v21 = 0;
        return v21 & 1;
      }

      sub_1000D5534(v8, type metadata accessor for ReadingHistory.Streak);
      sub_1000D5534(v12, type metadata accessor for ReadingHistory.Streak);
      v26 = &qword_10026F508;
      v27 = &qword_1001F1150;
LABEL_12:
      sub_10008875C(v16, v26, v27);
      goto LABEL_13;
    }

    sub_1000D5534(v12, type metadata accessor for ReadingHistory.Streak);
LABEL_11:
    v26 = &qword_100270580;
    v27 = &qword_1001F2BB8;
    goto LABEL_12;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_10008875C(v16, &qword_10026F508, &qword_1001F1150);
LABEL_5:
  v21 = 0;
  v22 = v17[6];
  v23 = a1 + v22;
  v24 = *(a1 + v22);
  v25 = a2 + v22;
  if (v24 == *v25 && *(v23 + 1) == *(v25 + 1) && ((v23[16] ^ v25[16]) & 1) == 0)
  {
    v21 = sub_100194238(*(a1 + v17[7]), *(a2 + v17[7]));
  }

  return v21 & 1;
}

uint64_t sub_1000D4C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54676E6964616572 && a2 == 0xEB00000000656D69;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B61657274537369 && a2 == 0xEB00000000796144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000D4D20(uint64_t *a1)
{
  v2 = sub_100084528(&qword_100270590, &qword_1001F2BC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D04B0();
  sub_1001C6E58();
  v13 = 0;
  v8 = sub_1001C6C18();
  v12 = 1;
  sub_1001C6C18();
  v11 = 2;
  sub_1001C6BF8();
  (*(v3 + 8))(v6, v2);
  sub_10008E7BC(a1);
  return v8;
}

unint64_t sub_1000D4EEC()
{
  result = qword_1002701F8;
  if (!qword_1002701F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002701F8);
  }

  return result;
}

unint64_t sub_1000D4F40()
{
  result = qword_100270200;
  if (!qword_100270200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270200);
  }

  return result;
}

uint64_t sub_1000D4F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100084528(&qword_100270588, &qword_1001F2BC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D4EEC();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_1001C6BE8();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_1000D53AC();
  sub_1001C6C28();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  result = sub_10008E7BC(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  return result;
}

unint64_t sub_1000D5194()
{
  result = qword_100270210;
  if (!qword_100270210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270210);
  }

  return result;
}

uint64_t sub_1000D51E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D5230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D52A0()
{
  result = qword_10026F850;
  if (!qword_10026F850)
  {
    sub_1000885AC(&unk_10026FED0, &unk_1001F1450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F850);
  }

  return result;
}

unint64_t sub_1000D5304()
{
  result = qword_100270228;
  if (!qword_100270228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270228);
  }

  return result;
}

unint64_t sub_1000D5358()
{
  result = qword_100270248;
  if (!qword_100270248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270248);
  }

  return result;
}

unint64_t sub_1000D53AC()
{
  result = qword_100270260;
  if (!qword_100270260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270260);
  }

  return result;
}

uint64_t sub_1000D5400(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100270238, &qword_1001F2000);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D5478()
{
  result = qword_100270270;
  if (!qword_100270270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270270);
  }

  return result;
}

uint64_t sub_1000D54CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D5534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000D5594()
{
  result = qword_100270280;
  if (!qword_100270280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270280);
  }

  return result;
}

unint64_t sub_1000D5608()
{
  result = qword_100270290;
  if (!qword_100270290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270290);
  }

  return result;
}

unint64_t sub_1000D565C()
{
  result = qword_1002702A8;
  if (!qword_1002702A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702A8);
  }

  return result;
}

unint64_t sub_1000D56B0()
{
  result = qword_1002702B0;
  if (!qword_1002702B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002702B0);
  }

  return result;
}

unint64_t sub_1000D5700()
{
  result = qword_1002702B8;
  if (!qword_1002702B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702B8);
  }

  return result;
}

unint64_t sub_1000D5758()
{
  result = qword_1002702C0;
  if (!qword_1002702C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702C0);
  }

  return result;
}

unint64_t sub_1000D5840()
{
  result = qword_1002702D8;
  if (!qword_1002702D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702D8);
  }

  return result;
}

unint64_t sub_1000D5898()
{
  result = qword_1002702E0;
  if (!qword_1002702E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702E0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.StateChange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistory.Day(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistory.Day(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000D59B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D59CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000D5A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000D5AC4()
{
  sub_1000B331C();
  if (v0 <= 0x3F)
  {
    sub_1000D5B60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D5B60()
{
  if (!qword_1002703E0)
  {
    v0 = sub_1001C62F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002703E0);
    }
  }
}

uint64_t sub_1000D5BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D5C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D5CF0()
{
  result = sub_1001C4CA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistory.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistory.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D5F24()
{
  result = qword_1002704A8;
  if (!qword_1002704A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704A8);
  }

  return result;
}

unint64_t sub_1000D5F7C()
{
  result = qword_1002704B0;
  if (!qword_1002704B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704B0);
  }

  return result;
}

unint64_t sub_1000D5FD4()
{
  result = qword_1002704B8;
  if (!qword_1002704B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704B8);
  }

  return result;
}

unint64_t sub_1000D602C()
{
  result = qword_1002704C0;
  if (!qword_1002704C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704C0);
  }

  return result;
}

unint64_t sub_1000D6084()
{
  result = qword_1002704C8;
  if (!qword_1002704C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704C8);
  }

  return result;
}

unint64_t sub_1000D60DC()
{
  result = qword_1002704D0;
  if (!qword_1002704D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704D0);
  }

  return result;
}

unint64_t sub_1000D6134()
{
  result = qword_1002704D8;
  if (!qword_1002704D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704D8);
  }

  return result;
}

unint64_t sub_1000D618C()
{
  result = qword_1002704E0;
  if (!qword_1002704E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704E0);
  }

  return result;
}

unint64_t sub_1000D61E4()
{
  result = qword_1002704E8;
  if (!qword_1002704E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704E8);
  }

  return result;
}

unint64_t sub_1000D623C()
{
  result = qword_1002704F0;
  if (!qword_1002704F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704F0);
  }

  return result;
}

unint64_t sub_1000D6294()
{
  result = qword_1002704F8;
  if (!qword_1002704F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704F8);
  }

  return result;
}

unint64_t sub_1000D62EC()
{
  result = qword_100270500;
  if (!qword_100270500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270500);
  }

  return result;
}

unint64_t sub_1000D6344()
{
  result = qword_100270508;
  if (!qword_100270508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270508);
  }

  return result;
}

unint64_t sub_1000D639C()
{
  result = qword_100270510;
  if (!qword_100270510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270510);
  }

  return result;
}

unint64_t sub_1000D63F4()
{
  result = qword_100270518;
  if (!qword_100270518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270518);
  }

  return result;
}

unint64_t sub_1000D644C()
{
  result = qword_100270520;
  if (!qword_100270520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270520);
  }

  return result;
}

unint64_t sub_1000D64A4()
{
  result = qword_100270528;
  if (!qword_100270528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270528);
  }

  return result;
}

unint64_t sub_1000D64FC()
{
  result = qword_100270530;
  if (!qword_100270530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270530);
  }

  return result;
}

unint64_t sub_1000D6554()
{
  result = qword_100270538;
  if (!qword_100270538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270538);
  }

  return result;
}

uint64_t sub_1000D65A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6964616572 && a2 == 0xEE0079726F747369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000D6720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D67E0()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v5 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PBPropertySingleFloatParam(0);
  v7 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v10 = *(*(Params - 8) + 64);
  __chkstk_darwin(Params - 8);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *&v65 = &v57 - v14;
  v15 = sub_1001C4CA8();
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  __chkstk_darwin(v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v57 - v21;
  v23 = sub_1001C4EE8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0xE000000000000000;
  v67 = 0;
  v68 = 0xE000000000000000;
  v29 = type metadata accessor for PBPropertyValue(0);
  v30 = (v0 + v29[8]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v28 = v30[1];
  }

  v69._countAndFlagsBits = v32;
  v69._object = v28;
  sub_1001C6138(v69);

  v70._countAndFlagsBits = 32;
  v70._object = 0xE100000000000000;
  sub_1001C6138(v70);
  v66 = *v0;
  v71._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v71);

  v72._countAndFlagsBits = 32;
  v72._object = 0xE100000000000000;
  sub_1001C6138(v72);
  sub_10009ADF0(v0 + v29[7], v22, &qword_1002705B8, &unk_1001F2BE0);
  v33 = *(v24 + 48);
  if (v33(v22, 1, v23) == 1)
  {
    sub_1001C4ED8();
    if (v33(v22, 1, v23) != 1)
    {
      sub_10008875C(v22, &qword_1002705B8, &unk_1001F2BE0);
    }
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
  }

  sub_1001C4EC8();
  (*(v24 + 8))(v27, v23);
  sub_1000D74B0();
  v34 = v64;
  v73._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v73);

  (*(v63 + 8))(v18, v34);
  v35 = v67;
  v36 = v68;
  v37 = v65;
  sub_10009ADF0(v1 + v29[5], v65, &qword_1002705B0, &qword_1001F2BD8);
  v38 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = v62;
      sub_1000D7508(v37, v62, type metadata accessor for PBPropertyBookReadParams);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1001C69C8(24);

      v67 = 0x736572676F727020;
      v68 = 0xEA00000000003D73;
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v45 = swift_allocObject();
      v65 = xmmword_1001F0670;
      *(v45 + 16) = xmmword_1001F0670;
      v46 = *(v44 + 1);
      *(v45 + 56) = &type metadata for Float;
      *(v45 + 64) = &protocol witness table for Float;
      *(v45 + 32) = v46;
      v75._countAndFlagsBits = sub_1001C6048();
      sub_1001C6138(v75);

      v76._countAndFlagsBits = 0x6C706D6153736920;
      v76._object = 0xEA00000000003D65;
      sub_1001C6138(v76);
      v47 = swift_allocObject();
      *(v47 + 16) = v65;
      v48 = *v44;
      v49 = sub_100084570();
      v50 = 20302;
      if (v48)
      {
        v50 = 5457241;
      }

      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = v49;
      if (v48)
      {
        v51 = 0xE300000000000000;
      }

      else
      {
        v51 = 0xE200000000000000;
      }

      *(v47 + 32) = v50;
      *(v47 + 40) = v51;
      v77._countAndFlagsBits = sub_1001C6048();
      sub_1001C6138(v77);

      v39 = v67;
      v40 = v68;
      v52 = type metadata accessor for PBPropertyBookReadParams;
      v53 = v44;
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v42 = v60;
      sub_1000D7508(v37, v60, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v67 = 0;
      v68 = 0xE000000000000000;
      v74._countAndFlagsBits = 0x3D65756C617620;
      v74._object = 0xE700000000000000;
      sub_1001C6138(v74);
      sub_1001C6AD8();
      v39 = v67;
      v40 = v68;
      v43 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
    }

    else
    {
      v42 = v61;
      sub_1000D7508(v37, v61, type metadata accessor for PBPropertyBookImpressionParam);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1001C69C8(40);

      v67 = 0xD000000000000026;
      v68 = 0x8000000100200250;
      if (*v42)
      {
        v54._countAndFlagsBits = 1702195828;
      }

      else
      {
        v54._countAndFlagsBits = 0x65736C6166;
      }

      if (*v42)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      v54._object = v55;
      sub_1001C6138(v54);

      v39 = v67;
      v40 = v68;
      v43 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_32:
    v52 = v43;
    v53 = v42;
LABEL_33:
    sub_1000D7570(v53, v52);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload)
  {
    v42 = v58;
    sub_1000D7508(v37, v58, type metadata accessor for PBPropertySingleFloatParam);
    v67 = 0;
    v68 = 0xE000000000000000;
    v78._countAndFlagsBits = 0x3D65756C617620;
    v78._object = 0xE700000000000000;
    sub_1001C6138(v78);
    sub_1001C6AD8();
    v39 = v67;
    v40 = v68;
    v43 = type metadata accessor for PBPropertySingleFloatParam;
    goto LABEL_32;
  }

  sub_1000D7570(v37, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_11:
  v39 = 0;
  v40 = 0xE000000000000000;
LABEL_34:
  v67 = v35;
  v68 = v36;
  v79._countAndFlagsBits = v39;
  v79._object = v40;
  sub_1001C6138(v79);

  return v67;
}

void sub_1000D70AC()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PBPropertyConfiguration(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = 0;
  v33 = 0xE000000000000000;
  v16 = type metadata accessor for PBPropertyBundle(0);
  sub_10009ADF0(v1 + *(v16 + 28), v10, &qword_1002705A8, &unk_1001F5200);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v15[4] = 0;
    v18 = v15 + *(v11 + 32);
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    if (v17(v10, 1, v11) != 1)
    {
      sub_10008875C(v10, &qword_1002705A8, &unk_1001F5200);
    }
  }

  else
  {
    sub_1000D7508(v10, v15, type metadata accessor for PBPropertyConfiguration);
  }

  v19 = v15[2];
  v20 = v15[3];

  sub_1000D7570(v15, type metadata accessor for PBPropertyConfiguration);
  v34._countAndFlagsBits = v19;
  v34._object = v20;
  sub_1001C6138(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  sub_1001C6138(v35);
  v21 = *v1;
  v22 = *(*v1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0xE000000000000000;
    while (v24 < *(v21 + 16))
    {
      sub_1000D744C(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24++, v6);
      v30 = v23;
      v31 = v25;
      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v27 = 8236;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = 0xE200000000000000;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      v36._countAndFlagsBits = v27;
      v36._object = v28;
      sub_1001C6138(v36);

      v37._countAndFlagsBits = sub_1000D67E0();
      sub_1001C6138(v37);

      v23 = v30;
      v29 = v31;
      sub_1000D7570(v6, type metadata accessor for PBPropertyValue);

      v25 = v29;
      if (v22 == v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v29 = 0xE000000000000000;
LABEL_19:
    v38._countAndFlagsBits = v23;
    v38._object = v29;
    sub_1001C6138(v38);
  }
}

uint64_t sub_1000D744C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D74B0()
{
  result = qword_100270A80;
  if (!qword_100270A80)
  {
    sub_1001C4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270A80);
  }

  return result;
}

uint64_t sub_1000D7508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D7570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21PriceDropNotificationVMa()
{
  result = qword_100270618;
  if (!qword_100270618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D7644()
{
  result = sub_1001C4B28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D76DC()
{
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C6248();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1001C6D08();
  }

  return v1 & 1;
}

uint64_t sub_1000D7788(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100270680, &qword_1001F2E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000D94E4();
  sub_1001C6E78();
  v20 = *v3;
  v19[7] = 0;
  sub_1000D9538();
  sub_1001C6CA8();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    v19[6] = 1;
    sub_1001C6C68();
    v13 = v3[3];
    v14 = v3[4];
    v19[5] = 2;
    sub_1001C6C68();
    v15 = v3[5];
    v16 = v3[6];
    v19[4] = 3;
    sub_1001C6C68();
    v17 = *(_s21PriceDropNotificationVMa() + 32);
    v19[3] = 4;
    sub_1001C4B28();
    sub_1000D958C();
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000D79CC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 0x6B6E694C70656564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_1000D7A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D96FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D7A80(uint64_t a1)
{
  v2 = sub_1000D94E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D7ABC(uint64_t a1)
{
  v2 = sub_1000D94E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D7B14()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_1000D7B88()
{
  v2 = *v0;
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C60E8();
}

Swift::Int sub_1000D7BF4()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_1000D7D14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000D76DC();
}

unint64_t sub_1000D7D20()
{
  result = qword_100270660;
  if (!qword_100270660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270660);
  }

  return result;
}

unint64_t sub_1000D7D78()
{
  result = qword_100270668;
  if (!qword_100270668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270668);
  }

  return result;
}

uint64_t sub_1000D7DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000D9058(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000D7E04@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  sub_10008E704();
  result = sub_1001C61D8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D7E58()
{
  v2 = *v0;
  sub_10008E704();
  return sub_1001C61D8();
}

void *sub_1000D7EEC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_100270670, &qword_1001F2E10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1000D7F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1001C61F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000D8A84();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1001C6A38();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000D84EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1000D943C();

  result = sub_1001C61F8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000D8A84();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1001C6A38();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000D8A84()
{
  v0 = sub_1001C6208();
  v4 = sub_1000D8B04(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000D8B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1001C60D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1001C6828();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000D7EEC(v9, 0);
  v12 = sub_1000D8C5C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1001C60D8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1001C6A38();
LABEL_4:

  return sub_1001C60D8();
}

unint64_t sub_1000D8C5C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000D8E7C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1001C6198();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1001C6A38();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000D8E7C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1001C6168();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000D8E7C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1001C61A8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1001C6178();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000D8EF8(uint64_t *a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = *a1;
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C6248();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = sub_1001C6D08();

    if ((v5 & 1) == 0)
    {
LABEL_18:
      v7 = 0;
      return v7 & 1;
    }
  }

  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1001C6D08() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1001C6D08() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1001C6D08() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = *(_s21PriceDropNotificationVMa() + 32);
  v7 = sub_1001C4AC8();
  return v7 & 1;
}

uint64_t sub_1000D9058(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v33[0] = result;
      v33[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v19 = v33 + 1;
            while (1)
            {
              v20 = *v19;
              v21 = v20 - 48;
              if ((v20 - 48) >= 0xA)
              {
                if ((v20 - 65) < 0x1A)
                {
                  v21 = v20 - 55;
                }

                else
                {
                  if ((v20 - 97) > 0x19)
                  {
                    goto LABEL_87;
                  }

                  v21 = v20 - 87;
                }
              }

              v22 = 36 * v6;
              if ((v6 * 36) >> 64 != (36 * v6) >> 63)
              {
                break;
              }

              v6 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v19;
              if (!--v3)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_87;
        }

LABEL_98:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v26 = v33;
          while (1)
          {
            v27 = *v26;
            v28 = v27 - 48;
            if ((v27 - 48) >= 0xA)
            {
              if ((v27 - 65) < 0x1A)
              {
                v28 = v27 - 55;
              }

              else
              {
                if ((v27 - 97) > 0x19)
                {
                  goto LABEL_87;
                }

                v28 = v27 - 87;
              }
            }

            v29 = 36 * v6;
            if ((v6 * 36) >> 64 != (36 * v6) >> 63)
            {
              break;
            }

            v6 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v26;
            if (!--v2)
            {
              LOBYTE(v3) = 0;
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v11 = v33 + 1;
          while (1)
          {
            v12 = *v11;
            v13 = v12 - 48;
            if ((v12 - 48) >= 0xA)
            {
              if ((v12 - 65) < 0x1A)
              {
                v13 = v12 - 55;
              }

              else
              {
                if ((v12 - 97) > 0x19)
                {
                  goto LABEL_87;
                }

                v13 = v12 - 87;
              }
            }

            v14 = 36 * v6;
            if ((v6 * 36) >> 64 != (36 * v6) >> 63)
            {
              break;
            }

            v6 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1001C6A38();
        v3 = v32;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            if (result)
            {
              v6 = 0;
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15;
                v17 = v16 - 48;
                if ((v16 - 48) >= 0xA)
                {
                  if ((v16 - 65) < 0x1A)
                  {
                    v17 = v16 - 55;
                  }

                  else
                  {
                    if ((v16 - 97) > 0x19)
                    {
                      goto LABEL_87;
                    }

                    v17 = v16 - 87;
                  }
                }

                v18 = 36 * v6;
                if ((v6 * 36) >> 64 != (36 * v6) >> 63)
                {
                  goto LABEL_87;
                }

                v6 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_87;
                }

                ++v15;
                if (!--v3)
                {
                  goto LABEL_88;
                }
              }
            }

            goto LABEL_75;
          }

          goto LABEL_87;
        }

        goto LABEL_97;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          if (result)
          {
            v6 = 0;
            while (1)
            {
              v23 = *result;
              v24 = v23 - 48;
              if ((v23 - 48) >= 0xA)
              {
                if ((v23 - 65) < 0x1A)
                {
                  v24 = v23 - 55;
                }

                else
                {
                  if ((v23 - 97) > 0x19)
                  {
                    goto LABEL_87;
                  }

                  v24 = v23 - 87;
                }
              }

              v25 = 36 * v6;
              if ((v6 * 36) >> 64 != (36 * v6) >> 63)
              {
                goto LABEL_87;
              }

              v6 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_87;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_87:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_88;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          if (result)
          {
            v6 = 0;
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7;
              v9 = v8 - 48;
              if ((v8 - 48) >= 0xA)
              {
                if ((v8 - 65) < 0x1A)
                {
                  v9 = v8 - 55;
                }

                else
                {
                  if ((v8 - 97) > 0x19)
                  {
                    goto LABEL_87;
                  }

                  v9 = v8 - 87;
                }
              }

              v10 = 36 * v6;
              if ((v6 * 36) >> 64 != (36 * v6) >> 63)
              {
                goto LABEL_87;
              }

              v6 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_87;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_88;
              }
            }
          }

LABEL_75:
          v6 = 0;
          LOBYTE(v3) = 0;
LABEL_88:
          v34 = v3;
          v30 = v3;
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v6 = sub_1000D7F60(result, a2, 36);
  v30 = v31;
LABEL_89:

  if (v30)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1000D943C()
{
  result = qword_1002728B0;
  if (!qword_1002728B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002728B0);
  }

  return result;
}

unint64_t sub_1000D9490()
{
  result = qword_100270678;
  if (!qword_100270678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270678);
  }

  return result;
}

unint64_t sub_1000D94E4()
{
  result = qword_100270688;
  if (!qword_100270688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270688);
  }

  return result;
}

unint64_t sub_1000D9538()
{
  result = qword_100270690;
  if (!qword_100270690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270690);
  }

  return result;
}

unint64_t sub_1000D958C()
{
  result = qword_100270698;
  if (!qword_100270698)
  {
    sub_1001C4B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270698);
  }

  return result;
}

unint64_t sub_1000D95F8()
{
  result = qword_1002706A0;
  if (!qword_1002706A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002706A0);
  }

  return result;
}

unint64_t sub_1000D9650()
{
  result = qword_1002706A8;
  if (!qword_1002706A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002706A8);
  }

  return result;
}

unint64_t sub_1000D96A8()
{
  result = qword_1002706B0;
  if (!qword_1002706B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002706B0);
  }

  return result;
}

uint64_t sub_1000D96FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_1001C6D08();

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

void sub_1000D98A8()
{
  v1 = _s9SchedulerC5StateOMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v0 + v5, v4);
  v6 = sub_1000D9A88();
  v8 = v7;
  sub_1000DCEAC(v4);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v9 = sub_1001C5148();
  sub_100083274(v9, qword_100281898);

  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136446210;
    v14 = sub_1001874E8(v6, v8, &v15);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Scheduler] state → %{public}s", v12, 0xCu);
    sub_10008E7BC(v13);
  }

  else
  {
  }
}

uint64_t sub_1000D9A88()
{
  v1 = _s9SchedulerC5StateOMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DCDF4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *(v4 + 1);
      v15 = *v4;
      v16 = v11;
      v17 = *(v4 + 2);
      v18 = v4[48];
      sub_1000DCE58(&v15);
      v12 = *(sub_100084528(&qword_100270870, &qword_1001F30F8) + 48);
      v13 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
      (*(*(v13 - 8) + 8))(&v4[v12], v13);
      return 0x676E6970706F7473;
    }

    else
    {
      return 1701602409;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1000DCEAC(v4);
    return 0x676E696E6E7572;
  }

  else
  {
    v6 = *(v4 + 1);
    v15 = *v4;
    v16 = v6;
    v17 = *(v4 + 2);
    v18 = v4[48];
    v14[0] = 0x656C756465686373;
    v14[1] = 0xEA00000000002864;
    v7 = sub_10016C674();
    v9 = v8;
    sub_1000DCE58(&v15);
    v19._countAndFlagsBits = v7;
    v19._object = v9;
    sub_1001C6138(v19);

    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    sub_1001C6138(v20);
    return v14[0];
  }
}

uint64_t sub_1000D9C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    sub_1000D9CE4(a1, ObjectType, a2);
  }

  return result;
}

uint64_t sub_1000D9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v12 = sub_1001C5148();
  sub_100083274(v12, qword_100281898);
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Scheduler] Launching BG task", v15, 2u);
  }

  v16 = sub_1001C6348();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = v4;
  v17[7] = a1;

  swift_unknownObjectRetain();
  sub_10016CE38(0, 0, v11, &unk_1001F3130, v17);
}

uint64_t sub_1000D9ECC()
{
  v1 = v0;
  v2 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  v29[0] = *(v2 - 8);
  v3 = *(v29[0] + 64);
  __chkstk_darwin(v2);
  v5 = v29 - v4;
  v6 = _s9SchedulerC5StateOMa(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v13 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v1 + v13, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_6;
    }

    v15 = *(v12 + 1);

    v16 = sub_100084528(&qword_100270870, &qword_1001F30F8);
    (*(v29[0] + 8))(&v12[*(v16 + 48)], v2);
  }

  else
  {
    sub_1000DCEAC(v12);
  }

  sub_1000B3A90(v1 + 112, v30);
  v17 = v31;
  v18 = v32;
  sub_10009BB74(v30, v31);
  (*(v18 + 40))(0xD00000000000002CLL, 0x8000000100200320, v17, v18);
  sub_10008E7BC(v30);
LABEL_6:
  sub_1000DCDF4(v1 + v13, v10);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v10 + 1);

      v21 = sub_100084528(&qword_100270870, &qword_1001F30F8);
      v22 = v29[0];
      (*(v29[0] + 32))(v5, &v10[*(v21 + 48)], v2);
      LOBYTE(v30[0]) = 1;
      sub_1001C6328();
      (*(v22 + 8))(v5, v2);
    }
  }

  else if (v19)
  {
    v23 = *(v10 + 1);
    v24 = *(v10 + 7);

    sub_1001C63A8();
  }

  else
  {
    sub_1000DCEAC(v10);
  }

  sub_1000B3A90(v1 + 112, v30);
  v25 = v31;
  v26 = v32;
  sub_10009BB74(v30, v31);
  (*(v26 + 16))(0xD00000000000002CLL, 0x8000000100200320, v25, v26);
  sub_10008E7BC(v30);
  sub_10008E7BC((v1 + 112));
  v27 = *(v1 + 160);

  sub_1000DCEAC(v1 + v13);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1000DA260()
{
  sub_1000D9ECC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DA2B4()
{
  result = _s9SchedulerC5StateOMa(319);
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

void sub_1000DA3E8()
{
  sub_1000DA498(319, &qword_100270820, &qword_100270828, &qword_1001F2FB8);
  if (v0 <= 0x3F)
  {
    sub_1000DA498(319, &qword_100270830, &unk_100270838, &unk_1001F2FC0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000DA498(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000885AC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1000DA510()
{
  result = qword_100270868;
  if (!qword_100270868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270868);
  }

  return result;
}

uint64_t sub_1000DA570(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 == *&v2;
  }

  v5 = v4;
  v6 = *a1 == v2;
  if (v3 != 1)
  {
    v6 = 0;
  }

  v7 = *a1 == *a2;
  if (v3 != 2)
  {
    v7 = 0;
  }

  if (*(a1 + 8) != 1)
  {
    v6 = v7;
  }

  if (*(a1 + 8))
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1000DA5D4(uint64_t a1)
{
  v2[160] = v1;
  v2[159] = a1;
  v3 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  v2[161] = v3;
  v4 = *(v3 - 8);
  v2[162] = v4;
  v5 = *(v4 + 64) + 15;
  v2[163] = swift_task_alloc();
  v6 = _s9SchedulerC5StateOMa(0);
  v2[164] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[165] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA6D4, v1, 0);
}

uint64_t sub_1000DA6D4()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1280);
  v4 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v3 + v4, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = *(v0 + 1320);
      v7 = *(v0 + 1272);
      v8 = *v6;
      v9 = v6[1];
      v11 = v6[2];
      v10 = v6[3];
      v13 = v6[4];
      v12 = v6[5];
      v14 = *(v6 + 48);
      v15 = *v7;
      v16 = *(v7 + 8);
      v17 = *(v7 + 16);
      v19 = *(v7 + 24);
      v18 = *(v7 + 32);
      v20 = *(v7 + 40);
      v21 = *(v7 + 48);
      if (v9)
      {
        if (v16)
        {
          *(v0 + 352) = v15;
          *(v0 + 360) = v16;
          *(v0 + 368) = v17;
          *(v0 + 376) = v19;
          *(v0 + 384) = v18;
          *(v0 + 392) = v20;
          *(v0 + 400) = v21;
          *(v0 + 408) = v8;
          *(v0 + 416) = v9;
          *(v0 + 424) = v11;
          *(v0 + 432) = v10;
          *(v0 + 440) = v13;
          *(v0 + 448) = v12;
          *(v0 + 456) = v14;
          v22 = sub_10016C9E4(v0 + 408, v0 + 352);
          sub_1000DCF60(v7, v0 + 240);

          if (v22)
          {
            goto LABEL_29;
          }

LABEL_17:
          v69 = *(v0 + 1280);
          sub_1000DB5A8();
          v70 = *(v7 + 8);
          if (v70)
          {
            v71 = *(v0 + 1280);
            *(v0 + 576) = **(v0 + 1272);
            *(v0 + 584) = v70;
            v72 = *(v7 + 48);
            v73 = *(v7 + 32);
            *(v0 + 592) = *(v7 + 16);
            *(v0 + 608) = v73;
            *(v0 + 624) = v72;
            v68 = v0 + 576;
            goto LABEL_19;
          }

          goto LABEL_29;
        }

LABEL_16:
        *(v0 + 128) = v8;
        *(v0 + 136) = v9;
        *(v0 + 144) = v11;
        *(v0 + 152) = v10;
        *(v0 + 160) = v13;
        *(v0 + 168) = v12;
        *(v0 + 176) = v14;
        *(v0 + 184) = v15;
        *(v0 + 192) = v16;
        *(v0 + 200) = v17;
        *(v0 + 208) = v19;
        *(v0 + 216) = v18;
        *(v0 + 224) = v20;
        *(v0 + 232) = v21;
        sub_1000DCF60(v7, v0 + 1136);
        sub_10008875C(v0 + 128, &unk_100270888, &unk_1001F3110);
        goto LABEL_17;
      }

      if (v16)
      {
        goto LABEL_16;
      }

      sub_1000DCF60(*(v0 + 1272), v0 + 1192);
LABEL_28:

      goto LABEL_29;
    }

    v43 = *(v0 + 1320);
    v44 = *(v0 + 1272);
    v46 = v43[1];
    v45 = v43[2];
    v47 = *v43;
    *(v0 + 344) = *(v43 + 48);
    *(v0 + 312) = v46;
    *(v0 + 328) = v45;
    *(v0 + 296) = v47;
    v48 = *v43;
    v49 = *(v43 + 1);
    v51 = *(v43 + 2);
    v50 = *(v43 + 3);
    v53 = *(v43 + 4);
    v52 = *(v43 + 5);
    v54 = *(v43 + 48);
    *(v0 + 1328) = *(v43 + 7);
    v55 = *v44;
    v56 = *(v44 + 8);
    v57 = *(v44 + 16);
    v58 = *(v44 + 24);
    v60 = *(v44 + 32);
    v59 = *(v44 + 40);
    v61 = *(v44 + 48);
    if (v49)
    {
      if (v56)
      {
        *(v0 + 1080) = v55;
        *(v0 + 1088) = v56;
        *(v0 + 1096) = v57;
        *(v0 + 1104) = v58;
        *(v0 + 1112) = v60;
        *(v0 + 1120) = v59;
        *(v0 + 1128) = v61;
        *(v0 + 744) = v48;
        *(v0 + 752) = v49;
        *(v0 + 760) = v51;
        *(v0 + 768) = v50;
        *(v0 + 776) = v53;
        *(v0 + 784) = v52;
        *(v0 + 792) = v54;
        v62 = sub_10016C9E4(v0 + 744, v0 + 1080);
        sub_1000DCF60(v44, v0 + 968);
        sub_1000DCFD0(v0 + 296, v0 + 1024);

        if (v62)
        {
          sub_1000DCE58(v0 + 296);

          goto LABEL_29;
        }

        goto LABEL_22;
      }
    }

    else if (!v56)
    {
      sub_1000DCF60(v44, v0 + 912);

      goto LABEL_28;
    }

    *(v0 + 16) = v48;
    *(v0 + 24) = v49;
    *(v0 + 32) = v51;
    *(v0 + 40) = v50;
    *(v0 + 48) = v53;
    *(v0 + 56) = v52;
    *(v0 + 64) = v54;
    *(v0 + 72) = v55;
    *(v0 + 80) = v56;
    *(v0 + 88) = v57;
    *(v0 + 96) = v58;
    *(v0 + 104) = v60;
    *(v0 + 112) = v59;
    *(v0 + 120) = v61;
    sub_1000DCF60(v44, v0 + 800);
    sub_1000DCFD0(v0 + 296, v0 + 856);
    sub_10008875C(v0 + 16, &unk_100270888, &unk_1001F3110);
LABEL_22:
    v74 = *(v0 + 1280);
    sub_1001C63A8();
    v75 = sub_1000DCF08();
    v76 = swift_task_alloc();
    *(v0 + 1336) = v76;
    *(v76 + 16) = v74;
    *(v76 + 24) = v0 + 296;
    v77 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v78 = swift_task_alloc();
    *(v0 + 1344) = v78;
    *v78 = v0;
    v78[1] = sub_1000DAC74;
    v36 = sub_1000DD02C;
    v37 = v0 + 122;
    v41 = 0xD000000000000019;
    v38 = 0x8000000100200300;
    v39 = v74;
    v40 = v75;
    v42 = v76;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v63 = *(v0 + 1272);
    v64 = *(v63 + 8);
    if (v64)
    {
      v65 = *(v0 + 1280);
      *(v0 + 632) = *v63;
      *(v0 + 640) = v64;
      v66 = *(v63 + 48);
      v67 = *(v63 + 32);
      *(v0 + 648) = *(v63 + 16);
      *(v0 + 664) = v67;
      *(v0 + 680) = v66;
      v68 = v0 + 632;
LABEL_19:
      sub_1000DB0C4(v68);
    }

LABEL_29:
    v79 = *(v0 + 1320);
    v80 = *(v0 + 1304);

    v81 = *(v0 + 8);

    return v81();
  }

  v23 = *(v0 + 1320);
  v24 = *(v0 + 1304);
  v25 = *(v0 + 1296);
  v26 = *(v0 + 1288);
  v27 = *(v0 + 1280);
  v29 = v23[1];
  v28 = v23[2];
  v30 = *v23;
  *(v0 + 736) = *(v23 + 48);
  *(v0 + 704) = v29;
  *(v0 + 720) = v28;
  *(v0 + 688) = v30;
  v31 = sub_100084528(&qword_100270870, &qword_1001F30F8);
  (*(v25 + 32))(v24, v23 + *(v31 + 48), v26);
  *(v0 + 121) = 1;
  sub_1001C6328();
  v32 = sub_1000DCF08();
  v33 = swift_task_alloc();
  *(v0 + 1352) = v33;
  *(v33 + 16) = v27;
  *(v33 + 24) = v0 + 688;
  v34 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v35 = swift_task_alloc();
  *(v0 + 1360) = v35;
  *v35 = v0;
  v35[1] = sub_1000DAE84;
  v36 = sub_1000DD348;
  v37 = v0 + 123;
  v38 = 0x80000001002002E0;
  v39 = v27;
  v40 = v32;
  v41 = 0xD000000000000018;
  v42 = v33;
LABEL_23:

  return withCheckedContinuation<A>(isolation:function:_:)(v37, v39, v40, v41, v38, v36, v42, &type metadata for ReplaceableContinuationResult);
}

uint64_t sub_1000DAC74()
{
  v1 = *(*v0 + 1344);
  v2 = *(*v0 + 1336);
  v3 = *(*v0 + 1280);
  v5 = *v0;

  return _swift_task_switch(sub_1000DADA0, v3, 0);
}

uint64_t sub_1000DADA0()
{
  if (*(v0 + 122))
  {
    v1 = *(v0 + 1328);
    sub_1000DCE58(v0 + 296);
  }

  else
  {
    v2 = *(v0 + 1280);
    v3 = *(v0 + 1272);
    sub_1000DB974(v0 + 296);
    sub_1000DCE58(v0 + 296);
    sub_1000DB5A8();
    v4 = *(v3 + 8);
    v5 = *(v0 + 1328);
    if (v4)
    {
      v6 = *(v0 + 1280);
      v7 = *(v0 + 1272);
      *(v0 + 520) = *v7;
      *(v0 + 528) = v4;
      v8 = *(v7 + 48);
      v9 = *(v7 + 32);
      *(v0 + 536) = *(v7 + 16);
      *(v0 + 552) = v9;
      *(v0 + 568) = v8;
      sub_1000DB0C4(v0 + 520);
    }
  }

  v10 = *(v0 + 1320);
  v11 = *(v0 + 1304);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000DAE84()
{
  v1 = *(*v0 + 1360);
  v2 = *(*v0 + 1352);
  v3 = *(*v0 + 1280);
  v5 = *v0;

  return _swift_task_switch(sub_1000DAFB0, v3, 0);
}

uint64_t sub_1000DAFB0()
{
  if (*(v0 + 123))
  {
    (*(*(v0 + 1296) + 8))(*(v0 + 1304), *(v0 + 1288));
    sub_1000DCE58(v0 + 688);
  }

  else
  {
    v1 = *(v0 + 1280);
    v2 = *(v0 + 1272);
    sub_1000DB974(v0 + 688);
    sub_1000DCE58(v0 + 688);
    sub_1000DB5A8();
    v3 = *(v2 + 8);
    v4 = *(v0 + 1304);
    v5 = *(v0 + 1296);
    v6 = *(v0 + 1288);
    if (v3)
    {
      v7 = *(v0 + 1280);
      v8 = *(v0 + 1272);
      *(v0 + 464) = *v8;
      *(v0 + 472) = v3;
      v9 = *(v8 + 48);
      v10 = *(v8 + 32);
      *(v0 + 480) = *(v8 + 16);
      *(v0 + 496) = v10;
      *(v0 + 512) = v9;
      sub_1000DB0C4(v0 + 464);
    }

    (*(v5 + 8))(v4, v6);
  }

  v11 = *(v0 + 1320);
  v12 = *(v0 + 1304);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000DB0C4(uint64_t a1)
{
  v2 = v1;
  v4 = _s9SchedulerC5StateOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[17];
  v9 = v1[18];
  sub_10009BB74(v1 + 14, v8);
  (*(v9 + 24))(v26, 0xD00000000000002CLL, 0x8000000100200320, v8, v9);
  if (v26[1])
  {
    sub_10008875C(v26, &qword_100270880, &qword_1001F3108);
    v10 = *(a1 + 16);
    *v7 = *a1;
    *(v7 + 1) = v10;
    *(v7 + 2) = *(a1 + 32);
    v7[48] = *(a1 + 48);
    swift_storeEnumTagMultiPayload();
    v11 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
    swift_beginAccess();
    sub_1000DCFD0(a1, v25);
    sub_1000DD048(v7, v1 + v11);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v7);
    sub_1000DCDF4(v1 + v11, v7);
    v12 = sub_1000D9A88();
    v14 = v13;
    sub_1000DCEAC(v7);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v15 = sub_1001C5148();
    sub_100083274(v15, qword_100281898);

    v16 = sub_1001C5128();
    v17 = sub_1001C6598();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v18 = 136446466;
      *(v18 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, v25);
      *(v18 + 12) = 2082;
      v19 = sub_1001874E8(v12, v14, v25);

      *(v18 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v16, v17, "[Scheduler] Found existing task request for %{public}s, assuming %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v20 = v1[17];
    v21 = v1[18];
    sub_10009BB74(v1 + 14, v20);
    (*(v21 + 32))(a1, v20, v21);
    v22 = *(a1 + 16);
    *v7 = *a1;
    *(v7 + 1) = v22;
    *(v7 + 2) = *(a1 + 32);
    v7[48] = *(a1 + 48);
    swift_storeEnumTagMultiPayload();
    v23 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
    swift_beginAccess();
    sub_1000DCFD0(a1, v25);
    sub_1000DD048(v7, v2 + v23);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v7);
  }

  return 1;
}

uint64_t sub_1000DB5A8()
{
  v1 = v0;
  v2 = _s9SchedulerC5StateOMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[17];
  v7 = v0[18];
  sub_10009BB74(v0 + 14, v6);
  (*(v7 + 24))(v19, 0xD00000000000002CLL, 0x8000000100200320, v6, v7);
  if (v19[1])
  {
    sub_10008875C(v19, &qword_100270880, &qword_1001F3108);
    v8 = v0[17];
    v9 = v0[18];
    sub_10009BB74(v0 + 14, v8);
    (*(v9 + 40))(0xD00000000000002CLL, 0x8000000100200320, v8, v9);
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v10 = sub_1001C5148();
    sub_100083274(v10, qword_100281898);
    v11 = sub_1001C5128();
    v12 = sub_1001C6598();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "[Scheduler] Did not find existing task request for %{public}s, assuming idle", v13, 0xCu);
      sub_10008E7BC(v14);
    }
  }

  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DD048(v5, v1 + v15);
  swift_endAccess();
  sub_1000D98A8();
  sub_1000DCEAC(v5);
  return 1;
}

double sub_1000DB974(uint64_t a1)
{
  v3 = _s9SchedulerC5StateOMa(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v1 + v10, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000DCEAC(v9);
  }

  else
  {
    v21 = *(v9 + 1);
    v23 = *v9;
    v24 = v21;
    v25 = *(v9 + 2);
    v26 = v9[48];
    if (*a1 == v23)
    {
      sub_1000DCE58(&v23);
    }

    else
    {
      v22 = sub_1001C6D08();
      sub_1000DCE58(&v23);
      if ((v22 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (*(a1 + 16) == v24 && BYTE8(v24) == (*(a1 + 24) & 1) && BYTE9(v24) == (*(a1 + 25) & 1))
    {
      if (*(a1 + 48))
      {
        if (v26)
        {
          return result;
        }
      }

      else if ((v26 & 1) == 0 && *(a1 + 32) == *&v25)
      {
        result = *(a1 + 40);
        if (result == *(&v25 + 1))
        {
          return result;
        }
      }
    }
  }

LABEL_3:
  sub_1000DCDF4(v1 + v10, v7);
  v11 = sub_1000D9A88();
  v13 = v12;
  sub_1000DCEAC(v7);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1001C5148();
  sub_100083274(v14, qword_100281898);

  v15 = sub_1001C5128();
  v16 = sub_1001C6598();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v23 = v18;
    *v17 = 136315138;
    v19 = sub_1001874E8(v11, v13, &v23);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "[Scheduler] Unexpected state: %s", v17, 0xCu);
    sub_10008E7BC(v18);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000DBC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9SchedulerC5StateOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(sub_100084528(&qword_100270870, &qword_1001F30F8) + 48);
  v9[48] = *(a3 + 48);
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 1) = v11;
  *(v9 + 2) = *(a3 + 32);
  v12 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  (*(*(v12 - 8) + 16))(&v9[v10], a1, v12);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCFD0(a3, v15);
  sub_1000DD048(v9, a2 + v13);
  swift_endAccess();
  sub_1000D98A8();
  return sub_1000DCEAC(v9);
}

uint64_t sub_1000DBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000DBDEC, a4, 0);
}

uint64_t sub_1000DBDEC()
{
  v1 = v0[2];
  sub_1000DBE50(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

void sub_1000DBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - v9;
  v11 = _s9SchedulerC5StateOMa(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v3 + v18, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v41 = sub_1001C5148();
      sub_100083274(v41, qword_100281898);
      v37 = sub_1001C5128();
      v38 = sub_1001C6598();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_20;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "[Scheduler] BG task was cancelled before work started";
      goto LABEL_19;
    }

    v33 = *(v17 + 1);
    v43 = *v17;
    v44 = v33;
    v45 = *(v17 + 2);
    LOBYTE(v46) = v17[48];
    sub_1000DCE58(&v43);
    v34 = *(sub_100084528(&qword_100270870, &qword_1001F30F8) + 48);
    v35 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
    (*(*(v35 - 8) + 8))(&v17[v34], v35);
LABEL_11:
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v36 = sub_1001C5148();
    sub_100083274(v36, qword_100281898);
    v37 = sub_1001C5128();
    v38 = sub_1001C6598();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_20;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "[Scheduler] Attempting to start Task while already running";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

LABEL_20:

    return;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1000DCEAC(v17);
    goto LABEL_11;
  }

  v42 = v3;
  v20 = *(v17 + 1);
  v47 = *v17;
  v48 = v20;
  v49 = *(v17 + 2);
  v50 = v17[48];
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v21 = sub_1001C5148();
  sub_100083274(v21, qword_100281898);
  v22 = sub_1001C5128();
  v23 = sub_1001C65B8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[Scheduler] Starting Task", v24, 2u);
  }

  v25 = sub_1001C6348();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  v26 = sub_1000DCF08();
  v27 = swift_allocObject();
  v28 = v42;
  v27[2] = v42;
  v27[3] = v26;
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = v28;
  v27[7] = a1;
  swift_retain_n();
  swift_unknownObjectRetain();
  v29 = sub_10016CE38(0, 0, v10, &unk_1001F3140, v27);
  v30 = *(a3 + 16);

  v30(sub_1000DD29C, v29, a2, a3);
  LOBYTE(v46) = v50;
  v31 = v48;
  v43 = v47;
  v44 = v48;
  v32 = v49;
  v45 = v49;
  *v15 = v47;
  *(v15 + 1) = v31;
  *(v15 + 2) = v32;
  *(v15 + 6) = v46;
  *(v15 + 7) = v29;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_1000DD048(v15, v28 + v18);
  swift_endAccess();
  sub_1000D98A8();

  sub_1000DCEAC(v15);
}

uint64_t sub_1000DC3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000DC3D8, a4, 0);
}

uint64_t sub_1000DC3D8()
{
  v1 = *(v0 + 16);
  _s9SchedulerCMa(0);
  sub_1000DCF08();
  sub_1001C6318();
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000DC510;

  return v7();
}

uint64_t sub_1000DC510()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000DC620, v2, 0);
}

uint64_t sub_1000DC620()
{
  v1 = v0[2];
  sub_1000DC684(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

void sub_1000DC684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39[-v10];
  v12 = _s9SchedulerC5StateOMa(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v39[-v17];
  (*(a3 + 32))(a2, a3);
  v19 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v3 + v19, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_10;
    }

    v21 = *(v18 + 1);
    v40 = *v18;
    v41 = v21;
    v42 = *(v18 + 2);
    v43 = v18[48];
    v22 = sub_100084528(&qword_100270870, &qword_1001F30F8);
    (*(v8 + 32))(v11, &v18[*(v22 + 48)], v7);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1001C5148();
    sub_100083274(v23, qword_100281898);
    v24 = sub_1001C5128();
    v25 = sub_1001C65B8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "[Scheduler] Finished stopping Task", v26, 2u);
    }

    v27 = v41;
    *v16 = v40;
    *(v16 + 1) = v27;
    *(v16 + 2) = v42;
    v16[48] = v43;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000DD048(v16, v4 + v19);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v16);
    v39[8] = 0;
    sub_1001C6328();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000DCEAC(v18);
LABEL_10:
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v28 = sub_1001C5148();
      sub_100083274(v28, qword_100281898);
      v29 = sub_1001C5128();
      v30 = sub_1001C6598();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "[Scheduler] Attempt to finsh Task while not running", v31, 2u);
      }

      return;
    }

    v32 = *(v18 + 1);
    v40 = *v18;
    v41 = v32;
    v42 = *(v18 + 2);
    v43 = v18[48];
    v33 = *(v18 + 7);

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1001C5148();
    sub_100083274(v34, qword_100281898);
    v35 = sub_1001C5128();
    v36 = sub_1001C65B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "[Scheduler] Finished running Task", v37, 2u);
    }

    v38 = v41;
    *v16 = v40;
    *(v16 + 1) = v38;
    *(v16 + 2) = v42;
    v16[48] = v43;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000DD048(v16, v4 + v19);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v16);
  }
}

void sub_1000DCBB4()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1001C5148();
  sub_100083274(v0, qword_100281898);
  v1 = sub_1001C5128();
  v2 = sub_1001C65B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Scheduler] BG task expired, requesting Task cancellation", v3, 2u);
  }

  sub_1001C63A8();
}

void sub_1000DCCC0(double a1, double a2)
{
  v3 = round(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001C6CC8();
  v5._countAndFlagsBits = 47;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  v4 = round(a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 9.22337204e18)
  {
    v6._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v6);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000DCDF4(uint64_t a1, uint64_t a2)
{
  v4 = _s9SchedulerC5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCEAC(uint64_t a1)
{
  v2 = _s9SchedulerC5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DCF08()
{
  result = qword_100270878;
  if (!qword_100270878)
  {
    _s9SchedulerCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270878);
  }

  return result;
}

uint64_t sub_1000DCF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100270880, &qword_1001F3108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD048(uint64_t a1, uint64_t a2)
{
  v4 = _s9SchedulerC5StateOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD0AC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009B25C;

  return sub_1000DBDC8(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1000DD180()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DD1C8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009AAEC;

  return sub_1000DC3B4(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t _s9SchedulerC11ConfigErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t _s9SchedulerC11ConfigErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Void __swiftcall ReadingHistoryService.setEnableCloudSync(_:)(Swift::Bool a1)
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001F0670;
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 64) = &protocol witness table for Bool;
  v4 = a1;
  *(v3 + 32) = a1;
  sub_1001C5118();

  v5 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
  v6 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v5 + v6) = a1;
  if (v7 != v4)
  {
    v8 = *(v5 + qword_10026FB30);
    v9 = *(v8 + qword_100281A08);
    *(v8 + qword_100281A08) = v4;
    if (v9 != v4)
    {
      sub_1000F1254(a1);
    }
  }
}

uint64_t sub_1000DD4AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t ReadingHistoryService.clearData(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5688();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v18[1] = *&v2[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1000F161C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246458;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1001C5668();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t ReadingHistoryService.clearDefaultsCachedData(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5688();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v18[1] = *&v2[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1000F1640;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002464A8;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1001C5668();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t ReadingHistoryService.clearDate(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v5 = sub_1001C5648();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001C4CA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    LODWORD(v27) = v17;
    swift_once();
  }

  sub_1001C5118();
  v27 = *&v3[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v14 + 32))(v20 + v18, v16, v13);
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = sub_1000F164C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002464F8;
  v23 = _Block_copy(aBlock);
  v24 = v3;

  sub_1001C5668();
  v33 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v23);
  (*(v32 + 8))(v8, v5);
  (*(v30 + 8))(v12, v31);
}

uint64_t ReadingHistoryService.clearToday(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5688();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v18[1] = *&v2[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1000F1720;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246548;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1001C5668();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t ReadingHistoryService.handleSyncFileChange(syncVersionInfo:updateInfo:completionHandler:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v15 - v10);
  if (!a1)
  {
    v14 = type metadata accessor for CRDTModelSyncVersion();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = a1;
  static CRDTModelSyncVersion.fromInfo(_:)(v12, v11);

  if (a2)
  {
LABEL_3:
    a2 = [a2 update];
  }

LABEL_4:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v11, a2, a3, a4);

  return sub_10008875C(v11, &unk_10026F350, &qword_1001F31E0);
}

uint64_t ReadingHistoryService.increment(date:by:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v35 = a2;
  v36 = a3;
  v5 = sub_1001C5648();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001C4CA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v33) = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001F0660;
  v16 = sub_1001C4C08();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100084570();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = &type metadata for Int;
  *(v15 + 104) = &protocol witness table for Int;
  v20 = v35;
  *(v15 + 64) = v19;
  *(v15 + 72) = v20;
  sub_1001C5118();

  v21 = v37;
  v33 = *&v37[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v22 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  (*(v12 + 32))(v24 + v22, v14, v11);
  *(v24 + v23) = v20;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v38;
  *v25 = v36;
  v25[1] = v26;
  aBlock[4] = sub_1000F172C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246598;
  v27 = _Block_copy(aBlock);
  v28 = v21;

  v29 = v34;
  sub_1001C5668();
  v44 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v30 = v41;
  v31 = v43;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
}

uint64_t ReadingHistoryService.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v61 = a3;
  v62 = a2;
  v6 = sub_1001C5648();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  __chkstk_darwin(v6);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1001C4CA8();
  v12 = *(v59 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v59);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v57 = &v54 - v17;
  v56 = v18;
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001F0680;
  v22 = sub_1001C4C08();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  v25 = sub_100084570();
  *(v21 + 64) = v25;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v26 = v62;
  v27 = sub_1001C4C08();
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v25;
  *(v21 + 72) = v27;
  *(v21 + 80) = v28;
  v29 = v61;
  v30 = sub_1001C4C08();
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v25;
  *(v21 + 112) = v30;
  *(v21 + 120) = v31;
  sub_1001C5118();

  v32 = v29;
  v33 = v71;
  v58 = *&v71[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v34 = *(v12 + 16);
  v55 = v20;
  v35 = a1;
  v36 = v59;
  v34(v20, v35, v59);
  v37 = v57;
  v34(v57, v26, v36);
  v38 = v60;
  v34(v60, v32, v36);
  v39 = *(v12 + 80);
  v40 = (v39 + 24) & ~v39;
  v41 = (v56 + v39 + v40) & ~v39;
  v42 = (v56 + v39 + v41) & ~v39;
  v43 = (v56 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v33;
  v45 = *(v12 + 32);
  v45(v44 + v40, v55, v36);
  v45(v44 + v41, v37, v36);
  v45(v44 + v42, v38, v36);
  v46 = (v44 + v43);
  v47 = v64;
  *v46 = v63;
  v46[1] = v47;
  aBlock[4] = sub_10009A464;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002465E8;
  v48 = _Block_copy(aBlock);
  v49 = v71;

  v50 = v65;
  sub_1001C5668();
  v72 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v51 = v68;
  v52 = v70;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v48);
  (*(v69 + 8))(v51, v52);
  (*(v66 + 8))(v50, v67);
}

BDSReadingHistoryServiceStatusInfo __swiftcall ReadingHistoryService.serviceStatusInfo()()
{
  v0 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:1];
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001F0670;
  *(v1 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
  *(v1 + 64) = sub_1000F17CC(&qword_10026F378, &qword_10026F370, off_10023DD40);
  *(v1 + 32) = v0;
  v2 = v0;
  sub_1001C5118();

  v4 = v2;
  result._status = v3;
  result.super.isa = v4;
  return result;
}

uint64_t sub_1000DF04C()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = qword_1002711E8;
  sub_1001C5118();
  v3 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_viewStateChangeHandler);
  if (v3)
  {
    v4 = [swift_unknownObjectRetain() currentViewStateInfo];
    v5 = sub_1001C65B8();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, v5, "ReadingHistoryService DONE bookWidgetReadingHistoryStateInfo: %@", v6, 0xCu);
      sub_10008875C(v7, &unk_1002718E0, &qword_1001F31F0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1001C6598();
    sub_1001C5118();
    v4 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v4, v3 != 0);
}

uint64_t sub_1000DF26C()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000DF368;
  v2 = *(v0 + 16);

  return sub_1000E0774();
}

uint64_t sub_1000DF368(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t ReadingHistoryService.backup(name:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000DF48C, 0, 0);
}

uint64_t sub_1000DF48C()
{
  v1 = v0[4];
  v0[5] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000DF534;
  v4 = v0[2];
  v3 = v0[3];

  return ReadingHistoryBackupManager.backup(name:)(v4, v3);
}

uint64_t sub_1000DF534()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000DF674, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5(1);
  }
}

uint64_t sub_1000DF674()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t sub_1000DF6FC()
{
  v1 = v0[2];
  v0[3] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000DF798;

  return sub_100133D3C();
}

uint64_t sub_1000DF798(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000DF8F4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1, 1);
  }
}

uint64_t sub_1000DF8F4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t ReadingHistoryService.restore(name:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000DF980, 0, 0);
}

uint64_t sub_1000DF980()
{
  v1 = v0[4];
  v0[5] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000DFA28;
  v4 = v0[2];
  v3 = v0[3];

  return ReadingHistoryBackupManager.restore(name:)(v4, v3);
}

uint64_t sub_1000DFA28()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F51DC, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5(1);
  }
}

void sub_1000DFB68(char a1)
{
  v3 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = a1 & 1;
  *(v1 + v3) = a1;
  if (v4 != v5)
  {
    v6 = *(v1 + qword_10026FB30);
    v7 = *(v6 + qword_100281A08);
    *(v6 + qword_100281A08) = v5;
    if (v7 != v5)
    {
      sub_1000F1254(a1 & 1);
    }
  }
}

char *sub_1000DFBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v25 = a2;
  v23 = a1;
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1001C6668();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C5688();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  v14 = &v4[*(*v4 + 144)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v22 = *(*v3 + 152);
  v21[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  v26 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *&v3[v22] = sub_1001C66A8();
  *&v3[*(*v3 + 160)] = &_swiftEmptySetSingleton;
  *&v3[*(*v3 + 168)] = 0;
  v3[*(*v3 + 176)] = 0;
  v3[*(*v3 + 184)] = 0;
  v15 = *(*v3 + 192);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1001C69C8(20);

  v26 = 0xD000000000000012;
  v27 = 0x80000001001FE0E0;
  v28._countAndFlagsBits = 0xD00000000000001CLL;
  v28._object = 0x8000000100200DC0;
  sub_1001C6138(v28);
  sub_1001C5138();
  *(v3 + 4) = v23;
  v16 = *(*v3 + 136);
  v17 = sub_1001C4B28();
  (*(*(v17 - 8) + 32))(&v4[v16], v24, v17);
  v18 = *(*v4 + 128);
  v19 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  (*(*(v19 - 8) + 32))(&v4[v18], v25, v19);
  return v4;
}

uint64_t sub_1000E0060()
{
  v1 = OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager;
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager))
  {
    v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___BDSReadingHistoryService_accessQueue);
    __chkstk_darwin(0);
    type metadata accessor for ReadingHistoryBackupManager();
    v4 = v0;
    sub_1001C6688();
    v2 = v7;
    v5 = *(v0 + v1);
    *(v4 + v1) = v7;
  }

  return v2;
}

uint64_t sub_1000E0140@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext) + 64);
  type metadata accessor for ReadingHistoryBackupManager();
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000055;
  v4[3] = 0x80000001001FDEE0;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001001FDF40;
  v4[6] = 0xD000000000000013;
  v4[7] = 0x80000001001FDF60;
  v4[8] = 0x736B6F6F42;
  v4[9] = 0xE500000000000000;
  v4[10] = 0xD000000000000019;
  v4[11] = 0x80000001001FDF80;
  v4[12] = v3;
  *a2 = v4;
  return swift_unknownObjectRetain();
}

NSObject *ReadingHistoryService.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 sharedInstance];
  v8 = sub_10008366C();
  sub_100098D64();
  v10 = v9;
  sub_1001C69E8();
  v28._countAndFlagsBits = 45;
  v28._object = 0xE100000000000000;
  sub_1001C6138(v28);
  type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v29._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v29);

  v11 = objc_allocWithZone(BCCloudDataSource);
  v12 = sub_1001C5FE8();

  v13 = [v11 initWithManagedObjectModel:v10 nameOnDisk:v12];

  v14 = objc_allocWithZone(sub_100084528(&qword_10026F338, &unk_1001F0D10));
  v15 = swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = v7;
  v17 = v8;
  v18 = v13;
  v19 = sub_100191330(v16, v17, v18, a2, v14);
  v20 = objc_allocWithZone(sub_100084528(&unk_10026F810, &qword_1001F3220));
  v21 = v19;
  v22 = sub_1000C4AA8(v21, v17, a2, v20, v15);

  *&v21[qword_100281A00 + 8] = &off_100244988;
  swift_unknownObjectWeakAssign();

  type metadata accessor for ReadingHistoryServiceContext();
  v23 = sub_10012FE54(a2);
  v24 = objc_allocWithZone(ObjectType);
  v25 = sub_1000F1C1C(a1, v22, v23, 0, a3);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t CRDTModelCloudSyncController.__allocating_init(cloudSyncManager:transactionProvider:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CRDTModelCloudSyncController.init(cloudSyncManager:transactionProvider:)(a1, a2);
  return v7;
}

uint64_t sub_1000E05C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000E0654;

  return sub_1000E0774();
}

uint64_t sub_1000E0654(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000E0754, 0, 0);
}

uint64_t sub_1000E0774()
{
  v1[20] = v0;
  v2 = sub_1001C4CA8();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = *(*(sub_100084528(&unk_10026FC70, &unk_1001F1430) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = sub_1001C4B28();
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000E08E0, 0, 0);
}

uint64_t sub_1000E08E0()
{
  v69 = v0;
  v1 = *(*(v0 + 160) + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  v2 = sub_1001C5FE8();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    v7 = *(v0 + 160);
    sub_1000E1104(v4);
    v8 = (*(v6 + 48))(v4, 1, v5);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    if (v8 != 1)
    {
      (*(v10 + 32))(*(v0 + 192), *(v0 + 200), *(v0 + 168));
      v28 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v29 = qword_1002711E8;
      (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
      v30 = os_log_type_enabled(v29, v28);
      v31 = *(v0 + 184);
      v32 = *(v0 + 192);
      v34 = *(v0 + 168);
      v33 = *(v0 + 176);
      if (v30)
      {
        v66 = *(v0 + 192);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v68 = v36;
        *v35 = 136315138;
        sub_1000F2C74(&qword_100270A80, &type metadata accessor for Date);
        v37 = sub_1001C6CC8();
        v39 = v38;
        v40 = *(v33 + 8);
        v40(v31, v34);
        v41 = sub_1001874E8(v37, v39, &v68);

        *(v35 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v29, v28, "Migration: Not needed in daemon. Last migrated at:%s", v35, 0xCu);
        sub_10008E7BC(v36);

        v40(v66, v34);
      }

      else
      {
        v56 = *(v33 + 8);
        v56(*(v0 + 184), *(v0 + 168));
        v56(v32, v34);
      }

      goto LABEL_28;
    }

    v11 = *(v0 + 208);
    v12 = *(v0 + 160);
    sub_10008875C(*(v0 + 200), &unk_10026FC70, &unk_1001F1430);
    sub_1001C4C98();
    (*(v10 + 56))(v11, 0, 1, v9);
    sub_1000E126C(v11);
    sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
LABEL_4:
      sub_1001C5118();
LABEL_28:
      v55 = 1;
      goto LABEL_29;
    }

LABEL_33:
    swift_once();
    goto LABEL_4;
  }

  v64 = v1;
  v13 = (v0 + 241);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 232);
  v15 = *(v0 + 160);
  v16 = qword_1002711E8;
  sub_1001C5118();
  *(v0 + 240) = 0;
  v17 = [objc_opt_self() readingHistoryFileURL];
  sub_1001C4AD8();

  v18 = [objc_allocWithZone(NSFileCoordinator) init];
  sub_1001C4A88(v19);
  v21 = v20;
  v22 = swift_allocObject();
  v22[2] = v0 + 240;
  v22[3] = v13;
  v22[4] = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1000F4EB0;
  *(v23 + 24) = v22;
  *(v0 + 48) = sub_1000F4EF0;
  *(v0 + 56) = v23;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000E7150;
  *(v0 + 40) = &unk_1002476E8;
  v24 = _Block_copy((v0 + 16));
  v25 = *(v0 + 56);
  v26 = v15;

  log = v18;
  [v18 coordinateReadingItemAtURL:v21 options:0 error:0 byAccessor:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (*v13 == 1)
  {
    v27 = sub_1001C65B8();
  }

  else
  {
    v27 = sub_1001C6598();
  }

  v42 = v27;
  if (os_log_type_enabled(v16, v27))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v68 = v44;
    *v43 = 136315394;
    swift_beginAccess();
    if (*v13)
    {
      v45 = 0x6673736563637573;
    }

    else
    {
      v45 = 0x64656C696166;
    }

    if (*v13)
    {
      v46 = 0xEC000000796C6C75;
    }

    else
    {
      v46 = 0xE600000000000000;
    }

    v47 = sub_1001874E8(v45, v46, &v68);

    *(v43 + 4) = v47;
    *(v43 + 12) = 1024;
    swift_beginAccess();
    *(v43 + 14) = *(v0 + 240);
    _os_log_impl(&_mh_execute_header, v16, v42, "Migration done in daemon %s, completed: %{BOOL}d", v43, 0x12u);
    sub_10008E7BC(v44);
  }

  swift_beginAccess();
  v49 = *(v0 + 224);
  v48 = *(v0 + 232);
  v50 = *(v0 + 216);
  if (*(v0 + 240) == 1)
  {
    v51 = *(v0 + 208);
    v53 = *(v0 + 168);
    v52 = *(v0 + 176);
    v67 = *(v0 + 160);
    v54 = sub_1001C5FE8();
    [v64 setBool:1 forKey:v54];

    sub_1001C4C98();
    (*(v52 + 56))(v51, 0, 1, v53);
    v13 = (v0 + 241);
    sub_1000E126C(v51);

    (*(v49 + 8))(v48, v50);
  }

  else
  {
    (*(v49 + 8))(*(v0 + 232), *(v0 + 216));
  }

  swift_beginAccess();
  v55 = *v13;

LABEL_29:
  v57 = *(v0 + 232);
  v59 = *(v0 + 200);
  v58 = *(v0 + 208);
  v61 = *(v0 + 184);
  v60 = *(v0 + 192);

  v62 = *(v0 + 8);

  return v62(v55);
}

uint64_t sub_1000E1104@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  v4 = sub_1001C5FE8();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    sub_1001C6888();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_1001C4CA8();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10008875C(v12, &qword_10026FCB0, &unk_1001F14E0);
    v9 = sub_1001C4CA8();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_1000E126C(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  sub_10009ADF0(a1, &v13 - v5, &unk_10026FC70, &unk_1001F1430);
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = sub_1001C4C38().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  v11 = sub_1001C5FE8();
  [v7 setObject:isa forKey:v11];
  swift_unknownObjectRelease();

  return sub_10008875C(a1, &unk_10026FC70, &unk_1001F1430);
}

uint64_t sub_1000E13FC()
{
  v1 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v111 = &v94 - v3;
  v106 = type metadata accessor for ReadingHistory.State(0);
  v4 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1001C4D48();
  v6 = *(v101 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v101);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C4D68();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  __chkstk_darwin(v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v94 - v16;
  v115 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v18 = *(*(v115 - 8) + 64);
  v19 = __chkstk_darwin(v115);
  v105 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v104 = &v94 - v22;
  v23 = __chkstk_darwin(v21);
  v110 = &v94 - v24;
  __chkstk_darwin(v23);
  v112 = &v94 - v25;
  v108 = sub_1001C4CA8();
  v26 = *(v108 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v108);
  v102 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v109 = &v94 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v94 - v33;
  __chkstk_darwin(v32);
  v116 = &v94 - v35;
  v36 = v0;
  v37 = *(v0 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  v38 = *(v37 + 144);
  sub_100084528(&qword_10026F530, &qword_1001F1170);
  v103 = v37;
  sub_1001C6688();
  if (v117 != 1)
  {
    sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
      return sub_1001C5118();
    }

    goto LABEL_16;
  }

  v39 = *(v36 + OBJC_IVAR___BDSReadingHistoryService_viewStateChangeHandler);
  if (!v39)
  {
    sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
      return sub_1001C5118();
    }

LABEL_16:
    swift_once();
    return sub_1001C5118();
  }

  v99 = v1;
  v100 = v39;
  swift_unknownObjectRetain();
  v40 = v116;
  sub_1001C4C98();
  sub_1001C4CD8();
  v41 = v101;
  (*(v6 + 104))(v9, enum case for Calendar.Component.day(_:), v101);
  sub_1001C4D38();
  (*(v6 + 8))(v9, v41);
  v42 = v13;
  v43 = v113 + 8;
  v101 = *(v113 + 8);
  (v101)(v13, v114);
  v44 = *(v26 + 48);
  v45 = v108;
  v46 = v44(v17, 1, v108);
  v98 = 0;
  if (v46 == 1)
  {
    (*(v26 + 16))(v34, v40, v45);
    v47 = v44(v17, 1, v45);
    v48 = v26;
    if (v47 != 1)
    {
      sub_10008875C(v17, &unk_10026FC70, &unk_1001F1430);
    }
  }

  else
  {
    (*(v26 + 32))(v34, v17, v45);
    v48 = v26;
  }

  v95 = *(v115 + 48);
  sub_1001C4CD8();
  v50 = v109;
  sub_1001C4CE8();
  v51 = v114;
  v52 = v101;
  (v101)(v42, v114);
  v113 = v43;
  sub_1001C4CD8();
  v53 = v102;
  sub_1001C4CE8();
  v52(v42, v51);
  v54 = v48[1];
  v96 = v48 + 1;
  v97 = v54;
  v55 = v108;
  v54(v34, v108);
  v56 = v115;
  v57 = *(v115 + 48);
  v58 = v48[4];
  v59 = v110;
  v58(v110, v50, v55);
  v58(&v59[v57], v53, v55);
  v60 = v59;
  v61 = v59;
  v62 = v104;
  sub_10009AE58(v60, v104, &qword_10026F510, &qword_1001F1158);
  v63 = *(v56 + 48);
  v64 = v56;
  v65 = v112;
  v58(v112, v62, v55);
  v58((v65 + v95), (v62 + v63), v55);
  sub_10009ADF0(v65, v61, &qword_10026F510, &qword_1001F1158);
  v66 = *(v64 + 48);
  v102 = v66;
  v67 = v48[2];
  v67(v62, v61, v55);
  v67(v62 + *(v64 + 48), &v66[v61], v55);
  sub_1001C4CD8();
  v68 = v109;
  sub_1001C4CE8();
  (v101)(v42, v114);
  v69 = v103;
  v70 = *(v103 + 144);
  sub_1001C6688();
  v114 = v117;
  v71 = *(v69 + 144);
  v72 = sub_1001C6688();
  v73 = *(v69 + 144);
  __chkstk_darwin(v72);
  *(&v94 - 2) = v69;
  *(&v94 - 1) = v68;
  v74 = v68;
  sub_1001C6688();
  v113 = v117;
  v101 = v118;
  LODWORD(v99) = v119;
  v75 = v105;
  sub_10009ADF0(v62, v105, &qword_10026F510, &qword_1001F1158);
  v76 = *(v115 + 48);
  v77 = ReadingHistoryDataStore.readingHistory(range:)(v75, v75 + v76);
  sub_10008875C(v62, &qword_10026F510, &qword_1001F1158);
  v78 = v97;
  v97(v75 + v76, v55);
  v78(v75, v55);
  v79 = v106;
  v80 = *(v106 + 20);
  v81 = type metadata accessor for ReadingHistory.Streak(0);
  v82 = v107;
  (*(*(v81 - 8) + 56))(&v107[v80], 1, 1, v81);
  *v82 = v114;
  sub_1000B36A8(v111, v82 + v80, &qword_10026F508, &qword_1001F1150);
  v83 = v82 + *(v79 + 24);
  v84 = v101;
  *v83 = v113;
  *(v83 + 1) = v84;
  v83[16] = v99;
  *(v82 + *(v79 + 28)) = v77;
  v78(v74, v55);
  v85 = v110;
  v78(&v102[v110], v55);
  v78(v85, v55);
  ReadingHistory.State.toInfo()(v86);
  v88 = v87;
  v89 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v90 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v89))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v91 = 138412290;
    *(v91 + 4) = v88;
    *v92 = v88;
    v93 = v88;
    _os_log_impl(&_mh_execute_header, v90, v89, "ReadingHistoryService updateViewStateIfNeeded: state: %@", v91, 0xCu);
    sub_10008875C(v92, &unk_1002718E0, &qword_1001F31F0);

    v82 = v107;
  }

  [v100 handleReadingHistoryViewStateChange:v88];

  swift_unknownObjectRelease();
  sub_10008875C(v112, &qword_10026F510, &qword_1001F1158);
  v78(v116, v55);
  return sub_1000F4A38(v82, type metadata accessor for ReadingHistory.State);
}

void sub_1000E2004(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    v11 = 0;
    v5 = *&v4[OBJC_IVAR___BDSReadingHistoryService_accessQueue];
    v6 = swift_allocObject();
    v6[2] = &v11 + 1;
    v6[3] = v4;
    v6[4] = &v11;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1000F4BAC;
    *(v7 + 24) = v6;
    v10[4] = sub_1000B3DA0;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000906F4;
    v10[3] = &unk_100247490;
    v8 = _Block_copy(v10);
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
      return;
    }

    if ((v11 & 1) == 0)
    {
      if (HIBYTE(v11) != 1)
      {
LABEL_13:

        return;
      }

      sub_1001C65B8();
      sub_1001C5118();
      dispatch_resume(*&v9[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue]);
    }

    if (HIBYTE(v11) == 1)
    {
      sub_1000E13FC();
    }

    if ((v11 & 1) == 0 && HIBYTE(v11) == 1)
    {
      [a2 endTransaction];
    }

    goto LABEL_13;
  }
}

uint64_t sub_1000E229C(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(*(a2 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore) + 144);
  sub_100084528(&qword_10026F530, &qword_1001F1170);
  result = sub_1001C6688();
  *a1 = v9;
  v8 = OBJC_IVAR___BDSReadingHistoryService_isModelReady;
  *a3 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_isModelReady);
  *(a2 + v8) = *a1;
  return result;
}

id ReadingHistoryService.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR___BDSReadingHistoryService_historyDataStore];
  v4 = *&v3[OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange];
  v5 = *(v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000B2EF4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1000B2E48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100246660;
  v8 = _Block_copy(aBlock);
  swift_retain_n();

  v9 = v1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  sub_1000B39A0();
  v3 = v9;
  v12 = sub_1001C4E28();
  [v11 removeObserver:v3 name:v12 object:0];

  v13 = [v10 defaultCenter];
  [v13 removeObserver:v3 name:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:0];

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1001C5118();
  v15.receiver = v3;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t sub_1000E2748(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  v4 = *(v3 + 144);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F504C;
  *(v5 + 24) = v3;
  v8[4] = sub_1000B3DA0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000906F4;
  v8[3] = &unk_1002478A0;
  v6 = _Block_copy(v8);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1001C5118();
  return a2(1);
}

uint64_t sub_1000E2944(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  v4 = sub_1001C5FE8();
  [v3 removeObjectForKey:v4];

  v5 = sub_1001C5FE8();
  [v3 setInteger:0 forKey:v5];

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  return a2(1);
}

uint64_t sub_1000E2AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  sub_1000AA0B4(a2, 0x7461447261656C63, 0xE900000000000065);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  return a3(1);
}

uint64_t sub_1000E2CAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  v11 = *(v10 + 128);
  (*(v10 + 120))(v7);
  sub_1000AA0B4(v9, 0x646F547261656C63, 0xEA00000000007961);
  (*(v5 + 8))(v9, v4);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  return a2(1);
}

uint64_t sub_1000E2E70(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t static CRDTModelSyncVersion.fromInfo(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001C5EB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 data];
  sub_1001C4BA8();

  sub_1001C5CF8();
  sub_1001C5E38();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v10 = sub_1001C5E18();
  sub_10008875C(v13, &unk_10026EF20, &unk_1001F1FB0);
  v11 = type metadata accessor for CRDTModelSyncVersion();
  (*(v5 + 32))(a2 + *(v11 + 20), v8, v4);
  *a2 = v10;
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a4;
  v29 = a3;
  v30 = sub_1001C5648();
  v35 = *(v30 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v30);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v17 = v28 - v16;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v28[1] = *&v4[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  sub_10009ADF0(a1, v17, &unk_10026F350, &qword_1001F31E0);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v31;
  *(v19 + 24) = v4;
  sub_10009AE58(v17, v19 + v18, &unk_10026F350, &qword_1001F31E0);
  v21 = (v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v32;
  *v21 = v29;
  v21[1] = v22;
  aBlock[4] = sub_1000F2B50;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002466B0;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v4;

  sub_1001C5668();
  v36 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v26 = v30;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v23);
  (*(v35 + 8))(v8, v26);
  (*(v33 + 8))(v12, v34);
}