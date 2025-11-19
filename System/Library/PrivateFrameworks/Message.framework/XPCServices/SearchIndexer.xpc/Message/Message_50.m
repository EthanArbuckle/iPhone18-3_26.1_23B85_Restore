uint64_t sub_10032096C(uint64_t a1, void *a2)
{
  v4 = sub_1004A4A74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1004A4A54();
  v8 = sub_1004A6014();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to open existing database. Removing all existing data from Spotlight.", v9, 2u);
  }

  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_100323B20;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346E74;
  aBlock[3] = &unk_1005B3F70;
  v12 = _Block_copy(aBlock);

  [a2 deleteAllSearchableItemsWithCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_100320B98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = static MonotonicTime.now()();
    v3 = *(v1 + 32);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100323A30;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1002344B8;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022ECC8;
    aBlock[3] = &unk_1005B3EF8;
    v6 = _Block_copy(aBlock);

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100320D44(uint64_t a1, int64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a3;
  v47 = a4;
  v51 = a2;
  v11 = sub_1004A53F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  aBlock = 0;
  v55 = 0xE000000000000000;
  sub_1004A6724(40);

  aBlock = 0xD000000000000026;
  v55 = 0x80000001004AEEB0;
  v60._countAndFlagsBits = IndexRequest.ID.description.getter();
  sub_1004A5994(v60);

  sub_1004A5844();

  v16 = os_transaction_create();

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a5;
  v17[4] = a6;
  v18 = v7[2];
  *v15 = v18;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v45 = v16;
  swift_unknownObjectRetain();

  v19 = v18;
  LOBYTE(v16) = sub_1004A5404();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v44 = v17;
    v21 = v7[5];
    v22 = static MonotonicTime.now()();
    sub_10036E13C(v22);
    v23 = v7[4];
    v58 = sub_1003224D8;
    v59 = v7;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_10019C778;
    v57 = &unk_1005B3CC8;
    v24 = _Block_copy(&aBlock);

    [v23 performBlock:v24];
    _Block_release(v24);
    v25 = v51;
    v26 = v51[2];
    v27 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v42 = a1;
      v43 = v7;
      aBlock = _swiftEmptyArrayStorage;
      sub_10034F650(0, v26, 0);
      v27 = aBlock;
      v28 = v25 + 66;
      do
      {
        v29 = *(v28 - 34);
        v30 = *(v28 - 26);
        v51 = *(v28 - 18);
        v31 = *(v28 - 10);
        v32 = *(v28 - 1);
        v49 = *v28;
        v50 = v32;
        v33 = swift_allocObject();
        v34 = v47;
        v33[2] = v46;
        v33[3] = v34;
        v48 = v29;
        v33[4] = v29;
        v33[5] = v30;
        aBlock = v27;
        v35 = v27[2];
        v36 = v27[3];
        swift_bridgeObjectRetain_n();

        if (v35 >= v36 >> 1)
        {
          sub_10034F650((v36 > 1), v35 + 1, 1);
          v27 = aBlock;
        }

        v28 += 40;
        v27[2] = (v35 + 1);
        v37 = &v27[7 * v35];
        v37[4] = v48;
        v37[5] = v30;
        v37[6] = v51;
        v37[7] = v31;
        v38 = v49;
        *(v37 + 32) = v50;
        *(v37 + 66) = v38;
        v39 = v53;
        *(v37 + 67) = v52;
        *(v37 + 71) = v39;
        v37[9] = sub_1003230CC;
        v37[10] = v33;
        --v26;
      }

      while (v26);
      a1 = v42;
      v7 = v43;
    }

    v40 = v7[10];

    v41 = v44;

    sub_10031A3C4(a1, v27, v40, v7, a1, sub_1003224B0, v41);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032116C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v12 = sub_1003239A8;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10019C778;
  v11 = &unk_1005B3E30;
  v4 = _Block_copy(&v8);

  [v3 performBlock:v4];
  _Block_release(v4);
  v5 = *(a1 + 64);
  v6 = *(v5 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v12 = sub_100323BBC;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10019C778;
  v11 = &unk_1005B3E58;
  v7 = _Block_copy(&v8);

  [v6 performBlock:v7];
  _Block_release(v7);
}

uint64_t sub_10032131C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 40);
  sub_10036E3DC();
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "{%ld} Waiting for spotlight indexer to pause.", v13, 0xCu);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;

  sub_10036E660(sub_100323708, v14);
}

uint64_t sub_100321464(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = sub_100323FA0();
  return a1(v5);
}

void sub_1003214A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, unint64_t a8, uint64_t a9)
{
  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    v15 = MailboxName.init(_:)(v14);
    v20 = sub_10032EB08(a3, a4, v15.bytes._rawValue, v15._hashValue._value);

    if (v20)
    {
      v16 = a8;
      if ((a8 & &_mh_execute_header) != 0)
      {
        v16 = 0;
      }

      sub_100332A08(v20, v16 | ((HIDWORD(a8) & 1) << 32), a9);
      a6();
    }

    else
    {
      v17 = sub_1004A4A54();
      v18 = sub_1004A6014();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to find mailbox", v19, 2u);
      }

      (a6)(0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10032172C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v48 - v17;
  __chkstk_darwin(v19);
  v21 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v21 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v49 = v48 - v20;

    v23 = MailboxName.init(_:)(v22);
    v48[2] = a1;
    v24 = sub_10032EB08(a3, a4, v23.bytes._rawValue, v23._hashValue._value);

    if (!v24)
    {
      v50(a7);
      return;
    }

    v48[1] = a6;
    v25 = *(a7 + 16);
    v26 = _swiftEmptyArrayStorage;
    v27 = v50;
    if (v25)
    {
      v48[0] = v24;
      v52 = _swiftEmptyArrayStorage;
      sub_100091DA8(0, v25, 0);
      v26 = v52;
      v28 = (a7 + 32);
      v29 = v52[2];
      do
      {
        v31 = *v28++;
        v30 = v31;
        v52 = v26;
        v32 = v26[3];
        if (v29 >= v32 >> 1)
        {
          sub_100091DA8((v32 > 1), v29 + 1, 1);
          v26 = v52;
        }

        v26[2] = v29 + 1;
        *(v26 + v29++ + 8) = v30;
        --v25;
      }

      while (v25);
      v27 = v50;
      v24 = v48[0];
    }

    sub_100016D2C();
    sub_1004A7114();
    v33 = v26[2];
    if (v33)
    {
      v34 = (v26 + 4);
      do
      {
        v35 = *v34++;
        v51 = v35;
        MessageIdentifierSet.insert(_:)(&v52, &v51, v12);
        --v33;
      }

      while (v33);
    }

    v36 = v49;
    sub_100020950(v18, v49);
    sub_100333104(v24, v36, v15);
    v37 = MessageIdentifierSet.count.getter();
    v38 = _swiftEmptyArrayStorage;
    if (!v37)
    {
      goto LABEL_23;
    }

    v39 = v37;
    v48[0] = v24;
    v52 = _swiftEmptyArrayStorage;
    sub_10034F670(0, v37 & ~(v37 >> 63), 0);
    v38 = v52;
    v40 = MessageIdentifierSet.startIndex.getter(v12);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v42 = v40;
      v43 = v41;
      do
      {
        MessageIdentifierSet.subscript.getter(v43, v12, &v51);
        v44 = v51;
        v52 = v38;
        v46 = v38[2];
        v45 = v38[3];
        if (v46 >= v45 >> 1)
        {
          sub_10034F670((v45 > 1), v46 + 1, 1);
          v38 = v52;
        }

        v38[2] = v46 + 1;
        *(v38 + v46 + 8) = v44;
        v42 = MessageIdentifierSet.index(_:offsetBy:)(v42, v43, 1);
        v43 = v47;
        --v39;
      }

      while (v39);
      v36 = v49;
      v27 = v50;
      v24 = v48[0];
LABEL_23:
      v27(v38);

      sub_100121C40(v15);
      sub_100121C40(v36);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100321AF4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_1004A44E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v58 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v54 - v11;
  sub_1004A44D4();
  sub_1004A4464();
  v14 = round(v13 / 21600.0);
  result = (*(v7 + 8))(v12, v6);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1004A6A34();
    v36 = result;
    if (result)
    {
      goto LABEL_28;
    }

    goto LABEL_45;
  }

  v16 = v14;
  v17 = *(a1 + 32);
  result = sub_10030839C();
  if ((v18 & 1) == 0)
  {
    v21 = v16 - result;
    if (__OFSUB__(v16, result))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    LOBYTE(v19) = v21 > 3;
    result = sub_1003084B8();
    if (v22)
    {
      v55 = a2;
      if (v21 > 3)
      {
        v19 = 1;
        goto LABEL_17;
      }

LABEL_22:
      v26 = 0;
      goto LABEL_23;
    }

LABEL_11:
    v23 = v16 - result;
    if (__OFSUB__(v16, result))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    if (v23 <= 0)
    {
      if (!v19)
      {
        return result;
      }

      v55 = a2;
      v19 = 0;
      goto LABEL_17;
    }

    if (v19)
    {
      v55 = a2;
      v19 = v23 > 0x1B;
      goto LABEL_17;
    }

    if (v23 <= 0x1B)
    {
      return result;
    }

    v55 = a2;
    goto LABEL_22;
  }

  result = sub_1003084B8();
  v19 = 1;
  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

  v55 = a2;
LABEL_17:
  v24 = [v17 userInfo];
  v63 = v14;
  v25 = sub_1004A6DF4();
  v63 = 0xD000000000000012;
  v64 = 0x80000001004AEA20;
  [v24 __swift_setObject:v25 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v19)
  {
    v60 = 0;
LABEL_24:
    v29 = sub_100323FA0();
    sub_100308A54(v29, v30, v31, v32);
    v33 = sub_1004A5734();
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    isa = sub_1004A54F4().super.isa;
    AnalyticsSendEvent();

    v59 = 1;
    goto LABEL_26;
  }

  v26 = 1;
LABEL_23:
  v27 = [v17 userInfo];
  v63 = v14;
  v28 = sub_1004A6DF4();
  v63 = 0xD000000000000013;
  v64 = 0x80000001004AEA00;
  [v27 __swift_setObject:v28 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v60 = 1;
  if (v26)
  {
    goto LABEL_24;
  }

  v59 = 0;
LABEL_26:
  v54[1] = a3;
  v35 = sub_100307550();
  swift_beginAccess();
  v12 = *(v35 + 16);

  v61 = v14;
  if (v12 >> 62)
  {
    goto LABEL_44;
  }

  v36 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
LABEL_28:
    if (v36 >= 1)
    {
      v37 = 0;
      v57 = "SearchIndexer.statistics.weekly";
      v56 = "SearchIndexer.Indexer.";
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v38 = sub_1004A6794();
        }

        else
        {
          v38 = *(v12 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = sub_1004A5734();
        [(objc_class *)v39 willAccessValueForKey:v40];

        v41 = [(objc_class *)v39 primitiveDataUsage];
        if (v41)
        {
          v42 = v41;
          v43 = sub_1004A4414();
          v45 = v44;

          sub_100014CEC(v43, v45);
          v46 = v58;
          sub_1004A44D4();
          v47 = sub_100378058(v46, v43, v45);
          sub_100014D40(v43, v45);
        }

        else
        {
          v47 = _swiftEmptyDictionarySingleton;
        }

        v48 = sub_1004A5734();
        [(objc_class *)v39 didAccessValueForKey:v48];

        if (v59)
        {
          sub_100373A50(4, v61, v47, v62);
          sub_10030883C(0xD00000000000002ELL, v57 | 0x8000000000000000, v62);
          v49 = sub_1004A5734();
          sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
          v50 = sub_1004A54F4().super.isa;
          AnalyticsSendEvent();
        }

        if (v60)
        {
          sub_100373A50(28, v61, v47, &v63);

          sub_10030883C(0xD00000000000002FLL, v56 | 0x8000000000000000, &v63);
          v51 = sub_1004A5734();
          sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
          v52 = sub_1004A54F4().super.isa;
          AnalyticsSendEvent();

          v39 = v52;
        }

        else
        {
        }

        ++v37;
      }

      while (v36 != v37);
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  return v55(v53);
}

uint64_t sub_100322260()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger;
  v8 = sub_1004A4A74();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_100322308()
{
  sub_100322260();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Indexer()
{
  result = qword_1005D90C8;
  if (!qword_1005D90C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003223B4()
{
  result = sub_1004A4A74();
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

uint64_t sub_100322470()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003224B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1003224E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1003224F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v37 = a4;
  v36 = a3;
  v7 = _s11QueuedItemsV4ItemVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 48);
  swift_beginAccess();
  v13 = *(v12 + 48);

  os_unfair_lock_lock((v13 + 48));
  v14 = *(v13 + 16);
  v45 = _swiftEmptySetSingleton;
  v15 = v14[4];
  if (v14[2] >= v14[3] + v15)
  {
    v16 = (v14[3] + v15);
  }

  else
  {
    v16 = v14[2];
  }

  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  aBlock = v14;
  v39 = v15;
  v40 = v16;

  while (1)
  {
    if (v15 != v16)
    {
      goto LABEL_5;
    }

    if ((sub_100351DD0(v18) & 1) == 0)
    {
      break;
    }

    v14 = aBlock;
    v15 = v39;
LABEL_5:
    v39 = v15 + 1;
    sub_100323720(v14 + v17 + *(v8 + 72) * v15, v11);
    sub_10036210C(&v44, *(v11 + 1));
    v18 = sub_100323784(v11);
    v16 = v40;
    ++v15;
  }

  v19 = v45;
  os_unfair_lock_unlock((v13 + 48));

  v20 = v19[2];

  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  v23 = os_log_type_enabled(v21, v22);
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = a2;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      v25 = "{%ld} Spotlight indexer did pause. Index queue still has %ld item(s).";
      v26 = v22;
      v27 = v21;
      v28 = v24;
      v29 = 22;
      goto LABEL_14;
    }
  }

  else if (v23)
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = a2;
    v25 = "{%ld} Spotlight indexer did pause. Index queue did drain.";
    v26 = v22;
    v27 = v21;
    v28 = v30;
    v29 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v27, v26, v25, v28, v29);
  }

  v31 = *(a1 + 32);
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  *(v32 + 32) = v36;
  v33 = v35;
  *(v32 + 40) = v37;
  *(v32 + 48) = v33;
  v42 = sub_100323824;
  v43 = v32;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10019C778;
  v41 = &unk_1005B3D68;
  v34 = _Block_copy(&aBlock);

  [v31 performBlock:v34];
  _Block_release(v34);
}

uint64_t sub_100322858(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v21 = sub_100323854;
  v22 = v7;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10019C778;
  v20 = &unk_1005B3D90;
  v9 = _Block_copy(&aBlock);

  [v8 performBlock:v9];
  _Block_release(v9);
  v10 = *(a1 + 64);
  v11 = *(v10 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v21 = sub_100323BB8;
  v22 = v10;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10019C778;
  v20 = &unk_1005B3DB8;
  v12 = _Block_copy(&aBlock);

  [v11 performBlock:v12];
  _Block_release(v12);
  return sub_1003229FC(a2, a3, a4, a5);
}

uint64_t sub_1003229FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v41 = a1;
  v6 = sub_1004A5244();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004A5274();
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1004A4A74();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v42);
  v13 = *(*(v4 + 80) + 40);
  v14 = *(v13 + 16);

  if ([v14 hasChanges])
  {

    sub_100309C70(v15, v13);

    v16 = *(v13 + 56);
    *(v13 + 56) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v17 = *(v5 + 32);
  v18 = sub_100323FA0();
  v20 = v19;
  v51 = v22;
  v52 = v21;
  v23 = OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger;
  v24 = sub_1004A4A54();
  v25 = sub_1004A6034();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = v6;
    v27 = v26;
    *v26 = 134218752;
    *(v26 + 4) = v41;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v20;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v18;
    *(v26 + 32) = 2048;
    *(v26 + 34) = IndexingStatistics.fractionCompletedAsInt.getter(v18, v20);
    _os_log_impl(&_mh_execute_header, v24, v25, "{%ld} %ld of %ld (%ld%%) messages are indexed.", v27, 0x2Au);
    v6 = v40;
  }

  v41 = *(v5 + 16);
  v28 = v5 + v23;
  v29 = v42;
  (*(v11 + 16))(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v42);
  v30 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v43;
  *(v31 + 24) = v18;
  *(v31 + 32) = v20;
  v32 = v51;
  *(v31 + 40) = v52;
  *(v31 + 48) = v32;
  (*(v11 + 32))(v31 + v30, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v33 = (v31 + ((v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  aBlock[4] = sub_1003238FC;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3E08;
  v35 = _Block_copy(aBlock);

  v36 = v46;
  sub_1004A5254();
  v53 = _swiftEmptyArrayStorage;
  sub_100323A48(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  v37 = v48;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v35);
  (*(v50 + 8))(v37, v6);
  (*(v47 + 8))(v36, v49);
}

uint64_t sub_100322F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result - a2;
  if (!__OFSUB__(result, a2))
  {
    v7 = a6;
    if (a6 - 1 < 2)
    {
      return v7;
    }

    if (a6)
    {
      v8 = sub_1004A4A54();
      v11 = sub_1004A6034();
      v12 = os_log_type_enabled(v8, v11);
      if (v6)
      {
        if (!v12)
        {
          v7 = 2;
          goto LABEL_15;
        }

        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v8, v11, "Sync did complete. Still %ld un-indexed message(s).", v13, 0xCu);
        v7 = 2;
      }

      else
      {
        if (!v12)
        {
          v7 = 3;
          goto LABEL_15;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, v11, "Sync did complete. No un-indexed messages.", v14, 2u);
        v7 = 3;
      }
    }

    else
    {
      v8 = sub_1004A4A54();
      v9 = sub_1004A6034();
      if (!os_log_type_enabled(v8, v9))
      {
        v7 = 0;
LABEL_15:

        return v7;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sync did defer.", v10, 2u);
      v7 = 0;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032308C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003230D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v47 = a1;
  v48 = a2;
  v5 = sub_1004A5234();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v49 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v46 = (v43 - v9);
  v10 = sub_1004A6074();
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A6064();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = sub_1004A5274();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  *(a4 + 136) = 1;
  *(a4 + 152) = 0;
  swift_unknownObjectWeakInit();
  v43[1] = sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  v45 = "Email Spotlight Indexer";
  *(a4 + 160) = 0;
  *(a4 + 168) = 0;
  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  v43[3] = sub_100323A48(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v43[2] = sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  v18 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = *(v54 + 104);
  v54 += 104;
  v20 = v44;
  v19(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v53);
  v21 = sub_1004A6094();
  *(a4 + 32) = v21;
  v45 = v21;
  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004A6544();
  v19(v20, v18, v53);
  *(a4 + 40) = sub_1004A6094();
  *(a4 + 16) = v47;
  *(a4 + 24) = &off_1005B5C20;
  *(a4 + 152) = &off_1005B4140;
  swift_unknownObjectWeakAssign();

  v22 = v51;
  *(a4 + 48) = v50;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0xC000000000000000;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  v23 = v46;
  *v46 = 3;
  v24 = enum case for DispatchTimeInterval.seconds(_:);
  v25 = *(v22 + 104);
  v26 = v52;
  v25(v23, enum case for DispatchTimeInterval.seconds(_:), v52);
  v27 = v49;
  *v49 = 1;
  v25(v27, v24, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100323A90;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3F20;
  v29 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v30 = v45;

  v31 = RestartableTimer.init(queue:repeating:leeway:closure:)(v30, v23, v27, v29);

  v32 = *(a4 + 160);
  *(a4 + 160) = v31;

  v33 = _s13IndexDelegateCMa();
  v34 = objc_allocWithZone(v33);
  swift_weakInit();
  swift_weakAssign();
  v55.receiver = v34;
  v55.super_class = v33;
  v35 = objc_msgSendSuper2(&v55, "init");

  v36 = *(a4 + 168);
  *(a4 + 168) = v35;

  v37 = *(a4 + 16);
  v38 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  v40 = *(v38 + 16);
  v41 = v35;
  swift_unknownObjectRetain();
  v40(v35, ObjectType, v38);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_100323720(uint64_t a1, uint64_t a2)
{
  v4 = _s11QueuedItemsV4ItemVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100323784(uint64_t a1)
{
  v2 = _s11QueuedItemsV4ItemVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003237E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10032385C()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1003238FC()
{
  v1 = *(sub_1004A4A74() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = sub_100322F00(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + 16));
  return v5(v6);
}

uint64_t sub_1003239B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003239F8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100323A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100323A98()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100323B20(uint64_t a1)
{
  v2 = *(*(sub_1004A4A74() - 8) + 80);

  sub_10036F19C(a1);
}

id sub_100323BF4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_1004A5734();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11[4] = sub_1002344B8;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100307F04;
  v11[3] = &unk_1005B3FE0;
  v8 = _Block_copy(v11);

  v9 = [v5 addObserverForName:v6 object:v2 queue:0 usingBlock:v8];
  _Block_release(v8);

  return v9;
}

void sub_100323D44()
{
  *&xmmword_1005D91F8 = 0x6E65477865646E49;
  *(&xmmword_1005D91F8 + 1) = 0xEF6E6F6974617265;
  qword_1005D9208 = 0xD000000000000017;
  unk_1005D9210 = 0x80000001004AF010;
  *&xmmword_1005D9218 = sub_100323DCC;
  *(&xmmword_1005D9218 + 1) = 0;
  qword_1005D9228 = sub_100323E14;
  unk_1005D9230 = 0;
  *&xmmword_1005D9238 = sub_100323E50;
  *(&xmmword_1005D9238 + 1) = 0;
}

id sub_100323DCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithLongLong:v1];
}

uint64_t sub_100323E14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    result = [a1 longLongValue];
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

void sub_100323E50(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005DE2D0);
  oslog = sub_1004A4A54();
  v3 = sub_1004A6004();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Saving current index generation %llu.", v4, 0xCu);
  }
}

uint64_t sub_100323F50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100323F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100323FA0()
{
  v85 = sub_1003249F4();
  v86 = v0;
  sub_100324CFC();
  v1 = sub_1004A5734();
  v2 = objc_opt_self();
  v3 = [v2 expressionForKeyPath:v1];

  v4 = [objc_allocWithZone(NSExpressionDescription) init];
  v5 = sub_1004A5734();
  [v4 setName:v5];

  [v4 setExpression:v3];
  [v4 setExpressionResultType:{objc_msgSend(v4, "expressionResultType")}];

  v6 = sub_1004A5734();
  v7 = [v2 expressionForKeyPath:v6];

  v8 = [objc_allocWithZone(NSExpressionDescription) init];
  v9 = sub_1004A5734();
  [v8 setName:v9];

  [v8 setExpression:v7];
  [v8 setExpressionResultType:{objc_msgSend(v8, "expressionResultType")}];

  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_1004A5734();
  v12 = [v10 initWithEntityName:v11];

  [v12 setResultType:2];
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004D01D0;
  v14 = sub_10019A8E4(0, &qword_1005D9248, NSExpressionDescription_ptr);
  *(v13 + 32) = v4;
  *(v13 + 88) = v14;
  *(v13 + 56) = v14;
  *(v13 + 64) = v8;
  v15 = v4;
  v16 = v8;
  isa = sub_1004A5C04().super.isa;

  [v12 setPropertiesToGroupBy:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004CEA80;
  *(v18 + 32) = v15;
  *(v18 + 88) = v14;
  *(v18 + 56) = v14;
  *(v18 + 64) = v16;
  v82 = v15;
  v83 = v16;
  v19 = sub_1004A5734();
  v20 = [v2 expressionForKeyPath:v19];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004CEAA0;
  *(v21 + 56) = sub_10019A8E4(0, &qword_1005D9250, NSExpression_ptr);
  *(v21 + 32) = v20;
  v22 = v20;
  v23 = sub_1004A5734();
  v24.super.isa = sub_1004A5C04().super.isa;

  v25 = [v2 expressionForFunction:v23 arguments:v24.super.isa];

  v26 = [objc_allocWithZone(NSExpressionDescription) init];
  v27 = sub_1004A5734();
  [v26 setName:v27];

  [v26 setExpression:v25];
  [v26 setExpressionResultType:{objc_msgSend(v26, "expressionResultType")}];

  *(v18 + 120) = v14;
  *(v18 + 96) = v26;
  v28 = sub_1004A5C04().super.isa;

  [v12 setPropertiesToFetch:v28];

  v29 = sub_1004A5734();
  v30 = sub_1004A5C04().super.isa;
  v31 = [objc_opt_self() predicateWithFormat:v29 argumentArray:v30];

  [v12 setPredicate:v31];
  *&v93 = 0;
  v84 = v12;
  v32 = [v12 execute:&v93];
  v33 = v93;
  if (v32)
  {
    v34 = v32;
    sub_10019A8E4(0, &qword_1005D9258, NSDictionary_ptr);
    v35 = sub_1004A5C14();
    v36 = v33;

    if (v35 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
    {
      v38 = 0;
      v39 = 0;
      v40 = v35 & 0xC000000000000001;
      v24.super.isa = (v35 & 0xFFFFFFFFFFFFFF8);
      v41 = &_swiftEmptyArrayStorage;
      v88 = v35 & 0xC000000000000001;
      v90 = i;
      v87 = (v35 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v40)
        {
          v43 = sub_1004A6794();
        }

        else
        {
          if (v38 >= *(v24.super.isa + 2))
          {
            goto LABEL_18;
          }

          v43 = *(v35 + 8 * v38 + 32);
        }

        v44 = v43;
        v45 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        *&v92[0] = v43;
        sub_100325010(v92);

        v46 = WORD4(v93);
        if ((WORD4(v93) & 0xFF00) != 0x200)
        {
          v47 = v35;
          v48 = v39;
          v49 = v93;
          v50 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_10035D760(0, *(v41 + 2) + 1, 1, v41);
          }

          v52 = *(v41 + 2);
          v51 = *(v41 + 3);
          if (v52 >= v51 >> 1)
          {
            v41 = sub_10035D760((v51 > 1), v52 + 1, 1, v41);
          }

          *(v41 + 2) = v52 + 1;
          v42 = &v41[24 * v52];
          *(v42 + 4) = v49;
          v42[40] = v46 & 1;
          v42[41] = HIBYTE(v46) & 1;
          *(v42 + 6) = v50;
          v39 = v48;
          v35 = v47;
          v40 = v88;
          i = v90;
          v24.super.isa = v87;
        }

        ++v38;
        if (v45 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v41 = &_swiftEmptyArrayStorage;
LABEL_21:

    v53 = v41;
    v54 = *(v41 + 2);
    v91 = v53;
    v55 = 0;
    if (v54)
    {
      v56 = (v53 + 48);
      v57 = v54;
      while (1)
      {
        v58 = *v56;
        v56 += 3;
        v59 = __OFADD__(v55, v58);
        v55 += v58;
        if (v59)
        {
          break;
        }

        if (!--v57)
        {
          goto LABEL_25;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
    }

    else
    {
LABEL_25:

      v60 = v86;
      v61 = 0;
      v62 = 0;
      v63 = v91 + 48;
      v24.super.isa = &xmmword_1005D91F8;
LABEL_26:
      v89 = v62;
      v64 = &v63[24 * v61];
      while (v54 != v61)
      {
        if (v61 >= *(v91 + 2))
        {
          __break(1u);
          goto LABEL_55;
        }

        v65 = *(v64 - 2);
        v66 = *(v64 - 8);
        v67 = *v64;
        if (qword_1005D8760 != -1)
        {
          swift_once();
        }

        ++v61;
        v64 += 24;
        v96 = *&qword_1005D9228;
        v97 = xmmword_1005D9238;
        v94 = *&qword_1005D9208;
        v95 = xmmword_1005D9218;
        v93 = xmmword_1005D91F8;
        if (v65 == sub_1003521DC(&v93))
        {
          v68 = v66;
        }

        else
        {
          v68 = 1;
        }

        if ((v68 & 1) == 0)
        {
          v63 = v91 + 48;
          v62 = v89 + v67;
          if (!__OFADD__(v89, v67))
          {
            goto LABEL_26;
          }

          __break(1u);
          break;
        }
      }

      if (!v54)
      {
LABEL_49:

        v78 = v84;
        goto LABEL_50;
      }

      if (qword_1005D8760 != -1)
      {
        goto LABEL_57;
      }
    }

    v69 = 0;
    v70 = *(v24.super.isa + 3);
    v92[2] = *(v24.super.isa + 2);
    v92[3] = v70;
    v92[4] = *(v24.super.isa + 4);
    v71 = *(v24.super.isa + 1);
    v92[0] = *v24.super.isa;
    v92[1] = v71;
    v72 = (v91 + 48);
    while (1)
    {
      if (v69 >= *(v91 + 2))
      {
        goto LABEL_56;
      }

      v73 = *v72;
      v74 = *(v72 - 7);
      v24.super.isa = *(v72 - 8);
      v75 = *(v72 - 2);
      v76 = sub_1003521DC(v92);
      if ((v24.super.isa & 1) == 0 && v75 == v76 && v74 != 0)
      {
        break;
      }

      ++v69;
      v72 += 3;
      if (v54 == v69)
      {
        goto LABEL_49;
      }
    }

    v78 = v82;
LABEL_50:
    if (v85 <= v55)
    {
      v79 = v55;
    }

    else
    {
      v79 = v85;
    }

    return v79;
  }

  else
  {
    v81 = v93;
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003249F4()
{
  v0 = sub_100307550();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_30:
    v3 = sub_1004A6A34();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  v6 = 0x746E756F636361;
  v7 = v1 & 0xC000000000000001;
  p_attr = (&stru_1005CAFF8 + 8);
  v33 = v1;
LABEL_4:
  v32 = v5;
  if (v4 != v3)
  {
    while (1)
    {
      if (v7)
      {
        v11 = sub_1004A6794();
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v1 + 8 * v4 + 32);
      }

      v12 = v11;
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ([v11 p_attr[429]])
      {
        goto LABEL_8;
      }

      v14 = [v12 managedObjectContext];
      if (!v14)
      {
        goto LABEL_8;
      }

      v15 = sub_1004A5734();
      [v12 willAccessValueForKey:v15];

      v16 = [v12 primitiveAccount];
      if (!v16)
      {
        goto LABEL_6;
      }

      v17 = v7;
      v18 = v3;
      v19 = v2;
      v20 = v6;
      v21 = v16;
      v22 = sub_1004A5764();
      v9 = v23;

      v6 = v20;
      v2 = v19;
      v3 = v18;
      v7 = v17;
      v1 = v33;
      v24 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {
        break;
      }

LABEL_7:
      v10 = sub_1004A5734();
      [v12 didAccessValueForKey:v10];

      p_attr = &stru_1005CAFF8.attr;
      if (v9)
      {

        v25 = sub_1004A5734();
        [v12 willAccessValueForKey:v25];

        v26 = [v12 primitiveMessageCount];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 integerValue];

          v29 = v28 & ~(v28 >> 63);
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_1004A5734();
        [v12 didAccessValueForKey:v30];

        v4 = v13;
        v5 = v32 + v29;
        p_attr = (&stru_1005CAFF8 + 8);
        if (__OFADD__(v32, v29))
        {
          __break(1u);
          goto LABEL_27;
        }

        goto LABEL_4;
      }

LABEL_8:

      ++v4;
      if (v13 == v3)
      {
        goto LABEL_27;
      }
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

LABEL_27:

  return v32;
}

uint64_t sub_100324CFC()
{
  v0 = sub_100307550();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_31:
    v3 = sub_1004A6A34();
    v4 = 0;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = 0x746E756F636361;
  v33 = v1;
  do
  {
    v32 = v4;
    v8 = v5;
    p_attr = (&stru_1005CAFF8 + 8);
    while (1)
    {
      if (v6)
      {
        v12 = sub_1004A6794();
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_30;
        }

        v12 = *(v1 + 8 * v8 + 32);
      }

      v13 = v12;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (([v12 p_attr[429]] & 1) == 0)
      {
        v14 = [v13 managedObjectContext];
        if (v14)
        {
          break;
        }
      }

LABEL_7:

      ++v8;
      if (v5 == v3)
      {
        v4 = v32;
        goto LABEL_28;
      }
    }

    v15 = sub_1004A5734();
    [v13 willAccessValueForKey:v15];

    v16 = [v13 primitiveAccount];
    if (!v16)
    {
      goto LABEL_5;
    }

    v17 = v3;
    v18 = v6;
    v19 = v2;
    v20 = v7;
    v21 = v16;
    v22 = sub_1004A5764();
    v10 = v23;

    v7 = v20;
    v2 = v19;
    v6 = v18;
    v3 = v17;
    v1 = v33;
    v24 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {

LABEL_5:
      v10 = 0;
    }

    v11 = sub_1004A5734();
    [v13 didAccessValueForKey:v11];

    p_attr = &stru_1005CAFF8.attr;
    if (!v10)
    {
      goto LABEL_7;
    }

    v25 = sub_1004A5734();
    [v13 willAccessValueForKey:v25];

    v26 = [v13 primitiveMessageCount];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 integerValue];

      v29 = v28 & ~(v28 >> 63);
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_1004A5734();
    [v13 didAccessValueForKey:v30];

    v4 = v32;
    if (v29 > v32)
    {
      v4 = v29;
    }
  }

  while (v5 != v3);
LABEL_28:

  return v4;
}

uint64_t sub_100325010(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  result = sub_1004A5504();
  __break(1u);
  return result;
}

uint64_t sub_100325504(uint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_1004A67E4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10010C818(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t *sub_100325804@<X0>(uint64_t *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_65;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v22 = a2;
    v23 = result[1];

    v8 = sub_10010C818(v2, v3, 10);
    v25 = v24;

    if (v25)
    {
      v21 = 1;
      a2 = v22;
      goto LABEL_70;
    }

    a2 = v22;
    goto LABEL_69;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v26 = *result;
      v27 = a2;
      result = sub_1004A67E4();
      a2 = v27;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v14 = result + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v8, 0xAuLL))
              {
                goto LABEL_63;
              }

              v11 = __CFADD__(10 * v8, v15);
              v8 = 10 * v8 + v15;
              if (v11)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = __CFADD__(10 * v8, v18);
            v8 = 10 * v8 + v18;
            if (v11)
            {
              goto LABEL_63;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_64:
      v29 = v4;
      if (v4)
      {
LABEL_65:
        v21 = 1;
LABEL_70:
        *a2 = v21;
        return result;
      }

LABEL_69:
      v21 = v8 != 0;
      goto LABEL_70;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = 10 * v8 >= v10;
            v8 = 10 * v8 - v10;
            if (!v11)
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v4) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v28[0] = *result;
  v28[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v19 = v28;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v20);
          v8 = 10 * v8 + v20;
          if (v11)
          {
            break;
          }

          ++v19;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v28 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v16 = v28 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v17);
        v8 = 10 * v8 + v17;
        if (v11)
        {
          break;
        }

        ++v16;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t _s7ElementVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s7ElementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100325BF4(uint64_t a1, uint64_t *a2)
{
  v50 = a2;
  v3 = _s11QueuedItemsV4ItemVMa();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v51 = (&v41 - v8);
  v9 = __chkstk_darwin(v7);
  v43 = &v41 - v10;
  __chkstk_darwin(v9);
  v42 = &v41 - v11;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v48 = a1;

  v18 = 0;
  v46 = a1 + 56;
  v47 = _swiftEmptyArrayStorage;
  v45 = v16;
  if (v15)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v49 = (v15 - 1) & v15;
        v20 = *(*(v48 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = *v50;
        v22 = *(*v50 + 24);

        if (v22)
        {
          break;
        }

LABEL_5:

        v16 = v45;
        v12 = v46;
        v15 = v49;
        if (!v49)
        {
          goto LABEL_6;
        }
      }

      v23 = 0;
      while (1)
      {
        if (v23 >= v22)
        {
          __break(1u);
          goto LABEL_34;
        }

        v24 = *(v52 + 80);
        v25 = v21[4];
        v26 = v23 + v25 >= v21[2] ? v21[2] : 0;
        v27 = (v24 + 40) & ~v24;
        v28 = *(v52 + 72);
        v29 = v51;
        sub_100326F70(v21 + v27 + (v23 + v25 - v26) * v28, v51, _s11QueuedItemsV4ItemVMa);
        v30 = *v29;
        result = sub_100323784(v29);
        if (v30 == v20)
        {
          break;
        }

        ++v23;
        v22 = v21[3];
        if (v23 == v22)
        {
          goto LABEL_5;
        }
      }

      result = *v50;
      if (v23 >= *(*v50 + 24))
      {
        goto LABEL_35;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10033847C();
      }

      v31 = *v50;
      if (v23 >= *(*v50 + 24))
      {
        break;
      }

      v32 = *(v31 + 32);
      if (v32 + v23 >= *(v31 + 16))
      {
        v33 = *(v31 + 16);
      }

      else
      {
        v33 = 0;
      }

      v34 = v31 + v27;
      v35 = v31 + v27 + (v32 - v33 + v23) * v28;
      v36 = v43;
      sub_100326F70(v35, v43, _s11QueuedItemsV4ItemVMa);

      sub_100326464(v23, v23 + 1, (v31 + 16), v34);

      v37 = v42;
      sub_100326F0C(v36, v42);
      sub_100326F0C(v37, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_10035D87C(0, v47[2] + 1, 1, v47);
      }

      v16 = v45;
      v12 = v46;
      v39 = v47[2];
      v38 = v47[3];
      if (v39 >= v38 >> 1)
      {
        v47 = sub_10035D87C(v38 > 1, v39 + 1, 1, v47);
      }

      v40 = v47;
      v47[2] = v39 + 1;
      result = sub_100326F0C(v44, v40 + ((v24 + 32) & ~v24) + v39 * v28);
      v15 = v49;
      if (!v49)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        return v47;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100325FF8(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void *sub_100326004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v7 = result[3];
  if (v7)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    v9 = v7 + 1;
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  if (*(*a1 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100337CF8(isUniquelyReferenced_nonNull_native, v8, 0);
    v11 = *a1;
  }

  v12 = *(_s11QueuedItemsV4ItemVMa() - 8);
  result = sub_100337F98(v11 + 2, v11 + ((*(v12 + 80) + 40) & ~*(v12 + 80)), a2);
  *a3 = v9;
  *(a3 + 8) = v7 == 0;
  return result;
}

uint64_t sub_100326128()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 12);
  sub_100326EAC(v11);
  os_unfair_lock_unlock(v1 + 12);
  v2 = v11[0];
  v3 = v11[3];
  if (*(v11[0] + 16))
  {
    os_transaction_create();
  }

  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v9 = *(v7 - 1);
      v8 = *v7;

      v9(v10);

      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
    return v2;
  }

  return result;
}

uint64_t sub_100326248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s11QueuedItemsV4ItemVMa();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100325BF4(a2, a1);
  v31 = a1;
  v12 = *a1;
  v13 = *(v7 + 80);
  v14 = *(*a1 + 24);
  v15 = *(*a1 + 32);
  v16 = *(v12 + 16);
  v32 = v14;
  v33 = v11;
  v17 = v15 + v14;
  if (v16 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = (v13 + 40) & ~v13;
  v34 = v12;
  v35 = v15;
  v36 = v18;

  v21 = 0;
  v22 = v12;
  if (v15 == v18)
  {
LABEL_5:
    if (sub_100351DD0(v20))
    {
      v22 = v34;
      v15 = v35;
      goto LABEL_7;
    }

    v27 = _swiftEmptyArrayStorage;
    if (!*(v12 + 24))
    {
      v28 = v31[3];
      v31[3] = _swiftEmptyArrayStorage;
      v27 = v28;
    }

    v29 = v32;
    *a3 = v33;
    a3[1] = v29;
    a3[2] = v21;
    a3[3] = v27;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v23 = v15 + 1;
      v35 = v15 + 1;
      sub_100326F70(v22 + v19 + *(v7 + 72) * v15, v10, _s11QueuedItemsV4ItemVMa);
      result = type metadata accessor for PendingItem(0);
      v25 = *&v10[*(result + 28)];
      v26 = __OFADD__(v21, v25);
      v21 += v25;
      if (v26)
      {
        break;
      }

      v20 = sub_100323784(v10);
      ++v15;
      if (v23 == v36)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s11QueuedItemsV4ItemVMa()
{
  result = qword_1005D92B8;
  if (!qword_1005D92B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100326464(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  sub_100326548(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    _s11QueuedItemsV4ItemVMa();
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    _s11QueuedItemsV4ItemVMa();
    swift_arrayDestroy();
  }

  return sub_100326628(a1, a2, a3, a4);
}

uint64_t sub_100326548@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = _s11QueuedItemsV4ItemVMa();
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100326628(unint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = a3[1];
  v7 = a3[2];
  v8 = v7 + result;
  v9 = *a3;
  if ((v7 + result) >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 + a2;
  if (v7 + a2 >= v9)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 - a2;
  if (__OFSUB__(v6, a2))
  {
    goto LABEL_169;
  }

  v15 = a2 - result;
  v16 = v8 - v10;
  v17 = v11 - v12;
  if (v13 > result)
  {
    v13 = v7 + v4;
    if (!__OFADD__(v7, v4))
    {
      v18 = __OFSUB__(v13, v9);
      if (v13 >= v9)
      {
        v13 -= v9;
        if (v18)
        {
          goto LABEL_174;
        }
      }

      if (!result)
      {
        goto LABEL_126;
      }

      if (v17 <= 0)
      {
        v19 = *a3;
      }

      else
      {
        v19 = v11 - v12;
      }

      if (v16 <= 0)
      {
        v20 = *a3;
      }

      else
      {
        v20 = v8 - v10;
      }

      if (v7 < v20)
      {
        if (v19 >= v13)
        {
          if (result <= 0)
          {
            goto LABEL_126;
          }

          v17 = result;
          v40 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
          v41 = v40 * v13;
          result = a4 + v40 * v13;
          v42 = v40 * v7;
          v43 = a4 + v40 * v7 + v40 * v17;
          if (v41 >= v42 && result < v43)
          {
            if (v41 != v42)
            {
              goto LABEL_124;
            }

            goto LABEL_126;
          }

LABEL_125:
          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_126;
        }

        if (v17 <= 0)
        {
          goto LABEL_113;
        }

        v21 = result;
        v15 = v9 - v4;
        v22 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
        v23 = v22 * v15;
        v24 = a4 + v22 * v15 + v22 * v17;
        if (v23 <= 0 && v24 > a4)
        {
          result = v21;
          if (!v23)
          {
LABEL_113:
            v18 = __OFSUB__(result, v17);
            v17 = result - v17;
            if (!v18)
            {
              goto LABEL_120;
            }

            __break(1u);
LABEL_164:
            result = swift_arrayInitWithTakeFrontToBack();
            goto LABEL_165;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        result = v21;
        goto LABEL_113;
      }

      if (v19 < v13)
      {
        v35 = result;
        if (v16 > 0)
        {
          v36 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
          if (v36 * v4 < 0 || v36 * v4 >= v36 * v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = *a3 - v4;
        result = _s11QueuedItemsV4ItemVMa();
        v50 = *(*(result - 8) + 72);
        if (v50 * v49 <= 0 && a4 + v50 * v49 + v50 * v4 > a4)
        {
          if (v50 * v49)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        v52 = v35 - v17;
        if (__OFSUB__(v35, v17))
        {
          goto LABEL_176;
        }

        if (v52 < 1)
        {
          goto LABEL_126;
        }

        result = a4 + v50 * v13;
        v53 = a3[2] * v50;
        if (v50 * v13 >= v53 && result < a4 + v53 + v50 * v52)
        {
          if (v50 * v13 != v53)
          {
            goto LABEL_124;
          }

          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (__OFSUB__(0, v16))
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      if (v16 > 0)
      {
        v15 = result;
        v45 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
        v46 = v45 * (v17 - v16);
        if (v46 < 0 || v46 >= v45 * v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          result = v15;
          if (!v46)
          {
            goto LABEL_119;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        result = v15;
      }

LABEL_119:
      v17 = result - v16;
      if (__OFSUB__(result, v16))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

LABEL_120:
      if (v17 < 1)
      {
        goto LABEL_126;
      }

      v54 = a3[2];
      v55 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
      result = a4 + v55 * v13;
      if (v55 * v13 >= v55 * v54 && result < a4 + v55 * v54 + v55 * v17)
      {
        if (v55 * v13 != v55 * v54)
        {
LABEL_124:
          result = swift_arrayInitWithTakeBackToFront();
        }

LABEL_126:
        a3[2] = v13;
        v56 = a3[1];
        v18 = __OFSUB__(v56, v4);
        v57 = v56 - v4;
        if (!v18)
        {
          goto LABEL_166;
        }

        __break(1u);
        goto LABEL_129;
      }

      goto LABEL_125;
    }

    goto LABEL_170;
  }

  v26 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v27 = __OFSUB__(v26, v9);
    if (v26 < v9)
    {
      goto LABEL_37;
    }

    v26 -= v9;
    if (!v27)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  if (v26 < 0)
  {
    v18 = __OFADD__(v26, v9);
    v26 += v9;
    if (v18)
    {
      goto LABEL_182;
    }
  }

LABEL_37:
  v18 = __OFSUB__(v6, v4);
  v28 = v6 - v4;
  if (v18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v29 = v28 + v7;
  if (v29 >= v9)
  {
    v30 = v9;
  }

  else
  {
    v30 = 0;
  }

  if (!v13)
  {
    goto LABEL_165;
  }

  v31 = v29 - v30;
  if (v29 - v30 <= 0)
  {
    v32 = v9;
  }

  else
  {
    v32 = v29 - v30;
  }

  if (v26 <= 0)
  {
    v33 = v9;
  }

  else
  {
    v33 = v26;
  }

  if (v17 >= v33)
  {
    v37 = v9 - v17;
    v38 = __OFSUB__(v9, v17);
    if (v32 >= v16)
    {
      if (v38)
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      if (v37 > 0)
      {
        v48 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
        result = a4 + v48 * v16;
        if (v48 * v16 < v48 * v17 || result >= a4 + v48 * v17 + v48 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v48 * v16 != v48 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_185;
        }

        v64 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v64)
          {
            goto LABEL_189;
          }
        }
      }

      if (v26 < 1)
      {
        goto LABEL_165;
      }

      result = _s11QueuedItemsV4ItemVMa();
      v65 = *(*(result - 8) + 72);
      v66 = v65 * v16;
      if (((v65 * v16) & 0x8000000000000000) == 0 && v66 < v65 * v26)
      {
        if (!v66)
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    else
    {
      if (v38)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v37 > 0)
      {
        v39 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
        result = a4 + v39 * v16;
        if (v39 * v16 < v39 * v17 || result >= a4 + v39 * v17 + v39 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 * v16 != v39 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_184;
        }

        v61 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v61)
          {
            goto LABEL_188;
          }
        }
      }

      result = _s11QueuedItemsV4ItemVMa();
      v62 = *(*(result - 8) + 72);
      v63 = v62 * v16;
      if (v62 * v16 < 0 || v63 >= v62 * v4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v63)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      if (v4 >= *a3)
      {
        v15 = v4 - *a3;
        if (__OFSUB__(v4, *a3))
        {
          goto LABEL_186;
        }
      }

      if (v31 <= 0)
      {
        goto LABEL_165;
      }

      if (v15 * v62 <= 0 && a4 + v15 * v62 + v62 * v31 > a4)
      {
        if (!(v15 * v62))
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    goto LABEL_164;
  }

  if (v32 >= v16)
  {
    if (v13 <= 0)
    {
      goto LABEL_165;
    }

    v47 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
    result = a4 + v47 * v16;
    if (v47 * v16 >= v47 * v17 && result < a4 + v47 * v17 + v47 * v13)
    {
      if (v47 * v16 == v47 * v17)
      {
        goto LABEL_165;
      }

LABEL_163:
      result = swift_arrayInitWithTakeBackToFront();
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v15 = v9 - v16;
  if (__OFSUB__(v9, v16))
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v15 > 0)
  {
    v34 = *(*(_s11QueuedItemsV4ItemVMa() - 8) + 72);
    result = a4 + v34 * v16;
    if (v34 * v16 >= v34 * v17 && result < a4 + v34 * v17 + v34 * v15)
    {
      if (v34 * v16 != v34 * v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_130;
    }

LABEL_129:
    result = swift_arrayInitWithTakeFrontToBack();
LABEL_130:
    v18 = __OFADD__(v17, v15);
    v17 += v15;
    if (v18)
    {
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      return result;
    }

    v58 = __OFSUB__(v17, *a3);
    if (v17 >= *a3)
    {
      v17 -= *a3;
      if (v58)
      {
        goto LABEL_187;
      }
    }
  }

  v59 = v13 - v15;
  if (__OFSUB__(v13, v15))
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v59 >= 1)
  {
    result = _s11QueuedItemsV4ItemVMa();
    v60 = *(*(result - 8) + 72);
    if (v60 * v17 <= 0 && a4 + v60 * v17 + v60 * v59 > a4)
    {
      if (!(v60 * v17))
      {
        goto LABEL_165;
      }

      goto LABEL_163;
    }

    goto LABEL_164;
  }

LABEL_165:
  v67 = a3[1];
  v18 = __OFSUB__(v67, v4);
  v57 = v67 - v4;
  if (v18)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_166:
  a3[1] = v57;
  return result;
}

__n128 sub_100326EAC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v7);
  v5 = v9;
  result = v8;
  *a1 = v7;
  *(a1 + 8) = result;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100326F0C(uint64_t a1, uint64_t a2)
{
  v4 = _s11QueuedItemsV4ItemVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100326FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PendingItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1003270BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PendingItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100327174()
{
  result = type metadata accessor for PendingItem(319);
  if (v1 <= 0x3F)
  {
    result = _s7MessageCMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100327208(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_1004A6554();
    v7 = result;
    v8 = 0;
    v23 = v1 + 64;
    v24 = v2;
    v25 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v26 = v8;
      v27 = *(v1 + 36);
      v28 = *(*(v1 + 48) + 8 * v7);
      v30._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v30);

      v11 = v4;
      v29 = v4;
      v12 = v1;
      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_100091A08((v13 > 1), v14 + 1, 1);
        v11 = v29;
      }

      v11[2] = v14 + 1;
      v15 = &v11[2 * v14];
      v15[4] = 35;
      v15[5] = 0xE100000000000000;
      v9 = 1 << *(v12 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v25;
      v16 = *(v25 + 8 * v10);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v12;
      v4 = v11;
      if (v27 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v9 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_100020944(v7, v27, 0);
            v9 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v7, v27, 0);
      }

LABEL_4:
      v8 = v26 + 1;
      v7 = v9;
      if (v26 + 1 == v24)
      {
        return v4;
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

void sub_100327468()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16))
  {

    os_unfair_lock_unlock((v2 + 20));
  }

  else
  {
    *(v2 + 16) = 1;
    os_unfair_lock_unlock((v2 + 20));
    if (qword_1005D8768 != -1)
    {
      swift_once();
    }

    v3 = sub_1004A4A74();
    sub_1001C203C(v3, qword_1005D9350);
    v4 = sub_1004A4A54();
    v5 = sub_1004A6034();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting.", v6, 2u);
    }

    v7 = *(v1 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v11[4] = sub_10032ADBC;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10019C778;
    v11[3] = &unk_1005B4190;
    v9 = _Block_copy(v11);
    v10 = v7;

    [v10 performBlock:v9];
    _Block_release(v9);
  }
}

void sub_100327650(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  os_unfair_lock_lock((v5 + 20));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 20));
  if (v6)
  {
    sub_1004A69A4();
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_10032B7E4;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B4230;
    v9 = _Block_copy(aBlock);

    [v7 performBlock:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1003277A0()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D9350);
  sub_1001C203C(v0, qword_1005D9350);
  return sub_1004A4A64();
}

uint64_t sub_10032781C(uint64_t a1, uint64_t a2)
{
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_1005D9218;
  v12[3] = *&qword_1005D9228;
  v12[4] = xmmword_1005D9238;
  v12[0] = xmmword_1005D91F8;
  v12[1] = *&qword_1005D9208;
  v3 = sub_1003521DC(v12);
  if (qword_1005D8768 != -1)
  {
    swift_once();
  }

  v4 = sub_1004A4A74();
  sub_1001C203C(v4, qword_1005D9350);
  v5 = sub_1004A4A54();
  v6 = sub_1004A6034();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Read current index generation %llu from database.", v7, 0xCu);
  }

  v8 = swift_beginAccess();
  v9 = __chkstk_darwin(v8);
  v10 = *(a2 + 48);
  __chkstk_darwin(v9);
  os_unfair_lock_lock(v10 + 12);
  sub_10032ADE4();
  os_unfair_lock_unlock(v10 + 12);
  return swift_endAccess();
}

uint64_t sub_100327A10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_100327A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v134 = a1;
  v141 = a5;
  v8 = sub_1004A4A74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v139 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v138 = &v126 - v13;
  __chkstk_darwin(v14);
  v136 = &v126 - v15;
  v16 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v128 = &v126 - v18;
  v19 = sub_1004A44E4();
  v132 = *(v19 - 8);
  v133 = v19;
  v20 = *(v132 + 64);
  __chkstk_darwin(v19);
  v127 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v130 = &v126 - v23;
  v129 = type metadata accessor for PendingItem.Info(0);
  v24 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v131 = (&v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v126 - v28;
  v30 = type metadata accessor for IndexableMessageInfo(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v135 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v140 = &v126 - v35;
  v36 = sub_1004A5734();
  [a3 willAccessValueForKey:v36];

  v37 = [a3 primitiveIndexableMessageInfo];
  if (v37)
  {
    v38 = v37;
    v137 = v31;
    v39 = v29;
    v40 = v30;
    v41 = a3;
    v42 = a2;
    v43 = v9;
    v44 = v8;
    v45 = a4;
    v46 = OBJC_IVAR____TtCE17IMAPSearchIndexerV9IMAP2MIME20IndexableMessageInfoP33_5FFF53AECAA0B5B4FDC4BFE964265B9C7Wrapper_info;
    swift_beginAccess();
    v47 = v38 + v46;
    a4 = v45;
    v8 = v44;
    v9 = v43;
    a2 = v42;
    a3 = v41;
    v30 = v40;
    v29 = v39;
    v31 = v137;
    sub_10032ACA4(v47, v39);
  }

  else
  {
    (*(v31 + 56))(v29, 1, 1, v30);
  }

  v48 = sub_1004A5734();
  [a3 didAccessValueForKey:v48];

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {

    sub_100025F40(v29, &qword_1005D6670, &qword_1004EBFB0);
    v49 = v139;
    (*(v9 + 16))(v139, a4, v8);
    v50 = a3;
    v51 = sub_1004A4A54();
    v52 = sub_1004A6024();
    if (os_log_type_enabled(v51, v52))
    {
      v135 = v8;
      v137 = a4;
      v53 = 8425698;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v144 = v55;
      *v54 = 67109635;
      v56 = sub_10033A5E0();
      if ((v56 & &_mh_execute_header) != 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      *(v54 + 4) = v57;

      *(v54 + 8) = 2160;
      *(v54 + 10) = 0x786F626C69616DLL;
      *(v54 + 18) = 2085;
      v58 = [v50 mailbox];
      if (v58)
      {
        v59 = v58;
        v60 = v9;
        v61 = sub_10033A824();
        v63 = v62;

        if (v61)
        {
          v142 = v61;
          v143 = v63;
          v53 = sub_1004A5824();
          v65 = v64;
          v9 = v60;
        }

        else
        {
          v65 = 0xA300000000000000;
          v9 = v60;
          v53 = 8425698;
        }
      }

      else
      {
        v65 = 0xA300000000000000;
      }

      v112 = sub_10015BA6C(v53, v65, &v144);

      *(v54 + 20) = v112;
      _os_log_impl(&_mh_execute_header, v51, v52, "Message UID %u in mailbox '%{sensitive,mask.mailbox}s' has no index info. Not enqueueing for indexing.", v54, 0x1Cu);
      sub_1000197E0(v55);

      sub_10032AED4(v137, _s6LoggerVMa_0);
      (*(v9 + 8))(v49, v135);
    }

    else
    {

      sub_10032AED4(a4, _s6LoggerVMa_0);
      (*(v9 + 8))(v49, v8);
    }

    goto LABEL_50;
  }

  v66 = v140;
  sub_10032AD14(v29, v140, type metadata accessor for IndexableMessageInfo);
  v67 = sub_10033A4C8();
  if (v68)
  {

    v69 = v138;
    (*(v9 + 16))(v138, a4, v8);
    v70 = a3;
    v71 = sub_1004A4A54();
    v72 = sub_1004A6024();
    if (os_log_type_enabled(v71, v72))
    {
      v135 = v8;
      v137 = a4;
      v73 = 8425698;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v144 = v75;
      *v74 = 67109635;
      v76 = sub_10033A5E0();
      if ((v76 & &_mh_execute_header) != 0)
      {
        v77 = 0;
      }

      else
      {
        v77 = v76;
      }

      *(v74 + 4) = v77;

      *(v74 + 8) = 2160;
      *(v74 + 10) = 0x786F626C69616DLL;
      *(v74 + 18) = 2085;
      v78 = [v70 mailbox];
      if (v78)
      {
        v79 = v78;
        v80 = v9;
        v81 = sub_10033A824();
        v83 = v82;

        if (v81)
        {
          v142 = v81;
          v143 = v83;
          v73 = sub_1004A5824();
          v85 = v84;
        }

        else
        {
          v85 = 0xA300000000000000;
        }

        v9 = v80;
        v69 = v138;
      }

      else
      {
        v85 = 0xA300000000000000;
      }

      v122 = sub_10015BA6C(v73, v85, &v144);

      *(v74 + 20) = v122;
      v123 = "Message UID %u in mailbox '%{sensitive,mask.mailbox}s' has no spotlight ID. Not enqueueing for indexing.";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v71, v72, v123, v74, 0x1Cu);
      sub_1000197E0(v75);

      sub_10032AED4(v137, _s6LoggerVMa_0);
      (*(v9 + 8))(v69, v135);
      v111 = v140;
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  v86 = v67;
  v87 = [a3 mailbox];
  if (!v87 || (v88 = v87, v89 = sub_100372E50([v87 objectID]), v88, !v89))
  {

    v69 = v136;
    (*(v9 + 16))(v136, a4, v8);
    v70 = a3;
    v71 = sub_1004A4A54();
    v72 = sub_1004A6024();
    if (os_log_type_enabled(v71, v72))
    {
      v135 = v8;
      v137 = a4;
      v100 = 8425698;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v144 = v75;
      *v74 = 67109635;
      v101 = sub_10033A5E0();
      if ((v101 & &_mh_execute_header) != 0)
      {
        v102 = 0;
      }

      else
      {
        v102 = v101;
      }

      *(v74 + 4) = v102;

      *(v74 + 8) = 2160;
      *(v74 + 10) = 0x786F626C69616DLL;
      *(v74 + 18) = 2085;
      v103 = [v70 mailbox];
      if (v103)
      {
        v104 = v103;
        v105 = v9;
        v106 = sub_10033A824();
        v108 = v107;

        if (v106)
        {
          v142 = v106;
          v143 = v108;
          v100 = sub_1004A5824();
          v110 = v109;
        }

        else
        {
          v110 = 0xA300000000000000;
        }

        v9 = v105;
        v69 = v136;
      }

      else
      {
        v110 = 0xA300000000000000;
      }

      v124 = sub_10015BA6C(v100, v110, &v144);

      *(v74 + 20) = v124;
      v123 = "Message UID %u in mailbox '%{sensitive,mask.mailbox}s' has no mailbox spotlight ID. Not enqueueing for indexing.";
      goto LABEL_48;
    }

LABEL_32:

    sub_10032AED4(a4, _s6LoggerVMa_0);
    (*(v9 + 8))(v69, v8);
    v111 = v66;
LABEL_49:
    sub_10032AED4(v111, type metadata accessor for IndexableMessageInfo);
LABEL_50:
    v125 = type metadata accessor for EnqueueableItem(0);
    return (*(*(v125 - 8) + 56))(v141, 1, 1, v125);
  }

  v90 = v135;
  sub_10032AE6C(v66, v135, type metadata accessor for IndexableMessageInfo);
  v139 = sub_10033AF38();
  LODWORD(v138) = v91 & 1;
  v92 = [a3 serverDate];
  if (v92)
  {
    v93 = v127;
    v94 = v92;
    sub_1004A44C4();

    sub_10032AED4(a4, _s6LoggerVMa_0);
    sub_10032AED4(v66, type metadata accessor for IndexableMessageInfo);
    v95 = v132;
    v96 = v133;
    v97 = *(v132 + 32);
    v98 = v128;
    v97(v128, v93, v133);
    (*(v95 + 56))(v98, 0, 1, v96);
    v99 = v130;
    v97(v130, v98, v96);
  }

  else
  {
    v113 = v132;
    v96 = v133;
    v114 = v128;
    (*(v132 + 56))(v128, 1, 1, v133);
    v99 = v130;
    sub_1004A44D4();

    v115 = a4;
    v95 = v113;
    v90 = v135;
    sub_10032AED4(v115, _s6LoggerVMa_0);
    sub_10032AED4(v66, type metadata accessor for IndexableMessageInfo);
    if ((*(v95 + 48))(v114, 1, v96) != 1)
    {
      sub_100025F40(v114, &qword_1005D0F20, &qword_1004E9390);
    }
  }

  v116 = v131;
  *v131 = v134;
  *(v116 + 8) = a2;
  *(v116 + 16) = v89;
  v117 = type metadata accessor for PendingItem.AddMessage(0);
  sub_10032AD14(v90, v116 + v117[6], type metadata accessor for IndexableMessageInfo);
  v118 = v116 + v117[7];
  *v118 = v139;
  *(v118 + 8) = v138;
  (*(v95 + 32))(v116 + v117[8], v99, v96);
  swift_storeEnumTagMultiPayload();
  v119 = v141;
  *v141 = v86;
  v120 = type metadata accessor for EnqueueableItem(0);
  sub_10032AD14(v116, v119 + *(v120 + 20), type metadata accessor for PendingItem.Info);
  return (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
}

uint64_t sub_1003288B4(uint64_t a1, void *a2)
{
  v5 = _s11QueuedItemsV4ItemVMa();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnqueueableItem(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PendingItem(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + 40);
  os_unfair_lock_lock((v17 + 20));
  v18 = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));
  v19 = 0;
  if ((v18 & 1) == 0)
  {
    sub_10032AE6C(a1, v12, type metadata accessor for EnqueueableItem);
    v20 = *(v2 + 56);
    *(v2 + 56) = v20 + 1;
    sub_100341B64(v12, v20, v16);
    sub_10032AE6C(v16, v8, type metadata accessor for PendingItem);
    *&v8[*(v5 + 20)] = a2;
    v21 = a2;
    sub_100328AA0(v8);
    sub_10032AED4(v8, _s11QueuedItemsV4ItemVMa);
    v19 = *v16;
    sub_10032AED4(v16, type metadata accessor for PendingItem);
  }

  return v19;
}

uint64_t sub_100328AA0(uint64_t a1)
{
  v2 = v1;
  v4 = _s11QueuedItemsV4ItemVMa();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v33[-v9];
  swift_beginAccess();
  v37 = a1;
  v11 = *(v1 + 48);
  v34 = sub_100328E00;
  v35 = &v36;
  os_unfair_lock_lock(v11 + 12);
  sub_10032AC4C(&v38);
  os_unfair_lock_unlock(v11 + 12);
  v12 = v38;
  v13 = v39;
  swift_endAccess();
  if (v13 != 1)
  {
    if (qword_1005D8768 != -1)
    {
      swift_once();
    }

    v24 = sub_1004A4A74();
    sub_1001C203C(v24, qword_1005D9350);
    sub_10032AE6C(a1, v8, _s11QueuedItemsV4ItemVMa);
    v15 = sub_1004A4A54();
    v25 = sub_1004A6004();
    if (os_log_type_enabled(v15, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      v27 = *v8;
      sub_10032AED4(v8, _s11QueuedItemsV4ItemVMa);
      *(v26 + 4) = v27;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v12;
      v19 = "Did enqueue item #%llu. Queue has %ld items.";
      v20 = v25;
      v21 = v15;
      v22 = v26;
      v23 = 22;
      goto LABEL_10;
    }

    v28 = v8;
LABEL_13:
    sub_10032AED4(v28, _s11QueuedItemsV4ItemVMa);
    goto LABEL_14;
  }

  if (qword_1005D8768 != -1)
  {
    swift_once();
  }

  v14 = sub_1004A4A74();
  sub_1001C203C(v14, qword_1005D9350);
  sub_10032AE6C(a1, v10, _s11QueuedItemsV4ItemVMa);
  v15 = sub_1004A4A54();
  v16 = sub_1004A6004();
  if (!os_log_type_enabled(v15, v16))
  {
    v28 = v10;
    goto LABEL_13;
  }

  v17 = swift_slowAlloc();
  *v17 = 134217984;
  v18 = *v10;
  sub_10032AED4(v10, _s11QueuedItemsV4ItemVMa);
  *(v17 + 4) = v18;
  v19 = "Did enqueue item #%llu. Was empty.";
  v20 = v16;
  v21 = v15;
  v22 = v17;
  v23 = 12;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v21, v20, v19, v22, v23);

LABEL_14:

  v30 = *(v2 + 64);
  v29 = *(v2 + 72);

  v30(v31);
}

uint64_t sub_100328E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005D8768 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005D9350);

  v7 = sub_1004A4A54();
  v8 = sub_1004A6004();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = *(a1 + 16);

    *(v9 + 12) = 2082;
    sub_100327208(a1);
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    v32 = v2;
    v11 = a2;
    sub_100031CDC();
    v12 = sub_1004A5614();
    v14 = v13;

    v15 = sub_10015BA6C(v12, v14, aBlock);
    a2 = v11;
    v3 = v32;

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Did complete %ld item(s) %{public}s, generation: %llu.", v9, 0x20u);
    sub_1000197E0(v10);
  }

  else
  {
  }

  swift_beginAccess();
  v16 = sub_100326128();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  swift_endAccess();

  v23 = sub_1004A4A54();
  v24 = sub_1004A6034();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a2;
    v26 = swift_slowAlloc();
    *v26 = 134218496;
    *(v26 + 4) = *(a1 + 16);

    *(v26 + 12) = 2048;
    *(v26 + 14) = v18;
    *(v26 + 22) = 1024;
    if (v20 == v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0;
    }

    *(v26 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Did complete %ld item(s), %ld item(s) (%{iec-bytes}d) remaining in queue.", v26, 0x1Cu);
    a2 = v25;
  }

  else
  {
  }

  v28 = *(v3 + 16);
  v29 = swift_allocObject();
  v29[2] = v16;
  v29[3] = v18;
  v29[4] = v20;
  v29[5] = v22;
  v29[6] = v3;
  v29[7] = a2;
  aBlock[4] = sub_10032AE5C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B41E0;
  v30 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v28 performBlock:v30];
  _Block_release(v30);
  swift_unknownObjectRelease();
}

void sub_1003291E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10032929C(a1, a6);
  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (qword_1005D8770 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 postNotificationName:qword_1005D9368 object:a5];
}

uint64_t sub_10032929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  v11 = _s11QueuedItemsV4ItemVMa();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v13 + 20);
    v20 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v35 = *(v14 + 72);
    v36 = v19;
    *&v15 = 134217984;
    v32 = v15;
    v33 = v4;
    v34 = a2;
    do
    {
      sub_10032AE6C(v20, v17, _s11QueuedItemsV4ItemVMa);
      v21 = *&v17[v36];
      sub_10032AE6C(v17, v10, type metadata accessor for PendingItem);
      v22 = v21;
      sub_10032AED4(v17, _s11QueuedItemsV4ItemVMa);
      if (qword_1005D8768 != -1)
      {
        swift_once();
      }

      v23 = sub_1004A4A74();
      sub_1001C203C(v23, qword_1005D9350);
      v24 = [v22 managedObjectContext];
      if (v24)
      {

        sub_10032A0F0(&v10[*(v4 + 24)], a2);
      }

      else
      {
        sub_10032AE6C(v10, v8, type metadata accessor for PendingItem);
        v25 = sub_1004A4A54();
        v26 = sub_1004A6034();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = v32;
          v28 = *v8;
          sub_10032AED4(v8, type metadata accessor for PendingItem);
          *(v27 + 4) = v28;
          v4 = v33;
          _os_log_impl(&_mh_execute_header, v25, v26, "Managed object (message) was unregistered, probably deleted. Not marking as “indexing complete” for #%llu.", v27, 0xCu);
          a2 = v34;
        }

        else
        {
          sub_10032AED4(v8, type metadata accessor for PendingItem);
        }

        v22 = v25;
      }

      sub_10032AED4(v10, type metadata accessor for PendingItem);
      v20 += v35;
      --v18;
    }

    while (v18);
  }

  v29 = *(v31[1] + 24);
  return sub_100309448();
}

uint64_t sub_10032960C(uint64_t a1, uint64_t (*a2)(uint64_t *), void *a3)
{
  v59[1] = a3;
  v60 = a2;
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v65 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v59 - v9;
  __chkstk_darwin(v11);
  v61 = v59 - v12;
  v13 = *(a1 + 16);
  if (qword_1005D8760 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v73[2] = xmmword_1005D9218;
    v73[3] = *&qword_1005D9228;
    v73[4] = xmmword_1005D9238;
    v73[0] = xmmword_1005D91F8;
    v73[1] = *&qword_1005D9208;
    v14 = sub_1003521DC(v73);
    v72[2] = xmmword_1005D9218;
    v72[3] = *&qword_1005D9228;
    v72[4] = xmmword_1005D9238;
    v72[1] = *&qword_1005D9208;
    v72[0] = xmmword_1005D91F8;
    sub_100352454(v14 + 1, v72);
    v15 = [objc_opt_self() defaultCenter];
    v16 = sub_1004A5734();
    [v15 postNotificationName:v16 object:v13];

    v17 = sub_100307550();
    swift_beginAccess();
    v18 = *(v17 + 16);

    v67 = v4;
    v66 = v10;
    v59[0] = v13;
    if (!(v18 >> 62))
    {
      v10 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        break;
      }

      goto LABEL_4;
    }

    v10 = sub_1004A6A34();
    if (!v10)
    {
      break;
    }

LABEL_4:
    v19 = 0;
    v4 = 0x6761735561746164;
    v13 = (v18 & 0xC000000000000001);
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    v64 = (v5 + 2);
    v63 = v5 + 1;
    p_attr = &stru_1005CAFF8.attr;
    v62 = v10;
    v69 = v18 & 0xC000000000000001;
    v68 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v22 = sub_1004A6794();
      }

      else
      {
        if (v19 >= *(v20 + 16))
        {
          goto LABEL_31;
        }

        v22 = *(v18 + 8 * v19 + 32);
      }

      v5 = v22;
      v23 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (([v22 p_attr[429]] & 1) != 0 || (v24 = objc_msgSend(v5, "managedObjectContext")) == 0)
      {

        goto LABEL_6;
      }

      v25 = sub_1004A5734();
      [v5 willAccessValueForKey:v25];

      v26 = [v5 primitiveAccount];
      if (!v26)
      {
        goto LABEL_18;
      }

      v27 = v26;
      v28 = sub_1004A5764();
      v30 = v29;

      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31)
      {

LABEL_18:
        v30 = 0;
      }

      v32 = sub_1004A5734();
      [v5 didAccessValueForKey:v32];

      p_attr = (&stru_1005CAFF8 + 8);
      if (v30)
      {

        v33 = sub_1004A5734();
        [v5 willAccessValueForKey:v33];

        v34 = [v5 primitiveDataUsage];
        if (v34)
        {
          v35 = v34;
          v36 = sub_1004A4414();
          v38 = v37;

          sub_100014CEC(v36, v38);
          v39 = v61;
          sub_1004A44D4();
          v40 = sub_100378058(v39, v36, v38);
          sub_100014D40(v36, v38);
        }

        else
        {
          v40 = sub_1003510AC(_swiftEmptyArrayStorage);
        }

        v41 = sub_1004A5734();
        [v5 didAccessValueForKey:v41];

        v71[0] = v40;
        v10 = v66;
        sub_1004A44D4();
        v42 = v65;
        v43 = v67;
        (*v64)(v65, v10, v67);
        sub_1004A4464();
        v45 = round(v44 / 21600.0);
        v46 = v4;
        v4 = *v63;
        v47 = v42;
        v13 = v63;
        (*v63)(v47, v43);
        if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v45 <= -9.22337204e18)
          {
            goto LABEL_32;
          }

          if (v45 >= 9.22337204e18)
          {
            goto LABEL_33;
          }

          sub_10037560C(v45, v71);
          v43 = v67;
          v10 = v66;
        }

        (v4)(v10, v43);
        v48 = v71[0];
        v49 = sub_1004A5734();
        [v5 willChangeValueForKey:v49];

        v50 = sub_100373DA8(v48);
        v52 = v51;

        isa = sub_1004A4404().super.isa;
        sub_100014D40(v50, v52);
        [v5 setPrimitiveDataUsage:isa];

        v54 = sub_1004A5734();
        [v5 didChangeValueForKey:v54];

        v4 = v46;
        v10 = v62;
        v13 = v69;
        v20 = v68;
        p_attr = (&stru_1005CAFF8 + 8);
      }

      else
      {

        v13 = v69;
        v20 = v68;
      }

LABEL_6:
      ++v19;
      if (v23 == v10)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_36:

  v71[0] = 0;
  if ([v59[0] save:v71])
  {
    v55 = v71[0];
    return v60(v55);
  }

  else
  {
    v57 = v71[0];
    v58 = sub_1004A4274();

    swift_willThrow();
    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    sub_1004A6724(18);
    v74._object = 0x80000001004AF1E0;
    v74._countAndFlagsBits = 0xD000000000000010;
    sub_1004A5994(v74);
    v70 = v58;
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    sub_1004A6934();
    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100329E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  sub_100329FF0(a2);
  v5 = *(a1 + 16);
  v8[0] = 0;
  if ([v5 save:v8])
  {
    return a3(v8[0]);
  }

  v7 = v8[0];
  sub_1004A4274();

  swift_willThrow();
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1004A6724(18);
  v9._object = 0x80000001004AF1E0;
  v9._countAndFlagsBits = 0xD000000000000010;
  sub_1004A5994(v9);
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  sub_1004A6934();
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_100329FF0(uint64_t a1)
{
  v2 = *(a1 + 16);

  for (i = 0; ; i = v7)
  {
    v5 = v2;
    if ((v2 - i) >= 0x3E8)
    {
      v5 = i + 1000;
      if (__OFADD__(i, 1000))
      {
        goto LABEL_20;
      }

      if (v5 < i)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }
    }

    if (v2 < v5)
    {
      goto LABEL_16;
    }

    v6 = v5 - i;
    if (v5 == i)
    {
      break;
    }

    if (v5 - i < 0)
    {
      goto LABEL_17;
    }

    if (v2 - i < v6)
    {
      goto LABEL_21;
    }

    v7 = v5;
    if (__OFADD__(i, v6))
    {
      goto LABEL_18;
    }

    if (v2 < v5)
    {
      goto LABEL_19;
    }

    v8 = (2 * v5) | 1;
    swift_unknownObjectRetain();
    v9 = objc_autoreleasePoolPush();
    sub_10032AF3C(a1 + 32, i, v8);
    objc_autoreleasePoolPop(v9);
    result = swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void sub_10032A0F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51[-v7];
  v9 = type metadata accessor for PendingItem.Info(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10032A78C(a1);
  sub_10032AE6C(a1, v12, type metadata accessor for PendingItem.Info);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v48 = sub_1004A5734();
      [v2 willChangeValueForKey:v48];

      v49 = [objc_allocWithZone(NSNumber) initWithLongLong:0];
      [v2 setPrimitiveIndexGeneration:v49];

      v50 = sub_1004A5734();
      [v2 didChangeValueForKey:v50];

      v31 = [v2 managedObjectContext];
      [v31 deleteObject:v2];
      goto LABEL_18;
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = v12[2];
    v17 = v12[3];
    v18 = v12[4];
    v19 = v12[5];
    v20 = v12[6];
    v21 = v12[7];
    v22 = v12[8];
    v23 = sub_10033AF38();
    v25 = 256;
    if ((v15 & 1) == 0)
    {
      v25 = 0;
    }

    v26 = 0x10000;
    if ((v16 & 1) == 0)
    {
      v26 = 0;
    }

    v27 = 0x1000000;
    if ((v17 & 1) == 0)
    {
      v27 = 0;
    }

    v28 = &_mh_execute_header;
    if ((v18 & 1) == 0)
    {
      v28 = 0;
    }

    v29 = 0x10000000000;
    if ((v19 & 1) == 0)
    {
      v29 = 0;
    }

    if (static Flags.__derived_struct_equals(_:_:)(v23 & 0xFFFF010101010101, v24 & 1, v14 & 1 | (v20 << 48) | v25 | v26 | v27 | v28 | v29 | (v21 << 56), v22 & 1))
    {
      v30 = sub_1004A5734();
      [v2 willChangeValueForKey:v30];

      [v2 setPrimitiveAttributeChange:0];
      v31 = sub_1004A5734();
      [v2 didChangeValueForKey:v31];
LABEL_18:
    }
  }

  else
  {
    v32 = type metadata accessor for IndexableMessageInfo(0);
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    v33 = sub_1004A5734();
    [v2 willChangeValueForKey:v33];

    sub_10033B644(v2, v8);
    v34 = sub_1004A5734();
    [v2 didChangeValueForKey:v34];

    sub_100025F40(v8, &qword_1005D6670, &qword_1004EBFB0);
    v35 = sub_1004A5734();
    [v2 willChangeValueForKey:v35];

    v36 = [objc_allocWithZone(NSNumber) initWithLongLong:a2];
    [v2 setPrimitiveIndexGeneration:v36];

    v37 = sub_1004A5734();
    [v2 didChangeValueForKey:v37];

    v38 = sub_1004A5734();
    [v2 willChangeValueForKey:v38];

    v39 = [objc_allocWithZone(NSNumber) initWithBool:0];
    [v2 setPrimitiveNeedToRedonate:v39];

    v40 = sub_1004A5734();
    [v2 didChangeValueForKey:v40];

    v41 = sub_1004A5734();
    [v2 willChangeValueForKey:v41];

    [v2 setPrimitiveAttributeChange:0];
    v42 = sub_1004A5734();
    [v2 didChangeValueForKey:v42];

    v43 = sub_10033AE54();
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);

      [v2 didChangeValueForKey:sub_1004A5734()];
      __break(1u);
    }

    else
    {
      v45 = sub_1004A5734();
      [v2 willChangeValueForKey:v45];

      v46 = [objc_allocWithZone(NSNumber) initWithInteger:v44 & ~(v44 >> 63)];
      [v2 setPrimitiveIndexCount:v46];

      v47 = sub_1004A5734();
      [v2 didChangeValueForKey:v47];

      sub_10032AED4(v12, type metadata accessor for PendingItem.Info);
    }
  }
}

void sub_10032A78C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = [v1 mailbox];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100340AF8(v12);
    v16 = v15;

    if (v16)
    {
      v17 = [v2 managedObjectContext];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1003070C0(v14, v16);

        __chkstk_darwin(v20);
        *(&v31 - 2) = a1;
        v32 = sub_10033A6CC();
        sub_1004A44D4();
        (*(v5 + 16))(v9, v11, v4);
        sub_1004A4464();
        v22 = round(v21 / 21600.0);
        v23 = *(v5 + 8);
        v23(v9, v4);
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v22 <= -9.22337204e18)
          {
            __break(1u);
          }

          else if (v22 < 9.22337204e18)
          {
            sub_100375338(v22, &v32, sub_10032AF34, (&v31 - 4));
            goto LABEL_8;
          }

          __break(1u);
          return;
        }

LABEL_8:
        v23(v11, v4);
        v24 = v32;
        v25 = sub_1004A5734();
        [v19 willChangeValueForKey:v25];

        v26 = sub_100373DA8(v24);
        v28 = v27;

        isa = sub_1004A4404().super.isa;
        sub_100014D40(v26, v28);
        [v19 setPrimitiveDataUsage:isa];

        v30 = sub_1004A5734();
        [v19 didChangeValueForKey:v30];

        return;
      }
    }
  }
}

uint64_t sub_10032AAF0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.Info(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032AE6C(a2, v7, type metadata accessor for PendingItem.Info);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v9 = a1[1];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (!v10)
      {
        a1[1] = v11;
        return result;
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    if (__OFADD__(*a1, 1))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    ++*a1;
    return sub_10032AED4(v7, type metadata accessor for PendingItem.Info);
  }

  return result;
}

NSString sub_10032ABEC()
{
  result = sub_1004A5734();
  qword_1005D9368 = result;
  return result;
}

void *sub_10032AC4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v7);
  v6 = v8;
  *a1 = v7;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_10032ACA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032AD7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10032ADC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10032ADE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10032AE14()
{
  v1 = v0[2];

  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10032AE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032AED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10032AF3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v77 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v74 - v12;
  v13 = objc_allocWithZone(NSFetchRequest);
  v14 = sub_1004A5734();
  v15 = [v13 initWithEntityName:v14];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004CEAA0;
  v17 = a3 >> 1;
  v18 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v19 = v16;
  v20 = _swiftEmptyArrayStorage;
  v80 = v7;
  if (!v18)
  {
    goto LABEL_11;
  }

  v83 = _swiftEmptyArrayStorage;
  sub_1004A6864();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v3 = v8;
  if (a2 <= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = a2;
  }

  v22 = v21 - a2;
  v8 = (a1 + 8 * a2);
  do
  {
    if (!v22)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v23 = *v8++;
    [objc_allocWithZone(NSNumber) initWithLongLong:v23];
    sub_1004A6814();
    v24 = v83[2];
    sub_1004A68A4();
    sub_1004A68B4();
    sub_1004A6834();
    --v22;
    --v18;
  }

  while (v18);
  v20 = v83;
  v8 = v3;
LABEL_11:
  *(v19 + 56) = sub_10000C9C0(&qword_1005D9450, &qword_1004F66F8);
  *(v19 + 32) = v20;
  v25 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v27 = [objc_opt_self() predicateWithFormat:v25 argumentArray:isa];

  [v15 appendPredicate:v27];
  v83 = 0;
  v28 = [v15 execute:&v83];
  v29 = v83;
  if (!v28)
  {
    v73 = v83;
    sub_1004A4274();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v30 = v28;
  _s7MessageCMa();
  v3 = sub_1004A5C14();
  v31 = v29;

  v74 = v15;
  if (v3 >> 62)
  {
LABEL_39:
    v32 = sub_1004A6A34();
    if (!v32)
    {
      goto LABEL_40;
    }

LABEL_14:
    if (v32 >= 1)
    {
      v33 = 0;
      v82 = v3 & 0xC000000000000001;
      v75 = v3;
      v76 = (v8 + 2);
      p_attr = (&stru_1005CAFF8 + 8);
      v79 = (v8 + 1);
      while (1)
      {
        if (v82)
        {
          v42 = sub_1004A6794();
        }

        else
        {
          v42 = *(v3 + 8 * v33 + 32);
        }

        v43 = v42;
        v44 = sub_1004A5734();
        [v43 willChangeValueForKey:v44];

        v45 = [objc_allocWithZone(NSNumber) initWithBool:1];
        [v43 setPrimitiveNeedToRedonate:v45];

        v46 = sub_1004A5734();
        [v43 p_attr[425]];

        v47 = [v43 mailbox];
        if (!v47)
        {

          goto LABEL_17;
        }

        v48 = v47;
        v49 = sub_1004A5734();
        [v48 willAccessValueForKey:v49];

        v50 = [v48 primitiveAccount];
        if (!v50)
        {
          goto LABEL_27;
        }

        v51 = v50;
        v52 = sub_1004A5764();
        v54 = v53;

        v55 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (!v55)
        {
          break;
        }

LABEL_28:
        v56 = sub_1004A5734();
        [v48 didAccessValueForKey:v56];

        if (v54)
        {
          v57 = v32;
          v58 = *(v78 + 16);
          v59 = sub_1003070C0(v52, v54);

          v83 = sub_10033A6CC();
          v60 = v81;
          sub_1004A44D4();
          v61 = v77;
          v8 = v80;
          (*v76)(v77, v60, v80);
          sub_1004A4464();
          v63 = round(v62 / 21600.0);
          v3 = *v79;
          (*v79)(v61, v8);
          if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v63 <= -9.22337204e18)
            {
              goto LABEL_36;
            }

            if (v63 >= 9.22337204e18)
            {
              goto LABEL_37;
            }

            sub_1003758D4(v63, &v83);
            v8 = v80;
            v60 = v81;
          }

          (v3)(v60, v8);
          v35 = v83;
          v36 = sub_1004A5734();
          [v59 willChangeValueForKey:v36];

          v37 = sub_100373DA8(v35);
          v39 = v38;

          v40 = sub_1004A4404().super.isa;
          sub_100014D40(v37, v39);
          [v59 setPrimitiveDataUsage:v40];

          v41 = sub_1004A5734();
          p_attr = &stru_1005CAFF8.attr;
          [v59 didChangeValueForKey:v41];

          v32 = v57;
          v3 = v75;
        }

        else
        {

          p_attr = (&stru_1005CAFF8 + 8);
        }

LABEL_17:
        if (v32 == ++v33)
        {
          goto LABEL_40;
        }
      }

LABEL_27:
      v52 = 0;
      v54 = 0;
      goto LABEL_28;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v32 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32)
  {
    goto LABEL_14;
  }

LABEL_40:

  v64 = *(v78 + 24);
  v65 = static MonotonicTime.now()();
  v66 = v64[2];
  if (![v66 hasChanges])
  {
    goto LABEL_47;
  }

  v67 = sub_100309840();
  v68 = v74;
  if (v67)
  {
    goto LABEL_50;
  }

  v69 = v64[6];
  v70 = v65 - v69;
  if (v65 >= v69)
  {
    if (!__OFSUB__(v65, v69))
    {
      goto LABEL_49;
    }

LABEL_56:
    __break(1u);
  }

  if (__OFSUB__(v69, v65))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v70 = v65 - v69;
  if (__OFSUB__(0, v69 - v65))
  {
    __break(1u);
LABEL_47:

    return;
  }

LABEL_49:
  if (v70 / 1000000000.0 > 4.0)
  {
LABEL_50:
    if ([v66 hasChanges])
    {

      sub_100309C70(v71, v64);

      v72 = v64[7];
      v64[7] = 0;

      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_10032B7A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10032B7E4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_10032B874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(a5, a4))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = (((a3 - a2) & ~((a3 - a2) >> 63)) * 0x1C71C71C71C71C72uLL) >> 64;
  v6 = a3 / 3;
  if (a3 / 3 >= result)
  {
    v6 = result;
  }

  v7 = v5 >= v6;
  if (v5 < v6)
  {
    v6 = (((a3 - a2) & ~((a3 - a2) >> 63)) * 0x1C71C71C71C71C72uLL) >> 64;
  }

  v8 = v5 >= a3 / 12 || v7;
  if ((v8 & (a5 - a4 > 9000008)) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032B930(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v8 = sub_1004A4A74();
  v41 = *(v8 - 8);
  v9 = v41;
  v42 = v8;
  v10 = *(v41 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource) = 0;
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) = 0;
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext) = a2;
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_indexQueue) = a3;
  sub_10032DA68(a1, v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration, type metadata accessor for IndexUpdater.Configuration);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v37 = a1[2];
  v38 = v13;
  v16 = type metadata accessor for IndexUpdater.Configuration(0);
  v17 = *(v9 + 16);
  v18 = a1 + *(v16 + 20);
  v40 = v12;
  v17(v12, v18, v8);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = type metadata accessor for MessagesSource();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = 0;
  *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = 0;
  v24 = (v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  *v24 = 0;
  v24[1] = 0;
  *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
  v23[2] = a2;
  v17(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger, v12, v42);
  v25 = v37;
  v23[3] = v38;
  v23[4] = v14;
  v23[5] = v25;
  v23[6] = v15;
  v26 = (v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
  *v26 = sub_10032DC34;
  v26[1] = v19;
  v27 = type metadata accessor for MessagesSource.Observer();
  v28 = objc_allocWithZone(v27);
  swift_weakInit();
  swift_weakAssign();
  v43.receiver = v28;
  v43.super_class = v27;
  v29 = a2;

  swift_retain_n();

  v30 = objc_msgSendSuper2(&v43, "init");
  v31 = *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = v30;

  v32 = swift_allocObject();
  swift_weakInit();

  v33 = sub_100323BF4(sub_10032DC3C, v32);

  sub_10032DAD0(a1, type metadata accessor for IndexUpdater.Configuration);
  (*(v41 + 8))(v40, v42);

  v34 = *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken);
  *(v23 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = v33;

  swift_unknownObjectRelease();
  v35 = *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource) = v23;

  return v4;
}

uint64_t sub_10032BCE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10032BD3C();
  }

  return result;
}

uint64_t sub_10032BD3C()
{
  v1 = type metadata accessor for PendingItem(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v63 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for EnqueueableItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v62 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v66 = &v58 - v8;
  v68 = sub_10000C9C0(&qword_1005D95E0, &qword_1004F6860);
  i = *(v68 - 8);
  v9 = *(i + 64);
  __chkstk_darwin(v68);
  v58 = (&v58 - v10);
  v11 = sub_10000C9C0(&qword_1005D95E8, &qword_1004F6868);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v58 - v15);
  v61 = _s11QueuedItemsV4ItemVMa();
  v17 = *(v61 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v61);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v65 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_indexQueue);
  swift_beginAccess();
  v25 = v24[6];

  os_unfair_lock_lock((v25 + 48));
  v64 = v25;
  v26 = *(v25 + 16);
  v27 = v26[4];
  if (v26[2] >= v26[3] + v27)
  {
    v28 = v26[3] + v27;
  }

  else
  {
    v28 = v26[2];
  }

  v29 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v70 = *(v25 + 16);
  v71 = v27;
  v72 = v28;
  v73 = _swiftEmptySetSingleton;

  while (1)
  {
    if (v27 != v28)
    {
      goto LABEL_5;
    }

    if ((sub_100351DD0(v30) & 1) == 0)
    {
      break;
    }

    v26 = v70;
    v27 = v71;
LABEL_5:
    v71 = v27 + 1;
    sub_10032DA68(v26 + v29 + *(v17 + 72) * v27, v23, _s11QueuedItemsV4ItemVMa);
    sub_10036210C(&v69, *(v23 + 1));
    v30 = sub_10032DAD0(v23, _s11QueuedItemsV4ItemVMa);
    v28 = v72;
    ++v27;
  }

  v31 = v73;
  os_unfair_lock_unlock((v64 + 48));

  v32 = v65;
  sub_10032D494(v31, &v70);

  v34 = 0;
  v35 = v70;
  v60 = v32 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration;
  v64 = i + 56;
  v65 = v70;
  v36 = (i + 48);
  v37 = v70[2];
  for (i = v37; ; v37 = i)
  {
    v39 = v67;
    v38 = v68;
    if (v34 == v37)
    {
      v40 = 1;
      v34 = v37;
      v41 = v66;
      goto LABEL_15;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    v41 = v66;
    if (v34 >= v35[2])
    {
      goto LABEL_22;
    }

    v42 = *(type metadata accessor for IndexUpdater.Element(0) - 8);
    v43 = v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34;
    v44 = *(v38 + 48);
    v45 = v58;
    *v58 = v34;
    sub_10032DA68(v43, v45 + v44, type metadata accessor for IndexUpdater.Element);
    sub_100025FDC(v45, v39, &qword_1005D95E0, &qword_1004F6860);
    v40 = 0;
    ++v34;
LABEL_15:
    (*v64)(v39, v40, 1, v38);
    sub_100025FDC(v39, v16, &qword_1005D95E8, &qword_1004F6868);
    if ((*v36)(v16, 1, v38) == 1)
    {
    }

    v46 = *v16;
    v47 = v16 + *(v38 + 48);
    sub_10032DA68(v47, v41, type metadata accessor for EnqueueableItem);
    v48 = v41;
    v49 = *(v47 + *(type metadata accessor for IndexUpdater.Element(0) + 20));
    sub_10032DAD0(v47, type metadata accessor for IndexUpdater.Element);
    v50 = v24[5];
    os_unfair_lock_lock((v50 + 20));
    LOBYTE(v47) = *(v50 + 16);
    os_unfair_lock_unlock((v50 + 20));
    if (v47)
    {

      return sub_10032DAD0(v48, type metadata accessor for EnqueueableItem);
    }

    v51 = v62;
    sub_10032DA68(v48, v62, type metadata accessor for EnqueueableItem);
    v52 = v24[7];
    v24[7] = v52 + 1;
    v53 = v63;
    sub_100341B64(v51, v52, v63);
    sub_10032DA68(v53, v21, type metadata accessor for PendingItem);
    *&v21[*(v61 + 20)] = v49;
    v54 = v49;
    sub_100328AA0(v21);

    sub_10032DAD0(v21, _s11QueuedItemsV4ItemVMa);
    sub_10032DAD0(v48, type metadata accessor for EnqueueableItem);
    v55 = *v53;
    sub_10032DAD0(v53, type metadata accessor for PendingItem);
    v56 = v60 + *(type metadata accessor for IndexUpdater.Configuration(0) + 24);
    v57 = *(v56 + 8);
    result = (*v56)(v46, v55);
    v35 = v65;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10032C42C()
{
  sub_10032DAD0(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration, type metadata accessor for IndexUpdater.Configuration);

  v1 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_indexQueue);

  v2 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10032C4FC()
{
  result = type metadata accessor for IndexUpdater.Configuration(319);
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

uint64_t sub_10032C600(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004A4A74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10032C6C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004A4A74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10032C764()
{
  result = sub_1004A4A74();
  if (v1 <= 0x3F)
  {
    result = sub_100116C9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10032C804()
{
  result = qword_1005D95D8;
  if (!qword_1005D95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D95D8);
  }

  return result;
}

id sub_10032C858@<X0>(void *a1@<X0>, id (**a2)()@<X8>)
{
  v35 = a1;
  v32 = a2;
  v3 = sub_1004A4A74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  sub_1004A4A64();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004D3930;
  v13 = v12;
  v33 = v12;
  v14 = objc_allocWithZone(NSSortDescriptor);
  v15 = sub_1004A5734();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  v17 = type metadata accessor for IndexUpdater.Configuration(0);
  v18 = *(v4 + 16);
  v18(a2 + v17[5], v11, v3);
  v18(v9, v11, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v31 = swift_allocObject();
  v20 = *(v4 + 32);
  v20(v31 + v19, v9, v3);
  v21 = v34;
  v20(v34, v11, v3);
  v22 = swift_allocObject();
  v20(v22 + v19, v21, v3);
  v23 = v35;
  *(v22 + ((v19 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v25 = v31;
  v24 = v32;
  *v32 = sub_10032D044;
  v24[1] = 0;
  v24[2] = 971;
  v24[3] = v33;
  v26 = (v24 + v17[6]);
  *v26 = sub_10032DC48;
  v26[1] = v25;
  v27 = (v24 + v17[7]);
  *v27 = sub_10032D1B8;
  v27[1] = 0;
  v28 = (v24 + v17[8]);
  *v28 = sub_10032DCF0;
  v28[1] = v22;

  return v23;
}

id sub_10032CBA8(uint64_t a1)
{
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004CEAA0;
  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  *(v2 + 56) = sub_10032E2E8();
  *(v2 + 32) = v3;
  v4 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:isa];

  return v6;
}

id sub_10032CCA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_10033A4C8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    v6 = sub_1004A5734();
    [a1 willAccessValueForKey:v6];

    v7 = [a1 primitiveAttributeChange];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 longLongValue];

      v10 = sub_1004A5734();
      [a1 didAccessValueForKey:v10];

      if ((v9 & 0xFFFFFFFFFFFFFF01) == 1)
      {
        v11 = a2 + *(type metadata accessor for EnqueueableItem(0) + 20);
        *v11 = sub_10033AF38();
        v11[8] = v12 & 1;
        type metadata accessor for PendingItem.Info(0);
        swift_storeEnumTagMultiPayload();
        *a2 = v5;
        v13 = type metadata accessor for IndexUpdater.Element(0);
        *(a2 + *(v13 + 20)) = a1;
        (*(*(v13 - 8) + 56))(a2, 0, 1);

        return a1;
      }
    }

    else
    {
      v15 = sub_1004A5734();
      [a1 didAccessValueForKey:v15];
    }
  }

  v16 = type metadata accessor for IndexUpdater.Element(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, 1, 1, v16);
}

uint64_t sub_10032CED0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PendingItem.Info(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10033A4C8();
  v9 = v8;
  v10 = sub_1004A4A54();
  v11 = sub_1004A6014();
  if (os_log_type_enabled(v10, v11))
  {
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "Message %llu needs updating, but doesn’t have any update.", v13, 0xCu);
  }

  *v6 = sub_10033AF38();
  v6[8] = v14 & 1;
  swift_storeEnumTagMultiPayload();
  sub_10032A0F0(v6, a2);
  return sub_10032DAD0(v6, type metadata accessor for PendingItem.Info);
}

id sub_10032D044()
{
  v0 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;
  v2 = [objc_opt_self() predicateWithFormat:v0 argumentArray:isa];

  return v2;
}

void sub_10032D0DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  oslog = sub_1004A4A54();
  v7 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      return;
    }

    *(v8 + 4) = a1 + 1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v7, a4, v8, 0x16u);
  }
}

id sub_10032D1B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_10033A4C8();
  if (v4)
  {
    v5 = type metadata accessor for IndexUpdater.Element(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }

  else
  {
    v8 = v3;
    v9 = *(type metadata accessor for EnqueueableItem(0) + 20);
    type metadata accessor for PendingItem.Info(0);
    swift_storeEnumTagMultiPayload();
    *a2 = v8;
    v10 = type metadata accessor for IndexUpdater.Element(0);
    *(a2 + *(v10 + 20)) = a1;
    (*(*(v10 - 8) + 56))(a2, 0, 1);

    return a1;
  }
}

id sub_10032D2E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1004A4A54();
  v7 = sub_1004A6014();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Message tombstone has no Spotlight ID.", v8, 2u);
  }

  return [a4 deleteObject:a1];
}

uint64_t sub_10032D3A8(uint64_t result)
{
  if ((*(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) = 1;
    v1 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
    if (v1)
    {
      if ((*(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 1;
        v3 = *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
        v2 = *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange + 8);

        v3(v4);
      }

      return sub_10032BD3C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10032D44C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) == 1)
  {
    *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) = 0;
    v1 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
    if (v1)
    {
      if (*(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) == 1)
      {
        *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10032D494(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000C9C0(&qword_1005D95F0, &qword_1004F6870);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v52 - v8;
  v59 = type metadata accessor for IndexUpdater.Element(0);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  v10 = __chkstk_darwin(v59);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v54 = &v52 - v13;
  __chkstk_darwin(v12);
  v58 = &v52 - v14;
  v15 = *(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = sub_1003344C4();
  v53 = v17;
  v18 = *(v15 + 40);

  if (v18 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v52 = a2;
  v19 = v16;

  v61 = v19;
  v64 = [v19 count];
  if (!v18)
  {
    v62 = _swiftEmptyArrayStorage;
LABEL_27:
    v51 = v61;

    *v52 = v62;
    return;
  }

  v20 = 0;
  v21 = v3 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration;
  v22 = 0xEB00000000444974;
  v23 = a1 + 56;
  v57 = (v56 + 48);
  v62 = _swiftEmptyArrayStorage;
LABEL_6:
  v63 = v18;
  v26 = v61;
  if (v20 >= v64)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v27 = [v26 objectAtIndexedSubscript:v20];
    sub_1004A64E4();
    swift_unknownObjectRelease();
    _s7MessageCMa();
    if (!swift_dynamicCast())
    {
      break;
    }

    v28 = v65;
    v29 = sub_1004A5734();
    [v28 willAccessValueForKey:v29];

    v30 = [v28 primitiveSpotlightID];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 longLongValue];
    }

    else
    {
      v32 = 0;
    }

    ++v20;
    v33 = v22;
    v34 = sub_1004A5734();
    [v28 didAccessValueForKey:v34];

    if (v31)
    {
      if (!*(a1 + 16) || (v35 = *(a1 + 40), sub_1004A6E94(), sub_1004A6EF4(v32), v36 = sub_1004A6F14(), v37 = -1 << *(a1 + 32), v38 = v36 & ~v37, ((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0))
      {
LABEL_19:
        v40 = type metadata accessor for IndexUpdater.Configuration(0);
        v41 = v21 + *(v40 + 28);
        v42 = *(v41 + 8);
        v43 = v60;
        (*v41)(v28);
        if ((*v57)(v43, 1, v59) == 1)
        {
          sub_10032DB30(v43);
          v24 = v21 + *(v40 + 32);
          v25 = *(v24 + 8);
          (*v24)(v28, v53);

          v22 = v33;
          v18 = v63 - 1;
          if (v63 == 1)
          {
            goto LABEL_27;
          }

          goto LABEL_6;
        }

        v44 = v55;
        sub_10032DB98(v43, v55);
        v45 = v44;
        v46 = v54;
        sub_10032DB98(v45, v54);
        sub_10032DB98(v46, v58);
        v22 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_10035D8A4(0, v62[2] + 1, 1, v62);
        }

        v47 = v63;
        v49 = v62[2];
        v48 = v62[3];
        if (v49 >= v48 >> 1)
        {
          v62 = sub_10035D8A4(v48 > 1, v49 + 1, 1, v62);
        }

        v50 = v62;
        v62[2] = v49 + 1;
        sub_10032DB98(v58, v50 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v49);
        v18 = v47 - 1;
        if (v18)
        {
          goto LABEL_6;
        }

        goto LABEL_27;
      }

      v39 = ~v37;
      while (*(*(a1 + 48) + 8 * v38) != v32)
      {
        v38 = (v38 + 1) & v39;
        if (((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    v22 = v33;
    if (v20 >= v64)
    {
      goto LABEL_27;
    }
  }

LABEL_30:

  sub_1004A69A4();
  __break(1u);
}

uint64_t sub_10032DA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032DAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032DB30(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D95F0, &qword_1004F6870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032DB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexUpdater.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032DBFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032DC54()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_10032DCF0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1004A4A74() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10032D2E4(a1, a2, v2 + v6, v7);
}

uint64_t sub_10032DD9C(void *a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = sub_1004A4A74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for IndexUpdater.Configuration(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A4A64();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004D3930;
  v18 = v17;
  v46 = v17;
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = sub_1004A5734();
  v21 = [v19 initWithKey:v20 ascending:1];

  *(v18 + 32) = v21;
  v22 = *(v3 + 16);
  v23 = v16 + v13[7];
  v24 = v11;
  v45 = v11;
  v22(v23, v11, v2);
  v25 = v9;
  v26 = v9;
  v27 = v2;
  v22(v25, v24, v2);
  v28 = v3;
  v29 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v30 = swift_allocObject();
  v31 = *(v28 + 32);
  v31(v30 + v29, v26, v27);
  v32 = v47;
  v31(v47, v45, v27);
  v33 = swift_allocObject();
  v31(v33 + v29, v32, v27);
  *v16 = sub_10032CBA8;
  v16[1] = 0;
  v16[2] = 353;
  v16[3] = v46;
  v34 = (v16 + v13[8]);
  *v34 = sub_10032E158;
  v34[1] = v30;
  v35 = (v16 + v13[9]);
  *v35 = sub_10032CCA8;
  v35[1] = 0;
  v36 = (v16 + v13[10]);
  *v36 = sub_10032E268;
  v36[1] = v33;
  v37 = type metadata accessor for IndexUpdater(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v41 = v48;
  v42 = v49;

  sub_10032B930(v16, v41, v42);
  return v40;
}

uint64_t sub_10032E1E0()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10032E268(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1004A4A74() - 8) + 80);

  return sub_10032CED0(a1, a2);
}

unint64_t sub_10032E2E8()
{
  result = qword_1005D51B0;
  if (!qword_1005D51B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D51B0);
  }

  return result;
}

uint64_t sub_10032E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnqueueableItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10032E418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EnqueueableItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10032E4D0()
{
  result = type metadata accessor for EnqueueableItem(319);
  if (v1 <= 0x3F)
  {
    result = _s7MessageCMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10032E574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10032E5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10032E690()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DE2D0);
  sub_1001C203C(v0, qword_1005DE2D0);
  return sub_1004A4A64();
}

uint64_t sub_10032E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10032E7F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void *sub_10032E8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_100091A08((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100020944(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
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

uint64_t sub_10032EB08(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  v8 = [v4 registeredObjects];
  sub_1003306DC();
  sub_100309DBC();
  v9 = sub_1004A5D44();

  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_1004A5DB4();
    v9 = v84[14];
    v10 = v84[15];
    v11 = v84[16];
    v12 = v84[17];
    v13 = v84[18];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(v9 + 56));
  }

  v17 = (v11 + 64) >> 6;
  v78 = (a3 + 32);
  v79 = a4 | (a4 << 32);
  v82 = v9;
  while (1)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      v18 = v12;
      v19 = v13;
      if (!v13)
      {
        while (1)
        {
          v12 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v12 >= v17)
          {
            goto LABEL_60;
          }

          v19 = *(v10 + 8 * v12);
          ++v18;
          if (v19)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:

        v59 = v80;
LABEL_71:
        sub_100020D08();
        return v59;
      }

LABEL_15:
      v20 = (v19 - 1) & v19;
      v21 = *(*(v9 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v21)
      {
        break;
      }

      goto LABEL_19;
    }

    if (!sub_1004A6604())
    {
      break;
    }

    swift_dynamicCast();
    v21 = v84[0];
    v20 = v13;
    if (!v84[0])
    {
      break;
    }

LABEL_19:
    v83 = v20;
    if (([v21 isFault] & 1) == 0 && (objc_msgSend(v21, "isDeleted") & 1) == 0)
    {
      _s7MailboxCMa();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = sub_1004A5734();
        [v23 willAccessValueForKey:v24];

        v80 = v23;
        v25 = [v23 primitiveName];
        if (v25)
        {
          v76 = a4;
          v77 = a3;
          v26 = v25;
          v27 = sub_1004A6294();
          v28 = sub_1004A62A4();
          v29 = sub_1004A6294();
          v30 = sub_1004A62A4();
          if (v27 < v29 || v30 < v27)
          {
            goto LABEL_77;
          }

          v31 = sub_1004A6294();
          v32 = sub_1004A62A4();
          if (v28 < v31 || v32 < v28)
          {
            goto LABEL_78;
          }

          v33 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            goto LABEL_79;
          }

          if (v33)
          {
            v74 = a2;
            if (v33 < 1)
            {
              sub_1004A6294();
              __break(1u);
              goto LABEL_82;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v34 = swift_allocObject();
            v35 = j__malloc_size(v34);
            v34[2] = v33;
            v34[3] = 2 * v35 - 64;
            v75 = v34;
            v36 = sub_1004A6294();
            if (v36 == sub_1004A62A4())
            {
              goto LABEL_80;
            }

            v37 = v75 + 4;
            v38 = ~v27 + v28;
            while (1)
            {
              v39 = sub_1004A62B4();
              v40 = sub_1004A6294();
              v41 = sub_1004A62A4();
              if (v36 < v40 || v36 >= v41)
              {
                goto LABEL_69;
              }

              *v37 = v39;
              if (!v38)
              {
                break;
              }

              ++v37;
              ++v36;
              --v38;
              if (v36 == sub_1004A62A4())
              {
                goto LABEL_80;
              }
            }

            a3 = v77;
            a2 = v74;
            v42 = v75;
          }

          else
          {
            v42 = _swiftEmptyArrayStorage;
            a3 = v77;
          }

          a4 = v76;

          v45 = MailboxName.init(_:)(v42);
          rawValue = v45.bytes._rawValue;

          v44 = v45._hashValue._value | (v45._hashValue._value << 32);
        }

        else
        {
          rawValue = 0;
          v44 = 0;
        }

        v46 = sub_1004A5734();
        [v80 didAccessValueForKey:v46];

        if (rawValue)
        {
          if (v44 != v79)
          {
            goto LABEL_8;
          }

          v47 = *(rawValue + 2);
          if (v47 != *(a3 + 2))
          {
            goto LABEL_8;
          }

          if (v47 && rawValue != a3)
          {
            v48 = (rawValue + 32);
            v49 = v78;
            while (*v48 == *v49)
            {
              ++v48;
              ++v49;
              if (!--v47)
              {
                goto LABEL_49;
              }
            }

LABEL_8:

            goto LABEL_9;
          }

LABEL_49:

          v50 = sub_1004A5734();
          [v80 willAccessValueForKey:v50];

          v51 = [v80 primitiveAccount];
          if (v51)
          {
            v52 = v51;
            v53 = sub_1004A5764();
            v55 = v54;

            v56 = HIBYTE(v55) & 0xF;
            if ((v55 & 0x2000000000000000) == 0)
            {
              v56 = v53 & 0xFFFFFFFFFFFFLL;
            }

            if (!v56)
            {

              goto LABEL_54;
            }
          }

          else
          {
LABEL_54:
            v53 = 0;
            v55 = 0;
          }

          v57 = sub_1004A5734();
          [v80 didAccessValueForKey:v57];

          if (v55)
          {
            if (v53 == a1 && v55 == a2)
            {
              goto LABEL_70;
            }

            v58 = sub_1004A6D34();

            v59 = v80;
            if (v58)
            {
              goto LABEL_71;
            }
          }
        }
      }
    }

LABEL_9:

    v9 = v82;
    v13 = v83;
  }

LABEL_60:
  sub_100020D08();
  v60 = objc_allocWithZone(NSFetchRequest);
  v61 = sub_1004A5734();
  v26 = [v60 initWithEntityName:v61];

  [v26 setReturnsObjectsAsFaults:0];
  sub_10000C9C0(&qword_1005D97B0, &unk_1004F6888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1004CEAA0;
  *(v63 + 32) = a3;
  v64 = v63 + 32;
  *(v63 + 40) = a4;
  v65 = sub_100092FD4(v63);
  swift_setDeallocating();

  sub_10009DA94(v64);
  *(inited + 48) = v65;
  v66 = sub_100350FA8(inited);
  swift_setDeallocating();
  sub_100025F40(inited + 32, &qword_1005D97B8, &qword_1004F6898);
  sub_10031E5F0(v66);

  v84[0] = 0;
  v67 = [v26 execute:v84];
  v13 = v84[0];
  if (v67)
  {
    v68 = v67;
    _s7MailboxCMa();
    v69 = sub_1004A5C14();
    v70 = v13;

    if (v69 >> 62)
    {
      if (!sub_1004A6A34())
      {
        goto LABEL_73;
      }

LABEL_63:
      if ((v69 & 0xC000000000000001) != 0)
      {
        v71 = sub_1004A6794();
      }

      else
      {
        if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:

          __break(1u);
        }

        v71 = *(v69 + 32);
      }

      v59 = v71;
    }

    else
    {
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

LABEL_73:

      return 0;
    }

    return v59;
  }

LABEL_82:
  v73 = v13;
  sub_1004A4274();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10032F358(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1004A4374();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_1001E194C(v15);
  v18 = v17;

  (*(v11 + 56))(v6, 1, 1, v10);
  sub_1004A42D4();
  sub_100014D40(v16, v18);
  sub_100025F40(v6, &qword_1005D5FC8, &unk_1004E9940);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100025F40(v9, &qword_1005D5FC8, &unk_1004E9940);
    goto LABEL_13;
  }

  (*(v11 + 32))(v14, v9, v10);
  v19 = v36;
  v20 = [v36 persistentStoreCoordinator];
  if (!v20)
  {
    goto LABEL_12;
  }

  v22 = v20;
  sub_1004A42F4(v21);
  v24 = v23;
  v25 = [v22 managedObjectIDForURIRepresentation:v23];

  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = [v19 objectRegisteredForID:v25];
  if (!v26)
  {
    v38 = 0;
    v28 = [v19 existingObjectWithID:v25 error:&v38];
    if (v28)
    {
      v27 = v28;
      v29 = *(v11 + 8);
      v30 = v38;
      v29(v14, v10);

      goto LABEL_9;
    }

    v32 = v38;
    sub_1004A4274();

    swift_willThrow();

LABEL_12:
    (*(v11 + 8))(v14, v10);
    goto LABEL_13;
  }

  v27 = v26;

  (*(v11 + 8))(v14, v10);
LABEL_9:
  _s7MailboxCMa();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

LABEL_13:
  sub_100330688();
  swift_allocError();
  v33 = v37;
  *v34 = a1;
  v34[1] = v33;
  swift_willThrow();
}

char *sub_10032F72C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, IMAP2Persistence::OpaqueMailboxID *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_7:
    v10 = OpaqueMailboxID.init(rawValue:)(v6);
    result = v10.rawValue._rawValue;
    *a3 = v10;
    return result;
  }

  result = sub_10015BEAC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = result;
      memmove(result + 32, a1, v5);
      v6 = v9;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10032F7C4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_10032FC58(a1);
  v3 = v2;
  v46 = _swiftEmptySetSingleton;
  if (v2 >> 62)
  {
LABEL_48:
    v4 = sub_1004A6A34();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_49:
    v34 = _swiftEmptySetSingleton;
LABEL_50:
    if (v34[2] <= *(v1 + 16) >> 3)
    {
      v45 = v1;

      sub_10031783C(v34);

      v35 = v45;
      if (v45[2])
      {
        goto LABEL_52;
      }
    }

    else
    {

      v35 = sub_100317EFC(v34, v1);

      if (v35[2])
      {
LABEL_52:
        v36 = sub_10033087C(v35);

        v45 = v3;
        sub_1003327AC(v36);
        return v45;
      }
    }

    return v3;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_49;
  }

LABEL_3:
  v38 = v1;
  v39 = v3;
  v5 = 0;
  v1 = v3 & 0xC000000000000001;
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  v44 = v3 + 32;
  p_attr = &stru_1005CAFF8.attr;
  v40 = v4;
  v41 = v3 & 0xFFFFFFFFFFFFFF8;
  v42 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v1)
    {
      v8 = sub_1004A6794();
    }

    else
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_44;
      }

      v8 = *(v44 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_43;
    }

    v11 = sub_1004A5734();
    [v9 p_attr[434]];

    v12 = [v9 primitiveAccount];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v3 = sub_1004A5764();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {

LABEL_15:
      v3 = 0;
      v15 = 0;
    }

    v17 = sub_1004A5734();
    [v9 didAccessValueForKey:v17];

    if (v15)
    {
      break;
    }

LABEL_5:
    if (v5 == v4)
    {
      v34 = v46;
      v1 = v38;
      v3 = v39;
      goto LABEL_50;
    }
  }

  v43 = v3;
  v18 = sub_1004A5734();
  [v9 p_attr[434]];

  v19 = [v9 primitiveName];
  if (!v19)
  {
    rawValue = 0;
    v3 = 0;
LABEL_36:
    v33 = sub_1004A5734();
    [v9 didAccessValueForKey:v33];

    if (rawValue)
    {
      sub_100362130(&v45, v43, v15, rawValue, v3);
    }

    else
    {
    }

    p_attr = (&stru_1005CAFF8 + 8);
    goto LABEL_5;
  }

  v20 = v19;
  v21 = sub_1004A6294();
  v22 = sub_1004A62A4();
  v3 = sub_1004A6294();
  v23 = sub_1004A62A4();
  if (v21 < v3 || v23 < v21)
  {
    goto LABEL_45;
  }

  v3 = sub_1004A6294();
  v24 = sub_1004A62A4();
  if (v22 < v3 || v24 < v22)
  {
    goto LABEL_46;
  }

  v1 = v22 - v21;
  if (__OFSUB__(v22, v21))
  {
    goto LABEL_47;
  }

  if (!v1)
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_35:
    v6 = v41;

    v32 = MailboxName.init(_:)(v3);
    rawValue = v32.bytes._rawValue;
    v3 = *&v32._hashValue._value;

    v1 = v42;
    goto LABEL_36;
  }

  if (v1 >= 1)
  {
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v3 = swift_allocObject();
    v25 = j__malloc_size(v3);
    *(v3 + 16) = v1;
    *(v3 + 24) = 2 * v25 - 64;
    v26 = sub_1004A6294();
    if (v26 != sub_1004A62A4())
    {
      v1 = v3 + 32;
      v27 = ~v21 + v22;
      while (1)
      {
        v28 = sub_1004A62B4();
        v29 = sub_1004A6294();
        v30 = sub_1004A62A4();
        if (v26 < v29 || v26 >= v30)
        {
          break;
        }

        *v1 = v28;
        if (!v27)
        {
          v4 = v40;
          goto LABEL_35;
        }

        ++v1;
        ++v26;
        --v27;
        if (v26 == sub_1004A62A4())
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_56:

    __break(1u);
  }

  result = sub_1004A6294();
  __break(1u);
  return result;
}

void *sub_10032FC58(uint64_t a1)
{
  v2 = [v1 registeredObjects];
  v3 = sub_1003306DC();
  sub_100309DBC();
  v4 = sub_1004A5D44();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1004A6594();
    sub_1004A5DB4();
    v4 = v62;
    v5 = v63;
    v6 = v64;
    v7 = v65;
    v8 = v66;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  p_attr = &stru_1005CAFF8.attr;
LABEL_8:
  v14 = v7;
  while (1)
  {
    while (1)
    {
      if (v4 < 0)
      {
        if (!sub_1004A6604() || (swift_dynamicCast(), v18 = v61, v7 = v14, v17 = v8, !v61))
        {
LABEL_56:
          sub_100020D08();

          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v15 = v14;
        v16 = v8;
        v7 = v14;
        if (!v8)
        {
          while (1)
          {
            v7 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_56;
            }

            v16 = *(v5 + 8 * v7);
            ++v15;
            if (v16)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

LABEL_15:
        v17 = (v16 - 1) & v16;
        v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v18)
        {
          goto LABEL_56;
        }
      }

      if (![v18 p_attr[499]] && !objc_msgSend(v18, "isDeleted"))
      {
        _s7MailboxCMa();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          break;
        }
      }

      v14 = v7;
      v8 = v17;
    }

    v20 = v19;
    v21 = sub_1004A5734();
    [v20 willAccessValueForKey:v21];

    v22 = [v20 primitiveName];
    v59 = v4;
    v60 = v3;
    v58 = v17;
    if (v22)
    {
      break;
    }

    rawValue = 0;
    value = 0;
LABEL_41:
    v42 = sub_1004A5734();
    [v20 didAccessValueForKey:v42];

    if (rawValue)
    {
      v43 = sub_1004A5734();
      [v20 willAccessValueForKey:v43];

      v44 = [v20 primitiveAccount];
      if (v44)
      {
        v45 = v44;
        v46 = sub_1004A5764();
        v48 = v47;

        v49 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v49 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          goto LABEL_48;
        }
      }

      v46 = 0;
      v48 = 0;
LABEL_48:
      v50 = sub_1004A5734();
      [v20 didAccessValueForKey:v50];

      if (v48)
      {
        v51 = sub_10030E12C(v46, v48, rawValue, value, a1);

        v4 = v59;
        if (v51)
        {
          v52 = v18;
          sub_1004A5BF4();
          v8 = v58;
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v53 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1004A5C44();
          }

          sub_1004A5C84();

          v3 = v60;
          p_attr = (&stru_1005CAFF8 + 8);
          goto LABEL_8;
        }

        v14 = v7;
        v8 = v58;
        v3 = v60;
        p_attr = (&stru_1005CAFF8 + 8);
      }

      else
      {

        v14 = v7;
        v8 = v58;
        v4 = v59;
        v3 = v60;
        p_attr = (&stru_1005CAFF8 + 8);
      }
    }

    else
    {

      v14 = v7;
      v8 = v58;
      p_attr = (&stru_1005CAFF8 + 8);
    }
  }

  p_attr = v22;
  v23 = sub_1004A6294();
  v24 = sub_1004A62A4();
  v25 = sub_1004A6294();
  v26 = sub_1004A62A4();
  if (v23 < v25 || v26 < v23)
  {
    goto LABEL_59;
  }

  v27 = sub_1004A6294();
  v28 = sub_1004A62A4();
  if (v24 < v27 || v28 < v24)
  {
    goto LABEL_60;
  }

  v29 = v24 - v23;
  if (__OFSUB__(v24, v23))
  {
    goto LABEL_61;
  }

  if (!v29)
  {
    v38 = _swiftEmptyArrayStorage;
    v4 = v59;
LABEL_40:

    v41 = MailboxName.init(_:)(v38);
    rawValue = v41.bytes._rawValue;
    value = v41._hashValue._value;

    v3 = v60;
    goto LABEL_41;
  }

  v55 = v20;
  if (v29 < 1)
  {
    goto LABEL_63;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v30 = swift_allocObject();
  v31 = j__malloc_size(v30);
  v30[2] = v29;
  v30[3] = 2 * v31 - 64;
  v56 = v30;
  v32 = sub_1004A6294();
  if (v32 != sub_1004A62A4())
  {
    v33 = v30 + 4;
    v34 = ~v23 + v24;
    while (1)
    {
      v35 = sub_1004A62B4();
      v36 = sub_1004A6294();
      v37 = sub_1004A62A4();
      if (v32 < v36 || v32 >= v37)
      {
        break;
      }

      *v33 = v35;
      if (!v34)
      {
        v4 = v59;
        v20 = v55;
        v38 = v56;
        goto LABEL_40;
      }

      ++v33;
      ++v32;
      --v34;
      if (v32 == sub_1004A62A4())
      {
        goto LABEL_62;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

LABEL_62:

  __break(1u);
LABEL_63:
  result = sub_1004A6294();
  __break(1u);
  return result;
}

uint64_t sub_100330258(uint64_t a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v4 = [v2 initWithEntityName:v3];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004CEAA0;
  v6 = sub_10032E8E0(a1);
  *(v5 + 56) = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  *(v5 + 32) = v6;
  v7 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v9 = [objc_opt_self() predicateWithFormat:v7 argumentArray:isa];

  [v4 setPredicate:v9];
  [v4 setReturnsObjectsAsFaults:0];
  v17[0] = 0;
  v10 = [v4 execute:v17];
  v11 = v17[0];
  if (v10)
  {
    v12 = v10;
    _s7MailboxCMa();
    v13 = sub_1004A5C14();
    v14 = v11;

    return v13;
  }

  else
  {
    v16 = v17[0];
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_100330494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D97C0, &qword_1004F68A0);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1004A5764();
      sub_1004A6E94();
      v29 = v7;
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1004A6F14();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1004A5764();
        v20 = v19;
        if (v18 == sub_1004A5764() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1004A6D34();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100330688()
{
  result = qword_1005D97A8;
  if (!qword_1005D97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D97A8);
  }

  return result;
}

unint64_t sub_1003306DC()
{
  result = qword_1005D8A10;
  if (!qword_1005D8A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D8A10);
  }

  return result;
}

uint64_t sub_100330728(uint64_t a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v4 = [v2 initWithEntityName:v3];

  [v4 setReturnsObjectsAsFaults:0];
  sub_10031E5F0(a1);
  v12 = 0;
  v5 = [v4 execute:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5;
    _s7MailboxCMa();
    v8 = sub_1004A5C14();
    v9 = v6;

    return v8;
  }

  else
  {
    v11 = v12;
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10033087C(uint64_t a1)
{
  v2 = sub_100350FA8(_swiftEmptyArrayStorage);
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a1;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v12 = *(v31 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v6))));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v32 = *(v12 + 24);

    v33 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v2;
    v17 = sub_10035E1B0(v14, v13);
    v19 = v2[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_23;
    }

    v23 = v18;
    if (v2[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_100361370();
        v17 = v28;
        v2 = v34;
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_10035F734(v22, isUniquelyReferenced_nonNull_native);
      v2 = v34;
      v17 = sub_10035E1B0(v14, v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_25;
      }
    }

    if (v23)
    {
      goto LABEL_4;
    }

LABEL_16:
    v2[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v2[6] + 16 * v17);
    *v25 = v14;
    v25[1] = v13;
    *(v2[7] + 8 * v17) = _swiftEmptySetSingleton;
    v26 = v2[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_24;
    }

    v2[2] = v27;
    v9 = v17;

    v17 = v9;
LABEL_4:
    v6 &= v6 - 1;
    v10 = v2[7] + 8 * v17;
    sub_100088220(&v34, v33, v32);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v29 = sub_100330728(v2);

      return v29;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100330AF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100330B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_100330BD4(uint64_t a1, int a2, unint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  v64 = a4;
  v65 = a6;
  v61 = a5;
  v66 = a2;
  v67 = a1;
  v63 = type metadata accessor for MessageBeingDownloaded(0);
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v63);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v51 - v12;
  __chkstk_darwin(v13);
  v15 = (&v51 - v14);
  __chkstk_darwin(v16);
  v53 = &v51 - v17;
  __chkstk_darwin(v18);
  v57 = &v51 - v19;
  v20 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v58 = &v51 - v25;
  __chkstk_darwin(v26);
  v59 = &v51 - v27;
  v29 = __chkstk_darwin(v28);
  v60 = &v51 - v30;
  v56 = a3;
  v31 = *a3;
  v32 = *(*a3 + 16);
  if (!v32)
  {
LABEL_12:
    v37 = v60;
    v41 = v63;
    (*(v8 + 56))(v60, 1, 1, v63, v29);
    v15 = v65;
    v42 = v62;
    sub_100357308(v37, v64, v61, v65);
    if (v42)
    {
LABEL_13:
      sub_100025F40(v37, &qword_1005D97C8, &unk_1004F6A70);

      return;
    }

    v43 = v59;
    sub_100331930(v37, v59);
    if ((*(v8 + 48))(v43, 1, v41) == 1)
    {
      sub_100025F40(v37, &qword_1005D97C8, &unk_1004F6A70);
      sub_100025F40(v43, &qword_1005D97C8, &unk_1004F6A70);
LABEL_26:

      goto LABEL_27;
    }

    v33 = v57;
    sub_1003319A0(v43, v57, type metadata accessor for MessageBeingDownloaded);
    if (*v33 != v67 || *(v33 + 16) != v66 || (v44 = *(v33 + 8), v45 = sub_10033A5E0(), (v45 & 0x100000000) != 0) || v45 != v66)
    {
      sub_100025F40(v60, &qword_1005D97C8, &unk_1004F6A70);
      v49 = v33;
LABEL_25:
      sub_1003318D0(v49, type metadata accessor for MessageBeingDownloaded);
      goto LABEL_26;
    }

    sub_100331868(v33, v53, type metadata accessor for MessageBeingDownloaded);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_21:
      v46 = v56;
      v48 = v31[2];
      v47 = v31[3];
      if (v48 >= v47 >> 1)
      {
        v31 = sub_10035D8CC(v47 > 1, v48 + 1, 1, v31);
      }

      sub_100025F40(v60, &qword_1005D97C8, &unk_1004F6A70);
      v31[2] = v48 + 1;
      sub_1003319A0(v53, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v48, type metadata accessor for MessageBeingDownloaded);
      *v46 = v31;
      v49 = v33;
      goto LABEL_25;
    }

LABEL_37:
    v31 = sub_10035D8CC(0, v31[2] + 1, 1, v31);
    goto LABEL_21;
  }

  v33 = 0;
  v52 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v34 = v31 + v52;
  while (1)
  {
    if (v33 >= v31[2])
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v6 = sub_1003364E0(v6);
      goto LABEL_31;
    }

    v6 = v31;
    v31 = v8;
    a3 = *(v8 + 72) * v33;
    sub_100331868(&v34[a3], v15, type metadata accessor for MessageBeingDownloaded);
    if (*v15 == v67)
    {
      break;
    }

    sub_1003318D0(v15, type metadata accessor for MessageBeingDownloaded);
LABEL_4:
    ++v33;
    v8 = v31;
    v31 = v6;
    if (v32 == v33)
    {
      goto LABEL_12;
    }
  }

  v8 = v23;
  v35 = v15[4];
  sub_1003318D0(v15, type metadata accessor for MessageBeingDownloaded);
  v36 = v35 == v66;
  v23 = v8;
  if (!v36)
  {
    goto LABEL_4;
  }

  if (v33 >= v6[2])
  {
    goto LABEL_34;
  }

  v37 = v58;
  sub_100331868(&v34[a3], v58, type metadata accessor for MessageBeingDownloaded);
  v38 = v31;
  v39 = v31[7];
  v31 = v63;
  v39(v37, 0, 1, v63);
  v15 = v65;
  v40 = v62;
  sub_100357308(v37, v64, v61, v65);
  v67 = v40;
  if (v40)
  {
    goto LABEL_13;
  }

  sub_100331930(v37, v8);
  if ((v38[6])(v8, 1, v31) == 1)
  {
    sub_100025F40(v8, &qword_1005D97C8, &unk_1004F6A70);
    v50 = v54;
    sub_10034A6EC(v33, v54);
    sub_1003318D0(v50, type metadata accessor for MessageBeingDownloaded);
    sub_100025F40(v37, &qword_1005D97C8, &unk_1004F6A70);

    goto LABEL_27;
  }

  v23 = v55;
  sub_1003319A0(v8, v55, type metadata accessor for MessageBeingDownloaded);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  sub_100025F40(v58, &qword_1005D97C8, &unk_1004F6A70);
  if (v33 >= v6[2])
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_100331A08(v23, v6 + v52 + a3);

  *v56 = v6;
LABEL_27:
}

uint64_t sub_100331300@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004A4374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MessageBeingDownloaded.State(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10033A5E0();
  if (v15 & 0x100000000) != 0 || (v16 = v15, v17 = sub_10033B018(), (v18))
  {

    v19 = type metadata accessor for MessageBeingDownloaded(0);
    v20 = *(*(v19 - 8) + 56);

    return v20(a3, 1, 1, v19);
  }

  else
  {
    v22 = v17;
    if (qword_1005D8738 != -1)
    {
      swift_once();
    }

    v23 = sub_1001C203C(v6, qword_1005D8A40);
    (*(v7 + 16))(v10, v23, v6);
    MessageSectionData.Concatenator.init(expectedMessageSize:inMemoryThreshold:baseDirectory:)(v22, 1000000, v10, v14);
    v24 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v24 - 8) + 56))(v14, 0, 2, v24);
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v16;
    v25 = type metadata accessor for MessageBeingDownloaded(0);
    sub_1003319A0(v14, a3 + *(v25 + 28), type metadata accessor for MessageBeingDownloaded.State);
    return (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
  }
}

uint64_t sub_1003315B8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MessageBeingDownloaded.State(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageSectionData.Concatenator(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for MessageBeingDownloaded(0) + 28);
  sub_100331868(v3 + v14, v8, type metadata accessor for MessageBeingDownloaded.State);
  if ((*(v10 + 48))(v8, 2, v9))
  {
    return sub_1003318D0(v8, type metadata accessor for MessageBeingDownloaded.State);
  }

  v17 = *(v10 + 32);
  v17(v13, v8, v9);
  MessageSectionData.Concatenator.appendData(_:)(a1);
  sub_1003318D0(v3 + v14, type metadata accessor for MessageBeingDownloaded.State);
  if (v2)
  {
    (*(v10 + 56))(v3 + v14, 1, 2, v9);
    swift_willThrow();
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v17((v3 + v14), v13, v9);
    return (*(v10 + 56))(v3 + v14, 0, 2, v9);
  }
}

uint64_t sub_100331868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003318D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100331930(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003319A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100331A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageBeingDownloaded(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100331A6C(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v3 = sub_1004A5384();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v50 - v13;
  v58 = type metadata accessor for IndexableMessageInfo(0);
  v56 = *(v58 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v58);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C9C0(&qword_1005D97D0, &unk_1004F6A80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v50 - v18;
  v64 = type metadata accessor for MessageSectionData.Concatenator.Completed(0);
  v63 = *(v64 - 8);
  v20 = *(v63 + 64);
  __chkstk_darwin(v64);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MessageBeingDownloaded.State(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MessageSectionData.Concatenator(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for MessageBeingDownloaded(0) + 28);
  v33 = v2;
  sub_100331868(v2 + v32, v26, type metadata accessor for MessageBeingDownloaded.State);
  if ((*(v28 + 48))(v26, 2, v27))
  {
    sub_1003318D0(v26, type metadata accessor for MessageBeingDownloaded.State);
LABEL_5:
    sub_100332250();
    swift_allocError();
    swift_willThrow();
    return v32;
  }

  v50 = v32;
  (*(v28 + 32))(v31, v26, v27);
  MessageSectionData.Concatenator.completed.getter(v19);
  if ((*(v63 + 48))(v19, 1, v64) == 1)
  {
    (*(v28 + 8))(v31, v27);
    sub_100025F40(v19, &qword_1005D97D0, &unk_1004F6A80);
    goto LABEL_5;
  }

  v35 = v31;
  v36 = v22;
  sub_1003319A0(v19, v22, type metadata accessor for MessageSectionData.Concatenator.Completed);
  v37 = v57;
  (*(v59 + 16))(v57, v22, v60);
  v38 = v54;
  Message.init(_:)(v37, v54);
  v39 = v62;

  v32 = v55;
  IndexableMessageInfo.init(message:maximumTextCount:cache:)(v38, v61, v39, v55);
  v40 = v56;
  v41 = v58;
  if ((*(v56 + 48))(v32, 1, v58) == 1)
  {
    sub_100025F40(v32, &qword_1005D6670, &qword_1004EBFB0);
    v42 = v50;
    sub_1003318D0(v33 + v50, type metadata accessor for MessageBeingDownloaded.State);
    (*(v28 + 56))(v33 + v42, 1, 2, v27);
    sub_1003322A4();
    swift_allocError();
    swift_willThrow();
    sub_1003318D0(v22, type metadata accessor for MessageSectionData.Concatenator.Completed);
    (*(v28 + 8))(v35, v27);
    return v32;
  }

  v43 = v51;
  sub_1003319A0(v32, v51, type metadata accessor for IndexableMessageInfo);
  v64 = v33;
  v32 = *(v33 + 8);
  v44 = v52;
  sub_100331868(v43, v52, type metadata accessor for IndexableMessageInfo);
  (*(v40 + 56))(v44, 0, 1, v41);
  v45 = sub_1004A5734();
  [v32 willChangeValueForKey:v45];

  v46 = v53;
  sub_10033B644(v32, v44);
  if (!v46)
  {
    v47 = sub_1004A5734();
    [v32 didChangeValueForKey:v47];

    sub_100025F40(v44, &qword_1005D6670, &qword_1004EBFB0);
    sub_1003318D0(v43, type metadata accessor for IndexableMessageInfo);
    sub_1003318D0(v36, type metadata accessor for MessageSectionData.Concatenator.Completed);
    (*(v28 + 8))(v35, v27);
    v48 = v50;
    v49 = v64;
    sub_1003318D0(v64 + v50, type metadata accessor for MessageBeingDownloaded.State);
    (*(v28 + 56))(v49 + v48, 2, 2, v27);
    return v32;
  }

  result = [v32 didChangeValueForKey:sub_1004A5734()];
  __break(1u);
  return result;
}

unint64_t sub_100332250()
{
  result = qword_1005D97D8;
  if (!qword_1005D97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D97D8);
  }

  return result;
}

unint64_t sub_1003322A4()
{
  result = qword_1005D97E0;
  if (!qword_1005D97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D97E0);
  }

  return result;
}

uint64_t sub_10033232C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Concatenator(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003323AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MessageSectionData.Concatenator(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100332430()
{
  v0 = type metadata accessor for MessageSectionData.Concatenator(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_10033249C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MessageBeingDownloaded.State(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10033255C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessageBeingDownloaded.State(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100332600()
{
  result = _s7MailboxCMa();
  if (v1 <= 0x3F)
  {
    result = _s7MessageCMa();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MessageBeingDownloaded.State(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_1003326A4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10035D618(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C9C0(&qword_1005D9938, &qword_1004F6B60);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1003327D8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10035D8F4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C9C0(&qword_1005D9928, &unk_1004F78F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100332908(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1004A6A34();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_1004A6A34();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100332A08(void *a1, uint64_t a2, uint64_t a3)
{
  p_attr = v3;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_1004A5734();
  v14 = [v12 initWithEntityName:v13];

  v15 = v14;
  sub_10031E2EC(a1);
  sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
  v16 = sub_1004A5FE4();
  [v14 appendPredicate:v16];

  if ((a2 & 0x100000000) == 0 && a2 != 1)
  {
    LODWORD(v54[0]) = 1;
    if (!a2)
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    LODWORD(v52) = a2 - 1;
    v17 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v54, &v52, &type metadata for UID, v17, &v55);
    sub_100016D2C();
    sub_1004A7114();
    v54[0] = v55;
    v52 = Range<>.init<A>(_:)(v54, &type metadata for UID, v17);
    if (HIDWORD(v52) != v52)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v18 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v18(v54, 0);
    }

    v19 = sub_10037A73C();
    v15 = v14;
    [v14 appendPredicate:v19];

    sub_100121C40(v11);
  }

  [v15 setFetchLimit:a3];
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004D3930;
  v21 = objc_allocWithZone(NSSortDescriptor);
  v22 = sub_1004A5734();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v20 + 32) = v23;
  sub_10019A8E4(0, &qword_1005D9940, NSSortDescriptor_ptr);
  isa = sub_1004A5C04().super.isa;

  [v15 setSortDescriptors:isa];

  if (qword_1005D8760 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v53[2] = xmmword_1005D9218;
    v53[3] = *&qword_1005D9228;
    v53[4] = xmmword_1005D9238;
    v53[0] = xmmword_1005D91F8;
    v53[1] = *&qword_1005D9208;
    v50 = sub_1003521DC(v53);
    v54[0] = _swiftEmptySetSingleton;
    v52 = _swiftEmptySetSingleton;
    v51 = 0;
    v25 = [v15 execute:&v51];
    v26 = v51;
    if (!v25)
    {
      v44 = v51;
      sub_1004A4274();

      swift_willThrow();
      return;
    }

    v27 = v25;
    v47 = p_attr;
    _s7MessageCMa();
    v28 = sub_1004A5C14();
    v29 = v26;

    v46 = v15;
    if (v28 >> 62)
    {
      break;
    }

    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_32;
    }

LABEL_11:
    v15 = 0;
    v49 = v28 & 0xC000000000000001;
    v48 = v28 & 0xFFFFFFFFFFFFFF8;
    p_attr = &stru_1005CAFF8.attr;
    while (1)
    {
      if (v49)
      {
        v31 = sub_1004A6794();
      }

      else
      {
        if (v15 >= *(v48 + 16))
        {
          goto LABEL_29;
        }

        v31 = *(v28 + 8 * v15 + 32);
      }

      v32 = v31;
      v33 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v34 = sub_1004A5734();
      [v32 willAccessValueForKey:v34];

      v35 = [v32 primitiveUid];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 longLongValue];

        v38 = (v37 - 0x100000000) < 0xFFFFFFFF00000001;
        if ((v37 - 0x100000000) >= 0xFFFFFFFF00000001)
        {
          v37 = v37;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v38 = 1;
      }

      v39 = sub_1004A5734();
      [v32 didAccessValueForKey:v39];

      if (v38)
      {
        goto LABEL_34;
      }

      v40 = sub_1004A5734();
      [v32 willAccessValueForKey:v40];

      v41 = [v32 primitiveIndexGeneration];
      if (v41)
      {
        v42 = v41;
        [v41 longLongValue];
      }

      v43 = sub_1004A5734();
      [v32 didAccessValueForKey:v43];

      sub_100362014(&v51, v37);
      ++v15;
      if (v33 == v30)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v30 = sub_1004A6A34();
  if (v30)
  {
    goto LABEL_11;
  }

LABEL_32:
}