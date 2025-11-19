uint64_t sub_1000E3734(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v8 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for CRDTModelSyncVersion();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin(v12);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v11;
  if (a1)
  {
    v56 = *&a1[OBJC_IVAR___BDSReadingHistoryUpdate_value + 8];
  }

  else
  {
    v56 = 0;
  }

  v15 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
  v16 = [objc_opt_self() books];
  v17 = [v16 userDefaults];

  v18 = *(v15 + 48);
  v19 = *(v15 + 56);
  v20 = sub_1001C5FE8();
  v21 = [v17 integerForKey:v20];

  if (a1)
  {
    v22 = a3;
    v23 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSaveAccessLock);
    v24 = a1;
    os_unfair_lock_lock(v23 + 4);
    v25 = OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave;
    v26 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave);
    if (v26)
    {
      v21 = *&v26[OBJC_IVAR___BDSReadingHistoryUpdate_value + 8];
      v27 = v26;
      v28 = ReadingHistoryUpdate.coalesce(newerUpdate:)(v24);

      v29 = *(a2 + v25);
      *(a2 + v25) = v28;
    }

    else
    {
      *(a2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave) = a1;
      v30 = v24;
    }

    os_unfair_lock_unlock(v23 + 4);

    a3 = v22;
  }

  v31 = *(*(a2 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController) + 32);
  result = sub_1001C6688();
  v33 = LOBYTE(aBlock[0]);
  if (!a1 || (aBlock[0] & 1) != 0)
  {
    goto LABEL_13;
  }

  if (!__OFADD__(v21, 1))
  {
    if (v21 + 1 >= v56)
    {
      v34 = 0;
LABEL_15:
      v35 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v36 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v35))
      {
        v37 = swift_slowAlloc();
        *v37 = 67109888;
        *(v37 + 4) = v34;
        *(v37 + 8) = 2048;
        *(v37 + 10) = v56;
        *(v37 + 18) = 2048;
        *(v37 + 20) = v21;
        *(v37 + 28) = 1024;
        *(v37 + 30) = v33;
        _os_log_impl(&_mh_execute_header, v36, v35, "ReadingHistoryService handleSyncFileChange - doFullSync=%{BOOL}d (editGen=%ld, lastSeenGen=%ld, loaded=%{BOOL}d)", v37, 0x22u);
      }

      if (v34)
      {
        v38 = v53;
        sub_10009ADF0(a3, v53, &unk_10026F350, &qword_1001F31E0);
        if ((*(v57 + 48))(v38, 1, v12) == 1)
        {
          sub_10008875C(v38, &unk_10026F350, &qword_1001F31E0);
          sub_1001C6598();
LABEL_29:
          sub_1001C5118();
          goto LABEL_30;
        }
      }

      else
      {
        if (!a1)
        {
          sub_1001C6598();
          goto LABEL_29;
        }

        v39 = a1;
        v40 = sub_1001C65B8();
        if (os_log_type_enabled(v36, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          *(v41 + 4) = v39;
          *v42 = a1;
          v43 = v39;
          _os_log_impl(&_mh_execute_header, v36, v40, "ReadingHistoryService handleSyncFileChange - received update: %@", v41, 0xCu);
          sub_10008875C(v42, &unk_1002718E0, &qword_1001F31F0);
        }

        v44 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
        v45 = *(v44 + 144);
        v46 = swift_allocObject();
        *(v46 + 16) = v44;
        *(v46 + 24) = v39;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_1000B2F8C;
        *(v47 + 24) = v46;
        aBlock[4] = sub_1000B3DA0;
        aBlock[5] = v47;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000906F4;
        aBlock[3] = &unk_100246F18;
        v48 = _Block_copy(aBlock);
        v38 = v39;

        dispatch_sync(v45, v48);
        _Block_release(v48);
        LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

        if ((v45 & 1) == 0)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      v49 = v38;
      v50 = v52;
      sub_1000F4BE8(v49, v52, type metadata accessor for CRDTModelSyncVersion);
      sub_1001C65B8();
      sub_1001C5118();
      sub_1000E3E38(v50, 1);
      sub_1000F4A38(v50, type metadata accessor for CRDTModelSyncVersion);
LABEL_30:
      sub_1001C65B8();
      sub_1001C5118();
      return v55(1);
    }

LABEL_13:
    v34 = (*(v57 + 48))(a3, 1, v12) != 1;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E3E38(uint64_t a1, char a2)
{
  v5 = type metadata accessor for CRDTModelSyncVersion();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = *(v2 + 48);
  sub_1000F4968(a1, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRDTModelSyncVersion);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  sub_1000F4BE8(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CRDTModelSyncVersion);
  *(v10 + v9 + v7) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000F47FC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100246F90;
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

uint64_t CRDTModelCloudSyncController.checkLocalModelSyncVersion(syncVersion:createTransaction:)(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = type metadata accessor for CRDTModelSyncVersion();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v2[6];
  sub_1000F4968(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRDTModelSyncVersion);
  v11 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v5 + 80);
  *(v12 + 24) = *(v6 + 88);
  *(v12 + 40) = *(v5 + 104);
  *(v12 + 48) = v2;
  sub_1000F4BE8(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CRDTModelSyncVersion);
  *(v12 + v11 + v9) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000F2BF0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100246728;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E42D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v38 = a3;
  v7 = sub_1001C5648();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C4CA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReadingHistoryModel(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  ReadingHistoryDataStore.increment(date:by:)(a2, v38);
  v18 = *(*(a1 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager) + qword_10026FB10);
  v44 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
  sub_1001C6688();
  v19 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController);
  (*(v11 + 16))(v13, a2, v10);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v11 + 32))(v22 + v20, v13, v10);
  *(v22 + v21) = v38;
  v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  v25 = *(v19 + 32);

  sub_100084528(&unk_100270A10, &unk_1001F3470);
  sub_1001C6688();
  v26 = v45;
  v27 = *(v45 + 48);
  v28 = v35;
  sub_1001C5638();
  v29 = v32;
  v39 = v26;
  v40 = v32;
  v41 = 0;
  v42 = sub_1000F4F74;
  v43 = v22;
  sub_100084528(&unk_100270A90, &qword_1001F34D8);
  sub_1001C6678();

  (*(v36 + 8))(v28, v37);

  return sub_1000F4A38(v29, type metadata accessor for ReadingHistoryModel);
}

uint64_t sub_1000E4648(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001F0660;
  v6 = sub_1001C4C08();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100084570();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 64) = v9;
  *(v5 + 72) = a2;
  sub_1001C5118();

  return a3(1);
}

void sub_1000E48BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v66 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v7 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v60[-v8];
  v9 = sub_1001C4D68();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1001C4CA8();
  v63 = *(v13 - 8);
  v14 = v63;
  v15 = *(v63 + 64);
  __chkstk_darwin(v13);
  v69 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v60[-v23];
  v25 = type metadata accessor for ReadingHistory.State(0);
  v26 = (v25 - 8);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v60[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  v31 = *(v14 + 16);
  v62 = v13;
  v31(v24, v71, v13);
  v31(&v24[*(v18 + 56)], v72, v13);
  sub_1001C4CD8();
  v32 = v69;
  sub_1001C4CE8();
  (*(v64 + 8))(v12, v65);
  v33 = *(v30 + 144);
  sub_1001C6688();
  v65 = v76;
  v34 = *(v30 + 144);
  sub_1001C6688();
  v35 = *(v30 + 144);
  v74 = v30;
  v75 = v32;
  sub_1001C6688();
  v66 = v76;
  v64 = v77;
  v61 = v78;
  sub_10009ADF0(v24, v22, &qword_10026F510, &qword_1001F1158);
  v36 = *(v18 + 56);
  v37 = ReadingHistoryDataStore.readingHistory(range:)(v22, &v22[v36]);
  sub_10008875C(v24, &qword_10026F510, &qword_1001F1158);
  v38 = *(v63 + 8);
  v39 = &v22[v36];
  v40 = v62;
  v38(v39, v62);
  v41 = v22;
  v42 = v40;
  v38(v41, v40);
  v43 = v26[7];
  v44 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v44 - 8) + 56))(&v29[v43], 1, 1, v44);
  *v29 = v65;
  sub_1000B36A8(v70, &v29[v43], &qword_10026F508, &qword_1001F1150);
  v45 = &v29[v26[8]];
  v46 = v64;
  *v45 = v66;
  *(v45 + 1) = v46;
  v45[16] = v61;
  *&v29[v26[9]] = v37;
  v38(v69, v42);
  ReadingHistory.State.toInfo()(v47);
  v49 = v48;
  sub_1000F4A38(v29, type metadata accessor for ReadingHistory.State);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1001F0CF0;
  v51 = sub_1001C4C08();
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v54 = sub_100084570();
  *(v50 + 64) = v54;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  v55 = sub_1001C4C08();
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v54;
  *(v50 + 72) = v55;
  *(v50 + 80) = v56;
  v57 = sub_1001C4C08();
  *(v50 + 136) = &type metadata for String;
  *(v50 + 144) = v54;
  *(v50 + 112) = v57;
  *(v50 + 120) = v58;
  *(v50 + 176) = sub_100088714(0, &qword_100270AC8, off_10023DD48);
  *(v50 + 184) = sub_1000F17CC(&unk_100270AD0, &qword_100270AC8, off_10023DD48);
  *(v50 + 152) = v49;
  v59 = v49;
  sub_1001C5118();

  v68(v59, 1);
}

uint64_t sub_1000E5244()
{
  v1 = sub_1001C5648();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C5688();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v9 = [*(*&v0[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] + 64) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryService.handlePlaceholderStreakDayGoalNeedsUpdate"];
  v15 = *&v0[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000F31EC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246BF8;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  v13 = v9;
  sub_1001C5668();
  v18 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_1000E56A4()
{
  v1 = sub_1001C5648();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C5688();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v9 = [*(*&v0[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] + 64) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryService.handleSignificantDateChange"];
  v15 = *&v0[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000F3190;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246BA8;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  v13 = v9;
  sub_1001C5668();
  v18 = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_1000E5C74(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B8DCC;

  return ReadingHistoryService.bookWidgetReadingHistoryStateInfo()();
}

void sub_1000E5D7C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v22[-v10];
  v12 = type metadata accessor for CRDTModelRevisionInfo();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10009ADF0(a1, v11, &unk_10026F410, &unk_1001F0E40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v17 = sub_10008875C(v11, &unk_10026F410, &unk_1001F0E40);
  }

  else
  {
    sub_1000F4BE8(v11, v16, type metadata accessor for CRDTModelRevisionInfo);
    v18 = *(v2 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
    sub_1000F4968(v16, v9, type metadata accessor for CRDTModelRevisionInfo);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_10012FED0(*(v18 + 16), *(v18 + 24), v9);
    sub_10008875C(v9, &unk_10026F410, &unk_1001F0E40);
    v17 = sub_1000F4A38(v16, type metadata accessor for CRDTModelRevisionInfo);
  }

  v19 = *(v2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSaveAccessLock);
  v20 = __chkstk_darwin(v17);
  *&v22[-16] = v2;
  *&v22[-8] = a2;
  __chkstk_darwin(v20);
  *&v22[-16] = sub_1000F4D04;
  *&v22[-8] = v21;
  os_unfair_lock_lock(v19 + 4);
  sub_1000F4D20();
  os_unfair_lock_unlock(v19 + 4);
}

void sub_1000E6034(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave;
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave);
  if (v3)
  {
    v6 = v3;
    if (!ReadingHistoryUpdate.hasDelta(from:)(a2))
    {
      v7 = *&v6[OBJC_IVAR___BDSReadingHistoryUpdate_value + 8];
      v8 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
      v9 = [objc_opt_self() books];
      v10 = [v9 userDefaults];

      v11 = *(v8 + 48);
      v12 = *(v8 + 56);
      v13 = sub_1001C5FE8();
      [v10 setInteger:v7 forKey:v13];

      v14 = *(a1 + v2);
      *(a1 + v2) = 0;

      v15 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v16 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v15))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v16, v15, "ReadingHistoryService saved lastLocalUpdateSavedGeneration=%ld", v17, 0xCu);
      }
    }
  }
}

uint64_t sub_1000E61DC(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = type metadata accessor for CRDTModelRevisionInfo();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a1, v9, &unk_10026F410, &unk_1001F0E40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10008875C(v9, &unk_10026F410, &unk_1001F0E40);
  }

  sub_1000F4BE8(v9, v14, type metadata accessor for CRDTModelRevisionInfo);
  v16 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
  sub_1000F4968(v14, v7, type metadata accessor for CRDTModelRevisionInfo);
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_10012FED0(*(v16 + 32), *(v16 + 40), v7);
  sub_10008875C(v7, &unk_10026F410, &unk_1001F0E40);
  return sub_1000F4A38(v14, type metadata accessor for CRDTModelRevisionInfo);
}

uint64_t sub_1000E657C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000E65F4, 0, 0);
}

uint64_t sub_1000E65F4()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000E66F0;
  v2 = *(v0 + 16);

  return sub_1000E0774();
}

uint64_t sub_1000E66F0(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1, 0);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000E683C()
{
  v1 = v0;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v58 = qword_1002711E8;
  sub_1001C5118();
  v57 = swift_allocObject();
  *(v57 + 16) = [*(*&v0[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] + 64) createTransactionWithName:"com.apple.bookdatastored.reading-history-migration"];
  v2 = objc_opt_self();
  v3 = [v2 books];
  v4 = [v3 userDefaults];

  v5 = objc_opt_self();
  v6 = [v5 booksFinishedUserDefaultsKey];
  if (!v6)
  {
    sub_1001C6018();
    v6 = sub_1001C5FE8();
  }

  v7 = [v4 dictionaryForKey:v6];

  if (v7)
  {
    v8 = sub_1001C5F08();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v2 books];
  v10 = [v9 userDefaults];

  v11 = [v5 streakDayUserDefaultsKey];
  if (!v11)
  {
    sub_1001C6018();
    v11 = sub_1001C5FE8();
  }

  v12 = [v10 dictionaryForKey:v11];

  if (v12)
  {
    v14 = sub_1001C5F08();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*&v1[OBJC_IVAR___BDSReadingHistoryService_goalsService] + OBJC_IVAR___BDSReadingGoalsService_goalsDataStore);
  v61.value._rawValue = v8;
  v61.is_nil = v14;
  ReadingGoalsDataStore.migrate(bookFinishedGoalDict:streakDayGoalDict:)(v61, v13);

  v16 = objc_allocWithZone(NSPersistentContainer);
  v17 = sub_1001C5FE8();
  v18 = [v16 initWithName:v17];

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v22 = sub_1001C5FE8();

  LODWORD(v16) = [v21 fileExistsAtPath:v22];

  if (v16)
  {
    v23 = objc_allocWithZone(NSPersistentStoreDescription);
    sub_1001C4A88(v24);
    v26 = v25;
    v27 = [v23 initWithURL:v25];

    [v27 setShouldInferMappingModelAutomatically:1];
    [v27 setShouldMigrateStoreAutomatically:1];
    [v27 setUsesPersistentHistoryTracking:1];
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1001F31C0;
    *(v28 + 32) = v27;
    sub_100088714(0, &qword_100270AB8, NSPersistentStoreDescription_ptr);
    v29 = v27;
    isa = sub_1001C6288().super.isa;

    [v18 setPersistentStoreDescriptions:isa];

    v31 = swift_allocObject();
    v31[2] = v18;
    v31[3] = v57;
    v31[4] = v19;
    v31[5] = v1;
    v31[6] = v20;
    aBlock[4] = sub_1000F4F18;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E8410;
    aBlock[3] = &unk_100247788;
    v32 = _Block_copy(aBlock);
    v33 = v18;

    v34 = v1;

    [v33 loadPersistentStoresWithCompletionHandler:v32];
    _Block_release(v32);
    swift_beginAccess();
    v35 = v58;
    if (*(v20 + 16) != 1)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    *(v19 + 16) = 1;
    sub_1001C65B8();
    sub_1001C5118();
    v36 = [v33 persistentStoreCoordinator];
    sub_1001C4A88(v37);
    v39 = v38;
    v56 = v29;
    v40 = [v29 type];
    if (!v40)
    {
      sub_1001C6018();
      v40 = sub_1001C5FE8();
    }

    v59[0] = 0;
    v41 = [v36 destroyPersistentStoreAtURL:v39 withType:v40 options:0 error:v59];

    if (v41)
    {
      v42 = v59[0];
    }

    else
    {
      v44 = v59[0];
      sub_1001C4A28();

      swift_willThrow();
      sub_1001C6598();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1001F0670;
      v46 = sub_1001C4AF8();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_100084570();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      sub_1001C5118();
    }

    v29 = v56;
    v35 = v58;
    if (*(v20 + 16) == 1)
    {
      v49 = sub_1001C65B8();
    }

    else
    {
LABEL_23:
      v49 = sub_1001C6598();
    }

    v50 = v49;
    if (os_log_type_enabled(v35, v49))
    {

      v51 = swift_slowAlloc();
      *v51 = 67109376;
      *(v51 + 4) = *(v20 + 16);

      *(v51 + 8) = 1024;
      swift_beginAccess();
      *(v51 + 10) = *(v19 + 16);

      _os_log_impl(&_mh_execute_header, v35, v50, "Daemon migration reading history - success: %{BOOL}d, completed: %{BOOL}d", v51, 0xEu);
    }

    swift_beginAccess();
  }

  else
  {
    sub_1001C65B8();
    sub_1001C5118();

    *(v19 + 16) = 1;
    *(v20 + 16) = 1;
    v43 = *(v57 + 16);
    *(v57 + 16) = 0;
  }

  v52 = *(v19 + 16);
  v53 = *(v20 + 16);

  if (v53)
  {
    v54 = 256;
  }

  else
  {
    v54 = 0;
  }

  return v54 | v52;
}

uint64_t sub_1000E7150(uint64_t a1)
{
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1001C4AD8();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000E7234(int a1, uint64_t a2, id a3, id a4, uint64_t a5, uint64_t isEscapingClosureAtFileLocation, uint64_t a7)
{
  v10 = a5 + 16;
  v11 = (a7 + 16);
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_errorRetain();
  sub_1001C6598();
  if (qword_10026EBE8 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001F0670;
    swift_getErrorValue();
    v13 = sub_1001C6D98();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100084570();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_1001C5118();

LABEL_4:
    v16 = [a3 newBackgroundContext];
    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = v16;
    v17[4] = v10;
    v17[5] = isEscapingClosureAtFileLocation;
    v17[6] = v11;
    a3 = swift_allocObject();
    *(a3 + 2) = sub_1000F4F28;
    *(a3 + 3) = v17;
    aBlock[4] = sub_1000B2E48;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100247800;
    v11 = _Block_copy(aBlock);

    a4 = v16;
    v18 = isEscapingClosureAtFileLocation;

    [a4 performBlockAndWait:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  return result;
}

unint64_t sub_1000E74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v50 = a5;
  v51 = a4;
  v54 = a3;
  v58 = a1;
  v53 = sub_1001C5648();
  v52 = *(v53 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v53);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = objc_allocWithZone(NSFetchRequest);
  v16 = sub_1001C5FE8();
  v17 = [v15 initWithEntityName:v16];

  sub_100088714(0, &qword_100270AC0, NSPredicate_ptr);
  v55 = sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v18 = swift_allocObject();
  v56 = xmmword_1001F0670;
  *(v18 + 16) = xmmword_1001F0670;
  *(v18 + 56) = &type metadata for String;
  v57 = sub_100084570();
  *(v18 + 64) = v57;
  *(v18 + 32) = 0xD000000000000013;
  *(v18 + 40) = 0x80000001001FDF60;
  v19 = sub_1001C6568();
  [v17 setPredicate:v19];

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1002711E8;
  sub_1001C5118();
  type metadata accessor for CRDTModelSyncEntity();
  result = sub_1001C66C8();
  v49 = v17;
  if (result >> 62)
  {
    v45 = result;
    v22 = sub_1001C6B38();
    result = v45;
  }

  else
  {
    v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v14;
  v24 = v7;
  if (!v22)
  {

    sub_1001C6598();
    sub_1001C5118();

    goto LABEL_13;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v25 = sub_1001C69F8();
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(result + 32);
LABEL_9:
    v26 = v25;

    v27 = [v26 protoData];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1001C4BA8();
      v31 = v30;

      sub_1001C65B8();
      sub_1001C5118();
      sub_10009AD9C(v29, v31);
      sub_1000F2C74(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
      sub_1001C5C58();
      v48 = v31;
      v54 = v29;
      v33 = sub_1001C65B8();
      sub_1000F4968(v23, v12, type metadata accessor for ReadingHistoryModel);
      if (os_log_type_enabled(v20, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v59 = v36;
        *v35 = 136315138;
        v47 = ReadingHistoryModel.description.getter();
        v38 = v37;
        sub_1000F4A38(v12, type metadata accessor for ReadingHistoryModel);
        v39 = sub_1001874E8(v47, v38, &v59);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v20, v33, "Migration: Model loaded! let's merge: %s", v35, 0xCu);
        sub_10008E7BC(v36);
      }

      else
      {
        sub_1000F4A38(v12, type metadata accessor for ReadingHistoryModel);
      }

      v40 = v48;
      v41 = *(v51 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
      v42 = *(v41 + qword_10026FB10);
      v43 = sub_1001C5638();
      __chkstk_darwin(v43);
      *(&v46 - 4) = v41;
      *(&v46 - 3) = v23;
      *(&v46 - 16) = 1;
      sub_1001C6678();
      (*(v52 + 8))(v24, v53);

      sub_1000887D0(v54, v40);
      sub_1000F4A38(v23, type metadata accessor for ReadingHistoryModel);
      v44 = v50;
      swift_beginAccess();
      *v44 = 1;
      return sub_1000E7F4C(v58);
    }

    sub_1001C6598();
    sub_1001C5118();

LABEL_13:
    v32 = v54;
    swift_beginAccess();
    *v32 = 1;
    return sub_1000E7F4C(v58);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E7F4C(uint64_t a1)
{
  v2 = sub_1001C5648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5688();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001C56A8();
  v30 = *(v33 - 8);
  v10 = *(v30 + 64);
  v11 = __chkstk_darwin(v33);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = sub_1001C5658();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v22 = *(a1 + 16);
  if (v22)
  {
    v28 = v22;
    [v28 transactionNeedsMoreTime];
    sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
    v29 = v6;
    (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.background(_:), v16);
    v27 = sub_1001C66B8();
    (*(v17 + 8))(v20, v16);
    sub_1001C5698();
    sub_1001C56B8();
    v30 = *(v30 + 8);
    (v30)(v13, v33);
    aBlock[4] = sub_1000F4F38;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100247828;
    v23 = _Block_copy(aBlock);

    sub_1001C5668();
    v34 = &_swiftEmptyArrayStorage;
    sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
    v24 = v32;
    sub_1001C68C8();
    v25 = v27;
    sub_1001C6648();
    _Block_release(v23);

    (*(v3 + 8))(v24, v2);
    (*(v31 + 8))(v9, v29);
    (v30)(v15, v33);
  }

  return result;
}

void sub_1000E8410(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1000E849C()
{
  v1 = *v0;
  v2 = v0[4];
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  type metadata accessor for CRDTModelFileSyncManager();
  sub_1001C6688();
  return v4;
}

void *sub_1000E8534(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    v4 = *(a1 + 56);
    swift_unknownObjectRetain();
    v5 = sub_1000EDF7C(0x617461646B6F6F62, 0xEE006465726F7473);
    v6 = sub_100084528(&unk_100270A10, &unk_1001F3470);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v3 = sub_1000F3554(v5, v4, 0, 0, v9);
    swift_unknownObjectRelease();
    v10 = *(a1 + 24);
    *(a1 + 24) = v3;

    sub_1000E8800(v3);
  }

  return v3;
}

uint64_t sub_1000E8684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4;
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    v11 = *(v7 + 80);
    v12 = *(v7 + 96);
    type metadata accessor for CRDTModelFileSyncManager();
    v8 = a1[7];
    swift_unknownObjectRetain();
    v6 = sub_100169580(0x617461646B6F6F62, 0xEE006465726F7473, 1, v8, 0, 0);
    swift_unknownObjectRelease();
    v9 = a1[3];
    a1[3] = v6;

    sub_1000E8BBC();
  }

  *a2 = v6;
}

uint64_t sub_1000E8800(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 48);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = aBlock[2];
  v6 = swift_allocObject();
  v6[2] = aBlock;
  v6[3] = sub_1000F48E8;
  v6[4] = v4;
  v6[5] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000B2EE8;
  *(v7 + 24) = v6;
  v21 = sub_1000B3DA0;
  v22 = v7;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000906F4;
  v20 = &unk_100247058;
  v8 = _Block_copy(&aBlock);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_100084528(&unk_100270A20, &unk_1001F3480);
  sub_1001C6688();
  v10 = aBlock;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v10[2];
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = sub_1000F4938;
  v13[4] = v11;
  v13[5] = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000F51E0;
  *(v14 + 24) = v13;
  v21 = sub_1000B3DA0;
  v22 = v14;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000906F4;
  v20 = &unk_1002470D0;
  v15 = _Block_copy(&aBlock);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E8BBC()
{
  v1 = v0;
  v2 = *v0;
  CRDTModelFileSyncManager.observable.getter();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v5 = v2[10];
  v4[2] = v5;
  v6 = v2[11];
  v4[3] = v6;
  v7 = v2[12];
  v4[4] = v7;
  v8 = v2[13];
  v4[5] = v8;
  v4[6] = v3;
  ObservableContainer.addObserver(_:callback:)(v0, sub_1000F478C, v4);

  v9 = CRDTModelFileSyncManager.modelSyncVersionObservable.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  v14 = *(v9 + 16);
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = sub_1000F47A4;
  v15[4] = v11;
  v15[5] = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000F47D4;
  *(v16 + 24) = v15;
  v19[4] = sub_1000B3DA0;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1000906F4;
  v19[3] = &unk_100246E50;
  v17 = _Block_copy(v19);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

char *sub_1000E8E94(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = v30 - v6;
  v31 = sub_1001C6638();
  v7 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v8 = sub_1001C5688();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v35 = sub_1001C6668();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 3) = 0;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v32 = "HistoryService.modelReady";
  v34 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v33 = *(v10 + 104);
  v33(v13);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v30[1] = sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v30[0] = sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *(v2 + 4) = sub_1001C66A8();
  *(v2 + 5) = 0;
  (v33)(v13, v34, v35);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001C68C8();
  *(v2 + 6) = sub_1001C66A8();
  v14 = qword_1002708C0;
  v15 = type metadata accessor for CRDTModelSyncVersion();
  v16 = *(*(v15 - 8) + 56);
  v16(&v3[v14], 1, 1, v15);
  *&v3[qword_1002708C8] = 0;
  *&v3[qword_1002818C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = v37;
  v18 = v38;
  *(v3 + 2) = v37;
  *(v3 + 7) = v18;
  v19 = v36;
  v16(v36, 1, 1, v15);
  v20 = qword_1002708C0;
  swift_beginAccess();
  v21 = v17;
  swift_unknownObjectRetain();
  sub_1000B36A8(v19, &v3[v20], &unk_10026F350, &qword_1001F31E0);
  swift_endAccess();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000F4E84;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100247620;
  v24 = _Block_copy(aBlock);

  v25 = sub_1001C5FE8();
  v26 = [v23 initWithNotifyBlock:v24 blockDescription:v25];

  _Block_release(v24);

  [v26 setCoalescingDelay:30.0];

  swift_unknownObjectRelease();
  v27 = qword_1002708C8;
  swift_beginAccess();
  v28 = *&v3[v27];
  *&v3[v27] = v26;

  return v3;
}

char *CRDTModelCloudSyncController.init(cloudSyncManager:transactionProvider:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v41 = *v2;
  v42 = v41;
  v4 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = v32 - v6;
  v33 = sub_1001C6638();
  v7 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v8 = sub_1001C5688();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v37 = sub_1001C6668();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v37);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 3) = 0;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v34 = "HistoryService.modelReady";
  v36 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v35 = *(v10 + 104);
  v35(v13);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v32[1] = sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v32[0] = sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *(v2 + 4) = sub_1001C66A8();
  *(v2 + 5) = 0;
  (v35)(v13, v36, v37);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001C68C8();
  *(v2 + 6) = sub_1001C66A8();
  v14 = qword_1002708C0;
  v15 = type metadata accessor for CRDTModelSyncVersion();
  v16 = *(*(v15 - 8) + 56);
  v16(&v3[v14], 1, 1, v15);
  *&v3[qword_1002708C8] = 0;
  *&v3[qword_1002818C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = v39;
  v18 = v40;
  *(v3 + 2) = v39;
  *(v3 + 7) = v18;
  v19 = v38;
  v16(v38, 1, 1, v15);
  v20 = qword_1002708C0;
  swift_beginAccess();
  v21 = v17;
  swift_unknownObjectRetain();
  sub_1000B36A8(v19, &v3[v20], &unk_10026F350, &qword_1001F31E0);
  swift_endAccess();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 16) = *(v41 + 80);
  *(v23 + 24) = *(v42 + 88);
  *(v23 + 40) = *(v24 + 104);
  *(v23 + 48) = v22;
  v25 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000F2CBC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_1002467A0;
  v26 = _Block_copy(aBlock);

  v27 = sub_1001C5FE8();
  v28 = [v25 initWithNotifyBlock:v26 blockDescription:v27];

  _Block_release(v26);

  [v28 setCoalescingDelay:30.0];

  swift_unknownObjectRelease();
  v29 = qword_1002708C8;
  swift_beginAccess();
  v30 = *&v3[v29];
  *&v3[v29] = v28;

  return v3;
}

uint64_t sub_1000E9A68(void (*a1)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 48);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1000F4E8C;
    *(v5 + 24) = v3;
    aBlock[4] = sub_1000B3DA0;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100247670;
    v6 = _Block_copy(aBlock);

    dispatch_sync(v4, v6);
    _Block_release(v6);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      a1(result);
    }
  }

  return result;
}

uint64_t sub_1000E9BE4(void (*a1)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1000E9C5C();
    a1(v3);
  }

  return result;
}

uint64_t sub_1000E9C5C()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000F3264;
  *(v2 + 24) = v0;
  v5[4] = sub_1000B3DA0;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000906F4;
  v5[3] = &unk_100246D60;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E9D90()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + qword_10026FB10);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(aBlock[0] + 16);
  v5 = swift_allocObject();
  v5[2] = aBlock[0];
  v5[3] = sub_1000F4BB8;
  v5[4] = v3;
  v5[5] = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000B3E58;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100247508;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E9F98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EA408();
  }

  return result;
}

uint64_t sub_1000E9FF8(uint64_t a1)
{
  v2 = v1;
  v23 = sub_1001C5648();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v24 = [*(v2 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.handleLocalModelEvent"];
  sub_10009ADF0(a1, v11, &unk_10026F820, &unk_1001F1440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_100084528(&qword_10026F838, &unk_1001F1920);
    sub_10009AE58(&v11[*(v16 + 48)], v15, &unk_10026F420, &unk_1001F0E50);
    sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_10009AE58(v11, v15, &unk_10026F420, &unk_1001F0E50);
  }

  v17 = v15[*(v12 + 44)];
  sub_1001C65B8();
  if (v17 == 1)
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    v18 = *(v2 + 16);
    v19 = *(v18 + qword_10026FB10);
    v20 = sub_1001C5638();
    __chkstk_darwin(v20);
    *(&v22 - 4) = v18;
    *(&v22 - 3) = v15;
    *(&v22 - 16) = 0;
    sub_1001C6678();
    (*(v4 + 8))(v7, v23);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000E61DC(&v15[*(v12 + 52)]);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
  }

  return sub_10008875C(v15, &unk_10026F420, &unk_1001F0E50);
}

void sub_1000EA408()
{
  v1 = v0;
  v2 = *(*v0 + 10);
  v3 = *(*v0 + 11);
  v4 = *(*v0 + 12);
  v5 = type metadata accessor for ModelState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = [v0[7] createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.handleLocalModelEvent"];
  swift_getWitnessTable();
  v11 = type metadata accessor for ObservableContainer.Event();
  ObservableContainer.Event.currentValue.getter(v11, v9);
  v12 = static CRDTModelLocalFileManager.SyncError.__derived_enum_equals(_:_:)(v9[*(v5 + 44)], 1);
  sub_1001C65B8();
  if (v12)
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    v13 = v1[2];
    CRDTModelSyncManager.sync(_:)(v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000E61DC(&v9[*(v5 + 52)]);
      swift_unknownObjectRelease();
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1000EA6DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EA7FC(&unk_100247108, sub_1000F4940, sub_1000B3DA0, &unk_100247120);
  }

  return result;
}

uint64_t sub_1000EA76C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EA7FC(&unk_100246E88, sub_1000F47E0, sub_1000B3DA0, &unk_100246EA0);
  }

  return result;
}

uint64_t sub_1000EA7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v8 = *(v4 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v4;
  v12[4] = a3;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000906F4;
  v12[3] = a4;
  v10 = _Block_copy(v12);

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EA980(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_1000EA9F4(uint64_t a1)
{
  v3 = sub_1001C5648();
  v106 = *(v3 - 8);
  v107 = v3;
  v4 = *(v106 + 64);
  __chkstk_darwin(v3);
  v105 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReadingHistoryModel(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v101 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v100 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v99 = (&v98 - v14);
  v15 = __chkstk_darwin(v13);
  v102 = &v98 - v16;
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  v23 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v103 = *(v23 - 1);
  v24 = *(v103 + 64);
  v25 = __chkstk_darwin(v23);
  v104 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v109 = &v98 - v27;
  v28 = __chkstk_darwin(v26);
  v108 = (&v98 - v29);
  v30 = __chkstk_darwin(v28);
  v110 = &v98 - v31;
  __chkstk_darwin(v30);
  v33 = &v98 - v32;
  v111 = [*(v1 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.handleCloudModelEvent"];
  sub_10009ADF0(a1, v22, &unk_10026F820, &unk_1001F1440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_100084528(&qword_10026F838, &unk_1001F1920);
    sub_10009AE58(&v22[*(v34 + 48)], v33, &unk_10026F420, &unk_1001F0E50);
    sub_10008875C(v22, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_10009AE58(v22, v33, &unk_10026F420, &unk_1001F0E50);
  }

  if (v33[v23[11]] == 1)
  {
    v35 = v1 + qword_1002818C8;
    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = *(v35 + 8);
    v38 = v23[13];
    v39 = v1;
    if ((sub_1000EB854(&v33[v38], 0xD000000000000015, 0x8000000100201020) & 1) == 0)
    {
      v56 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v57 = qword_1002711E8;
      v58 = v110;
      sub_10009ADF0(v33, v110, &unk_10026F420, &unk_1001F0E50);
      if (os_log_type_enabled(v57, v56))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v114 = v60;
        *v59 = 136315138;
        v61 = v58 + v23[12];
        v62 = v102;
        sub_10009ADF0(v61, v102, &unk_10026FC40, &qword_1001F0E90);
        v63 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
        v64 = (*(*(v63 - 8) + 48))(v62, 2, v63);
        if (v64)
        {
          if (v64 == 1)
          {
            v65 = 0x6C61636F6CLL;
            v66 = 0xE500000000000000;
          }

          else
          {
            v66 = 0xE600000000000000;
            v65 = 0x6465726F7473;
          }
        }

        else
        {
          v77 = v101;
          sub_1000F4BE8(v62, v101, type metadata accessor for ReadingHistoryModel);
          v112 = 0x2865746F6D6572;
          v113 = 0xE700000000000000;
          v115._countAndFlagsBits = ReadingHistoryModel.description.getter();
          sub_1001C6138(v115);

          v116._countAndFlagsBits = 41;
          v116._object = 0xE100000000000000;
          sub_1001C6138(v116);
          v65 = v112;
          v66 = v113;
          sub_1000F4A38(v77, type metadata accessor for ReadingHistoryModel);
        }

        v76 = v111;
        sub_10008875C(v110, &unk_10026F420, &unk_1001F0E50);
        v78 = sub_1001874E8(v65, v66, &v114);

        *(v59 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v57, v56, "handleCloudModelEvent - skip sync to local, no revision change, lastSource: %s", v59, 0xCu);
        sub_10008E7BC(v60);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_10008875C(v58, &unk_10026F420, &unk_1001F0E50);
        v76 = v111;
      }

      goto LABEL_46;
    }

    v102 = v37;
    v110 = Strong;
    v40 = v23[12];
    v41 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v42 = v33;
    v43 = *(v41 - 8);
    (*(v43 + 56))(v18, 1, 2, v41);
    v44 = v42;
    LOBYTE(v40) = sub_1000B926C(&v42[v40], v18);
    sub_10008875C(v18, &unk_10026FC40, &qword_1001F0E90);
    v45 = sub_1001C65B8();
    if (v40)
    {
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v46 = qword_1002711E8;
      v47 = v108;
      sub_10009ADF0(v44, v108, &unk_10026F420, &unk_1001F0E50);
      if (os_log_type_enabled(v46, v45))
      {
        v48 = v45;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v114 = v50;
        *v49 = 136315138;
        v51 = v47 + v23[12];
        v52 = v99;
        sub_10009ADF0(v51, v99, &unk_10026FC40, &qword_1001F0E90);
        v53 = (*(v43 + 48))(v52, 2, v41);
        if (v53)
        {
          v33 = v44;
          if (v53 == 1)
          {
            v54 = 0x6C61636F6CLL;
            v55 = 0xE500000000000000;
          }

          else
          {
            v55 = 0xE600000000000000;
            v54 = 0x6465726F7473;
          }
        }

        else
        {
          v79 = v101;
          sub_1000F4BE8(v52, v101, type metadata accessor for ReadingHistoryModel);
          v112 = 0x2865746F6D6572;
          v113 = 0xE700000000000000;
          v117._countAndFlagsBits = ReadingHistoryModel.description.getter();
          sub_1001C6138(v117);

          v118._countAndFlagsBits = 41;
          v118._object = 0xE100000000000000;
          sub_1001C6138(v118);
          v54 = v112;
          v55 = v113;
          sub_1000F4A38(v79, type metadata accessor for ReadingHistoryModel);
          v33 = v44;
        }

        v95 = v110;
        v76 = v111;
        sub_10008875C(v108, &unk_10026F420, &unk_1001F0E50);
        v96 = sub_1001874E8(v54, v55, &v114);

        *(v49 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v46, v48, "handleCloudModelEvent - skip sync to local, lastSource: %s", v49, 0xCu);
        sub_10008E7BC(v50);

        if (!v95)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_10008875C(v47, &unk_10026F420, &unk_1001F0E50);
        v33 = v44;
        v76 = v111;
        if (!v110)
        {
          goto LABEL_46;
        }
      }

      swift_unknownObjectRetain();
      sub_1000E5D7C(&v33[v38], v33);
      swift_unknownObjectRelease_n();
LABEL_46:

      return sub_10008875C(v33, &unk_10026F420, &unk_1001F0E50);
    }

    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v67 = qword_1002711E8;
    v68 = v109;
    sub_10009ADF0(v44, v109, &unk_10026F420, &unk_1001F0E50);
    v69 = v39;
    if (os_log_type_enabled(v67, v45))
    {
      v108 = v67;
      v70 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v114 = v99;
      *v70 = 136315138;
      v71 = v68 + v23[12];
      v72 = v100;
      sub_10009ADF0(v71, v100, &unk_10026FC40, &qword_1001F0E90);
      v73 = (*(v43 + 48))(v72, 2, v41);
      if (v73)
      {
        if (v73 == 1)
        {
          v74 = 0x6C61636F6CLL;
        }

        else
        {
          v74 = 0x6465726F7473;
        }

        if (v73 == 1)
        {
          v75 = 0xE500000000000000;
        }

        else
        {
          v75 = 0xE600000000000000;
        }
      }

      else
      {
        v80 = v101;
        sub_1000F4BE8(v72, v101, type metadata accessor for ReadingHistoryModel);
        v112 = 0x2865746F6D6572;
        v113 = 0xE700000000000000;
        v119._countAndFlagsBits = ReadingHistoryModel.description.getter();
        sub_1001C6138(v119);

        v120._countAndFlagsBits = 41;
        v120._object = 0xE100000000000000;
        sub_1001C6138(v120);
        v69 = v39;
        v74 = v112;
        v75 = v113;
        sub_1000F4A38(v80, type metadata accessor for ReadingHistoryModel);
      }

      v33 = v44;
      sub_10008875C(v109, &unk_10026F420, &unk_1001F0E50);
      v81 = sub_1001874E8(v74, v75, &v114);

      *(v70 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v108, v45, "handleCloudModelEvent - sync to local, lastSource: %s", v70, 0xCu);
      sub_10008E7BC(v99);
    }

    else
    {
      sub_10008875C(v68, &unk_10026F420, &unk_1001F0E50);
      v33 = v44;
    }

    v82 = v110;
    v83 = *(v69 + 32);
    sub_100084528(&unk_100270A10, &unk_1001F3470);
    sub_1001C6688();
    v110 = 0;
    v84 = v112;
    v85 = v104;
    sub_10009ADF0(v33, v104, &unk_10026F420, &unk_1001F0E50);
    v86 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v87 = swift_allocObject();
    v88 = v102;
    *(v87 + 16) = v82;
    *(v87 + 24) = v88;
    sub_10009AE58(v85, v87 + v86, &unk_10026F420, &unk_1001F0E50);
    v89 = v111;
    *(v87 + ((v24 + v86 + 7) & 0xFFFFFFFFFFFFFFF8)) = v111;
    v90 = v84;
    v91 = *(v84 + 48);
    swift_unknownObjectRetain();
    v92 = v89;
    v93 = v105;
    v94 = sub_1001C5638();
    __chkstk_darwin(v94);
    *(&v98 - 6) = v90;
    *(&v98 - 5) = v33;
    *(&v98 - 32) = 1;
    *(&v98 - 3) = sub_1000F4C50;
    *(&v98 - 2) = v87;
    sub_100084528(&unk_100270A90, &qword_1001F34D8);
    sub_1001C6678();
    swift_unknownObjectRelease();

    (*(v106 + 8))(v93, v107);
  }

  else
  {
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
  }

  return sub_10008875C(v33, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000EB854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = (&v50 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v50 - v16);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    sub_10012FA70(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = type metadata accessor for CRDTModelRevisionInfo();
    (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  }

  v52 = a1;
  sub_10009ADF0(a1, v17, &unk_10026F410, &unk_1001F0E40);
  v25 = type metadata accessor for CRDTModelRevisionInfo();
  v26 = *(*(v25 - 8) + 48);
  if (v26(v17, 1, v25) == 1)
  {
    sub_10008875C(v17, &unk_10026F410, &unk_1001F0E40);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v27 = *v17;
    v28 = v17[1];

    sub_1000F4A38(v17, type metadata accessor for CRDTModelRevisionInfo);
  }

  v55 = v19;
  sub_10009ADF0(v19, v14, &unk_10026F410, &unk_1001F0E40);
  if (v26(v14, 1, v25) == 1)
  {
    sub_10008875C(v14, &unk_10026F410, &unk_1001F0E40);
    if (!v28)
    {
      goto LABEL_21;
    }

LABEL_19:

    v33 = 1;
    goto LABEL_22;
  }

  v30 = *v14;
  v29 = v14[1];

  sub_1000F4A38(v14, type metadata accessor for CRDTModelRevisionInfo);
  if (v28)
  {
    if (v29)
    {
      if (v27 != v30 || v28 != v29)
      {
        v32 = sub_1001C6D08();

        v33 = v32 ^ 1;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v29)
  {
    goto LABEL_19;
  }

LABEL_21:
  v33 = 0;
LABEL_22:
  v51 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v50 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1001F0CF0;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_100084570();
  *(v34 + 64) = v35;
  *(v34 + 32) = a2;
  v36 = v52;
  *(v34 + 40) = v53;
  *(v34 + 96) = &type metadata for Bool;
  *(v34 + 104) = &protocol witness table for Bool;
  *(v34 + 72) = v33 & 1;
  sub_10009ADF0(v36, v11, &unk_10026F410, &unk_1001F0E40);
  v37 = v26(v11, 1, v25);

  if (v37 == 1)
  {
    sub_10008875C(v11, &unk_10026F410, &unk_1001F0E40);
    v38 = (v34 + 112);
    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v35;
  }

  else
  {
    v39 = CRDTModelRevisionInfo.description.getter();
    v41 = v40;
    sub_1000F4A38(v11, type metadata accessor for CRDTModelRevisionInfo);
    v38 = (v34 + 112);
    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v35;
    if (v41)
    {
      *v38 = v39;
      goto LABEL_29;
    }
  }

  *v38 = 7104878;
  v41 = 0xE300000000000000;
LABEL_29:
  v43 = v54;
  v42 = v55;
  *(v34 + 120) = v41;
  sub_10009ADF0(v42, v43, &unk_10026F410, &unk_1001F0E40);
  if (v26(v43, 1, v25) == 1)
  {
    sub_10008875C(v43, &unk_10026F410, &unk_1001F0E40);
    v44 = (v34 + 152);
    *(v34 + 176) = &type metadata for String;
    *(v34 + 184) = v35;
LABEL_33:
    v48 = v55;
    *v44 = 7104878;
    v47 = 0xE300000000000000;
    goto LABEL_34;
  }

  v45 = CRDTModelRevisionInfo.description.getter();
  v47 = v46;
  sub_1000F4A38(v43, type metadata accessor for CRDTModelRevisionInfo);
  v44 = (v34 + 152);
  *(v34 + 176) = &type metadata for String;
  *(v34 + 184) = v35;
  if (!v47)
  {
    goto LABEL_33;
  }

  *v44 = v45;
  v48 = v55;
LABEL_34:
  *(v34 + 160) = v47;
  sub_1001C5118();

  sub_10008875C(v48, &unk_10026F410, &unk_1001F0E40);
  return v33 & 1;
}

void sub_1000EBE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
    sub_1000E5D7C(a3 + *(v4 + 52), a3);
  }
}

uint64_t sub_1000EBE70(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CRDTModelSyncVersion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v11, v5, &unk_10026F350, &qword_1001F31E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10008875C(v5, &unk_10026F350, &qword_1001F31E0);
  }

  sub_1000F4BE8(v5, v10, type metadata accessor for CRDTModelSyncVersion);
  sub_1000EC1F8(v10, 0);
  return sub_1000F4A38(v10, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000EC034(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CRDTModelSyncVersion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v11, v5, &unk_10026F350, &qword_1001F31E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10008875C(v5, &unk_10026F350, &qword_1001F31E0);
  }

  sub_1000F4BE8(v5, v10, type metadata accessor for CRDTModelSyncVersion);
  sub_1000EC728(v10, 0);
  return sub_1000F4A38(v10, type metadata accessor for CRDTModelSyncVersion);
}

void sub_1000EC1F8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for CRDTModelSyncVersion();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 32);
  sub_100084528(&unk_100270A10, &unk_1001F3470);
  sub_1001C6688();
  v16 = *(aBlock[0] + 48);
  sub_1001C6688();

  v17 = a1 + *(v10 + 20);
  v18 = sub_1001C5EA8();
  v19 = sub_1001C65B8();
  if (v18)
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v20 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v20, v19, "checkLocalModelSyncVersion(%{BOOL}d): has delta", v21, 8u);
    }

    if (a2)
    {
      sub_1000F4968(a1, v9, type metadata accessor for CRDTModelSyncVersion);
      (*(v11 + 56))(v9, 0, 1, v10);
      v22 = qword_1002708C0;
      swift_beginAccess();
      sub_1000B36A8(v9, v3 + v22, &unk_10026F350, &qword_1001F31E0);
      swift_endAccess();
      if (!*(v3 + 40))
      {
        v23 = [*(v3 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.localModelSyncVersion"];
        v24 = *(v3 + 40);
        *(v3 + 40) = v23;
      }

      v25 = qword_1002708C8;
      swift_beginAccess();
      v26 = *(v3 + v25);
      if (!v26)
      {
        sub_1000F4A38(v14, type metadata accessor for CRDTModelSyncVersion);
        swift_endAccess();
        return;
      }

      swift_endAccess();
      aBlock[4] = MarkedAsFinishedMechanism.rawValue.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100246FB8;
      v27 = _Block_copy(aBlock);
      v28 = v26;
      [v28 signalWithCompletion:v27];
      _Block_release(v27);
    }
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v29 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v19))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v29, v19, "checkLocalModelSyncVersion(%{BOOL}d): no delta", v30, 8u);
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v31 = qword_1002708C0;
    swift_beginAccess();
    sub_1000B36A8(v9, v3 + v31, &unk_10026F350, &qword_1001F31E0);
    swift_endAccess();
    v32 = *(v3 + 40);
    if (v32)
    {
      [v32 endTransaction];
      sub_1000F4A38(v14, type metadata accessor for CRDTModelSyncVersion);
      v33 = *(v3 + 40);
      *(v3 + 40) = 0;

      return;
    }
  }

  sub_1000F4A38(v14, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000EC728(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = aBlock - v8;
  v10 = type metadata accessor for CRDTModelSyncVersion();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E849C();
  CRDTModelFileSyncManager.modelSyncVersion.getter();

  v15 = a1 + *(v10 + 20);
  v16 = sub_1001C5EA8();
  v17 = sub_1001C65B8();
  if (v16)
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v18 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v18, v17, "checkLocalModelSyncVersion(%{BOOL}d): has delta", v19, 8u);
    }

    if (a2)
    {
      sub_1000F4968(a1, v9, type metadata accessor for CRDTModelSyncVersion);
      (*(v11 + 56))(v9, 0, 1, v10);
      v20 = qword_1002708C0;
      swift_beginAccess();
      sub_1000B36A8(v9, v3 + v20, &unk_10026F350, &qword_1001F31E0);
      swift_endAccess();
      if (!*(v3 + 40))
      {
        v21 = [*(v3 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.localModelSyncVersion"];
        v22 = *(v3 + 40);
        *(v3 + 40) = v21;
      }

      v23 = qword_1002708C8;
      swift_beginAccess();
      v24 = *(v3 + v23);
      if (!v24)
      {
        sub_1000F4A38(v14, type metadata accessor for CRDTModelSyncVersion);
        return swift_endAccess();
      }

      swift_endAccess();
      aBlock[4] = MarkedAsFinishedMechanism.rawValue.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100246D88;
      v25 = _Block_copy(aBlock);
      v26 = v24;
      [v26 signalWithCompletion:v25];
      _Block_release(v25);
    }
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v27 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v17))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v27, v17, "checkLocalModelSyncVersion(%{BOOL}d): no delta", v28, 8u);
    }

    sub_1000ECF2C();
  }

  return sub_1000F4A38(v14, type metadata accessor for CRDTModelSyncVersion);
}

void sub_1000ECB64(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v15[-v7];
  v9 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v9, v8, &unk_10026F350, &qword_1001F31E0);
  v10 = type metadata accessor for CRDTModelSyncVersion();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  sub_10008875C(v8, &unk_10026F350, &qword_1001F31E0);
  if (v12 != 1)
  {
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    (*(v11 + 56))(v6, 1, 1, v10);
    swift_beginAccess();
    sub_1000B36A8(v6, a1 + v9, &unk_10026F350, &qword_1001F31E0);
    swift_endAccess();
    v13 = *(a1 + 40);
    if (v13)
    {
      [v13 endTransaction];
      v14 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }
}

void sub_1000ECDA8(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v6, v5, &unk_10026F350, &qword_1001F31E0);
  v7 = type metadata accessor for CRDTModelSyncVersion();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_10008875C(v5, &unk_10026F350, &qword_1001F31E0);
  if (v6 != 1)
  {
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    sub_1000ECF2C();
  }
}

void sub_1000ECF2C()
{
  v1 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CRDTModelSyncVersion();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = qword_1002708C0;
  swift_beginAccess();
  sub_1000B36A8(v4, v0 + v6, &unk_10026F350, &qword_1001F31E0);
  swift_endAccess();
  v7 = *(v0 + 40);
  if (v7)
  {
    [v7 endTransaction];
    v8 = *(v0 + 40);
    *(v0 + 40) = 0;
  }
}

uint64_t CRDTModelCloudSyncController.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  sub_10008875C(v0 + qword_1002708C0, &unk_10026F350, &qword_1001F31E0);

  sub_1000CEB00(v0 + qword_1002818C8);
  return v0;
}

uint64_t CRDTModelCloudSyncController.__deallocating_deinit()
{
  CRDTModelCloudSyncController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000ED2B4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_1001C6018();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[4] = v6;
  v3[5] = v7;
  v8 = a3;

  return _swift_task_switch(sub_1000ED350, 0, 0);
}

uint64_t sub_1000ED350()
{
  v1 = v0[2];
  v0[6] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000ED3F8;
  v4 = v0[4];
  v3 = v0[5];

  return ReadingHistoryBackupManager.backup(name:)(v4, v3);
}

uint64_t sub_1000ED3F8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000ED574, 0, 0);
  }

  else
  {
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v6 = *(v3 + 24);

    (*(v6 + 16))(v6, 1, 0);
    _Block_release(*(v3 + 24));
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1000ED574()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = sub_1001C4A18();

  (*(v4 + 16))(v4, 0, v6);

  _Block_release(*(v0 + 24));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000ED79C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000ED814, 0, 0);
}

uint64_t sub_1000ED814()
{
  v1 = v0[2];
  v0[4] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1000ED8B0;

  return sub_100133D3C();
}

uint64_t sub_1000ED8B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1000EDA94;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1000ED9E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000ED9E0()
{
  v1 = *(v0 + 56);

  isa = sub_1001C6288().super.isa;

  v3 = *(v0 + 24);
  (v3)[2](v3, isa, *(v0 + 48) == 0, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000EDA94()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_1001C4A18();

  v5 = v0[3];
  (v5)[2](v5, 0, v0[6] == 0, v4);

  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000EDCD0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1001C6018();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_1000EDD5C, 0, 0);
}

uint64_t sub_1000EDD5C()
{
  v1 = v0[2];
  v0[6] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000EDE04;
  v4 = v0[4];
  v3 = v0[5];

  return ReadingHistoryBackupManager.restore(name:)(v4, v3);
}

uint64_t sub_1000EDE04()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000ED574, 0, 0);
  }

  else
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v7 = *(v3 + 16);
    v6 = *(v3 + 24);

    (*(v6 + 16))(v6, 1, 0);
    _Block_release(*(v3 + 24));
    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_1000EDF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1001C4B28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = [objc_opt_self() books];
  v17 = [v16 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v18 = *(v9 + 8);
  v18(v13, v8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v19 = sub_100134FD4(v15, v7, a1, a2);
  sub_10008875C(v7, &unk_10026EF10, &unk_1001F1FA0);
  v18(v15, v8);
  return v19;
}

uint64_t sub_1000EE19C(uint64_t a1)
{
  v2 = sub_1001C5648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 48);
    v9 = result;
    v10 = sub_1001C5638();
    __chkstk_darwin(v10);
    *(&v11 - 2) = v9;
    *(&v11 - 1) = a1;
    sub_1001C6678();
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1000EE300(uint64_t a1)
{
  v2 = v1;
  v152 = a1;
  v3 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v144 = &v128 - v5;
  v6 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v149 = &v128 - v8;
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v148 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1001C5AC8();
  v139 = *(v140 - 8);
  v12 = *(v139 + 64);
  __chkstk_darwin(v140);
  v138 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v129 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v128 - v18;
  v20 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v24 = &v128 - v23;
  v25 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v141 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v133 = &v128 - v30;
  v31 = __chkstk_darwin(v29);
  v131 = &v128 - v32;
  v33 = __chkstk_darwin(v31);
  v132 = &v128 - v34;
  v35 = __chkstk_darwin(v33);
  v130 = &v128 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v128 - v38;
  __chkstk_darwin(v37);
  v41 = &v128 - v40;
  v42 = *(*v1 + 192);
  swift_beginAccess();
  v43 = v21[2];
  v155 = v42;
  v137 = v21 + 2;
  v136 = v43;
  v43(v24, &v2[v42], v20);
  sub_1001C5D38();
  v143 = v21;
  v44 = v21[1];
  v142 = v24;
  v135 = v21 + 1;
  v134 = v44;
  v44(v24, v20);
  v153 = v20;
  sub_1001C5D38();
  v45 = *(*(v2 + 4) + 16);

  sub_1001C6688();
  v150 = 0;

  v154 = v14;
  v145 = v19[*(v14 + 44)];
  v151 = v19;
  sub_10008875C(v19, &unk_10026F420, &unk_1001F0E50);
  sub_1000885F4(&qword_100270A58, &unk_1002739E0, &qword_1001F3498);
  v46 = sub_1001C5818();
  v47 = *v2;
  v156 = v2;
  v48 = *(v47 + 200);
  v146 = v41;
  v147 = v39;
  if (v46)
  {
    v49 = v130;
    sub_10009ADF0(v39, v130, &unk_1002739E0, &qword_1001F3498);
    v50 = v132;
    sub_10009ADF0(v41, v132, &unk_1002739E0, &qword_1001F3498);
    v51 = sub_1001C5128();
    v52 = sub_1001C65B8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v53 = 136315394;
      v54 = ReadingHistoryModel.description.getter();
      v56 = v55;
      sub_10008875C(v49, &unk_1002739E0, &qword_1001F3498);
      v57 = sub_1001874E8(v54, v56, &aBlock);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = ReadingHistoryModel.description.getter();
      v60 = v59;
      sub_10008875C(v50, &unk_1002739E0, &qword_1001F3498);
      v61 = sub_1001874E8(v58, v60, &aBlock);

      *(v53 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v51, v52, "CRDTModelFileSyncManager q_handle -- incoming=%s and existing=%s", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10008875C(v50, &unk_1002739E0, &qword_1001F3498);
      v62 = sub_10008875C(v49, &unk_1002739E0, &qword_1001F3498);
    }

    __chkstk_darwin(v62);
    *(&v128 - 2) = v39;
    v76 = v156;
    swift_beginAccess();
    v77 = v138;
    v78 = v140;
    v79 = v150;
    sub_1001C5D48();
    swift_endAccess();
    (*(v139 + 8))(v77, v78);
    v80 = v148;
    sub_1000F4968(v39, v148, type metadata accessor for ReadingHistoryModel);
    v81 = *(*(v76 + 4) + 16);

    v82 = v151;
    v83 = v154;
    sub_1001C6688();
    v152 = v79;

    LODWORD(v81) = *(v82 + v83[11]);
    sub_10008875C(v82, &unk_10026F420, &unk_1001F0E50);
    if (v81 == 1)
    {
      v84 = v149;
      sub_1000F4968(v80, v149, type metadata accessor for ReadingHistoryModel);
      v85 = 0;
    }

    else
    {
      v85 = 2;
      v84 = v149;
    }

    v109 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    (*(*(v109 - 8) + 56))(v84, v85, 2, v109);
    v110 = v156;
    v111 = v142;
    v112 = v153;
    v136(v142, &v156[v155], v153);
    v113 = v141;
    sub_1001C5D38();
    v134(v111, v112);
    sub_1000F4968(v113, v82, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v113, &unk_1002739E0, &qword_1001F3498);
    v114 = v154;
    sub_10009ADF0(v84, v82 + v154[12], &unk_10026FC40, &qword_1001F0E90);
    v115 = type metadata accessor for CRDTModelRevisionInfo();
    v116 = *(*(v115 - 8) + 56);
    v117 = v144;
    v116(v144, 1, 1, v115);
    v118 = v114[13];
    v116((v82 + v118), 1, 1, v115);
    *(v82 + v114[11]) = 1;
    sub_1000B36A8(v117, v82 + v118, &unk_10026F410, &unk_1001F0E40);
    sub_100163DC0(v82, 0x656C646E61685F71, 0xE800000000000000);
    sub_10008875C(v82, &unk_10026F420, &unk_1001F0E50);
    v119 = *(v110 + 12);
    swift_beginAccess();
    sub_1001C5D18();
    swift_endAccess();
    v120 = *(v110 + 5);
    v121 = *(v120 + 16);
    v122 = swift_allocObject();
    v122[2] = sub_1000F51A8;
    v122[3] = v110;
    v122[4] = v120;
    v123 = swift_allocObject();
    *(v123 + 16) = sub_1000F51E4;
    *(v123 + 24) = v122;
    v161 = sub_1000B3DA0;
    v162 = v123;
    aBlock = _NSConcreteStackBlock;
    v158 = 1107296256;
    v159 = sub_1000906F4;
    v160 = &unk_100247238;
    v124 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v121, v124);
    _Block_release(v124);
    LOBYTE(v124) = swift_isEscapingClosureAtFileLocation();

    if ((v124 & 1) == 0)
    {
      sub_10008875C(v149, &unk_10026FC40, &qword_1001F0E90);
      sub_1000F4A38(v148, type metadata accessor for ReadingHistoryModel);
      if (v145)
      {
        goto LABEL_21;
      }

      v125 = *(*(v156 + 4) + 16);

      v126 = v151;
      v127 = v154;
      sub_1001C6688();

      LODWORD(v125) = *(v126 + v127[11]);
      sub_10008875C(v126, &unk_10026F420, &unk_1001F0E50);
      if (v125 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v63 = v131;
    sub_10009ADF0(v39, v131, &unk_1002739E0, &qword_1001F3498);
    v64 = v133;
    sub_10009ADF0(v41, v133, &unk_1002739E0, &qword_1001F3498);
    v65 = sub_1001C5128();
    v66 = sub_1001C65B8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v67 = 136315394;
      v68 = ReadingHistoryModel.description.getter();
      v70 = v69;
      sub_10008875C(v63, &unk_1002739E0, &qword_1001F3498);
      v71 = sub_1001874E8(v68, v70, &aBlock);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      v72 = ReadingHistoryModel.description.getter();
      v74 = v73;
      sub_10008875C(v64, &unk_1002739E0, &qword_1001F3498);
      v75 = sub_1001874E8(v72, v74, &aBlock);

      *(v67 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "CRDTModelFileSyncManager q_handle -- no delta, incoming=%s and existing=%s", v67, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10008875C(v64, &unk_1002739E0, &qword_1001F3498);
      sub_10008875C(v63, &unk_1002739E0, &qword_1001F3498);
    }

    v86 = v151;
    v87 = *(*(v156 + 4) + 16);

    v88 = v154;
    sub_1001C6688();

    LOBYTE(v87) = *(v86 + v88[11]);
    sub_10008875C(v86, &unk_10026F420, &unk_1001F0E50);
    if ((v87 & 1) == 0)
    {
      v89 = *(*(v156 + 4) + 16);

      v90 = v129;
      sub_1001C6688();

      sub_1000F4968(v90, v86, type metadata accessor for ReadingHistoryModel);
      v91 = v86;
      sub_10008875C(v90, &unk_10026F420, &unk_1001F0E50);
      v92 = v88[12];
      v93 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
      (*(*(v93 - 8) + 56))(v86 + v92, 2, 2, v93);
      v94 = type metadata accessor for CRDTModelRevisionInfo();
      v95 = *(*(v94 - 8) + 56);
      v96 = v144;
      v95(v144, 1, 1, v94);
      v97 = v88[13];
      v95((v91 + v97), 1, 1, v94);
      *(v91 + v88[11]) = 1;
      sub_1000B36A8(v96, v91 + v97, &unk_10026F410, &unk_1001F0E40);
      sub_100163DC0(v91, 0xD000000000000012, 0x8000000100200E30);
      sub_10008875C(v91, &unk_10026F420, &unk_1001F0E50);
    }

    v98 = v155;
    v99 = v156;
    swift_beginAccess();
    (v143[3])(v99 + v98, v152, v153);
    v100 = v99[12];
    sub_1001C5D18();
    swift_endAccess();
    v101 = v99[5];
    v102 = *(v101 + 16);
    v103 = swift_allocObject();
    v103[2] = sub_1000F4A08;
    v103[3] = v99;
    v103[4] = v101;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_1000F4A10;
    *(v104 + 24) = v103;
    v161 = sub_1000B3DA0;
    v162 = v104;
    aBlock = _NSConcreteStackBlock;
    v158 = 1107296256;
    v159 = sub_1000906F4;
    v160 = &unk_1002471C0;
    v105 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v102, v105);
    _Block_release(v105);
    LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

    if ((v105 & 1) == 0)
    {
      if (v145)
      {
        goto LABEL_21;
      }

      v107 = *(*(v156 + 4) + 16);

      v108 = v151;
      sub_1001C6688();

      LOBYTE(v107) = *(v108 + v88[11]);
      sub_10008875C(v108, &unk_10026F420, &unk_1001F0E50);
      if ((v107 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      sub_1000F0F98();
LABEL_21:
      sub_10008875C(v146, &unk_1002739E0, &qword_1001F3498);
      return sub_10008875C(v147, &unk_1002739E0, &qword_1001F3498);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EF5E8()
{
  v0 = sub_1001C5D28();
  sub_100084528(&unk_1002739E0, &qword_1001F3498);
  sub_1000885F4(&qword_100270A58, &unk_1002739E0, &qword_1001F3498);
  sub_1001C57C8();
  return v0(&v2, 0);
}

void sub_1000EF6C4(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v153 = a4;
  v5 = v4;
  v152 = a3;
  v148 = a2;
  v157 = a1;
  v6 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v139 = v132 - v8;
  v147 = sub_1001C5BD8();
  v146 = *(v147 - 8);
  v9 = *(v146 + 64);
  __chkstk_darwin(v147);
  v145 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1001C5AC8();
  v143 = *(v144 - 8);
  v11 = *(v143 + 64);
  __chkstk_darwin(v144);
  v142 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v13 = *(*(v141 - 8) + 64);
  v14 = __chkstk_darwin(v141);
  v138 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v150 = v132 - v16;
  v17 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v155 = *(v17 - 8);
  v156 = v17;
  v18 = *(v155 + 64);
  v19 = __chkstk_darwin(v17);
  v137 = v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v158 = v132 - v21;
  v22 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = v132 - v24;
  v26 = type metadata accessor for ReadingHistoryModel(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v30 = v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = v132 - v32;
  __chkstk_darwin(v31);
  v35 = v132 - v34;
  v151 = [*(v4 + 64) createTransactionWithName:"com.apple.ibooks.CRDTModelFileSyncManager.q_sync"];
  v36 = *(*(v4 + 32) + 16);

  v149 = v22;
  v37 = v154;
  sub_1001C6688();
  v38 = v157;

  sub_1000F4968(v25, v35, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v25, &unk_10026F420, &unk_1001F0E50);
  sub_1000F2C74(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v140 = v26;
  LOBYTE(v36) = sub_1001C5C38();
  sub_1000F4A38(v35, type metadata accessor for ReadingHistoryModel);
  v39 = *(*v5 + 200);
  if (v36)
  {
    sub_1000F4968(v38, v33, type metadata accessor for ReadingHistoryModel);

    v40 = sub_1001C5128();
    v41 = sub_1001C65B8();

    v42 = os_log_type_enabled(v40, v41);
    v136 = v25;
    v132[1] = v39;
    v154 = v37;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      aBlock[0] = v135;
      *v43 = 67109634;
      *(v43 + 4) = v148 & 1;
      *(v43 + 8) = 2080;
      LODWORD(v134) = v41;
      v44 = ReadingHistoryModel.description.getter();
      v46 = v45;
      sub_1000F4A38(v33, type metadata accessor for ReadingHistoryModel);
      v47 = sub_1001874E8(v44, v46, aBlock);

      *(v43 + 10) = v47;
      *(v43 + 18) = 2080;
      v48 = *(*(v5 + 4) + 16);

      v49 = v154;
      sub_1001C6688();
      v154 = v49;

      sub_1000F4968(v25, v35, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v25, &unk_10026F420, &unk_1001F0E50);
      v50 = ReadingHistoryModel.description.getter();
      v52 = v51;
      sub_1000F4A38(v35, type metadata accessor for ReadingHistoryModel);
      v53 = sub_1001874E8(v50, v52, aBlock);

      *(v43 + 20) = v53;
      _os_log_impl(&_mh_execute_header, v40, v134, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v43, 0x1Cu);
      swift_arrayDestroy();

      v38 = v157;
    }

    else
    {

      sub_1000F4A38(v33, type metadata accessor for ReadingHistoryModel);
    }

    v68 = v35;
    v70 = v155;
    v69 = v156;
    v71 = *(*v5 + 192);
    swift_beginAccess();
    v72 = *(v70 + 16);
    v135 = v71;
    v134 = v70 + 16;
    v133 = v72;
    v72(v158, &v5[v71], v69);
    sub_1000F4968(v38, v68, type metadata accessor for ReadingHistoryModel);
    sub_100084528(&unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
    v73 = v150;
    sub_1001C5B58();
    v74 = v5;
    v75 = v68;
    v76 = v140;
    v77 = *(v140 + 20);
    sub_1001C4CA8();
    sub_1000F2C74(&unk_10026F440, &type metadata accessor for Date);
    sub_1001C5B58();
    v78 = *(v76 + 24);
    v79 = v75;
    v80 = v74;
    *(v73 + v78) = &_swiftEmptyDictionarySingleton;
    *(v73 + *(v141 + 52)) = &_swiftEmptyDictionarySingleton;
    v81 = sub_1000B385C(v79, v73);
    __chkstk_darwin(v81);
    v132[-2] = v73;
    v82 = v142;
    v83 = v144;
    v84 = v154;
    sub_1001C5D48();
    (*(v143 + 8))(v82, v83);
    v85 = *(v74 + 12);
    v86 = v146;
    v87 = v145;
    v88 = v147;
    (*(v146 + 104))(v145, enum case for CRCodableVersion.version3(_:), v147);
    v89 = sub_1001C5D08();
    if (v84)
    {

      (*(v86 + 8))(v87, v88);
      v91 = sub_1001C5128();
      v92 = sub_1001C6598();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v160 = v94;
        *v93 = 136315138;
        v95 = v158;
        swift_beginAccess();
        v96 = v138;
        v97 = v156;
        sub_1001C5D38();
        v98 = ReadingHistoryModel.description.getter();
        v100 = v99;
        sub_10008875C(v96, &unk_1002739E0, &qword_1001F3498);
        v101 = sub_1001874E8(v98, v100, &v160);

        *(v93 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v91, v92, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v93, 0xCu);
        sub_10008E7BC(v94);
      }

      else
      {

        v95 = v158;
        v97 = v156;
      }

      v152();
      sub_100084528(&qword_100270AA0, &qword_1001F34E0);
      sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0);
      swift_allocError();
      *v107 = 1;
      swift_willThrow();

      sub_10008875C(v150, &unk_1002739E0, &qword_1001F3498);
      (*(v155 + 8))(v95, v97);
    }

    else
    {
      v103 = v157;
      v144 = v90;
      v143 = v89;
      (*(v86 + 8))(v87, v88);
      v132[0] = v79;
      v154 = v85;
      if (v148)
      {
        v104 = v139;
        sub_1000F4968(v103, v139, type metadata accessor for ReadingHistoryModel);
        v105 = 0;
        v106 = v136;
      }

      else
      {
        v105 = 1;
        v106 = v136;
        v104 = v139;
      }

      v108 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
      (*(*(v108 - 8) + 56))(v104, v105, 2, v108);
      v109 = *(*(v80 + 4) + 16);

      v110 = v149;
      sub_1001C6688();

      v111 = v138;
      v112 = v156;
      v113 = v158;
      sub_1001C5D38();
      v114 = v132[0];
      sub_1000F4968(v111, v132[0], type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v111, &unk_1002739E0, &qword_1001F3498);
      sub_1000B385C(v114, v106);
      sub_1000F4D64(v104, v106 + *(v110 + 48));
      sub_100163DC0(v106, 0x636E79735F71, 0xE600000000000000);
      v115 = v137;
      v133(v137, v113, v112);
      v116 = v135;
      swift_beginAccess();
      v117 = v115;
      (*(v155 + 24))(&v80[v116], v115, v112);
      sub_1001C5D18();
      swift_endAccess();
      v118 = *(v80 + 5);
      v119 = *(v118 + 16);
      v120 = swift_allocObject();
      v120[2] = sub_1000F51A8;
      v120[3] = v80;
      v120[4] = v118;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_1000F51E4;
      *(v121 + 24) = v120;
      aBlock[4] = sub_1000B3DA0;
      aBlock[5] = v121;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000906F4;
      aBlock[3] = &unk_1002475A8;
      v122 = _Block_copy(aBlock);
      swift_retain_n();

      dispatch_sync(v119, v122);
      _Block_release(v122);
      LOBYTE(v119) = swift_isEscapingClosureAtFileLocation();

      if (v119)
      {
        __break(1u);
      }

      else
      {
        v123 = v156;
        v124 = *(v155 + 8);
        v124(v117, v156);
        v125 = *(v80 + 11);
        v133(v117, &v80[v135], v123);
        v126 = swift_allocObject();
        v127 = v152;
        v128 = v153;
        v126[2] = v80;
        v126[3] = v127;
        v129 = v151;
        v126[4] = v128;
        v126[5] = v129;
        v130 = *(v125 + 16);

        v131 = v129;
        sub_100160A38(v117, sub_1000F4DD4, v126);

        sub_1000887D0(v143, v144);

        v124(v117, v123);
        sub_10008875C(v139, &unk_10026FC40, &qword_1001F0E90);
        sub_10008875C(v136, &unk_10026F420, &unk_1001F0E50);
        sub_10008875C(v150, &unk_1002739E0, &qword_1001F3498);
        v124(v158, v123);
      }
    }
  }

  else
  {
    sub_1000F4968(v38, v30, type metadata accessor for ReadingHistoryModel);

    v54 = sub_1001C5128();
    v55 = sub_1001C65B8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v25;
      v57 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      aBlock[0] = v158;
      *v57 = 67109634;
      *(v57 + 4) = v148 & 1;
      *(v57 + 8) = 2080;
      LODWORD(v157) = v55;
      v58 = ReadingHistoryModel.description.getter();
      v154 = v37;
      v60 = v59;
      sub_1000F4A38(v30, type metadata accessor for ReadingHistoryModel);
      v61 = sub_1001874E8(v58, v60, aBlock);

      *(v57 + 10) = v61;
      *(v57 + 18) = 2080;
      v62 = *(*(v5 + 4) + 16);

      sub_1001C6688();

      sub_1000F4968(v56, v35, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v56, &unk_10026F420, &unk_1001F0E50);
      v63 = ReadingHistoryModel.description.getter();
      v65 = v64;
      sub_1000F4A38(v35, type metadata accessor for ReadingHistoryModel);
      v66 = sub_1001874E8(v63, v65, aBlock);

      *(v57 + 20) = v66;
      _os_log_impl(&_mh_execute_header, v54, v157, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v57, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v67 = sub_1000F4A38(v30, type metadata accessor for ReadingHistoryModel);
    }

    (v152)(v67);
    sub_100084528(&qword_100270AA0, &qword_1001F34E0);
    sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0);
    swift_allocError();
    *v102 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000F0A94(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v18 = a5;
  v10 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  v14 = *(*(a1 + 32) + 16);

  sub_1001C6688();

  LODWORD(v10) = v13[*(v10 + 44)];
  sub_10008875C(v13, &unk_10026F420, &unk_1001F0E50);
  v15 = a3 & 1;
  if (v10 == 1)
  {
    sub_1000EF6C4(a2, v15, a4, v18);
    if (v5)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000F0BFC(a2, v15, a4, v18);
    return 0;
  }
}

uint64_t sub_1000F0BFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v4 + *(*v4 + 200);
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "CRDTModelFileSyncManager q_enqueuePendingSync", v15, 2u);
  }

  sub_1000F4968(a1, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingHistoryModel);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  sub_1000F4BE8(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReadingHistoryModel);
  *(v17 + v16 + v11) = a2 & 1;
  v18 = v17 + ((v16 + v11) & 0xFFFFFFFFFFFFFFF8);
  *(v18 + 8) = v25;
  *(v18 + 16) = a4;
  swift_beginAccess();
  v19 = *(v5 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 72) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1000ADC10(0, v19[2] + 1, 1, v19);
    *(v5 + 72) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1000ADC10((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v22 + 1;
  v23 = &v19[2 * v22];
  v23[4] = sub_1000F4DE0;
  v23[5] = v17;
  *(v5 + 72) = v19;
  return swift_endAccess();
}

void sub_1000F0E74(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v9 = a1 + *(*a1 + 200);
  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "CRDTModelFileSyncManager q_enqueuePendingSync -- about to run", v12, 2u);
  }

  sub_1000EF6C4(a2, a3 & 1, a4, a5);
}

uint64_t sub_1000F0F98()
{
  v22 = sub_1001C5688();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001C5648();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v0 + 72);
  *(v0 + 72) = &_swiftEmptyArrayStorage;
  v20 = v9;
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v0 + 48);
    v12 = (v20 + 32);
    v13 = (v1 + 8);
    v14 = (v5 + 8);
    do
    {
      v15 = swift_allocObject();
      v16 = *v12++;
      *(v15 + 16) = v16;

      sub_1001C5638();
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1000F4A98;
      *(v17 + 24) = v15;
      aBlock[4] = sub_1000B2E48;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_1002472B0;
      v18 = _Block_copy(aBlock);

      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v18);

      (*v13)(v4, v22);
      (*v14)(v8, v21);

      --v10;
    }

    while (v10);
  }
}

void sub_1000F1254(char a1)
{
  v2 = v1;
  [*(v1 + qword_100273F48) setEnableCloudSync:a1 & 1];
  v4 = *(v1 + qword_100273F50);
  v5 = [v4 privateCloudDatabaseController];
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  v8 = os_log_type_enabled(v6, v7);
  if (a1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: enabled sync to CK", v9, 2u);
    }

    v10 = *(v2 + qword_100273F38);
    type metadata accessor for ReadingHistoryModel(0);
    sub_100084528(&qword_10026F330, qword_1001F0760);
    v11 = sub_1001C6078();
    v13 = v12;
    sub_1001C61E8();
    v14 = sub_1001C6088();
    v16 = v15;

    sub_10014074C(15, v14, v16, v11, v13);

    v17 = sub_1001C5FE8();

    [v5 addObserver:v10 recordType:v17];

    v18 = [v4 transactionManager];
    v19 = sub_1001C6078();
    v21 = v20;
    sub_1001C61E8();
    v22 = sub_1001C6088();
    v24 = v23;

    sub_10014074C(15, v22, v24, v19, v21);

    v25 = sub_1001C5FE8();

    [v18 signalSyncToCKTransactionForEntityName:v25 syncManager:v10];
  }

  else
  {
    if (v8)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: disabled sync to CK", v26, 2u);
    }

    v27 = *(v2 + qword_100273F38);
    type metadata accessor for ReadingHistoryModel(0);
    sub_100084528(&qword_10026F330, qword_1001F0760);
    v28 = sub_1001C6078();
    v30 = v29;
    sub_1001C61E8();
    v31 = sub_1001C6088();
    v33 = v32;

    sub_10014074C(15, v31, v33, v28, v30);

    v25 = sub_1001C5FE8();

    [v5 removeObserver:v27 recordType:v25];
  }
}

uint64_t sub_1000F1628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F164C()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1000E2AA0(v3, v0 + v2, v5);
}

uint64_t sub_1000F16E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F172C()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000E42D0(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_1000F17CC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100088714(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F181C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = sub_1001C6668();
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C6638();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_1001C5688();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *(a2 + 32) = 0;
  v11 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v19[0] = "ncTransport.access";
  v19[1] = v11;
  sub_1001C5678();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(a2 + 40) = sub_1001C66A8();
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  sub_1001C5138();
  *(a2 + 16) = v21;
  *(a2 + 24) = &off_100245698;
  *(a2 + 56) = 0x403E000000000000;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000CF3B4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100247300;
  v14 = _Block_copy(aBlock);

  v15 = sub_1001C5FE8();
  v16 = [v13 initWithNotifyBlock:v14 blockDescription:v15];

  _Block_release(v14);

  [v16 setCoalescingDelay:60.0];
  v17 = *(a2 + 32);
  *(a2 + 32) = v16;

  return a2;
}

NSObject *sub_1000F1C1C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v122 = a5;
  v123 = a2;
  v120 = a4;
  v121 = a1;
  v124 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = &v103 - v11;
  v110 = sub_1001C4CA8();
  v109 = *(v110 - 8);
  v12 = *(v109 + 64);
  v13 = __chkstk_darwin(v110);
  v106 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = &v103 - v15;
  v16 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v105 = &v103 - v18;
  v19 = sub_1001C6638();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v21 = sub_1001C5688();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v116 = sub_1001C6668();
  v23 = *(v116 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v116);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR___BDSReadingHistoryService_historyDefaults;
  v119 = OBJC_IVAR___BDSReadingHistoryService_historyDefaults;
  *&v6[v27] = [objc_opt_self() standardUserDefaults];
  v6[OBJC_IVAR___BDSReadingHistoryService_isModelReady] = 0;
  v118 = OBJC_IVAR___BDSReadingHistoryService_accessQueue;
  v112 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v113 = ".CRDTModelSyncManager.model";
  v114 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v28 = *(v23 + 104);
  v115 = v23 + 104;
  v117 = v28;
  v28(v26);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v111 = sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *&v6[v118] = sub_1001C66A8();
  v29 = OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue;
  v117(v26, v114, v116);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001C68C8();
  *&v6[v29] = sub_1001C66A8();
  *&v6[OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave] = 0;
  v30 = OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSaveAccessLock;
  sub_100084528(&qword_100270A70, &unk_1001F06A0);
  v31 = swift_allocObject();
  *&v6[v30] = v31;
  *&v6[OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager] = 0;
  v33 = v120;
  v32 = v121;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_lifetimeTransaction] = v120;
  v34 = v123;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_viewStateChangeHandler] = v122;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_goalsService] = v32;
  v35 = OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager] = v34;
  *(v31 + 16) = 0;
  v36 = v124;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] = v124;
  v37 = v36[8];
  v38 = sub_100084528(&qword_100270A78, &qword_1001F34B8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v41 = v34;
  swift_unknownObjectRetain_n();
  v42 = v41;
  v43 = v32;

  v44 = v33;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController] = sub_1000E8E94(v42, v37);
  v45 = *&v6[v35];
  v46 = *&v43[OBJC_IVAR___BDSReadingGoalsService_goalsController];
  v47 = *&v6[v119];
  v48 = type metadata accessor for ReadingHistoryDataStore(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v51 = swift_allocObject();
  v52 = v45;
  swift_unknownObjectRetain();
  v53 = v52;

  v54 = v47;
  v123 = v53;
  v55 = sub_1000B0C08(v46, v53, v37, 0, 14, v54, v51);
  swift_unknownObjectRelease();

  v56 = &unk_100270000;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyDataStore] = v55;
  v128.receiver = v6;
  v128.super_class = ObjectType;
  v57 = objc_msgSendSuper2(&v128, "init");
  v58 = OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController;
  *(*(&v57->isa + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController) + qword_1002818C8 + 8) = &off_1002708D0;
  swift_unknownObjectWeakAssign();
  v59 = *(&v57->isa + v58);

  sub_1000E9D90();

  dispatch_suspend(*(&v57->isa + OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue));
  v60 = [objc_opt_self() books];
  v61 = [v60 userDefaults];

  v62 = [objc_opt_self() dataHasBeenMovedUserDefaultsKey];
  if (!v62)
  {
    sub_1001C6018();
    v62 = sub_1001C5FE8();
  }

  v63 = [v61 BOOLForKey:v62];

  if (v63 && (v64 = *(&v57->isa + OBJC_IVAR___BDSReadingHistoryService_historyDefaults), v65 = sub_1001C5FE8(), LOBYTE(v64) = [v64 BOOLForKey:v65], v65, (v64 & 1) == 0))
  {
    v85 = sub_1001C6348();
    v86 = v105;
    (*(*(v85 - 8) + 56))(v105, 1, 1, v85);
    v87 = swift_allocObject();
    v87[2] = 0;
    v87[3] = 0;
    v87[4] = v57;
    v88 = v57;
    sub_10016CB40(0, 0, v86, &unk_1001F34C8, v87);
  }

  else
  {
    v66 = v108;
    sub_1000E1104(v108);
    v67 = v109;
    v68 = v110;
    if ((*(v109 + 48))(v66, 1, v110) != 1)
    {
      v72 = v107;
      (*(v67 + 32))(v107, v66, v68);
      v73 = sub_1001C6578();
      if (qword_10026EBE8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    sub_10008875C(v66, &unk_10026FC70, &unk_1001F1430);
    v69 = *(&v57->isa + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
    v70 = sub_1001C5FE8();
    LOBYTE(v69) = [v69 BOOLForKey:v70];

    if (v69)
    {
      v71 = v104;
      sub_1001C4C98();
      (*(v67 + 56))(v71, 0, 1, v68);
      sub_1000E126C(v71);
      sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      sub_1001C5118();
    }
  }

  while (1)
  {
    v90 = [v37 createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryService.loadingModel"];
    v124 = v90;
    sub_1000E13FC();
    v72 = *(&v57->isa + v56[279]);
    v91 = v57;
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = v57;
    *(v92 + 24) = v90;
    v56 = swift_allocObject();
    v56[2] = sub_1000F4AE8;
    v56[3] = v92;
    v67 = *&v72[OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange];
    ObjectType = *(v67 + 16);
    v93 = swift_allocObject();
    v122 = v37;
    v37 = v93;
    v93[2] = v67;
    v93[3] = sub_1000F4AF0;
    v93[4] = v56;
    v93[5] = v91;
    v94 = swift_allocObject();
    v73 = v94;
    *(v94 + 16) = sub_1000B3E58;
    *(v94 + 24) = v37;
    aBlock[4] = sub_1000B3DA0;
    v127 = v94;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_1002473F0;
    v95 = _Block_copy(aBlock);
    v68 = v127;
    v96 = v91;
    swift_retain_n();
    v97 = v96;

    v124 = v124;

    dispatch_sync(ObjectType, v95);
    _Block_release(v95);
    LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

    if ((v95 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v74 = qword_1002711E8;
    v75 = v106;
    (*(v67 + 16))(v106, v72, v68);
    if (os_log_type_enabled(v74, v73))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      ObjectType = v57;
      aBlock[0] = v77;
      v78 = v77;
      *v76 = 136315138;
      sub_1000F2C74(&qword_100270A80, &type metadata accessor for Date);
      v79 = sub_1001C6CC8();
      v80 = v75;
      v82 = v81;
      v83 = *(v67 + 8);
      v83(v80, v68);
      v84 = sub_1001874E8(v79, v82, aBlock);

      *(v76 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v74, v73, "Migration: skipping reading history migration in daemon. last migrated:%s", v76, 0xCu);
      sub_10008E7BC(v78);
      v57 = ObjectType;

      v83(v107, v68);
      v56 = &unk_100270000;
    }

    else
    {
      v89 = *(v67 + 8);
      v89(v75, v68);
      v89(v72, v68);
    }
  }

  v98 = objc_opt_self();
  v99 = [v98 defaultCenter];
  sub_1000B39A0();
  v100 = sub_1001C4E28();
  [v99 addObserver:v97 selector:"handlePlaceholderStreakDayGoalNeedsUpdate:" name:v100 object:0];

  v101 = [v98 defaultCenter];
  [v101 addObserver:v97 selector:"handleSignificantDateChange:" name:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:0];
  swift_unknownObjectRelease();

  return v97;
}

uint64_t sub_1000F2B50()
{
  v1 = *(sub_100084528(&unk_10026F350, &qword_1001F31E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000E3734(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_1000F2BF0()
{
  v1 = *(type metadata accessor for CRDTModelSyncVersion() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));
  v3 = *(v0 + 48);
  return sub_1000EC728(v2, *(v2 + *(v1 + 64)));
}

uint64_t sub_1000F2C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F2CBC(void (*a1)(uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1000E9BE4(a1);
}

void sub_1000F2CF0()
{
  sub_1000F2DCC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1000F2DCC()
{
  if (!qword_1002709F8)
  {
    type metadata accessor for CRDTModelSyncVersion();
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002709F8);
    }
  }
}

uint64_t sub_1000F2E24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000EDCD0(v2, v3, v4);
}

uint64_t sub_1000F2ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000ED79C(v2, v3);
}

uint64_t sub_1000F2F84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000ED2B4(v2, v3, v4);
}

uint64_t sub_1000F3038()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000E657C(v2, v3);
}

uint64_t sub_1000F30E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009AAEC;

  return sub_1000E5C74(v2, v3);
}

id sub_1000F3190()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  ReadingHistoryDataStore.handleSignificantDateChange()();
  sub_1000E13FC();

  return [v1 endTransaction];
}

id sub_1000F31EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1000E13FC();

  return [v1 endTransaction];
}

uint64_t sub_1000F3288(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a1;
  v29 = a2;
  v30 = sub_1001C4B28();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1001C69C8(20);

  v33 = 0xD000000000000012;
  v34 = 0x80000001001FE0E0;
  v35._countAndFlagsBits = 0xD00000000000001CLL;
  v35._object = 0x8000000100200DC0;
  sub_1001C6138(v35);
  sub_1001C5138();
  v14 = v29;
  (*(v10 + 16))(v13, v29, v9);
  v16 = v30;
  v15 = v31;
  (*(v5 + 16))(v8, v31, v30);
  v17 = sub_100084528(&unk_100270A60, &qword_1001F34B0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_1000DFBFC(v32, v13, v8);
  v20 = type metadata accessor for _TransportConnectionManager();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();

  v25 = sub_1000F181C(v24, v23);
  (*(v5 + 8))(v15, v16);
  (*(v10 + 8))(v14, v28);
  *(v4 + 24) = v25;
  *(*(v4 + 16) + 24) = &off_1002456C8;
  swift_unknownObjectWeakAssign();
  return v4;
}

void *sub_1000F3554(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v155 = a4;
  v165 = a3;
  v156 = a2;
  v151 = a1;
  v160 = sub_1001C5148();
  v158 = *(v160 - 8);
  v6 = *(v158 + 64);
  __chkstk_darwin(v160);
  v159 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1001C4B28();
  v166 = *(v157 - 8);
  v8 = *(v166 + 64);
  v9 = __chkstk_darwin(v157);
  v147 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v164 = &v141 - v12;
  v13 = __chkstk_darwin(v11);
  v163 = &v141 - v14;
  __chkstk_darwin(v13);
  v167 = &v141 - v15;
  v16 = type metadata accessor for CRDTModelSyncVersion();
  v17 = *(v16 - 8);
  v153 = v16 - 8;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16 - 8);
  v154 = (&v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v152 = &v141 - v21;
  v161 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v148 = *(v161 - 8);
  v22 = v148[8];
  __chkstk_darwin(v161);
  v162 = &v141 - v23;
  v24 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v145 = &v141 - v26;
  v27 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v28 = *(v27 - 8);
  v143 = v27 - 8;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27 - 8);
  v150 = (&v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __chkstk_darwin(v30);
  v144 = &v141 - v33;
  __chkstk_darwin(v32);
  v35 = &v141 - v34;
  v141 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v36 = *(*(v141 - 8) + 64);
  v37 = __chkstk_darwin(v141);
  v149 = (&v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = &v141 - v39;
  v41 = sub_1001C6668();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1001C6638();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v48 = sub_1001C5688();
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v42 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v41);
  a5[6] = sub_1001C66A8();
  *(a5 + 80) = 0;
  v146 = *(*a5 + 200);
  sub_1001C5138();
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
  sub_1001C5B58();
  v50 = type metadata accessor for ReadingHistoryModel(0);
  v51 = *(v50 + 20);
  sub_1001C4CA8();
  sub_1000F2C74(&unk_10026F440, &type metadata accessor for Date);
  sub_1001C5B58();
  *&v40[*(v50 + 24)] = &_swiftEmptyDictionarySingleton;
  *&v40[*(v141 + 52)] = &_swiftEmptyDictionarySingleton;
  v52 = v151;
  a5[12] = v151;
  swift_beginAccess();
  a5[3] = v155;
  swift_unknownObjectWeakAssign();
  v53 = v156;
  a5[8] = v156;
  v54 = type metadata accessor for ObservableTransaction();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v142 = v52;
  a5[7] = sub_10015C33C(0xD000000000000034, 0x8000000100200D60, v53, v57);
  sub_1000F4968(v40, v35, type metadata accessor for ReadingHistoryModel);
  v58 = v143;
  v59 = *(v143 + 56);
  v60 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v60 - 8) + 56))(&v35[v59], 1, 2, v60);
  v61 = type metadata accessor for CRDTModelRevisionInfo();
  v62 = *(*(v61 - 8) + 56);
  v63 = v145;
  v62(v145, 1, 1, v61);
  v64 = *(v58 + 60);
  v62(&v35[v64], 1, 1, v61);
  v35[*(v58 + 52)] = 0;
  sub_1000B36A8(v63, &v35[v64], &unk_10026F410, &unk_1001F0E40);
  v156 = v35;
  v65 = v35;
  v66 = v147;
  v67 = v144;
  sub_10009ADF0(v65, v144, &unk_10026F420, &unk_1001F0E50);
  v68 = sub_100084528(&unk_10026F450, &qword_1001F76A0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = v150;
  sub_10009ADF0(v67, v150, &unk_10026F420, &unk_1001F0E50);
  v72 = sub_100098354(v71);
  sub_10008875C(v67, &unk_10026F420, &unk_1001F0E50);
  a5[4] = v72;
  v155 = v40;
  sub_10009ADF0(v40, v149, &unk_1002739E0, &qword_1001F3498);
  sub_1000885F4(&qword_100270A48, &unk_1002739E0, &qword_1001F3498);
  v73 = v162;
  sub_1001C5D78();
  v74 = *(*a5 + 192);
  v75 = v148;
  v76 = v161;
  (v148[4])(&v74[a5], v73, v161);
  v77 = a5[12];
  swift_beginAccess();
  v78 = v77;
  sub_1001C5D18();
  swift_endAccess();

  v79 = a5[12];
  v80 = v75[2];
  v151 = v74;
  v150 = v75 + 2;
  v149 = v80;
  (v80)(v73, &v74[a5], v76);
  v81 = *(v153 + 28);
  v82 = v79;
  v83 = v152;
  sub_1001C5D58();
  (v75[1])(v73, v76);
  *v83 = v82;
  v84 = sub_100084528(&unk_100270A20, &unk_1001F3480);
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  v87 = v154;
  sub_1000F4968(v83, v154, type metadata accessor for CRDTModelSyncVersion);
  v88 = sub_1000986B8(v87);
  sub_1000F4A38(v83, type metadata accessor for CRDTModelSyncVersion);
  a5[5] = v88;
  v89 = [objc_opt_self() books];
  v90 = [v89 containerURL];

  v91 = v163;
  sub_1001C4AD8();

  sub_1001C4AA8();
  v92 = v166;
  v94 = v166 + 8;
  v93 = *(v166 + 8);
  v95 = v157;
  v93(v91, v157);
  v96 = v164;
  sub_1001C4AA8();
  (*(v158 + 16))(v159, a5 + v146, v160);
  v97 = *(v92 + 16);
  v166 = v92 + 16;
  v152 = v97;
  (v97)(v66, v96, v95);
  v98 = sub_1001C5128();
  v99 = sub_1001C6588();
  v100 = os_log_type_enabled(v98, v99);
  v154 = v93;
  v153 = v94;
  if (v100)
  {
    v101 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v168 = v148;
    *v101 = 136315138;
    sub_1000F2C74(qword_100272010, &type metadata accessor for URL);
    v102 = v66;
    v103 = v95;
    v104 = sub_1001C6CC8();
    v106 = v105;
    v93(v102, v103);
    v107 = sub_1001874E8(v104, v106, &v168);

    *(v101 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v98, v99, "CRDTModelFileSyncManager Init: modelFileURL: %s", v101, 0xCu);
    sub_10008E7BC(v148);
  }

  else
  {

    v108 = v66;
    v103 = v95;
    v93(v108, v95);
  }

  (*(v158 + 8))(v159, v160);
  v109 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v110);
  v112 = v111;
  v168 = 0;
  v113 = [v109 createDirectoryAtURL:v111 withIntermediateDirectories:1 attributes:0 error:&v168];

  if (v113)
  {
    v114 = v168;
  }

  else
  {
    v115 = v168;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1001F0660;
    v117 = sub_1001C4A58();
    v119 = v118;
    *(v116 + 56) = &type metadata for String;
    v120 = sub_100084570();
    *(v116 + 64) = v120;
    *(v116 + 32) = v117;
    *(v116 + 40) = v119;
    swift_getErrorValue();
    v121 = sub_1001C6D98();
    *(v116 + 96) = &type metadata for String;
    *(v116 + 104) = v120;
    *(v116 + 72) = v121;
    *(v116 + 80) = v122;
    sub_1001C5118();

    v103 = v157;
  }

  v123 = a5[12];
  v124 = v162;
  (v149)(v162, &v151[a5], v161);
  v126 = v163;
  v125 = v164;
  (v152)(v163, v164, v103);
  v127 = sub_100084528(&qword_100270A50, &unk_1001F34A0);
  v128 = *(v127 + 48);
  v129 = *(v127 + 52);
  swift_allocObject();
  v130 = v123;
  v131 = sub_1000F3288(v130, v124, v126);

  a5[11] = v131;
  v132 = a5[7];
  v133 = a5[4] + *(*a5[4] + 128);
  swift_beginAccess();
  *(v133 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  a5[9] = &_swiftEmptyArrayStorage;
  v134 = a5[11];
  v135 = swift_allocObject();
  swift_weakInit();
  v136 = (*(v134 + 16) + *(**(v134 + 16) + 144));
  v137 = *v136;
  v138 = v136[1];
  *v136 = sub_1000F49D0;
  v136[1] = v135;
  sub_1000044D8(v137);

  sub_10015F710();

  swift_unknownObjectRelease();

  v139 = v154;
  v154(v125, v103);
  v139(v167, v103);
  sub_10008875C(v155, &unk_1002739E0, &qword_1001F3498);
  sub_10008875C(v156, &unk_10026F420, &unk_1001F0E50);
  return a5;
}

void sub_1000F47FC()
{
  v1 = *(type metadata accessor for CRDTModelSyncVersion() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_1000EC1F8(v2, *(v2 + *(v1 + 64)));
}

void *sub_1000F4880@<X0>(void *a1@<X8>)
{
  result = sub_1000E8534(v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F4968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F49D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1000EE300(v1);
}

uint64_t sub_1000F4A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F4AA0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1000F4AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009B25C;

  return sub_1000E05C0(a1);
}

uint64_t sub_1000F4BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000F4C50()
{
  v1 = *(sub_100084528(&unk_10026F420, &unk_1001F0E50) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000EBE20(v3, v4, v0 + v2);
}

uint64_t sub_1000F4D20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000F4D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1000F4DE0()
{
  v1 = *(type metadata accessor for ReadingHistoryModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  sub_1000F0E74(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_1000F4EB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = sub_1000E683C();
  *v1 = result & 1;
  *v2 = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000F4EF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1000F4F38()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_1000F4F74()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000E4648(v0 + v2, v4, v6);
}

uint64_t sub_1000F5010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F0A94(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_1000F51FC(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_1001C6B08();

    if (v7)
    {
      sub_100088714(0, a3, a4);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = sub_100187BB4(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

uint64_t sub_1000F52CC(Swift::UInt a1, Swift::UInt a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1001C6DF8();
  sub_1001C6E08(a1);
  sub_1001C6E08(a2);
  v7 = sub_1001C6E28();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  do
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v13 == a1 && v12 == a2;
    result = v14;
    if (v14)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
  }

  while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  return result;
}

uint64_t sub_1000F53B0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1001C6938();
  }

  else if (*(a2 + 16) && (sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr), v5 = sub_1001C6798(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1001C67A8();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000F54C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  v7 = sub_1001C6E28();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1001C6D08() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1000F55C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_1001C6208();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000ADE44(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1000ADE44((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1001C61E8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1001C6108();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1001C6108();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1001C6208();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1000ADE44(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1001C6208();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000ADE44(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000ADE44((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1001C6108();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000F5980@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = _swiftEmptyArrayStorage;
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_1001C6838();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_1001C6808() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_1001C6808();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_1001C6848();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1000ADE44(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1000ADE44((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_1001C6808();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_1001C6848();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_1000ADE44((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_1000ADE44(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_1001C6848();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_1000ADE44(0, 1, 1, _swiftEmptyArrayStorage);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return _swiftEmptyArrayStorage;
}

Swift::String __swiftcall CKRecordID.bds_recordType()()
{
  v1 = [v0 recordName];
  v2 = sub_1001C6018();
  v4 = v3;

  v16[0] = 46;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  v5 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001001B8, v15, v2, v4, v16);
  if (v5[2])
  {
    v7 = v5[4];
    v8 = v5[5];
    v9 = v5[6];
    v10 = v5[7];

    v11 = sub_1001C60B8();
    v13 = v12;

    v5 = v11;
    v6 = v13;
  }

  else
  {
    __break(1u);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

char *sub_1000F5F04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v158 = a5;
  v159 = a6;
  v157 = a4;
  v156 = a3;
  v161 = a1;
  v162 = a2;
  v152 = sub_100084528(&qword_100270F28, &qword_1001F3640);
  v151 = *(v152 - 8);
  v7 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = &v128 - v8;
  v149 = sub_100084528(&qword_100270F30, &qword_1001F3648);
  v148 = *(v149 - 8);
  v9 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v128 - v10;
  v143 = sub_100084528(&qword_100270F38, &qword_1001F3650);
  v142 = *(v143 - 8);
  v11 = *(v142 + 64);
  __chkstk_darwin(v143);
  v141 = &v128 - v12;
  v146 = sub_100084528(&qword_100270F40, &qword_1001F3658);
  v145 = *(v146 - 8);
  v13 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = &v128 - v14;
  v137 = sub_100084528(&qword_100270F48, &qword_1001F3660);
  v136 = *(v137 - 8);
  v15 = *(v136 + 64);
  __chkstk_darwin(v137);
  v135 = &v128 - v16;
  v140 = sub_100084528(&qword_100270F50, &qword_1001F3668);
  v139 = *(v140 - 8);
  v17 = *(v139 + 64);
  __chkstk_darwin(v140);
  v138 = &v128 - v18;
  v19 = sub_100084528(&qword_100270F58, &qword_1001F3670);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v134 = &v128 - v21;
  v130 = sub_100084528(&qword_100270F60, &qword_1001F3678);
  v129 = *(v130 - 8);
  v22 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = &v128 - v23;
  v133 = sub_100084528(&unk_100270F68, &unk_1001F3680);
  v132 = *(v133 - 8);
  v24 = *(v132 + 64);
  __chkstk_darwin(v133);
  v131 = &v128 - v25;
  v167 = sub_1001C6668();
  v165 = *(v167 - 1);
  v26 = *(v165 + 64);
  __chkstk_darwin(v167);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001C6638();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v31 = sub_1001C5688();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  *&v6[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_kChangedRecordsBatchSize] = 32;
  *&v6[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_subscribers] = &_swiftEmptyArrayStorage;
  v166 = v6;
  sub_1001C5138();
  v164 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue;
  v169 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v163 = "SyncVersionTransaction";
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v168 = static BDSSyncEngine.shared;
  v33 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100100BD4(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v34 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v35 = *(v165 + 104);
  v36 = v167;
  v35(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v167);
  v37 = sub_1001C66A8();
  v38 = v166;
  *&v166[v164] = v37;
  v165 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue;
  sub_1001C6628();
  sub_1001C5668();
  v35(v28, v34, v36);
  *&v38[v165] = sub_1001C66A8();
  v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline__hasPendingModifications] = 0;
  v39 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse;
  type metadata accessor for _BDSSyncEngineModifyBatchResponse();
  v40 = swift_allocObject();
  v40[2] = &_swiftEmptyArrayStorage;
  v40[3] = &_swiftEmptyArrayStorage;
  v40[4] = &_swiftEmptyArrayStorage;
  v40[5] = &_swiftEmptyArrayStorage;
  *&v38[v39] = v40;
  *&v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock] = 0;
  v40[6] = &_swiftEmptyDictionarySingleton;
  v41 = &v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
  v42 = v161;
  v43 = v162;
  *v41 = v161;
  v41[1] = v43;
  v44 = v42;
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v45 = sub_1001C6018();
  v47 = v46;

  v48 = v157;

  v173._countAndFlagsBits = v156;
  v173._object = v48;
  v174._countAndFlagsBits = v45;
  v174._object = v47;
  *&v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID] = sub_1001C65C8(v173, v174);
  v49 = v158;
  *&v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_dataMapper] = v159;
  *&v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate] = v49;
  *&v38[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_observer] = v49;
  v50 = type metadata accessor for BDSSyncEnginePipeline();
  v172.receiver = v38;
  v172.super_class = v50;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v51 = objc_msgSendSuper2(&v172, "init");
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_100100C1C;
  *(v53 + 24) = v52;
  v54 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_100100C24;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100247B58;
  v55 = _Block_copy(aBlock);
  v56 = v51;
  swift_retain_n();
  v57 = sub_1001C5FE8();
  v58 = [v54 initWithNotifyBlock:v55 blockDescription:v57];

  _Block_release(v55);

  [v58 setCoalescingDelay:5.0];
  [v58 setMaximumDelay:5.0];

  v59 = v168;
  v60 = *&v56[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock];
  *&v56[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock] = v58;

  v61 = swift_allocObject();
  *(v61 + 16) = &_swiftEmptyArrayStorage;
  v62 = v61;
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  *(v64 + 2) = v62;
  *(v64 + 3) = v63;
  v155 = v62;
  *(v64 + 4) = v44;
  *(v64 + 5) = v43;
  v65 = swift_allocObject();
  *(v65 + 16) = &_swiftEmptyArrayStorage;
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = swift_allocObject();
  v67[2] = v65;
  v67[3] = v66;
  v67[4] = v44;
  v67[5] = v43;
  v153 = v67;
  swift_bridgeObjectRetain_n();
  v68 = v56;

  v154 = v65;

  sub_100100204(v68, v44, v43, v59);

  v69 = v68;
  sub_1001003CC(v69, v59);

  aBlock[0] = *&v59[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordChangePublisher];
  v160 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue;
  v170 = *&v69[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v70 = v170;
  v71 = sub_1001C6658();
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v74 = v134;
  v164 = v71;
  v166 = (v72 + 56);
  v167 = v73;
  (v73)(v134, 1, 1);

  v75 = v70;
  sub_100084528(&qword_10026ECF0, &unk_1001F3690);
  sub_1000885F4(&qword_100270F78, &qword_10026ECF0, &unk_1001F3690);
  v76 = sub_100100B90(&qword_100270F80, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v77 = v128;
  v165 = v76;
  sub_1001C51C8();
  v78 = v74;
  sub_10008875C(v74, &qword_100270F58, &qword_1001F3670);

  v79 = swift_allocObject();
  v80 = v162;
  *(v79 + 16) = v161;
  *(v79 + 24) = v80;
  sub_1000885F4(&qword_100270F88, &qword_100270F60, &qword_1001F3678);

  v81 = v131;
  v82 = v130;
  sub_1001C51B8();

  (*(v129 + 8))(v77, v82);
  v83 = swift_allocObject();
  v83[2] = v155;
  v83[3] = 32;
  v83[4] = sub_100100C68;
  v83[5] = v64;
  sub_1000885F4(&unk_100270F90, &unk_100270F68, &unk_1001F3680);

  v163 = v64;

  v84 = v133;
  sub_1001C51A8();

  (*(v132 + 8))(v81, v84);
  v85 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_subscribers;
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v124 = *((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordDeletionPublisher);
  v170 = *&v69[v160];
  v86 = v170;
  (v167)(v78, 1, 1, v164);

  v87 = v86;
  sub_100084528(&qword_10026ECF8, &unk_1001F06C0);
  sub_1000885F4(&qword_100270FA0, &qword_10026ECF8, &unk_1001F06C0);
  v88 = v135;
  sub_1001C51C8();
  sub_10008875C(v78, &qword_100270F58, &qword_1001F3670);

  v89 = swift_allocObject();
  v90 = v162;
  *(v89 + 16) = v161;
  *(v89 + 24) = v90;
  sub_1000885F4(&qword_100270FA8, &qword_100270F48, &qword_1001F3660);
  v91 = v138;
  v92 = v137;
  sub_1001C51B8();

  (*(v136 + 8))(v88, v92);
  v93 = swift_allocObject();
  v93[2] = v154;
  v93[3] = 32;
  v94 = v153;
  v93[4] = sub_100100CBC;
  v93[5] = v94;
  sub_1000885F4(&unk_100270FB0, &qword_100270F50, &qword_1001F3668);

  v95 = v140;
  sub_1001C51A8();

  (*(v139 + 8))(v91, v95);
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v125 = *((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_endFetchingChangesPublisher);
  v170 = *&v69[v160];
  v96 = v170;
  (v167)(v78, 1, 1, v164);

  v97 = v96;
  sub_100084528(&qword_10026ED08, &qword_1001F06D0);
  sub_1000885F4(&qword_100270FC0, &qword_10026ED08, &qword_1001F06D0);
  v98 = v141;
  sub_1001C51C8();
  sub_10008875C(v78, &qword_100270F58, &qword_1001F3670);

  v99 = swift_allocObject();
  v100 = v157;
  *(v99 + 16) = v156;
  *(v99 + 24) = v100;
  sub_1000885F4(&qword_100270FC8, &qword_100270F38, &qword_1001F3650);
  v101 = v144;
  v102 = v143;
  sub_1001C51B8();

  (*(v142 + 8))(v98, v102);
  v103 = swift_allocObject();
  v103[2] = sub_100100CBC;
  v103[3] = v94;
  v104 = v163;
  v103[4] = sub_100100C68;
  v103[5] = v104;
  sub_1000885F4(&unk_100270FD0, &qword_100270F40, &qword_1001F3658);

  v105 = v146;
  sub_1001C51A8();

  (*(v145 + 8))(v101, v105);
  swift_beginAccess();
  sub_1001C6278();
  v106 = v85;
  v107 = *((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v108 = *((*&v69[v85] & 0xFFFFFFFFFFFFFF8) + 0x18);
  v109 = v160;
  v110 = v94;
  v111 = v164;
  if (v107 >= v108 >> 1)
  {
    sub_1001C62B8();
  }

  v133 = v106;
  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_updateMetadataPublisher);
  v170 = *&v69[v109];
  v112 = v170;
  (v167)(v78, 1, 1, v111);

  v113 = v112;
  sub_100084528(&qword_10026ED10, &qword_1001F06D8);
  sub_1000885F4(&qword_100270FE0, &qword_10026ED10, &qword_1001F06D8);
  v114 = v147;
  sub_1001C51C8();
  sub_10008875C(v78, &qword_100270F58, &qword_1001F3670);

  v115 = swift_allocObject();
  v115[2] = sub_100100CBC;
  v115[3] = v110;
  v116 = v163;
  v115[4] = sub_100100C68;
  v115[5] = v116;
  sub_1000885F4(&unk_100270FE8, &qword_100270F30, &qword_1001F3648);

  v117 = v133;

  v118 = v149;
  sub_1001C51A8();

  (*(v148 + 8))(v114, v118);
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v69[v117] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v117] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v126 = *((*&v69[v117] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v168 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_accountChangedPublisher);
  v170 = *&v69[v109];
  v119 = v170;
  (v167)(v78, 1, 1, v164);

  v120 = v119;
  sub_100084528(&qword_10026ED00, qword_1001F36A0);
  sub_1000885F4(&qword_100270FF8, &qword_10026ED00, qword_1001F36A0);
  v121 = v150;
  sub_1001C51C8();
  sub_10008875C(v78, &qword_100270F58, &qword_1001F3670);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000885F4(&unk_100271000, &qword_100270F28, &qword_1001F3640);
  v122 = v152;
  sub_1001C51A8();

  (*(v151 + 8))(v121, v122);
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v69[v117] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v117] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v127 = *((*&v69[v117] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v69;
}

void sub_1000F7A28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_10026EC78 != -1)
    {
      swift_once();
    }

    BDSSyncEngine.scheduleSync()();
  }
}

uint64_t sub_1000F7AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1001C5148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v12 = &isa - v11;
  swift_beginAccess();
  v13 = *(a1 + 16);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v13 < 0)
  {
    v44 = *(a1 + 16);
  }

  result = sub_1001C6B38();
  if (result)
  {
LABEL_3:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v49 = &isa - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = a3;
      v17 = *(Strong + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_observer);
      swift_beginAccess();
      v18 = *(a1 + 16);
      v19 = qword_10026EC78;
      v50 = v17;
      swift_unknownObjectRetain();

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup);
      v53 = v8;
      v21 = *(v8 + 16);
      v51 = v16;
      v47 = v21;
      v21(v12, &v16[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger], v7);
      v48 = v20;
      dispatch_group_enter(v48);

      v22 = v12;
      v23 = sub_1001C5128();
      v24 = sub_1001C6588();

      v25 = os_log_type_enabled(v23, v24);
      v52 = a4;
      if (v25)
      {
        isa = v7;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_1001874E8(v54, a4, aBlock);
        *(v26 + 12) = 2048;
        if (v18 >> 62)
        {
          v28 = sub_1001C6B38();
        }

        else
        {
          v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v26 + 14) = v28;

        _os_log_impl(&_mh_execute_header, v23, v24, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Begin processing %ld updates", v26, 0x16u);
        sub_10008E7BC(v27);

        v7 = isa;
      }

      else
      {
      }

      sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
      isa = sub_1001C6288().super.isa;
      v29 = v49;
      v46 = v22;
      v47(v49, v22, v7);
      v30 = v53;
      v31 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v32 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = v7;
      v34 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      (*(v30 + 32))(v36 + v31, v29, v33);
      v37 = (v36 + v32);
      v38 = v52;
      *v37 = v54;
      v37[1] = v38;
      *(v36 + v34) = v18;
      v39 = v48;
      *(v36 + v35) = v48;
      aBlock[4] = sub_100100EB0;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100247EA0;
      v40 = _Block_copy(aBlock);
      v41 = v39;

      v42 = isa;
      [v50 updatedCloudRecords:isa completion:v40];
      _Block_release(v40);

      swift_unknownObjectRelease();
      (*(v30 + 8))(v46, v33);
    }

    swift_beginAccess();
    v43 = *(a1 + 16);
    *(a1 + 16) = &_swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000F7FF0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, NSObject *a5)
{

  v9 = sub_1001C5128();
  v10 = sub_1001C6588();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1001874E8(a2, a3, &v14);
    *(v11 + 12) = 2048;
    if (a4 >> 62)
    {
      v13 = sub_1001C6B38();
    }

    else
    {
      v13 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Done processing %ld updates", v11, 0x16u);
    sub_10008E7BC(v12);
  }

  else
  {
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1000F8168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1001C5148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v14 < 0)
  {
    v42 = *(a1 + 16);
  }

  result = sub_1001C6B38();
  if (result)
  {
LABEL_3:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v51 = a3;
      v52 = v7;
      v18 = *(Strong + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_observer);
      swift_beginAccess();
      v19 = *(a1 + 16);
      v20 = qword_10026EC78;
      v48 = v18;
      swift_unknownObjectRetain();
      v46 = v19;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup);
      v22 = *(v8 + 16);
      v49 = v17;
      v45 = v22;
      v22(v13, &v17[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger], v52);
      v47 = v21;
      dispatch_group_enter(v47);

      v23 = a4;
      v24 = sub_1001C5128();
      v25 = sub_1001C6588();
      v50 = v23;

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44 = v8;
        v28 = v27;
        aBlock[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1001874E8(v51, v50, aBlock);
        _os_log_impl(&_mh_execute_header, v24, v25, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Begin processing deletes", v26, 0xCu);
        sub_10008E7BC(v28);
        v8 = v44;
      }

      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      isa = sub_1001C6288().super.isa;

      v30 = v52;
      v45(v11, v13, v52);
      v31 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v32 = v8;
      v33 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      (*(v32 + 32))(v35 + v31, v11, v30);
      v36 = (v35 + v33);
      v37 = v50;
      *v36 = v51;
      v36[1] = v37;
      v38 = v47;
      *(v35 + v34) = v47;
      aBlock[4] = sub_100100E14;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100247E50;
      v39 = _Block_copy(aBlock);
      v40 = v38;

      [v48 removedCloudRecordsWithIDs:isa completion:v39];
      _Block_release(v39);

      swift_unknownObjectRelease();
      (*(v32 + 8))(v13, v30);
    }

    swift_beginAccess();
    v41 = *(a1 + 16);
    *(a1 + 16) = &_swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000F862C(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{

  v7 = sub_1001C5128();
  v8 = sub_1001C6588();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1001874E8(a2, a3, &v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Done processing deletes", v9, 0xCu);
    sub_10008E7BC(v10);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1000F8750(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (sub_1001C6758() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1001C6D08();
  }

  return v7 & 1;
}

void *sub_1000F87C0(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 recordName];
  v6 = sub_1001C6018();
  v8 = v7;

  v20[0] = 46;
  v20[1] = 0xE100000000000000;
  v19[2] = v20;
  result = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001012A4, v19, v6, v8, v20);
  if (result[2])
  {
    v10 = result[4];
    v11 = result[5];
    v12 = result[6];
    v13 = result[7];

    v14 = sub_1001C60B8();
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1001C6D08();
    }

    return (v18 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F88FC(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a1;
  swift_beginAccess();
  v8 = v7;
  sub_1001C6278();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  v9 = *(a2 + 16);
  swift_endAccess();
  if (v9 >> 62)
  {
    result = sub_1001C6B38();
    if (result < a3)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < a3)
    {
      return result;
    }
  }

  return a4();
}

uint64_t sub_1000F8A04(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    v6 = [v3 zoneName];
    v7 = sub_1001C6018();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1001C6D08();
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void sub_1000F8AAC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000FE7CC(v1);
  }
}

Swift::Void __swiftcall BDSSyncEnginePipeline.signalSyncToCK()()
{
  v1 = v0;
  v2 = sub_1001C5648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1001874E8(0xD000000000000010, 0x80000001002016C0, aBlock);
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEnginePipeline - %s", v9, 0xCu);
    sub_10008E7BC(v10);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue);
  v12 = sub_1001C5638();
  __chkstk_darwin(v12);
  *(&v19 - 2) = v1;
  *(&v19 - 8) = 1;
  sub_1001C6678();

  (*(v3 + 8))(v6, v2);
  v13 = os_transaction_create();
  v14 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock);
  if (v14)
  {
    v15 = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    aBlock[4] = MarkedAsFinishedMechanism.rawValue.getter;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_1002478F0;
    v17 = _Block_copy(aBlock);
    v18 = v14;
    swift_unknownObjectRetain();

    [v18 signalWithCompletion:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t BDSSyncEnginePipeline.startSyncToCK()()
{
  v1[2] = v0;
  v2 = sub_1001C5648();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8FFC, 0, 0);
}

uint64_t sub_1000F8FFC()
{
  v15 = v0;
  v1 = v0[2];
  v0[6] = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1001874E8(0x6E79537472617473, 0xEF29284B436F5463, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEnginePipeline - %s", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  v10 = *(v8 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue);
  sub_1001C5638();
  v11 = swift_task_alloc();
  *(v11 + 16) = v8;
  *(v11 + 24) = 1;
  sub_1001C6678();

  (*(v7 + 8))(v6, v9);
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1000F9250;

  return BDSSyncEngine.sendChangesIfReady()();
}

uint64_t sub_1000F9250()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F938C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000F938C()
{
  v16 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];
  swift_errorRetain();
  v4 = sub_1001C5128();
  v5 = sub_1001C6598();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1001874E8(0x6E79537472617473, 0xEF29284B436F5463, &v15);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEnginePipeline - %s error: %@", v8, 0x16u);
    sub_10008875C(v9, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v10);
  }

  else
  {
  }

  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F96D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000F9780;

  return BDSSyncEnginePipeline.startSyncToCK()();
}

uint64_t sub_1000F9780()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t BDSSyncEnginePipeline.fetchRecord(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9958;

  return sub_1001007C0();
}

uint64_t sub_1000F9958(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000F9BDC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000F9CAC;

  return sub_1001007C0();
}

uint64_t sub_1000F9CAC(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

id BDSSyncEnginePipeline.privacyDelegate()()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v1 = static BDSSyncEngine.shared;

  return v1;
}

uint64_t BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_1001C5648();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000F9F94, 0, 0);
}

uint64_t sub_1000F9F94()
{
  v32 = v0;
  v1 = *(v0 + 176);
  *(v0 + 208) = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v31);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1001874E8(*(v5 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType), *(v5 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8), v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEnginePipeline - %s: [%s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (sub_1000F53B0(*(*(v0 + 176) + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID), *(v0 + 160)))
  {
    v7 = *(v0 + 176);
    v8 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue;
    *(v0 + 216) = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue;
    v9 = *(v7 + v8);
    *(swift_task_alloc() + 16) = v7;
    v10 = v9;
    sub_1001C6688();
    *(v0 + 224) = 0;

    v11 = *(v0 + 176);
    if (*(v0 + 288) == 1)
    {
      *(v0 + 232) = os_transaction_create();
      v12 = &v11[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
      v13 = *&v11[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
      *(v0 + 240) = v13;
      v14 = *(v12 + 1);
      *(v0 + 248) = v14;

      v15 = sub_1001C5128();
      v16 = sub_1001C65B8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        *v17 = 136315394;
        *(v17 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v31);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1001874E8(v13, v14, v31);
        _os_log_impl(&_mh_execute_header, v15, v16, "BDSSyncEnginePipeline - %s: [%s] About to fetch dirty changes", v17, 0x16u);
        swift_arrayDestroy();
      }

      v18 = *(v0 + 168);
      v19 = *(*(v0 + 176) + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1000FA540;
      v20 = swift_continuation_init();
      *(v0 + 136) = sub_100084528(&qword_100270B78, &qword_1001F3520);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1000FAB84;
      *(v0 + 104) = &unk_100247918;
      *(v0 + 112) = v20;
      [v19 nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:v18 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v21 = v11;
    v22 = sub_1001C5128();
    v23 = sub_1001C65B8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 176);
      v25 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v31);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1001874E8(*(v24 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType), *(v24 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8), v31);
      _os_log_impl(&_mh_execute_header, v22, v23, "BDSSyncEnginePipeline - %s: [%s] No pending modifications. Returning nil", v25, 0x16u);
      swift_arrayDestroy();
    }
  }

  v26 = *(v0 + 152);
  v27 = sub_1001C5378();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = *(v0 + 200);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1000FA540()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000FA620, 0, 0);
}

uint64_t sub_1000FA620()
{
  v34 = v0;
  v1 = v0[18];
  v0[32] = v1;
  if (v1)
  {
    v2 = v0[29];
    v3 = v0[22];
    v4 = swift_allocObject();
    v0[33] = v4;
    swift_unknownObjectWeakInit();
    v5 = swift_task_alloc();
    v0[34] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[35] = v7;
    v8 = sub_100084528(&qword_100270B80, &unk_1001F3528);
    *v7 = v0;
    v7[1] = sub_1000FA9C4;
    v9 = v0[19];

    return withCheckedContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000002ELL, 0x80000001002016E0, sub_100100964, v5, v8);
  }

  else
  {
    v10 = v0[31];
    v11 = v0[26];
    v12 = v0[22];

    v13 = sub_1001C5128();
    v14 = sub_1001C65B8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[31];
    if (v15)
    {
      v17 = v0[30];
      v18 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v33);
      *(v18 + 12) = 2080;
      v19 = sub_1001874E8(v17, v16, v33);

      *(v18 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEnginePipeline - %s: [%s] no more dirty changes", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v20 = v0[28];
    v21 = v0[29];
    v23 = v0[24];
    v22 = v0[25];
    v25 = v0[22];
    v24 = v0[23];
    v26 = v0[19];
    v27 = *(v25 + v0[27]);
    sub_1001C5638();
    v28 = swift_task_alloc();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0;
    sub_1001C6678();
    swift_unknownObjectRelease();

    (*(v23 + 8))(v22, v24);
    v29 = sub_1001C5378();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
    v30 = v0[25];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1000FA9C4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v6 = *v0;

  return _swift_task_switch(sub_1000FAB1C, 0, 0);
}

uint64_t sub_1000FAB1C()
{
  v1 = v0[29];
  swift_unknownObjectRelease();
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000FAB84(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10009BB74((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100088714(0, &qword_100270F00, off_10023DD10);
    v4 = sub_1001C6298();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000FAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a3;
  v5 = sub_1001C5648();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_100271018, &unk_1001F36F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = *(Strong + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue);
    v36 = v5;
    v23 = Strong;
    (*(v14 + 16))(v17, a1, v13);
    v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v25 = swift_allocObject();
    v26 = v8;
    v27 = v38;
    *(v25 + 16) = v23;
    *(v25 + 24) = v27;
    (*(v14 + 32))(v25 + v24, v17, v13);
    *(v25 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
    aBlock[4] = sub_100101100;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100248080;
    v28 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v29 = v35;
    v30 = v23;

    sub_1001C5668();
    v42 = _swiftEmptyArrayStorage;
    sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
    v31 = v36;
    sub_1001C68C8();
    sub_1001C6698();
    _Block_release(v28);

    (*(v41 + 8))(v26, v31);
    (*(v39 + 8))(v12, v40);
  }

  else
  {
    v33 = sub_1001C5378();
    (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
    return sub_1001C6328();
  }
}

uint64_t sub_1000FB0C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  sub_1000FB1D4(a2, &v11 - v8);
  sub_10010119C(v9, v7);
  sub_100084528(&qword_100271018, &unk_1001F36F0);
  sub_1001C6328();
  return sub_10008875C(v9, &qword_100270B80, &unk_1001F3528);
}

uint64_t sub_1000FB1D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v50 = a2;
  v6 = sub_1001C5648();
  v49[0] = *(v6 - 8);
  v7 = *(v49[0] + 64);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType);
  v10 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8);
  v12 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;

  v49[1] = v12;
  v13 = sub_1001C5128();
  LOBYTE(v14) = sub_1001C65B8();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_6;
  }

  v3 = swift_slowAlloc();
  v51[0] = swift_slowAlloc();
  *v3 = 136315650;
  *(v3 + 4) = sub_1001874E8(0xD000000000000029, 0x8000000100201B50, v51);
  *(v3 + 12) = 2080;
  *(v3 + 14) = sub_1001874E8(v11, v10, v51);
  *(v3 + 22) = 2048;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1001C6B38())
  {
    *(v3 + 24) = i;

    _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEnginePipeline - %s: [%s] %ld dirty changes", v3, 0x20u);
    swift_arrayDestroy();

LABEL_6:
    v14 = _swiftEmptyArrayStorage;
    v52 = _swiftEmptyArrayStorage;
    v53 = _swiftEmptyArrayStorage;
    v16 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse);
    swift_beginAccess();

    sub_1000FE93C(a1, &v53, &v52, v16 + 48);
    swift_endAccess();

    a1 = v53;
    v17 = v53 >> 62;
    if (v53 >> 62)
    {
      if (sub_1001C6B38())
      {
        goto LABEL_10;
      }
    }

    else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v3 = v52;
    if (v52 >> 62)
    {
      if (!sub_1001C6B38())
      {
LABEL_37:

        v43 = sub_1001C5128();
        v44 = sub_1001C65B8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v51[0] = swift_slowAlloc();
          *v45 = 136315394;
          *(v45 + 4) = sub_1001874E8(0xD000000000000029, 0x8000000100201B50, v51);
          *(v45 + 12) = 2080;
          v46 = sub_1001874E8(v11, v10, v51);

          *(v45 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v43, v44, "BDSSyncEnginePipeline - %s: [%s] Cannot create CKRecords to save", v45, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v27 = v50;
        v47 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue);
        v48 = sub_1001C5638();
        __chkstk_darwin(v48);
        v49[-2] = v4;
        LOBYTE(v49[-1]) = 0;
        sub_1001C6678();

        (*(v49[0] + 8))(v9, v6);
        v40 = 1;
        goto LABEL_29;
      }
    }

    else if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_10:
    if (v17)
    {
      v6 = sub_1001C6B38();
      if (!v6)
      {
LABEL_20:

        v23 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    v51[0] = _swiftEmptyArrayStorage;

    v13 = v51;
    sub_1001C6A78();
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    ;
  }

  v49[0] = v11;
  v18 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = sub_1001C69F8();
    }

    else
    {
      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = [v19 recordID];

    sub_1001C6A48();
    v22 = *(v51[0] + 16);
    sub_1001C6A88();
    sub_1001C6A98();
    sub_1001C6A58();
  }

  while (v6 != v18);
  v23 = v51[0];
  v11 = v49[0];
LABEL_21:

  v24 = sub_1001C5128();
  v25 = sub_1001C65B8();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v50;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v28 = 136316418;
    *(v28 + 4) = sub_1001874E8(0xD000000000000029, 0x8000000100201B50, v51);
    *(v28 + 12) = 2080;
    v29 = sub_1001874E8(v11, v10, v51);

    *(v28 + 14) = v29;
    *(v28 + 22) = 2048;
    if (v23 >> 62)
    {
      v30 = sub_1001C6B38();
    }

    else
    {
      v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 24) = v30;

    *(v28 + 32) = 2080;
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v31 = sub_1001C62A8();
    v33 = v32;

    v34 = sub_1001874E8(v31, v33, v51);

    *(v28 + 34) = v34;
    *(v28 + 42) = 2048;
    swift_beginAccess();
    if (v52 >> 62)
    {
      v35 = sub_1001C6B38();
    }

    else
    {
      v35 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 44) = v35;
    *(v28 + 52) = 2080;

    v36 = sub_1001C62A8();
    v38 = v37;

    v39 = sub_1001874E8(v36, v38, v51);

    *(v28 + 54) = v39;
    _os_log_impl(&_mh_execute_header, v24, v25, "BDSSyncEnginePipeline - %s: [%s] Returning records %ld idsToSave=%s, %ld idsToDelete=%s", v28, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();

  sub_1001C5338();
  v40 = 0;
LABEL_29:
  v41 = sub_1001C5378();
  (*(*(v41 - 8) + 56))(v27, v40, 1, v41);
}

Swift::Void __swiftcall BDSSyncEnginePipeline.didSave(record:)(CKRecord record)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = record.super.isa;
  v14 = sub_1001C5128();
  v15 = sub_1001C65B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_1001874E8(0xD000000000000010, 0x8000000100201780, aBlock);
    *(v16 + 12) = 2112;
    v20 = [(objc_class *)v13 recordID];
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "BDSSyncEnginePipeline - %s: %@", v16, 0x16u);
    sub_10008875C(v17, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v19);
    v5 = v27;
  }

  v21 = *&v2[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v13;
  aBlock[4] = sub_100100970;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247990;
  v23 = _Block_copy(aBlock);
  v24 = v13;
  v25 = v21;
  v26 = v2;
  sub_1001C5668();
  v30 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v23);

  (*(v5 + 8))(v8, v4);
  (*(v28 + 8))(v12, v29);
}

void sub_1000FBE70(void *a1)
{
  v3 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse;
  v4 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse);

  v5 = [a1 recordID];
  swift_beginAccess();
  v6 = *(v4 + 48);

  v7 = sub_1000F51FC(v5, v6, &qword_100270F00, off_10023DD10);

  if (!v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    v9 = [a1 recordID];
    v7 = [v8 mutableCloudDataForRecordID:v9];

    if (!v7)
    {
      return;
    }

    v10 = v1;
    v11 = sub_1001C5128();
    v12 = sub_1001C6598();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1001874E8(0xD000000000000013, 0x8000000100201B30, &v17);
      _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEnginePipeline - %s: Unable to find outstanding cloudData. Overwrite existing.", v13, 0xCu);
      sub_10008E7BC(v14);
    }

    v1 = v10;
  }

  [v7 setSystemFields:a1];
  v15 = *(v1 + v3);

  v16 = [a1 recordID];
  sub_1001006E4(v7, v16, v15);
}

uint64_t BDSSyncEnginePipeline.failedToSaveRecordWith(recordID:error:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001C5648();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = sub_1001C5128();
  v16 = sub_1001C65B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v17 = 136315394;
    *(v17 + 4) = sub_1001874E8(0xD000000000000027, 0x80000001002017A0, aBlock);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v19 = v14;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "BDSSyncEnginePipeline - %s: %@", v17, 0x16u);
    sub_10008875C(v19, &unk_1002718E0, &qword_1001F31F0);
    a2 = v30;

    sub_10008E7BC(v20);
  }

  v22 = *&v3[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = v14;
  v23[4] = a2;
  aBlock[4] = sub_100100998;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002479E0;
  v24 = _Block_copy(aBlock);
  v25 = v14;
  v26 = v22;
  v27 = v3;
  swift_errorRetain();
  sub_1001C5668();
  v34 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v24);

  (*(v33 + 8))(v9, v6);
  (*(v31 + 8))(v13, v32);
}

Swift::Void __swiftcall BDSSyncEnginePipeline.didDeleteRecordWith(recordID:)(CKRecordID recordID)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = recordID.super.isa;
  v14 = sub_1001C5128();
  v15 = sub_1001C65B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_1001874E8(0xD00000000000001ELL, 0x80000001002017D0, aBlock);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "BDSSyncEnginePipeline - %s: %@", v16, 0x16u);
    sub_10008875C(v17, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v19);
    v5 = v27;
  }

  v21 = *&v2[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v13;
  aBlock[4] = sub_1001009C4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247A30;
  v23 = _Block_copy(aBlock);
  v24 = v13;
  v25 = v21;
  v26 = v2;
  sub_1001C5668();
  v30 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v23);

  (*(v5 + 8))(v8, v4);
  (*(v28 + 8))(v12, v29);
}

uint64_t sub_1000FC8F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse);

  sub_1000FF724(a2);
}

uint64_t BDSSyncEnginePipeline.failedToDeleteRecordWith(recordID:error:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001C5648();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = sub_1001C5128();
  v16 = sub_1001C65B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v17 = 136315394;
    *(v17 + 4) = sub_1001874E8(0xD000000000000029, 0x80000001002017F0, aBlock);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v19 = v14;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "BDSSyncEnginePipeline - %s: %@", v17, 0x16u);
    sub_10008875C(v19, &unk_1002718E0, &qword_1001F31F0);
    a2 = v30;

    sub_10008E7BC(v20);
  }

  v22 = *&v3[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = v14;
  v23[4] = a2;
  aBlock[4] = sub_1001012C0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247A80;
  v24 = _Block_copy(aBlock);
  v25 = v14;
  v26 = v22;
  v27 = v3;
  swift_errorRetain();
  sub_1001C5668();
  v34 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v24);

  (*(v33 + 8))(v9, v6);
  (*(v31 + 8))(v13, v32);
}

uint64_t sub_1000FCD64(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType);
  v5 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8);
  swift_beginAccess();
  v6 = a1[2];
  swift_beginAccess();
  v7 = a1[3];
  swift_beginAccess();
  v8 = a1[4];
  swift_beginAccess();
  v9 = a1[5];
  v51 = v9 >> 62;
  if (v9 >> 62)
  {
    v10 = sub_1001C6B38();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = sub_1001C5128();
  v12 = v7 >> 62;
  v54 = v8;
  v55 = v8 >> 62;
  v52 = v10;
  if (v10)
  {
    v13 = sub_1001C6598();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v14 = 136316418;
      *(v14 + 4) = sub_1001874E8(0xD000000000000019, 0x8000000100201B80, &aBlock);
      *(v14 + 12) = 2080;
      v15 = sub_1001874E8(v4, v5, &aBlock);

      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      if (v6 >> 62)
      {
        v16 = sub_1001C6B38();
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      *(v14 + 24) = v16;
      *(v14 + 32) = 2048;
      if (v7 >> 62)
      {
        v17 = sub_1001C6B38();
      }

      else
      {
        v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 34) = v17;
      *(v14 + 42) = 2048;
      if (v55)
      {
        v18 = sub_1001C6B38();
      }

      else
      {
        v18 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 44) = v18;
      *(v14 + 52) = 2048;
      if (v51)
      {
        v19 = sub_1001C6B38();
      }

      else
      {
        v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 54) = v19;
      _os_log_impl(&_mh_execute_header, v11, v13, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v14, 0x3Eu);
      swift_arrayDestroy();

      v27 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v20 = sub_1001C65B8();
    if (os_log_type_enabled(v11, v20))
    {
      v50 = v20;
      v21 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v21 = 136316418;
      *(v21 + 4) = sub_1001874E8(0xD000000000000019, 0x8000000100201B80, &aBlock);
      *(v21 + 12) = 2080;
      v22 = sub_1001874E8(v4, v5, &aBlock);

      *(v21 + 14) = v22;
      *(v21 + 22) = 2048;
      if (v6 >> 62)
      {
        v23 = sub_1001C6B38();
      }

      else
      {
        v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 24) = v23;
      *(v21 + 32) = 2048;
      if (v12)
      {
        v24 = sub_1001C6B38();
      }

      else
      {
        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 34) = v24;
      *(v21 + 42) = 2048;
      if (v55)
      {
        v25 = sub_1001C6B38();
      }

      else
      {
        v25 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 44) = v25;
      *(v21 + 52) = 2048;
      if (v51)
      {
        v26 = sub_1001C6B38();
      }

      else
      {
        v26 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 54) = v26;
      _os_log_impl(&_mh_execute_header, v11, v50, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v21, 0x3Eu);
      swift_arrayDestroy();

      v27 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
LABEL_26:
    v28 = *(v27 + 16);
    goto LABEL_27;
  }

LABEL_45:
  v28 = sub_1001C6B38();
LABEL_27:
  if (v28)
  {
    v29 = v12;
    v30 = *(v56 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    sub_100084528(&qword_100271010, &unk_1001F1D60);
    isa = sub_1001C6288().super.isa;
    v32 = v56;

    v61 = MarkedAsFinishedMechanism.rawValue.getter;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10018CA5C;
    v60 = &unk_100247FB8;
    v33 = _Block_copy(&aBlock);
    [v30 syncProvider:v56 updateSyncGenerationFromCloudData:isa completion:v33];
    _Block_release(v33);

    v34 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v29)
    {
      goto LABEL_29;
    }
  }

  else
  {

    v32 = v56;
    v34 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
LABEL_29:
      if (*(v34 + 16))
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }
  }

  if (sub_1001C6B38())
  {
LABEL_30:
    v35 = *(v32 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v36 = sub_1001C6288().super.isa;

    v61 = MarkedAsFinishedMechanism.rawValue.getter;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10018CA5C;
    v60 = &unk_100247FE0;
    v37 = _Block_copy(&aBlock);
    [v35 syncProvider:v32 removeCloudDataForIDs:v36 completion:v37];
    _Block_release(v37);

    v38 = v54;
    if (!v55)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

LABEL_36:

  v38 = v54;
  if (!v55)
  {
LABEL_31:
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_38:

    if (v52)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_37:
  if (!sub_1001C6B38())
  {
    goto LABEL_38;
  }

LABEL_32:
  v39 = *(v32 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
  sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
  v40 = sub_1001C6288().super.isa;

  v61 = MarkedAsFinishedMechanism.rawValue.getter;
  v62 = 0;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10018CA5C;
  v60 = &unk_100248008;
  v41 = _Block_copy(&aBlock);
  [v39 syncProvider:v32 resolveConflictsForRecords:v40 completion:v41];
  _Block_release(v41);

  if (v52)
  {
LABEL_33:
    v42 = *(v32 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v43 = sub_1001C6288().super.isa;

    v61 = MarkedAsFinishedMechanism.rawValue.getter;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10018CA5C;
    v60 = &unk_100248030;
    v44 = _Block_copy(&aBlock);
    [v42 syncProvider:v32 failedRecordIDs:v43 completion:v44];
    _Block_release(v44);

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  v45 = a1[2];
  a1[2] = _swiftEmptyArrayStorage;

  v46 = a1[3];
  a1[3] = _swiftEmptyArrayStorage;

  v47 = a1[4];
  a1[4] = _swiftEmptyArrayStorage;

  v48 = a1[5];
  a1[5] = _swiftEmptyArrayStorage;

  if (a2)
  {
    return sub_1000FFEA4();
  }

  return result;
}

void sub_1000FD684(void *a1, uint64_t a2)
{
  v4 = v2;
  v89 = a2;
  swift_errorRetain();
  sub_100084528(&unk_100270F10, &unk_1001F1F70);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v6 = v88;
    v89 = _swiftEmptyArrayStorage;
    v7 = sub_1001C5EE8();
    if (v7)
    {
      v8 = v7;
      sub_100100BD4(&qword_10026EFE0, type metadata accessor for CKError);
      sub_1001C49E8();
      if (v87 == 14)
      {
        v9 = a1;
        v10 = v88;
        v11 = sub_1001C5128();
        v12 = sub_1001C6578();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          v86 = v3;
          *v13 = 136315650;
          *(v13 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v86);
          *(v13 + 12) = 2112;
          *(v13 + 14) = v9;
          *v14 = v9;
          *(v13 + 22) = 2112;
          v15 = v9;
          v16 = v10;
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 24) = v17;
          v14[1] = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEnginePipeline - %s: CKErrorServerRecordChanged record %@ perRecordError %@", v13, 0x20u);
          sub_100084528(&unk_1002718E0, &qword_1001F31F0);
          swift_arrayDestroy();

          sub_10008E7BC(v3);
        }

        v18 = &_swiftEmptyDictionarySingleton;
        v19 = v8;
        if (!(&_swiftEmptyDictionarySingleton >> 62))
        {
          goto LABEL_9;
        }

        v20 = sub_1001C6AF8();
        if (!__OFADD__(v20, 1))
        {
          v18 = sub_10017ACE4(&_swiftEmptyDictionarySingleton, v20 + 1);
LABEL_9:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v18;
          sub_10017B130(v19, v9, isUniquelyReferenced_nonNull_native);

          v22 = 0;
          v23 = v86;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_53;
      }

      v41 = v88;
      v42 = v8;
      v43 = sub_1001C5128();
      v44 = sub_1001C6598();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v86 = v47;
        *v45 = 136315650;
        *(v45 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v86);
        *(v45 + 12) = 2112;
        *(v45 + 14) = v42;
        *v46 = v8;
        *(v45 + 22) = 2112;
        v48 = v41;
        v49 = v42;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 24) = v50;
        v46[1] = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "BDSSyncEnginePipeline - %s: Unhandled error for record %@ perRecordError %@", v45, 0x20u);
        sub_100084528(&unk_1002718E0, &qword_1001F31F0);
        swift_arrayDestroy();

        sub_10008E7BC(v47);

LABEL_32:
        v22 = 0;
        v23 = &_swiftEmptyDictionarySingleton;
LABEL_33:
        v64 = _swiftEmptyArrayStorage;
        if ((v23 & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

LABEL_44:
        v65 = &unk_100270000;
        if (!*(v23 + 16))
        {
LABEL_36:
          if (v64 >> 62)
          {
            if (sub_1001C6B38())
            {
LABEL_38:
              v68 = *(v4 + v65[378]);

              sub_1000FFB60(v64);

              if (v22)
              {
LABEL_39:
                sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
                v69 = [*(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID) zoneName];
                v70 = sub_1001C6018();
                v72 = v71;

                v91._countAndFlagsBits = sub_1001C6018();
                v91._object = v73;
                v90._countAndFlagsBits = v70;
                v90._object = v72;
                v74.super.isa = sub_1001C65C8(v90, v91).super.isa;
                v75 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v74.super.isa];
                if (qword_10026EC78 != -1)
                {
                  swift_once();
                }

                BDSSyncEngine.resetCloudKitZone(_:)(v75);

                goto LABEL_51;
              }

LABEL_50:

              goto LABEL_51;
            }
          }

          else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          if (v22)
          {
            goto LABEL_39;
          }

          goto LABEL_50;
        }

LABEL_35:
        v66 = *(v4 + v65[378]);

        sub_1000FF7FC(v67);

        goto LABEL_36;
      }
    }

    else
    {
      v3 = a1;
      v31 = v88;
      v32 = sub_1001C5128();
      v33 = sub_1001C6598();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v88;
        v37 = swift_slowAlloc();
        v88 = v37;
        *v34 = 136315650;
        *(v34 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v88);
        *(v34 + 12) = 2112;
        *(v34 + 14) = v3;
        *v35 = v3;
        *(v34 + 22) = 2112;
        v38 = v3;
        v39 = v31;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 24) = v40;
        v35[1] = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "BDSSyncEnginePipeline - %s: Unable to retrieve serverRecord for recordID %@ perRecordError %@", v34, 0x20u);
        sub_100084528(&unk_1002718E0, &qword_1001F31F0);
        swift_arrayDestroy();

        sub_10008E7BC(v37);
        v6 = v36;
      }

      v88 = v31;
      sub_100100BD4(&qword_10026EFE0, type metadata accessor for CKError);
      sub_1001C49E8();
      if (v87 > 25)
      {
        if (v87 == 26 || v87 == 28)
        {
          if (qword_10026EC78 == -1)
          {
LABEL_23:
            sub_100084528(&qword_100270AB0, &qword_1001F52C0);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1001F31C0;
            v52 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID);
            *(v51 + 32) = v52;
            v53 = v52;

            v54 = sub_1001C5128();
            v55 = sub_1001C65B8();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v57 = v6;
              v58 = v3;
              v59 = v86;
              *v56 = 136446210;
              sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
              v60 = sub_1001C62A8();
              v62 = sub_1001874E8(v60, v61, &v86);

              *(v56 + 4) = v62;
              _os_log_impl(&_mh_execute_header, v54, v55, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v56, 0xCu);
              sub_10008E7BC(v59);
              v3 = v58;
              v6 = v57;
            }

            sub_100174FE8(v51, 1);

LABEL_26:
            v63 = v3;
            sub_1001C6278();
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v85 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1001C62B8();
            }

            sub_1001C62E8();
            v22 = 0;
            v64 = v89;
            v23 = &_swiftEmptyDictionarySingleton;
            if ((&_swiftEmptyDictionarySingleton & 0xC000000000000001) == 0)
            {
              goto LABEL_44;
            }

LABEL_34:
            v65 = &unk_100270000;
            if (!sub_1001C6AF8())
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_53:
          swift_once();
          goto LABEL_23;
        }
      }

      else if (v87 == 14 || v87 == 21)
      {
        goto LABEL_26;
      }

      v86 = v31;
      if (sub_1001C4A08() == 112)
      {
        v23 = &_swiftEmptyDictionarySingleton;
        v64 = _swiftEmptyArrayStorage;
        v22 = 1;
        if ((&_swiftEmptyDictionarySingleton & 0xC000000000000001) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      v76 = v3;
      v77 = v31;
      v43 = sub_1001C5128();
      v78 = sub_1001C6598();

      if (os_log_type_enabled(v43, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v88 = v81;
        *v79 = 136315650;
        *(v79 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v88);
        *(v79 + 12) = 2112;
        *(v79 + 14) = v76;
        *v80 = v76;
        *(v79 + 22) = 2112;
        v82 = v76;
        v83 = v77;
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 24) = v84;
        v80[1] = v84;
        _os_log_impl(&_mh_execute_header, v43, v78, "BDSSyncEnginePipeline - %s: Unhandled error for recordID %@ perRecordError %@", v79, 0x20u);
        sub_100084528(&unk_1002718E0, &qword_1001F31F0);
        swift_arrayDestroy();

        sub_10008E7BC(v81);
      }
    }

    goto LABEL_32;
  }

  swift_errorRetain();
  v24 = a1;
  v6 = sub_1001C5128();
  v25 = sub_1001C6598();

  if (os_log_type_enabled(v6, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v89 = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v89);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v24;
    *v27 = v24;
    *(v26 + 22) = 2112;
    swift_errorRetain();
    v29 = v24;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 24) = v30;
    v27[1] = v30;
    _os_log_impl(&_mh_execute_header, v6, v25, "BDSSyncEnginePipeline - %s: Error modifying record:%@ error=%@", v26, 0x20u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();

    sub_10008E7BC(v28);
  }

LABEL_51:
}

Swift::Void __swiftcall BDSSyncEnginePipeline.didCompleteModifyRecordsBatch()()
{
  v1 = v0;
  v2 = sub_1001C5648();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5688();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
  v10 = *&v0[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8];

  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1001874E8(0xD00000000000001FLL, 0x8000000100201820, aBlock);
    *(v14 + 12) = 2080;
    v15 = sub_1001874E8(v11, v10, aBlock);

    *(v14 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEnginePipeline - %s: [%s]", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *&v1[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  aBlock[4] = sub_100100A14;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247AD0;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = v1;
  sub_1001C5668();
  v24 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v18);

  (*(v23 + 8))(v5, v2);
  (*(v21 + 8))(v9, v22);
}

uint64_t sub_1000FE77C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse);

  sub_1000FCD64(v2, 1);
}

void sub_1000FE7CC(void *a1)
{
  v2 = a1;
  oslog = sub_1001C5128();
  v3 = sub_1001C65B8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1001874E8(0xD000000000000025, 0x8000000100201AD0, &v9);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v2;
    *v5 = a1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "BDSSyncEnginePipeline - %s: %@", v4, 0x16u);
    sub_10008875C(v5, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v6);
  }
}

void sub_1000FE93C(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a1;
  v110 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType);
  v114 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8);
  if (a1 >> 62)
  {
LABEL_92:
    v7 = sub_1001C6B38();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v121 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v111 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_dataMapper;
      v112 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v119 = a4;
      v115 = isUniquelyReferenced_nonNull_native;
      v113 = v7;
      do
      {
        if (v121)
        {
          v9 = sub_1001C69F8();
        }

        else
        {
          if (v8 >= *(v112 + 16))
          {
            goto LABEL_85;
          }

          v9 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v12 = [v9 systemFields];
        if (!v12)
        {

          v23 = v10;
          v24 = sub_1001C5128();
          v25 = sub_1001C6598();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v122[0] = v28;
            *v26 = 136315394;
            *(v26 + 4) = sub_1001874E8(v110, v114, v122);
            *(v26 + 12) = 2112;
            *(v26 + 14) = v23;
            *v27 = v23;
            v23 = v23;
            _os_log_impl(&_mh_execute_header, v24, v25, "BDSSyncEnginePipeline - [%s] Unable to retrieve systemFields from %@", v26, 0x16u);
            sub_10008875C(v27, &unk_1002718E0, &qword_1001F31F0);
            v7 = v113;

            sub_10008E7BC(v28);
            a4 = v119;
          }

          goto LABEL_5;
        }

        v13 = v12;
        if ([v10 deletedFlag])
        {
          v14 = [v13 recordID];
          v15 = v14;
          v16 = *a4;
          if ((*a4 & 0xC000000000000001) != 0)
          {
            if (v16 < 0)
            {
              v17 = *a4;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFFFFFFFF8;
            }

            v18 = v14;
            a4 = sub_1001C6B08();

            if (a4)
            {
              sub_100088714(0, &qword_100270F00, off_10023DD10);
              swift_dynamicCast();
              v19 = v122[0];
              if (v122[0])
              {
LABEL_28:

                v34 = v10;
                v35 = sub_1001C5128();
                v36 = sub_1001C6598();

                if (os_log_type_enabled(v35, v36))
                {
                  v37 = swift_slowAlloc();
                  v38 = swift_slowAlloc();
                  v116 = v13;
                  v39 = swift_slowAlloc();
                  v122[0] = v39;
                  *v37 = 136315394;
                  *(v37 + 4) = sub_1001874E8(v110, v114, v122);
                  *(v37 + 12) = 2112;
                  *(v37 + 14) = v34;
                  *v38 = v34;
                  v40 = v34;
                  _os_log_impl(&_mh_execute_header, v35, v36, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for deleting %@", v37, 0x16u);
                  sub_10008875C(v38, &unk_1002718E0, &qword_1001F31F0);

                  sub_10008E7BC(v39);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = v115;
                v7 = v113;
                a4 = v119;
                goto LABEL_5;
              }
            }

            v20 = v18;
            v21 = v10;
            v22 = sub_1001C6AF8();
            if (__OFADD__(v22, 1))
            {
              goto LABEL_88;
            }

            a4 = v119;
            *v119 = sub_10017AA98(v17, v22 + 1);
          }

          else
          {
            if (*(v16 + 16))
            {
              v31 = sub_100187BB4(v14);
              if (v32)
              {
                v33 = *(*(v16 + 56) + 8 * v31);
                v19 = v33;
                if (v33)
                {
                  goto LABEL_28;
                }
              }
            }

            v57 = v15;
            v58 = v10;
            v59 = *a4;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = *a4;
          v60 = v122[0];
          v61 = sub_100187BB4(v15);
          v63 = *(v60 + 16);
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            goto LABEL_86;
          }

          v67 = v62;
          if (*(v60 + 24) >= v66)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v103 = v61;
              sub_10018B168();
              v61 = v103;
              v7 = v113;
              a4 = v119;
            }
          }

          else
          {
            sub_100189224(v66, isUniquelyReferenced_nonNull_native);
            v61 = sub_100187BB4(v15);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_94;
            }
          }

          isUniquelyReferenced_nonNull_native = v115;
          v69 = v122[0];
          if (v67)
          {
            v70 = *(v122[0] + 56);
            v71 = *(v70 + 8 * v61);
            *(v70 + 8 * v61) = v10;
          }

          else
          {
            *(v122[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
            *(v69[6] + 8 * v61) = v15;
            *(v69[7] + 8 * v61) = v10;
            v72 = v69[2];
            v65 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (v65)
            {
              goto LABEL_89;
            }

            v69[2] = v73;
          }

          *a4 = v69;
          v74 = v15;
          sub_1001C6278();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_81;
          }

          v75 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1001C62B8();
          goto LABEL_83;
        }

        v29 = *(v120 + v111);
        if (v29)
        {
          v30 = [v29 recordFromCloudData:v10];
        }

        else
        {
          v30 = [v10 configuredRecordFromAttributes];
        }

        v41 = v30;
        if (!v41)
        {
          v48 = v10;
          v49 = sub_1001C5128();
          v50 = sub_1001C6598();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v122[0] = swift_slowAlloc();
            *v51 = 136315394;
            *(v51 + 4) = sub_1001874E8(0xD000000000000019, 0x8000000100201AB0, v122);
            *(v51 + 12) = 2080;
            v52 = [v48 localRecordID];
            v118 = v13;
            v53 = sub_1001C6018();
            v55 = v54;

            v56 = sub_1001874E8(v53, v55, v122);
            v7 = v113;

            *(v51 + 14) = v56;
            a4 = v119;
            _os_log_impl(&_mh_execute_header, v49, v50, "BDSSyncEnginePipeline - %s: failed to create CKRecord for %s", v51, 0x16u);
            swift_arrayDestroy();
            isUniquelyReferenced_nonNull_native = v115;
          }

          else
          {
          }

          goto LABEL_5;
        }

        v42 = v41;
        v117 = v13;
        v43 = [v41 recordID];
        v44 = v43;
        v45 = *a4;
        isUniquelyReferenced_nonNull_native = *a4 & 0xC000000000000001;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v45 < 0)
          {
            v46 = *a4;
          }

          v47 = v43;
          a4 = sub_1001C6B08();

          if (!a4)
          {
LABEL_59:

            v78 = v119;
            goto LABEL_60;
          }

          sub_100088714(0, &qword_100270F00, off_10023DD10);
          swift_dynamicCast();
          a4 = v122[0];
        }

        else
        {
          if (!*(v45 + 16))
          {
            goto LABEL_59;
          }

          v76 = sub_100187BB4(v43);
          if ((v77 & 1) == 0)
          {
            goto LABEL_59;
          }

          a4 = *(*(v45 + 56) + 8 * v76);
        }

        v78 = v119;
        if (a4)
        {

          v79 = v10;
          v80 = sub_1001C5128();
          v81 = sub_1001C6598();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = v80;
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v122[0] = v85;
            *v83 = 136315394;
            *(v83 + 4) = sub_1001874E8(v110, v114, v122);
            *(v83 + 12) = 2112;
            *(v83 + 14) = v79;
            *v84 = v79;
            v86 = v79;
            _os_log_impl(&_mh_execute_header, v82, v81, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for saving %@", v83, 0x16u);
            sub_10008875C(v84, &unk_1002718E0, &qword_1001F31F0);

            sub_10008E7BC(v85);
            a4 = v119;

            isUniquelyReferenced_nonNull_native = v115;
            v7 = v113;
          }

          else
          {

            isUniquelyReferenced_nonNull_native = v115;
            v7 = v113;
            a4 = v119;
          }

          goto LABEL_5;
        }

LABEL_60:
        v87 = [v42 recordID];
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v45 >= 0)
          {
            v45 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v88 = v10;
          v89 = sub_1001C6AF8();
          v90 = v117;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_90;
          }

          *v78 = sub_10017AA98(v45, v89 + 1);
        }

        else
        {
          v91 = v10;
          v92 = *v78;
          v90 = v117;
        }

        a4 = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = *v78;
        v93 = v122[0];
        v94 = sub_100187BB4(v87);
        v96 = *(v93 + 16);
        v97 = (v95 & 1) == 0;
        v65 = __OFADD__(v96, v97);
        v98 = v96 + v97;
        if (v65)
        {
          goto LABEL_87;
        }

        isUniquelyReferenced_nonNull_native = v95;
        if (*(v93 + 24) < v98)
        {
          sub_100189224(v98, a4);
          v94 = sub_100187BB4(v87);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v99 & 1))
          {
LABEL_94:
            sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
            sub_1001C6D68();
            __break(1u);
            return;
          }

LABEL_72:
          v100 = v122[0];
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_73;
          }

          goto LABEL_78;
        }

        if (a4)
        {
          goto LABEL_72;
        }

        a4 = v90;
        v104 = v94;
        sub_10018B168();
        v94 = v104;
        v90 = a4;
        v100 = v122[0];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_73:
          v13 = v90;
          v101 = v100[7];
          v102 = *(v101 + 8 * v94);
          *(v101 + 8 * v94) = v10;

          goto LABEL_80;
        }

LABEL_78:
        v100[(v94 >> 6) + 8] |= 1 << v94;
        *(v100[6] + 8 * v94) = v87;
        *(v100[7] + 8 * v94) = v10;
        v105 = v100[2];
        v65 = __OFADD__(v105, 1);
        v106 = v105 + 1;
        if (v65)
        {
          goto LABEL_91;
        }

        v13 = v90;
        v100[2] = v106;
LABEL_80:
        a4 = v119;
        *v119 = v100;
        v74 = v42;
        sub_1001C6278();
        isUniquelyReferenced_nonNull_native = v115;
        v7 = v113;
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v107 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1001C62B8();
LABEL_83:
          v7 = v113;
          a4 = v119;
        }

LABEL_81:
        sub_1001C62E8();

LABEL_5:
        ++v8;
      }

      while (v11 != v7);
    }
  }
}

id BDSSyncEnginePipeline.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BDSSyncEnginePipeline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FF724(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_10019D058(a1);
  swift_endAccess();

  swift_beginAccess();
  v5 = a1;
  sub_1001C6278();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  return swift_endAccess();
}

void sub_1000FF7FC(unint64_t a1)
{
  v2 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1001C6AE8() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v36 = v4;
  v11 = (v4 + 64) >> 6;
  v37 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1001C6B18() || (swift_unknownObjectRelease(), sub_100088714(0, &unk_10026FEC0, CKRecord_ptr), swift_dynamicCast(), (v14 = v40) == 0))
    {
LABEL_32:
      sub_100005064();
      swift_beginAccess();

      sub_1001958F0(v35);
      swift_endAccess();
      return;
    }

LABEL_20:
    v15 = [v14 recordID];
    swift_beginAccess();
    v16 = *(v2 + 48);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v38 = v5;
      v17 = v2;
      if (v16 < 0)
      {
        v18 = *(v2 + 48);
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = v15;
      v20 = sub_1001C6B08();

      if (v20)
      {
        swift_unknownObjectRelease();

        v21 = sub_1001C6AF8();
        v22 = sub_10017AA98(v18, v21);

        v23 = sub_100187BB4(v19);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_34;
        }

        v26 = *(*(v22 + 56) + 8 * v23);
        sub_10013FF8C(v23, v22);

        v2 = v17;
        *(v17 + 48) = v22;
      }

      else
      {

        v2 = v17;
      }

      v6 = v37;
      v5 = v38;
    }

    else
    {
      v27 = *(v2 + 48);
      v28 = sub_100187BB4(v15);
      if (v29)
      {
        v30 = v28;
        v39 = v5;
        v31 = *(v2 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v2 + 48);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10018B168();
        }

        v34 = *(*(v33 + 56) + 8 * v30);
        sub_10013FF8C(v30, v33);
        *(v2 + 48) = v33;

        v5 = v39;
      }

      else
      {
      }
    }

    swift_endAccess();
  }

  v12 = v10;
  v13 = v5;
  if (v5)
  {
LABEL_16:
    v5 = (v13 - 1) & v13;
    v14 = *(*(v6 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_32;
    }

    v13 = *(v3 + 8 * v10);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1000FFB60(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_34:
    swift_beginAccess();

    sub_100195800(v41);
    return swift_endAccess();
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      v23 = (v3 + 32);
      do
      {
        v25 = *v23;
        swift_beginAccess();
        v26 = *(v2 + 48);
        if ((v26 & 0xC000000000000001) != 0)
        {
          if (v26 < 0)
          {
            v27 = *(v2 + 48);
          }

          else
          {
            v27 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v25;
          if (sub_1001C6B08())
          {
            swift_unknownObjectRelease();

            v29 = sub_1001C6AF8();
            v30 = sub_10017AA98(v27, v29);

            v31 = sub_100187BB4(v28);
            v33 = v32;

            if ((v33 & 1) == 0)
            {
              goto LABEL_32;
            }

            v34 = *(*(v30 + 56) + 8 * v31);
            sub_10013FF8C(v31, v30);

            *(v2 + 48) = v30;
          }
        }

        else
        {
          v35 = sub_100187BB4(v25);
          if (v36)
          {
            v37 = v35;
            v38 = *(v2 + 48);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = *(v2 + 48);
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_10018B168();
            }

            v24 = *(*(v40 + 56) + 8 * v37);
            sub_10013FF8C(v37, v40);
            *(v2 + 48) = v40;
          }
        }

        swift_endAccess();

        ++v23;
        --v4;
      }

      while (v4);
      goto LABEL_34;
    }

    v5 = 0;
    while (1)
    {
      v7 = sub_1001C69F8();
      swift_beginAccess();
      v8 = *(v2 + 48);
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v9 = *(v2 + 48);
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1001C6B08())
        {
          swift_unknownObjectRelease();

          v10 = sub_1001C6AF8();
          v11 = sub_10017AA98(v9, v10);

          v12 = sub_100187BB4(v7);
          v14 = v13;

          if ((v14 & 1) == 0)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            result = sub_1001C6B38();
            v4 = result;
            if (!result)
            {
              goto LABEL_34;
            }

            goto LABEL_3;
          }

          v15 = *(*(v11 + 56) + 8 * v12);
          sub_10013FF8C(v12, v11);

          *(v2 + 48) = v11;
        }
      }

      else
      {
        v16 = *(v2 + 48);
        v17 = sub_100187BB4(v7);
        if (v18)
        {
          v19 = v17;
          v20 = *(v2 + 48);
          v21 = swift_isUniquelyReferenced_nonNull_native();
          v22 = *(v2 + 48);
          if (!v21)
          {
            sub_10018B168();
          }

          v6 = *(*(v22 + 56) + 8 * v19);
          sub_10013FF8C(v19, v22);
          *(v2 + 48) = v22;
        }
      }

      ++v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      if (v4 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FFEA4()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 48);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (!*(v3 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 < 0)
  {
    v4 = *(v0 + 48);
  }

  v5 = *(v0 + 48);

  v6 = sub_1001C6AF8();

  if (v6)
  {
LABEL_7:

    v7 = sub_1001C5128();
    v8 = sub_1001C6598();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_1001874E8(0x676F6C28656E6F64, 0xED0000293A726567, &v16);
      *(v9 + 12) = 2080;
      v10 = *(v1 + 48);
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      sub_100088714(0, &qword_100270F00, off_10023DD10);
      sub_100100B90(&qword_100270F08, &unk_100273B00, CKRecordID_ptr);

      v11 = sub_1001C5F48();
      v13 = v12;

      v14 = sub_1001874E8(v11, v13, &v16);

      *(v9 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEnginePipeline - %s: Unexpected outstanding IDs: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    v15 = *(v1 + 48);
    *(v1 + 48) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100100108()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_100100160(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001C6D08() & 1;
  }
}

uint64_t sub_1001001EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100100204(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[3] = type metadata accessor for BDSSyncEnginePipeline();
  v17[4] = &off_100247AF8;
  v17[0] = a1;
  v6 = a1;
  v7 = sub_1001C5FE8();
  v8 = *&a4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue];
  sub_1000B3A90(v17, v16);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  sub_100100DF0(v16, v9 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100100E08;
  *(v10 + 24) = v9;
  v15[4] = sub_1000B2E48;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000906F4;
  v15[3] = &unk_100247E00;
  v11 = _Block_copy(v15);
  v12 = a4;
  v13 = v7;

  dispatch_sync(v8, v11);

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return sub_10008E7BC(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001003CC(void *a1, uint64_t a2)
{
  v4 = sub_1001C5648();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001C5688();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100100DE8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247D88;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_1001C5668();
  v20 = &_swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_1001006E4(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_10019D058(a2);
  swift_endAccess();

  swift_beginAccess();
  v7 = a1;
  sub_1001C6278();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1001C62B8();
  }

  sub_1001C62E8();
  return swift_endAccess();
}

uint64_t sub_1001007E0()
{
  v9 = v0;
  v1 = *(v0 + 16) + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1001874E8(0xD000000000000011, 0x8000000100201BA0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEnginePipeline - %s", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

void sub_100100970()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1000FBE70(v1);
}

void sub_100100998()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1000FD684(v1, v2);
}

uint64_t sub_1001009CC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t type metadata accessor for BDSSyncEnginePipeline()
{
  result = qword_100270C60;
  if (!qword_100270C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100A70()
{
  result = sub_1001C5148();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100100B90(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100088714(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100100BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100100C24(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  return a1(v5);
}

uint64_t sub_100100C74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100100D04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100100D44()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = (*(v0 + 16))();
  return v3(v4);
}

uint64_t sub_100100D90(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001C6D08() & 1;
  }
}