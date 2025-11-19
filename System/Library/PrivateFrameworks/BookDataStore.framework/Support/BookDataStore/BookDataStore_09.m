uint64_t sub_10012F6A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1001C48F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1001C48A8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_10012F72C(void *a1)
{
  v1 = [a1 stringForKey:@"BDSPriceTracker_CardManager_cardListV1"];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = sub_1001C6018();
  v5 = v4;

  v6 = sub_10012D85C(v3, v5);
  v8 = v7;
  sub_10012F994();
  sub_1001C4768();
  sub_1000887D0(v6, v8);
  return v10;
}

uint64_t sub_10012F930(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardItemVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012F994()
{
  result = qword_1002721F8;
  if (!qword_1002721F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002721F8);
  }

  return result;
}

void *sub_10012F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10012F364(sub_10012FA50, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10012FA70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001C4788();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1001C4778();
  v5 = [objc_opt_self() books];
  v6 = [v5 userDefaults];

  v7 = sub_1001C5FE8();
  v8 = [v6 dataForKey:v7];

  if (v8)
  {
    v9 = sub_1001C4BA8();
    v11 = v10;

    v12 = type metadata accessor for CRDTModelRevisionInfo();
    sub_10009AD9C(v9, v11);
    sub_100130418(&unk_1002722C8);
    sub_1001C4768();
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    sub_1000887D0(v9, v11);
    sub_1000887D0(v9, v11);
  }

  else
  {
    v13 = type metadata accessor for CRDTModelRevisionInfo();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_10012FDE0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10012FE54(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0xD000000000000029;
  result[3] = 0x80000001001FE5F0;
  result[4] = 0xD000000000000029;
  result[5] = 0x80000001001FE620;
  result[6] = 0xD000000000000031;
  result[7] = 0x80000001001FE650;
  result[8] = a1;
  return result;
}

uint64_t sub_10012FED0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_1001C4828();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1001C4818();
  sub_100130378();
  v16 = sub_1001C4808();
  v18 = v17;
  v19 = [objc_opt_self() books];
  v20 = [v19 userDefaults];

  v35 = v18;
  isa = sub_1001C4B98().super.isa;
  v22 = sub_1001C5FE8();
  [v20 setValue:isa forKey:v22];

  v23 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v24 = qword_1002711E8;
  sub_100113858(a3, v12);
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36[0] = v34;
    *v25 = 136315394;
    *(v25 + 4) = sub_1001874E8(a1, a2, v36);
    *(v25 + 12) = 2080;
    sub_100113858(v12, v10);
    v26 = type metadata accessor for CRDTModelRevisionInfo();
    v27 = (*(*(v26 - 8) + 48))(v10, 1, v26);
    v28 = v35;
    if (v27 == 1)
    {
      sub_10013045C(v10);
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v30 = CRDTModelRevisionInfo.description.getter();
      v29 = v32;
      sub_1000B6930(v10);
    }

    sub_10013045C(v12);
    v33 = sub_1001874E8(v30, v29, v36);

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v23, "ReadingHistoryServiceContext saved revisionInfo for %s: %s", v25, 0x16u);
    swift_arrayDestroy();

    sub_1000887D0(v16, v28);
  }

  else
  {
    sub_1000887D0(v16, v35);

    return sub_10013045C(v12);
  }
}

unint64_t sub_100130378()
{
  result = qword_1002722D8;
  if (!qword_1002722D8)
  {
    sub_1000885AC(&unk_10026F410, &unk_1001F0E40);
    sub_100130418(&unk_1002722E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002722D8);
  }

  return result;
}

uint64_t sub_100130418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRDTModelRevisionInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10013045C(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CloudSyncDiagnosticCloudFetcher.__allocating_init(cloudKitDatabaseController:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1001C5138();
  *&v3[OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t CloudSyncDiagnosticCloudFetcher.fetchZone(zoneName:recordBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10013058C, 0, 0);
}

uint64_t sub_10013058C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v13 = *(v0 + 32);
  v4 = sub_1001C6018();
  v6 = v5;

  v15._countAndFlagsBits = v3;
  v15._object = v2;
  v16._countAndFlagsBits = v4;
  v16._object = v6;
  isa = sub_1001C65C8(v15, v16).super.isa;
  *(v0 + 56) = isa;
  v8 = swift_allocObject();
  *(v0 + 64) = v8;
  swift_unknownObjectWeakInit();
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = isa;
  *(v9 + 32) = v13;
  v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_100130728;

  return withCheckedContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD00000000000001ELL, 0x8000000100202590, sub_100130E58, v9, &type metadata for () + 8);
}

uint64_t sub_100130728()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_10013085C, 0, 0);
}

uint64_t sub_10013085C()
{
  v1 = *(v0 + 8);

  return v1();
}

id CloudSyncDiagnosticCloudFetcher.init(cloudKitDatabaseController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1001C5138();
  *&v1[OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t CloudSyncDiagnosticCloudFetcher.fetchZone(zoneID:recordBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100130A30, 0, 0);
}

uint64_t sub_100130A30()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v8 = *(v0 + 16);
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_100130B68;

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000001ELL, 0x8000000100202590, sub_100132264, v4, &type metadata for () + 8);
}

uint64_t sub_100130B68()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_100130C9C, 0, 0);
}

void sub_100130CB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&qword_100272340, &qword_1001F5308);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v10 + 16))(v13, a1, v9);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v13, v9);
    CloudSyncDiagnosticCloudFetcher._fetchZoneChanges(zoneID:recordBlock:completion:)(a3, a4, a5, sub_1001321F8, v17);
  }

  else
  {
    sub_1001C6328();
  }
}

void CloudSyncDiagnosticCloudFetcher._fetchZoneChanges(zoneID:recordBlock:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v44 = a2;
  v45 = a3;
  v6 = sub_1001C5148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
  [v9 setPreviousServerChangeToken:0];
  sub_100088714(0, &qword_1002722F0, CKFetchRecordZoneChangesOperation_ptr);
  sub_100084528(&qword_100270AB0, &qword_1001F52C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F31C0;
  *(v10 + 32) = a1;
  sub_100084528(&qword_1002722F8, &qword_1001F52C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  *(inited + 32) = a1;
  *(inited + 40) = v9;
  v12 = a1;
  v46 = v9;
  LOBYTE(a1) = sub_100119588(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_100272300, &unk_1001F52D0);
  v53.value._rawValue = v10;
  v53.is_nil = a1;
  isa = sub_1001C6718(v53, v54).super.super.super.super.isa;
  v42 = OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_logger;
  v14 = v7;
  v15 = *(v7 + 16);
  v52 = v7 + 16;
  v49 = v15;
  v16 = v51;
  v17 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15(v17, v51 + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_logger, v6);
  v18 = *(v14 + 80);
  v19 = v14;
  v50 = ((v18 + 16) & ~v18) + v8;
  v40 = (v18 + 16) & ~v18;
  v20 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v20;
  v39[0] = v18;
  v21 = swift_allocObject();
  v41 = *(v19 + 32);
  v41(v21 + ((v18 + 16) & ~v18), v17, v6);
  v39[1] = v19 + 32;
  v22 = (v21 + v20);
  v23 = v45;
  *v22 = v44;
  v22[1] = v23;

  sub_1001C6728();
  v24 = v42;
  v25 = v16 + v42;
  v26 = v6;
  v27 = v49;
  v49(v17, v25, v6);
  v28 = swift_allocObject();
  v30 = v40;
  v29 = v41;
  v31 = v17;
  v41(v28 + v40, v17, v26);
  sub_1001C6738();
  v32 = v51;
  v27(v17, v51 + v24, v26);
  v33 = swift_allocObject();
  v29(v33 + v30, v17, v26);
  sub_1001C6708();
  v49(v17, v32 + v24, v26);
  v34 = v43;
  v35 = swift_allocObject();
  v29(v35 + v30, v31, v26);
  v36 = (v35 + v34);
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;

  sub_1001C66F8();
  v38 = [*(v32 + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController) database];
  [v38 addOperation:isa];
}

void sub_1001312C4(void *a1, void *a2, char a3, uint64_t a4, NSObject *a5)
{
  if (a3)
  {
    sub_1001321E0(a2, 1);
    v7 = a1;
    oslog = sub_1001C5128();
    v8 = sub_1001C6598();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      *(v9 + 4) = v7;
      *v10 = v7;
      *(v9 + 12) = 2112;
      sub_1001321E0(a2, 1);
      v11 = v7;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      v10[1] = v12;
      _os_log_impl(&_mh_execute_header, oslog, v8, "recordWasChangedBlock - %@, error:%@", v9, 0x16u);
      sub_100084528(&unk_1002718E0, &qword_1001F31F0);
      swift_arrayDestroy();

      sub_1001321EC(a2, 1);

      return;
    }

    v29 = a2;
    v30 = 1;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = a2;
    v16 = [v14 localIdentifierFromRecord:v15];
    v17 = sub_1001C6018();
    v19 = v18;

    sub_1001321E0(a2, 0);
    v20 = a1;

    v21 = sub_1001C5128();
    v22 = sub_1001C6578();

    sub_1001321EC(a2, 0);
    if (os_log_type_enabled(v21, v22))
    {
      osloga = a5;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v23 = 138412802;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      v26 = v20;
      v27 = sub_1001874E8(v17, v19, &v33);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v15;
      v24[1] = a2;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v21, v22, "recordWasChangedBlock - %@ (localId:%s) %@", v23, 0x20u);
      sub_100084528(&unk_1002718E0, &qword_1001F31F0);
      swift_arrayDestroy();

      sub_10008E7BC(v25);

      a5 = osloga;
    }

    else
    {
    }

    (a5)(v15);
    v29 = a2;
    v30 = 0;
  }

  sub_1001321EC(v29, v30);
}

void sub_10013165C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;

  oslog = sub_1001C5128();
  v6 = sub_1001C6578();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2080;
    v10 = v5;
    *(v7 + 14) = sub_1001874E8(a2, a3, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v6, "recordWithIDWasDeletedBlock - %@ (%s)", v7, 0x16u);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v9);
  }
}

void sub_1001317D0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100) == 0)
  {
    oslog = sub_1001C5128();
    v6 = sub_1001C65B8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a5 & 1;
      _os_log_impl(&_mh_execute_header, oslog, v6, "recordZoneFetchCompletionBlock - moreComing:%{BOOL}d", v7, 8u);
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  oslog = sub_1001C5128();
  v11 = sub_1001C6598();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, oslog, v11, "recordZoneFetchCompletionBlock - error: %@", v12, 0xCu);
    sub_10008875C(v13, &unk_1002718E0, &qword_1001F31F0);

    sub_10013218C(a2, a3, a4, a5, 1);
LABEL_6:

    return;
  }

  sub_10013218C(a2, a3, a4, a5, 1);
}

uint64_t sub_1001319DC(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    v6 = sub_1001C5128();
    v7 = sub_1001C6598();
    if (!os_log_type_enabled(v6, v7))
    {

      v13 = sub_100132180(a1, 1);
      return a4(v13);
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "fetchRecordZoneChangesCompletionBlock - error:%@", v8, 0xCu);
    sub_10008875C(v9, &unk_1002718E0, &qword_1001F31F0);

    sub_100132180(a1, 1);
  }

  else
  {
    v6 = sub_1001C5128();
    v11 = sub_1001C65B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v11, "fetchRecordZoneChangesCompletionBlock", v12, 2u);
    }
  }

  return a4(v13);
}

Swift::Void __swiftcall CloudSyncDiagnosticCloudFetcher._addOperation(_:)(CKDatabaseOperation a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController) database];
  [v3 addOperation:a1.super.super.super.isa];
}

void sub_100131CD0(void *a1, void *a2, char a3)
{
  v7 = *(sub_1001C5148() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1001312C4(a1, a2, a3 & 1, v3 + v8, v10);
}

void sub_100131D88(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = *(*(sub_1001C5148() - 8) + 80);

  sub_10013165C(a1, a2, a3);
}

uint64_t sub_100131E10()
{
  v1 = sub_1001C5148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100131E98(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  v10 = *(*(sub_1001C5148() - 8) + 80);

  sub_1001317D0(a1, a2, a3, a4, a5 & 0x1FF);
}

uint64_t sub_100131F40()
{
  v1 = sub_1001C5148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100131FE0(uint64_t a1, char a2)
{
  v5 = *(sub_1001C5148() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1001319DC(a1, a2 & 1, v2 + v6, v8);
}

uint64_t type metadata accessor for CloudSyncDiagnosticCloudFetcher()
{
  result = qword_100272330;
  if (!qword_100272330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001320E4()
{
  result = sub_1001C5148();
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

uint64_t sub_100132180(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10013218C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_1000887BC(a2, a3);
  }
}

id sub_1001321E0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1001321EC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001321F8()
{
  v1 = *(sub_100084528(&qword_100272340, &qword_1001F5308) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1001C6328();
}

uint64_t _s4DealVMa()
{
  result = qword_1002723A0;
  if (!qword_1002723A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001322DC()
{
  result = sub_1001C4B28();
  if (v1 <= 0x3F)
  {
    result = sub_1001C4CA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100132388(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100272408, &qword_1001F5398);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_100132E18();
  sub_1001C6E78();
  v11 = v3[1];
  v12 = *(v3 + 16);
  v24 = *v3;
  v25 = v11;
  v26 = v12;
  v23[7] = 0;
  sub_100132F80();
  sub_1001C6CA8();
  if (!v2)
  {
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v24) = 1;
    sub_1001C6C68();
    v16 = _s4DealVMa();
    v17 = v16[6];
    LOBYTE(v24) = 2;
    sub_1001C4B28();
    sub_100132FD4(&qword_100270698, &type metadata accessor for URL);
    sub_1001C6CA8();
    v18 = v16[7];
    LOBYTE(v24) = 3;
    sub_1001C4CA8();
    sub_100132FD4(&qword_10026F970, &type metadata accessor for Date);
    sub_1001C6CA8();
    v19 = *(v3 + v16[8]);
    LOBYTE(v24) = 4;
    sub_1001C6C88();
    v20 = (v3 + v16[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v24) = 5;
    sub_1001C6C68();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100132688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1001C4CA8();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4B28();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&qword_1002723E8, &qword_1001F5390);
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = _s4DealVMa();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v49 = a1;
  sub_10009BB74(a1, v21);
  sub_100132E18();
  v47 = v15;
  v22 = v48;
  sub_1001C6E58();
  if (v22)
  {
    return sub_10008E7BC(v49);
  }

  v39 = v6;
  v40 = v10;
  v48 = v16;
  v23 = v44;
  v53 = 0;
  sub_100132E6C();
  v24 = v45;
  sub_1001C6C28();
  v25 = v51;
  v26 = v52;
  v27 = v19;
  *v19 = v50;
  *(v19 + 1) = v25;
  v19[16] = v26;
  LOBYTE(v50) = 1;
  *(v19 + 3) = sub_1001C6BE8();
  *(v19 + 4) = v28;
  LOBYTE(v50) = 2;
  sub_100132FD4(&qword_100272400, &type metadata accessor for URL);
  v29 = v40;
  sub_1001C6C28();
  (*(v42 + 32))(v27 + v48[6], v29, v7);
  LOBYTE(v50) = 3;
  sub_100132FD4(&qword_10026F980, &type metadata accessor for Date);
  v30 = v39;
  v40 = 0;
  sub_1001C6C28();
  (*(v43 + 32))(v27 + v48[7], v30, v23);
  LOBYTE(v50) = 4;
  sub_1001C6C08();
  v31 = v48;
  *(v27 + v48[8]) = v32;
  LOBYTE(v50) = 5;
  v33 = sub_1001C6BE8();
  v39 = v34;
  v35 = v33;
  (*(v46 + 8))(v47, v24);
  v36 = (v27 + v31[9]);
  v37 = v39;
  *v36 = v35;
  v36[1] = v37;
  sub_100132EC0(v27, v41);
  sub_10008E7BC(v49);
  return sub_100132F24(v27);
}

uint64_t sub_100132C84()
{
  v1 = *v0;
  v2 = 0x44496D657469;
  v3 = 1702125924;
  v4 = 0x636E657265666572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100132D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001333A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100132D6C(uint64_t a1)
{
  v2 = sub_100132E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100132DA8(uint64_t a1)
{
  v2 = sub_100132E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100132E18()
{
  result = qword_1002723F0;
  if (!qword_1002723F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002723F0);
  }

  return result;
}

unint64_t sub_100132E6C()
{
  result = qword_1002723F8;
  if (!qword_1002723F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002723F8);
  }

  return result;
}

uint64_t sub_100132EC0(uint64_t a1, uint64_t a2)
{
  v4 = _s4DealVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132F24(uint64_t a1)
{
  v2 = _s4DealVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100132F80()
{
  result = qword_100272410;
  if (!qword_100272410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272410);
  }

  return result;
}

uint64_t sub_100132FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013301C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1001C6D08();
    result = 0;
    if (v7 & 1) == 0 || ((v4 ^ v5))
    {
      return result;
    }
  }

  v9 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v9 && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  v10 = _s4DealVMa();
  v11 = v10[6];
  if ((sub_1001C4AC8() & 1) == 0)
  {
    return 0;
  }

  v12 = v10[7];
  if ((sub_1001C4C68() & 1) == 0 || *(a1 + v10[8]) != *(a2 + v10[8]))
  {
    return 0;
  }

  v13 = v10[9];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  if (v14 == *v16 && v15 == v16[1])
  {
    return 1;
  }

  return sub_1001C6D08();
}

uint64_t _s4DealV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4DealV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013329C()
{
  result = qword_100272418;
  if (!qword_100272418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272418);
  }

  return result;
}

unint64_t sub_1001332F4()
{
  result = qword_100272420;
  if (!qword_100272420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272420);
  }

  return result;
}

unint64_t sub_10013334C()
{
  result = qword_100272428;
  if (!qword_100272428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272428);
  }

  return result;
}

uint64_t sub_1001333A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEE00656369725065 || (sub_1001C6D08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100202640 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *ReadingHistoryBackupManager.__allocating_init(transactionProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0xD000000000000055;
  result[3] = 0x80000001001FDEE0;
  result[4] = 0xD000000000000012;
  result[5] = 0x80000001001FDF40;
  result[6] = 0xD000000000000013;
  result[7] = 0x80000001001FDF60;
  result[8] = 0x736B6F6F42;
  result[9] = 0xE500000000000000;
  result[10] = 0xD000000000000019;
  result[11] = 0x80000001001FDF80;
  result[12] = a1;
  return result;
}

uint64_t ReadingHistoryBackupManager.backup(name:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_100084528(&unk_10026EF10, &unk_1001F1FA0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = sub_1001C4B28();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100133778, 0, 0);
}

uint64_t sub_100133778()
{
  v56 = v0;
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v1))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v55 = v6;
    *v5 = 136315138;
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v4 = 7104878;
      v7 = 0xE300000000000000;
    }

    v8 = sub_1001874E8(v4, v7, &v55);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "ReadingHistoryBackupManager backup: %s", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  v14 = [*(v0[9] + 96) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryBackupManager.backup"];
  sub_100136638(v13, v12, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_10008875C(v0[10], &unk_10026EF10, &unk_1001F1FA0);
    sub_100137428();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v16 = [objc_opt_self() defaultManager];
    sub_1001C4AF8();
    v17 = sub_1001C5FE8();

    v18 = [v16 fileExistsAtPath:v17];

    v20 = v0[13];
    if (v18)
    {
      v21 = v0[12];
      v53 = v0[11];
      sub_1001C6598();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1001F0670;
      v23 = sub_1001C4AF8();
      v25 = v24;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100084570();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      sub_1001C5118();

      sub_100137428();
      swift_allocError();
      *v26 = 0;
      swift_willThrow();

      (*(v21 + 8))(v20, v53);
    }

    else
    {
      sub_1001C4A88(v19);
      v28 = v27;
      v0[5] = 0;
      v29 = [v16 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v0 + 5];

      v30 = v0[5];
      v31 = v0[13];
      if (v29)
      {
        v32 = v0[9];
        v33 = v30;
        sub_100136DF0(v31);
        v34 = v0[11];
        v49 = v0[10];
        v50 = v0[13];
        (*(v0[12] + 8))();

        v51 = v0[1];
        goto LABEL_16;
      }

      v52 = v0[12];
      v54 = v0[11];
      v35 = v30;
      sub_1001C4A28();

      swift_willThrow();
      sub_1001C6598();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1001F0660;
      v37 = sub_1001C4AF8();
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      v40 = sub_100084570();
      *(v36 + 64) = v40;
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      swift_getErrorValue();
      v42 = v0[2];
      v41 = v0[3];
      v43 = v0[4];
      v44 = sub_1001C6D98();
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v40;
      *(v36 + 72) = v44;
      *(v36 + 80) = v45;
      sub_1001C5118();

      swift_willThrow();

      (*(v52 + 8))(v31, v54);
    }
  }

  v46 = v0[13];
  v47 = v0[10];

  v51 = v0[1];
LABEL_16:

  return v51();
}

uint64_t sub_100133D3C()
{
  v1[3] = v0;
  v2 = *(*(sub_100084528(&unk_10026EF10, &unk_1001F1FA0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100133E34, 0, 0);
}

uint64_t sub_100133E34()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v1 = [objc_opt_self() bu_booksGroupContainerURL];
  if (v1)
  {
    v2 = v0[7];
    v3 = v1;
    sub_1001C4AD8();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = sub_1001C4B28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v6, v4, 1, v8);
  sub_10009AE58(v6, v5, &unk_10026EF10, &unk_1001F1FA0);
  sub_10009ADF0(v5, v7, &unk_10026EF10, &unk_1001F1FA0);
  v11 = *(v9 + 48);
  if (v11(v7, 1, v8) == 1)
  {
    sub_10008875C(v0[5], &unk_10026EF10, &unk_1001F1FA0);
    v12 = 1;
  }

  else
  {
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[3];
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    sub_1001C4A98();
    (*(v9 + 8))(v14, v8);
    v12 = 0;
  }

  v18 = v0[6];
  v19 = v0[4];
  v10(v18, v12, 1, v8);
  sub_10009ADF0(v18, v19, &unk_10026EF10, &unk_1001F1FA0);
  if (v11(v19, 1, v8) == 1)
  {
    v20 = v0[8];
    v21 = v0[6];
    sub_10008875C(v0[4], &unk_10026EF10, &unk_1001F1FA0);
    sub_1001C6598();
    sub_1001C5118();
    sub_100137428();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
LABEL_19:
    sub_10008875C(v21, &unk_10026EF10, &unk_1001F1FA0);
    sub_10008875C(v20, &unk_10026EF10, &unk_1001F1FA0);
    v41 = v0[7];
    v40 = v0[8];
    v43 = v0[5];
    v42 = v0[6];
    v44 = v0[4];

    v45 = v0[1];

    return v45();
  }

  v23 = v0[4];
  sub_1001C4AF8();
  (*(v9 + 8))(v23, v8);
  v24 = [objc_opt_self() defaultManager];
  v25 = sub_1001C5FE8();

  v0[2] = 0;
  v26 = [v24 contentsOfDirectoryAtPath:v25 error:v0 + 2];

  v27 = v0[2];
  if (!v26)
  {
    v20 = v0[8];
    v21 = v0[6];
    v39 = v27;
    sub_1001C4A28();

    swift_willThrow();
    goto LABEL_19;
  }

  v53 = v24;
  v28 = sub_1001C6298();
  v29 = v27;

  v30 = *(v28 + 16);
  if (v30)
  {
    v31 = sub_1000ADC34(0, 1, 1, &_swiftEmptyArrayStorage);
    v32 = *(v31 + 2);
    v33 = 16 * v32;
    v34 = (v28 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      v37 = *(v31 + 3);

      if (v32 >= v37 >> 1)
      {
        v31 = sub_1000ADC34((v37 > 1), v32 + 1, 1, v31);
      }

      *(v31 + 2) = v32 + 1;
      v38 = &v31[v33];
      *(v38 + 4) = v36;
      *(v38 + 5) = v35;
      v33 += 16;
      v34 += 2;
      ++v32;
      --v30;
    }

    while (v30);
  }

  else
  {
    v31 = &_swiftEmptyArrayStorage;
  }

  v48 = v0[7];
  v47 = v0[8];
  v50 = v0[5];
  v49 = v0[6];
  v51 = v0[4];

  sub_10008875C(v49, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v47, &unk_10026EF10, &unk_1001F1FA0);

  v52 = v0[1];

  return v52(v31);
}

uint64_t ReadingHistoryBackupManager.restore(name:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_100084528(&unk_10026EF10, &unk_1001F1FA0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_1001C4B28();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100134580, 0, 0);
}

uint64_t sub_100134580()
{
  v94 = v0;
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v1))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v93 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1001874E8(v4, v3, &v93);
    _os_log_impl(&_mh_execute_header, v2, v1, "ReadingHistoryBackupManager restore: %s", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[6];
  v12 = [*(v0[8] + 96) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryBackupManager.restore"];
  sub_100136638(v11, v10, v9);
  v13 = *(v7 + 48);
  if (v13(v9, 1, v8) == 1)
  {
    sub_10008875C(v0[12], &unk_10026EF10, &unk_1001F1FA0);
    sub_100137428();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }

  else
  {
    v89 = *(v0[14] + 32);
    v89(v0[19], v0[12], v0[13]);
    v15 = [objc_opt_self() bu_booksGroupContainerURL];
    v92 = v12;
    if (v15)
    {
      v16 = v0[10];
      v17 = v15;
      sub_1001C4AD8();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v0[13];
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    (*(v0[14] + 56))(v21, v18, 1, v19);
    sub_10009AE58(v21, v20, &unk_10026EF10, &unk_1001F1FA0);
    sub_10009ADF0(v20, v22, &unk_10026EF10, &unk_1001F1FA0);
    v23 = v13(v22, 1, v19);
    v24 = v0[19];
    if (v23 == 1)
    {
      v26 = v0[13];
      v25 = v0[14];
      v27 = v0[11];
      sub_10008875C(v0[9], &unk_10026EF10, &unk_1001F1FA0);
      sub_1001C6598();
      sub_1001C5118();
      sub_100137428();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();

      sub_10008875C(v27, &unk_10026EF10, &unk_1001F1FA0);
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v29 = v0[17];
      v30 = v0[16];
      v31 = v0[13];
      v32 = v0[14];
      v33 = v0[8];
      v89(v0[18], v0[9], v31);
      v34 = v33[5];
      v85 = v33[4];
      sub_1001C4A98();
      v35 = v33[6];
      v36 = v33[7];
      sub_1001C4AA8();
      v90 = *(v32 + 8);
      v90(v30, v31);
      v37 = [objc_opt_self() defaultManager];
      sub_1001C4AF8();
      v38 = sub_1001C5FE8();

      v88 = v37;
      v39 = [v37 fileExistsAtPath:v38];

      if (v39)
      {
        v40 = v0[18];
        v42 = v0[15];
        v41 = v0[16];
        v43 = v0[13];
        sub_1001C4A98();
        sub_1001C4AA8();
        v90(v41, v43);
        sub_1001C4AF8();
        v44 = sub_1001C5FE8();

        LODWORD(v40) = [v88 fileExistsAtPath:v44];

        if (v40)
        {
          v45 = v0[8];
          sub_100136ED0(v0[17], v0[15]);
          v81 = v0[18];
          v83 = v0[19];
          v46 = v0[17];
          v74 = v0[15];
          v73 = v0[16];
          v75 = v0[13];
          v76 = v0[11];
          v78 = v0[12];
          v80 = v0[10];
          v91 = v0[9];

          v90(v74, v75);
          v90(v46, v75);
          v90(v81, v75);
          sub_10008875C(v76, &unk_10026EF10, &unk_1001F1FA0);
          v90(v83, v75);

          v77 = v0[1];
          goto LABEL_18;
        }

        v79 = v0[17];
        v82 = v0[18];
        v56 = v0[15];
        v57 = v0[13];
        v84 = v0[11];
        v87 = v0[19];
        sub_1001C6598();
        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1001F0670;
        v59 = sub_1001C4AF8();
        v61 = v60;
        *(v58 + 56) = &type metadata for String;
        *(v58 + 64) = sub_100084570();
        *(v58 + 32) = v59;
        *(v58 + 40) = v61;
        sub_1001C5118();

        sub_100137428();
        swift_allocError();
        *v62 = 1;
        swift_willThrow();

        v90(v56, v57);
        v90(v79, v57);
        v90(v82, v57);
        sub_10008875C(v84, &unk_10026EF10, &unk_1001F1FA0);
        v90(v87, v57);
      }

      else
      {
        v47 = v0[18];
        v86 = v0[19];
        v48 = v0[17];
        v49 = v0[13];
        v50 = v0[11];
        sub_1001C6598();
        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1001F0670;
        v52 = sub_1001C4AF8();
        v54 = v53;
        *(v51 + 56) = &type metadata for String;
        *(v51 + 64) = sub_100084570();
        *(v51 + 32) = v52;
        *(v51 + 40) = v54;
        sub_1001C5118();

        sub_100137428();
        swift_allocError();
        *v55 = 1;
        swift_willThrow();

        v90(v48, v49);
        v90(v47, v49);
        sub_10008875C(v50, &unk_10026EF10, &unk_1001F1FA0);
        v90(v86, v49);
      }
    }
  }

  v64 = v0[18];
  v63 = v0[19];
  v66 = v0[16];
  v65 = v0[17];
  v67 = v0[15];
  v69 = v0[11];
  v68 = v0[12];
  v71 = v0[9];
  v70 = v0[10];

  v77 = v0[1];
LABEL_18:

  return v77();
}

uint64_t sub_100134FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v7 = sub_1001C4988();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_1001C4B28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v51 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v50 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v50 - v25;
  __chkstk_darwin(v24);
  v27 = *(v17 + 16);
  v57 = &v50 - v28;
  v50 = v27;
  v27();
  *&v59 = a3;
  *(&v59 + 1) = a4;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_1001C6138(v62);
  v63._object = 0x8000000100202F90;
  v63._countAndFlagsBits = 0xD000000000000026;
  sub_1001C6138(v63);
  v56 = v26;
  sub_1001C4AA8();
  sub_10009ADF0(v53, v15, &unk_10026EF10, &unk_1001F1FA0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10008875C(v15, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    sub_100136018(a1);

    (*(v17 + 8))(v23, v16);
  }

  sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v29 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001F0670;
  v31 = sub_1001C4A58();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_100084570();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v53 = v29;
  sub_1001C5118();

  sub_1001C4978();
  sub_1001C4968();
  v35 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v36);
  v38 = v37;
  *&v59 = 0;
  LODWORD(v30) = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v59];

  if (v30)
  {
    v39 = v59;
    sub_1001C4A78();
    sub_1001C5E38();
    v40 = v56;
    (v50)(v51, v56, v16);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    (*(v17 + 56))(v52, 1, 1, v16);
    v49 = sub_1001C5E28();
  }

  else
  {
    v41 = v59;
    sub_1001C4A28();

    swift_willThrow();
    v40 = v56;
    sub_1001C6598();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001F0660;
    v43 = sub_1001C4A58();
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v34;
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    swift_getErrorValue();
    v45 = sub_1001C6D98();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v34;
    *(v42 + 72) = v45;
    *(v42 + 80) = v46;
    sub_1001C5118();

    sub_1001C5E38();
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v49 = sub_1001C5E18();

    sub_10008875C(&v59, &unk_10026EF20, &unk_1001F1FB0);
  }

  (*(v54 + 8))(v58, v55);
  v47 = *(v17 + 8);
  v47(v40, v16);
  v47(v57, v16);
  return v49;
}

uint64_t sub_100135698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v7 = sub_1001C4988();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_1001C4B28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v51 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v50 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v50 - v25;
  __chkstk_darwin(v24);
  v27 = *(v17 + 16);
  v57 = &v50 - v28;
  v50 = v27;
  v27();
  *&v59 = a3;
  *(&v59 + 1) = a4;

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_1001C6138(v62);
  v63._object = 0x8000000100202A00;
  v63._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1001C6138(v63);
  v56 = v26;
  sub_1001C4AA8();
  sub_10009ADF0(v53, v15, &unk_10026EF10, &unk_1001F1FA0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10008875C(v15, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    sub_100136018(a1);

    (*(v17 + 8))(v23, v16);
  }

  sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v29 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001F0670;
  v31 = sub_1001C4A58();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_100084570();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v53 = v29;
  sub_1001C5118();

  sub_1001C4978();
  sub_1001C4968();
  v35 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v36);
  v38 = v37;
  *&v59 = 0;
  LODWORD(v30) = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v59];

  if (v30)
  {
    v39 = v59;
    sub_1001C4A78();
    sub_1001C5E38();
    v40 = v56;
    (v50)(v51, v56, v16);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    (*(v17 + 56))(v52, 1, 1, v16);
    v49 = sub_1001C5E28();
  }

  else
  {
    v41 = v59;
    sub_1001C4A28();

    swift_willThrow();
    v40 = v56;
    sub_1001C6598();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001F0660;
    v43 = sub_1001C4A58();
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v34;
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    swift_getErrorValue();
    v45 = sub_1001C6D98();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v34;
    *(v42 + 72) = v45;
    *(v42 + 80) = v46;
    sub_1001C5118();

    sub_1001C5E38();
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v49 = sub_1001C5E18();

    sub_10008875C(&v59, &unk_10026EF20, &unk_1001F1FB0);
  }

  (*(v54 + 8))(v58, v55);
  v47 = *(v17 + 8);
  v47(v40, v16);
  v47(v57, v16);
  return v49;
}

uint64_t sub_100135D5C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v22 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v22 - v13;
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  v22[1] = "ReadingHistoryModel";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_10012150C(v14);
  sub_1001C4AA8();
  v17 = *(v7 + 8);
  v17(v14, v6);
  v18 = [objc_opt_self() books];
  v19 = [v18 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v17(v11, v6);
  (*(v7 + 16))(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v20 = sub_100135698(v16, v5, v23, v24);
  sub_10008875C(v5, &unk_10026EF10, &unk_1001F1FA0);
  v17(v14, v6);
  v17(v16, v6);
  return v20;
}

void sub_100136018(uint64_t a1)
{
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v60 = &v54 - v9;
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  sub_1001C4AA8();
  v12 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v13 = sub_1001C5FE8();

  v14 = [v12 fileExistsAtPath:v13];

  if (!v14)
  {
    (*(v3 + 8))(v11, v2);

    return;
  }

  v55 = a1;
  v56 = v2;
  v58 = v7;
  v59 = v3;
  v57 = v12;
  sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v15 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v16 = swift_allocObject();
  v54 = xmmword_1001F0670;
  *(v16 + 16) = xmmword_1001F0670;
  v17 = sub_1001C4A58();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100084570();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = v15;
  sub_1001C5118();

  v22 = v60;
  v23 = v56;
  (*(v59 + 16))(v60, v55, v56);
  v24 = v58;
  sub_1001C4AA8();
  sub_1001C4AF8();
  v25 = sub_1001C5FE8();

  v26 = v57;
  LOBYTE(v17) = [v57 fileExistsAtPath:v25];

  if (v17)
  {
    sub_1001C6598();
    v28 = swift_allocObject();
    *(v28 + 16) = v54;
    v29 = sub_1001C4A58();
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v20;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
  }

  else
  {
    v55 = v21;
    sub_1001C4A88(v27);
    v32 = v31;
    v61 = 0;
    v33 = [v26 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v61];

    v34 = v61;
    if ((v33 & 1) == 0)
    {
      goto LABEL_11;
    }

    v35 = v61;
    sub_1001C4A88(v36);
    v38 = v37;
    sub_1001C4A88(v39);
    v41 = v40;
    v61 = 0;
    v42 = [v26 moveItemAtURL:v38 toURL:v40 error:&v61];

    v34 = v61;
    if (!v42)
    {
LABEL_11:
      v47 = v34;
      sub_1001C4A28();

      swift_willThrow();
      LODWORD(v54) = sub_1001C6598();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1001F0660;
      v49 = sub_1001C4A58();
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = v20;
      *(v48 + 32) = v49;
      *(v48 + 40) = v50;
      swift_getErrorValue();
      v51 = sub_1001C6D98();
      *(v48 + 96) = &type metadata for String;
      *(v48 + 104) = v20;
      *(v48 + 72) = v51;
      *(v48 + 80) = v52;
      sub_1001C5118();

      goto LABEL_12;
    }

    v43 = v61;
    sub_1001C65B8();
    v44 = swift_allocObject();
    *(v44 + 16) = v54;
    v45 = sub_1001C4A58();
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v20;
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
  }

  sub_1001C5118();

LABEL_12:
  v53 = *(v59 + 8);
  v53(v24, v23);
  v53(v22, v23);
  v53(v11, v23);
}

void *ReadingHistoryBackupManager.init(transactionProvider:)(uint64_t a1)
{
  v1[2] = 0xD000000000000055;
  v1[3] = 0x80000001001FDEE0;
  v1[4] = 0xD000000000000012;
  v1[5] = 0x80000001001FDF40;
  v1[6] = 0xD000000000000013;
  v1[7] = 0x80000001001FDF60;
  v1[8] = 0x736B6F6F42;
  v1[9] = 0xE500000000000000;
  v1[10] = 0xD000000000000019;
  v1[11] = 0x80000001001FDF80;
  v1[12] = a1;
  return v1;
}

uint64_t sub_100136638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v62 = a1;
  v5 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v60 = &v59 - v10;
  v11 = __chkstk_darwin(v9);
  v63 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v59 - v14;
  v16 = __chkstk_darwin(v13);
  v67 = &v59 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v59 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v59 - v25;
  __chkstk_darwin(v24);
  v28 = &v59 - v27;
  v29 = [objc_opt_self() bu_booksGroupContainerURL];
  v64 = a3;
  if (v29)
  {
    v30 = v29;
    sub_1001C4AD8();

    v31 = sub_1001C4B28();
    (*(*(v31 - 8) + 56))(v26, 0, 1, v31);
  }

  else
  {
    v31 = sub_1001C4B28();
    (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  }

  sub_10009AE58(v26, v28, &unk_10026EF10, &unk_1001F1FA0);
  v65 = v28;
  sub_10009ADF0(v28, v20, &unk_10026EF10, &unk_1001F1FA0);
  sub_1001C4B28();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v20, 1, v31) == 1)
  {
    sub_10008875C(v20, &unk_10026EF10, &unk_1001F1FA0);
    v34 = 1;
  }

  else
  {
    v35 = *(v3 + 16);
    v36 = *(v3 + 24);
    sub_1001C4A98();
    (*(v32 + 8))(v20, v31);
    v34 = 0;
  }

  v37 = v67;
  v68 = *(v32 + 56);
  v68(v23, v34, 1, v31);
  sub_100137508(v62, v66);
  v66 = v23;
  sub_10009ADF0(v23, v15, &unk_10026EF10, &unk_1001F1FA0);
  if (v33(v15, 1, v31) == 1)
  {

    sub_10008875C(v15, &unk_10026EF10, &unk_1001F1FA0);
    v38 = 1;
  }

  else
  {
    sub_1001C4A98();

    (*(v32 + 8))(v15, v31);
    v38 = 0;
  }

  v39 = v63;
  v68(v37, v38, 1, v31);
  sub_10009ADF0(v37, v39, &unk_10026EF10, &unk_1001F1FA0);
  if (v33(v39, 1, v31) == 1)
  {
    sub_10008875C(v39, &unk_10026EF10, &unk_1001F1FA0);
    LODWORD(v63) = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v62 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1001F0660;
    v41 = v60;
    sub_10009ADF0(v65, v60, &unk_10026EF10, &unk_1001F1FA0);
    if (v33(v41, 1, v31) == 1)
    {
      sub_10008875C(v41, &unk_10026EF10, &unk_1001F1FA0);
      v42 = 0;
      v43 = 0;
    }

    else
    {
      v42 = sub_1001C4AF8();
      v43 = v46;
      (*(v32 + 8))(v41, v31);
    }

    *(v40 + 56) = &type metadata for String;
    v47 = sub_100084570();
    *(v40 + 64) = v47;
    if (v43)
    {
      v48 = v42;
    }

    else
    {
      v48 = 0x296C696E28;
    }

    v49 = 0xE500000000000000;
    if (v43)
    {
      v49 = v43;
    }

    *(v40 + 32) = v48;
    *(v40 + 40) = v49;
    v50 = v61;
    sub_10009ADF0(v66, v61, &unk_10026EF10, &unk_1001F1FA0);
    if (v33(v50, 1, v31) == 1)
    {
      sub_10008875C(v50, &unk_10026EF10, &unk_1001F1FA0);
      v51 = (v40 + 72);
      *(v40 + 96) = &type metadata for String;
      *(v40 + 104) = v47;
      v52 = v67;
      v53 = v65;
    }

    else
    {
      v54 = v50;
      v55 = sub_1001C4AF8();
      v57 = v56;
      (*(v32 + 8))(v54, v31);
      v51 = (v40 + 72);
      *(v40 + 96) = &type metadata for String;
      *(v40 + 104) = v47;
      v53 = v65;
      if (v57)
      {
        *v51 = v55;
        v52 = v67;
LABEL_28:
        *(v40 + 80) = v57;
        sub_1001C5118();

        sub_10008875C(v52, &unk_10026EF10, &unk_1001F1FA0);
        sub_10008875C(v66, &unk_10026EF10, &unk_1001F1FA0);
        sub_10008875C(v53, &unk_10026EF10, &unk_1001F1FA0);
        v45 = 1;
        v44 = v64;
        return (v68)(v44, v45, 1, v31);
      }

      v52 = v67;
    }

    *v51 = 0x296C696E28;
    v57 = 0xE500000000000000;
    goto LABEL_28;
  }

  sub_10008875C(v37, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v66, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v65, &unk_10026EF10, &unk_1001F1FA0);
  v44 = v64;
  (*(v32 + 32))(v64, v39, v31);
  v45 = 0;
  return (v68)(v44, v45, 1, v31);
}

uint64_t sub_100136DF0(uint64_t a1)
{
  result = sub_1001386A8();
  if (!v2)
  {
    sub_100138E70(0xD000000000000010, 0x80000001001FE190, 0xD00000000000002CLL, 0x8000000100202A20, a1);
    sub_100138E70(0xD000000000000011, 0x8000000100200DA0, 0xD00000000000001CLL, 0x8000000100200DC0, a1);
    sub_100138E70(0xD000000000000018, 0x8000000100200E50, 0xD000000000000035, 0x8000000100202A50, a1);
    return sub_100138E70(v1[4], v1[5], v1[6], v1[7], a1);
  }

  return result;
}

uint64_t sub_100136ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C5BD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  result = sub_1001C4B48();
  if (!v2)
  {
    v18 = result;
    v19 = v17;
    v46 = v8;
    v47 = v5;
    v49 = v13;
    v50 = a2;
    v20 = v51;
    sub_10009AD9C(result, v17);
    sub_10013ACE4(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
    sub_1001C5C58();
    v21 = sub_1001C4B48();
    v48 = 0;
    v23 = v22;
    v44 = v15;
    v24 = v21;
    sub_10009AD9C(v21, v22);
    v25 = v48;
    v26 = v49;
    v45 = v24;
    sub_1001C5C58();
    v48 = v25;
    if (v25)
    {
      sub_10013AD2C(v44, type metadata accessor for ReadingHistoryModel);
      sub_1000887D0(v18, v19);
      return sub_1000887D0(v45, v23);
    }

    else
    {
      v43 = v23;
      v27 = v44;
      sub_100139720(v44, v26);
      v28 = sub_100135D5C(*(v20 + 64), *(v20 + 72));
      v29 = v47;
      v30 = *(v47 + 104);
      v31 = v4;
      v32 = v46;
      v51 = v31;
      v30();
      v33 = v48;
      v34 = sub_1001C5C48();
      v48 = v33;
      if (v33)
      {

        sub_1000887D0(v45, v43);
        sub_1000887D0(v18, v19);
        (*(v29 + 8))(v32, v51);
        sub_10013AD2C(v26, type metadata accessor for ReadingHistoryModel);
        return sub_10013AD2C(v27, type metadata accessor for ReadingHistoryModel);
      }

      else
      {
        v36 = v35;
        v37 = v34;
        (*(v29 + 8))(v32, v51);
        v38 = v48;
        sub_1001C4BB8();
        if (v38)
        {
          sub_1000887D0(v37, v36);

          sub_1000887D0(v45, v43);
          sub_1000887D0(v18, v19);
          v39 = v49;
        }

        else
        {
          v40 = sub_1001C65B8();
          v41 = v43;
          v42 = v49;
          if (qword_10026EBE8 != -1)
          {
            LODWORD(v51) = v40;
            swift_once();
          }

          sub_1001C5118();
          sub_1000887D0(v37, v36);

          sub_1000887D0(v45, v41);
          sub_1000887D0(v18, v19);
          v39 = v42;
        }

        sub_10013AD2C(v39, type metadata accessor for ReadingHistoryModel);
        return sub_10013AD2C(v27, type metadata accessor for ReadingHistoryModel);
      }
    }
  }

  return result;
}

void *ReadingHistoryBackupManager.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReadingHistoryBackupManager.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_100137428()
{
  result = qword_100272438;
  if (!qword_100272438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272438);
  }

  return result;
}

unint64_t sub_100137480()
{
  result = qword_100272440;
  if (!qword_100272440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272440);
  }

  return result;
}

uint64_t sub_100137508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C4D68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v14 = [objc_allocWithZone(NSDateFormatter) init];
    sub_1001C4CD8();
    isa = sub_1001C4D08().super.isa;
    (*(v10 + 8))(v13, v9);
    [v14 setCalendar:isa];

    v16 = sub_1001C5FE8();
    [v14 setDateFormat:v16];

    sub_1001C4C98();
    v17 = sub_1001C4C38().super.isa;
    (*(v5 + 8))(v8, v4);
    v18 = [v14 stringFromDate:v17];

    v19 = sub_1001C6018();
    v21 = v20;

    v23[0] = 0x2D70756B636142;
    v23[1] = 0xE700000000000000;
    v24._countAndFlagsBits = v19;
    v24._object = v21;
    sub_1001C6138(v24);

    a1 = v23[0];
  }

  return a1;
}

unint64_t sub_100137794()
{
  sub_100084528(&qword_100272570, &qword_1001F0CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0680;
  sub_1001C6018();
  sub_1001C6968();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_1001C6018();
  sub_1001C6968();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_1001C6018();
  sub_1001C6968();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = 1;
  v1 = sub_100118A6C(inited);
  swift_setDeallocating();
  sub_100084528(&qword_10026F280, &qword_1001F5620);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1001378DC()
{
  v0 = sub_1001C6608();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098D64();
  v6 = v5;
  v13[2] = sub_1001C69E8();
  v13[3] = v7;
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  sub_1001C6138(v14);
  v13[5] = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v15._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v15);

  v8 = objc_allocWithZone(BCCloudDataSource);
  v9 = sub_1001C5FE8();

  v10 = [v8 initWithManagedObjectModel:v6 nameOnDisk:v9];

  v11 = [v10 persistentStoreCoordinator];
  sub_100137794();
  sub_1001C65F8();
  sub_1001C66E8();
  (*(v1 + 8))(v4, v0);
}

void sub_100137AD8()
{
  v1 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v2 = sub_1001C5FE8();

  v3 = [v1 fileExistsAtPath:v2];

  if (!v3)
  {
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001F0670;
    v17 = sub_1001C4AF8();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100084570();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1001C5118();

    sub_100137428();
    swift_allocError();
    *v20 = 1;
    goto LABEL_9;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0660;
  v5 = sub_1001C4AF8();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100084570();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = sub_1001C4AF8();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_1001C5118();

  sub_1001378DC();
  if (v0)
  {
    sub_1001C6598();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001F0660;
    v12 = sub_1001C4AF8();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = v8;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    swift_getErrorValue();
    v14 = sub_1001C6D98();
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v8;
    *(v11 + 72) = v14;
    *(v11 + 80) = v15;
    sub_1001C5118();

LABEL_9:
    swift_willThrow();

    return;
  }

  sub_1001C65B8();
  sub_1001C5118();
}

uint64_t sub_100137E58(uint64_t a1)
{
  v2 = sub_1001C4B28();
  v80 = *(v2 - 8);
  v3 = *(v80 + 64);
  v4 = __chkstk_darwin(v2);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v64 - v6;
  v7 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v76 = &v64 - v12;
  v13 = __chkstk_darwin(v11);
  v75 = &v64 - v14;
  v15 = __chkstk_darwin(v13);
  v78 = &v64 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = __chkstk_darwin(v17);
  v79 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v64 - v23;
  __chkstk_darwin(v22);
  v26 = &v64 - v25;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v27 = qword_1002711E8;
  v66 = sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001F0670;
  v72 = a1;
  v29 = sub_1001C4AF8();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v68 = sub_100084570();
  *(v28 + 64) = v68;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v69 = v27;
  sub_1001C5118();

  v32 = [objc_opt_self() bu_booksGroupContainerDocumentsURL];
  if (v32)
  {
    v33 = v32;
    sub_1001C4AD8();

    v34 = v80;
    v35 = *(v80 + 56);
    v36 = v24;
    v37 = 0;
  }

  else
  {
    v34 = v80;
    v35 = *(v80 + 56);
    v36 = v24;
    v37 = 1;
  }

  v81 = v35;
  v35(v36, v37, 1, v2);
  sub_10009AE58(v24, v26, &unk_10026EF10, &unk_1001F1FA0);
  v77 = v26;
  sub_10009ADF0(v26, v19, &unk_10026EF10, &unk_1001F1FA0);
  v38 = *(v34 + 48);
  if (v38(v19, 1, v2) == 1)
  {
    sub_10008875C(v19, &unk_10026EF10, &unk_1001F1FA0);
    v39 = 1;
    v40 = v79;
  }

  else
  {
    v40 = v79;
    sub_1001C4AA8();
    (*(v34 + 8))(v19, v2);
    v39 = 0;
  }

  v81(v40, v39, 1, v2);
  v82 = sub_1001C69E8();
  v83 = v41;
  v85._countAndFlagsBits = 45;
  v85._object = 0xE100000000000000;
  sub_1001C6138(v85);
  v84 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v86._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v86);

  v43 = v82;
  v42 = v83;
  v44 = v75;
  sub_10009ADF0(v40, v75, &unk_10026EF10, &unk_1001F1FA0);
  v73 = v38;
  v45 = v38(v44, 1, v2);
  v74 = v42;
  v65 = v43;
  if (v45 == 1)
  {
    sub_10008875C(v44, &unk_10026EF10, &unk_1001F1FA0);
    v46 = 1;
    v47 = v78;
  }

  else
  {
    v48 = v67;
    sub_1001C4A98();
    v49 = *(v34 + 8);
    v49(v44, v2);
    v47 = v78;
    sub_1001C4A98();
    v49(v48, v2);
    v40 = v79;
    v46 = 0;
  }

  v81(v47, v46, 1, v2);
  v50 = v76;
  sub_10009ADF0(v47, v76, &unk_10026EF10, &unk_1001F1FA0);
  v51 = v73;
  if (v73(v50, 1, v2) == 1)
  {
    v52 = 0x296C696E28;
    sub_10008875C(v50, &unk_10026EF10, &unk_1001F1FA0);
    LODWORD(v81) = sub_1001C6598();
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1001F0660;
    v54 = v71;
    sub_10009ADF0(v40, v71, &unk_10026EF10, &unk_1001F1FA0);
    if (v51(v54, 1, v2) == 1)
    {
      sub_10008875C(v54, &unk_10026EF10, &unk_1001F1FA0);
      v55 = v68;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v55;
      v56 = 0xE500000000000000;
    }

    else
    {
      v59 = sub_1001C4AF8();
      v56 = v60;
      (*(v80 + 8))(v54, v2);
      v55 = v68;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v55;
      if (v56)
      {
        v52 = v59;
      }

      else
      {
        v56 = 0xE500000000000000;
      }

      v47 = v78;
    }

    v61 = v74;
    *(v53 + 32) = v52;
    *(v53 + 40) = v56;
    *(v53 + 96) = &type metadata for String;
    *(v53 + 104) = v55;
    *(v53 + 72) = v65;
    *(v53 + 80) = v61;
    sub_1001C5118();

    sub_100137428();
    swift_allocError();
    *v62 = 2;
    swift_willThrow();
  }

  else
  {

    v57 = v80;
    v58 = v70;
    (*(v80 + 32))(v70, v50, v2);
    sub_100137AD8();
    (*(v57 + 8))(v58, v2);
  }

  sub_10008875C(v47, &unk_10026EF10, &unk_1001F1FA0);
  sub_10008875C(v40, &unk_10026EF10, &unk_1001F1FA0);
  return sub_10008875C(v77, &unk_10026EF10, &unk_1001F1FA0);
}

uint64_t sub_1001386A8()
{
  v30 = sub_1001C4B28();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v30);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v28 - v5;
  v32 = sub_1001C69E8();
  v33 = v7;
  v34._countAndFlagsBits = 45;
  v34._object = 0xE100000000000000;
  sub_1001C6138(v34);
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v31 = v8;
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v35._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v35);

  sub_1001C4A98();

  v32 = sub_1001C69E8();
  v33 = v9;
  v36._countAndFlagsBits = 45;
  v36._object = 0xE100000000000000;
  sub_1001C6138(v36);
  v31 = v8;
  v37._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v37);

  sub_1001C4A98();

  v10 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v11);
  v13 = v12;
  v32 = 0;
  v14 = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v32];

  if (v14)
  {
    v15 = v32;
    sub_100137E58(v4);
  }

  else
  {
    v16 = v32;
    sub_1001C4A28();

    swift_willThrow();
    LODWORD(v29) = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v28[1] = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001F0660;
    v18 = sub_1001C4AF8();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_100084570();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    swift_getErrorValue();
    v22 = sub_1001C6D98();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    sub_1001C5118();

    swift_willThrow();
  }

  v24 = *(v0 + 8);
  v25 = v4;
  v26 = v30;
  v24(v25, v30);
  return (v24)(v6, v26);
}

void sub_100138A78()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v1 = sub_1001C5FE8();

  v2 = [v0 fileExistsAtPath:v1];

  if (!v2)
  {
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001F0670;
    v19 = sub_1001C4AF8();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100084570();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1001C5118();

    sub_100137428();
    swift_allocError();
    *v22 = 1;
    goto LABEL_10;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001F0660;
  v4 = sub_1001C4AF8();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100084570();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v8 = sub_1001C4AF8();
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 72) = v8;
  *(v3 + 80) = v9;
  sub_1001C5118();

  sub_1001C4A88(v10);
  v12 = v11;
  sub_1001C4A88(v13);
  v15 = v14;
  v29 = 0;
  v16 = [v0 copyItemAtURL:v12 toURL:v14 error:&v29];

  if ((v16 & 1) == 0)
  {
    v23 = v29;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001F0660;
    v25 = sub_1001C4AF8();
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v7;
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    swift_getErrorValue();
    v27 = sub_1001C6D98();
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v7;
    *(v24 + 72) = v27;
    *(v24 + 80) = v28;
    sub_1001C5118();

LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v17 = v29;
  sub_1001C65B8();
  sub_1001C5118();
LABEL_11:
}

uint64_t sub_100138E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v91 = a3;
  v92 = a4;
  v93 = a1;
  v94 = a2;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v83 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v90 = &v82 - v11;
  v12 = __chkstk_darwin(v10);
  v87 = &v82 - v13;
  __chkstk_darwin(v12);
  v15 = &v82 - v14;
  v16 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v85 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v89 = &v82 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v82 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v82 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v82 - v29;
  __chkstk_darwin(v28);
  v32 = &v82 - v31;
  v33 = [objc_opt_self() bu_booksGroupContainerURL];
  if (v33)
  {
    v34 = v33;
    sub_1001C4AD8();

    v35 = v6[7];
    v36 = v30;
    v37 = 0;
  }

  else
  {
    v35 = v6[7];
    v36 = v30;
    v37 = 1;
  }

  v88 = v35;
  v35(v36, v37, 1, v5);
  sub_10009AE58(v30, v32, &unk_10026EF10, &unk_1001F1FA0);
  sub_10009ADF0(v32, v24, &unk_10026EF10, &unk_1001F1FA0);
  v38 = v6[6];
  if (v38(v24, 1, v5) == 1)
  {
    sub_10008875C(v24, &unk_10026EF10, &unk_1001F1FA0);
    v39 = 1;
  }

  else
  {
    sub_1001C4A98();
    v40 = v27;
    v41 = v6;
    v86 = v32;
    v42 = v40;
    v43 = v6[1];
    v43(v24, v5);
    sub_1001C4AA8();
    v43(v15, v5);
    v44 = v42;
    v32 = v86;
    v6 = v41;
    v27 = v44;
    v39 = 0;
  }

  v45 = v90;
  v88(v27, v39, 1, v5);
  v46 = v89;
  sub_10009ADF0(v27, v89, &unk_10026EF10, &unk_1001F1FA0);
  if (v38(v46, 1, v5) == 1)
  {
    v90 = v27;
    sub_10008875C(v46, &unk_10026EF10, &unk_1001F1FA0);
    LODWORD(v89) = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1001F0680;
    v48 = v85;
    sub_10009ADF0(v32, v85, &unk_10026EF10, &unk_1001F1FA0);
    if (v38(v48, 1, v5) == 1)
    {
      sub_10008875C(v48, &unk_10026EF10, &unk_1001F1FA0);
      v49 = 0;
      v50 = 0;
    }

    else
    {
      v49 = sub_1001C4AF8();
      v61 = v5;
      v50 = v62;
      (v6[1])(v48, v61);
    }

    *(v47 + 56) = &type metadata for String;
    v63 = sub_100084570();
    v64 = 0x296C696E28;
    if (v50)
    {
      v64 = v49;
    }

    v65 = 0xE500000000000000;
    if (v50)
    {
      v65 = v50;
    }

    *(v47 + 32) = v64;
    *(v47 + 40) = v65;
    *(v47 + 96) = &type metadata for String;
    *(v47 + 104) = v63;
    v66 = v93;
    v67 = v94;
    *(v47 + 64) = v63;
    *(v47 + 72) = v66;
    *(v47 + 80) = v67;
    *(v47 + 136) = &type metadata for String;
    *(v47 + 144) = v63;
    v68 = v92;
    *(v47 + 112) = v91;
    *(v47 + 120) = v68;

    sub_1001C5118();

    sub_100137428();
    swift_allocError();
    *v69 = 2;
    swift_willThrow();
    v27 = v90;
  }

  else
  {
    v88 = v6;
    v51 = v6[4];
    v52 = v87;
    v51(v87, v46, v5);
    sub_1001C4AA8();
    v53 = [objc_opt_self() defaultManager];
    sub_1001C4A88(v54);
    v56 = v55;
    v95 = 0;
    v57 = [v53 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:&v95];

    if (v57)
    {
      v58 = v95;
      v59 = v83;
      sub_1001C4AA8();
      sub_100138A78();
      v60 = *(v88 + 1);
      v60(v59, v5);
      v60(v45, v5);
      v60(v52, v5);
    }

    else
    {
      v94 = v5;
      v86 = v32;
      v90 = v27;
      v70 = v95;
      sub_1001C4A28();

      swift_willThrow();
      sub_1001C6598();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1001F0660;
      v72 = sub_1001C4AF8();
      v73 = v45;
      v75 = v74;
      *(v71 + 56) = &type metadata for String;
      v76 = sub_100084570();
      *(v71 + 64) = v76;
      *(v71 + 32) = v72;
      *(v71 + 40) = v75;
      swift_getErrorValue();
      v77 = sub_1001C6D98();
      *(v71 + 96) = &type metadata for String;
      *(v71 + 104) = v76;
      *(v71 + 72) = v77;
      *(v71 + 80) = v78;
      sub_1001C5118();

      swift_willThrow();
      v79 = *(v88 + 1);
      v80 = v94;
      v79(v73, v94);
      v79(v87, v80);
      v27 = v90;
      v32 = v86;
    }
  }

  sub_10008875C(v27, &unk_10026EF10, &unk_1001F1FA0);
  return sub_10008875C(v32, &unk_10026EF10, &unk_1001F1FA0);
}

uint64_t sub_100139720(uint64_t a1, uint64_t a2)
{
  v188 = a2;
  v189 = a1;
  v2 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v149 - v4;
  v6 = sub_100084528(&qword_100272518, &qword_1001F55E8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v191 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v149 - v10);
  v193 = sub_100084528(&qword_100272520, &qword_1001F55F0);
  *&v165 = *(v193 - 8);
  v12 = *(v165 + 64);
  __chkstk_darwin(v193);
  v194 = &v149 - v13;
  v14 = sub_100084528(&qword_100272528, &qword_1001F55F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v171 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v170 = &v149 - v19;
  v183 = type metadata accessor for ReadingHistoryMonth(0);
  v20 = *(*(v183 - 8) + 64);
  v21 = __chkstk_darwin(v183);
  v169 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v192 = &v149 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v149 - v26;
  v28 = __chkstk_darwin(v25);
  v161 = &v149 - v29;
  v30 = __chkstk_darwin(v28);
  v162 = &v149 - v31;
  v32 = __chkstk_darwin(v30);
  v160 = &v149 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = &v149 - v35;
  __chkstk_darwin(v34);
  v186 = &v149 - v36;
  v37 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v174 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v178 = &v149 - v42;
  __chkstk_darwin(v41);
  v44 = &v149 - v43;
  v45 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v184 = &v149 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v190 = &v149 - v50;
  v51 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v180 = &v149 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v179 = (&v149 - v55);
  v182 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v150 = *(v182 - 8);
  v56 = *(v150 + 64);
  __chkstk_darwin(v182);
  v58 = &v149 - v57;
  v59 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v181 = v58;
  v187 = v59;
  sub_1001C5B48();
  v176 = (v46 + 48);
  v177 = (v46 + 32);
  v164 = (v46 + 16);
  v173 = (v46 + 56);
  v168 = (v15 + 8);
  v60 = v44;
  v175 = (v46 + 8);
  v159 = (v165 + 8);
  *&v61 = 134217984;
  v165 = v61;
  *&v61 = 134218240;
  v158 = v61;
  *&v61 = 134218242;
  v157 = v61;
  v172 = v14;
  v167 = v44;
  v166 = v45;
  v156 = v5;
  while (1)
  {
    v64 = v180;
    sub_1001C5B08();
    v65 = v179;
    sub_10009AE58(v64, v179, &qword_10026F890, &qword_1001F1480);
    v66 = sub_100084528(&qword_10026F888, &qword_1001F1478);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {
      break;
    }

    v67 = v27;
    v68 = *v65;
    v69 = *(v66 + 48);
    v70 = *v177;
    (*v177)(v190, v65 + v69, v45);
    v189 = v68;
    v196[0] = v68;
    sub_1001C5BA8();
    v71 = v178;
    sub_10009ADF0(v60, v178, &qword_10026F880, &qword_1001F1470);
    if ((*v176)(v71, 1, v45) == 1)
    {
      sub_10008875C(v71, &qword_10026F880, &qword_1001F1470);
      v72 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v73 = qword_1002711E8;
      v74 = os_log_type_enabled(qword_1002711E8, v72);
      v75 = v189;
      if (v74)
      {
        v76 = swift_slowAlloc();
        *v76 = v165;
        *(v76 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v73, v72, "ReadingHistoryBackupManager _restoreModel: %ld missing in destination", v76, 0xCu);
      }

      v62 = v190;
      sub_1001C5D88();
      sub_10013ACE4(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
      v63 = v174;
      sub_1001C5DC8();
      (*v173)(v63, 0, 1, v45);
      v196[0] = v75;
      sub_1001C5BB8();
      sub_10008875C(v60, &qword_10026F880, &qword_1001F1470);
      (*v175)(v62, v45);
      v27 = v67;
    }

    else
    {
      v77 = v27;
      v70(v184, v71, v45);
      sub_1001C5D88();
      sub_1001C5D88();
      sub_10013ACE4(&qword_100272538, type metadata accessor for ReadingHistoryMonth);
      if (sub_1001C5A78())
      {
        v78 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v79 = qword_1002711E8;
        v80 = os_log_type_enabled(qword_1002711E8, v78);
        v81 = v189;
        if (v80)
        {
          v82 = swift_slowAlloc();
          *v82 = v158;
          *(v82 + 4) = v81;
          *(v82 + 12) = 2048;
          *(v82 + 14) = v81;
          _os_log_impl(&_mh_execute_header, v79, v78, "ReadingHistoryBackupManager _restoreModel: backup[%ld] has changes from dest[%ld]", v82, 0x16u);
        }

        v83 = v184;
        sub_1001C5D98();
        v84 = v174;
        (*v164)(v174, v83, v45);
        (*v173)(v84, 0, 1, v45);
        v196[0] = v81;
        sub_1001C5BB8();
      }

      sub_100084528(&qword_100272540, &unk_1001F5610);
      sub_1000885F4(&qword_100272548, &qword_100272540, &unk_1001F5610);
      v85 = v170;
      sub_1001C6448();
      v86 = v171;
      sub_1001C6488();
      sub_1000885F4(&unk_100272550, &qword_100272528, &qword_1001F55F8);
      v87 = v172;
      v88 = sub_1001C5FD8();
      v89 = *v168;
      (*v168)(v86, v87);
      v89(v85, v87);
      if (v88 & 1) != 0 && (sub_1001C6458())
      {
        v163 = v89;
        v90 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v91 = qword_1002711E8;
        v92 = os_log_type_enabled(qword_1002711E8, v90);
        v93 = v162;
        if (v92)
        {
          v94 = swift_slowAlloc();
          *v94 = v165;
          *(v94 + 4) = v189;
          _os_log_impl(&_mh_execute_header, v91, v90, "ReadingHistoryBackupManager _restoreModel: dest[%ld] is possibly pruned", v94, 0xCu);
        }

        v95 = sub_1001C65B8();
        v96 = v185;
        v97 = v160;
        sub_10013AD8C(v185, v160);
        sub_10013AD8C(v96, v93);
        if (os_log_type_enabled(v91, v95))
        {
          v98 = swift_slowAlloc();
          v153 = v98;
          v155 = swift_slowAlloc();
          v196[0] = v155;
          *v98 = v157;
          v99 = v170;
          v100 = v97;
          sub_1001C6448();
          v101 = v171;
          sub_1001C6488();
          v151 = sub_1001C6478();
          v102 = v101;
          v103 = v172;
          LODWORD(v154) = v95;
          v104 = v163;
          v163(v102, v172);
          v104(v99, v103);
          v152 = type metadata accessor for ReadingHistoryMonth;
          sub_10013AD2C(v100, type metadata accessor for ReadingHistoryMonth);
          v105 = v153;
          *(v153 + 4) = v151;
          *(v105 + 12) = 2080;
          v106 = *(v183 + 24);
          sub_100084528(&qword_10026F4E0, &unk_1001F1140);
          sub_1000885F4(&unk_100272560, &qword_10026F4E0, &unk_1001F1140);
          v107 = v162;
          v108 = sub_1001C6CC8();
          v110 = v109;
          sub_10013AD2C(v107, v152);
          v111 = sub_1001874E8(v108, v110, v196);

          *(v105 + 14) = v111;
          _os_log_impl(&_mh_execute_header, v91, v154, "    - backup: #days=%ld, lastDayStreak=%s", v105, 0x16u);
          sub_10008E7BC(v155);
        }

        else
        {
          sub_10013AD2C(v97, type metadata accessor for ReadingHistoryMonth);
          sub_10013AD2C(v93, type metadata accessor for ReadingHistoryMonth);
        }

        v114 = v77;
        v115 = sub_1001C65B8();
        v116 = v186;
        v117 = v161;
        sub_10013AD8C(v186, v161);
        sub_10013AD8C(v116, v77);
        if (os_log_type_enabled(v91, v115))
        {
          v118 = swift_slowAlloc();
          v155 = v91;
          v119 = v118;
          v154 = swift_slowAlloc();
          v196[0] = v154;
          *v119 = v157;
          v120 = v170;
          sub_1001C6448();
          v121 = v171;
          sub_1001C6488();
          v153 = sub_1001C6478();
          v122 = v121;
          v123 = v172;
          v124 = v163;
          v163(v122, v172);
          v124(v120, v123);
          sub_10013AD2C(v117, type metadata accessor for ReadingHistoryMonth);
          *(v119 + 4) = v153;
          *(v119 + 12) = 2080;
          v125 = *(v183 + 24);
          sub_100084528(&qword_10026F4E0, &unk_1001F1140);
          sub_1000885F4(&unk_100272560, &qword_10026F4E0, &unk_1001F1140);
          v126 = sub_1001C6CC8();
          v128 = v127;
          sub_10013AD2C(v77, type metadata accessor for ReadingHistoryMonth);
          v129 = sub_1001874E8(v126, v128, v196);
          v114 = v77;

          *(v119 + 14) = v129;
          _os_log_impl(&_mh_execute_header, v155, v115, "    - dest  : #days=%ld, lastDayStreak=%s", v119, 0x16u);
          sub_10008E7BC(v154);
        }

        else
        {
          sub_10013AD2C(v117, type metadata accessor for ReadingHistoryMonth);
          sub_10013AD2C(v77, type metadata accessor for ReadingHistoryMonth);
        }

        v45 = v166;
        sub_1001C5DB8();
        sub_1001C5B48();
        v130 = v156;
        while (1)
        {
          v131 = v191;
          sub_1001C5B08();
          sub_10009AE58(v131, v11, &qword_100272518, &qword_1001F55E8);
          v132 = sub_100084528(&qword_1002705A0, &unk_1001F9600);
          if ((*(*(v132 - 8) + 48))(v11, 1, v132) == 1)
          {
            break;
          }

          v133 = *v11;
          v134 = *(v132 + 48);
          v135 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
          v136 = *(v135 - 8);
          v137 = v11 + v134;
          v114 = v77;
          (*(v136 + 32))(v130, v137, v135);
          (*(v136 + 56))(v130, 0, 1, v135);
          v196[0] = v133;
          sub_1001C5BB8();
        }

        (*v159)(v194, v193);
        v138 = v114;
        v139 = v183;
        v140 = *(v183 + 24);
        sub_100084528(&qword_10026F4E0, &unk_1001F1140);
        v141 = v185;
        sub_1001C56C8();
        v195 = v196[0];
        v142 = v192;
        v143 = &v192[*(v139 + 24)];
        sub_1001C56D8();
        v144 = v141 + *(v139 + 20);
        sub_1001C56C8();
        v195 = v196[0];
        v145 = v142 + *(v139 + 20);
        sub_1001C56D8();
        sub_10013AD8C(v142, v169);
        sub_10013ACE4(&qword_100272530, type metadata accessor for ReadingHistoryMonth);
        v146 = v174;
        v27 = v138;
        sub_1001C5DC8();
        (*v173)(v146, 0, 1, v45);
        v196[0] = v189;
        sub_1001C5BB8();
        sub_10013AD2C(v142, type metadata accessor for ReadingHistoryMonth);
        sub_10013AD2C(v141, type metadata accessor for ReadingHistoryMonth);
        sub_10013AD2C(v186, type metadata accessor for ReadingHistoryMonth);
        v147 = *v175;
        (*v175)(v184, v45);
        v60 = v167;
        sub_10008875C(v167, &qword_10026F880, &qword_1001F1470);
        v147(v190, v45);
      }

      else
      {
        sub_10013AD2C(v185, type metadata accessor for ReadingHistoryMonth);
        sub_10013AD2C(v186, type metadata accessor for ReadingHistoryMonth);
        v112 = *v175;
        v45 = v166;
        (*v175)(v184, v166);
        v113 = v167;
        sub_10008875C(v167, &qword_10026F880, &qword_1001F1470);
        v112(v190, v45);
        v27 = v77;
        v60 = v113;
      }
    }
  }

  return (*(v150 + 8))(v181, v182);
}

uint64_t sub_10013ACE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013AD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013AD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryMonth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10013ADF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10013AE04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10013AE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10013AEC4(void *a1)
{
  v3 = sub_100084528(&qword_100272588, &qword_1001F5700);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10013B544();
  sub_1001C6E78();
  v10[15] = 0;
  sub_1001C6C88();
  if (!v1)
  {
    v10[14] = 1;
    sub_1001C6C38();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10013B060()
{
  if (*v0)
  {
    result = 0x657474616D726F66;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_10013B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065756C615664)
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

uint64_t sub_10013B184(uint64_t a1)
{
  v2 = sub_10013B544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013B1C0(uint64_t a1)
{
  v2 = sub_10013B544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10013B1FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10013B394(a1);
  if (!v2)
  {
    *a2 = v6;
    a2[1] = result;
    a2[2] = v5;
  }

  return result;
}

uint64_t sub_10013B22C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_10013AEC4(a1);
}

uint64_t sub_10013B24C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 8) == *(a2 + 8) && v3 == v4;
        if (v5 || (sub_1001C6D08() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10013B2B8(uint64_t a1, void *a2)
{
  sub_1001C63C8();
  v7._countAndFlagsBits = 10272;
  v7._object = 0xE200000000000000;
  sub_1001C6138(v7);
  if (a2)
  {
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_1001C6138(v8);
    v9._countAndFlagsBits = 39;
    v9._object = 0xE100000000000000;
    sub_1001C6138(v9);
    v4._countAndFlagsBits = 39;
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
    v4._countAndFlagsBits = 7104878;
  }

  v4._object = v5;
  sub_1001C6138(v4);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  sub_1001C6138(v10);
  return 0;
}

uint64_t sub_10013B394(uint64_t *a1)
{
  v3 = sub_100084528(&qword_100272578, &qword_1001F56F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10009BB74(a1, a1[3]);
  sub_10013B544();
  sub_1001C6E58();
  if (!v1)
  {
    v13 = 0;
    sub_1001C6C08();
    v12 = 1;
    v9 = sub_1001C6BB8();
    (*(v4 + 8))(v7, v3);
  }

  sub_10008E7BC(a1);
  return v9;
}

unint64_t sub_10013B544()
{
  result = qword_100272580;
  if (!qword_100272580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272580);
  }

  return result;
}

unint64_t sub_10013B5AC()
{
  result = qword_100272590;
  if (!qword_100272590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272590);
  }

  return result;
}

unint64_t sub_10013B604()
{
  result = qword_100272598;
  if (!qword_100272598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100272598);
  }

  return result;
}

unint64_t sub_10013B65C()
{
  result = qword_1002725A0;
  if (!qword_1002725A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002725A0);
  }

  return result;
}

id sub_10013B6C0()
{
  result = [objc_allocWithZone(type metadata accessor for CloudSecureManagerService()) init];
  qword_1002818F8 = result;
  return result;
}

uint64_t sub_10013B750()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_1002725B0);
  sub_100083274(v0, qword_1002725B0);
  return sub_1001C5138();
}

void sub_10013B7D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = &v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_dataModelName];
  strcpy(&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_dataModelName], "BDSSecureData");
  *(v10 + 7) = -4864;
  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_saltVersionIdentifierManager] = 0;
  v52 = [objc_opt_self() secureSharedInstance];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = *v10;
  v14 = *(v10 + 1);

  v15 = sub_1001C5FE8();

  v16 = sub_1001C5FE8();
  v17 = [v12 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1001C4AD8();

  v18 = *(v3 + 32);
  v51 = v2;
  v18(v9, v7, v2);
  v19 = objc_allocWithZone(NSManagedObjectModel);
  sub_1001C4A88(v20);
  v22 = v21;
  v23 = [v19 initWithContentsOfURL:v21];

  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_objectModel] = v23;
  v24 = *v10;
  v25 = *(v10 + 1);
  v26 = objc_allocWithZone(BCCloudDataSource);

  v27 = v23;
  v28 = sub_1001C5FE8();

  v29 = [v26 initWithManagedObjectModel:v27 nameOnDisk:v28];

  v30 = OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_secureDataSource;
  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_secureDataSource] = v29;
  type metadata accessor for CloudSecureUserDataMigrator();
  swift_allocObject();
  sub_10013F9DC();
  v31 = *v10;
  v32 = *(v10 + 1);
  v33 = *&v1[v30];

  sub_10013E010(v33);

  v34 = [*&v1[v30] managedObjectContext];
  v35 = objc_allocWithZone(BCCloudChangeTokenController);
  v36 = v52;
  v37 = [v35 initWithMOC:v34 zoneName:@"SecureUserDataZone" cloudKitController:v52];

  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_changeTokenController] = v37;
  v38 = *&v1[v30];
  v39 = objc_allocWithZone(type metadata accessor for CloudSecureEngagementManagerService());
  v40 = v38;
  v41 = v36;
  *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_engagementManagerImpl] = sub_1000C718C(v40, v41);
  v42 = [objc_allocWithZone(BCCloudSecureUserDataManager) initWithCloudDataSource:*&v1[v30] cloudKitController:v41];
  if (v42)
  {
    *&v1[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_userDataManagerImpl] = v42;
    v43 = type metadata accessor for CloudSecureManagerService();
    v53.receiver = v1;
    v53.super_class = v43;
    v44 = objc_msgSendSuper2(&v53, "init");
    v45 = *&v44[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_changeTokenController];
    v46 = v44;
    v47 = v45;
    v48 = [v41 privateCloudDatabaseController];
    v49 = [objc_allocWithZone(BDSSaltVersionIdentifierManager) initWithZoneDataManager:v46 tokenController:v47 databaseController:v48];

    (*(v3 + 8))(v9, v51);
    v50 = *&v46[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_saltVersionIdentifierManager];
    *&v46[OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_saltVersionIdentifierManager] = v49;

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10013BD60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSecureManagerService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013BE58()
{
  v1 = [objc_allocWithZone(NSMutableArray) init];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_userDataManagerImpl)];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_engagementManagerImpl)];
  [v1 copy];
  sub_1001C6888();

  swift_unknownObjectRelease();
  sub_10013C6E8();
  swift_dynamicCast();
  return v3;
}

uint64_t sub_10013BF24()
{
  v1 = [objc_allocWithZone(NSMutableArray) init];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_userDataManagerImpl)];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_engagementManagerImpl)];
  [v1 addObject:*(v0 + OBJC_IVAR____TtC14bookdatastored25CloudSecureManagerService_changeTokenController)];
  [v1 copy];
  sub_1001C6888();

  swift_unknownObjectRelease();
  sub_10013C6E8();
  swift_dynamicCast();
  return v3;
}

void sub_10013C008(uint64_t a1, uint64_t a2)
{
  v4 = sub_10013BE58();
  if (qword_10026EC08 != -1)
  {
    swift_once();
  }

  v5 = sub_1001C5148();
  sub_100083274(v5, qword_1002725B0);
  v6 = v4;
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "CloudSecureManagerService hasSaltChangedWithCompletion with managers:%@", v9, 0xCu);
    sub_1001279FC(v10);
  }

  v13[4] = a1;
  v13[5] = a2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10018CA5C;
  v13[3] = &unk_100249CE8;
  v12 = _Block_copy(v13);

  [v6 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:"hasSaltChangedWithCompletion:" completion:v12];
  _Block_release(v12);
}

void sub_10013C274(void *a1, uint64_t a2)
{
  if (qword_10026EC08 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5148();
  sub_100083274(v4, qword_1002725B0);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureManagerService dissociateCloudDataFromSyncWithCompletion - Service mode", v7, 2u);
  }

  v8 = sub_10013BF24();
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100249C98;
    a1 = _Block_copy(v9);
  }

  [v8 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:"dissociateCloudDataFromSyncWithCompletion:" completion:a1];
  _Block_release(a1);
}

void sub_10013C548(uint64_t a1, uint64_t a2)
{
  if (qword_10026EC08 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5148();
  sub_100083274(v4, qword_1002725B0);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureManagerService deleteCloudDataWithCompletion:", v7, 2u);
  }

  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100249C48;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() deleteCloudDataWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_10013C6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10013C6E8()
{
  result = qword_100272628;
  if (!qword_100272628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100272628);
  }

  return result;
}

uint64_t sub_10013C764()
{
  v1 = v0[32];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_10013C880;
  v2 = swift_continuation_init();
  v0[30] = sub_100084528(&qword_1002726C0, &unk_1001F58E0);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_10013CB0C;
  v0[26] = &unk_100249DC0;
  v0[27] = v2;
  [v1 getPendingNotificationRequestsWithCompletionHandler:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013C880()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10013C960, 0, 0);
}

char *sub_10013C960()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = *(v0 + 248);
    }

    v2 = sub_1001C6B38();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = sub_1000D3814(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_1001C69F8();
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_10013DD80(v5, (v0 + 80));

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_1000D3814((v7 > 1), v8 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    v9 = &_swiftEmptyArrayStorage[13 * v8];
    v10 = *(v0 + 80);
    v11 = *(v0 + 112);
    *(v9 + 3) = *(v0 + 96);
    *(v9 + 4) = v11;
    *(v9 + 2) = v10;
    v12 = *(v0 + 128);
    v13 = *(v0 + 144);
    v14 = *(v0 + 160);
    v9[16] = *(v0 + 176);
    *(v9 + 6) = v13;
    *(v9 + 7) = v14;
    *(v9 + 5) = v12;
  }

  while (v2 != v4);
LABEL_15:

  v16 = *(v0 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_10013CB20(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return _swift_task_switch(sub_10013CB40, 0, 0);
}

uint64_t sub_10013CB40()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = objc_opt_self();
  v4 = *v1;
  v5 = v1[1];
  v6 = sub_1001C5FE8();
  sub_100088714(0, &qword_1002726B0, UNMutableNotificationContent_ptr);
  sub_10008EA78(v1, (v0 + 10));
  v7 = sub_10013DBE4(v1);
  v8 = [v3 requestWithIdentifier:v6 content:v7 trigger:0];
  v0[25] = v8;

  v0[2] = v0;
  v0[3] = sub_10013CCF0;
  v9 = swift_continuation_init();
  v0[17] = sub_100084528(&qword_1002726B8, &unk_1001F58C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013CED4;
  v0[13] = &unk_100249D98;
  v0[14] = v9;
  [v2 addNotificationRequest:v8 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013CCF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10013CE64;
  }

  else
  {
    v3 = sub_10013CE00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10013CE00()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013CE64()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t sub_10013CED4(uint64_t a1, void *a2)
{
  v3 = sub_10009BB74((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100084528(&unk_100270F10, &unk_1001F1F70);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10013CFA0()
{
  v1 = v0[32];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_10013D0BC;
  v2 = swift_continuation_init();
  v0[30] = sub_100084528(&qword_1002726A0, &qword_1001F58B8);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = 1107296256;
  v0[25] = sub_10013D36C;
  v0[26] = &unk_100249D70;
  v0[27] = v2;
  [v1 getDeliveredNotificationsWithCompletionHandler:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013D0BC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10013D19C, 0, 0);
}

char *sub_10013D19C()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v17 = *(v0 + 248);
    }

    v2 = sub_1001C6B38();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = sub_1000D3814(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 80);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1001C69F8();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v6 request];
    sub_10013DD80(v8, v5);

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1000D3814((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    v11 = &_swiftEmptyArrayStorage[13 * v10];
    v12 = *v5;
    v13 = *(v0 + 112);
    *(v11 + 3) = *(v0 + 96);
    *(v11 + 4) = v13;
    *(v11 + 2) = v12;
    v14 = *(v0 + 128);
    v15 = *(v0 + 144);
    v16 = *(v0 + 160);
    v11[16] = *(v0 + 176);
    *(v11 + 6) = v15;
    *(v11 + 7) = v16;
    *(v11 + 5) = v14;
  }

  while (v2 != v4);
LABEL_15:

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10013D380(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v6 = *sub_10009BB74((a1 + 32), *(a1 + 56));
  sub_100088714(0, a3, a4);
  **(*(v6 + 64) + 40) = sub_1001C6298();

  return _swift_continuation_resume(v6);
}

void sub_10013D40C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100089DC8(a4, 0, a2, &type metadata for String, &type metadata for Never, a3, &protocol witness table for Never, a8);
  isa = sub_1001C6288().super.isa;

  [v8 removeDeliveredNotificationsWithIdentifiers:isa];
}

uint64_t sub_10013D4D4()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10013D5F0;
  v2 = swift_continuation_init();
  v0[17] = sub_100084528(&qword_100272698, &qword_1001F58A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10013D780;
  v0[13] = &unk_100249D48;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10013D5F0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10013D6D0, 0, 0);
}

uint64_t sub_10013D6D0()
{
  v1 = *(v0 + 144);
  v2 = [v1 authorizationStatus];
  v3 = [v1 alertSetting];
  v4 = [v1 alertStyle];

  v5 = *(v0 + 8);

  return v5(v2, v3, v4);
}

uint64_t sub_10013D780(uint64_t a1, void *a2)
{
  v3 = sub_10009BB74((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10013D7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013E00C;

  return sub_10013C744();
}

uint64_t sub_10013D89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009AAEC;

  return sub_10013CB20(a1);
}

uint64_t sub_10013D930()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9958;

  return sub_10013CF80();
}

uint64_t sub_10013D9BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013DA48;

  return sub_10013D4B4();
}

uint64_t sub_10013DA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

void sub_10013DB5C()
{
  v0 = objc_allocWithZone(UNUserNotificationCenter);
  v1 = sub_1001C5FE8();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100272690 = v2;
}

id sub_10013DBE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = v2;
  v6 = sub_1001C5FE8();
  [v5 setTitle:v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = sub_1001C5FE8();
  [v5 setSubtitle:v9];

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = sub_1001C5FE8();
  [v5 setBody:v12];

  v19 = *(a1 + 64);

  v13 = sub_1001C5FE8();
  sub_10008EAD4(&v19);
  [v5 setCategoryIdentifier:v13];

  v18 = *(a1 + 80);

  v14 = sub_1001C5FE8();
  sub_10008EB28(&v18);
  [v5 setThreadIdentifier:{v14, v18, v19}];

  v15 = *(a1 + 96);
  isa = sub_1001C5EF8().super.isa;
  sub_10008EA24(a1);
  [v5 setUserInfo:isa];

  return v5;
}

void sub_10013DD80(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1001C6018();
  v37 = v6;
  v38 = v5;

  v7 = [a1 content];
  v8 = [v7 title];

  v9 = sub_1001C6018();
  v35 = v10;
  v36 = v9;

  v11 = [a1 content];
  v12 = [v11 subtitle];

  v13 = sub_1001C6018();
  v33 = v14;
  v34 = v13;

  v15 = [a1 content];
  v16 = [v15 body];

  v17 = sub_1001C6018();
  v19 = v18;

  v20 = [a1 content];
  v21 = [v20 categoryIdentifier];

  v22 = sub_1001C6018();
  v24 = v23;

  v25 = [a1 content];
  v26 = [v25 threadIdentifier];

  v27 = sub_1001C6018();
  v29 = v28;

  v30 = [a1 content];
  v31 = [v30 userInfo];

  v32 = sub_1001C5F08();
  *a2 = v38;
  a2[1] = v37;
  a2[2] = v36;
  a2[3] = v35;
  a2[4] = v34;
  a2[5] = v33;
  a2[6] = v17;
  a2[7] = v19;
  a2[8] = v22;
  a2[9] = v24;
  a2[10] = v27;
  a2[11] = v29;
  a2[12] = v32;
}

void sub_10013E010(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v59 = a1;
  v60 = v3;
  v4 = sub_1001C4B28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10026EC18 != -1)
  {
    swift_once();
  }

  v9 = sub_1001C5148();
  sub_100083274(v9, qword_1002726D0);
  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "migrateIfNecessary()", v12, 2u);
  }

  if (sub_10013E864())
  {
    v13 = sub_1001C5128();
    v14 = sub_1001C65B8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "migrateIfNecessary() needsMigration=true", v15, 2u);
    }

    v16 = [objc_opt_self() standardUserDefaults];
    v17 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    v18 = v2[4];
    v19 = v2[5];
    v20 = sub_1001C5FE8();
    [v16 setObject:v17 forKey:v20];

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v23 = sub_1001C5FE8();
    v24 = sub_1001C5FE8();
    v25 = [v22 URLForResource:v23 withExtension:v24];

    if (v25)
    {
      v57 = v5;
      v58 = v4;
      sub_1001C4AD8();

      v26 = objc_allocWithZone(NSManagedObjectModel);
      sub_1001C4A88(v27);
      v29 = v28;
      v30 = [v26 initWithContentsOfURL:v28];

      if (!v30)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v31 = v2[2];
      v32 = v2[3];
      v33 = objc_allocWithZone(BCCloudDataSource);
      v34 = v30;
      v35 = sub_1001C5FE8();
      v36 = [v33 initWithManagedObjectModel:v34 nameOnDisk:v35];

      v68 = &_swiftEmptyDictionarySingleton;
      v37 = [v36 managedObjectContext];
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = &v68;
      v39 = v60;
      v38[4] = v2;
      v38[5] = v39;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_10013F9AC;
      *(v40 + 24) = v38;
      v66 = sub_10009A564;
      v67 = v40;
      aBlock = _NSConcreteStackBlock;
      v63 = 1107296256;
      v64 = sub_1000906F4;
      v65 = &unk_100249E38;
      v41 = _Block_copy(&aBlock);
      v42 = v37;

      [v42 performBlockAndWait:v41];
      _Block_release(v41);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

      if (v41)
      {
        __break(1u);
      }

      else
      {
        v43 = v68[2];
        v44 = sub_1001C5128();
        v45 = sub_1001C65B8();
        v46 = os_log_type_enabled(v44, v45);
        if (!v43)
        {
          if (v46)
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "migrateIfNecessary() No data to write to new data source", v53, 2u);

            v54 = v34;
            v55 = v42;
          }

          else
          {
            v54 = v44;
            v55 = v36;
            v44 = v42;
            v36 = v34;
          }

          v56 = v58;

          (*(v57 + 8))(v8, v56);
          goto LABEL_20;
        }

        if (v46)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "migrateIfNecessary() migrating data to new data source", v47, 2u);
        }

        v61 = v68;

        v48 = [v59 managedObjectContext];
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = &v61;
        v49[4] = v60;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_10013F9D0;
        *(v50 + 24) = v49;
        v66 = sub_10009B264;
        v67 = v50;
        aBlock = _NSConcreteStackBlock;
        v63 = 1107296256;
        v64 = sub_1000906F4;
        v65 = &unk_100249EB0;
        v51 = _Block_copy(&aBlock);
        v52 = v48;

        [v52 performBlockAndWait:v51];
        _Block_release(v51);

        (*(v57 + 8))(v8, v58);
        LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

        if ((v51 & 1) == 0)
        {

LABEL_20:

          return;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_10013E7E4()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_1002726D0);
  sub_100083274(v0, qword_1002726D0);
  return sub_1001C5138();
}

BOOL sub_10013E864()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = sub_1001C5FE8();
  v5 = [v1 objectForKey:v4];

  if (v5)
  {
    sub_1001C6888();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_100088714(0, &qword_1002712A0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v8 integerValue];

      return v6 < 1;
    }
  }

  else
  {
    sub_100140680(v11);
  }

  return 1;
}

void sub_10013E98C(uint64_t a1, uint64_t *a2)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_1001C5FE8();
  v5 = [v3 initWithEntityName:v4];

  sub_100088714(0, &qword_1002727A8, off_10023DD18);
  v6 = sub_1001C66C8();
  v14 = v6;
  if (v6 >> 62)
  {
    v15 = sub_1001C6B38();
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_40:

    return;
  }

  v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_6:
  v16 = 0;
  v61 = v14 & 0xFFFFFFFFFFFFFF8;
  v62 = v14 & 0xC000000000000001;
  v59 = v14;
  v60 = v5;
  v58 = v15;
  while (1)
  {
    if (v62)
    {
      v19 = sub_1001C69F8();
    }

    else
    {
      if (v16 >= *(v61 + 16))
      {
        goto LABEL_36;
      }

      v19 = *(v14 + 8 * v16 + 32);
    }

    v20 = v19;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v21 = [v19 key];
    if (!v21)
    {
      __break(1u);
LABEL_44:
      sub_1001C6D68();
      __break(1u);
      return;
    }

    v22 = v21;
    v64 = v16 + 1;
    v23 = sub_1001C6018();
    v25 = v24;

    v63 = v20;
    v26 = [v20 value];
    if (!v26)
    {
      v44 = *a2;
      v45 = sub_100187B3C(v23, v25);
      v47 = v46;

      if (v47)
      {
        v48 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = *a2;
        v65[0] = *a2;
        *a2 = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10018B798();
          v50 = v65[0];
        }

        v17 = *(*(v50 + 48) + 16 * v45 + 8);

        v18 = *(*(v50 + 56) + 16 * v45 + 8);

        sub_100140118(v45, v50);
        *a2 = v50;
      }

      goto LABEL_9;
    }

    v27 = v26;
    v28 = sub_1001C6018();
    v30 = v29;

    v31 = *a2;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v65[0] = *a2;
    v33 = v65[0];
    v34 = a2;
    *a2 = 0x8000000000000000;
    v36 = sub_100187B3C(v23, v25);
    v37 = *(v33 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_37;
    }

    v40 = v35;
    if (*(v33 + 24) >= v39)
    {
      if (v32)
      {
        v43 = v65[0];
        if ((v35 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_10018B798();
        v43 = v65[0];
        if ((v40 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_100189D40(v39, v32);
      v41 = sub_100187B3C(v23, v25);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_44;
      }

      v36 = v41;
      v43 = v65[0];
      if ((v40 & 1) == 0)
      {
LABEL_29:
        v43[(v36 >> 6) + 8] |= 1 << v36;
        v53 = (v43[6] + 16 * v36);
        *v53 = v23;
        v53[1] = v25;
        v54 = (v43[7] + 16 * v36);
        *v54 = v28;
        v54[1] = v30;
        v55 = v43[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_38;
        }

        v43[2] = v57;
        goto LABEL_31;
      }
    }

    v51 = (v43[7] + 16 * v36);
    v52 = v51[1];
    *v51 = v28;
    v51[1] = v30;

LABEL_31:
    a2 = v34;
    *v34 = v43;

    v14 = v59;
    v5 = v60;
    v15 = v58;
LABEL_9:
    ++v16;
    if (v64 == v15)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  swift_once();
  v7 = sub_1001C5148();
  sub_100083274(v7, qword_1002726D0);

  swift_errorRetain();
  v8 = sub_1001C5128();
  v9 = sub_1001C6598();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1001874E8(*(v16 + 16), *(v16 + 24), v65);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_1001C6D98();
    v13 = sub_1001874E8(v11, v12, v65);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "migrateIfNecessary() error reading %s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10013EF20(void *a1, uint64_t *a2)
{
  v4 = sub_1001C4CA8();
  v104 = *(v4 - 8);
  v5 = *(v104 + 64);
  __chkstk_darwin(v4);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_1001C5FE8();
  v10 = [v8 initWithEntityName:v9];

  v11 = sub_100088714(0, &qword_1002727A8, off_10023DD18);
  v20 = sub_1001C66C8();
  v108 = v11;
  v106 = a1;
  v102 = v10;
  v103 = v4;
  sub_1001C4C98();
  v107 = v7;
  if (v20 >> 62)
  {
    v21 = sub_1001C6B38();
    v22 = v108;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v108;
    if (v21)
    {
LABEL_7:
      v23 = 0;
      v109 = v20 & 0xFFFFFFFFFFFFFF8;
      v110 = v20 & 0xC000000000000001;
      while (1)
      {
        if (v110)
        {
          v24 = sub_1001C69F8();
        }

        else
        {
          if (v23 >= *(v109 + 16))
          {
            goto LABEL_28;
          }

          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v27 = [v24 key];
        if (!v27)
        {
          goto LABEL_55;
        }

        v28 = v27;
        v29 = sub_1001C6018();
        v31 = v30;

        v32 = *a2;
        if (!*(*a2 + 16))
        {
          break;
        }

        v33 = sub_100187B3C(v29, v31);
        v35 = v34;

        if (v35)
        {
          v36 = (*(v32 + 56) + 16 * v33);
          v37 = *v36;
          v38 = v36[1];

          v39 = sub_1001C5FE8();
          [v25 setValue:v39];

          v25 = v25;
          v40 = [v25 editGeneration];
          if (__OFADD__(v40, 1))
          {
            goto LABEL_29;
          }

          [v25 setEditGeneration:v40 + 1];
          isa = sub_1001C4C38().super.isa;
          [v25 setModificationDate:isa];

          v42 = [v25 key];
          if (!v42)
          {
            goto LABEL_56;
          }

          v43 = v42;

          v44 = sub_1001C6018();
          v46 = v45;

          v47 = *a2;
          v48 = sub_100187B3C(v44, v46);
          LOBYTE(v47) = v49;

          v22 = v108;
          if (v47)
          {
            v50 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = *a2;
            v111 = *a2;
            *a2 = 0x8000000000000000;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10018B798();
              v52 = v111;
            }

            v53 = *(v52[6] + 16 * v48 + 8);

            v54 = *(v52[7] + 16 * v48 + 8);

            sub_100140118(v48, v52);
            *a2 = v52;

            goto LABEL_9;
          }

          goto LABEL_24;
        }

        v22 = v108;
LABEL_9:
        ++v23;
        if (v26 == v21)
        {
          goto LABEL_32;
        }
      }

LABEL_24:

      goto LABEL_9;
    }
  }

LABEL_32:

  v111 = v22;
  sub_100084528(&unk_1002727B0, &unk_1001F5950);
  v105 = sub_1001C6078();
  v56 = *a2;
  v59 = *(*a2 + 64);
  v58 = *a2 + 64;
  v57 = v59;
  v60 = 1 << *(v56 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v57;
  v63 = (v60 + 63) >> 6;
  v108 = v56;
  v109 = v55;

  v64 = 0;
  *&v65 = 136315394;
  v101 = v65;
LABEL_35:
  v66 = v107;
  if (!v62)
  {
    goto LABEL_37;
  }

  do
  {
    v67 = v64;
LABEL_40:
    v68 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v69 = (v67 << 10) | (16 * v68);
    v70 = (v108[6] + v69);
    v72 = *v70;
    v71 = v70[1];
    v73 = (v108[7] + v69);
    v74 = v73[1];
    v110 = *v73;
    v75 = objc_opt_self();

    v76 = sub_1001C5FE8();
    v77 = [v75 insertNewObjectForEntityForName:v76 inManagedObjectContext:v106];

    objc_opt_self();
    v78 = swift_dynamicCastObjCClass();
    if (!v78)
    {
      v84 = v72;

      if (qword_10026EC18 != -1)
      {
        swift_once();
      }

      v85 = sub_1001C5148();
      sub_100083274(v85, qword_1002726D0);

      v86 = sub_1001C5128();
      v87 = sub_1001C6598();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v111 = v100;
        *v88 = v101;

        v89 = sub_1001874E8(v84, v71, &v111);

        *(v88 + 4) = v89;
        *(v88 + 12) = 2080;

        v90 = sub_1001874E8(v110, v74, &v111);

        *(v88 + 14) = v90;
        _os_log_impl(&_mh_execute_header, v86, v87, "migrateIfNecessary() unable to insert key/value pair %s=%s", v88, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v64 = v67;
      goto LABEL_35;
    }

    v79 = v78;

    v80 = sub_1001C5FE8();

    [v79 setKey:v80];

    v81 = sub_1001C5FE8();

    [v79 setValue:v81];

    v82 = v77;
    [v79 setEditGeneration:1];
    v66 = v107;
    v83 = sub_1001C4C38().super.isa;
    [v79 setModificationDate:v83];

    v64 = v67;
  }

  while (v62);
  while (1)
  {
LABEL_37:
    v67 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    if (v67 >= v63)
    {
      break;
    }

    v62 = *(v58 + 8 * v67);
    ++v64;
    if (v62)
    {
      goto LABEL_40;
    }
  }

  v91 = v106;
  if (([v106 hasChanges] & 1) == 0)
  {
    (*(v104 + 8))(v66, v103);

    return;
  }

  v111 = 0;
  v92 = [v91 save:&v111];
  v93 = v103;
  v94 = v104;
  v95 = v102;
  if (v92)
  {
    v96 = *(v104 + 8);
    v97 = v111;
    v96(v66, v93);

    return;
  }

  v98 = v111;
  sub_1001C4A28();

  swift_willThrow();
  (*(v94 + 8))(v66, v93);
  if (qword_10026EC18 != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = sub_1001C5148();
  sub_100083274(v12, qword_1002726D0);
  swift_errorRetain();
  v13 = sub_1001C5128();
  v14 = sub_1001C6598();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v111 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_1001C6D98();
    v19 = sub_1001874E8(v17, v18, &v111);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "migrateIfNecessary() error %s", v15, 0xCu);
    sub_10008E7BC(v16);
  }

  else
  {
  }
}

void *CloudSecureUserDataMigrator.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  return v0;
}

uint64_t CloudSecureUserDataMigrator.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

void sub_10013F9AC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_10013E98C(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_10013F9B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013F9DC()
{
  *(v0 + 16) = 0xD000000000000015;
  *(v0 + 24) = 0x80000001001FDFA0;
  *(v0 + 32) = 0xD000000000000020;
  *(v0 + 40) = 0x80000001001FDFC0;
  *(v0 + 48) = xmmword_1001F58F0;
  *(v0 + 64) = 0x80000001001FDFF0;
  sub_100084528(&qword_10026ECE0, &unk_1001F5960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0680;
  *(inited + 32) = sub_1001C6018();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1001C6018();
  *(inited + 64) = v3;
  *(inited + 72) = 1;
  *(inited + 80) = sub_1001C6018();
  *(inited + 88) = v4;
  *(inited + 96) = 1;
  v5 = sub_100119680(inited);
  swift_setDeallocating();
  sub_100084528(&qword_10026ECE8, &unk_1001F06B0);
  swift_arrayDestroy();
  *(v0 + 72) = v5;
  return v0;
}

uint64_t sub_10013FB1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1001C6DE8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10013FC8C(int64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1001C68D8();
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
      sub_1001406E8();
      v23 = sub_1001C5F88();
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
          v32 = *(*(type metadata accessor for ReadingHistoryDay(0) - 8) + 72);
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

void sub_10013FF8C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1001C6798(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100140118(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1001C6DF8();

      sub_1001C60E8();
      v13 = sub_1001C6E28();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001402C8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_1001C6798(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_100140460(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001C68D8() + 1) & ~v5;
    while (1)
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 24 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_1001C6DF8();

      sub_1001C60E8();
      sub_1001C6E18(v14);
      v15 = sub_1001C6E28();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v16 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = v17 + 24 * v3;
      v19 = (v17 + v9);
      if (24 * v3 < v9 || v18 >= v19 + 24 || v3 != v6)
      {
        v20 = *v19;
        *(v18 + 16) = *(v19 + 2);
        *v18 = v20;
      }

      v21 = *(a2 + 56);
      v22 = *(*(_s14PricingServiceV12FetchedPriceVMa(0) - 8) + 72);
      v23 = v22 * v3;
      result = v21 + v22 * v3;
      v24 = v22 * v6;
      v25 = v21 + v22 * v6 + v22;
      if (v23 < v24 || result >= v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v23 == v24)
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
        goto LABEL_21;
      }
    }

    if (v16 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100140680(uint64_t a1)
{
  v2 = sub_100084528(&qword_10026FCB0, &unk_1001F14E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001406E8()
{
  result = qword_100273170;
  if (!qword_100273170)
  {
    sub_1001C4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273170);
  }

  return result;
}

unint64_t sub_10014074C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = sub_1001C6108();

  sub_1001C6858();
  v11 = v10;

  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  sub_1001C6858();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v14 = (a4 >> 59) & 1;
  v15 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  if ((a5 & 0x1000000000000000) != 0)
  {
    v16 = sub_1001C6188();
  }

  else
  {
    v16 = 0;
    LOBYTE(v14) = 1;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v17 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 << 16;
  if (v14)
  {
    v19 = v18 | 7;
    if ((a5 & 0x1000000000000000) == 0)
    {
      LOBYTE(v20) = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v18 | 0xB;
  }

  v20 = (a4 & 0x800000000000000) >> 59;
LABEL_16:
  v21 = 4 << v15;
  result = v9;
  if ((v9 & 0xC) == 4 << v20)
  {
    v26 = v19;
    result = sub_1000D8E7C(v9, a4, a5);
    v19 = v26;
  }

  if ((v19 & 0xC) == v21)
  {
    v27 = result;
    v19 = sub_1000D8E7C(v19, a4, a5);
    result = v27;
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (v19 >> 16) - (result >> 16);
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_20;
  }

  if (v17 < result >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 >= v19 >> 16)
  {
    result = sub_1001C6188();
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      if ((a3 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(a3) & 0xF;
        v25 = __OFADD__(v16, v24);
        v23 = v16 + v24;
        if (!v25)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v16 + (a2 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v16, a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_26;
        }
      }

      goto LABEL_36;
    }

LABEL_34:
    v28 = result;
    v29 = sub_1001C6158();
    result = v28;
    v25 = __OFADD__(v16, v29);
    v23 = v16 + v29;
    if (!v25)
    {
LABEL_26:
      v25 = __OFADD__(v23, result);
      result += v23;
      if (!v25)
      {
        sub_1001C60C8(result);
LABEL_28:
        sub_1001C6208();
        sub_1000D943C();
        sub_1001C6128();

        sub_1001C6128();
        sub_100144990(v9, a4, a5);
        sub_1001C6128();

        return 0;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_100140A2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100084528(&qword_1002728A8, qword_1001F5AA8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = OBJC_IVAR____TtC14bookdatastored19CRDTModelSyncEntity____lazy_storage___logger;
  swift_beginAccess();
  sub_10014513C(v2 + v11, v10);
  v12 = sub_1001C5148();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_10008875C(v10, &qword_1002728A8, qword_1001F5AA8);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v19, "CRDTModelSync.");
  HIBYTE(v19[1]) = -18;
  v14 = [v2 type];
  v15 = sub_1001C6018();
  v17 = v16;

  v20._countAndFlagsBits = v15;
  v20._object = v17;
  sub_1001C6138(v20);

  sub_1001C5138();
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_1001451AC(v8, v2 + v11);
  return swift_endAccess();
}

uint64_t sub_100140CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v8 = [v3 protoData];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1001C4BA8();
    v12 = v11;

    v13 = a3(v10, v12, a1, a2);
    if (v14 >> 60 != 15)
    {
      v15 = v13;
      v16 = v14;
      if (v12 >> 60 != 15)
      {
        sub_10009AD88(v13, v14);
        sub_10009AD88(v10, v12);
        v17 = sub_100144DE4(v15, v16, v10, v12);
        sub_1000887BC(v10, v12);
        sub_1000887BC(v15, v16);
        if (v17)
        {
          sub_1001450E8();
          swift_allocError();
          *v18 = 1;
          swift_willThrow();
LABEL_11:
          sub_1000887BC(v15, v16);
          return sub_1000887BC(v10, v12);
        }

LABEL_10:
        isa = sub_1001C4B98().super.isa;
        [v4 setProtoData:isa];

        goto LABEL_11;
      }

LABEL_9:
      sub_10009AD88(v15, v16);
      sub_10009AD88(v10, v12);
      sub_1000887BC(v15, v16);
      sub_1000887BC(v10, v12);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0xF000000000000000;
    v19 = a3(0, 0xF000000000000000, a1, a2);
    v10 = 0;
    if (v20 >> 60 != 15)
    {
      v15 = v19;
      v16 = v20;
      goto LABEL_9;
    }
  }

  sub_1001450E8();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return sub_1000887BC(v10, v12);
}

Swift::Void __swiftcall CRDTModelSyncEntity.configure(from:withMergers:)(BCCloudData from, Swift::OpaquePointer_optional withMergers)
{
  v3 = v2;
  privacyDelegate = from._privacyDelegate;
  isa = from.super.super.isa;
  v6 = sub_1001C5148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v135 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v135 - v16;
  __chkstk_darwin(v15);
  v19 = __chkstk_darwin(&v135 - v18);
  v20 = __chkstk_darwin(v19);
  v26 = &v135 - v25;
  if (!privacyDelegate)
  {
    return;
  }

  v147 = v21;
  v145 = v20;
  v142 = v24;
  v143 = v23;
  v144 = v22;
  v148 = isa;
  v27 = [(objc_class *)isa recordType];
  v28 = sub_1001C6018();
  v30 = v29;

  v146 = v28;
  v150 = v28;
  v151 = v30;

  sub_1001C6968();
  if (!*(privacyDelegate + 2) || (v31 = sub_100187A1C(v152), (v32 & 1) == 0))
  {
    sub_10008EB7C(v152);

    return;
  }

  v139 = v17;
  v141 = *(*(privacyDelegate + 7) + 8 * v31);
  _Block_copy(v141);
  sub_10008EB7C(v152);
  v33 = v148;
  swift_getObjectType();
  v34 = swift_conformsToProtocol2();
  if (!v34 || !v33)
  {

    sub_100140A2C(v14);
    v51 = sub_1001C5128();
    v52 = sub_1001C6598();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "CRDTModelSyncEntity configure(from:) wrong class passed in", v53, 2u);
    }

    _Block_release(v141);

    (*(v7 + 8))(v14, v6);
    return;
  }

  v35 = v34;
  v140 = v7;
  v137 = v6;
  swift_unknownObjectRetain();
  v36 = [v3 type];
  v37 = sub_1001C6018();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v138 = v35;
  if (v40)
  {
    v41 = [v3 type];
    v42 = sub_1001C6018();
    v44 = v43;

    ObjectType = swift_getObjectType();
    v46 = *(v35 + 8);
    v135 = ObjectType;
    v47 = v46;
    v136 = (v35 + 8);
    v48 = v46(ObjectType, v35);
    v50 = v147;
    if (v42 == v48 && v44 == v49)
    {
    }

    else
    {
      v55 = sub_1001C6D08();

      if ((v55 & 1) == 0)
      {

        sub_100140A2C(v26);
        swift_unknownObjectRetain();
        v78 = v3;
        v79 = sub_1001C5128();
        v80 = sub_1001C6598();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v152[0] = swift_slowAlloc();
          *v81 = 136315394;
          v82 = (v47)(v135, v138);
          v84 = sub_1001874E8(v82, v83, v152);

          *(v81 + 4) = v84;
          *(v81 + 12) = 2080;
          v85 = [v78 type];
          v86 = sub_1001C6018();
          v88 = v87;

          v89 = sub_1001874E8(v86, v88, v152);

          *(v81 + 14) = v89;
          _os_log_impl(&_mh_execute_header, v79, v80, "CRDTModelSyncEntity incompatible type %s passed in. Expecting %s", v81, 0x16u);
          swift_arrayDestroy();

          _Block_release(v141);
          swift_unknownObjectRelease();
        }

        else
        {
          _Block_release(v141);

          swift_unknownObjectRelease();
        }

        (*(v140 + 8))(v26, v137);
        return;
      }
    }

    v54 = v138;
  }

  else
  {
    v47 = *(v35 + 8);
    v54 = v35;
    v50 = v147;
  }

  v56 = v148;
  v147 = swift_getObjectType();
  (v47)(v147, v54);
  v57 = sub_1001C5FE8();

  [v3 setType:v57];

  swift_unknownObjectRetain();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  v58 = sub_1001C5EF8().super.isa;
  v59 = type metadata accessor for CRDTModelSyncEntity();
  v149.receiver = v3;
  v149.super_class = v59;
  objc_msgSendSuper2(&v149, "configureFromCloudData:withMergers:", v56, v58);
  swift_unknownObjectRelease();

  sub_100140A2C(v50);
  v60 = v3;
  swift_unknownObjectRetain();
  v61 = v60;
  v62 = sub_1001C5128();
  v63 = sub_1001C65B8();
  if (!os_log_type_enabled(v62, v63))
  {

    swift_unknownObjectRelease();
    v62 = v61;
    v66 = v137;
    v77 = v56;
    goto LABEL_41;
  }

  v64 = swift_slowAlloc();
  *v64 = 134218240;
  v65 = [v61 protoData];
  v66 = v137;
  if (!v65)
  {

    v76 = -1;
    goto LABEL_38;
  }

  v67 = v61;
  v68 = v65;
  v69 = sub_1001C4BA8();
  v71 = v70;

  v72 = v71;
  v73 = v71 >> 62;
  if ((v71 >> 62) > 1)
  {
    if (v73 != 2)
    {
      sub_1000887D0(v69, v71);
      v61 = v67;

      v76 = 0;
      goto LABEL_37;
    }

    v91 = *(v69 + 16);
    v90 = *(v69 + 24);
    sub_1000887D0(v69, v72);

    v76 = v90 - v91;
    if (!__OFSUB__(v90, v91))
    {
      v61 = v67;
      goto LABEL_37;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v73)
  {
    sub_1000887D0(v69, v71);
    v61 = v67;

    LODWORD(v76) = HIDWORD(v69) - v69;
    if (!__OFSUB__(HIDWORD(v69), v69))
    {
      v76 = v76;
      goto LABEL_37;
    }

    goto LABEL_70;
  }

  v74 = v69;
  v75 = BYTE6(v71);
  sub_1000887D0(v74, v71);
  v61 = v67;

  v76 = v75;
LABEL_37:
  v66 = v137;
LABEL_38:
  *(v64 + 4) = v76;

  *(v64 + 12) = 2048;
  v92 = (*(v138 + 16))(v147);
  if (v93 >> 60 != 15)
  {
    v122 = v93 >> 62;
    if ((v93 >> 62) > 1)
    {
      goto LABEL_57;
    }

    if (!v122)
    {
      v123 = BYTE6(v93);
      sub_1000887BC(v92, v93);
      v94 = v123;
      goto LABEL_40;
    }

    v133 = HIDWORD(v92);
    v134 = v92;
    sub_1000887BC(v92, v93);
    LODWORD(v94) = v133 - v134;
    if (!__OFSUB__(v133, v134))
    {
      v94 = v94;
      goto LABEL_40;
    }

LABEL_72:
    __break(1u);
    return;
  }

  v94 = -1;
  while (1)
  {
LABEL_40:
    v77 = v148;
    *(v64 + 14) = v94;
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v62, v63, "CRDTModelSyncEntity Merging: existing data (%ld bytes) with incoming data (%ld bytes)", v64, 0x16u);

LABEL_41:

    v95 = *(v140 + 8);
    v140 += 8;
    v136 = v95;
    v95(v50, v66);
    v96 = v77;
    v97 = (*(v138 + 16))(v147);
    v99 = v98;
    v100 = __chkstk_darwin(v97);
    v101 = v146;
    *(&v135 - 4) = v141;
    *(&v135 - 3) = v101;
    *(&v135 - 2) = v30;
    sub_100140CB4(v100, v102, sub_10014521C);

    sub_1000887BC(v97, v99);
    v103 = v145;
    sub_100140A2C(v145);
    swift_unknownObjectRetain();
    v104 = v61;
    v105 = sub_1001C5128();
    v106 = sub_1001C65B8();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v152[0] = swift_slowAlloc();
      *v107 = 136315394;
      v108 = [(objc_class *)v96 recordType];
      v109 = sub_1001C6018();
      v110 = v66;
      v111 = v61;
      v113 = v112;

      v114 = sub_1001874E8(v109, v113, v152);
      v61 = v111;
      v66 = v110;

      *(v107 + 4) = v114;
      *(v107 + 12) = 2080;
      v115 = [v104 debugDescription];
      v116 = sub_1001C6018();
      v118 = v117;

      v119 = sub_1001874E8(v116, v118, v152);

      *(v107 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v105, v106, "CRDTModelSyncEntity Merging: Adopted properties from cloudData: %s %s", v107, 0x16u);
      swift_arrayDestroy();

      v120 = v145;
      v121 = v110;
    }

    else
    {

      v120 = v103;
      v121 = v66;
    }

    v63 = v136;
    v136(v120, v121);
    v124 = v139;
    sub_100140A2C(v139);
    v50 = v61;
    v125 = sub_1001C5128();
    LOBYTE(v126) = sub_1001C65B8();
    if (!os_log_type_enabled(v125, v126))
    {
      swift_unknownObjectRelease();
      _Block_release(v141);

      v125 = v50;
      goto LABEL_65;
    }

    v47 = -1;
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    v127 = [v50 protoData];
    if (!v127)
    {
      break;
    }

    v128 = v127;
    v47 = sub_1001C4BA8();
    v130 = v129;

    v131 = v130;
    v132 = v130 >> 62;
    if ((v130 >> 62) <= 1)
    {
      if (!v132)
      {
        sub_1000887D0(v47, v130);
        v47 = BYTE6(v130);
        break;
      }

      goto LABEL_61;
    }

    if (v132 != 2)
    {
      sub_1000887D0(v47, v130);
      v47 = 0;
      break;
    }

    v30 = *(v47 + 16);
    v62 = *(v47 + 24);
    v92 = sub_1000887D0(v47, v131);
    v47 = v62 - v30;
    if (!__OFSUB__(v62, v30))
    {
      break;
    }

    __break(1u);
LABEL_57:
    if (v122 == 2)
    {
      v126 = *(v92 + 16);
      v125 = *(v92 + 24);
      sub_1000887BC(v92, v93);
      v94 = v125 - v126;
      if (__OFSUB__(v125, v126))
      {
        __break(1u);
LABEL_61:
        sub_1000887D0(v47, v131);
        if (__OFSUB__(HIDWORD(v47), v47))
        {
          goto LABEL_71;
        }

        v47 = HIDWORD(v47) - v47;
        break;
      }
    }

    else
    {
      sub_1000887BC(v92, v93);
      v94 = 0;
    }
  }

  *(v64 + 4) = v47;

  _os_log_impl(&_mh_execute_header, v125, v126, "CRDTModelSyncEntity Merging: merged data (%ld bytes)", v64, 0xCu);

  _Block_release(v141);
  swift_unknownObjectRelease();
  v124 = v139;
LABEL_65:

  v63(v124, v66);
}

Swift::Bool __swiftcall CRDTModelSyncEntity.isEqualExceptForDate(_:ignoringEmptySalt:)(BCCloudData _, Swift::Bool ignoringEmptySalt)
{
  v3 = v2;
  privacyDelegate = _._privacyDelegate;
  isa = _.super.super.isa;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  v7 = 0;
  if (v6 && isa)
  {
    v8 = v6;
    v25.receiver = v3;
    v25.super_class = type metadata accessor for CRDTModelSyncEntity();
    swift_unknownObjectRetain();
    if (objc_msgSendSuper2(&v25, "isEqualExceptForDate:ignoringEmptySalt:", isa, privacyDelegate & 1))
    {
      v9 = [v3 type];
      v10 = sub_1001C6018();
      v12 = v11;

      ObjectType = swift_getObjectType();
      if (v10 == (*(v8 + 8))(ObjectType, v8) && v12 == v14)
      {

        goto LABEL_8;
      }

      v15 = sub_1001C6D08();

      if (v15)
      {
LABEL_8:
        v16 = [v3 protoData];
        if (v16)
        {
          v17 = v16;
          v18 = sub_1001C4BA8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xF000000000000000;
        }

        v22 = (*(v8 + 16))(ObjectType, v8);
        v23 = v21;
        if (v20 >> 60 == 15)
        {
          swift_unknownObjectRelease();
          if (v23 >> 60 == 15)
          {
            sub_1000887BC(v18, v20);
            v7 = 1;
            return v7 & 1;
          }
        }

        else
        {
          if (v21 >> 60 != 15)
          {
            sub_10009AD88(v18, v20);
            sub_10009AD88(v22, v23);
            v7 = sub_100144DE4(v18, v20, v22, v23);
            sub_1000887BC(v22, v23);
            sub_1000887BC(v22, v23);
            sub_1000887BC(v18, v20);
            swift_unknownObjectRelease();
            sub_1000887BC(v18, v20);
            return v7 & 1;
          }

          swift_unknownObjectRelease();
        }

        sub_1000887BC(v18, v20);
        sub_1000887BC(v22, v23);
        v7 = 0;
        return v7 & 1;
      }
    }

    swift_unknownObjectRelease();
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Void __swiftcall CRDTModelSyncEntity.resolveConflicts(from:withResolvers:)(CKRecord from, Swift::OpaquePointer_optional withResolvers)
{
  rawValue = withResolvers.value._rawValue;
  v4 = sub_1001C5148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v85 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v85 - v14;
  __chkstk_darwin(v13);
  v95 = &v85 - v16;
  v17 = sub_1001C4B28();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v85 - v24;
  if (!rawValue)
  {
    return;
  }

  v91 = v15;
  v92 = v12;
  v93 = v9;
  v94 = v23;
  isa = from.super.isa;
  v27 = sub_1001C6758();
  v29 = v28;
  v98 = v27;
  v99 = v28;

  sub_1001C6968();
  if (!rawValue[2] || (v30 = sub_100187A1C(v100), (v31 & 1) == 0))
  {
    sub_10008EB7C(v100);
LABEL_15:

    return;
  }

  v89 = v25;
  v86 = v4;
  v87 = v5;
  v88 = v18;
  v90 = *(rawValue[7] + 8 * v30);
  _Block_copy(v90);
  sub_10008EB7C(v100);
  v32 = sub_1001C6758();
  v34 = v33;
  v35 = [v96 recordType];
  v36 = sub_1001C6018();
  v38 = v37;

  if (v32 == v36 && v34 == v38)
  {
  }

  else
  {
    v39 = sub_1001C6D08();

    if ((v39 & 1) == 0)
    {
LABEL_14:
      _Block_release(v90);
      goto LABEL_15;
    }
  }

  v40 = isa;
  if (!sub_1001C6768())
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v42 = [v41 fileURL];
  if (v42)
  {
    v43 = v42;
    sub_1001C4AD8();

    v44 = v88;
    (*(v88 + 32))(v89, v22, v94);
    sub_100084528(&qword_10026FC80, &qword_1001F5970);
    v45 = sub_1001C5EF8().super.isa;
    v46 = type metadata accessor for CRDTModelSyncEntity();
    v47 = v96;
    v97.receiver = v96;
    v97.super_class = v46;
    objc_msgSendSuper2(&v97, "resolveConflictsFromRecord:withResolvers:", isa, v45);

    v48 = sub_1001C4B48();
    v62 = v61;
    v63 = __chkstk_darwin(v48);
    *(&v85 - 4) = v90;
    *(&v85 - 3) = v27;
    *(&v85 - 2) = v29;
    v64 = v63;
    sub_10009AD9C(v63, v65);
    v85 = v64;
    sub_100140CB4(v64, v62, sub_100144F4C);

    sub_1000887D0(v85, v62);
    v66 = v95;
    sub_100140A2C(v95);
    v67 = isa;
    v68 = v47;
    v69 = sub_1001C5128();
    v70 = sub_1001C65B8();

    if (os_log_type_enabled(v69, v70))
    {
      v72 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v72 = 136315394;
      v73 = [(objc_class *)v67 recordID];
      v74 = [v73 recordName];
      v96 = v62;
      v75 = v74;

      v76 = sub_1001C6018();
      v78 = v77;

      v79 = sub_1001874E8(v76, v78, v100);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = [v68 debugDescription];
      v81 = sub_1001C6018();
      v83 = v82;

      v84 = sub_1001874E8(v81, v83, v100);

      *(v72 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v69, v70, "CRDTModelSyncEntity Resolving: Adopted properties from record: %s %s", v72, 0x16u);
      swift_arrayDestroy();

      _Block_release(v90);

      swift_unknownObjectRelease();
      sub_1000887D0(v85, v96);
      (*(v87 + 8))(v95, v86);
    }

    else
    {
      _Block_release(v90);

      swift_unknownObjectRelease();
      sub_1000887D0(v85, v62);
      (*(v87 + 8))(v66, v86);
    }

    (*(v44 + 8))(v89, v94);
  }

  else
  {

    sub_1001C6598();
    v49 = v96;
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1001F0660;
    v51 = [v49 type];
    v52 = sub_1001C6018();
    v54 = v53;

    *(v50 + 56) = &type metadata for String;
    v55 = sub_100084570();
    *(v50 + 64) = v55;
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v56 = [(objc_class *)v40 recordID];
    v57 = [v56 recordName];

    v58 = sub_1001C6018();
    v60 = v59;

    *(v50 + 96) = &type metadata for String;
    *(v50 + 104) = v55;
    *(v50 + 72) = v58;
    *(v50 + 80) = v60;
    sub_1001C5118();
    swift_unknownObjectRelease();

    _Block_release(v90);
  }
}

uint64_t sub_100143484(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = sub_1001C5FE8();
  v9 = a2;
  v10 = v8;
  if (v9 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001C4B98().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1001C4B98().super.isa;
  }

  v13 = (*(a5 + 16))(a5, v10, isa, v12);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1001C6888();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10008875C(v18, &qword_10026FCB0, &unk_1001F14E0);
    return 0;
  }
}

id CRDTModelSyncEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CRDTModelSyncEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CRDTModelSyncEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRDTModelSyncEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001438C8()
{
  v1 = [v0 type];
  v2 = sub_1001C6018();

  return v2;
}

uint64_t sub_100143920()
{
  v1 = [v0 protoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1001C4BA8();

  return v3;
}

id CRDTModelSyncEntity.mutableCopy()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRDTModelSync();
  result = [objc_allocWithZone(v4) initWithCloudData:v2];
  if (result)
  {
    a1[3] = v4;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRDTModelSyncEntity.debugDescription.getter()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  v1 = objc_msgSendSuper2(&v7, "debugDescription");
  v2 = sub_1001C6018();

  v3 = sub_1001449DC(v0);
  v5 = v4;

  v8._countAndFlagsBits = v3;
  v8._object = v5;
  sub_1001C6138(v8);

  return v2;
}

Swift::String __swiftcall CRDTModelSyncEntity.recordType()()
{
  v1 = [v0 type];
  v2 = sub_1001C6018();
  v4 = v3;

  sub_1001C61E8();
  v5 = sub_1001C6088();
  v7 = v6;

  v8 = sub_10014074C(15, v5, v7, v2, v4);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String_optional __swiftcall CRDTModelSyncEntity.identifier()()
{
  v1 = sub_100144C20(v0);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

NSString CRDTModelSyncEntity.zoneName()()
{
  v1 = [v0 type];
  sub_1001C6018();

  v2 = sub_1001C5FE8();

  return v2;
}

char *sub_100143EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData] = xmmword_1001F1120;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = &v11[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  v13 = *&v11[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8];
  *v12 = a1;
  *(v12 + 1) = a2;
  v14 = v11;

  v15 = &v14[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v16 = *&v14[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v17 = *&v14[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  *v15 = a3;
  *(v15 + 1) = a4;
  sub_1000887BC(v16, v17);

  return v14;
}

id sub_100143FC0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v2[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  *&v2[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData] = xmmword_1001F1120;
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7 && a1)
  {
    v8 = v7;
    v9 = swift_getObjectType();
    v26.receiver = v2;
    v26.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v26, "initWithCloudData:", a1);
    if (v10)
    {
      v11 = *(v8 + 8);
      v12 = v10;
      v13 = v10;
      v14 = v11(v9, v8);
      v15 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
      v16 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8];
      *v15 = v14;
      v15[1] = v17;

      v18 = (*(v8 + 16))(v9, v8);
      v20 = v19;
      swift_unknownObjectRelease();
      v21 = &v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v22 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v23 = *&v13[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
      *v21 = v18;
      v21[1] = v20;
      sub_1000887BC(v22, v23);

      return v12;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v25 = *(v5 + 1);

    sub_1000887BC(*v6, *(v6 + 1));
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t sub_10014429C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v2 = *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8);

  return v1;
}

uint64_t sub_1001442D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData);
  sub_10009AD88(v1, *(v0 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8));
  return v1;
}

uint64_t sub_100144584@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1001C48B8();
    if (v10)
    {
      v11 = sub_1001C48E8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1001C48D8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1001C48B8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1001C48E8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1001C48D8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001447B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100144D2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000887D0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100144584(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000887D0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t type metadata accessor for CRDTModelSyncEntity()
{
  result = qword_100272850;
  if (!qword_100272850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100144990(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1001C6208();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001449DC(void *a1)
{
  sub_1001C69C8(23);

  v2 = [a1 type];
  v3 = sub_1001C6018();
  v5 = v4;

  v14._countAndFlagsBits = v3;
  v14._object = v5;
  sub_1001C6138(v14);

  v15._countAndFlagsBits = 0x446F746F7270202CLL;
  v15._object = 0xED0000203A617461;
  sub_1001C6138(v15);
  v6 = [a1 protoData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1001C4BA8();
    v10 = v9;

    sub_1000887D0(v8, v10);
    v11 = 0xE300000000000000;
    v12._countAndFlagsBits = 7562617;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12._countAndFlagsBits = 1701736302;
  }

  v12._object = v11;
  sub_1001C6138(v12);

  return 0x203A65707974;
}

uint64_t sub_100144B18(uint64_t a1)
{
  sub_1001C69C8(23);

  v2 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v3 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8);

  v7._countAndFlagsBits = v2;
  v7._object = v3;
  sub_1001C6138(v7);

  v8._countAndFlagsBits = 0x446F746F7270202CLL;
  v8._object = 0xED0000203A617461;
  sub_1001C6138(v8);
  if (*(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v4._countAndFlagsBits = 1701736302;
  }

  else
  {
    v4._countAndFlagsBits = 7562617;
  }

  if (*(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8) >> 60 == 15)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v4._object = v5;
  sub_1001C6138(v4);

  return 0x203A65707974;
}

uint64_t sub_100144C20(void *a1)
{
  v2 = [a1 type];
  v3 = sub_1001C6018();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 type];
  v8 = sub_1001C6018();

  return v8;
}

uint64_t sub_100144CD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v2 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8);

  return v1;
}

uint64_t sub_100144D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1001C48B8();
  v11 = result;
  if (result)
  {
    result = sub_1001C48E8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1001C48D8();
  sub_100144584(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100144DE4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10009AD9C(a3, a4);
          return sub_1001447B4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100144F4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4[3];
  v6 = v4[4];
  return sub_100143484(a1, a2, a3, a4, v4[2]);
}

void sub_100144F98()
{
  sub_100145028();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100145028()
{
  if (!qword_100272860)
  {
    sub_1001C5148();
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100272860);
    }
  }
}

unint64_t sub_100145094()
{
  result = qword_1002728A0;
  if (!qword_1002728A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002728A0);
  }

  return result;
}

unint64_t sub_1001450E8()
{
  result = qword_1002728C0;
  if (!qword_1002728C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002728C0);
  }

  return result;
}

uint64_t sub_10014513C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002728A8, qword_1001F5AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001451AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002728A8, qword_1001F5AA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100145220@<X0>(uint64_t a1@<X8>)
{
  sub_1001C6E38();

  sub_1001C6A18();
  v2 = enum case for DecodingError.dataCorrupted(_:);
  v3 = sub_1001C6A28();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PBPropertyValue.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PBPropertyValue.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v7 + 28), v6, &qword_1002705B8, &unk_1001F2BE0);
  v8 = sub_1001C4EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1001C4ED8();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_10008875C(v6, &qword_1002705B8, &unk_1001F2BE0);
  }

  return result;
}

uint64_t PBPropertyBundle.configuration.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PBPropertyBundle(0);
  sub_10009ADF0(v1 + *(v7 + 28), v6, &qword_1002705A8, &unk_1001F5200);
  v8 = type metadata accessor for PBPropertyConfiguration(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_100146E08(v6, a1, type metadata accessor for PBPropertyConfiguration);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  v10 = a1 + *(v8 + 32);
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_10008875C(v6, &qword_1002705A8, &unk_1001F5200);
  }

  return result;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_10009ADF0(v1 + *(v7 + 24), v6, &qword_1002705B8, &unk_1001F2BE0);
  v8 = sub_1001C4EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1001C4ED8();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_10008875C(v6, &qword_1002705B8, &unk_1001F2BE0);
  }

  return result;
}

uint64_t PBPropertyTimeSlice.init()@<X0>(char *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for PBPropertyTimeSlice(0);
  v3 = &a1[*(v2 + 20)];
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v4 = *(v2 + 24);
  v5 = sub_1001C4EE8();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

BOOL PBPropertyTimeSlice.hasStartOfTimeSlice.getter()
{
  v1 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_10009ADF0(v0 + *(v5 + 24), v4, &qword_1002705B8, &unk_1001F2BE0);
  v6 = sub_1001C4EE8();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_10008875C(v4, &qword_1002705B8, &unk_1001F2BE0);
  return v7;
}

uint64_t PBPropertyTimeSlice.startOfTimeSlice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_10008875C(v1 + v3, &qword_1002705B8, &unk_1001F2BE0);
  v4 = sub_1001C4EE8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PBPropertyBundle.init()@<X0>(char *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 1) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for PBPropertyBundle(0);
  v3 = &a1[*(v2 + 24)];
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for PBPropertyConfiguration(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t PBPropertyBundle.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  sub_10008875C(v1 + v3, &qword_1002705A8, &unk_1001F5200);
  sub_100146E08(a1, v1 + v3, type metadata accessor for PBPropertyConfiguration);
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t sub_100145B78@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_100145B90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int sub_100145BAC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100145C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100151F5C();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100145C64()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t static MarkedAsFinishedMechanism.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static MarkedAsFinishedMechanism.allCases = a1;
}

uint64_t sub_100145DC8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static MarkedAsFinishedMechanism.allCases;
}

uint64_t PBPropertyConfiguration.eventName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PBPropertyConfiguration.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PBPropertyConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v4 = sub_1001C4F18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PBPropertyConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  v4 = sub_1001C4F18();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PBPropertyConfiguration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  v1 = a1 + *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyNoParams.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001C4F18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PBPropertyNoParams.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1001C4F18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PBPropertySingleFloatParam.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyBookReadParams.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  v1 = a1 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100146378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100146434(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PBPropertyBookImpressionParam.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyMarkedAsFinishedParam.value.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.value.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PBPropertyMarkedAsFinishedParam.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t PBPropertyValue.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PBPropertyValue(0) + 28);
  sub_10008875C(v1 + v3, &qword_1002705B8, &unk_1001F2BE0);
  v4 = sub_1001C4EE8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*PBPropertyValue.createdAt.modify(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B8, &unk_1001F2BE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = sub_1001C4EE8();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for PBPropertyValue(0) + 28);
  *(v4 + 12) = v14;
  sub_10009ADF0(v1 + v14, v7, &qword_1002705B8, &unk_1001F2BE0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1001C4ED8();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10008875C(v7, &qword_1002705B8, &unk_1001F2BE0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_10014690C;
}

uint64_t PBPropertyValue.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*PBPropertyValue.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for PBPropertyValue(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100146A80;
}

void sub_100146A80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall PBPropertyValue.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for PBPropertyValue(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t PBPropertyValue.params.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PBPropertyValue(0) + 20);

  return sub_100146BCC(a1, v3);
}

uint64_t sub_100146BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PBPropertyValue.noParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v7 + 20), v6, &qword_1002705B0, &qword_1001F2BD8);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10008875C(v6, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_100146E08(v6, a1, type metadata accessor for PBPropertyNoParams);
    }

    sub_100147104(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100146E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*PBPropertyValue.noParams.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for PBPropertyNoParams(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  v11 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v11;
  sub_10009ADF0(v1 + v11, v7, &qword_1002705B0, &qword_1001F2BD8);
  v12 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100146E08(v7, v10, type metadata accessor for PBPropertyNoParams);
      return sub_1001470C0;
    }

    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  return sub_1001470C0;
}

uint64_t sub_100147104(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PBPropertyValue.floatParam.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v7 + 20), v6, &qword_1002705B0, &qword_1001F2BD8);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10008875C(v6, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_100146E08(v6, a1, type metadata accessor for PBPropertySingleFloatParam);
    }

    sub_100147104(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.floatParam.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PBPropertySingleFloatParam(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v12;
  sub_10009ADF0(v1 + v12, v7, &qword_1002705B0, &qword_1001F2BD8);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v11 = 0;
    v15 = v11 + *(v8 + 20);
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_100147528;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v11, type metadata accessor for PBPropertySingleFloatParam);
  return sub_100147528;
}

uint64_t sub_10014756C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PBPropertyValue.bookReadParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v7 + 20), v6, &qword_1002705B0, &qword_1001F2BD8);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10008875C(v6, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_100146E08(v6, a1, type metadata accessor for PBPropertyBookReadParams);
    }

    sub_100147104(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  v10 = a1 + *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.bookReadParams.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v9 = *(*(Params - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(Params - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v12;
  sub_10009ADF0(v1 + v12, v7, &qword_1002705B0, &qword_1001F2BD8);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v11 = 0;
    *(v11 + 4) = 0;
    v15 = v11 + *(Params + 24);
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_1001479A0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v11, type metadata accessor for PBPropertyBookReadParams);
  return sub_1001479A0;
}

uint64_t PBPropertyValue.markedAsFinishedParam.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v7 + 20), v6, &qword_1002705B0, &qword_1001F2BD8);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10008875C(v6, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_100146E08(v6, a1, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    }

    sub_100147104(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = a1 + *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

void (*PBPropertyValue.markedAsFinishedParam.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v12;
  sub_10009ADF0(v1 + v12, v7, &qword_1002705B0, &qword_1001F2BD8);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    v15 = v11 + *(v8 + 20);
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_100147DB8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v11, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  return sub_100147DB8;
}

uint64_t PBPropertyValue.bookImpressionParam.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PBPropertyValue(0);
  sub_10009ADF0(v1 + *(v7 + 20), v6, &qword_1002705B0, &qword_1001F2BD8);
  v8 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10008875C(v6, &qword_1002705B0, &qword_1001F2BD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_100146E08(v6, a1, type metadata accessor for PBPropertyBookImpressionParam);
    }

    sub_100147104(v6, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  *a1 = 0;
  v10 = &a1[*(type metadata accessor for PBPropertyBookImpressionParam(0) + 20)];
  return _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
}

uint64_t sub_100147F90(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for PBPropertyValue(0) + 20);
  sub_10008875C(v2 + v5, &qword_1002705B0, &qword_1001F2BD8);
  sub_100146E08(a1, v2 + v5, a2);
  v6 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*PBPropertyValue.bookImpressionParam.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705B0, &qword_1001F2BD8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  v12 = *(type metadata accessor for PBPropertyValue(0) + 20);
  *(v4 + 12) = v12;
  sub_10009ADF0(v1 + v12, v7, &qword_1002705B0, &qword_1001F2BD8);
  v13 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_10008875C(v7, &qword_1002705B0, &qword_1001F2BD8);
LABEL_15:
    *v11 = 0;
    v15 = &v11[*(v8 + 20)];
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    return sub_10014828C;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100147104(v7, type metadata accessor for PBPropertyValue.OneOf_Params);
    goto LABEL_15;
  }

  sub_100146E08(v7, v11, type metadata accessor for PBPropertyBookImpressionParam);
  return sub_10014828C;
}

void sub_1001482D0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_10014756C(v12, v11, a5);
    sub_10008875C(v13 + v10, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_100147104(v12, a6);
  }

  else
  {
    sub_10008875C(v13 + v10, &qword_1002705B0, &qword_1001F2BD8);
    sub_100146E08(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t sub_100148450@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001484EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1001C4F18();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static PBPropertyNoParams.== infix(_:_:)()
{
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t static PBPropertySingleFloatParam.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBPropertySingleFloatParam(0) + 20);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t static PBPropertyBookReadParams.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBPropertyBookReadParams(0) + 24);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t static PBPropertyBookImpressionParam.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for PBPropertyBookImpressionParam(0) + 20);
  sub_1001C4F18();
  sub_100151F14(&qword_100272938, &type metadata accessor for UnknownStorage);
  return sub_1001C5FD8() & 1;
}

uint64_t PBPropertyValue.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = v2[5];
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v6 = v2[7];
  v7 = sub_1001C4EE8();
  result = (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v9 = &a1[v2[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  return result;
}

void (*PBPropertyBundle.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100084528(&qword_1002705A8, &unk_1001F5200) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for PBPropertyConfiguration(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  *(v4 + 12) = v14;
  sub_10009ADF0(v1 + v14, v7, &qword_1002705A8, &unk_1001F5200);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    v16 = v13 + *(v8 + 32);
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_10008875C(v7, &qword_1002705A8, &unk_1001F5200);
    }
  }

  else
  {
    sub_100146E08(v7, v13, type metadata accessor for PBPropertyConfiguration);
  }

  return sub_100148B4C;
}

void sub_100148B4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_10014756C((*a1)[5], v4, type metadata accessor for PBPropertyConfiguration);
    sub_10008875C(v9 + v3, &qword_1002705A8, &unk_1001F5200);
    sub_100146E08(v4, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_100147104(v5, type metadata accessor for PBPropertyConfiguration);
  }

  else
  {
    sub_10008875C(v9 + v3, &qword_1002705A8, &unk_1001F5200);
    sub_100146E08(v5, v9 + v3, type metadata accessor for PBPropertyConfiguration);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_100148CF0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100084528(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_10009ADF0(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_10008875C(v12, a1, a2);
  return v15;
}