uint64_t sub_100097144(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - v5;
  v7 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &aBlock[-1] - v9;
  v11 = type metadata accessor for CRDTModelRevisionInfo();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a1, v10, &unk_10026F410, &unk_1001F0E40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = &unk_10026F410;
    v17 = &unk_1001F0E40;
    v18 = v10;
    return sub_10008875C(v18, v16, v17);
  }

  sub_10009B13C(v10, v15, type metadata accessor for CRDTModelRevisionInfo);
  v19 = qword_10026FB20;
  v20 = *(*(v1 + qword_10026FB20) + 16);

  v21 = v1;
  sub_1001C6688();

  v22 = *(v3 + 52);
  sub_10008875C(&v6[v22], &unk_10026F410, &unk_1001F0E40);
  sub_10009B074(v15, &v6[v22], type metadata accessor for CRDTModelRevisionInfo);
  v23 = (*(v12 + 56))(&v6[v22], 0, 1, v11);
  v24 = *(v21 + v19);
  __chkstk_darwin(v23);
  *(&v30 - 2) = v6;
  v25 = *(v24 + 16);
  v26 = swift_allocObject();
  v26[2] = sub_10009B258;
  v26[3] = &v30 - 4;
  v26[4] = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10009B304;
  *(v27 + 24) = v26;
  aBlock[4] = sub_10009B264;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243118;
  v28 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v25, v28);
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    sub_10009B0DC(v15, type metadata accessor for CRDTModelRevisionInfo);
    v16 = &unk_10026F420;
    v17 = &unk_1001F0E50;
    v18 = v6;
    return sub_10008875C(v18, v16, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009756C(uint64_t a1, char *a2, uint64_t a3)
{
  v111 = a3;
  v114 = a1;
  v4 = sub_1001C5AC8();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = *(v105 + 64);
  __chkstk_darwin(v4);
  v104 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_100084528(&unk_10026F480, &qword_1001F0E88);
  v7 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v101 = &v95[-v8];
  v9 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v108 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v95[-v13];
  v15 = type metadata accessor for ReadingHistoryModel(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v110 = &v95[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v95[-v23];
  __chkstk_darwin(v22);
  v26 = &v95[-v25];
  v112 = qword_10026FB20;
  v27 = *(*&a2[qword_10026FB20] + 16);

  v109 = v9;
  sub_1001C6688();

  sub_10009B074(v14, v26, type metadata accessor for ReadingHistoryModel);
  v107 = v14;
  v28 = v114;
  sub_10008875C(v14, &unk_10026F420, &unk_1001F0E50);
  sub_10009A514(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v103 = v15;
  LOBYTE(v15) = sub_1001C5C38();
  sub_10009B0DC(v26, type metadata accessor for ReadingHistoryModel);
  v113 = qword_1002818C0;
  if (v15)
  {
    sub_10009B074(v28, v24, type metadata accessor for ReadingHistoryModel);
    sub_10009B074(v28, v110, type metadata accessor for ReadingHistoryModel);
    v29 = a2;
    v30 = sub_1001C5128();
    v31 = sub_1001C65B8();
    v99 = v29;

    v32 = a2;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      aBlock[0] = v98;
      *v33 = 136315650;
      v97 = v30;
      v34 = ReadingHistoryModel.description.getter();
      v100 = a2;
      v36 = v35;
      sub_10009B0DC(v24, type metadata accessor for ReadingHistoryModel);
      v37 = sub_1001874E8(v34, v36, aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = v112;
      v39 = *(*&v100[v112] + 16);

      v96 = v31;
      v40 = v107;
      v41 = v109;
      sub_1001C6688();

      sub_10009B074(v40, v26, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v40, &unk_10026F420, &unk_1001F0E50);
      v42 = ReadingHistoryModel.description.getter();
      v44 = v43;
      sub_10009B0DC(v26, type metadata accessor for ReadingHistoryModel);
      v45 = sub_1001874E8(v42, v44, aBlock);

      *(v33 + 14) = v45;
      *(v33 + 22) = 2080;
      v46 = *(*&v100[v38] + 16);

      sub_1001C6688();
      v47 = v41;

      sub_10009B074(v40, v26, type metadata accessor for ReadingHistoryModel);
      v32 = v100;
      sub_10008875C(v40, &unk_10026F420, &unk_1001F0E50);
      sub_10009A514(&qword_10026F490, type metadata accessor for ReadingHistoryModel);
      v48 = v110;
      sub_1001C5CB8();
      sub_10009B0DC(v26, type metadata accessor for ReadingHistoryModel);
      v49 = sub_1001C6098();
      v51 = v50;
      sub_10009B0DC(v48, type metadata accessor for ReadingHistoryModel);
      v52 = v49;
      v53 = v112;
      v54 = sub_1001874E8(v52, v51, aBlock);

      *(v33 + 24) = v54;
      v55 = v97;
      _os_log_impl(&_mh_execute_header, v97, v96, "CRDTModelSyncManager resolveConflictsFor: merging resolved model: incoming=%s vs existing=%s with delta=%s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10009B0DC(v110, type metadata accessor for ReadingHistoryModel);
      sub_10009B0DC(v24, type metadata accessor for ReadingHistoryModel);
      v47 = v109;
      v53 = v112;
    }

    v71 = *(*&v32[v53] + 16);

    v72 = v108;
    sub_1001C6688();
    v110 = 0;

    sub_10009A514(&unk_10026FC60, type metadata accessor for ReadingHistoryModel);
    v73 = v104;
    v74 = v114;
    sub_1001C5AB8();
    (*(v105 + 8))(v73, v106);
    v75 = *(v47 + 48);
    sub_10008875C(&v72[v75], &unk_10026FC40, &qword_1001F0E90);
    sub_10009B074(v74, &v72[v75], type metadata accessor for ReadingHistoryModel);
    v76 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    (*(*(v76 - 8) + 56))(&v72[v75], 0, 2, v76);
    v77 = sub_10009AFA8(v111, &v72[*(v47 + 52)]);
    v78 = *&v32[v53];
    __chkstk_darwin(v77);
    *&v95[-16] = v72;
    v79 = *(v78 + 16);
    v80 = swift_allocObject();
    v80[2] = sub_10009B018;
    v80[3] = &v95[-32];
    v80[4] = v78;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_10009B304;
    *(v81 + 24) = v80;
    aBlock[4] = sub_10009B264;
    aBlock[5] = v81;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_1002430A0;
    v82 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v79, v82);
    _Block_release(v82);
    LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

    if (v79)
    {
      __break(1u);
    }

    else
    {
      v84 = v99;
      v85 = sub_1001C5128();
      v86 = sub_1001C65B8();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        aBlock[0] = v88;
        *v87 = 136315138;
        v89 = *(*&v32[v112] + 16);

        v90 = v107;
        sub_1001C6688();

        sub_10009B074(v90, v26, type metadata accessor for ReadingHistoryModel);
        sub_10008875C(v90, &unk_10026F420, &unk_1001F0E50);
        v91 = ReadingHistoryModel.description.getter();
        v93 = v92;
        sub_10009B0DC(v26, type metadata accessor for ReadingHistoryModel);
        v94 = sub_1001874E8(v91, v93, aBlock);

        *(v87 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v85, v86, "CRDTModelSyncManager resolveConflictsFor: resolved model=%s", v87, 0xCu);
        sub_10008E7BC(v88);
      }

      return sub_10008875C(v108, &unk_10026F420, &unk_1001F0E50);
    }
  }

  else
  {
    sub_10009B074(v28, v19, type metadata accessor for ReadingHistoryModel);
    v56 = a2;
    v57 = sub_1001C5128();
    v58 = sub_1001C65B8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v114 = v56;
      v60 = v59;
      v113 = swift_slowAlloc();
      aBlock[0] = v113;
      *v60 = 136315394;
      LODWORD(v110) = v58;
      v61 = ReadingHistoryModel.description.getter();
      v63 = v62;
      sub_10009B0DC(v19, type metadata accessor for ReadingHistoryModel);
      v64 = sub_1001874E8(v61, v63, aBlock);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      v65 = *(*&a2[v112] + 16);

      v66 = v107;
      sub_1001C6688();

      sub_10009B074(v66, v26, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v66, &unk_10026F420, &unk_1001F0E50);
      v67 = ReadingHistoryModel.description.getter();
      v69 = v68;
      sub_10009B0DC(v26, type metadata accessor for ReadingHistoryModel);
      v70 = sub_1001874E8(v67, v69, aBlock);

      *(v60 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v57, v110, "CRDTModelSyncManager resolveConflictsFor: incoming=%s has no delta from existing=%s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10009B0DC(v19, type metadata accessor for ReadingHistoryModel);
    }

    return sub_100097144(v111);
  }

  return result;
}

uint64_t sub_1000982D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_100098354(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v17 = sub_1001C6668();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C6638();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_1001C5688();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v16[1] = "DataStoreService";
  v16[2] = v11;
  sub_1001C5668();
  v19 = &_swiftEmptyArrayStorage;
  sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v12 = *(v3 + 104);
  v13 = v17;
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v1[2] = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  v1[3] = sub_1001C66A8();
  v1[4] = &_swiftEmptyDictionarySingleton;
  v14 = v2 + *(*v2 + 128);
  *(v14 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v14 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_10009AE58(v18, v2 + *(*v2 + 120), &unk_10026F420, &unk_1001F0E50);
  return v2;
}

void *sub_1000986B8(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v17 = sub_1001C6668();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C6638();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_1001C5688();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v16[1] = "DataStoreService";
  v16[2] = v11;
  sub_1001C5668();
  v19 = &_swiftEmptyArrayStorage;
  sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v12 = *(v3 + 104);
  v13 = v17;
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v1[2] = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v12(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  v1[3] = sub_1001C66A8();
  v1[4] = &_swiftEmptyDictionarySingleton;
  v14 = v2 + *(*v2 + 128);
  *(v14 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v14 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_10009B13C(v18, v2 + *(*v2 + 120), type metadata accessor for CRDTModelSyncVersion);
  return v2;
}

uint64_t sub_100098A20(uint64_t a1, int a2, double a3)
{
  v20 = a2;
  v19 = a1;
  v18 = sub_1001C6668();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C6638();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_1001C5688();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v17[0] = "DataStoreService";
  v17[1] = v13;
  sub_1001C5668();
  v21 = &_swiftEmptyArrayStorage;
  sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v14 = *(v5 + 104);
  v15 = v18;
  v14(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *(v3 + 16) = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v14(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  *(v3 + 24) = sub_1001C66A8();
  *(v3 + 32) = &_swiftEmptyDictionarySingleton;
  *(v3 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v3 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 40) = v19;
  *(v3 + 48) = a3;
  *(v3 + 56) = v20;
  return v3;
}

void sub_100098D64()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_10026F338, &unk_1001F0D10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_1001C6788();

  sub_1001C4A68();
  v7 = objc_allocWithZone(NSManagedObjectModel);
  sub_1001C4A88(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_100098F00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4();
    return;
  }

  v8 = Strong;
  if (a2)
  {
    swift_errorRetain();
    v9 = sub_1001C5128();
    v10 = sub_1001C6598();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1001C6D98();
      v15 = sub_1001874E8(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "CRDTModelCloudDataManager cloudData: couldn't load existing data: %s", v11, 0xCu);
      sub_10008E7BC(v12);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    type metadata accessor for CRDTModelSync();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      (a4)(v17);

      swift_unknownObjectRelease();
      return;
    }

    v18 = sub_1001C5128();
    LOBYTE(v19) = sub_1001C6598();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: loaded existing data with the wrong type";
    goto LABEL_14;
  }

  v18 = sub_1001C5128();
  v19 = sub_1001C65B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: no existing data";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
  }

LABEL_15:

LABEL_16:
  (a4)(0);
}

uint64_t sub_1000991BC(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_10009B1F8, v5);
}

uint64_t sub_100099250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_10008875C(a1, &unk_10026F420, &unk_1001F0E50);
  swift_beginAccess();
  sub_10009B074(a2, a1, type metadata accessor for ReadingHistoryModel);
  v10 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v11 = v10[12];
  v12 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v12 - 8) + 56))(a1 + v11, 2, 2, v12);
  sub_10009ADF0(a3, v9, &unk_10026F410, &unk_1001F0E40);
  v13 = v10[13];
  v14 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  *(a1 + v10[11]) = 1;
  return sub_10009AC98(v9, a1 + v13);
}

char *sub_100099410(void *a1, void *a2, void *a3, char *a4)
{
  v87 = a4;
  v94 = a1;
  v95 = a3;
  v91 = a2;
  ObjectType = swift_getObjectType();
  v93 = sub_1001C5148();
  v98 = *(v93 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v93);
  v97 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v89 = v84 - v8;
  v9 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v10 = *(v9 - 8);
  v88 = v9 - 8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v92 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v90 = v84 - v15;
  __chkstk_darwin(v14);
  v86 = v84 - v16;
  v17 = type metadata accessor for ReadingHistoryModel(0);
  v85 = v17;
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1001C6668();
  v21 = *(v99 - 1);
  v22 = *(v21 + 64);
  __chkstk_darwin(v99);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001C6638();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v27 = sub_1001C5688();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v84[2] = qword_1002818C0;
  v84[1] = ".ReadingHistoryDataStore.model";
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(&aBlock, "CRDTModelSync.");
  HIBYTE(aBlock) = -18;
  v105 = v17;
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v29 = sub_1001C6078();
  v31 = v30;
  sub_1001C61E8();
  v32 = sub_1001C6088();
  v34 = v33;

  v35 = sub_10014074C(15, v32, v34, v29, v31);
  v37 = v36;

  v107._countAndFlagsBits = v35;
  v107._object = v37;
  sub_1001C6138(v107);

  v38 = v87;
  sub_1001C5138();
  v39 = qword_10026FB10;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v21 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v99);
  v40 = v86;
  *&v38[v39] = sub_1001C66A8();
  v38[direct field offset for CRDTModelSyncManager.enableCloudSync] = 0;
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
  sub_1001C5B58();
  v41 = v85;
  v42 = *(v85 + 20);
  sub_1001C4CA8();
  sub_10009A514(&unk_10026F440, &type metadata accessor for Date);
  sub_1001C5B58();
  *&v20[*(v41 + 24)] = &_swiftEmptyDictionarySingleton;
  v43 = v91;
  *&v38[qword_10026FB18] = v91;
  v99 = v20;
  sub_10009B074(v20, v40, type metadata accessor for ReadingHistoryModel);
  v44 = v88;
  v45 = *(v88 + 56);
  v46 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v46 - 8) + 56))(v40 + v45, 1, 2, v46);
  v47 = type metadata accessor for CRDTModelRevisionInfo();
  v48 = *(*(v47 - 8) + 56);
  v49 = v89;
  v48(v89, 1, 1, v47);
  v50 = *(v44 + 60);
  v48((v40 + v50), 1, 1, v47);
  *(v40 + *(v44 + 52)) = 0;
  v91 = v43;
  v51 = v40 + v50;
  v52 = v93;
  sub_10009AC98(v49, v51);
  v53 = v90;
  sub_10009ADF0(v40, v90, &unk_10026F420, &unk_1001F0E50);
  v54 = sub_100084528(&unk_10026F450, &qword_1001F76A0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = v92;
  sub_10009ADF0(v53, v92, &unk_10026F420, &unk_1001F0E50);
  v58 = sub_100098354(v57);
  sub_10008875C(v53, &unk_10026F420, &unk_1001F0E50);
  *&v38[qword_10026FB20] = v58;
  v59 = v94;
  v60 = v95;
  *&v38[qword_10026FB30] = v94;
  *&v38[qword_10026FB38] = v60;
  v61 = v38;
  v62 = type metadata accessor for ObservableTransaction();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  v66 = v60;
  v67 = v59;
  *&v61[qword_10026FB28] = sub_1000879B0(0xD000000000000030, 0x80000001001FEE50, v66, v65);
  v106.receiver = v61;
  v106.super_class = ObjectType;
  v68 = objc_msgSendSuper2(&v106, "init");
  v69 = *&v68[qword_10026FB28];
  v70 = *&v68[qword_10026FB20] + *(**&v68[qword_10026FB20] + 128);
  swift_beginAccess();
  *(v70 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v71 = v97;
  v72 = v98;
  (*(v98 + 16))(v97, &v68[qword_1002818C0], v52);
  v73 = v68;
  v74 = v71;
  v75 = sub_1001C5128();
  v76 = sub_1001C65B8();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "CRDTModelSyncManager Init: About to load cloudData", v77, 2u);
  }

  (*(v72 + 8))(v74, v52);
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = *&v67[qword_100273F40];
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  v81[2] = v80;
  v81[3] = sub_10009AD08;
  v81[4] = v78;
  v103 = sub_10009B260;
  v104 = v81;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v101 = sub_1000982D4;
  v102 = &unk_100242D80;
  v82 = _Block_copy(&aBlock);
  swift_retain_n();

  [v79 cloudDataWithPredicate:0 sortDescriptors:0 completion:v82];
  _Block_release(v82);

  sub_10009B0DC(v99, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v40, &unk_10026F420, &unk_1001F0E50);

  return v73;
}

char *sub_100099F0C(void *a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  sub_1001C69C8(16);

  strcpy(v50, "CRDTModelSync.");
  HIBYTE(v50[1]) = -18;
  v49 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v9 = sub_1001C6078();
  v11 = v10;
  sub_1001C61E8();
  v12 = sub_1001C6088();
  v14 = v13;

  v15 = sub_10014074C(15, v12, v14, v9, v11);
  v17 = v16;

  v51._countAndFlagsBits = v15;
  v51._object = v17;
  sub_1001C6138(v51);

  sub_1001C5138();
  *&a5[qword_100273F58] = 0;
  *&a5[qword_100273F68] = 0;
  *&a5[qword_100281A00 + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[qword_100281A08] = 0;
  *&a5[qword_100273F60] = a2;
  *&a5[qword_100273F70] = a4;
  v45 = a2;
  v46 = a4;
  v18 = [a3 managedObjectContext];
  *&a5[qword_100273F30] = a3;
  *&a5[qword_100273F50] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v19 = a3;
  v20 = a1;
  v43 = CRDTModelSyncMapper.init()();
  v21 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v20 dataMapper:v43];
  *&a5[qword_100273F38] = v21;
  v41 = v21;
  v44 = v18;
  sub_1001C6078();
  v22 = sub_1001C5FE8();

  v23 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v44 zoneName:v22 cloudKitController:v20];

  *&a5[qword_100273F48] = v23;
  v50[0] = type metadata accessor for CRDTModelSyncEntity();
  v24 = v19;
  sub_100084528(&qword_100274010, &unk_1001F0E98);
  sub_1001C6078();
  type metadata accessor for CRDTModelSync();
  v25 = objc_allocWithZone(BCCloudDataManager);
  v26 = v20;
  v27 = v41;

  v28 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [v25 initWithCloudDataSource:v24 entityName:v28 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v27 cloudKitController:v26 dataMapper:v43];

  *&a5[qword_100273F40] = v30;
  v48.receiver = a5;
  v48.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v48, "init");
  v32 = *&v31[qword_100273F48];
  v33 = *&v31[qword_100273F50];
  v34 = v31;
  v35 = v32;
  v36 = [v33 privateCloudDatabaseController];
  v37 = [objc_allocWithZone(BDSSaltVersionIdentifierManager) initWithZoneDataManager:v34 tokenController:v35 databaseController:v36];

  v38 = *&v34[qword_100273F58];
  *&v34[qword_100273F58] = v37;

  v39 = *&v34[qword_100273F38];
  [v39 setDelegate:v34];

  return v34;
}

uint64_t sub_10009A420(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10009A464()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v2 + v5) & ~v2;
  v7 = *(v0 + 16);
  v8 = v0 + ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1000E48BC(v7, v0 + v4, v0 + v5, v0 + v6, v9, v10);
}

uint64_t sub_10009A514(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009A564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10009A58C()
{
  result = qword_10026F378;
  if (!qword_10026F378)
  {
    sub_100088714(255, &qword_10026F370, off_10023DD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F378);
  }

  return result;
}

uint64_t sub_10009A638()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_100095AC0(v2, v3, v4);
}

uint64_t sub_10009A6EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10009B25C;

  return sub_1001185A0(v2, v3, v5);
}

uint64_t sub_10009A7AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_10009544C(v2, v3);
}

uint64_t sub_10009A858()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009A8A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_100094D20(v2, v3, v4);
}

uint64_t sub_10009A954()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100094674(v2, v3);
}

uint64_t sub_10009AA00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009AA40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009AAEC;

  return sub_100093ED8(v2, v3);
}

uint64_t sub_10009AAEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10009ABE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10009AC30@<X0>(NSObject **a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v3)
  {
    v4 = *(*(v1 + 16) + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  }

  else
  {
    v4 = sub_10008ECA4();
    v3 = 0;
  }

  *a1 = v4;
  return v3;
}

uint64_t sub_10009AC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AD10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009AD88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10009AD9C(a1, a2);
  }

  return a1;
}

uint64_t sub_10009AD9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10009ADF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AE58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AEC0()
{
  v1 = *(type metadata accessor for ReadingHistoryModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_100084528(&unk_10026F410, &unk_1001F0E40) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_10009756C(v0 + v2, v5, v6);
}

uint64_t sub_10009AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009B018(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_10008875C(a1, &unk_10026F420, &unk_1001F0E50);
  return sub_10009ADF0(v3, a1, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_10009B074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009B0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009B13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10009B1C4()
{
  v1 = *(v0 + 16);
  v2 = sub_10008ECA4();
}

uint64_t sub_10009B308()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100281898);
  sub_100083274(v0, qword_100281898);
  return sub_1001C5138();
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10009B3FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10009B450(void *a1)
{
  v3 = sub_100084528(&qword_10026F4A8, &qword_1001F0F50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10009BBB8();
  sub_1001C6E78();
  v12 = 0;
  sub_1001C6C88();
  if (!v1)
  {
    v11 = 1;
    sub_1001C6C88();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_10009B604(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009B9C4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_10009B630(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10009B450(a1);
}

uint64_t sub_10009B64C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65766974616C6572;
  }

  else
  {
    v2 = 0x6574756C6F736261;
  }

  if (*a2)
  {
    v3 = 0x65766974616C6572;
  }

  else
  {
    v3 = 0x6574756C6F736261;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1001C6D08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10009B6D4()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_10009B74C()
{
  *v0;
  sub_1001C60E8();
}

Swift::Int sub_10009B7A8()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_10009B81C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100242180;
  v8._object = v3;
  v5 = sub_1001C6BA8(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10009B87C(uint64_t *a1@<X8>)
{
  v2 = 0x6574756C6F736261;
  if (*v1)
  {
    v2 = 0x65766974616C6572;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_10009B8B4()
{
  if (*v0)
  {
    return 0x65766974616C6572;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t sub_10009B8E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_100242180;
  v9._object = a2;
  v6 = sub_1001C6BA8(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10009B94C(uint64_t a1)
{
  v2 = sub_10009BBB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009B988(uint64_t a1)
{
  v2 = sub_10009BBB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10009B9C4(uint64_t *a1)
{
  v2 = sub_100084528(&qword_10026F498, &qword_1001F0F48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10009BBB8();
  sub_1001C6E58();
  v11[15] = 0;
  sub_1001C6C08();
  v9 = v8;
  v11[14] = 1;
  sub_1001C6C08();
  (*(v3 + 8))(v6, v2);
  sub_10008E7BC(a1);
  return v9;
}

void *sub_10009BB74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10009BBB8()
{
  result = qword_10026F4A0;
  if (!qword_10026F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4A0);
  }

  return result;
}

uint64_t _s14ThresholdErrorOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14ThresholdErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t _s14ThresholdErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t _s9ThresholdV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9ThresholdV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009BE30()
{
  result = qword_10026F4B0;
  if (!qword_10026F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4B0);
  }

  return result;
}

unint64_t sub_10009BE88()
{
  result = qword_10026F4B8;
  if (!qword_10026F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4B8);
  }

  return result;
}

unint64_t sub_10009BEE0()
{
  result = qword_10026F4C0;
  if (!qword_10026F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4C0);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.updateCollector.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1000B36A8(a1, v1 + 16, &unk_10026F4D0, &unk_1001F1130);
  return swift_endAccess();
}

uint64_t sub_10009C048()
{
  v1 = v0;
  v2 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v28 - v7;
  sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001F0CF0;
  v28[0] = 0x3D6C65646F6DLL;
  v28[1] = 0xE600000000000000;
  v29._countAndFlagsBits = ReadingHistoryModel.description.getter();
  sub_1001C6138(v29);

  v10 = v28[1];
  *(v9 + 32) = v28[0];
  *(v9 + 40) = v10;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v28, "currentStreak=");
  HIBYTE(v28[1]) = -18;
  v11 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v0 + v11[5], v8, &qword_10026F508, &qword_1001F1150);
  v12 = type metadata accessor for ReadingHistory.Streak(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v8, 1, v12) == 1)
  {
    sub_10008875C(v8, &qword_10026F508, &qword_1001F1150);
    v14 = 0xE300000000000000;
    v15._countAndFlagsBits = 7104878;
  }

  else
  {
    v16 = ReadingHistory.Streak.description.getter();
    v14 = v17;
    sub_1000B2E68(v8, type metadata accessor for ReadingHistory.Streak);
    v15._countAndFlagsBits = v16;
  }

  v15._object = v14;
  sub_1001C6138(v15);

  v18 = v28[1];
  *(v9 + 48) = v28[0];
  *(v9 + 56) = v18;
  v28[0] = 0x3D7961646F74;
  v28[1] = 0xE600000000000000;
  v19 = v1 + v11[6];
  v30._countAndFlagsBits = sub_1001C4C08();
  sub_1001C6138(v30);

  v20 = v28[1];
  *(v9 + 64) = v28[0];
  *(v9 + 72) = v20;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v28, "longestStreak=");
  HIBYTE(v28[1]) = -18;
  sub_10009ADF0(v1 + v11[7], v6, &qword_10026F508, &qword_1001F1150);
  if (v13(v6, 1, v12) == 1)
  {
    sub_10008875C(v6, &qword_10026F508, &qword_1001F1150);
    v21 = 0xE300000000000000;
    v22._countAndFlagsBits = 7104878;
  }

  else
  {
    v23 = ReadingHistory.Streak.description.getter();
    v21 = v24;
    sub_1000B2E68(v6, type metadata accessor for ReadingHistory.Streak);
    v22._countAndFlagsBits = v23;
  }

  v22._object = v21;
  sub_1001C6138(v22);

  v25 = v28[1];
  *(v9 + 80) = v28[0];
  *(v9 + 88) = v25;
  v28[0] = v9;
  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450);
  v26 = sub_1001C5FA8();

  return v26;
}

uint64_t sub_10009C434()
{
  v1 = v0;
  v2 = sub_1001C5648();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1001C5688();
  v61 = *(v63 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v63);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5658();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v54 = *(v17 - 8);
  v18 = *(v54 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v56 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v20;
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1000B344C(v1 + v28, v27, type metadata accessor for ReadingHistoryDataStore.State);
  v29 = *(v24 + 28);
  v66 = v27;
  sub_10009ADF0(&v27[v29], v16, &qword_10026F508, &qword_1001F1150);
  v30 = type metadata accessor for ReadingHistory.Streak(0);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v16, 1, v30);
  v59 = v22;
  if (v32 == 1)
  {
    sub_10008875C(v16, &qword_10026F508, &qword_1001F1150);
    v33 = sub_1001C4CA8();
    (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  }

  else
  {
    v34 = sub_1001C4CA8();
    v35 = *(v34 - 8);
    v53 = v7;
    v36 = v35;
    (*(v35 + 16))(v22, v16, v34);
    sub_1000B2E68(v16, type metadata accessor for ReadingHistory.Streak);
    (*(v36 + 56))(v22, 0, 1, v34);
    v7 = v53;
  }

  sub_10009ADF0(&v66[v29], v14, &qword_10026F508, &qword_1001F1150);
  if (v31(v14, 1, v30) == 1)
  {
    sub_10008875C(v14, &qword_10026F508, &qword_1001F1150);
    v37 = 0;
  }

  else
  {
    v37 = *&v14[*(v30 + 20)];
    sub_1000B2E68(v14, type metadata accessor for ReadingHistory.Streak);
  }

  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v39 = v57;
  v38 = v58;
  (*(v58 + 104))(v57, enum case for DispatchQoS.QoSClass.background(_:), v7);
  v40 = sub_1001C66B8();
  (*(v38 + 8))(v39, v7);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v59;
  v43 = v56;
  sub_10009ADF0(v59, v56, &unk_10026FC70, &unk_1001F1430);
  v44 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v45 = (v55 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v41;
  sub_10009AE58(v43, v46 + v44, &unk_10026FC70, &unk_1001F1430);
  *(v46 + v45) = v37;
  aBlock[4] = sub_1000B3778;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100243EE0;
  v47 = _Block_copy(aBlock);

  v48 = v60;
  sub_1001C5668();
  v67 = &_swiftEmptyArrayStorage;
  sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v49 = v62;
  v50 = v65;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v47);

  (*(v64 + 8))(v49, v50);
  (*(v61 + 8))(v48, v63);
  sub_10008875C(v42, &unk_10026FC70, &unk_1001F1430);
  sub_1000B2E68(v66, type metadata accessor for ReadingHistoryDataStore.State);
}

void sub_10009CC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_1001C4CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 112);
    sub_10009ADF0(a2, v8, &unk_10026FC70, &unk_1001F1430);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v19 = v18;
      sub_10008875C(v8, &unk_10026FC70, &unk_1001F1430);
      v20 = sub_1001C5FE8();
      [v19 removeObjectForKey:v20];

LABEL_7:
      v27 = sub_1001C5FE8();
      [v18 setInteger:a3 forKey:v27];

      return;
    }

    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v14, v16, v9);
    v21 = v18;
    v22 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v14);
    v24 = 100 * v22;
    if ((v22 * 100) >> 64 == (100 * v22) >> 63)
    {
      v25 = v24 + v23;
      if (!__OFADD__(v24, v23))
      {
        v26 = sub_1001C5FE8();
        [v21 setInteger:v25 forKey:v26];

        (*(v10 + 8))(v16, v9);
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static ReadingHistoryDataStore.recalculationCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static ReadingHistoryDataStore.recalculationCount = a1;
  return result;
}

uint64_t ReadingHistoryDataStore.__allocating_init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v17 = a2[3];
  v16 = a2[4];
  v18 = sub_10009D148(a2, v17);
  v19 = sub_1000B2C88(a1, v18, a3, a4, a5, a6, a7, a8, v8, v17, v16);
  swift_unknownObjectRelease();

  sub_10008E7BC(a2);
  return v19;
}

uint64_t sub_10009D148(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t ReadingHistoryDataStore.init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v16 = a2[3];
  v15 = a2[4];
  v17 = sub_10009D148(a2, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_1000B1CE0(a1, v20, a3, a4, v24, a6, v25, a8, v8, v16, v15);
  swift_unknownObjectRelease();

  sub_10008E7BC(a2);
  return v22;
}

uint64_t sub_10009D2E4(_OWORD *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009D344(a1);
  }

  return result;
}

uint64_t sub_10009D344(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_100084528(&qword_10026F908, &qword_1001F14D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &aBlock - v6;
  v8 = sub_1001C4868();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v13 = *(v2 + 144);
  v14 = swift_allocObject();
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 42) = *(a1 + 26);
  *(v14 + 64) = v2;
  *(v14 + 72) = &v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000B3994;
  *(v16 + 24) = v14;
  v23 = sub_1000B3DA0;
  v24 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1000906F4;
  *(&v22 + 1) = &unk_100243F58;
  v17 = _Block_copy(&aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v25 == 1)
    {
      sub_1000B39A0();
      aBlock = 0u;
      v22 = 0u;
      sub_1001C4E18();
      sub_10008875C(&aBlock, &qword_10026FCB0, &unk_1001F14E0);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10008875C(v7, &qword_10026F908, &qword_1001F14D8);
      }

      else
      {
        (*(v9 + 32))(v12, v7, v8);
        v19 = [objc_opt_self() defaultCenter];
        isa = sub_1001C4838().super.isa;
        [v19 postNotification:isa];

        (*(v9 + 8))(v12, v8);
      }
    }
  }

  return result;
}

uint64_t sub_10009D694(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009D6F4(a1);
  }

  return result;
}

uint64_t sub_10009D6F4(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = aBlock - v6;
  v8 = *(v1 + 144);
  sub_10009ADF0(a1, aBlock - v6, &unk_10026F820, &unk_1001F1440);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_10009AE58(v7, v10 + v9, &unk_10026F820, &unk_1001F1440);
  *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000B35CC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243DA0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.observeSignificantDateChange(_:)(NSNotificationName a1)
{
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:"_handleSignificantDateChange:" name:a1 object:0];
}

uint64_t sub_10009D994@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1001C4D68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  sub_1001C4CD8();
  sub_1001C4BE8();
  (*(v4 + 8))(v7, v3);
  v16 = sub_1001AC330(a1, 1);
  if (!sub_1001AC330(v15, 1))
  {
    sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
LABEL_6:
      sub_1001C5118();
      (*(v9 + 8))(v15, v8);
      goto LABEL_13;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  if (__OFADD__(static ReadingHistoryDataStore.recalculationCount, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++static ReadingHistoryDataStore.recalculationCount;
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v17 = v15;
  }

  (*(v9 + 16))(v13, v17, v8);
  v18 = sub_1001AC6B4(v13, 1);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001F0660;
  v20 = sub_1001C4C08();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100084570();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = &type metadata for Int;
  *(v19 + 104) = &protocol witness table for Int;
  *(v19 + 64) = v23;
  *(v19 + 72) = v18;
  sub_1001C5118();

  v24 = *(v9 + 8);
  v24(v15, v8);
  if (v18 >= 2)
  {
    v25 = v29;
    (*(v9 + 32))(v29, v13, v8);
    v26 = type metadata accessor for ReadingHistory.Streak(0);
    *(v25 + *(v26 + 20)) = v18;
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  v24(v13, v8);
LABEL_13:
  v28 = type metadata accessor for ReadingHistory.Streak(0);
  return (*(*(v28 - 8) + 56))(v29, 1, 1, v28);
}

uint64_t sub_10009DDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v91 = a4;
  v7 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v81 - v11;
  v96 = type metadata accessor for ReadingHistory.Streak(0);
  v94 = *(v96 - 8);
  v12 = *(v94 + 64);
  __chkstk_darwin(v96);
  v88 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001C4D68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C4CA8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v93 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v81 - v25;
  __chkstk_darwin(v24);
  v28 = &v81 - v27;
  sub_1001C4CD8();
  sub_1001C4BE8();
  (*(v15 + 8))(v18, v14);
  v85 = v20;
  v29 = v20 + 16;
  v30 = *(v20 + 16);
  v92 = a3;
  v30(v26, a3, v19);
  v31 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v26);
  v33 = v32;
  v89 = v28;
  v90 = v19;
  v84 = v29;
  v83 = v30;
  v30(v26, v28, v19);
  v34 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v26);
  v36 = v35;
  v95 = a2;
  v87 = a1;
  v37 = sub_1001ACEE4(a2);
  v38 = v37;
  v97 = v31;
  v98 = v33;
  v99 = v34;
  v100 = v36;
  v39 = *(v37 + 32);
  v40 = ((1 << v39) + 63) >> 6;
  v41 = v91;
  v42 = 8 * v40;
  if ((v39 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    v43 = &v81;
    __chkstk_darwin(v37);
    bzero(&v81 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0), v42);
    v44 = 0;
    v45 = 0;
    v46 = 1 << *(v38 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v38 + 56);
    v49 = (v46 + 63) >> 6;
    while (v48)
    {
      v50 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v51 = v50 | (v45 << 6);
LABEL_12:
      v54 = (*(v38 + 48) + 16 * v51);
      v55 = *v54;
      v56 = v54[1];
      if ((v55 != v31 || v56 != v33) && (v55 != v34 || v56 != v36))
      {
        *(&v81 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v51;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_23:
          v60 = sub_100156604((&v81 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0)), v40, v44, v38);
          goto LABEL_24;
        }
      }
    }

    v52 = v45;
    while (1)
    {
      v45 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v45 >= v49)
      {
        goto LABEL_23;
      }

      v53 = *(v38 + 56 + 8 * v45);
      ++v52;
      if (v53)
      {
        v48 = (v53 - 1) & v53;
        v51 = __clz(__rbit64(v53)) | (v45 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v79 = swift_slowAlloc();
  v80 = sub_1000B0B78(v79, v40, v38, sub_1000B38DC);

  v60 = v80;
LABEL_24:
  v43 = v41;
  v61 = *(v60 + 16);

  v62 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v63 = v86;
  sub_10009ADF0(v87 + *(v62 + 20), v86, &qword_10026F508, &qword_1001F1150);
  v64 = v94;
  v65 = (*(v94 + 48))(v63, 1, v96);
  v42 = v89;
  v33 = v90;
  v40 = v88;
  v36 = v92;
  v34 = v93;
  if (v65 == 1)
  {
    sub_10008875C(v63, &qword_10026F508, &qword_1001F1150);
LABEL_28:
    sub_10009D994(v36, v43);
    return (*(v85 + 8))(v42, v33);
  }

  sub_1000B390C(v63, v88, type metadata accessor for ReadingHistory.Streak);
  if (v61)
  {
    sub_1000B2E68(v40, type metadata accessor for ReadingHistory.Streak);
    goto LABEL_28;
  }

  v83(v34, v40, v33);
  v67 = *(v40 + *(v96 + 20));
  v31 = sub_1001AC330(v36, 1);
  v68 = sub_1001AC330(v42, 1);
  if (sub_1001C4C68())
  {
    if (v31)
    {
      v31 = v82;
      sub_1000B344C(v40, v82, type metadata accessor for ReadingHistory.Streak);
      (*(v64 + 56))(v31, 0, 1, v96);
      sub_1001C6588();
      if (qword_10026EBE8 == -1)
      {
        goto LABEL_48;
      }
    }

    else if (v67 < 2)
    {
      v31 = v82;
      (*(v64 + 56))(v82, 1, 1, v96);
      sub_1001C6588();
      if (qword_10026EBE8 == -1)
      {
LABEL_48:
        sub_1001C5118();
        goto LABEL_49;
      }
    }

    else
    {
      v31 = v82;
      v83(v82, v42, v33);
      *(v31 + *(v96 + 20)) = v67 - 1;
      (*(v64 + 56))(v31, 0, 1);
      sub_1001C6588();
      if (qword_10026EBE8 == -1)
      {
        goto LABEL_48;
      }
    }

LABEL_60:
    swift_once();
    goto LABEL_48;
  }

  if (sub_1001C4C68())
  {
    if (v31)
    {
      v69 = v82;
      v83(v82, v36, v33);
      v70 = v67 + 1;
      if (!__OFADD__(v67, 1))
      {
        *(v69 + *(v96 + 20)) = v70;
        (*(v94 + 56))(v69, 0, 1);
        sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1001F0660;
        v72 = sub_1001C4C08();
        v74 = v73;
        *(v71 + 56) = &type metadata for String;
        v75 = sub_100084570();
        *(v71 + 32) = v72;
        *(v71 + 40) = v74;
        *(v71 + 96) = &type metadata for Int;
        *(v71 + 104) = &protocol witness table for Int;
        *(v71 + 64) = v75;
        *(v71 + 72) = v70;
        sub_1001C5118();

        v76 = *(v85 + 8);
        v76(v93, v33);
        sub_1000B2E68(v40, type metadata accessor for ReadingHistory.Streak);
        v76(v42, v33);
        v31 = v82;
        return sub_10009AE58(v31, v43, &qword_10026F508, &qword_1001F1150);
      }

      __break(1u);
    }

    else
    {
      v31 = v82;
      v83(v82, v42, v33);
      *(v31 + *(v96 + 20)) = v67;
      (*(v64 + 56))(v31, 0, 1);
      sub_1001C6588();
      if (qword_10026EBE8 == -1)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_60;
  }

  if ((sub_1001C4C58() & 1) != 0 && !v68)
  {
LABEL_52:
    v78 = *(v85 + 8);
    v78(v34, v33);
    sub_1000B2E68(v40, type metadata accessor for ReadingHistory.Streak);
    v78(v42, v33);
    if (v31)
    {
      v31 = v82;
      v83(v82, v36, v33);
      *(v31 + *(v96 + 20)) = 1;
      (*(v94 + 56))(v31, 0, 1);
    }

    else
    {
      v31 = v82;
      (*(v94 + 56))(v82, 1, 1, v96);
    }

    return sub_10009AE58(v31, v43, &qword_10026F508, &qword_1001F1150);
  }

  v31 = v82;
  sub_10009D994(v36, v82);
LABEL_49:
  v77 = *(v85 + 8);
  v77(v34, v33);
  sub_1000B2E68(v40, type metadata accessor for ReadingHistory.Streak);
  v77(v42, v33);
  return sub_10009AE58(v31, v43, &qword_10026F508, &qword_1001F1150);
}

uint64_t sub_10009EA90(uint64_t a1)
{
  v2 = v1;
  v154 = *v2;
  v146 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v149 = *(v146 - 8);
  v4 = *(v149 + 64);
  __chkstk_darwin(v146);
  v145 = &v134 - v5;
  v6 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v150 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v167 = &v134 - v10;
  v163 = sub_1001C4D68();
  v148 = *(v163 - 8);
  v11 = *(v148 + 64);
  __chkstk_darwin(v163);
  v162 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v161 = &v134 - v15;
  v16 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v160 = &v134 - v18;
  v159 = sub_1001C4948();
  v147 = *(v159 - 8);
  v19 = *(v147 + 64);
  __chkstk_darwin(v159);
  v158 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v168 = &v134 - v23;
  v169 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v24 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v164 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001C4CA8();
  v172 = *(v26 - 8);
  v173 = v26;
  v27 = *(v172 + 64);
  v28 = __chkstk_darwin(v26);
  v166 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v157 = (&v134 - v31);
  __chkstk_darwin(v30);
  v170 = &v134 - v32;
  v33 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v153 = (&v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v171 = &v134 - v37;
  v38 = sub_100084528(&qword_10026F8C8, &qword_1001F95E0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v134 - v40;
  v42 = sub_100084528(&unk_10026F8D0, &unk_1001F14B0);
  v165 = *(v42 - 8);
  v43 = *(v165 + 8);
  __chkstk_darwin(v42);
  v151 = &v134 - v44;
  v45 = type metadata accessor for ReadingHistoryModel(0);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45);
  v49 = &v134 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v47);
  v52 = &v134 - v51;
  __chkstk_darwin(v50);
  v54 = &v134 - v53;
  v55 = v2;
  v56 = (v2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state);
  swift_beginAccess();
  sub_1000B344C(v56, v54, type metadata accessor for ReadingHistoryModel);
  sub_1000B3814(&unk_10026F840, type metadata accessor for ReadingHistoryModel);
  v57 = a1;
  LOBYTE(a1) = sub_1001C5948();
  v152 = v54;
  result = sub_1000B2E68(v54, type metadata accessor for ReadingHistoryModel);
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v156 = v55;
  sub_1000B344C(v56, v52, type metadata accessor for ReadingHistoryModel);
  sub_1000B3814(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v155 = v57;
  sub_1001C5C78();
  v59 = *(v45 + 20);
  sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1000885F4(&unk_10026F8E0, &qword_10026F830, &qword_1001F0E80);
  sub_1001C5CB8();
  v60 = v165;
  if ((*(v165 + 6))(v41, 1, v42) == 1)
  {
    sub_10008875C(v41, &qword_10026F8C8, &qword_1001F95E0);
    v141 = 0;
  }

  else
  {
    v61 = v151;
    v60[4](v151, v41, v42);
    v62 = sub_1001C5AF8();
    __chkstk_darwin(v62);
    v132 = v52;
    v133 = v49;
    sub_1000B6FDC(sub_1000B38C0, &v130, v62);
    v141 = 0;

    (v60[1])(v61, v42);
  }

  v64 = v172;
  v63 = v173;
  v65 = v49;
  v66 = v169;
  sub_10009ADF0(v56 + *(v169 + 20), v171, &qword_10026F508, &qword_1001F1150);
  v67 = v66[6];
  v70 = *(v64 + 16);
  v69 = v64 + 16;
  v68 = v70;
  v144 = v56;
  v71 = v56 + v67;
  v72 = v170;
  v70(v170, v71, v63);
  v165 = v52;
  v73 = sub_1001ACEE4(v49);
  v74 = v155;
  if (!*(v73 + 16))
  {

    v129 = v164;
    sub_1000B344C(v65, v164, type metadata accessor for ReadingHistoryModel);
    sub_10009ADF0(v171, v129 + v66[5], &qword_10026F508, &qword_1001F1150);
    v68(v129 + v66[6], v72, v63);
    sub_1001ABED4(v72, (v129 + v66[7]));
    sub_1000A28D4(v129, v74, 0x656772656DLL, 0xE500000000000000);
    sub_1000B2E68(v129, type metadata accessor for ReadingHistoryDataStore.State);
    (*(v172 + 8))(v72, v63);
    v87 = v171;
    v89 = v165;
    goto LABEL_43;
  }

  v151 = v65;
  v75 = v157;
  v68(v157, v72, v63);
  v76 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v75);
  v78 = *(v73 + 16) == 1;
  v79 = v63;
  v143 = v69;
  v142 = v68;
  if (v78 && (sub_1000F52CC(v76, v77, v73) & 1) != 0)
  {

    sub_1001C6588();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1001F0670;
    v81 = sub_1001C4C08();
    v83 = v82;
    *(v80 + 56) = &type metadata for String;
    *(v80 + 64) = sub_100084570();
    *(v80 + 32) = v81;
    *(v80 + 40) = v83;
    v84 = v170;
    sub_1001C5118();

    v85 = v164;
    sub_1000B344C(v144, v164, type metadata accessor for ReadingHistoryDataStore.State);
    v86 = v153;
    v65 = v151;
    sub_10009DDF4(v85, v151, v84, v153);
    sub_1000B2E68(v85, type metadata accessor for ReadingHistoryDataStore.State);
    v87 = v171;
    sub_10008875C(v171, &qword_10026F508, &qword_1001F1150);
    sub_10009AE58(v86, v87, &qword_10026F508, &qword_1001F1150);
    v88 = v152;
    sub_1000A0C18(v65, v87, v152);
    v89 = v165;
    v90 = v172;
    v91 = v155;
    goto LABEL_41;
  }

  v92 = v73 + 56;
  v93 = 1 << *(v73 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v73 + 56);
  v96 = (v93 + 63) >> 6;
  v157 = (v148 + 56);
  v148 += 8;
  v147 += 8;
  v144 = (v172 + 48);
  v140 = (v172 + 32);
  v139 = (v172 + 8);
  v138 = (v149 + 16);
  v137 = (v149 + 8);
  v149 = v172 + 56;

  v97 = 0;
  v98 = v168;
  if (!v95)
  {
    while (1)
    {
LABEL_18:
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v99 >= v96)
      {
        break;
      }

      v95 = *(v92 + 8 * v99);
      ++v97;
      if (v95)
      {
        v97 = v99;
        goto LABEL_22;
      }
    }

    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_22:
  while (1)
  {
    v100 = (*(v73 + 48) + ((v97 << 10) | (16 * __clz(__rbit64(v95)))));
    v101 = 100 * *v100;
    if ((*v100 * 100) >> 64 != v101 >> 63)
    {
      break;
    }

    v102 = v100[1];
    if (__OFADD__(v101, v102))
    {
      goto LABEL_47;
    }

    v95 &= v95 - 1;
    if (v101 + v102 <= 9999)
    {
      (*v149)(v98, 1, 1, v79);
LABEL_17:
      sub_10008875C(v98, &unk_10026FC70, &unk_1001F1430);
      if (!v95)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v103 = v163;
      (*v157)(v160, 1, 1, v163);
      v104 = sub_1001C4D78();
      (*(*(v104 - 8) + 56))(v161, 1, 1, v104);
      LOBYTE(v133) = 1;
      v132 = 0;
      v131 = 1;
      v130 = 0;
      v105 = v73;
      v106 = v158;
      v98 = v168;
      sub_1001C4938();
      v107 = v162;
      sub_1001C4CD8();
      sub_1001C4D18();
      v108 = v107;
      v79 = v173;
      v109 = v103;
      v111 = v166;
      v110 = v167;
      (*v148)(v108, v109);
      v112 = v106;
      v73 = v105;
      (*v147)(v112, v159);
      if ((*v144)(v98, 1, v79) == 1)
      {
        goto LABEL_17;
      }

      (*v140)(v111, v98, v79);
      if (sub_1001C4C58())
      {
        ReadingHistoryModel.readingHistoryDay(for:)(v110);
        v113 = v167;
        v114 = type metadata accessor for ReadingHistoryDay(0);
        v136 = *(*(v114 - 8) + 48);
        if (v136(v113, 1, v114) == 1)
        {
          sub_10008875C(v113, &qword_100273DA0, &qword_1001F7E50);
          v135 = 0;
          v115 = v150;
        }

        else
        {
          v116 = v113 + *(v114 + 20);
          v117 = v145;
          v118 = v146;
          (*v138)(v145, v116, v146);
          sub_1000B2E68(v167, type metadata accessor for ReadingHistoryDay);
          sub_1001C56C8();
          v119 = v117;
          v120 = v118;
          v111 = v166;
          v115 = v150;
          (*v137)(v119, v120);
          v135 = v174;
        }

        ReadingHistoryModel.readingHistoryDay(for:)(v115);
        v121 = v150;
        if (v136(v150, 1, v114) == 1)
        {
          sub_10008875C(v121, &qword_100273DA0, &qword_1001F7E50);
        }

        else
        {
          v122 = v121 + *(v114 + 20);
          v123 = v121;
          v124 = v145;
          v125 = v146;
          (*v138)(v145, v122, v146);
          sub_1000B2E68(v123, type metadata accessor for ReadingHistoryDay);
          sub_1001C56C8();
          (*v137)(v124, v125);
          if (v135 >= 1 && v135 < v174)
          {
            ReadingHistoryModel.setGoal(_:date:)(v135, v111);
          }
        }

        v79 = v173;
        (*v139)(v111, v173);
      }

      else
      {
        (*v139)(v111, v79);
      }

      if (!v95)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_40:
  sub_1001C5118();
  v126 = v153;
  v65 = v151;
  v84 = v170;
  sub_10009D994(v170, v153);
  v87 = v171;
  sub_10008875C(v171, &qword_10026F508, &qword_1001F1150);
  sub_10009AE58(v126, v87, &qword_10026F508, &qword_1001F1150);
  sub_1000A1170(v65, v73, v126);

  v88 = v152;
  sub_1000A0C18(v65, v126, v152);
  sub_10008875C(v126, &qword_10026F508, &qword_1001F1150);
  v91 = v155;
  v90 = v172;
  v85 = v164;
  v89 = v165;
LABEL_41:
  sub_1000B385C(v88, v65);
  sub_1000B344C(v65, v85, type metadata accessor for ReadingHistoryModel);
  v127 = v169;
  sub_10009ADF0(v87, v85 + *(v169 + 20), &qword_10026F508, &qword_1001F1150);
  v128 = v173;
  v142(v85 + *(v127 + 24), v84, v173);
  sub_1001ABED4(v84, (v85 + *(v127 + 28)));
  sub_1000A28D4(v85, v91, 0x656772656DLL, 0xE500000000000000);
  sub_1000B2E68(v85, type metadata accessor for ReadingHistoryDataStore.State);
  (*(v90 + 8))(v84, v128);
LABEL_43:
  sub_10008875C(v87, &qword_10026F508, &qword_1001F1150);
  sub_1000B2E68(v65, type metadata accessor for ReadingHistoryModel);
  return sub_1000B2E68(v89, type metadata accessor for ReadingHistoryModel);
}

uint64_t sub_10009FF84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v37 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v39 = v33 - v10;
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_1001C4CA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v38 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v41 = v33 - v18;
  v19 = *a1;
  v20 = type metadata accessor for ReadingHistoryModel(0);
  v21 = *(v20 + 20);
  v42 = v19;
  v22 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1001C5BA8();
  v23 = v14;
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    return sub_10008875C(v12, &unk_10026FC70, &unk_1001F1430);
  }

  v36 = v3;
  v35 = *(v23 + 32);
  v35(v41, v12, v13);
  v26 = *(v20 + 20);
  v33[1] = v22;
  v34 = v19;
  v42 = v19;
  v27 = v39;
  v33[0] = v26;
  sub_1001C5BA8();
  if (v24(v27, 1, v13) == 1)
  {
    (*(v23 + 8))(v41, v13);
    return sub_10008875C(v27, &unk_10026FC70, &unk_1001F1430);
  }

  else
  {
    v28 = v38;
    v35(v38, v27, v13);
    if (sub_1001C4C58())
    {
      v29 = v37;
      v30 = v41;
      (*(v23 + 16))(v37, v41, v13);
      (*(v23 + 56))(v29, 0, 1, v13);
      v42 = v34;
      sub_1001C5BB8();
      v31 = *(v23 + 8);
      v31(v28, v13);
      return (v31)(v30, v13);
    }

    else
    {
      v32 = *(v23 + 8);
      v32(v28, v13);
      return (v32)(v41, v13);
    }
  }
}

uint64_t sub_1000A034C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v33 = a1;
  v2 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v34 = v32 - v4;
  v5 = sub_100084528(&qword_10026F888, &qword_1001F1478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v32 - v8);
  v10 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v32 - v12;
  v14 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v32 - v17;
  v19 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v32[0] = *(v19 - 8);
  v20 = *(v32[0] + 64);
  __chkstk_darwin(v19);
  v22 = v32 - v21;
  (*(v15 + 16))(v18, v33, v14);
  sub_1000885F4(&qword_10026F8A0, &unk_10026F470, &unk_1001F5600);
  v33 = v14;
  sub_1001C6218();
  v32[2] = sub_1000885F4(&unk_10026F8A8, &qword_10026F898, &qword_1001F1488);
  sub_1001C6868();
  v23 = v5;
  v26 = *(v6 + 48);
  v24 = v6 + 48;
  v25 = v26;
  if (v26(v13, 1, v5) != 1)
  {
    do
    {
      sub_10009AE58(v13, v9, &qword_10026F888, &qword_1001F1478);
      v27 = v24;
      v28 = v23;
      v29 = *v9;
      v30 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      (*(*(v30 - 8) + 56))(v34, 1, 1, v30);
      v36 = v29;
      sub_1001C5BB8();
      sub_10008875C(v9, &qword_10026F888, &qword_1001F1478);
      sub_1001C6868();
      v23 = v28;
      v24 = v27;
    }

    while (v25(v13, 1, v23) != 1);
  }

  return (*(v32[0] + 8))(v22, v19);
}

uint64_t sub_1000A07B0(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v34 = a1;
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v35 = v33 - v4;
  v5 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v33 - v8);
  v10 = sub_100084528(&qword_10026F860, &unk_1001F1460);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v33 - v12;
  v14 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v33 - v17;
  v19 = sub_100084528(&qword_10026F868, &unk_1001F9620);
  v33[0] = *(v19 - 8);
  v20 = *(v33[0] + 64);
  __chkstk_darwin(v19);
  v22 = v33 - v21;
  (*(v15 + 16))(v18, v34, v14);
  sub_1000885F4(&qword_10026F870, &qword_10026F830, &qword_1001F0E80);
  v34 = v14;
  sub_1001C6218();
  v33[2] = sub_1000885F4(&qword_10026F878, &qword_10026F868, &unk_1001F9620);
  sub_1001C6868();
  v23 = v5;
  v26 = *(v6 + 48);
  v24 = v6 + 48;
  v25 = v26;
  if (v26(v13, 1, v5) != 1)
  {
    do
    {
      sub_10009AE58(v13, v9, &qword_10026F858, &unk_1001F8AA0);
      v27 = v24;
      v28 = v23;
      v29 = *v9;
      v30 = sub_1001C4CA8();
      (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
      v37 = v29;
      v31 = v36 + *(type metadata accessor for ReadingHistoryModel(0) + 20);
      sub_1001C5BB8();
      sub_10008875C(v9, &qword_10026F858, &unk_1001F8AA0);
      sub_1001C6868();
      v23 = v28;
      v24 = v27;
    }

    while (v25(v13, 1, v23) != 1);
  }

  return (*(v33[0] + 8))(v22, v19);
}

uint64_t sub_1000A0C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v11 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v42 - v16;
  v18 = type metadata accessor for ReadingHistory.Streak(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a2, v17, &qword_10026F508, &qword_1001F1150);
  v23 = *(v19 + 48);
  if (v23(v17, 1, v18) == 1)
  {
    v24 = &qword_10026F508;
    v25 = &qword_1001F1150;
    v26 = v17;
LABEL_12:
    sub_10008875C(v26, v24, v25);
    return sub_1000B344C(a1, v45, type metadata accessor for ReadingHistoryModel);
  }

  sub_1000B390C(v17, v22, type metadata accessor for ReadingHistory.Streak);
  v27 = *&v22[*(v18 + 20)];
  sub_1001ABED4(v22, v15);
  if (v23(v15, 1, v18) == 1)
  {
    sub_10008875C(v15, &qword_10026F508, &qword_1001F1150);
    if (v27 >= 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1000B2E68(v22, type metadata accessor for ReadingHistory.Streak);
    return sub_1000B344C(a1, v45, type metadata accessor for ReadingHistoryModel);
  }

  v41 = *&v15[*(v18 + 20)];
  sub_1000B2E68(v15, type metadata accessor for ReadingHistory.Streak);
  if (v41 >= v27)
  {
    goto LABEL_10;
  }

LABEL_5:
  v28 = type metadata accessor for ReadingHistoryModel(0);
  v29 = *(v28 + 20);
  v46 = v27;
  v30 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1001C5BA8();
  v31 = sub_1001C4CA8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v10, 1, v31) != 1)
  {
    sub_1000B2E68(v22, type metadata accessor for ReadingHistory.Streak);
    v24 = &unk_10026FC70;
    v25 = &unk_1001F1430;
    v26 = v10;
    goto LABEL_12;
  }

  v43 = v30;
  sub_10008875C(v10, &unk_10026FC70, &unk_1001F1430);
  v42[3] = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001F0660;
  *(v33 + 56) = &type metadata for Int;
  *(v33 + 64) = &protocol witness table for Int;
  *(v33 + 32) = v27;
  v34 = sub_1001C4C08();
  v36 = v35;
  *(v33 + 96) = &type metadata for String;
  *(v33 + 104) = sub_100084570();
  *(v33 + 72) = v34;
  *(v33 + 80) = v36;
  sub_1001C5118();

  v37 = v45;
  sub_1000B344C(a1, v45, type metadata accessor for ReadingHistoryModel);
  v38 = v44;
  (*(v32 + 16))(v44, v22, v31);
  (*(v32 + 56))(v38, 0, 1, v31);
  v46 = v27;
  v39 = v37 + *(v28 + 20);
  sub_1001C5BB8();
  return sub_1000B2E68(v22, type metadata accessor for ReadingHistory.Streak);
}

uint64_t sub_1000A1170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v156 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v164 = *(v156 - 8);
  v6 = *(v164 + 64);
  __chkstk_darwin(v156);
  v155 = v142 - v7;
  v8 = type metadata accessor for ReadingHistoryMonth(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v154 = v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v185 = v142 - v13;
  v14 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v153 = v142 - v16;
  v173 = sub_1001C4D48();
  v163 = *(v173 - 8);
  v17 = *(v163 + 64);
  __chkstk_darwin(v173);
  v172 = v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v171 = v142 - v21;
  v22 = type metadata accessor for ReadingHistoryDay(0);
  v161 = *(v22 - 8);
  v23 = *(v161 + 64);
  __chkstk_darwin(v22);
  v170 = v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v146 = v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v150 = v142 - v29;
  v30 = sub_1001C4D68();
  v189 = *(v30 - 8);
  v31 = *(v189 + 64);
  v32 = __chkstk_darwin(v30);
  v186 = v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v188 = v142 - v34;
  v35 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v190 = v142 - v37;
  v38 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v184 = v142 - v40;
  v183 = sub_1001C4948();
  v41 = *(v183 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v183);
  v182 = v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v47 = v142 - v46;
  v192 = sub_1001C4CA8();
  v157 = *(v192 - 8);
  v48 = *(v157 + 64);
  v49 = __chkstk_darwin(v192);
  v51 = v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v49);
  v177 = v142 - v53;
  v54 = __chkstk_darwin(v52);
  v175 = v142 - v55;
  v56 = __chkstk_darwin(v54);
  v149 = v142 - v57;
  __chkstk_darwin(v56);
  v181 = v142 - v58;
  v174 = a1;
  v194 = a1;

  v59 = sub_1000B07A4(sub_1000B3974, v193, a2);
  v60 = v59;
  v61 = *(v59 + 16);
  if (!v61)
  {
    goto LABEL_4;
  }

  v62 = sub_10012B554(*(v59 + 16), 0);
  v191 = sub_10012C0C8(v195, v62 + 2, v61, v60);
  v187 = v195[0];
  v180 = v195[1];
  v179 = v195[2];
  v178 = v195[3];
  v176 = v195[4];

  sub_100005064();
  if (v191 != v61)
  {
    __break(1u);
LABEL_4:
    v62 = &_swiftEmptyArrayStorage;
  }

  v195[0] = v62;
  sub_1000AD7B0(v195);
  v187 = v51;
  v169 = v22;
  v148 = a3;

  v63 = *(v195[0] + 2);
  v178 = v30;
  v165 = v195[0];
  if (v63)
  {
    v179 = (v189 + 56);
    v176 = (v189 + 8);
    v168 = (v41 + 8);
    v167 = (v157 + 48);
    v180 = (v157 + 32);
    v166 = (v157 + 56);
    v64 = v195[0] + 40;
    v191 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v65 = *(v64 - 1);
      v66 = 100 * v65;
      if ((v65 * 100) >> 64 != (100 * v65) >> 63)
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

        __break(1u);
        return result;
      }

      if (__OFADD__(v66, *v64))
      {
        goto LABEL_53;
      }

      if (v66 + *v64 <= 9999)
      {
        (*v166)(v47, 1, 1, v192);
      }

      else
      {
        (*v179)(v184, 1, 1, v30);
        v67 = sub_1001C4D78();
        (*(*(v67 - 8) + 56))(v190, 1, 1, v67);
        v68 = v182;
        sub_1001C4938();
        v69 = v188;
        sub_1001C4CD8();
        sub_1001C4D18();
        (*v176)(v69, v30);
        (*v168)(v68, v183);
        v70 = v192;
        if ((*v167)(v47, 1, v192) != 1)
        {
          v71 = *v180;
          (*v180)(v181, v47, v70);
          v72 = v191;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1000AE458(0, v72[2] + 1, 1, v72, &qword_10026F900, &qword_1001F14D0, &type metadata accessor for Date);
          }

          v74 = v72[2];
          v73 = v72[3];
          v191 = v72;
          if (v74 >= v73 >> 1)
          {
            v191 = sub_1000AE458(v73 > 1, v74 + 1, 1, v191, &qword_10026F900, &qword_1001F14D0, &type metadata accessor for Date);
          }

          v75 = v191;
          v191[2] = v74 + 1;
          v71(&v75[((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v74], v181, v192);
          v30 = v178;
          goto LABEL_9;
        }
      }

      sub_10008875C(v47, &unk_10026FC70, &unk_1001F1430);
LABEL_9:
      v64 += 16;
      if (!--v63)
      {
        goto LABEL_20;
      }
    }
  }

  v191 = &_swiftEmptyArrayStorage;
LABEL_20:

  v76 = v191[2];
  if (!v76)
  {
    v141 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v141 - 8) + 56))(v148, 1, 1, v141);
  }

  v77 = v157;
  v78 = v191 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v79 = *(v157 + 16);
  v182 = (v157 + 16);
  v183 = v78;
  v181 = v79;
  (v79)(v149);
  v80 = v188;
  sub_1001C4CD8();
  v81 = v175;
  sub_1001C4BE8();
  v82 = sub_1001AC6B4(v81, 1);
  v176 = *(v77 + 8);
  (v176)(v81, v192);
  v83 = v189 + 8;
  v84 = *(v189 + 8);
  v84(v80, v30);
  sub_1001C4CD8();
  sub_1001C4BE8();
  v85 = v192;
  v189 = v83;
  v184 = v84;
  v84(v80, v30);
  v86 = type metadata accessor for ReadingHistory.Streak(0);
  v87 = *(v86 - 8);
  v88 = *(v87 + 56);
  v89 = v87 + 56;
  v147 = v86;
  v143 = v88;
  v88(v150, 1, 1);
  v90 = 0;
  v190 = (v77 + 8);
  v168 = (v77 + 32);
  v167 = (v163 + 104);
  v166 = (v163 + 8);
  v152 = (v164 + 16);
  LODWORD(v165) = enum case for Calendar.Component.year(_:);
  v151 = (v164 + 8);
  v162 = (v161 + 56);
  LODWORD(v164) = enum case for Calendar.Component.month(_:);
  v161 += 48;
  v142[1] = v89;
  v145 = (v89 - 8);
  LODWORD(v163) = enum case for Calendar.Component.day(_:);
  v180 = v76;
  v144 = v76 - 1;
LABEL_22:
  v91 = v90;
  v92 = v177;
  v93 = v176;
  do
  {
    if (v91 >= v191[2])
    {
      goto LABEL_54;
    }

    v94 = (v91 + 1);
    v95 = v187;
    (v181)(v187, v183 + *(v77 + 72) * v91, v85);
    if (sub_1001C4C48())
    {
      v96 = v92;
      v97 = v188;
      sub_1001C4CD8();
      v98 = v175;
      sub_1001C4BF8();
      v99 = v192;
      (v184)(v97, v30);
      (v93)(v96, v99);
      v158 = *v168;
      (v158)(v96, v98, v99);
      if (__OFADD__(v82, 1))
      {
        goto LABEL_58;
      }

      v179 = (v82 + 1);
      v159 = v91;
      v160 = v91 + 1;
      while (1)
      {
        sub_1001C4CD8();
        v100 = *v167;
        v101 = v172;
        v102 = v173;
        (*v167)(v172, v165, v173);
        v103 = sub_1001C4D58();
        v104 = *v166;
        (*v166)(v101, v102);
        v100(v101, v164, v102);
        v105 = sub_1001C4D58();
        (v104)(v101, v102);
        v100(v101, v163, v102);
        v106 = sub_1001C4D58();
        (v104)(v101, v102);
        v107 = 100 * v103;
        if ((v103 * 100) >> 64 != (100 * v103) >> 63)
        {
          goto LABEL_55;
        }

        v108 = __OFADD__(v107, v105);
        v109 = (v107 + v105);
        v110 = v171;
        if (v108)
        {
          goto LABEL_56;
        }

        v195[0] = v109;
        sub_100084528(&unk_10026F470, &unk_1001F5600);
        v111 = v185;
        sub_1001C5BA8();
        v112 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
        v113 = *(v112 - 8);
        if ((*(v113 + 48))(v111, 1, v112) == 1)
        {
          v30 = v178;
          (v184)(v186, v178);
          sub_10008875C(v185, &qword_10026F880, &qword_1001F1470);
          v114 = 1;
          v115 = v169;
          v90 = v160;
          v116 = v159;
        }

        else
        {
          v117 = v185;
          v118 = v154;
          sub_1001C5D88();
          (*(v113 + 8))(v117, v112);
          v119 = v155;
          v120 = v156;
          (*v152)(v155, v118, v156);
          sub_1000B2E68(v118, type metadata accessor for ReadingHistoryMonth);
          v195[0] = v106;
          v121 = v153;
          sub_1001C5BA8();
          (*v151)(v119, v120);
          v122 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
          v123 = *(v122 - 8);
          v124 = (*(v123 + 48))(v121, 1, v122);
          v90 = v160;
          v116 = v159;
          if (v124 == 1)
          {
            v30 = v178;
            (v184)(v186, v178);
            sub_10008875C(v121, &unk_10026F8F0, &unk_1001F14C0);
            v114 = 1;
          }

          else
          {
            sub_1001C5D88();
            v30 = v178;
            (v184)(v186, v178);
            (*(v123 + 8))(v121, v122);
            v114 = 0;
          }

          v115 = v169;
        }

        (*v162)(v110, v114, 1, v115);
        v125 = (*v161)(v110, 1, v115);
        v126 = v170;
        v127 = v179;
        if (v125 == 1)
        {
          sub_10008875C(v110, &qword_100273DA0, &qword_1001F7E50);
          goto LABEL_43;
        }

        sub_1000B390C(v110, v170, type metadata accessor for ReadingHistoryDay);
        v128 = sub_1001C5E48();
        v129 = *(v115 + 20);
        sub_100084528(&qword_10026F4E0, &unk_1001F1140);
        sub_1001C56C8();
        if (v128 < v195[0])
        {
          break;
        }

        v108 = __OFADD__(v127, 1);
        v130 = (v127 + 1);
        v131 = v176;
        if (v108)
        {
          goto LABEL_57;
        }

        v179 = v130;
        v132 = v188;
        sub_1001C4CD8();
        v133 = v175;
        v134 = v177;
        sub_1001C4BF8();
        (v184)(v132, v30);
        sub_1000B2E68(v126, type metadata accessor for ReadingHistoryDay);
        v135 = v192;
        (v131)(v134, v192);
        (v158)(v134, v133, v135);
      }

      sub_1000B2E68(v126, type metadata accessor for ReadingHistoryDay);
LABEL_43:
      v136 = v150;
      v137 = v147;
      if ((*v145)(v150, 1, v147))
      {
        if (v127 >= 1)
        {
LABEL_45:
          v138 = v188;
          sub_1001C4CD8();
          v139 = v146;
          sub_1001C4BE8();
          (v184)(v138, v30);
          v85 = v192;
          (v176)(v187, v192);
          *(v139 + *(v147 + 20)) = v127;
          v143(v139, 0, 1);
          sub_1000B36A8(v139, v150, &qword_10026F508, &qword_1001F1150);
LABEL_48:
          v77 = v157;
          v82 = 0;
          if (v144 != v116)
          {
            goto LABEL_22;
          }

          v92 = v177;
          v93 = v176;
          goto LABEL_50;
        }
      }

      else if (*(v136 + *(v137 + 20)) < v127)
      {
        goto LABEL_45;
      }

      v85 = v192;
      (v176)(v187, v192);
      goto LABEL_48;
    }

    (v93)(v95, v85);
    ++v91;
  }

  while (v180 != v94);

LABEL_50:
  (v93)(v92, v85);
  (v93)(v149, v85);
  return sub_10009AE58(v150, v148, &qword_10026F508, &qword_1001F1150);
}

uint64_t sub_1000A28D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001F0CF0;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100084570();
  *(v14 + 64) = v15;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  v16 = sub_10009C048();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v15;
  *(v14 + 72) = v16;
  *(v14 + 80) = v17;
  v18 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v19 = 0x676E6964616F6CLL;
  if (*(a2 + *(v18 + 44)))
  {
    v19 = 0x7964616572;
  }

  v20 = 0xE700000000000000;
  if (*(a2 + *(v18 + 44)))
  {
    v20 = 0xE500000000000000;
  }

  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v15;
  *(v14 + 112) = v19;
  *(v14 + 120) = v20;
  v21 = a2 + *(v18 + 48);
  v22 = sub_1001578DC();
  *(v14 + 176) = &type metadata for String;
  *(v14 + 184) = v15;
  *(v14 + 152) = v22;
  *(v14 + 160) = v23;
  sub_1001C5118();

  sub_1000B344C(a1, v13, type metadata accessor for ReadingHistoryDataStore.State);
  v24 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1000B3710(v13, v5 + v24, type metadata accessor for ReadingHistoryDataStore.State);
  swift_endAccess();
  sub_10009C434();
  v25 = sub_1000B2E68(v13, type metadata accessor for ReadingHistoryDataStore.State);
  v26 = *(v5 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  __chkstk_darwin(v25);
  *&v32[-4] = a2;
  v27 = *(v26 + 16);
  v28 = swift_allocObject();
  v28[2] = sub_10009B018;
  v28[3] = &v32[-8];
  v28[4] = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10009B304;
  *(v29 + 24) = v28;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243E90;
  v30 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v27, v30);
  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A2CA8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v166 = a3;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v165 = (&v142 - v6);
  v169 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v7 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v162 = &v142 - v8;
  v9 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v157 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v158 = &v142 - v13;
  v168 = type metadata accessor for ReadingHistory.Streak(0);
  v164 = *(v168 - 8);
  v14 = *(v164 + 64);
  v15 = __chkstk_darwin(v168);
  v159 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v160 = &v142 - v17;
  v167 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v18 = *(*(v167 - 8) + 64);
  v19 = __chkstk_darwin(v167);
  v161 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v163 = (&v142 - v21);
  v22 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v142 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v142 - v31;
  __chkstk_darwin(v30);
  v34 = (&v142 - v33);
  v35 = type metadata accessor for ReadingHistoryModel(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35);
  v39 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37);
  v42 = &v142 - v41;
  __chkstk_darwin(v40);
  v44 = &v142 - v43;
  v45 = sub_1001C4CA8();
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45);
  v48 = __chkstk_darwin(v47);
  v49 = __chkstk_darwin(v48);
  result = __chkstk_darwin(v49);
  v57 = &v142 - v56;
  v58 = *(a1 + 8);
  v59 = *(a1 + 32);
  v60 = *(a1 + 41);
  if (v60)
  {
    v61 = *(a1 + 32);
  }

  else
  {
    v61 = *(a1 + 8);
  }

  if (*(v53 + 136) != v61)
  {
    v156 = v44;
    v153 = v32;
    v151 = v29;
    v149 = v26;
    v150 = v35;
    v62 = v168;
    v152 = v39;
    v155 = v42;
    v154 = v34;
    v63 = v169;
    v64 = *(a1 + 16);
    if (v60)
    {
      v64 = *(a1 + 40);
    }

    if (v64 == 3)
    {
      *(v53 + 136) = v61;
      v65 = v53 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
      v66 = result;
      v67 = v54;
      swift_beginAccess();
      (*(v67 + 16))(v57, v65 + *(v167 + 24), v66);
      v68 = v156;
      sub_1000B344C(v65, v156, type metadata accessor for ReadingHistoryModel);
      ReadingHistoryModel.readingDay(for:)();
      LODWORD(v65) = v69;
      sub_1000B2E68(v68, type metadata accessor for ReadingHistoryModel);
      result = (*(v67 + 8))(v57, v66);
      if (v65 == 2)
      {
        *v166 = 1;
      }

      return result;
    }

    if ((v60 & 1) == 0)
    {
      *(v53 + 136) = v58;
      return result;
    }

    if (!*(a1 + 40))
    {
      *(v53 + 136) = v59;
      return result;
    }

    v70 = v155;
    v71 = v167;
    if (*(a1 + 40) == 1)
    {
      v146 = v52;
      v142 = v51;
      v144 = v53;
      v72 = v53 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
      v73 = v55;
      v74 = result;
      v75 = v54;
      swift_beginAccess();
      v76 = v71[6];
      v145 = v75;
      v77 = *(v75 + 16);
      v148 = v73;
      v166 = v74;
      v147 = v75 + 16;
      (v77)(v73, v72 + v76, v74);
      sub_1000B344C(v72, v70, type metadata accessor for ReadingHistoryModel);
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v78 = v154;
        if (v59 > -9.22337204e18)
        {
          v79 = v148;
          if (v59 < 9.22337204e18)
          {
            v80 = v70;
            ReadingHistoryModel.setGoal(_:date:)(v59, v148);
            type metadata accessor for ReadingHistoryDataStore(0);
            v81 = v163;
            sub_1000B344C(v72, v163, type metadata accessor for ReadingHistoryDataStore.State);
            sub_10009DDF4(v81, v80, v79, v78);
            sub_1000B2E68(v81, type metadata accessor for ReadingHistoryDataStore.State);
            v82 = v78;
            v83 = v156;
            sub_1000A0C18(v80, v82, v156);
            sub_1000B2E68(v80, type metadata accessor for ReadingHistoryModel);
            sub_1000B390C(v83, v80, type metadata accessor for ReadingHistoryModel);
            v84 = v146;
            v163 = v77;
            (v77)(v146, v79, v166);
            v85 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v84);
            v156 = v86;
            v87 = v153;
            sub_10009ADF0(v72 + v71[5], v153, &qword_10026F508, &qword_1001F1150);
            v88 = *(v164 + 48);
            v89 = v88(v87, 1, v62);
            v143 = v72;
            if (v89 == 1)
            {
              v90 = &qword_10026F508;
              v91 = &qword_1001F1150;
              v92 = v87;
LABEL_19:
              sub_10008875C(v92, v90, v91);
LABEL_20:
              v77 = v162;
LABEL_21:
              v71 = v165;
              v93 = v63;
LABEL_41:
              v120 = v161;
              sub_1000B344C(v155, v161, type metadata accessor for ReadingHistoryModel);
              v121 = v167;
              sub_10009ADF0(v154, v120 + *(v167 + 20), &qword_10026F508, &qword_1001F1150);
              v122 = v148;
              (v163)(v120 + *(v121 + 24), v148, v166);
              sub_1001ABED4(v122, (v120 + *(v121 + 28)));
              v123 = v144;
              v124 = *(*(v144 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

              sub_1001C6688();

              v125 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
              (*(*(v125 - 8) + 56))(v71, 1, 2, v125);
              sub_1000B3710(v120, v77, type metadata accessor for ReadingHistoryModel);
              sub_1000B36A8(v71, v77 + *(v93 + 48), &unk_10026FC40, &qword_1001F0E90);
              sub_1000A28D4(v120, v77, 0xD000000000000015, 0x80000001001FF6A0);
              *(v123 + 136) = v59;
              sub_1000B3A90(v123 + 56, v170);
              v126 = v171;
              v127 = v172;
              sub_10009BB74(v170, v171);
              v128 = v152;
              sub_1000B344C(v143, v152, type metadata accessor for ReadingHistoryModel);
              (*(v127 + 48))(v128, v126, v127);
              sub_1000B2E68(v128, type metadata accessor for ReadingHistoryModel);
              sub_1000B2E68(v120, type metadata accessor for ReadingHistoryDataStore.State);
              sub_1000B2E68(v155, type metadata accessor for ReadingHistoryModel);
              (*(v145 + 8))(v148, v166);
              sub_10008E7BC(v170);
              sub_10008875C(v77, &unk_10026F420, &unk_1001F0E50);
              return sub_10008875C(v154, &qword_10026F508, &qword_1001F1150);
            }

            v94 = v160;
            sub_1000B390C(v87, v160, type metadata accessor for ReadingHistory.Streak);
            v95 = v72 + v71[7];
            v96 = v151;
            sub_10009ADF0(v95, v151, &qword_10026F508, &qword_1001F1150);
            if (v88(v96, 1, v62) == 1)
            {
              sub_1000B2E68(v94, type metadata accessor for ReadingHistory.Streak);
              sub_10008875C(v96, &qword_10026F508, &qword_1001F1150);
              v77 = v162;
              v71 = v165;
LABEL_40:
              v93 = v63;
              goto LABEL_41;
            }

            v97 = v159;
            sub_1000B390C(v96, v159, type metadata accessor for ReadingHistory.Streak);
            v98 = v146;
            (v163)(v146, v94, v166);
            v99 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v98);
            v71 = v165;
            if (v99 != v85 || v100 != v156)
            {
              sub_1000B2E68(v97, type metadata accessor for ReadingHistory.Streak);
              sub_1000B2E68(v94, type metadata accessor for ReadingHistory.Streak);
              v77 = v162;
              goto LABEL_40;
            }

            v101 = v85;
            v102 = v146;
            (v163)(v146, v97, v166);
            v103 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v102);
            v93 = v63;
            if (v103 != v85 || v104 != v156)
            {
              v129 = v97;
              goto LABEL_43;
            }

            v105 = v62;
            if (v88(v154, 1, v62) == 1)
            {
              goto LABEL_37;
            }

            v77 = v149;
            sub_10009ADF0(v154, v149, &qword_10026F508, &qword_1001F1150);
            result = v88(v77, 1, v62);
            if (result == 1)
            {
              __break(1u);
              return result;
            }

            v106 = v146;
            (v163)(v146, v77, v166);
            sub_1000B2E68(v77, type metadata accessor for ReadingHistory.Streak);
            v107 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v106);
            v109 = 100 * v107;
            if ((v107 * 100) >> 64 == (100 * v107) >> 63)
            {
              v110 = __OFADD__(v109, v108);
              v111 = v109 + v108;
              if (!v110)
              {
                v112 = 100 * v85;
                if ((v85 * 100) >> 64 == (100 * v85) >> 63)
                {
                  v110 = __OFADD__(v112, v156);
                  v113 = &v156[v112];
                  if (!v110)
                  {
                    v101 = v85;
                    v105 = v62;
                    if (v111 < v113)
                    {
LABEL_37:
                      v114 = *(v105 + 20);
                      v115 = v159;
                      v71 = *(v159 + v114);
                      v116 = *(v150 + 20);
                      v170[0] = v71;
                      v117 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
                      v118 = v158;
                      sub_1001C5BA8();
                      v119 = v145;
                      if ((*(v145 + 48))(v118, 1, v166) == 1)
                      {
                        sub_1000B2E68(v115, type metadata accessor for ReadingHistory.Streak);
                        sub_1000B2E68(v160, type metadata accessor for ReadingHistory.Streak);
                        v90 = &unk_10026FC70;
                        v91 = &unk_1001F1430;
                        v92 = v118;
                        goto LABEL_19;
                      }

                      v168 = v117;
                      v130 = *(v119 + 32);
                      v131 = v142;
                      v132 = v166;
                      v130(v142, v118, v166);
                      v133 = v146;
                      (v163)(v146, v131, v132);
                      if (_s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v133) != v101 || v134 != v156)
                      {
                        (*(v145 + 8))(v142, v166);
                        sub_1000B2E68(v115, type metadata accessor for ReadingHistory.Streak);
                        sub_1000B2E68(v160, type metadata accessor for ReadingHistory.Streak);
                        goto LABEL_20;
                      }

                      sub_1001C65B8();
                      v77 = v162;
                      if (qword_10026EBE8 == -1)
                      {
LABEL_47:
                        v164 = qword_1002711E8;
                        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
                        v135 = swift_allocObject();
                        *(v135 + 16) = xmmword_1001F0660;
                        *(v135 + 56) = &type metadata for Int;
                        *(v135 + 64) = &protocol witness table for Int;
                        *(v135 + 32) = v71;
                        v136 = v159;
                        v137 = sub_1001C4C08();
                        v139 = v138;
                        *(v135 + 96) = &type metadata for String;
                        *(v135 + 104) = sub_100084570();
                        *(v135 + 72) = v137;
                        *(v135 + 80) = v139;
                        sub_1001C5118();

                        v140 = v145;
                        v141 = v166;
                        (*(v145 + 56))(v157, 1, 1, v166);
                        v170[0] = v71;
                        sub_1001C5BB8();
                        (*(v140 + 8))(v142, v141);
                        sub_1000B2E68(v136, type metadata accessor for ReadingHistory.Streak);
                        sub_1000B2E68(v160, type metadata accessor for ReadingHistory.Streak);
                        goto LABEL_21;
                      }

LABEL_57:
                      swift_once();
                      goto LABEL_47;
                    }

                    v129 = v159;
LABEL_43:
                    sub_1000B2E68(v129, type metadata accessor for ReadingHistory.Streak);
                    sub_1000B2E68(v160, type metadata accessor for ReadingHistory.Streak);
                    v77 = v162;
                    goto LABEL_41;
                  }

LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }

LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  return result;
}

uint64_t ReadingHistoryModel.readingDay(for:)()
{
  v0 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for ReadingHistoryDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReadingHistoryModel.readingHistoryDay(for:)(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008875C(v3, &qword_100273DA0, &qword_1001F7E50);
    return 0;
  }

  else
  {
    sub_1000B390C(v3, v8, type metadata accessor for ReadingHistoryDay);
    v10 = sub_1001C5E48();
    v11 = *(v4 + 20);
    sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    sub_1001C56C8();
    sub_1001C5E48();
    sub_1001C56C8();
    sub_1000B2E68(v8, type metadata accessor for ReadingHistoryDay);
    return v10;
  }
}

uint64_t sub_1000A4068(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v57 = type metadata accessor for ReadingHistoryModel(0);
  v3 = *(*(v57 - 8) + 64);
  v4 = __chkstk_darwin(v57);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v53 - v6;
  v8 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v54 = &v53 - v21;
  v22 = __chkstk_darwin(v20);
  v53 = &v53 - v23;
  __chkstk_darwin(v22);
  v25 = &v53 - v24;
  v55 = a1;
  sub_10009ADF0(a1, v14, &unk_10026F820, &unk_1001F1440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_100084528(&qword_10026F838, &unk_1001F1920);
    sub_10009AE58(&v14[*(v26 + 48)], v25, &unk_10026F420, &unk_1001F0E50);
    sub_10008875C(v14, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_10009AE58(v14, v25, &unk_10026F420, &unk_1001F0E50);
  }

  v27 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  v28 = v58;
  swift_beginAccess();
  sub_1000B344C(v28 + v27, v7, type metadata accessor for ReadingHistoryModel);
  sub_1000B3814(&unk_10026F840, type metadata accessor for ReadingHistoryModel);
  v29 = sub_1001C5948();
  sub_1000B2E68(v7, type metadata accessor for ReadingHistoryModel);
  if (v29)
  {
    sub_10009EA90(v25);
    sub_10009ADF0(v55, v12, &unk_10026F820, &unk_1001F1440);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
      v31 = v53;
      sub_10009AE58(v12, v53, &unk_10026F420, &unk_1001F0E50);
      v32 = &v12[v30];
      v33 = v54;
      sub_10009AE58(v32, v54, &unk_10026F420, &unk_1001F0E50);
      v34 = *(v15 + 44);
      if ((*(v31 + v34) & 1) == 0 && *(v33 + v34) == 1 && *(v28 + 152) == 1)
      {
        sub_1000A4740();
      }

      sub_10008875C(v33, &unk_10026F420, &unk_1001F0E50);
      v35 = v31;
      v36 = &unk_10026F420;
      v37 = &unk_1001F0E50;
    }

    else
    {
      v36 = &unk_10026F820;
      v37 = &unk_1001F1440;
      v35 = v12;
    }

    sub_10008875C(v35, v36, v37);
    sub_1000B3A90(v28 + 56, aBlock);
    v49 = v60;
    v50 = v61;
    sub_10009BB74(aBlock, v60);
    v51 = v28 + v27;
    v52 = v56;
    sub_1000B344C(v51, v56, type metadata accessor for ReadingHistoryModel);
    (*(v50 + 6))(v52, v49, v50);
    sub_1000B2E68(v52, type metadata accessor for ReadingHistoryModel);
    sub_10008E7BC(aBlock);
    return sub_10008875C(v25, &unk_10026F420, &unk_1001F0E50);
  }

  v38 = v25[*(v15 + 44)];
  v39 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange;
  v40 = *(*(v28 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1001C6688();

  v41 = v19[*(v15 + 44)];
  v42 = sub_10008875C(v19, &unk_10026F420, &unk_1001F0E50);
  if (v38 == v41)
  {
    return sub_10008875C(v25, &unk_10026F420, &unk_1001F0E50);
  }

  v43 = *(v28 + v39);
  __chkstk_darwin(v42);
  *(&v53 - 2) = v25;
  v44 = *(v43 + 16);
  v45 = swift_allocObject();
  v45[2] = sub_1000B3664;
  v45[3] = &v53 - 4;
  v45[4] = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_10009AD7C;
  *(v46 + 24) = v45;
  v61 = sub_1000B3DA0;
  v62 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v60 = &unk_100243E18;
  v47 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v44, v47);
  _Block_release(v47);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if ((v44 & 1) == 0)
  {
    return sub_10008875C(v25, &unk_10026F420, &unk_1001F0E50);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A4740()
{
  v1 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v62 = &v50 - v3;
  v59 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  __chkstk_darwin(v6);
  v56 = &v50 - v8;
  v9 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v51 = type metadata accessor for ReadingHistoryModel(0);
  v13 = *(*(v51 - 8) + 64);
  v14 = __chkstk_darwin(v51);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v60 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v50 - v22;
  v24 = v0;
  v54 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange;
  v25 = *(*(v0 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1001C6688();

  LODWORD(v25) = v23[*(v18 + 44)];
  result = sub_10008875C(v23, &unk_10026F420, &unk_1001F0E50);
  if (v25 == 1)
  {
    v27 = v24;
    *(v24 + 136) = 0x4072C00000000000;
    v28 = v24 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
    v55 = v28;
    swift_beginAccess();
    v50 = type metadata accessor for ReadingHistoryModel;
    sub_1000B344C(v28, v17, type metadata accessor for ReadingHistoryModel);
    v30 = v52;
    v29 = v53;
    (*(v52 + 16))(v12, v17, v53);
    sub_1000A034C(v12, v17);
    (*(v30 + 8))(v12, v29);
    v32 = v56;
    v31 = v57;
    v33 = v58;
    (*(v57 + 16))(v56, &v17[*(v51 + 20)], v58);
    sub_1000A07B0(v32, v17);
    (*(v31 + 8))(v32, v33);
    v34 = v63;
    sub_1000B344C(v17, v63, type metadata accessor for ReadingHistoryModel);
    v35 = v59;
    v36 = *(v59 + 20);
    v37 = type metadata accessor for ReadingHistory.Streak(0);
    v38 = *(*(v37 - 8) + 56);
    v38(v34 + v36, 1, 1, v37);
    v39 = *(v35 + 24);
    v40 = sub_1001C4CA8();
    (*(*(v40 - 8) + 16))(v34 + v39, v55 + v39, v40);
    v38(v34 + *(v35 + 28), 1, 1, v37);
    v41 = *(*(v27 + v54) + 16);

    v42 = v60;
    sub_1001C6688();

    v43 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v44 = v62;
    (*(*(v43 - 8) + 56))(v62, 1, 2, v43);
    sub_1000B3710(v17, v42, type metadata accessor for ReadingHistoryModel);
    sub_1000B36A8(v44, v42 + *(v18 + 48), &unk_10026FC40, &qword_1001F0E90);
    sub_1000A28D4(v34, v42, 0x7461447261656C63, 0xE900000000000061);
    sub_1000B3A90(v27 + 56, v64);
    v45 = v65;
    v46 = v66;
    sub_10009BB74(v64, v65);
    v47 = v61;
    sub_1000B344C(v55, v61, v50);
    (*(v46 + 48))(v47, v45, v46);
    v48 = v27;
    sub_1000B2E68(v47, type metadata accessor for ReadingHistoryModel);
    sub_1000B2E68(v34, type metadata accessor for ReadingHistoryDataStore.State);
    sub_10008E7BC(v64);
    sub_10008875C(v42, &unk_10026F420, &unk_1001F0E50);
    result = sub_1000B2E68(v17, type metadata accessor for ReadingHistoryModel);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v24;
  }

  *(v48 + 152) = v49;
  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.handleSignificantDateChange()()
{
  v1 = v0;
  v44 = sub_1001C4D68();
  isa = v44[-1].isa;
  v2 = *(isa + 8);
  __chkstk_darwin(v44);
  v40 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v43 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v41 = v35 - v9;
  v10 = __chkstk_darwin(v8);
  v45 = v35 - v11;
  __chkstk_darwin(v10);
  v13 = v35 - v12;
  v35[3] = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v36 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001F0670;
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16();
  v17 = sub_1001C4C08();
  v19 = v18;
  v20 = *(v5 + 8);
  v38 = v5 + 8;
  v39 = v20;
  v20(v13, v4);
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100084570();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  sub_1001C5118();

  (v16)(v21);
  v22 = v40;
  sub_1001C4CD8();
  v23 = v45;
  v37 = v13;
  sub_1001C4CE8();
  (*(isa + 1))(v22, v44);
  v44 = *(v1 + 144);
  v24 = *(v5 + 16);
  v25 = v41;
  v24(v41, v23, v4);
  v26 = v43;
  v24(v43, v13, v4);
  v27 = *(v5 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = (v6 + v27 + v28) & ~v27;
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  v31 = *(v5 + 32);
  v31(v30 + v28, v25, v4);
  v31(v30 + v29, v26, v4);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000B2DB8;
  *(v32 + 24) = v30;
  aBlock[4] = sub_1000B2E48;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_1002434C0;
  v33 = _Block_copy(aBlock);

  dispatch_sync(v44, v33);
  _Block_release(v33);
  v34 = v39;
  v39(v23, v4);
  v34(v37, v4);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }
}

uint64_t sub_1000A53E0(uint64_t a1, uint64_t a2, char *a3)
{
  v80 = a3;
  v85 = a2;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v90 = &v76 - v6;
  v7 = type metadata accessor for ReadingHistoryModel(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v92 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v83 = &v76 - v12;
  __chkstk_darwin(v11);
  v82 = &v76 - v13;
  v93 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v14 = *(*(v93 - 8) + 64);
  v15 = __chkstk_darwin(v93);
  v91 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = (&v76 - v17);
  v18 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v79 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v84 = &v76 - v23;
  v24 = __chkstk_darwin(v22);
  v81 = &v76 - v25;
  v26 = __chkstk_darwin(v24);
  v95 = &v76 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = (&v76 - v29);
  __chkstk_darwin(v28);
  v32 = &v76 - v31;
  v33 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33);
  v94 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v76 - v37;
  v86 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange;
  v39 = a1;
  v40 = *(*(a1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1001C6688();

  v87 = v33;
  LODWORD(v40) = v38[*(v33 + 44)];
  sub_10008875C(v38, &unk_10026F420, &unk_1001F0E50);
  if (v40 == 1)
  {
    v78 = 0;
    v77 = v39;
    v41 = v39 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
    swift_beginAccess();
    v42 = v93;
    v43 = v41 + *(v93 + 20);
    v88 = v32;
    sub_10009ADF0(v43, v32, &qword_10026F508, &qword_1001F1150);
    v44 = type metadata accessor for ReadingHistoryDataStore(0);
    v45 = v89;
    sub_1000B344C(v41, v89, type metadata accessor for ReadingHistoryDataStore.State);
    v46 = v82;
    sub_1000B344C(v41, v82, type metadata accessor for ReadingHistoryModel);
    v47 = v85;
    v76 = v44;
    sub_10009DDF4(v45, v46, v85, v30);
    sub_1000B2E68(v46, type metadata accessor for ReadingHistoryModel);
    sub_1000B2E68(v45, type metadata accessor for ReadingHistoryDataStore.State);
    v48 = v83;
    sub_1000B344C(v41, v83, type metadata accessor for ReadingHistoryModel);
    sub_10009ADF0(v41 + *(v42 + 28), v95, &qword_10026F508, &qword_1001F1150);
    v89 = v30;
    v49 = v81;
    sub_10009ADF0(v30, v81, &qword_10026F508, &qword_1001F1150);
    v50 = type metadata accessor for ReadingHistory.Streak(0);
    v51 = *(*(v50 - 8) + 48);
    if (v51(v49, 1, v50) == 1)
    {
      sub_10008875C(v49, &qword_10026F508, &qword_1001F1150);
      v52 = 0;
    }

    else
    {
      v52 = *(v49 + *(v50 + 20));
      sub_1000B2E68(v49, type metadata accessor for ReadingHistory.Streak);
    }

    v54 = v84;
    sub_10009ADF0(v88, v84, &qword_10026F508, &qword_1001F1150);
    if (v51(v54, 1, v50) == 1)
    {
      sub_10008875C(v54, &qword_10026F508, &qword_1001F1150);
      v55 = 0;
    }

    else
    {
      v55 = *(v54 + *(v50 + 20));
      sub_1000B2E68(v54, type metadata accessor for ReadingHistory.Streak);
    }

    v56 = v89;
    v57 = v95;
    v58 = v47;
    v59 = sub_1001AF394(v47, 1);
    v60 = v91;
    if (v55 < v52 || v59)
    {
      sub_1000A0C18(v48, v56, v46);
      sub_1000B2E68(v48, type metadata accessor for ReadingHistoryModel);
      sub_1000B390C(v46, v48, type metadata accessor for ReadingHistoryModel);
      v61 = v79;
      sub_1001ABED4(v80, v79);
      sub_10008875C(v57, &qword_10026F508, &qword_1001F1150);
      sub_10009AE58(v61, v57, &qword_10026F508, &qword_1001F1150);
    }

    sub_1000B344C(v48, v60, type metadata accessor for ReadingHistoryModel);
    v62 = v93;
    sub_10009ADF0(v56, v60 + *(v93 + 20), &qword_10026F508, &qword_1001F1150);
    v63 = *(v62 + 24);
    v64 = sub_1001C4CA8();
    (*(*(v64 - 8) + 16))(v60 + v63, v58, v64);
    sub_10009ADF0(v57, v60 + *(v62 + 28), &qword_10026F508, &qword_1001F1150);
    v65 = v77;
    v66 = *(*(v77 + v86) + 16);

    v67 = v94;
    v68 = v87;
    v69 = v78;
    sub_1001C6688();

    v70 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v71 = v90;
    (*(*(v70 - 8) + 56))(v90, 1, 2, v70);
    sub_1000B3710(v60, v67, type metadata accessor for ReadingHistoryModel);
    sub_1000B36A8(v71, v67 + *(v68 + 48), &unk_10026FC40, &qword_1001F0E90);
    sub_1000A28D4(v60, v67, 0xD00000000000001BLL, 0x80000001001FF7C0);
    sub_1000B3A90(v65 + 56, v96);
    v72 = v97;
    v73 = v98;
    sub_10009BB74(v96, v97);
    v74 = v41;
    v75 = v92;
    sub_1000B344C(v74, v92, type metadata accessor for ReadingHistoryModel);
    (*(v73 + 48))(v75, v72, v73);
    if (v69)
    {
    }

    sub_1000B2E68(v75, type metadata accessor for ReadingHistoryModel);
    sub_1000B2E68(v60, type metadata accessor for ReadingHistoryDataStore.State);
    sub_10008875C(v95, &qword_10026F508, &qword_1001F1150);
    sub_1000B2E68(v48, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v89, &qword_10026F508, &qword_1001F1150);
    sub_10008875C(v88, &qword_10026F508, &qword_1001F1150);
    sub_10008E7BC(v96);
    return sub_10008875C(v94, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    return sub_1001C5118();
  }
}

uint64_t sub_1000A5E04(uint64_t *a1, uint64_t a2)
{
  v52 = a2;
  v4 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v54 = v48 - v6;
  v53 = type metadata accessor for ReadingHistoryDay(0);
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v53);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1001C4D68();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v57);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v48 - v15;
  v17 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v48 - v19;
  v21 = sub_1001C4948();
  v55 = *(v21 - 8);
  v56 = v21;
  v22 = *(v55 + 64);
  __chkstk_darwin(v21);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v48 - v27;
  v58 = sub_1001C4CA8();
  v29 = *(v58 - 8);
  v30 = *(v29 + 64);
  result = __chkstk_darwin(v58);
  v50 = v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 100 * *a1;
  if ((*a1 * 100) >> 64 != v33 >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v34 = a1[1];
  if (__OFADD__(v33, v34))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v33 + v34 <= 9999)
  {
    (*(v29 + 56))(v28, 1, 1, v58);
LABEL_6:
    v38 = &unk_10026FC70;
    v39 = &unk_1001F1430;
    v40 = v28;
LABEL_7:
    sub_10008875C(v40, v38, v39);
    return 0;
  }

  v35 = *(v9 + 56);
  v48[1] = v2;
  v35(v20, 1, 1, v57);
  v36 = sub_1001C4D78();
  (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
  sub_1001C4938();
  sub_1001C4CD8();
  sub_1001C4D18();
  (*(v9 + 8))(v12, v57);
  (*(v55 + 8))(v24, v56);
  v37 = v58;
  if ((*(v29 + 48))(v28, 1, v58) == 1)
  {
    goto LABEL_6;
  }

  v41 = v50;
  (*(v29 + 32))(v50, v28, v37);
  v42 = v54;
  ReadingHistoryModel.readingHistoryDay(for:)(v54);
  v43 = v53;
  if ((*(v51 + 48))(v42, 1, v53) == 1)
  {
    (*(v29 + 8))(v41, v37);
    v38 = &qword_100273DA0;
    v39 = &qword_1001F7E50;
    v40 = v42;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v49;
  sub_1000B390C(v44, v49, type metadata accessor for ReadingHistoryDay);
  v46 = sub_1001C5E48();
  v47 = *(v43 + 20);
  sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56C8();
  sub_1000B2E68(v45, type metadata accessor for ReadingHistoryDay);
  (*(v29 + 8))(v41, v37);
  return v46 >= v59;
}

uint64_t ReadingHistoryDataStore.deinit()
{
  sub_10008875C(v0 + 16, &unk_10026F4D0, &unk_1001F1130);
  sub_10008E7BC((v0 + 56));

  v1 = *(v0 + 128);

  sub_1000B2E68(v0 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryDataStore.State);
  v2 = *(v0 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);

  v3 = *(v0 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction);

  v4 = *(v0 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_transactionProvider);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReadingHistoryDataStore.__deallocating_deinit()
{
  ReadingHistoryDataStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ReadingHistoryDataStore.addObserver(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v3 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  v9 = *(v8 + 16);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_10009A564;
  v10[4] = v7;
  v10[5] = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000B2EE8;
  *(v11 + 24) = v10;
  v14[4] = sub_1000B3DA0;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000906F4;
  v14[3] = &unk_100243560;
  v12 = _Block_copy(v14);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.addObserverWithEvent(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  v8 = *(v7 + 16);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000B3E58;
  *(v10 + 24) = v9;
  v13[4] = sub_1000B3DA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000906F4;
  v13[3] = &unk_1002435D8;
  v11 = _Block_copy(v13);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.removeObserver(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000B2EF4;
  *(v6 + 24) = v5;
  v9[4] = sub_1000B3DA0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_100243650;
  v7 = _Block_copy(v9);
  swift_retain_n();
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.increment(date:by:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C4CA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *(v2 + 144);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000B2EFC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_1002436C8;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6D0C(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v6 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - v8;
  v9 = type metadata accessor for ReadingHistoryDay(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReadingHistoryModel(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 136);
  v19 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  result = sub_1000B344C(a1 + v19, v17, type metadata accessor for ReadingHistoryModel);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = v13;
  ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(a2, a3, v18);
  sub_100084528(&qword_10026F900, &qword_1001F14D0);
  v21 = sub_1001C4CA8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001F0670;
  (*(v22 + 16))(v25 + v24, a2, v21);
  sub_1000A719C(v25, v17, 0x6E656D6572636E69, 0xE900000000000074);
  swift_setDeallocating();
  (*(v22 + 8))(v25 + v24, v21);
  swift_deallocClassInstance();
  v26 = v33;
  ReadingHistoryModel.readingHistoryDay(for:)(v33);
  if ((*(v10 + 48))(v26, 1, v9) == 1)
  {
    sub_1000B2E68(v17, type metadata accessor for ReadingHistoryModel);
    return sub_10008875C(v26, &qword_100273DA0, &qword_1001F7E50);
  }

  else
  {
    v27 = v26;
    v28 = v32;
    sub_1000B390C(v27, v32, type metadata accessor for ReadingHistoryDay);
    swift_beginAccess();
    if (*(a1 + 40))
    {
      sub_1000B3A90(a1 + 16, v34);
      swift_endAccess();
      v29 = v35;
      v30 = v36;
      sub_10009BB74(v34, v35);
      (*(v30 + 8))(a2, v28, v29, v30);
      sub_1000B2E68(v28, type metadata accessor for ReadingHistoryDay);
      sub_1000B2E68(v17, type metadata accessor for ReadingHistoryModel);
      return sub_10008E7BC(v34);
    }

    else
    {
      sub_1000B2E68(v28, type metadata accessor for ReadingHistoryDay);
      sub_1000B2E68(v17, type metadata accessor for ReadingHistoryModel);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1000A719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v66 = a1;
  v65[1] = *v4;
  v6 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v70 = v65 - v8;
  v69 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v9 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v75 = v65 - v10;
  v11 = type metadata accessor for ReadingHistoryModel(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v71 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v67 = v65 - v16;
  __chkstk_darwin(v15);
  v18 = v65 - v17;
  v19 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v79 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v65 - v23;
  v25 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v65[0] = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = (v65 - v29);
  v31 = sub_1001C4CA8();
  v76 = *(v31 - 8);
  v32 = v76;
  v33 = *(v76 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = v65 - v37;
  v74 = v4;
  v39 = v4 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v68 = v19;
  v40 = *(v19 + 24);
  v41 = *(v32 + 16);
  v81 = v31;
  v77 = v41;
  v41(v38, (v39 + v40), v31);
  v78 = v39;
  sub_1000B344C(v39, v24, type metadata accessor for ReadingHistoryDataStore.State);
  v80 = v30;
  sub_10009DDF4(v24, a2, v38, v30);
  sub_1000B2E68(v24, type metadata accessor for ReadingHistoryDataStore.State);
  if (*(v66 + 16) == 1 && (v42 = v77, v43 = v81, v77(v36, (v66 + ((*(v76 + 80) + 32) & ~*(v76 + 80))), v81), v44 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v36), v46 = v45, v42(v36, v38, v43), v44 == _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v36)) && v46 == v47)
  {
    sub_1000B390C(a2, v18, type metadata accessor for ReadingHistoryModel);
    sub_1000A0C18(v18, v80, a2);
    sub_1000B2E68(v18, type metadata accessor for ReadingHistoryModel);
  }

  else
  {
    sub_1000B344C(v78, v18, type metadata accessor for ReadingHistoryModel);
    v48 = sub_1001ACEE4(a2);
    sub_1000B2E68(v18, type metadata accessor for ReadingHistoryModel);
    v49 = v65[0];
    sub_1000A1170(a2, v48, v65[0]);

    sub_1000B390C(a2, v18, type metadata accessor for ReadingHistoryModel);
    sub_1000A0C18(v18, v49, a2);
    sub_1000B2E68(v18, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v49, &qword_10026F508, &qword_1001F1150);
  }

  v50 = v67;
  sub_1000B390C(a2, v67, type metadata accessor for ReadingHistoryModel);
  v52 = v74;
  v51 = v75;
  if (*(v74 + 96) == 1)
  {
    v53 = v74[13];
    sub_1000B344C(v50, a2, type metadata accessor for ReadingHistoryModel);
    sub_1001B1130(v53);
    sub_1000B2E68(v50, type metadata accessor for ReadingHistoryModel);
  }

  else
  {
    sub_1000B390C(v50, a2, type metadata accessor for ReadingHistoryModel);
  }

  v54 = v79;
  sub_1000B344C(a2, v79, type metadata accessor for ReadingHistoryModel);
  v55 = v68;
  sub_10009ADF0(v80, v54 + *(v68 + 20), &qword_10026F508, &qword_1001F1150);
  v77((v54 + *(v55 + 24)), v38, v81);
  v56 = v38;
  sub_1001ABED4(v38, (v54 + *(v55 + 28)));
  v57 = *(*(v52 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  v58 = v69;
  sub_1001C6688();

  v59 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v60 = v70;
  (*(*(v59 - 8) + 56))(v70, 1, 2, v59);
  sub_1000B3710(v54, v51, type metadata accessor for ReadingHistoryModel);
  sub_1000B36A8(v60, v51 + *(v58 + 48), &unk_10026FC40, &qword_1001F0E90);
  sub_1000A28D4(v54, v51, v72, v73);
  sub_1000B3A90((v52 + 7), v82);
  v61 = v83;
  v62 = v84;
  sub_10009BB74(v82, v83);
  v63 = v71;
  sub_1000B344C(v78, v71, type metadata accessor for ReadingHistoryModel);
  (*(v62 + 48))(v63, v61, v62);
  sub_1000B2E68(v63, type metadata accessor for ReadingHistoryModel);
  sub_1000B2E68(v79, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10008875C(v80, &qword_10026F508, &qword_1001F1150);
  (*(v76 + 8))(v56, v81);
  sub_10008E7BC(v82);
  return sub_10008875C(v51, &unk_10026F420, &unk_1001F0E50);
}

uint64_t ReadingHistoryDataStore.applyUpdate(update:)(void *a1)
{
  v3 = *(v1 + 144);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B2F8C;
  *(v5 + 24) = v4;
  v9[4] = sub_1000B3DA0;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_100243740;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A7BA8(void *a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v46 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = v41 - v6;
  v7 = sub_1001C4CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReadingHistoryModel(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v48 = v15;
  sub_1000B344C(a1 + v16, v15, type metadata accessor for ReadingHistoryModel);
  v17 = ReadingHistoryUpdate.days.getter();
  v18 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = sub_10012B458(*(v17 + 16), 0);
    v21 = sub_10012C1C8(v49, &v20[(*(v8 + 80) + 32) & ~*(v8 + 80)], v19, v18);
    v42 = v49[3];
    v43 = v49[2];
    v41[1] = v49[4];
    swift_bridgeObjectRetain_n();
    sub_100005064();
    if (v21 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = &_swiftEmptyArrayStorage;
LABEL_5:
  v42 = a1;
  v49[0] = v20;
  sub_1000AD81C(v49);

  v43 = v49[0];
  v22 = v49[0][2];
  if (v22)
  {
    v25 = *(v8 + 16);
    v23 = v8 + 16;
    v24 = v25;
    v26 = v43 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v27 = *(v23 + 56);
    v28 = (v23 - 8);
    v44 = v18;
    v25(v11, v26, v7);
    while (1)
    {
      if (*(v18 + 16))
      {
        v29 = sub_100187AA4(v11);
        if (v30)
        {
          v31 = v46;
          sub_1000B344C(*(v18 + 56) + *(v47 + 72) * v29, v46, type metadata accessor for ReadingHistoryDay);
          v32 = v31;
          v33 = v27;
          v34 = v24;
          v35 = v7;
          v36 = v23;
          v37 = v45;
          sub_1000B390C(v32, v45, type metadata accessor for ReadingHistoryDay);
          ReadingHistoryModel.mergeDay(date:day:)(v11, v37);
          v38 = v37;
          v23 = v36;
          v7 = v35;
          v24 = v34;
          v27 = v33;
          v18 = v44;
          sub_1000B2E68(v38, type metadata accessor for ReadingHistoryDay);
        }
      }

      (*v28)(v11, v7);
      v26 += v27;
      if (!--v22)
      {
        break;
      }

      v24(v11, v26, v7);
    }
  }

  v39 = v48;
  sub_1000A719C(v43, v48, 0x647055796C707061, 0xEB00000000657461);

  return sub_1000B2E68(v39, type metadata accessor for ReadingHistoryModel);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearData()()
{
  v1 = *(v0 + 144);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000B2F94;
  *(v2 + 24) = v0;
  v4[4] = sub_1000B3DA0;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000906F4;
  v4[3] = &unk_100243790;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void static ReadingHistoryDataStore.clearCachedData(in:)(void *a1)
{
  v2 = sub_1001C5FE8();
  [a1 removeObjectForKey:v2];

  v3 = sub_1001C5FE8();
  [a1 setInteger:0 forKey:v3];
}

uint64_t ReadingHistoryDataStore.longestStreak.getter()
{
  v1 = *(v0 + 144);
  sub_100084528(&qword_10026F508, &qword_1001F1150);
  return sub_1001C6688();
}

uint64_t sub_1000A8254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v4 = type metadata accessor for ReadingHistoryDataStore.State(0);
  return sub_10009ADF0(v3 + *(v4 + 28), a2, &qword_10026F508, &qword_1001F1150);
}

uint64_t ReadingHistoryDataStore.currentStreakLength.getter()
{
  v1 = *(v0 + 144);
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000A8334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = a1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v9 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v8 + *(v9 + 20), v7, &qword_10026F508, &qword_1001F1150);
  v10 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    result = sub_10008875C(v7, &qword_10026F508, &qword_1001F1150);
    v12 = 0;
  }

  else
  {
    v12 = *&v7[*(v10 + 20)];
    result = sub_1000B2E68(v7, type metadata accessor for ReadingHistory.Streak);
  }

  *a2 = v12;
  return result;
}

uint64_t ReadingHistoryDataStore.readingHistoryDay(for:)()
{
  v1 = *(v0 + 144);
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000A8508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v52 = a2;
  v51 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v49 = *(v51 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v51);
  v47 = &v44 - v5;
  v46 = sub_1001C5E78();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v46);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v53 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v44 - v21;
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  v25 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v48 = a1;
  sub_1000B344C(a1 + v25, v12, type metadata accessor for ReadingHistoryModel);
  ReadingHistoryModel.readingHistoryDay(for:)(v24);
  sub_1000B2E68(v12, type metadata accessor for ReadingHistoryModel);
  sub_10009ADF0(v24, v22, &qword_100273DA0, &qword_1001F7E50);
  v26 = type metadata accessor for ReadingHistoryDay(0);
  v27 = *(*(v26 - 8) + 48);
  if (v27(v22, 1, v26) == 1)
  {
    sub_10008875C(v22, &qword_100273DA0, &qword_1001F7E50);
    v28 = 0;
  }

  else
  {
    v29 = v45;
    v30 = v46;
    (*(v6 + 16))(v45, v22, v46);
    sub_1000B2E68(v22, type metadata accessor for ReadingHistoryDay);
    v28 = sub_1001C5E48();
    (*(v6 + 8))(v29, v30);
  }

  sub_10009ADF0(v24, v19, &qword_100273DA0, &qword_1001F7E50);
  v31 = v27(v19, 1, v26);
  v32 = v53;
  if (v31 != 1)
  {
    v36 = *(v26 + 20);
    v52 = v28;
    v37 = v49;
    v38 = v47;
    v39 = v51;
    (*(v49 + 16))(v47, &v19[v36], v51);
    sub_1000B2E68(v19, type metadata accessor for ReadingHistoryDay);
    sub_1001C56C8();
    (*(v37 + 8))(v38, v39);
    v28 = v52;
    v35 = v54;
    goto LABEL_10;
  }

  result = sub_10008875C(v19, &qword_100273DA0, &qword_1001F7E50);
  v34 = *(v48 + 136);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v35 = v34;
LABEL_10:
  sub_10009ADF0(v24, v32, &qword_100273DA0, &qword_1001F7E50);
  if (v27(v32, 1, v26) == 1)
  {
    sub_10008875C(v24, &qword_100273DA0, &qword_1001F7E50);
    result = sub_10008875C(v32, &qword_100273DA0, &qword_1001F7E50);
    v40 = 0;
  }

  else
  {
    v41 = sub_1001C5E48();
    v42 = v32 + *(v26 + 20);
    sub_1001C56C8();
    sub_10008875C(v24, &qword_100273DA0, &qword_1001F7E50);
    v40 = v41 >= v54;
    result = sub_1000B2E68(v32, type metadata accessor for ReadingHistoryDay);
  }

  v43 = v50;
  *v50 = v28;
  v43[1] = v35;
  *(v43 + 16) = v40;
  return result;
}

char *ReadingHistoryDataStore.readingHistory(range:)(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_1001C4CA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v61 = &v48 - v9;
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = sub_1001C4D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  v49 = v4;
  v22 = *(v4 + 16);
  v22(&v48 - v20, a1, v3);
  v22(&v21[*(v18 + 56)], v60, v3);
  v23 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1001C4CD8();
  isa = sub_1001C4D08().super.isa;
  v25 = *(v13 + 8);
  v25(v16, v12);
  [v23 setCalendar:isa];

  v26 = sub_1001C5FE8();
  [v23 setDateFormat:v26];

  sub_1001C4CD8();
  sub_1001C4CE8();
  v25(v16, v12);
  sub_1001C4CD8();
  v48 = v21;
  sub_1001C4CE8();
  v55 = v16;
  v56 = v13 + 8;
  v57 = v12;
  v53 = v25;
  v25(v16, v12);
  v27 = sub_1000B3814(&qword_10026F518, &type metadata accessor for Date);
  v60 = v3;
  v52 = v27;
  v28 = sub_1001C5FC8();
  if (v28)
  {

    v29 = *(v49 + 8);
    v30 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v54 = v23;
    v50 = *(v59 + 144);
    v51 = (v49 + 8);
    v49 += 32;
    v30 = &_swiftEmptyArrayStorage;
    do
    {
      __chkstk_darwin(v28);
      *(&v48 - 2) = v31;
      *(&v48 - 1) = v11;
      sub_1001C6688();
      v32 = v62;
      v33 = v63;
      v34 = v64;
      v35 = sub_1001C4C38().super.isa;
      v36 = [v54 stringFromDate:v35];

      v37 = sub_1001C6018();
      v39 = v38;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1000ADAF4(0, *(v30 + 2) + 1, 1, v30);
      }

      v41 = *(v30 + 2);
      v40 = *(v30 + 3);
      if (v41 >= v40 >> 1)
      {
        v30 = sub_1000ADAF4((v40 > 1), v41 + 1, 1, v30);
      }

      *(v30 + 2) = v41 + 1;
      v42 = &v30[40 * v41];
      *(v42 + 4) = v37;
      *(v42 + 5) = v39;
      *(v42 + 6) = v32;
      *(v42 + 7) = v33;
      v42[64] = v34;
      v43 = v55;
      sub_1001C4CD8();
      v44 = v58;
      sub_1001C4BF8();
      v53(v43, v57);
      v29 = *v51;
      v45 = v60;
      (*v51)(v11, v60);
      (*v49)(v11, v44, v45);
      v28 = sub_1001C5FC8();
    }

    while ((v28 & 1) == 0);
  }

  v46 = v60;
  v29(v61, v60);
  sub_10008875C(v48, &qword_10026F510, &qword_1001F1158);
  v29(v11, v46);
  return v30;
}

uint64_t ReadingHistoryDataStore.readingHistoryState(range:currentTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v40 = a1;
  v41 = a2;
  v45 = a4;
  v44 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v4 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v46 = &v37 - v5;
  v39 = sub_1001C4D68();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C4CA8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  v23 = v11[2];
  v23(&v37 - v21, v40, v10);
  v23(&v22[*(v16 + 56)], v41, v10);
  sub_1001C4CD8();
  v24 = v14;
  v38 = v14;
  sub_1001C4CE8();
  (*(v6 + 8))(v9, v39);
  v25 = v43;
  v26 = *(v43 + 144);
  sub_1001C6688();
  v42 = v49;
  sub_1001C6688();
  v47 = v25;
  v48 = v24;
  sub_1001C6688();
  v44 = v49;
  v41 = v50;
  LODWORD(v40) = v51;
  sub_10009ADF0(v22, v20, &qword_10026F510, &qword_1001F1158);
  v27 = *(v16 + 56);
  v28 = ReadingHistoryDataStore.readingHistory(range:)(v20, &v20[v27]);
  sub_10008875C(v22, &qword_10026F510, &qword_1001F1158);
  v29 = v11[1];
  v29(&v20[v27], v10);
  v29(v20, v10);
  v30 = type metadata accessor for ReadingHistory.State(0);
  v31 = v30[5];
  v32 = type metadata accessor for ReadingHistory.Streak(0);
  v33 = v45;
  (*(*(v32 - 8) + 56))(v45 + v31, 1, 1, v32);
  *v33 = v42;
  sub_1000B36A8(v46, v33 + v31, &qword_10026F508, &qword_1001F1150);
  v34 = v33 + v30[6];
  v35 = v41;
  *v34 = v44;
  *(v34 + 1) = v35;
  v34[16] = v40;
  *(v33 + v30[7]) = v28;
  return (v29)(v38, v10);
}

uint64_t sub_1000A9484()
{
  v1 = *(*v0 + 144);
  sub_100084528(&qword_10026F508, &qword_1001F1150);
  return sub_1001C6688();
}

uint64_t sub_1000A94F8()
{
  v1 = *(*v0 + 144);
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000A9558()
{
  v1 = *(*v0 + 144);
  sub_1001C6688();
  return v3;
}

uint64_t ReadingHistoryDataStore.readingHistoryModelSnapshot(currentTime:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v75 = a2;
  v76 = a1;
  v3 = type metadata accessor for ReadingHistoryModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v74 = &v64 - v8;
  v9 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  v15 = __chkstk_darwin(v13);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v68 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v64 - v27;
  v29 = *(*(v2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1001C6688();

  v30 = *(v25 + 48);
  v69 = v28[*(v25 + 44)];
  v71 = v24;
  sub_10009ADF0(&v28[v30], v24, &unk_10026FC40, &qword_1001F0E90);
  v31 = v76;
  v32 = ReadingHistoryModel.readingDay(for:)();
  v34 = v33;
  LOBYTE(v24) = v35;
  sub_1001ABED4(v31, v12);
  v73 = v13;
  v36 = *(v13 + 20);
  v37 = type metadata accessor for ReadingHistory.Streak(0);
  v65 = *(*(v37 - 8) + 56);
  v65(&v18[v36], 1, 1, v37);
  *v18 = v32;
  *(v18 + 1) = v34;
  v18[16] = v24;
  v70 = v18;
  v38 = &v18[v36];
  v39 = v68;
  sub_1000B36A8(v12, v38, &qword_10026F508, &qword_1001F1150);
  sub_10009ADF0(&v28[v30], v39, &unk_10026FC40, &qword_1001F0E90);
  v40 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  if ((*(*(v40 - 8) + 48))(v39, 2, v40))
  {
    sub_10008875C(v28, &unk_10026F420, &unk_1001F0E50);
    v41 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v42 = v75;
    v43 = v70;
    sub_1000B344C(v70, &v75[v41[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v44 = v73;
    v45 = *(v72 + 56);
    v46 = v74;
    v45(v74, 1, 1, v73);
    v47 = v41[7];
    v45(&v42[v47], 1, 1, v44);
    *v42 = v69;
    sub_10009AE58(v71, &v42[v41[5]], &unk_10026FC40, &qword_1001F0E90);
    sub_1000B36A8(v46, &v42[v47], &unk_10026F520, &unk_1001F1160);
  }

  else
  {
    v48 = v39;
    v49 = v66;
    sub_1000B390C(v48, v66, type metadata accessor for ReadingHistoryModel);
    v50 = v76;
    v68 = ReadingHistoryModel.readingDay(for:)();
    v52 = v51;
    v54 = v53;
    sub_1001ABED4(v50, v12);
    sub_1000B2E68(v49, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v28, &unk_10026F420, &unk_1001F0E50);
    v55 = v73;
    v56 = *(v73 + 20);
    v57 = v67;
    v65(&v67[v56], 1, 1, v37);
    *v57 = v68;
    *(v57 + 8) = v52;
    *(v57 + 16) = v54;
    sub_1000B36A8(v12, v57 + v56, &qword_10026F508, &qword_1001F1150);
    v58 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v59 = v75;
    v43 = v70;
    sub_1000B344C(v70, &v75[v58[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v60 = v74;
    sub_1000B344C(v57, v74, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v61 = *(v72 + 56);
    v61(v60, 0, 1, v55);
    v62 = v58[7];
    v61(&v59[v62], 1, 1, v55);
    *v59 = v69;
    sub_10009AE58(v71, &v59[v58[5]], &unk_10026FC40, &qword_1001F0E90);
    sub_1000B36A8(v60, &v59[v62], &unk_10026F520, &unk_1001F1160);
    sub_1000B2E68(v57, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  }

  return sub_1000B2E68(v43, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
}

uint64_t sub_1000A9D4C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B3D9C;
  *(v3 + 24) = v1;
  v6[4] = sub_1000B3DA0;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000906F4;
  v6[3] = &unk_100243AF8;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A9E84()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v0 + 120);
  v8 = *(*v0 + 128);
  v7(v4);
  sub_1000AA0B4(v6, 0x646F547261656C63, 0xEA00000000007961);
  return (*(v2 + 8))(v6, v1);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearToday()()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v7(v4);
  sub_1000AA0B4(v6, 0x646F547261656C63, 0xEA00000000007961);
  (*(v2 + 8))(v6, v1);
}

uint64_t sub_1000AA0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001C4CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 144);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v11, v10, v7);
  *(v13 + v12) = v3;
  v14 = (v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000B39F4;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243FD0;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AA308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v56 = a2;
  v64 = a1;
  v5 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v53 - v7;
  v60 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v8 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v58 = &v53 - v9;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v53 - v19);
  v21 = type metadata accessor for ReadingHistoryModel(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v59 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v62 = &v53 - v26;
  __chkstk_darwin(v25);
  v28 = &v53 - v27;
  v29 = sub_1001C4CA8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v35 = v11[8];
  v61 = v30;
  v54 = *(v30 + 16);
  v54(v33, v34 + v35, v29);
  v55 = type metadata accessor for ReadingHistoryModel;
  sub_1000B344C(v34, v28, type metadata accessor for ReadingHistoryModel);
  sub_1001B0290(v64);
  type metadata accessor for ReadingHistoryDataStore(0);
  sub_1000B344C(v34, v16, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10009DDF4(v16, v28, v33, v20);
  sub_1000B2E68(v16, type metadata accessor for ReadingHistoryDataStore.State);
  v36 = v62;
  sub_1000A0C18(v28, v20, v62);
  sub_1000B2E68(v28, type metadata accessor for ReadingHistoryModel);
  sub_1000B390C(v36, v28, type metadata accessor for ReadingHistoryModel);
  v37 = v57;
  sub_1000B344C(v28, v57, type metadata accessor for ReadingHistoryModel);
  v38 = v37 + v11[7];
  v64 = v20;
  sub_10009ADF0(v20, v38, &qword_10026F508, &qword_1001F1150);
  v39 = v37 + v11[8];
  v62 = v29;
  v54(v39, v33, v29);
  v40 = v33;
  v41 = v37;
  v42 = v58;
  sub_1001ABED4(v40, (v37 + v11[9]));
  v43 = v56;
  v44 = *(*(v56 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  v45 = v60;
  sub_1001C6688();

  v46 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v47 = v63;
  (*(*(v46 - 8) + 56))(v63, 1, 2, v46);
  sub_1000B3710(v41, v42, type metadata accessor for ReadingHistoryModel);
  sub_1000B36A8(v47, v42 + *(v45 + 48), &unk_10026FC40, &qword_1001F0E90);
  sub_1000A28D4(v41, v42, v65, v66);
  sub_1000B3A90(v43 + 56, v67);
  v48 = v68;
  v49 = v69;
  sub_10009BB74(v67, v68);
  v50 = v34;
  v51 = v59;
  sub_1000B344C(v50, v59, v55);
  (*(v49 + 48))(v51, v48, v49);
  sub_1000B2E68(v51, type metadata accessor for ReadingHistoryModel);
  sub_1000B2E68(v41, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10008875C(v64, &qword_10026F508, &qword_1001F1150);
  sub_1000B2E68(v28, type metadata accessor for ReadingHistoryModel);
  (*(v61 + 8))(v40, v62);
  sub_10008E7BC(v67);
  return sub_10008875C(v42, &unk_10026F420, &unk_1001F0E50);
}

uint64_t ReadingHistoryDataStore.serializedModel(_:)(void *a1)
{
  v2 = v1;
  v12 = xmmword_1001F1120;
  v4 = *(v1 + 144);
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = v2;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000B3004;
  *(v6 + 24) = v5;
  v11[4] = sub_1000B3DA0;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000906F4;
  v11[3] = &unk_100243808;
  v7 = _Block_copy(v11);

  v8 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    sub_10009AD88(v12, *(&v12 + 1));
    sub_1000887BC(v10, *(&v10 + 1));

    return v10;
  }

  return result;
}

uint64_t sub_1000AAAF4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1001C5BD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1000B344C(a2 + v13, v12, type metadata accessor for ReadingHistoryModel);
  (*(v5 + 104))(v8, enum case for CRCodableVersion.version1(_:), v4);
  sub_1000B3814(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v14 = sub_1001C5C48();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  sub_1000B2E68(v12, type metadata accessor for ReadingHistoryModel);
  v17 = *a1;
  v18 = a1[1];
  *a1 = v14;
  a1[1] = v16;
  return sub_1000887BC(v17, v18);
}

Swift::Void __swiftcall ReadingHistoryDataStore.forceSummarizeAndPrune(year:month:)(Swift::Int year, Swift::Int month)
{
  v3 = v2;
  v6 = *(v2 + 144);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = year;
  v7[4] = month;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000B3010;
  *(v8 + 24) = v7;
  v10[4] = sub_1000B3DA0;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100243880;
  v9 = _Block_copy(v10);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_1000AAF88(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v3 = *v2;
  v61 = a2;
  v62 = v3;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v59 = &v52 - v6;
  v57 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v7 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v56 = &v52 - v8;
  v9 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v52 - v14;
  v15 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v52 - v17);
  v19 = type metadata accessor for ReadingHistoryModel(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v55 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v52 - v23;
  v25 = sub_1001C4CA8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v31 = v10[8];
  v60 = v26;
  v32 = *(v26 + 16);
  v32(v29, v30 + v31, v25);
  v54 = v30;
  sub_1000B344C(v30, v24, type metadata accessor for ReadingHistoryModel);
  sub_1001B06A4(v58, v61);
  v33 = v30;
  v34 = v53;
  sub_1000B344C(v33, v53, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10009DDF4(v34, v24, v29, v18);
  sub_1000B2E68(v34, type metadata accessor for ReadingHistoryDataStore.State);
  v35 = v63;
  sub_1000B344C(v24, v63, type metadata accessor for ReadingHistoryModel);
  v36 = v35 + v10[7];
  v62 = v18;
  sub_10009ADF0(v18, v36, &qword_10026F508, &qword_1001F1150);
  v37 = v35 + v10[8];
  v61 = v25;
  v32(v37, v29, v25);
  v38 = (v35 + v10[9]);
  v58 = v29;
  sub_1001ABED4(v29, v38);
  v39 = v52;
  v40 = *(*(v52 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  v42 = v56;
  v41 = v57;
  sub_1001C6688();

  v43 = *(v41 + 48);
  v44 = v59;
  sub_10009ADF0(v42 + v43, v59, &unk_10026FC40, &qword_1001F0E90);
  sub_1000B3710(v24, v42, type metadata accessor for ReadingHistoryModel);
  v45 = v42 + v43;
  v46 = v63;
  v47 = v44;
  v48 = v55;
  sub_1000B36A8(v47, v45, &unk_10026FC40, &qword_1001F0E90);
  sub_1000A28D4(v46, v42, 0xD000000000000016, 0x80000001001FF700);
  sub_1000B3A90(v39 + 56, v64);
  v49 = v65;
  v50 = v66;
  sub_10009BB74(v64, v65);
  sub_1000B344C(v54, v48, type metadata accessor for ReadingHistoryModel);
  (*(v50 + 48))(v48, v49, v50);
  sub_1000B2E68(v48, type metadata accessor for ReadingHistoryModel);
  sub_1000B2E68(v46, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10008875C(v62, &qword_10026F508, &qword_1001F1150);
  sub_1000B2E68(v24, type metadata accessor for ReadingHistoryModel);
  (*(v60 + 8))(v58, v61);
  sub_10008E7BC(v64);
  return sub_10008875C(v42, &unk_10026F420, &unk_1001F0E50);
}

uint64_t ReadingHistoryDataStore.readingHistoryModelLoadedState()()
{
  v1 = *(v0 + 144);
  sub_100084528(&qword_10026F530, &qword_1001F1170);
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000AB5D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(*(a1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1001C6688();

  LOBYTE(v8) = v7[*(v4 + 44)];
  result = sub_10008875C(v7, &unk_10026F420, &unk_1001F0E50);
  *a2 = v8;
  return result;
}

uint64_t sub_1000AB6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = sub_1001C5688();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5648();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v20 = *(*a1 + 120);
  swift_beginAccess();
  sub_10009ADF0(a1 + v20, v19, &unk_10026F420, &unk_1001F0E50);
  swift_storeEnumTagMultiPayload();
  v21 = a1 + *(*a1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(a1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  v39 = a1[3];
  sub_1001C5638();
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10009ADF0(v19, v17, &unk_10026F820, &unk_1001F1440);
  v25 = *(v14 + 80);
  v41 = v19;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  v40 = a2;
  v28 = v47;
  *(v27 + 24) = v47;
  sub_10009AE58(v17, v27 + v26, &unk_10026F820, &unk_1001F1440);
  *(v27 + ((v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1000B3AF4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100244048;
  v29 = _Block_copy(aBlock);

  v30 = v44;
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v29);
  (*(v45 + 8))(v30, v46);
  (*(v42 + 8))(v12, v43);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = v48;
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = v32;
  v35 = v40;
  v34[4] = v33;
  v34[5] = v35;
  v34[6] = v28;
  swift_beginAccess();

  v36 = a1[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = a1[4];
  a1[4] = 0x8000000000000000;
  sub_10017AF30(sub_1000B3BD0, v34, v33, isUniquelyReferenced_nonNull_native);
  a1[4] = v49;
  swift_endAccess();
  sub_10008875C(v41, &unk_10026F820, &unk_1001F1440);
}

uint64_t sub_1000ABC40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = sub_1001C5688();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5648();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_10026F7F8, &qword_1001F1420);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v20 = *(*a1 + 120);
  swift_beginAccess();
  sub_1000B344C(a1 + v20, v19, type metadata accessor for CRDTModelSyncVersion);
  swift_storeEnumTagMultiPayload();
  v21 = a1 + *(*a1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(a1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  v39 = a1[3];
  sub_1001C5638();
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10009ADF0(v19, v17, &qword_10026F7F8, &qword_1001F1420);
  v25 = *(v14 + 80);
  v41 = v19;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  v40 = a2;
  v28 = v47;
  *(v27 + 24) = v47;
  sub_10009AE58(v17, v27 + v26, &qword_10026F7F8, &qword_1001F1420);
  *(v27 + ((v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1000B34B4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100243B70;
  v29 = _Block_copy(aBlock);

  v30 = v44;
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v29);
  (*(v45 + 8))(v30, v46);
  (*(v42 + 8))(v12, v43);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v33 = v48;
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = v32;
  v35 = v40;
  v34[4] = v33;
  v34[5] = v35;
  v34[6] = v28;
  swift_beginAccess();

  v36 = a1[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = a1[4];
  a1[4] = 0x8000000000000000;
  sub_10017AF5C(sub_1000B34C8, v34, v33, isUniquelyReferenced_nonNull_native);
  a1[4] = v49;
  swift_endAccess();
  sub_10008875C(v41, &qword_10026F7F8, &qword_1001F1420);
}

uint64_t sub_1000AC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v6 = sub_1001C5688();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001C5648();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v33);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(a1 + 56);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(a1 + 72);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(a1, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  v19 = *(a1 + 24);
  sub_1001C5638();
  v20 = swift_allocObject();
  swift_weakInit();
  LOBYTE(v38) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v32 = a2;
  v22 = v36;
  *(v21 + 24) = v36;
  *(v21 + 32) = v15;
  *(v21 + 40) = v14;
  *(v21 + 48) = v16;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 73) = v38;
  *(v21 + 80) = v20;
  aBlock[4] = sub_1000B3378;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100243A08;
  v23 = _Block_copy(aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v23);
  (*(v34 + 8))(v9, v35);
  (*(v10 + 8))(v13, v33);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v37;
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v25;
  v28 = v32;
  v27[4] = v26;
  v27[5] = v28;
  v27[6] = v22;
  swift_beginAccess();

  v29 = *(a1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_10017AF88(sub_1000B33B4, v27, v26, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v38;
  swift_endAccess();
}

uint64_t sub_1000AC5A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  a1(a3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);

      v7(v8, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AC69C(void (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v3 = a3[1];
  v10 = *a3;
  v11[0] = v3;
  *(v11 + 10) = *(a3 + 26);
  a1(&v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 72);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(v9, ObjectType, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AC790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a4;
  v36 = a1;
  v6 = sub_1001C5648();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001C5688();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v19 = &v34 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v34 = *(v21 + 24);
      v35 = v11;
      sub_10009ADF0(v36, v19, &unk_10026F820, &unk_1001F1440);
      v22 = *(v16 + 80);
      v36 = v7;
      v23 = (v22 + 32) & ~v22;
      v24 = swift_allocObject();
      v25 = v38;
      *(v24 + 16) = v37;
      *(v24 + 24) = v25;
      sub_10009AE58(v19, v24 + v23, &unk_10026F820, &unk_1001F1440);
      aBlock[4] = sub_1000B3C00;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_1002440C0;
      v26 = _Block_copy(aBlock);

      sub_1001C5668();
      v40 = &_swiftEmptyArrayStorage;
      sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v26);
      (*(v36 + 8))(v10, v6);
      (*(v39 + 8))(v14, v35);
    }

    else
    {
      sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1001F0670;
      v28 = v35;
      aBlock[0] = v35;
      v29 = sub_1001C6078();
      v31 = v30;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100084570();
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v32 = sub_1001C67D8();
      sub_1001C5118();

      swift_beginAccess();
      v33 = sub_10019CF28(v28);
      swift_endAccess();
      sub_1000044D8(v33);
    }
  }

  return result;
}

uint64_t sub_1000ACC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a4;
  v36 = a1;
  v6 = sub_1001C5648();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001C5688();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100084528(&qword_10026F7F8, &qword_1001F1420);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v19 = &v34 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v34 = *(v21 + 24);
      v35 = v11;
      sub_10009ADF0(v36, v19, &qword_10026F7F8, &qword_1001F1420);
      v22 = *(v16 + 80);
      v36 = v7;
      v23 = (v22 + 32) & ~v22;
      v24 = swift_allocObject();
      v25 = v38;
      *(v24 + 16) = v37;
      *(v24 + 24) = v25;
      sub_10009AE58(v19, v24 + v23, &qword_10026F7F8, &qword_1001F1420);
      aBlock[4] = sub_1000B34E0;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100243BE8;
      v26 = _Block_copy(aBlock);

      sub_1001C5668();
      v40 = &_swiftEmptyArrayStorage;
      sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v26);
      (*(v36 + 8))(v10, v6);
      (*(v39 + 8))(v14, v35);
    }

    else
    {
      sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1001F0670;
      v28 = v35;
      aBlock[0] = v35;
      v29 = sub_1001C6078();
      v31 = v30;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100084570();
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v32 = sub_1001C67D8();
      sub_1001C5118();

      swift_beginAccess();
      v33 = sub_10019CF54(v28);
      swift_endAccess();
      sub_1000044D8(v33);
    }
  }

  return result;
}

uint64_t sub_1000AD1A8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1001C5648();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001C5688();
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v29 = *(v19 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a5;
      *(v20 + 24) = a6;
      v21 = a1[1];
      *(v20 + 32) = *a1;
      *(v20 + 48) = v21;
      *(v20 + 58) = *(a1 + 26);
      aBlock[4] = sub_1000B33F4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100243AA8;
      v22 = _Block_copy(aBlock);

      sub_1001C5668();
      v32 = &_swiftEmptyArrayStorage;
      sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v22);
      (*(v31 + 8))(v13, v10);
      (*(v30 + 8))(v17, v14);
    }

    else
    {
      sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1001F0670;
      aBlock[0] = a4;
      v24 = sub_1001C6078();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100084570();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v27 = sub_1001C67D8();
      sub_1001C5118();

      swift_beginAccess();
      v28 = sub_10019CF80(a4);
      swift_endAccess();
      sub_1000044D8(v28);
    }
  }

  return result;
}

uint64_t sub_1000AD5FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  v5 = sub_100187A60(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a2 + 32);
    *(a2 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018A620();
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    sub_100140748(v7, v10);
    *(a2 + 32) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1000AD6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_1000B344C(a1 + v4, a2, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000AD730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_10009ADF0(a1 + v4, a2, &unk_10026F420, &unk_1001F0E50);
}

Swift::Int sub_1000AD7B0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AAC9C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000AE8D4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000AD81C(void **a1)
{
  v2 = *(sub_1001C4CA8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AACB0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000AE9CC(v6);
  *a1 = v3;
  return result;
}

char *sub_1000AD8EC(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1000AD9F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F798, &qword_1001F13C8);
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

char *sub_1000ADAF4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1000ADC34(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1000ADD40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F928, &unk_1001F14F0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000ADE44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F740, &unk_1001F1370);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000ADF50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F788, &qword_1001F13B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100084528(&qword_10026F790, &qword_1001F13C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AE0AC(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_1000AE1F0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(&qword_10026F7A0, &unk_1001F13D0);
  v10 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000AE458(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1000AE658(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    sub_100084528(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100084528(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1000AE78C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F748, &unk_1001F82D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100084528(&qword_10026F750, &qword_1001F1380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1000AE8D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1001C62D8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000AEE80(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1000AEAF8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1000AE9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001C4CA8();
        v6 = sub_1001C62D8();
        v6[2] = v5;
      }

      v7 = *(sub_1001C4CA8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000AF4E0(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1000AEBBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000AEAF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = *(v4 + 16 * a3);
    v9 = 100 * v8;
    v10 = (v8 * 100) >> 64 != (100 * v8) >> 63;
    v11 = __OFADD__(v9, *(&v7 + 1));
    v12 = v9 + *(&v7 + 1);
    v13 = v11;
    v14 = v6;
    v15 = v5;
    while (!v10)
    {
      if (v13)
      {
        goto LABEL_19;
      }

      v16 = 100 * *v15;
      result = (*v15 * 100) >> 64;
      if (result != v16 >> 63)
      {
        goto LABEL_20;
      }

      result = v15[1];
      v11 = __OFADD__(v16, result);
      v17 = v16 + result;
      if (v11)
      {
        goto LABEL_21;
      }

      if (v12 < v17)
      {
        if (!v4)
        {
          goto LABEL_22;
        }

        *(v15 + 1) = *v15;
        *v15 = v7;
        v15 -= 2;
        if (!__CFADD__(v14++, 1))
        {
          continue;
        }
      }

      ++a3;
      v5 += 16;
      --v6;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AEBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001C4CA8();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v46 = &v32 - v13;
  result = __chkstk_darwin(v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_1000B3814(&qword_10026F518, &type metadata accessor for Date);
      v27 = sub_1001C5FC8();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000AEE80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_101:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v98 = *(v10 + 2);
      if (v98 >= 2)
      {
        while (*a3)
        {
          v99 = *&v10[16 * v98];
          v100 = *&v10[16 * v98 + 24];
          sub_1000AFF08(*a3 + 16 * v99, (*a3 + 16 * *&v10[16 * v98 + 16]), (*a3 + 16 * v100), v6);
          if (v5)
          {
          }

          if (v100 < v99)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1001A97CC(v10);
          }

          if (v98 - 2 >= *(v10 + 2))
          {
            goto LABEL_134;
          }

          v101 = &v10[16 * v98];
          *v101 = v99;
          *(v101 + 1) = v100;
          result = sub_1001A9740(v98 - 1);
          v98 = *(v10 + 2);
          if (v98 <= 1)
          {
          }
        }

        goto LABEL_148;
      }
    }

LABEL_144:
    result = sub_1001A97CC(v10);
    v10 = result;
    goto LABEL_103;
  }

  v8 = a4;
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  v103 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v7)
    {
      goto LABEL_26;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v9);
    v14 = *v13;
    v15 = 100 * *v13;
    if ((*v13 * 100) >> 64 != v15 >> 63)
    {
      goto LABEL_136;
    }

    v16 = v13[1];
    v68 = __OFADD__(v15, v16);
    v17 = v15 + v16;
    if (v68)
    {
      goto LABEL_137;
    }

    v18 = (v12 + 16 * v11);
    v19 = 100 * *v18;
    if ((*v18 * 100) >> 64 != v19 >> 63)
    {
      goto LABEL_138;
    }

    v20 = v18[1];
    v68 = __OFADD__(v19, v20);
    v21 = v19 + v20;
    if (v68)
    {
      goto LABEL_139;
    }

    v22 = v11 + 2;
    v23 = 16 * v11;
    v24 = (v12 + 16 * v11 + 40);
    do
    {
      if (v7 == v22)
      {
        v9 = v7;
        if (v17 >= v21)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      v25 = *(v24 - 1);
      v26 = 100 * v25;
      if ((v25 * 100) >> 64 != (100 * v25) >> 63)
      {
        goto LABEL_116;
      }

      v27 = *v24;
      v68 = __OFADD__(v26, *v24);
      v28 = v26 + *v24;
      if (v68)
      {
        goto LABEL_117;
      }

      v29 = 100 * v14;
      v68 = __OFADD__(v29, v16);
      v30 = v29 + v16;
      if (v68)
      {
        goto LABEL_118;
      }

      v31 = (v17 < v21) ^ (v28 >= v30);
      ++v22;
      v24 += 2;
      v16 = v27;
      v14 = v25;
    }

    while ((v31 & 1) != 0);
    v9 = v22 - 1;
    if (v17 >= v21)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    if (v11 < v9)
    {
      v32 = 16 * v9 - 16;
      v33 = v9;
      v34 = v11;
      do
      {
        if (v34 != --v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v36 = *(v35 + v23);
          *(v35 + v23) = *(v35 + v32);
          *(v35 + v32) = v36;
        }

        ++v34;
        v32 -= 16;
        v23 += 16;
      }

      while (v34 < v33);
      v7 = a3[1];
    }

LABEL_26:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_140;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_141;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
          goto LABEL_142;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v9 < v11)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v53 = *(v10 + 2);
    v52 = *(v10 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1000AD9F0((v52 > 1), v53 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v54;
    v55 = &v10[16 * v53];
    *(v55 + 4) = v11;
    *(v55 + 5) = v9;
    v56 = *v6;
    if (!*v6)
    {
      goto LABEL_149;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v10 + 4);
          v59 = *(v10 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_70:
          if (v61)
          {
            goto LABEL_124;
          }

          v74 = &v10[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_127;
          }

          v80 = &v10[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_131;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v84 = &v10[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_84:
        if (v79)
        {
          goto LABEL_126;
        }

        v87 = &v10[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_91:
        v6 = v57 - 1;
        if (v57 - 1 >= v54)
        {
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v95 = *&v10[16 * v6 + 32];
        v96 = *&v10[16 * v57 + 40];
        sub_1000AFF08(*a3 + 16 * v95, (*a3 + 16 * *&v10[16 * v57 + 32]), (*a3 + 16 * v96), v56);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1001A97CC(v10);
        }

        if (v6 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v97 = &v10[16 * v6];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_1001A9740(v57);
        v54 = *(v10 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v10[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_122;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_123;
      }

      v69 = &v10[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_125;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_128;
      }

      if (v73 >= v65)
      {
        v91 = &v10[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_132;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v103;
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_101;
    }
  }

  v37 = *a3;
  v38 = *a3 + 16 * v9 - 16;
  v39 = v11 - v9;
LABEL_36:
  v40 = *(v37 + 16 * v9);
  v41 = *(v37 + 16 * v9);
  v42 = 100 * v41;
  v43 = (v41 * 100) >> 64 != (100 * v41) >> 63;
  v68 = __OFADD__(v42, *(&v40 + 1));
  v44 = v42 + *(&v40 + 1);
  v45 = v68;
  v46 = v39;
  v47 = v38;
  while (1)
  {
    if (v43)
    {
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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
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
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v45)
    {
      goto LABEL_113;
    }

    v48 = 100 * *v47;
    if ((*v47 * 100) >> 64 != v48 >> 63)
    {
      goto LABEL_114;
    }

    v49 = v47[1];
    v68 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v68)
    {
      goto LABEL_115;
    }

    if (v44 >= v50)
    {
LABEL_35:
      ++v9;
      v38 += 16;
      --v39;
      if (v9 == v7)
      {
        v9 = v7;
        goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    *(v47 + 1) = *v47;
    *v47 = v40;
    v47 -= 2;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_1000AF4E0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v141 = &v120 - v16;
  result = __chkstk_darwin(v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1001A97CC(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1000B01B0(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1001A97CC(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1001A9740(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = &_swiftEmptyArrayStorage;
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_1000B3814(&qword_10026F518, &type metadata accessor for Date);
      LODWORD(v134) = sub_1001C5FC8();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_1001C5FC8() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1000AD9F0((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1000B01B0(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1001A97CC(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1001A9740(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_1000B3814(&qword_10026F518, &type metadata accessor for Date);
    v110 = sub_1001C5FC8();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000AFF08(uint64_t __dst, uint64_t *__src, uint64_t *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || __dst + 16 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v15 = 100 * *v6;
        if ((*v6 * 100) >> 64 != v15 >> 63)
        {
          __break(1u);
          goto LABEL_49;
        }

        v16 = v6[1];
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_50;
        }

        v19 = 100 * *v4;
        if ((*v4 * 100) >> 64 != v19 >> 63)
        {
          goto LABEL_52;
        }

        v20 = v4[1];
        v17 = __OFADD__(v19, v20);
        v21 = v19 + v20;
        if (v17)
        {
          goto LABEL_54;
        }

        if (v18 >= v21)
        {
          break;
        }

        v22 = v6;
        v23 = v7 == v6;
        v6 += 2;
        if (!v23)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 2;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 2;
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v22;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 < 16 || v6 <= v7)
  {
LABEL_44:
    v34 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
    if (v6 != v4 || v6 >= (v4 + (v34 & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(v6, v4, 16 * (v34 >> 4));
    }

    return 1;
  }

LABEL_29:
  v24 = v6 - 2;
  v5 -= 2;
  v25 = v14;
  while (1)
  {
    v26 = *(v25 - 2);
    v25 -= 2;
    v27 = 100 * v26;
    if ((v26 * 100) >> 64 != (100 * v26) >> 63)
    {
      break;
    }

    v28 = *(v14 - 1);
    v17 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v17)
    {
      goto LABEL_51;
    }

    v30 = *(v6 - 2);
    v31 = 100 * v30;
    if ((v30 * 100) >> 64 != (100 * v30) >> 63)
    {
      goto LABEL_53;
    }

    v32 = *(v6 - 1);
    v17 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v17)
    {
      goto LABEL_55;
    }

    if (v29 < v33)
    {
      if (v5 + 2 != v6)
      {
        *v5 = *v24;
      }

      if (v14 <= v4 || (v6 -= 2, v24 <= v7))
      {
        v6 = v24;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 2 != v14)
    {
      *v5 = *v25;
    }

    v5 -= 2;
    v14 = v25;
    if (v25 <= v4)
    {
      v14 = v25;
      goto LABEL_44;
    }
  }

LABEL_49:
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
  return __dst;
}

uint64_t sub_1000B01B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1001C4CA8();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1000B3814(&qword_10026F518, &type metadata accessor for Date);
          LOBYTE(v36) = sub_1001C5FC8();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1000B3814(&qword_10026F518, &type metadata accessor for Date);
        LOBYTE(v23) = sub_1001C5FC8();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1001A980C(&v56, &v55, &v54);
  return 1;
}