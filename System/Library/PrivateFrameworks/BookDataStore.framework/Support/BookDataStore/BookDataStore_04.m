uint64_t sub_1000B07A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v8;
    v26 = &v24;
    __chkstk_darwin(a1);
    v10 = &v24 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v27 = 0;
    v11 = 0;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v8 = (v12 + 63) >> 6;
    v15 = v4;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      v28 = *(*(a3 + 48) + 16 * v4);
      v19 = v6(&v28);
      if (v15)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v10[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_100156604(v10, v25, v27, a3);
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

      if (v11 >= v8)
      {
        return sub_100156604(v10, v25, v27, a3);
      }

      v18 = *(a3 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_1000B0B78(v22, v8, a3, v6);

  if (!v4)
  {
    return v23;
  }

  return result;
}

uint64_t sub_1000B0A2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v21 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v20 = *(*(a3 + 48) + 16 * v17);
    result = a4(&v20);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_100156604(v21, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000B0B78(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000B0A2C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000B0C08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v119 = a6;
  v117 = a5;
  v116 = a4;
  v121 = a3;
  v111 = a2;
  v127 = a1;
  v9 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v126 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v125 = &v108 - v13;
  v14 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v122 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v124 = &v108 - v18;
  v118 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v19 = *(*(v118 - 8) + 64);
  v20 = __chkstk_darwin(v118);
  v120 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v115 = &v108 - v23;
  __chkstk_darwin(v22);
  v129 = &v108 - v24;
  v114 = sub_1001C4D68();
  v113 = *(v114 - 8);
  v25 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1001C4CA8();
  v131 = *(v130 - 8);
  v27 = *(v131 + 64);
  v28 = __chkstk_darwin(v130);
  v109 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v128 = &v108 - v31;
  __chkstk_darwin(v30);
  v33 = &v108 - v32;
  v34 = sub_1001C6638();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v36 = sub_1001C5688();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v38 = sub_1001C6668();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v108 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139[3] = sub_100084528(&unk_10026F810, &qword_1001F3220);
  v139[4] = &protocol witness table for <> CRDTModelSyncManager<A>;
  v139[0] = a2;
  v123 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v110 = "gTransactionCount";
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0;
  (*(v39 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v38);
  sub_1001C5668();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1000B3814(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *(a7 + 144) = sub_1001C66A8();
  sub_1001C4C98();
  v43 = v112;
  sub_1001C4CD8();
  v123 = v33;
  sub_1001C4CE8();
  (*(v113 + 8))(v43, v114);
  *(a7 + 96) = v116;
  v44 = v117;
  *(a7 + 120) = sub_10009D080;
  *(a7 + 128) = 0;
  v45 = v119;
  *(a7 + 104) = v44;
  *(a7 + 112) = v45;
  v46 = *(*(v127 + 56) + 16);
  v47 = v45;
  sub_1001C6688();
  *(a7 + 136) = v134;
  sub_1000B3A90(v139, a7 + 56);
  v48 = *(v111 + qword_10026FB10);
  v132 = v111;
  v49 = sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  v50 = aBlock[2];
  v51 = v129;
  sub_1001C6688();

  v52 = v121;
  *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_transactionProvider) = v121;
  v53 = v115;
  sub_10009ADF0(v51, v115, &unk_10026F420, &unk_1001F0E50);
  v54 = *(v49 + 48);
  v55 = *(v49 + 52);
  swift_allocObject();
  v56 = v120;
  sub_10009ADF0(v53, v120, &unk_10026F420, &unk_1001F0E50);
  swift_unknownObjectRetain();
  v57 = sub_100098354(v56);
  sub_10008875C(v53, &unk_10026F420, &unk_1001F0E50);
  *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) = v57;
  v58 = type metadata accessor for ObservableTransaction();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction) = sub_10015C33C(0xD000000000000038, 0x80000001001FF380, v52, v61);
  *(a7 + 152) = 0;
  v62 = *(a7 + 112);
  v63 = sub_1001C5FE8();
  v64 = [v62 integerForKey:v63];

  v65 = sub_1001BC968(v64);
  v68 = v124;
  if (v67)
  {
    v69 = v130;
    (*(v131 + 56))(v124, 1, 1, v130);
  }

  else
  {
    sub_1001ABADC(v65, v66, v124);
    v69 = v130;
  }

  v70 = *(a7 + 112);
  v71 = sub_1001C5FE8();
  v72 = [v70 integerForKey:v71];

  v73 = type metadata accessor for ReadingHistory.Streak(0);
  v74 = *(*(v73 - 8) + 56);
  v75 = v125;
  v74(v125, 1, 1, v73);
  v76 = v122;
  sub_10009ADF0(v68, v122, &unk_10026FC70, &unk_1001F1430);
  if ((*(v131 + 48))(v76, 1, v69) == 1)
  {
    sub_10008875C(v76, &unk_10026FC70, &unk_1001F1430);
  }

  else
  {
    sub_10008875C(v75, &qword_10026F508, &qword_1001F1150);
    v77 = *(v131 + 32);
    v78 = v109;
    v77(v109, v76, v130);
    v77(v75, v78, v130);
    v69 = v130;
    *(v75 + *(v73 + 20)) = v72;
    v74(v75, 0, 1, v73);
  }

  v79 = v126;
  v80 = v129;
  sub_1001ABED4(v123, v126);
  v81 = a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  sub_1000B344C(v80, a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryModel);
  v82 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v75, v81 + v82[5], &qword_10026F508, &qword_1001F1150);
  (*(v131 + 16))(v81 + v82[6], v128, v69);
  sub_10009ADF0(v79, v81 + v82[7], &qword_10026F508, &qword_1001F1150);
  v83 = *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction);
  v84 = *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + *(**(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 128);
  swift_beginAccess();
  *(v84 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v85 = *(v127 + 56);

  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1000B35A8;
  *(v87 + 24) = v86;
  v88 = *(v85 + 16);
  v89 = swift_allocObject();
  v89[2] = v85;
  v89[3] = sub_1000B35B0;
  v89[4] = v87;
  v89[5] = a7;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1000B35B8;
  *(v90 + 24) = v89;
  v137 = sub_1000B3DA0;
  v138 = v90;
  aBlock = _NSConcreteStackBlock;
  v134 = 1107296256;
  v135 = sub_1000906F4;
  v136 = &unk_100243CB0;
  v91 = _Block_copy(&aBlock);
  swift_retain_n();

  swift_retain_n();

  dispatch_sync(v88, v91);
  _Block_release(v91);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

  if (v88)
  {
    __break(1u);
  }

  else
  {
    v93 = *(a7 + 80);
    v94 = *(a7 + 88);
    v95 = sub_10009BB74((a7 + 56), v93);
    v96 = *(v93 - 8);
    v97 = *(v96 + 64);
    __chkstk_darwin(v95);
    v99 = &v108 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v99);
    v100 = (*(v94 + 40))(v93, v94);
    (*(v96 + 8))(v99, v93);
    v101 = swift_allocObject();
    swift_weakInit();
    v102 = *(v100 + 16);
    v103 = swift_allocObject();
    v103[2] = v100;
    v103[3] = sub_1000B35C4;
    v103[4] = v101;
    v103[5] = a7;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_1000B3E58;
    *(v104 + 24) = v103;
    v137 = sub_1000B3DA0;
    v138 = v104;
    aBlock = _NSConcreteStackBlock;
    v134 = 1107296256;
    v135 = sub_1000906F4;
    v136 = &unk_100243D28;
    v105 = _Block_copy(&aBlock);

    dispatch_sync(v102, v105);
    _Block_release(v105);
    LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

    if ((v102 & 1) == 0)
    {
      sub_10008875C(v126, &qword_10026F508, &qword_1001F1150);
      sub_10008875C(v125, &qword_10026F508, &qword_1001F1150);
      sub_10008875C(v124, &unk_10026FC70, &unk_1001F1430);
      sub_10008875C(v129, &unk_10026F420, &unk_1001F0E50);
      v106 = *(v131 + 8);
      v107 = v130;
      v106(v128, v130);
      v106(v123, v107);
      sub_10008E7BC(v139);
      return a7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B1CE0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v134 = a8;
  v133 = a7;
  v138 = a6;
  v137 = a5;
  v135 = a4;
  v139 = a3;
  v147 = a1;
  v128 = a11;
  v12 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v144 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v123 - v16;
  v17 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v141 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v143 = &v123 - v21;
  v22 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v136 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v132 = &v123 - v27;
  __chkstk_darwin(v26);
  v146 = &v123 - v28;
  v131 = sub_1001C4D68();
  v130 = *(v131 - 8);
  v29 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1001C4CA8();
  v140 = *(v149 - 8);
  v31 = v140[8];
  v32 = __chkstk_darwin(v149);
  v124 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v145 = &v123 - v35;
  __chkstk_darwin(v34);
  v142 = &v123 - v36;
  v37 = sub_1001C6638();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v39 = sub_1001C5688();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v41 = sub_1001C6668();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154[3] = a10;
  v154[4] = a11;
  v127 = sub_1000B3C78(v154);
  v126 = a10;
  (*(*(v126 - 8) + 32))(v127, a2, v126);
  v125 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0;
  (*(v42 + 104))(v45, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v41);
  sub_1001C5668();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000B3814(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  v46 = v142;
  v47 = v147;
  sub_1001C68C8();
  v48 = v146;
  *(a9 + 144) = sub_1001C66A8();
  v49 = v134;
  v50 = v133;
  v133();
  v51 = v129;
  sub_1001C4CD8();
  sub_1001C4CE8();
  (*(v130 + 8))(v51, v131);
  *(a9 + 96) = v135;
  *(a9 + 120) = v50;
  *(a9 + 128) = v49;
  v52 = v138;
  *(a9 + 104) = v137;
  *(a9 + 112) = v52;
  v53 = v47[3];
  v54 = v47[4];
  sub_10009BB74(v47, v53);
  v55 = *(v54 + 8);

  v56 = v52;
  *(a9 + 136) = v55(v53, v54);
  sub_1000B3A90(v154, a9 + 56);
  v57 = (*(v128 + 40))(v126);
  (*(*v57 + 184))(v57);

  v58 = v139;
  *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_transactionProvider) = v139;
  v59 = v132;
  sub_10009ADF0(v48, v132, &unk_10026F420, &unk_1001F0E50);
  v60 = sub_100084528(&unk_10026F450, &qword_1001F76A0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = v136;
  sub_10009ADF0(v59, v136, &unk_10026F420, &unk_1001F0E50);
  v64 = v58;
  swift_unknownObjectRetain();
  v65 = sub_100098354(v63);
  sub_10008875C(v59, &unk_10026F420, &unk_1001F0E50);
  *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) = v65;
  v66 = type metadata accessor for ObservableTransaction();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction) = sub_10015C33C(0xD000000000000038, 0x80000001001FF380, v64, v69);
  *(a9 + 152) = 0;
  v70 = *(a9 + 112);
  v71 = sub_1001C5FE8();
  v72 = [v70 integerForKey:v71];

  v73 = sub_1001BC968(v72);
  if (v75)
  {
    v76 = v140;
    v77 = v143;
    (v140[7])(v143, 1, 1, v149);
  }

  else
  {
    v77 = v143;
    sub_1001ABADC(v73, v74, v143);
    v76 = v140;
  }

  v78 = *(a9 + 112);
  v79 = sub_1001C5FE8();
  v140 = [v78 integerForKey:v79];

  v80 = type metadata accessor for ReadingHistory.Streak(0);
  v81 = *(*(v80 - 8) + 56);
  v82 = v148;
  v81(v148, 1, 1, v80);
  v83 = v141;
  sub_10009ADF0(v77, v141, &unk_10026FC70, &unk_1001F1430);
  v84 = (v76[6])(v83, 1, v149);
  v85 = v145;
  if (v84 == 1)
  {
    sub_10008875C(v83, &unk_10026FC70, &unk_1001F1430);
  }

  else
  {
    sub_10008875C(v82, &qword_10026F508, &qword_1001F1150);
    v86 = v76[4];
    v139 = v81;
    v87 = v124;
    v88 = v83;
    v89 = v46;
    v90 = v85;
    v91 = v76;
    v92 = v149;
    v86(v124, v88, v149);
    v93 = v92;
    v76 = v91;
    v85 = v90;
    v46 = v89;
    v86(v148, v87, v93);
    v82 = v148;
    *&v148[*(v80 + 20)] = v140;
    v139(v82, 0, 1, v80);
  }

  v94 = v144;
  v95 = v146;
  sub_1001ABED4(v46, v144);
  v96 = a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  sub_1000B344C(v95, a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryModel);
  v97 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v82, v96 + v97[5], &qword_10026F508, &qword_1001F1150);
  (v76[2])(v96 + v97[6], v85, v149);
  sub_10009ADF0(v94, v96 + v97[7], &qword_10026F508, &qword_1001F1150);
  v98 = *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction);
  v99 = *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + *(**(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 128);
  swift_beginAccess();
  *(v99 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v100 = v147[3];
  v101 = v147[4];
  sub_10009BB74(v147, v100);
  (*(v101 + 16))(aBlock, v100, v101);
  v102 = v151;
  v103 = v152;
  sub_10009BB74(aBlock, v151);
  v104 = v76;
  v105 = swift_allocObject();
  swift_weakInit();
  v106 = *(v103 + 1);
  swift_retain_n();

  v106(a9, sub_1000B3E08, v105, v102, v103);

  sub_10008E7BC(aBlock);
  v108 = *(a9 + 80);
  v107 = *(a9 + 88);
  v109 = sub_10009BB74((a9 + 56), v108);
  v110 = *(v108 - 8);
  v111 = *(v110 + 64);
  __chkstk_darwin(v109);
  v113 = &v123 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v110 + 16))(v113);
  v114 = (*(v107 + 40))(v108, v107);
  (*(v110 + 8))(v113, v108);
  v115 = swift_allocObject();
  swift_weakInit();
  v116 = *(v114 + 16);
  v117 = swift_allocObject();
  v117[2] = v114;
  v117[3] = sub_1000B3E0C;
  v117[4] = v115;
  v117[5] = a9;
  v118 = swift_allocObject();
  *(v118 + 16) = sub_1000B3E58;
  *(v118 + 24) = v117;
  v152 = sub_1000B3DA0;
  v153 = v118;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v151 = &unk_100244138;
  v119 = _Block_copy(aBlock);

  dispatch_sync(v116, v119);
  _Block_release(v119);
  LOBYTE(v116) = swift_isEscapingClosureAtFileLocation();

  if (v116)
  {
    __break(1u);
  }

  else
  {
    sub_10008875C(v144, &qword_10026F508, &qword_1001F1150);
    sub_10008875C(v148, &qword_10026F508, &qword_1001F1150);
    sub_10008875C(v143, &unk_10026FC70, &unk_1001F1430);
    sub_10008875C(v146, &unk_10026F420, &unk_1001F0E50);
    v121 = v104[1];
    v122 = v149;
    v121(v145, v149);
    v121(v142, v122);
    sub_10008E7BC(v154);
    sub_10008E7BC(v147);
    return a9;
  }

  return result;
}

uint64_t sub_1000B2C88(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(a9);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  v23 = swift_allocObject();
  (*(v16 + 16))(v20, a2, a10);
  return sub_1000B1CE0(a1, v20, a3, a4, a5, v26, v27, v28, v23, a10, a11);
}

uint64_t sub_1000B2DB8()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v1 + 64) + v2 + v3) & ~v2));

  return sub_1000A53E0(v4, v0 + v3, v5);
}

uint64_t sub_1000B2E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B2E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B2EFC()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A6D0C(v3, v0 + v2, v4);
}

uint64_t sub_1000B3010()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1000AAF88(v1, v2);
}

uint64_t sub_1000B3080(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B30B8()
{
  result = type metadata accessor for ReadingHistoryDataStore.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistoryDataStore.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistoryDataStore.Config(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1000B327C()
{
  type metadata accessor for ReadingHistoryModel(319);
  if (v0 <= 0x3F)
  {
    sub_1000B331C();
    if (v1 <= 0x3F)
    {
      sub_1001C4CA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B331C()
{
  if (!qword_10026F708)
  {
    type metadata accessor for ReadingHistory.Streak(255);
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F708);
    }
  }
}

uint64_t sub_1000B3378()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7[0] = v4;
  *(v7 + 10) = *(v0 + 58);
  return sub_1000AC69C(v1, v2, &v6);
}

uint64_t sub_1000B33B4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = a1[1];
  v9 = *a1;
  v10[0] = v7;
  *(v10 + 10) = *(a1 + 26);
  return sub_1000AD1A8(&v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000B33F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 73);
  v6 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  return v2(v8);
}

uint64_t sub_1000B344C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B352C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  return sub_10009ADF0(v1 + v3, a1, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000B35CC()
{
  v1 = *(sub_100084528(&unk_10026F820, &unk_1001F1440) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A4068(v0 + v2, v3);
}

uint64_t sub_1000B3664(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  *(a1 + *(result + 44)) = *(v3 + *(result + 44));
  return result;
}

uint64_t sub_1000B36A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B3710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1000B3778()
{
  v1 = *(sub_100084528(&unk_10026FC70, &unk_1001F1430) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10009CC84(v3, v0 + v2, v4);
}

uint64_t sub_1000B3814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B385C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1000B38DC(void *a1)
{
  v2 = a1[1];
  if (*a1 == v1[2] && v2 == v1[3])
  {
    return 0;
  }

  return *a1 != v1[4] || v2 != v1[5];
}

uint64_t sub_1000B390C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B39A0()
{
  result = qword_10026F910;
  if (!qword_10026F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F910);
  }

  return result;
}

uint64_t sub_1000B39F4()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1000AA308(v0 + v2, v4, v6, v7);
}

uint64_t sub_1000B3A90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000B3B08(uint64_t *a1, uint64_t *a2)
{
  v3 = *(sub_100084528(a1, a2) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000AC5A0(*(v2 + 16), *(v2 + 24), v2 + v4);
}

uint64_t sub_1000B3B88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B3C14(uint64_t *a1, uint64_t *a2)
{
  v3 = *(sub_100084528(a1, a2) - 8);
  v4 = *(v2 + 24);
  return (*(v2 + 16))(v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

uint64_t *sub_1000B3C78(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000B3CDC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B3E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000B3EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B3EF0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001C6D08();
  }
}

uint64_t sub_1000B3F20()
{
  v0 = sub_1001C4E38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C4E58();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1001C4DD8();
  sub_100088824(v7, qword_10026F930);
  sub_100083274(v7, qword_10026F930);
  (*(v1 + 104))(v4, enum case for MClientIdentifier.booksWidget(_:), v0);
  v8 = [objc_opt_self() sharedProvider];
  v9 = [v8 activeStoreAccount];

  sub_1001C4E48();
  return sub_1001C4DC8();
}

uint64_t BDSBookWidgetInfoManager.fetch(adamIDs:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000B59D4;

  return sub_1000B4E24(a1);
}

uint64_t sub_1000B4160(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        v14 = *(*(a1 + 56) + 8 * v10);
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v31 = result;
      if (*(&_swiftEmptyDictionarySingleton + 3) <= *(&_swiftEmptyDictionarySingleton + 2))
      {
        v17 = *(&_swiftEmptyDictionarySingleton + 2);

        v18 = v14;
        sub_100188B74(v17 + 1, 1);
      }

      else
      {

        v16 = v14;
      }

      v19 = *(&_swiftEmptyDictionarySingleton + 5);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v20 = &_swiftEmptyDictionarySingleton + 64;
      v21 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(&_swiftEmptyDictionarySingleton + (v22 >> 6) + 8)) == 0)
      {
        break;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(&_swiftEmptyDictionarySingleton + (v22 >> 6) + 8))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v25 = v31;
LABEL_24:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      v30 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v24);
      *v30 = v12;
      v30[1] = v13;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v24) = v25;
      ++*(&_swiftEmptyDictionarySingleton + 2);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v26 = 0;
    v27 = (63 - v21) >> 6;
    v25 = v31;
    while (++v23 != v27 || (v26 & 1) == 0)
    {
      v28 = v23 == v27;
      if (v23 == v27)
      {
        v23 = 0;
      }

      v26 |= v28;
      v29 = *&v20[8 * v23];
      if (v29 != -1)
      {
        v24 = __clz(__rbit64(~v29)) + (v23 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v6)
      {

        return &_swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v15);
      ++v8;
      if (v5)
      {
        v8 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B4540(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1001C6298();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000B4624;

  return sub_1000B4E24(v5);
}

uint64_t sub_1000B4624()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1001C4A18();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100084528(&qword_10026F950, &qword_1001F15D0);
    isa = sub_1001C5EF8().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t BDSBookWidgetInfoManager.fetch(bookAssets:audiobookAssets:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000B48A4;

  return (sub_1000B52A0)(a1, a2);
}

uint64_t sub_1000B48A4(uint64_t a1)
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

uint64_t sub_1000B4B34(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1001C6298();
  v4[4] = v6;
  v7 = sub_1001C6298();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1000B4C3C;

  return sub_1000B52A0(v6, v7);
}

uint64_t sub_1000B4C3C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_1001C4A18();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100084528(&qword_10026F950, &qword_1001F15D0);
    isa = sub_1001C5EF8().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1000B4E24(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1001C4DE8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4EE4, 0, 0);
}

uint64_t sub_1000B4EE4()
{
  v1 = v0[5];
  sub_1001C4DF8();
  if (qword_10026EBC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1001C4DD8();
  sub_100083274(v2, qword_10026F930);
  v3 = sub_100118CD0(&off_1002421D0);
  v0[6] = v3;
  sub_1000B596C(&unk_1002421F0);
  v4 = async function pointer to MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1000B5024;
  v6 = v0[5];
  v7 = v0[2];

  return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v7, 0, 0, v3, 150, v6);
}

uint64_t sub_1000B5024(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v8 = sub_1000B5220;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = sub_1000B5170;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000B5170()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_1000B4160(v0[9]);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1000B5220()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_1000B52A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1001C4DE8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000B5360, 0, 0);
}

uint64_t sub_1000B5360()
{
  v1 = v0[6];
  sub_1001C4DF8();
  if (qword_10026EBC0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_1001C4DD8();
  sub_100083274(v4, qword_10026F930);
  v5 = sub_100118CD0(&off_100242210);
  v0[7] = v5;
  sub_1000B596C(&unk_100242230);
  v6 = async function pointer to MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1000B54B0;
  v8 = v0[6];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v2, v3, 0, 0, v5, 150, v8);
}

uint64_t sub_1000B54B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_1000B56AC;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_1000B55FC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000B55FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1001534F8(v0[10]);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000B56AC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_1000B572C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10009B25C;

  return sub_1000B4B34(v2, v3, v5, v4);
}

uint64_t sub_1000B57EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000B4540(v2, v3, v4);
}

uint64_t sub_1000B58A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009AAEC;

  return sub_100118688(a1, v4, v5, v7);
}

uint64_t sub_1000B596C(uint64_t a1)
{
  v2 = sub_100084528(&qword_100274250, &unk_1001F8730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static OS_os_log.crdtModelSync.getter()
{
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10026F958;

  return v1;
}

uint64_t sub_1000B5A34()
{
  sub_1000B5AA0();
  result = sub_1001C67E8();
  qword_10026F958 = result;
  return result;
}

unint64_t sub_1000B5AA0()
{
  result = qword_10026F7C0;
  if (!qword_10026F7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026F7C0);
  }

  return result;
}

uint64_t CRDTModelRevisionInfo.description.getter()
{
  v1 = 0x296C696E28;
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v16 - v4;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  if (v0[1])
  {
    v6 = *v0;
    v7 = v0[1];
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  v17._countAndFlagsBits = v6;
  v17._object = v7;
  sub_1001C6138(v17);

  v18._countAndFlagsBits = 8251;
  v18._object = 0xE200000000000000;
  sub_1001C6138(v18);
  if (v0[3])
  {
    v8 = v0[2];
    v9 = v0[3];
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x296C696E28;
  }

  v19._countAndFlagsBits = v8;
  v19._object = v9;
  sub_1001C6138(v19);

  v20._countAndFlagsBits = 8251;
  v20._object = 0xE200000000000000;
  sub_1001C6138(v20);
  v10 = type metadata accessor for CRDTModelRevisionInfo();
  sub_1000B5D2C(v0 + *(v10 + 24), v5);
  v11 = sub_1001C4CA8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_10008875C(v5, &unk_10026FC70, &unk_1001F1430);
    v13 = 0xE500000000000000;
  }

  else
  {
    v1 = sub_1001C4C08();
    v13 = v14;
    (*(v12 + 8))(v5, v11);
  }

  v21._countAndFlagsBits = v1;
  v21._object = v13;
  sub_1001C6138(v21);

  return v16[0];
}

uint64_t type metadata accessor for CRDTModelRevisionInfo()
{
  result = qword_10026F9E0;
  if (!qword_10026F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B5D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1000B5D9C()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1001C6E08(v1);
  return sub_1001C6E28();
}

Swift::Int sub_1000B5DE4()
{
  v1 = *v0;
  sub_1001C6DF8();
  sub_1001C6E08(v1);
  return sub_1001C6E28();
}

uint64_t sub_1000B5E28()
{
  v1 = 0x684364726F636572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1000B5E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B6D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B5ED0(uint64_t a1)
{
  v2 = sub_1000B6808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5F0C(uint64_t a1)
{
  v2 = sub_1000B6808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CRDTModelRevisionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_10026F960, &qword_1001F1608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000B6808();
  sub_1001C6E78();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1001C6C38();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_1001C6C38();
    v16 = *(type metadata accessor for CRDTModelRevisionInfo() + 24);
    v17[13] = 2;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_10026F970);
    sub_1001C6C58();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CRDTModelRevisionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_100084528(&qword_10026F978, &qword_1001F1610);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for CRDTModelRevisionInfo();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000B6808();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v23 = v12;
  v17 = v25;
  v29 = 0;
  *v15 = sub_1001C6BB8();
  v15[1] = v18;
  v22[1] = v18;
  v28 = 1;
  v15[2] = sub_1001C6BB8();
  v15[3] = v19;
  sub_1001C4CA8();
  v27 = 2;
  sub_1000B6E64(&qword_10026F980);
  v20 = v26;
  sub_1001C6BD8();
  (*(v17 + 8))(v11, v20);
  sub_1000B685C(v7, v15 + *(v23 + 24));
  sub_1000B68CC(v15, v24);
  sub_10008E7BC(a1);
  return sub_1000B6930(v15);
}

BOOL _s14bookdatastored21CRDTModelRevisionInfoV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_100084528(&qword_10026FA48, &unk_1001F17D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1001C6D08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_1001C6D08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = *(type metadata accessor for CRDTModelRevisionInfo() + 24);
  v22 = *(v13 + 48);
  sub_1000B5D2C(a1 + v21, v16);
  sub_1000B5D2C(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_10008875C(v16, &unk_10026FC70, &unk_1001F1430);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1000B5D2C(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_20:
    sub_10008875C(v16, &qword_10026FA48, &unk_1001F17D0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_1000B6E64(&unk_10026F440);
  v25 = sub_1001C5FD8();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_10008875C(v16, &unk_10026FC70, &unk_1001F1430);
  return (v25 & 1) != 0;
}

unint64_t sub_1000B6808()
{
  result = qword_10026F968;
  if (!qword_10026F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F968);
  }

  return result;
}

uint64_t sub_1000B685C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B68CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B6930(uint64_t a1)
{
  v2 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000B69B4()
{
  sub_1000B6A38();
  if (v0 <= 0x3F)
  {
    sub_1000B6A88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B6A38()
{
  if (!qword_10026F9F0)
  {
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F9F0);
    }
  }
}

void sub_1000B6A88()
{
  if (!qword_10026F9F8)
  {
    sub_1001C4CA8();
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_10026F9F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange.ChangeOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange.ChangeOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B6C34()
{
  result = qword_10026FA30;
  if (!qword_10026FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FA30);
  }

  return result;
}

unint64_t sub_1000B6C8C()
{
  result = qword_10026FA38;
  if (!qword_10026FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FA38);
  }

  return result;
}

unint64_t sub_1000B6CE4()
{
  result = qword_10026FA40;
  if (!qword_10026FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FA40);
  }

  return result;
}

uint64_t sub_1000B6D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697369766572 && a2 == 0xEC000000746E6948;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x684364726F636572 && a2 == 0xEF67615465676E61 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001001FF8B0 == a2)
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

uint64_t sub_1000B6E64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001C4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B6EA8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6FDC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B70D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  result = sub_100088714(0, &unk_10026FB00, NSUserDefaults_ptr);
  qword_10026FA68 = result;
  unk_10026FA70 = &protocol witness table for NSUserDefaults;
  qword_10026FA50 = v0;
  return result;
}

uint64_t sub_1000B7144()
{
  v0 = [objc_opt_self() defaultStore];
  result = sub_100088714(0, &qword_10026FAF8, NSUbiquitousKeyValueStore_ptr);
  qword_10026FA90 = result;
  unk_10026FA98 = &protocol witness table for NSUbiquitousKeyValueStore;
  qword_10026FA78 = v0;
  return result;
}

id ReadingGoalsService.init()()
{
  ObjectType = swift_getObjectType();
  if (qword_10026EBD0 != -1)
  {
    swift_once();
  }

  sub_1000B3A90(&qword_10026FA50, v7);
  if (qword_10026EBD8 != -1)
  {
    swift_once();
  }

  sub_1000B3A90(&qword_10026FA78, v6);
  type metadata accessor for ReadingGoalsDataStore();
  swift_allocObject();
  *&v0[OBJC_IVAR___BDSReadingGoalsService_goalsDataStore] = ReadingGoalsDataStore.init(localStore:syncStore:)(v7, v6);
  type metadata accessor for ReadingGoalsController();
  v2 = swift_allocObject();

  *&v0[OBJC_IVAR___BDSReadingGoalsService_goalsController] = sub_1000BB310(v3, v2);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t ReadingGoalsService.changeBooksFinishedGoal(to:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_1000B7330, 0, 0);
}

uint64_t sub_1000B7330()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001F0670;
  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v1;
  sub_1001C5118();

  v4 = *(v2 + OBJC_IVAR___BDSReadingGoalsService_goalsController);
  swift_beginAccess();
  sub_1000B3A90(v4 + 16, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  sub_10009BB74(v0 + 2, v5);
  (*(v6 + 40))(v1, v5, v6);
  sub_10008E7BC(v0 + 2);
  v7 = *(*(v4 + 56) + 16);
  sub_1001C6688();
  v0[12] = v0[3];
  v0[11] = v1;
  v8 = *(v4 + 56);
  v9 = swift_task_alloc();
  *(v9 + 16) = v0 + 11;
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  v11[2] = sub_1000BB820;
  v11[3] = v9;
  v11[4] = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000BB828;
  *(v12 + 24) = v11;
  v0[6] = sub_1000B2E48;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000906F4;
  v0[5] = &unk_1002443C0;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {

    v16 = v0[1];

    return v16(1);
  }

  return result;
}

uint64_t sub_1000B77D8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000BC03C;

  return ReadingGoalsService.changeBooksFinishedGoal(to:)(a1);
}

uint64_t ReadingGoalsService.changeDailyGoal(to:)(double a1)
{
  *(v2 + 112) = v1;
  *(v2 + 104) = a1;
  return _swift_task_switch(sub_1000B78B8, 0, 0);
}

uint64_t sub_1000B78B8()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = *(v0 + 13);
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001F0670;
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = v2;
  sub_1001C5118();

  v4 = *(v1 + OBJC_IVAR___BDSReadingGoalsService_goalsController);
  swift_beginAccess();
  sub_1000B3A90(v4 + 16, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  sub_10009BB74(v0 + 2, v5);
  (*(v6 + 48))(v5, v6, v2);
  sub_10008E7BC(v0 + 2);
  v7 = *(*(v4 + 56) + 16);
  sub_1001C6688();
  v0[11] = v0[2];
  *(v0 + 12) = v2;
  v8 = *(v4 + 56);
  v9 = swift_task_alloc();
  *(v9 + 16) = v0 + 11;
  v10 = *(v8 + 16);
  v11 = swift_allocObject();
  v11[2] = sub_1000BB820;
  v11[3] = v9;
  v11[4] = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000BC09C;
  *(v12 + 24) = v11;
  v0[6] = sub_1000B3DA0;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000906F4;
  v0[5] = &unk_100244438;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {

    v16 = v0[1];

    return v16(1);
  }

  return result;
}

uint64_t sub_1000B7D6C(const void *a1, void *a2, double a3)
{
  v3[2] = a2;
  v3[3] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1000B7E24;

  return ReadingGoalsService.changeDailyGoal(to:)(a3);
}

uint64_t sub_1000B7E24(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000B7F8C()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  sub_1001C5118();
  v2 = *(v1 + OBJC_IVAR___BDSReadingGoalsService_goalsController);
  swift_beginAccess();
  sub_1000B3A90((v2 + 2), (v0 + 8));
  v3 = v0[11];
  v4 = v0[12];
  sub_10009BB74(v0 + 8, v3);
  (*(v4 + 56))(v3, v4);
  sub_10008E7BC(v0 + 8);
  v5 = v2[5];
  v6 = v2[6];
  v7 = sub_10009BB74(v2 + 2, v5);
  v8 = *(v5 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v5);
  v11 = (*(v6 + 8))(v5, v6);
  v13 = v12;
  (*(v8 + 8))(v10, v5);

  v14 = v2[7];
  v15 = swift_task_alloc();
  *(v15 + 16) = v11;
  *(v15 + 24) = v13;
  v16 = *(v14 + 16);
  v17 = swift_allocObject();
  v17[2] = sub_1000BB84C;
  v17[3] = v15;
  v17[4] = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000BC09C;
  *(v18 + 24) = v17;
  v0[6] = sub_1000B3DA0;
  v0[7] = v18;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000906F4;
  v0[5] = &unk_1002444B0;
  v19 = _Block_copy(v0 + 2);
  v20 = v0[7];

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {

    v22 = v0[1];

    return v22(1);
  }

  return result;
}

uint64_t sub_1000B8464(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000BC03C;

  return ReadingGoalsService.clearData()();
}

uint64_t sub_1000B8528()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  if (qword_10026EBD0 != -1)
  {
    swift_once();
  }

  _s14bookdatastored21ReadingGoalsDataStoreC011clearCachedD02inyAA0b4GoaldE8Protocol_p_tFZ_0(qword_10026FA50);
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1000B87A0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_1000B8808, 0, 0);
}

uint64_t sub_1000B8808()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  if (qword_10026EBD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  _s14bookdatastored21ReadingGoalsDataStoreC011clearCachedD02inyAA0b4GoaldE8Protocol_p_tFZ_0(qword_10026FA50);
  v1[2](v1, 1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

bookdatastored::ReadingGoals::State __swiftcall ReadingGoalsService.state()()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v1 = *(*(*(v0 + OBJC_IVAR___BDSReadingGoalsService_goalsController) + 56) + 16);
  sub_1001C6688();
  v2 = v5;
  v3 = v6;
  result.streakDayGoal = v3;
  result.booksFinishedGoal = v2;
  return result;
}

uint64_t sub_1000B8A24()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 5);
  sub_1001C5118();
  v2 = *(*(*(v1 + OBJC_IVAR___BDSReadingGoalsService_goalsController) + 56) + 16);
  sub_1001C6688();
  v3 = v0[3];
  v4 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 2)];
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:v3];
  v6 = [objc_allocWithZone(BDSReadingGoalsStateInfo) initWithBooksFinishedGoal:v4 streakDayGoal:v5];

  v7 = *(v0 + 1);

  return v7(v6, 1);
}

uint64_t sub_1000B8D24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B8DCC;

  return ReadingGoalsService.stateInfo()();
}

uint64_t sub_1000B8DCC(void *a1, char a2)
{
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v10 = *v2;

  (v6)[2](v6, a1, a2 & 1);
  _Block_release(v6);

  v8 = *(v10 + 8);

  return v8();
}

id ReadingHistoryServiceStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B8FD8(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v3.super.isa = sub_1001C5EF8().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = sub_1001C5FE8();
  [v2 setDictionary:v3.super.isa forKey:v4];
}

Swift::Void __swiftcall NSUserDefaults.set(_:forKey:)(Swift::OpaquePointer_optional _, Swift::String forKey)
{
  if (_.value._rawValue)
  {
    v3.super.isa = sub_1001C5EF8().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = sub_1001C5FE8();
  [v2 setValue:v3.super.isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_1000B9130()
{
  v1 = *v0;
  v2 = sub_1001C5FE8();
  v3 = [v1 dictionaryForKey:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1001C5F08();

  return v4;
}

void sub_1000B91B8(uint64_t a1)
{
  v2 = *v1;
  if (a1)
  {
    v3.super.isa = sub_1001C5EF8().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = sub_1001C5FE8();
  [v2 setValue:v3.super.isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_1000B926C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100084528(&qword_10026FAE8, &unk_1001F1940);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v26 - v18;
  v20 = *(v17 + 56);
  sub_10009ADF0(a1, &v26 - v18, &unk_10026FC40, &qword_1001F0E90);
  sub_10009ADF0(a2, &v19[v20], &unk_10026FC40, &qword_1001F0E90);
  v21 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 2, v21);
  if (v23)
  {
    if (v23 == 1)
    {
      if (v22(&v19[v20], 2, v21) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v22(&v19[v20], 2, v21) == 2)
    {
LABEL_8:
      sub_10008875C(v19, &unk_10026FC40, &qword_1001F0E90);
      v24 = 1;
      return v24 & 1;
    }

LABEL_9:
    sub_10008875C(v19, &qword_10026FAE8, &unk_1001F1940);
    v24 = 0;
    return v24 & 1;
  }

  sub_10009ADF0(v19, v14, &unk_10026FC40, &qword_1001F0E90);
  if (v22(&v19[v20], 2, v21))
  {
    sub_1000BBED8(v14, type metadata accessor for ReadingHistoryModel);
    goto LABEL_9;
  }

  sub_1000BBF38(v14, v10, type metadata accessor for ReadingHistoryModel);
  sub_1000BBF38(&v19[v20], v8, type metadata accessor for ReadingHistoryModel);
  sub_1000BBE80();
  if (sub_1001C5C38())
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1001C5C38() ^ 1;
  }

  sub_1000BBED8(v8, type metadata accessor for ReadingHistoryModel);
  sub_1000BBED8(v10, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v19, &unk_10026FC40, &qword_1001F0E90);
  return v24 & 1;
}

BOOL sub_1000B95DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v55 = (&v49 - v10);
  v56 = sub_100084528(&qword_10026FAE0, &unk_1001F1930);
  v11 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v13 = &v49 - v12;
  v58 = type metadata accessor for ReadingHistoryModel(0);
  v14 = *(*(v58 - 8) + 64);
  v15 = __chkstk_darwin(v58);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v20 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v49 - v22;
  v24 = sub_100084528(&qword_10026FAE8, &unk_1001F1940);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v49 - v26;
  v28 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  if (*(a1 + *(v28 + 44)) != *(a2 + *(v28 + 44)))
  {
    return 0;
  }

  v51 = v4;
  v52 = v13;
  v50 = v7;
  v53 = v28;
  v29 = *(v28 + 48);
  v30 = *(v24 + 48);
  sub_10009ADF0(a1 + v29, v27, &unk_10026FC40, &qword_1001F0E90);
  v54 = a2;
  sub_10009ADF0(a2 + v29, &v27[v30], &unk_10026FC40, &qword_1001F0E90);
  v31 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v27, 2, v31);
  if (v33)
  {
    if (v33 == 1)
    {
      if (v32(&v27[v30], 2, v31) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    if (v32(&v27[v30], 2, v31) == 2)
    {
LABEL_9:
      sub_10008875C(v27, &unk_10026FC40, &qword_1001F0E90);
      goto LABEL_10;
    }

LABEL_15:
    v41 = &qword_10026FAE8;
    v42 = &unk_1001F1940;
LABEL_16:
    v43 = v27;
LABEL_17:
    sub_10008875C(v43, v41, v42);
    return 0;
  }

  sub_10009ADF0(v27, v23, &unk_10026FC40, &qword_1001F0E90);
  if (v32(&v27[v30], 2, v31))
  {
    sub_1000BBED8(v23, type metadata accessor for ReadingHistoryModel);
    goto LABEL_15;
  }

  sub_1000BBF38(v23, v19, type metadata accessor for ReadingHistoryModel);
  sub_1000BBF38(&v27[v30], v17, type metadata accessor for ReadingHistoryModel);
  sub_1000BBE80();
  if (sub_1001C5C38())
  {
    sub_1000BBED8(v17, type metadata accessor for ReadingHistoryModel);
    sub_1000BBED8(v19, type metadata accessor for ReadingHistoryModel);
    v41 = &unk_10026FC40;
    v42 = &qword_1001F0E90;
    goto LABEL_16;
  }

  v45 = sub_1001C5C38();
  sub_1000BBED8(v17, type metadata accessor for ReadingHistoryModel);
  sub_1000BBED8(v19, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v27, &unk_10026FC40, &qword_1001F0E90);
  if (v45)
  {
    return 0;
  }

LABEL_10:
  sub_1000BBE80();
  v34 = v54;
  if (sub_1001C5C38() & 1) != 0 || (sub_1001C5C38())
  {
    return 0;
  }

  v35 = *(v53 + 52);
  v36 = *(v56 + 48);
  v37 = v52;
  sub_10009ADF0(a1 + v35, v52, &unk_10026F410, &unk_1001F0E40);
  sub_10009ADF0(v34 + v35, v37 + v36, &unk_10026F410, &unk_1001F0E40);
  v38 = *(v57 + 48);
  v39 = v51;
  if (v38(v37, 1, v51) != 1)
  {
    v46 = v55;
    sub_10009ADF0(v37, v55, &unk_10026F410, &unk_1001F0E40);
    if (v38(v37 + v36, 1, v39) != 1)
    {
      v47 = v37 + v36;
      v48 = v50;
      sub_1000BBF38(v47, v50, type metadata accessor for CRDTModelRevisionInfo);
      v40 = _s14bookdatastored21CRDTModelRevisionInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v46, v48);
      sub_1000BBED8(v48, type metadata accessor for CRDTModelRevisionInfo);
      sub_1000BBED8(v46, type metadata accessor for CRDTModelRevisionInfo);
      sub_10008875C(v37, &unk_10026F410, &unk_1001F0E40);
      return v40;
    }

    sub_1000BBED8(v46, type metadata accessor for CRDTModelRevisionInfo);
    goto LABEL_26;
  }

  if (v38(v37 + v36, 1, v39) != 1)
  {
LABEL_26:
    v41 = &qword_10026FAE0;
    v42 = &unk_1001F1930;
    v43 = v37;
    goto LABEL_17;
  }

  sub_10008875C(v37, &unk_10026F410, &unk_1001F0E40);
  return 1;
}

uint64_t sub_1000B9CDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100084528(&qword_10026F7F8, &qword_1001F1420);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  v8 = type metadata accessor for CRDTModelSyncVersion();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  v15 = *(*v1 + 120);
  swift_beginAccess();
  sub_1000BBCF4(v1 + v15, v14);
  swift_beginAccess();
  sub_1000BBD58(a1, v1 + v15);
  swift_endAccess();
  sub_1000BBCF4(v1 + v15, v12);
  sub_100088714(0, &qword_10026FAD8, NSObject_ptr);
  v16 = *v14;
  v17 = *v12;
  if (sub_1001C67A8() & 1) != 0 && (v18 = *(v8 + 20), (sub_1001C5E98()))
  {
    sub_1000BBED8(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_1000BBED8(v12, type metadata accessor for CRDTModelSyncVersion);
  }

  else
  {
    sub_1000BBED8(v12, type metadata accessor for CRDTModelSyncVersion);
    v19 = *(sub_100084528(&unk_10026F800, &qword_1001F1428) + 48);
    sub_1000BBCF4(v14, v7);
    sub_1000BBCF4(v2 + v15, &v7[v19]);
    swift_storeEnumTagMultiPayload();
    sub_1000BA1CC(v7);
    sub_1000BBED8(a1, type metadata accessor for CRDTModelSyncVersion);
    sub_10008875C(v7, &qword_10026F7F8, &qword_1001F1420);
  }

  return sub_1000BBED8(v14, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000B9F6C(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v21[-v5];
  v7 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v21[-v12];
  v14 = *(*v1 + 120);
  swift_beginAccess();
  sub_10009ADF0(v1 + v14, v13, &unk_10026F420, &unk_1001F0E50);
  swift_beginAccess();
  sub_1000BBDBC(a1, v1 + v14);
  swift_endAccess();
  sub_10009ADF0(v1 + v14, v11, &unk_10026F420, &unk_1001F0E50);
  v15 = sub_1000B95DC(v13, v11);
  sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
  if (v15)
  {
    v16 = &unk_10026F420;
    v17 = &unk_1001F0E50;
    v18 = a1;
  }

  else
  {
    v19 = *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
    sub_10009ADF0(v13, v6, &unk_10026F420, &unk_1001F0E50);
    sub_10009ADF0(v1 + v14, &v6[v19], &unk_10026F420, &unk_1001F0E50);
    swift_storeEnumTagMultiPayload();
    sub_1000BA5CC(v6);
    sub_10008875C(a1, &unk_10026F420, &unk_1001F0E50);
    v16 = &unk_10026F820;
    v17 = &unk_1001F1440;
    v18 = v6;
  }

  sub_10008875C(v18, v16, v17);
  return sub_10008875C(v13, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000BA1CC(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1001C5688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5648();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = v1[3];
  sub_1001C5638();
  v34 = MarkedAsFinishedMechanism.rawValue.getter;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v26 = &v32;
  v32 = sub_1000DD4AC;
  v33 = &unk_100244780;
  v17 = _Block_copy(&aBlock);
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v17);
  v18 = *(v4 + 8);
  v24 = v4 + 8;
  v28 = v18;
  v18(v7, v3);
  v27 = *(v9 + 8);
  v27(v12, v8);
  v19 = swift_beginAccess();
  v25 = v3;
  v20 = v2[4];
  __chkstk_darwin(v19);
  *(&v24 - 2) = v29;

  sub_1000B6EA8(sub_1000BC048, (&v24 - 4), v20);

  sub_1001C5638();
  v21 = swift_allocObject();
  swift_weakInit();
  v34 = sub_1000BC044;
  v35 = v21;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000DD4AC;
  v33 = &unk_1002447D0;
  v22 = _Block_copy(&aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v22);
  v28(v7, v25);
  v27(v12, v8);
}

uint64_t sub_1000BA5CC(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1001C5688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5648();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + *(*v1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = v1[3];
  sub_1001C5638();
  v34 = MarkedAsFinishedMechanism.rawValue.getter;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v26 = &v32;
  v32 = sub_1000DD4AC;
  v33 = &unk_1002447F8;
  v17 = _Block_copy(&aBlock);
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v17);
  v18 = *(v4 + 8);
  v24 = v4 + 8;
  v28 = v18;
  v18(v7, v3);
  v27 = *(v9 + 8);
  v27(v12, v8);
  v19 = swift_beginAccess();
  v25 = v3;
  v20 = v2[4];
  __chkstk_darwin(v19);
  *(&v24 - 2) = v29;

  sub_1000B6EA8(sub_1000BBE2C, (&v24 - 4), v20);

  sub_1001C5638();
  v21 = swift_allocObject();
  swift_weakInit();
  v34 = sub_1000BBE64;
  v35 = v21;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000DD4AC;
  v33 = &unk_100244848;
  v22 = _Block_copy(&aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v22);
  v28(v7, v25);
  v27(v12, v8);
}

uint64_t sub_1000BA9CC(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1001C5688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v10;
    v15 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    v18 = v15;
    v10 = v14;
    v17(v1, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  v19 = *(v1 + 24);
  sub_1001C5638();
  *&v50[16] = MarkedAsFinishedMechanism.rawValue.getter;
  *&v50[24] = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *v50 = sub_1000DD4AC;
  *&v50[8] = &unk_100244870;
  v20 = _Block_copy(&aBlock);
  sub_1001C5668();
  v43 = v19;
  sub_1001C6698();
  _Block_release(v20);
  v21 = *(v5 + 8);
  v46 = v8;
  v47 = v5 + 8;
  v48 = v4;
  v42 = v21;
  v21(v8, v4);
  v22 = *(v10 + 8);
  v44 = v10 + 8;
  v45 = v9;
  v41 = v22;
  v22(v13, v9);
  swift_beginAccess();
  v23 = *(v2 + 32);
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = *(v2 + 32);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v26; result = )
  {
    v31 = i;
LABEL_11:
    v32 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v33 = *(v23 + 56) + ((v31 << 10) | (16 * v32));
    v35 = *v33;
    v34 = *(v33 + 8);
    v36 = a1[1];
    aBlock = *a1;
    *v50 = v36;
    *&v50[10] = *(a1 + 26);

    v35(&aBlock);
  }

  while (1)
  {
    v31 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v31 >= v27)
    {

      sub_1001C5638();
      v37 = swift_allocObject();
      swift_weakInit();
      *&v50[16] = sub_1000BBFA0;
      *&v50[24] = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *v50 = sub_1000DD4AC;
      *&v50[8] = &unk_1002448C0;
      v38 = _Block_copy(&aBlock);

      v39 = v46;
      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v38);
      v42(v39, v48);
      v41(v13, v45);
    }

    v26 = *(v23 + 64 + 8 * v31);
    ++i;
    if (v26)
    {
      i = v31;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAE40()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000BAF28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 72);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000BAFF8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CRDTModelSyncVersion();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a3 + 120);
  swift_beginAccess();
  sub_1000BBCF4(a3 + v9, v8);
  a1(v8);
  return sub_1000B9CDC(v8);
}

uint64_t sub_1000BB0C8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = *(*a3 + 120);
  swift_beginAccess();
  sub_10009ADF0(a3 + v9, v8, &unk_10026F420, &unk_1001F0E50);
  a1(v8);
  return sub_1000B9F6C(v8);
}

uint64_t sub_1000BB1B8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  v14 = *(a3 + 40);
  v15 = v5;
  v16 = v6;
  result = a1(&v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = *(a3 + 40);
  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  *(a3 + 40) = v14;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  if (v11 != v8 || v12 != v9)
  {
    goto LABEL_8;
  }

  if (v13 == 3)
  {
    if (v10 == 3)
    {
      return result;
    }

LABEL_8:
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = v13;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = 1;
    return sub_1000BA9CC(&v17);
  }

  if (v10 == 3 || v13 != v10)
  {
    goto LABEL_8;
  }

  return result;
}

double sub_1000BB2A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = *(a1 + 48);
  v5 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1000BB310(uint64_t a1, void *a2)
{
  v44[3] = type metadata accessor for ReadingGoalsDataStore();
  v44[4] = &protocol witness table for ReadingGoalsDataStore;
  v44[0] = a1;
  sub_1000B3A90(v44, (a2 + 2));
  v4 = sub_10015564C(0);
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v7 = COERCE_DOUBLE(sub_100155658(1));
  if (v8)
  {
    v9 = 300.0;
  }

  else
  {
    v9 = v7;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  swift_allocObject();
  a2[7] = sub_100098A20(v6, 2, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v11 = a2[5];
  v12 = a2[6];
  sub_10009D148((a2 + 2), v11);
  v13 = *(v12 + 24);

  v13(sub_1000BBFA8, v10, v11, v12);
  swift_endAccess();

  v14 = *(a2[7] + 16);
  sub_1001C6688();
  v15 = sub_10015564C(0);
  if (v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  v18 = COERCE_DOUBLE(sub_100155658(1));
  if (v19)
  {
    if (aBlock == v17 && *&v39 == 300.0)
    {
      goto LABEL_19;
    }
  }

  else if (aBlock == v17 && *&v39 == v18)
  {
    goto LABEL_19;
  }

  sub_1001C65B8();
  sub_1001C5118();
  v20 = a2[5];
  v21 = a2[6];
  v22 = sub_10009BB74(a2 + 2, v20);
  v23 = *(v20 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &aBlock - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26);
  v27 = (*(v21 + 8))(v20, v21);
  v29 = v28;
  v30 = (*(v23 + 8))(v26, v20);
  v31 = a2[7];
  __chkstk_darwin(v30);
  v37[2] = v27;
  v37[3] = v29;
  v32 = *(v31 + 16);
  v33 = swift_allocObject();
  v33[2] = sub_1000BC00C;
  v33[3] = v37;
  v33[4] = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1000BC09C;
  *(v34 + 24) = v33;
  v42 = sub_1000B3DA0;
  v43 = v34;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000906F4;
  v41 = &unk_100244960;
  v35 = _Block_copy(&aBlock);

  dispatch_sync(v32, v35);
  _Block_release(v35);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
LABEL_19:
    sub_10008E7BC(v44);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BB834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BB87C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000B8D24(v2, v3);
}

uint64_t sub_1000BB928()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000B87A0(v2);
}

uint64_t sub_1000BB9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009B25C;

  return sub_100118688(a1, v4, v5, v7);
}

uint64_t sub_1000BBAA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000B8464(v2, v3);
}

uint64_t sub_1000BBB4C()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009AAEC;

  return sub_1000B7D6C(v3, v4, v2);
}

uint64_t sub_1000BBC00()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BBC40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000B77D8(v2, v3, v4);
}

uint64_t sub_1000BBCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBE2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

unint64_t sub_1000BBE80()
{
  result = qword_10026F460;
  if (!qword_10026F460)
  {
    type metadata accessor for ReadingHistoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F460);
  }

  return result;
}

uint64_t sub_1000BBED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BBF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1000BBFB0@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1000BC0EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = &v1[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v12 = *&v1[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  if (v12 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = *v11;
    sub_10009AD9C(*v11, *&v1[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8]);
    isa = sub_1001C4B98().super.isa;
    v17 = [(objc_class *)isa bu_sha256];

    v18 = sub_1001C6018();
    v20 = v19;

    v35 = 0x2D363532616873;
    v36 = 0xE700000000000000;
    v37._countAndFlagsBits = v18;
    v37._object = v20;
    sub_1001C6138(v37);

    sub_1000887BC(v15, v12);
    v13 = v35;
    v14 = v36;
  }

  v21 = [v2 systemFields];
  if (v21 && (v22 = v21, v23 = [v21 recordChangeTag], v22, v23))
  {
    v24 = sub_1001C6018();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v2 modificationDate];
  if (v27)
  {
    v28 = v27;
    sub_1001C4C78();

    v29 = sub_1001C4CA8();
    (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
  }

  else
  {
    v30 = sub_1001C4CA8();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  }

  sub_10009AE58(v8, v10, &unk_10026FC70, &unk_1001F1430);
  if (v14)
  {

LABEL_16:
    v33 = type metadata accessor for CRDTModelRevisionInfo();
    sub_10009ADF0(v10, a1 + *(v33 + 24), &unk_10026FC70, &unk_1001F1430);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v24;
    a1[3] = v26;
    (*(*(v33 - 8) + 56))(a1, 0, 1, v33);
    return sub_10008875C(v10, &unk_10026FC70, &unk_1001F1430);
  }

  if (v26)
  {
    goto LABEL_16;
  }

  v31 = sub_1001C4CA8();
  if ((*(*(v31 - 8) + 48))(v10, 1, v31) != 1)
  {
    goto LABEL_16;
  }

  v32 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  return sub_10008875C(v10, &unk_10026FC70, &unk_1001F1430);
}

uint64_t sub_1000BC498(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v53 = swift_isaMask & *v2;
  v5 = *((swift_isaMask & v4) + 0x50);
  v6 = sub_1001C67F8();
  isa = v6[-1].isa;
  v51 = v6;
  v7 = *(isa + 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  __chkstk_darwin(v13);
  v52 = &v43 - v14;
  v15 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_1000BC0EC((&v43 - v18));
  v20 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8);
  if (v20 >> 60 == 15)
  {
    v25 = sub_1001C5128();
    v26 = sub_1001C6598();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "CRDTModelSyncManager resolveConflictsFor: couldn't deserialize resolved data", v27, 2u);
    }

    sub_1000C1508(v19);
    return sub_10008875C(v19, &unk_10026F410, &unk_1001F0E40);
  }

  else
  {
    v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v11;
    v21 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData);
    v22 = *(v2 + qword_10026FB18);
    sub_10009AD88(v21, v20);
    sub_10009AD88(v21, v20);
    v44 = *(v53 + 88);
    v23 = *(v44 + 8);
    v24 = v22;
    v46 = v21;
    sub_1001C5C88();
    v28 = v49;
    (*(v49 + 56))(v10, 0, 1, v5);
    v43 = *(v28 + 32);
    isa = (v28 + 32);
    v29 = v52;
    v43(v52, v10, v5);
    v51 = *(v2 + qword_10026FB10);
    v30 = v45;
    (*(v28 + 16))(v45, v29, v5);
    v31 = v48;
    sub_10009ADF0(v19, v48, &unk_10026F410, &unk_1001F0E40);
    v32 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (*(v47 + 80) + v33 + 8) & ~*(v47 + 80);
    v35 = swift_allocObject();
    v37 = v43;
    v36 = v44;
    *(v35 + 2) = v5;
    *(v35 + 3) = v36;
    *(v35 + 4) = *(v53 + 96);
    v37(&v35[v32], v30, v5);
    *&v35[v33] = v2;
    sub_10009AE58(v31, &v35[v34], &unk_10026F410, &unk_1001F0E40);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1000C5868;
    *(v38 + 24) = v35;
    aBlock[4] = sub_1000B3DA0;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100244CC8;
    v39 = _Block_copy(aBlock);
    v40 = v2;

    dispatch_sync(v51, v39);
    _Block_release(v39);
    sub_1000887BC(v46, v20);
    (*(v49 + 8))(v52, v5);
    sub_10008875C(v19, &unk_10026F410, &unk_1001F0E40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1000BCAD0()
{
  v9 = *(v0 + 80);
  swift_getMetatypeMetadata();
  v1 = sub_1001C6078();
  v3 = v2;
  sub_1001C61E8();
  v4 = sub_1001C6088();
  v6 = v5;

  v7 = sub_10014074C(15, v4, v6, v1, v3);

  return v7;
}

Swift::Int CRDTModelLocalFileManager.SyncError.hashValue.getter(char a1)
{
  sub_1001C6DF8();
  sub_1001C6E08(a1 & 1);
  return sub_1001C6E28();
}

Swift::Int sub_1000BCC20()
{
  sub_1001C6DF8();
  CRDTModelLocalFileManager.SyncError.hash(into:)(v2, *v0);
  return sub_1001C6E28();
}

id static CRDTModelSyncManager.defaultDataSource.getter()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  type metadata accessor for CRDTModelCloudDataManager();
  return sub_10018C64C();
}

uint64_t sub_1000BCC94@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x60);
  v6 = type metadata accessor for ModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = *(v1 + qword_10026FB20);

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v10, v3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t CRDTModelSyncManager.observable.getter()
{
  v1 = *(v0 + qword_10026FB10);
  v2 = *((swift_isaMask & *v0) + 0x50);
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x60);
  type metadata accessor for ModelState();
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  sub_1001C6688();
  return v6;
}

uint64_t CRDTModelSyncManager.model.getter()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *(v0 + qword_10026FB10);
  return sub_1001C6688();
}

uint64_t sub_1000BCF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(*(a1 + qword_10026FB20) + 16);

  sub_1001C6688();

  sub_10009B074(v7, a2, type metadata accessor for ReadingHistoryModel);
  return sub_10008875C(v7, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000BD090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *((swift_isaMask & *a1) + 0x50);
  v5 = *((swift_isaMask & *a1) + 0x58);
  v6 = *((swift_isaMask & *a1) + 0x60);
  v7 = type metadata accessor for ModelState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = *(a1 + qword_10026FB20);

  MutableObservableContainer.value.getter();

  (*(*(v4 - 8) + 16))(a2, v11, v4);
  return (*(v8 + 8))(v11, v7);
}

void sub_1000BD228(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    v5 = *(v1 + qword_10026FB30);
    sub_10018C624(v4);
  }
}

uint64_t CRDTModelSyncManager.enableCloudSync.getter()
{
  v1 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  return *(v0 + v1);
}

void CRDTModelSyncManager.enableCloudSync.setter(char a1)
{
  v3 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1000BD228(v4);
}

void (*sub_1000BD32C(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1000BD3C0;
}

void sub_1000BD3C0(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = *(*(v1 + 24) + qword_10026FB30);
    v7 = *(v6 + qword_100281A08);
    *(v6 + qword_100281A08) = v4;
    if (v4 != v7)
    {
      v8 = v1;
      sub_1000F1254(v4);
      v1 = v8;
    }
  }

  free(v1);
}

void (*CRDTModelSyncManager.enableCloudSync.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1000BD4D8;
}

void sub_1000BD4D8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  CRDTModelSyncManager.enableCloudSync.setter(*(*a1 + 32));

  free(v1);
}

char *CRDTModelSyncManager.__allocating_init(cloudKitController:crdtContext:dataSource:transactionProvider:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 10);
  v11 = *(v5 + 11);
  v12 = *(v5 + 12);
  type metadata accessor for CRDTModelCloudDataManager();
  v13 = a1;
  v14 = a2;
  v15 = a3;
  swift_unknownObjectRetain();
  v16 = sub_10018C444(v13, v14, v15, a4);
  v17 = objc_allocWithZone(v5);
  v18 = sub_1000BD60C(v16, v14, a4);

  *&v16[qword_100281A00 + 8] = &off_100244988;
  swift_unknownObjectWeakAssign();

  return v18;
}

char *sub_1000BD60C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v73 = a1;
  v74 = a3;
  v72 = a2;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = swift_isaMask;
  v70 = sub_1001C5148();
  v68 = *(v70 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v70);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v71 = &v65 - v11;
  v12 = *((v6 & v5) + 0x50);
  v13 = *((v6 & v5) + 0x58);
  v81 = *((v6 & v5) + 0x60);
  v82 = v13;
  v14 = type metadata accessor for ModelState.Source();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v69 = &v65 - v16;
  v80 = type metadata accessor for ModelState();
  v76 = *(v80 - 8);
  v17 = *(v76 + 64);
  v18 = __chkstk_darwin(v80);
  v79 = &v65 - v19;
  v78 = *(v12 - 8);
  v20 = *(v78 + 64);
  v21 = __chkstk_darwin(v18);
  v66 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v65 - v23;
  v65 = sub_1001C6668();
  v24 = *(v65 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v65);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001C6638();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v30 = sub_1001C5688();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v83[0] = 0;
  v83[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v83, "CRDTModelSync.");
  HIBYTE(v83[1]) = -18;
  v85._countAndFlagsBits = sub_1000BCAD0();
  sub_1001C6138(v85);

  v32 = v68;
  sub_1001C5138();
  v33 = qword_10026FB10;
  sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  (*(v24 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v65);
  *&v4[v33] = sub_1001C66A8();
  v4[direct field offset for CRDTModelSyncManager.enableCloudSync] = 0;
  v34 = v77;
  sub_1001C5B38();
  v35 = v72;
  *&v4[qword_10026FB18] = v72;
  v36 = v78;
  v37 = v66;
  (*(v78 + 16))(v66, v34, v12);
  v38 = v69;
  (*(v36 + 56))(v69, 1, 2, v12);
  v39 = type metadata accessor for CRDTModelRevisionInfo();
  v40 = v71;
  (*(*(v39 - 8) + 56))(v71, 1, 1, v39);
  v72 = v35;
  v41 = v79;
  ModelState.init(model:loaded:source:revisionInfo:)(v37, 0, v38, v40, v12, v79);
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  *&v4[qword_10026FB20] = sub_10015C6B4(v41);
  v43 = v73;
  v42 = v74;
  *&v4[qword_10026FB30] = v73;
  *&v4[qword_10026FB38] = v42;
  v44 = type metadata accessor for ObservableTransaction();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  swift_getObjectType();
  v48 = v42;
  swift_unknownObjectRetain_n();
  v49 = v43;
  *&v4[qword_10026FB28] = sub_10015C33C(0xD000000000000030, 0x80000001001FEE50, v48, v47);
  v84.receiver = v4;
  v84.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v84, "init");
  v51 = *&v50[qword_10026FB28];
  v52 = *&v50[qword_10026FB20] + *(**&v50[qword_10026FB20] + 128);
  swift_beginAccess();
  *(v52 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v53 = v75;
  v54 = v70;
  (*(v32 + 16))(v75, &v50[qword_1002818C0]);
  v55 = v50;
  v56 = v53;
  v57 = sub_1001C5128();
  v58 = sub_1001C65B8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "CRDTModelSyncManager Init: About to load cloudData", v59, 2u);
  }

  (*(v32 + 8))(v56, v54);
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  v62 = v81;
  v63 = v82;
  v61[2] = v12;
  v61[3] = v63;
  v61[4] = v62;
  v61[5] = v60;

  sub_10018C4A0(sub_1000C5AF8, v61);

  swift_unknownObjectRelease();

  (*(v76 + 8))(v79, v80);
  (*(v78 + 8))(v77, v12);

  return v55;
}

uint64_t sub_1000BDEDC(void *a1)
{
  v2 = sub_1001C5688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + qword_10026FB10);
    v14 = result;
    sub_1001C5638();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_1000C5B04;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100244DE0;
    v16 = _Block_copy(aBlock);
    v17 = a1;
    v18 = v14;
    sub_1001C5668();
    sub_1001C6698();
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_1000BE138(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = swift_isaMask;
  v108 = swift_isaMask & *a1;
  v6 = sub_1001C5AC8();
  v103 = *(v6 - 1);
  v104 = v6;
  v7 = *(v103 + 8);
  __chkstk_darwin(v6);
  v102 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v5 & v4) + 0x50);
  v10 = sub_1001C67F8();
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  __chkstk_darwin(v10);
  v13 = &v96 - v12;
  v14 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v21 = &v96 - v20;
  v22 = v9;
  v23 = *(v9 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v19);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v101 = &v96 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v96 - v31;
  v33 = __chkstk_darwin(v30);
  v105 = &v96 - v34;
  __chkstk_darwin(v33);
  v111 = &v96 - v35;
  sub_1000BCC94(&v96 - v35);
  v36 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v36 - 8) + 56))(v21, 1, 1, v36);
  if (!a2)
  {
    v50 = sub_1001C5128();
    v51 = sub_1001C65B8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "CRDTModelSyncManager Init: empty cloudData", v52, 2u);
    }

    v42 = v22;
    goto LABEL_12;
  }

  v109 = v23;
  v110 = a2;
  sub_1000BC0EC(v18);
  sub_10008875C(v21, &unk_10026F410, &unk_1001F0E40);
  sub_10009AE58(v18, v21, &unk_10026F410, &unk_1001F0E40);
  v37 = sub_1001C5128();
  v38 = sub_1001C65B8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "CRDTModelSyncManager Init: About to deserialize existing data", v39, 2u);
  }

  v40 = &v110[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v41 = *&v110[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  v42 = v22;
  if (v41 >> 60 == 15)
  {
    v47 = sub_1001C5128();
    v48 = sub_1001C6598();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "CRDTModelSyncManager Init: couldn't deserialize existing data", v49, 2u);
    }

    v23 = v109;
    goto LABEL_12;
  }

  v99 = v27;
  v100 = v21;
  v43 = *v40;
  v44 = *(a1 + qword_10026FB18);
  sub_10009AD88(*v40, v41);
  sub_10009AD88(v43, v41);
  v45 = *(*(v108 + 88) + 8);
  v46 = v44;
  sub_1001C5C88();
  v106 = v43;
  v107 = v41;
  v55 = v109;
  (*(v109 + 56))(v13, 0, 1, v42);
  v56 = v105;
  (*(v55 + 32))(v105, v13, v42);
  sub_1000BCC94(v32);
  v98 = v45;
  v57 = sub_1001C5C38();
  v58 = *(v55 + 8);
  v58(v32, v42);
  v59 = *(v55 + 16);
  if ((v57 & 1) == 0)
  {
    v77 = v99;
    v59(v99, v56, v42);
    v78 = v56;
    v79 = sub_1001C5128();
    v80 = v42;
    v81 = sub_1001C65B8();
    v82 = os_log_type_enabled(v79, v81);
    v21 = v100;
    if (v82)
    {
      v83 = swift_slowAlloc();
      v103 = v58;
      v84 = v83;
      v104 = swift_slowAlloc();
      v112[0] = v104;
      *v84 = 136315138;
      v85 = *(v108 + 96);
      v86 = sub_1001C6CC8();
      v88 = v87;
      v89 = v77;
      v90 = v103;
      v103(v89, v80);
      v91 = sub_1001874E8(v86, v88, v112);

      *(v84 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v79, v81, "CRDTModelSyncManager Init: loaded stored model=%s, no delta", v84, 0xCu);
      sub_10008E7BC(v104);

      sub_1000887BC(v106, v107);
      v90(v105, v80);
    }

    else
    {

      sub_1000887BC(v106, v107);
      v58(v77, v80);
      v58(v78, v80);
    }

    v42 = v80;
    v23 = v109;
LABEL_12:
    v53 = v111;
    goto LABEL_13;
  }

  v60 = v101;
  v59(v101, v56, v42);
  v61 = v42;
  v62 = sub_1001C5128();
  v63 = sub_1001C65B8();
  v64 = os_log_type_enabled(v62, v63);
  v21 = v100;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v97 = v62;
    v66 = v65;
    v99 = swift_slowAlloc();
    v112[0] = v99;
    *v66 = 136315394;
    v67 = *(v108 + 96);
    LODWORD(v108) = v63;
    v68 = sub_1001C6CC8();
    v70 = v69;
    v58(v60, v61);
    v71 = sub_1001874E8(v68, v70, v112);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2080;
    v53 = v111;
    swift_beginAccess();
    v72 = v58;
    v73 = sub_1001C6CC8();
    v75 = sub_1001874E8(v73, v74, v112);

    *(v66 + 14) = v75;
    v56 = v105;
    v76 = v97;
    _os_log_impl(&_mh_execute_header, v97, v108, "CRDTModelSyncManager Init: loaded stored model=%s, merging into existing=%s", v66, 0x16u);
    swift_arrayDestroy();

    v42 = v61;
  }

  else
  {

    v58(v60, v61);
    v42 = v61;
    v53 = v111;
    v72 = v58;
  }

  v92 = v106;
  v93 = v98;
  swift_beginAccess();
  v94 = *(v93 + 8);
  v95 = v102;
  sub_1001C5AB8();
  swift_endAccess();

  sub_1000887BC(v92, v107);
  (*(v103 + 1))(v95, v104);
  v72(v56, v42);
  v23 = v109;
LABEL_13:
  sub_1000BEBDC(a1, v53, v21);
  sub_10008875C(v21, &unk_10026F410, &unk_1001F0E40);
  return (*(v23 + 8))(v53, v42);
}

uint64_t sub_1000BEBDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + qword_10026FB20);
  v6[1] = *((swift_isaMask & *a1) + 0x50);
  v7 = *((swift_isaMask & v3) + 0x60);
  v8 = a2;
  v9 = a3;

  MutableObservableContainer.mutate(_:)(sub_1000C5A04, v6);
}

id CRDTModelSyncManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1001C5148();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + qword_1002818C0, v3);
  v8 = sub_1001C5128();
  v9 = sub_1001C65B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelSyncManager deinit", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1000BEE3C(uint64_t a1)
{
  v2 = qword_1002818C0;
  v3 = sub_1001C5148();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_10026FB20);

  v5 = *(a1 + qword_10026FB28);

  v6 = *(a1 + qword_10026FB38);

  return swift_unknownObjectRelease();
}

uint64_t CRDTModelSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + qword_10026FB10);
  sub_1001C5638();
  v13 = v2;
  v14 = a1;
  v15 = a2;
  sub_1001C6678();
  return (*(v6 + 8))(v9, v5);
}

void sub_1000BF080(uint64_t a1, int a2)
{
  v3 = v2;
  v141 = a2;
  v162 = a1;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v144 = &v132[-v6];
  v140 = type metadata accessor for CRDTModelRevisionInfo();
  v142 = *(v140 - 8);
  v7 = *(v142 + 64);
  __chkstk_darwin(v140);
  v138 = &v132[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v151 = &v132[-v11];
  v12 = sub_1001C5BD8();
  v148 = *(v12 - 8);
  v149 = v12;
  v13 = *(v148 + 8);
  __chkstk_darwin(v12);
  v147 = &v132[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v150 = &v132[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v132[-v19];
  v21 = type metadata accessor for ReadingHistoryModel(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v139 = &v132[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v143 = &v132[-v26];
  v27 = __chkstk_darwin(v25);
  v152 = &v132[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v132[-v30];
  __chkstk_darwin(v29);
  v33 = &v132[-v32];
  v34 = [*&v2[qword_10026FB38] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.q_sync"];
  v155 = qword_10026FB20;
  v35 = *(*&v2[qword_10026FB20] + 16);

  v154 = v15;
  v36 = v153;
  sub_1001C6688();
  v145 = v36;

  sub_10009B074(v20, v33, type metadata accessor for ReadingHistoryModel);
  v37 = v162;
  sub_10008875C(v20, &unk_10026F420, &unk_1001F0E50);
  v38 = sub_1000C5A60(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v153 = v21;
  v146 = v38;
  LOBYTE(v15) = sub_1001C5C38();
  sub_10009B0DC(v33, type metadata accessor for ReadingHistoryModel);
  if ((v15 & 1) == 0)
  {
    sub_100084528(&qword_10026FC50, &qword_1001F1A98);
    sub_1000885F4(&qword_10026FC58, &qword_10026FC50, &qword_1001F1A98);
    swift_allocError();
    *v57 = 0;
    swift_willThrow();

    return;
  }

  v136 = v34;
  v39 = qword_1002818C0;
  sub_10009B074(v37, v31, type metadata accessor for ReadingHistoryModel);
  v40 = v3;
  v137 = v39;
  v41 = sub_1001C5128();
  v42 = sub_1001C65B8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v135 = v40;
    v44 = v43;
    v134 = swift_slowAlloc();
    aBlock = v134;
    *v44 = 136315394;
    v133 = v42;
    v45 = ReadingHistoryModel.description.getter();
    v47 = v46;
    sub_10009B0DC(v31, type metadata accessor for ReadingHistoryModel);
    v48 = sub_1001874E8(v45, v47, &aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = *(*&v3[v155] + 16);

    v50 = v145;
    sub_1001C6688();
    v51 = v50;

    sub_10009B074(v20, v33, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v20, &unk_10026F420, &unk_1001F0E50);
    v52 = ReadingHistoryModel.description.getter();
    v54 = v53;
    sub_10009B0DC(v33, type metadata accessor for ReadingHistoryModel);
    v55 = sub_1001874E8(v52, v54, &aBlock);

    *(v44 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v41, v133, "CRDTModelSyncManager q_sync: incoming=%s and existing=%s", v44, 0x16u);
    swift_arrayDestroy();

    v40 = v135;

    v56 = v152;
  }

  else
  {

    sub_10009B0DC(v31, type metadata accessor for ReadingHistoryModel);
    v56 = v152;
    v51 = v145;
  }

  v58 = *(*&v3[v155] + 16);

  sub_1001C6688();
  v59 = v51;

  sub_10009B074(v20, v33, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v20, &unk_10026F420, &unk_1001F0E50);
  v60 = v3;
  sub_1001C5C78();
  sub_10009B0DC(v33, type metadata accessor for ReadingHistoryModel);
  v61 = *&v40[qword_10026FB18];
  v62 = v147;
  v63 = v148;
  v64 = v149;
  (*(v148 + 13))(v147, enum case for CRCodableVersion.version1(_:), v149);
  sub_1000C5A60(&unk_10026FC60, type metadata accessor for ReadingHistoryModel);
  v65 = sub_1001C5A98();
  if (!v59)
  {
    v76 = v66;
    v135 = v40;
    v77 = v62;
    v78 = v65;
    (*(v63 + 1))(v77, v64);
    v79 = v60;
    v80 = *(*&v60[v155] + 16);
    v153 = v78;
    sub_10009AD9C(v78, v76);

    v81 = v150;
    v82 = v154;
    sub_1001C6688();

    v83 = v142;
    v84 = *(v142 + 48);
    v85 = 1;
    v149 = *(v82 + 52);
    v86 = v140;
    if (!v84(&v81[v149], 1, v140))
    {
      v148 = type metadata accessor for CRDTModelRevisionInfo;
      v87 = v138;
      sub_10009B074(&v150[v149], v138, type metadata accessor for CRDTModelRevisionInfo);
      isa = sub_1001C4B98().super.isa;
      v89 = [(objc_class *)isa bu_sha256];

      v90 = sub_1001C6018();
      v92 = v91;

      aBlock = 0x2D363532616873;
      v157 = 0xE700000000000000;
      v163._countAndFlagsBits = v90;
      v163._object = v92;
      sub_1001C6138(v163);

      v93 = v157;
      v147 = aBlock;
      v95 = *(v87 + 2);
      v94 = *(v87 + 3);
      v96 = v79;
      v97 = v151;
      sub_10009ADF0(&v87[*(v86 + 24)], &v151[*(v86 + 24)], &unk_10026FC70, &unk_1001F1430);

      sub_10009B0DC(v87, v148);
      v85 = 0;
      *v97 = v147;
      v97[1] = v93;
      v97[2] = v95;
      v97[3] = v94;
      v82 = v154;
      v79 = v96;
      v83 = v142;
    }

    v98 = 1;
    (*(v83 + 56))(v151, v85, 1, v86);
    if (v141)
    {
      sub_10009B074(v162, v144, type metadata accessor for ReadingHistoryModel);
      v98 = 0;
    }

    v99 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v100 = v144;
    (*(*(v99 - 8) + 56))(v144, v98, 2, v99);
    v101 = v152;
    v102 = v150;
    sub_1000C5714(v152, v150);
    sub_1000C5778(v100, &v102[*(v82 + 48)], &unk_10026FC40, &qword_1001F0E90);
    v103 = sub_1000C5778(v151, &v102[v149], &unk_10026F410, &unk_1001F0E40);
    v162 = v132;
    v104 = *&v79[v155];
    __chkstk_darwin(v103);
    *&v132[-16] = v102;
    v105 = *(v104 + 16);
    v106 = swift_allocObject();
    v106[2] = sub_10009B018;
    v106[3] = &v132[-32];
    v106[4] = v104;
    v107 = swift_allocObject();
    *(v107 + 16) = sub_10009AD7C;
    *(v107 + 24) = v106;
    v160 = sub_1000B2E48;
    v161 = v107;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_1000906F4;
    v159 = &unk_100244B38;
    v108 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v105, v108);
    _Block_release(v108);
    LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

    if (v105)
    {
      __break(1u);
    }

    else
    {
      v109 = v139;
      sub_10009B074(v101, v139, type metadata accessor for ReadingHistoryModel);
      v110 = v153;
      sub_10009AD9C(v153, v76);
      sub_10009AD9C(v110, v76);
      v111 = sub_1001C5128();
      v112 = sub_1001C65B8();
      if (!os_log_type_enabled(v111, v112))
      {
        sub_1000887D0(v110, v76);
        sub_1000887D0(v110, v76);

        sub_10009B0DC(v109, type metadata accessor for ReadingHistoryModel);
        v124 = v136;
LABEL_29:
        v129 = *&v135[qword_10026FB30];
        v130 = swift_allocObject();
        *(v130 + 16) = v124;
        v131 = v124;
        sub_1000C1244(v110, v76, sub_1000C57F8, v130);

        sub_1000887D0(v110, v76);
        sub_1000887D0(v110, v76);
        sub_10008875C(v144, &unk_10026FC40, &qword_1001F0E90);
        sub_10008875C(v151, &unk_10026F410, &unk_1001F0E40);
        sub_10009B0DC(v101, type metadata accessor for ReadingHistoryModel);
        sub_10008875C(v150, &unk_10026F420, &unk_1001F0E50);
        return;
      }

      v113 = v109;
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      aBlock = v115;
      *v114 = 136315394;
      v116 = ReadingHistoryModel.description.getter();
      v118 = v117;
      sub_10009B0DC(v113, type metadata accessor for ReadingHistoryModel);
      v119 = sub_1001874E8(v116, v118, &aBlock);

      *(v114 + 4) = v119;
      *(v114 + 12) = 2048;
      v120 = v76 >> 62;
      if ((v76 >> 62) <= 1)
      {
        v101 = v152;
        if (!v120)
        {
          v121 = v153;
          sub_1000887D0(v153, v76);
          v122 = BYTE6(v76);
LABEL_28:
          *(v114 + 14) = v122;
          sub_1000887D0(v121, v76);
          _os_log_impl(&_mh_execute_header, v111, v112, "CRDTModelSyncManager q_sync: sending merged=%s as %ld bytes to BCCloudDataManager", v114, 0x16u);
          sub_10008E7BC(v115);

          v124 = v136;
          v110 = v121;
          goto LABEL_29;
        }

        v127 = v153;
        v128 = HIDWORD(v153);
        sub_1000887D0(v153, v76);
        LODWORD(v122) = v128 - v127;
        if (!__OFSUB__(v128, v127))
        {
          v122 = v122;
          goto LABEL_26;
        }

LABEL_33:
        __break(1u);
        return;
      }

      if (v120 != 2)
      {
        v121 = v153;
        sub_1000887D0(v153, v76);
        v122 = 0;
        v101 = v152;
        goto LABEL_28;
      }

      v126 = *(v153 + 16);
      v125 = *(v153 + 24);
      sub_1000887D0(v153, v76);
      v122 = v125 - v126;
      if (!__OFSUB__(v125, v126))
      {
        v101 = v152;
LABEL_26:
        v121 = v153;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  (*(v63 + 1))(v62, v64);
  v67 = v143;
  sub_10009B074(v56, v143, type metadata accessor for ReadingHistoryModel);
  v68 = sub_1001C5128();
  v69 = sub_1001C6598();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock = v71;
    *v70 = 136315138;
    v72 = ReadingHistoryModel.description.getter();
    v74 = v73;
    sub_10009B0DC(v67, type metadata accessor for ReadingHistoryModel);
    v75 = sub_1001874E8(v72, v74, &aBlock);

    *(v70 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v68, v69, "CRDTModelSyncManager q_sync: couldn't serialize model to sync: %s", v70, 0xCu);
    sub_10008E7BC(v71);
  }

  else
  {

    sub_10009B0DC(v67, type metadata accessor for ReadingHistoryModel);
  }

  sub_100084528(&qword_10026FC50, &qword_1001F1A98);
  sub_1000885F4(&qword_10026FC58, &qword_10026FC50, &qword_1001F1A98);
  swift_allocError();
  *v123 = 1;
  swift_willThrow();

  sub_10009B0DC(v56, type metadata accessor for ReadingHistoryModel);
}

void sub_1000C025C(uint64_t a1, int a2)
{
  v3 = v2;
  v157 = a2;
  v5 = *((swift_isaMask & *v2) + 0x50);
  v6 = *((swift_isaMask & *v2) + 0x58);
  v7 = *((swift_isaMask & *v2) + 0x60);
  v8 = type metadata accessor for ModelState.Source();
  v154 = *(v8 - 8);
  v155 = v8;
  v9 = *(v154 + 64);
  __chkstk_darwin(v8);
  v160 = &v139[-v10];
  v158 = type metadata accessor for CRDTModelRevisionInfo();
  v167 = *(v158 - 8);
  v11 = *(v167 + 64);
  __chkstk_darwin(v158);
  v149 = &v139[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v169 = &v139[-v15];
  v171 = v7;
  v166 = type metadata accessor for ModelState();
  v153 = *(v166 - 8);
  v16 = *(v153 + 64);
  __chkstk_darwin(v166);
  v168 = &v139[-v17];
  v18 = sub_1001C5BD8();
  v163 = *(v18 - 8);
  v164 = v18;
  v19 = *(v163 + 64);
  v20 = __chkstk_darwin(v18);
  v162 = &v139[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(v5 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v20);
  v159 = &v139[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v156 = &v139[-v27];
  v28 = __chkstk_darwin(v26);
  v170 = &v139[-v29];
  v30 = __chkstk_darwin(v28);
  v32 = &v139[-v31];
  __chkstk_darwin(v30);
  v34 = &v139[-v33];
  v35 = [*&v3[qword_10026FB38] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.q_sync"];
  sub_1000BCC94(v34);
  v161 = *(v6 + 8);
  LOBYTE(v7) = sub_1001C5C38();
  v172 = v22[1];
  v175 = v22 + 1;
  v172(v34, v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for CRDTModelSyncManager.SyncError();
    swift_getWitnessTable();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();

    return;
  }

  v148 = v6;
  v36 = qword_1002818C0;
  v143 = v22;
  v37 = v22[2];
  v151 = a1;
  v145 = v22 + 2;
  v150 = v37;
  v37(v32, a1, v5);
  v38 = v3;
  v146 = v36;
  v39 = sub_1001C5128();
  v40 = sub_1001C65B8();

  v41 = os_log_type_enabled(v39, v40);
  v144 = v35;
  v147 = v3;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v173 = v142;
    *v42 = 136315394;
    v141 = v39;
    v140 = v40;
    v43 = sub_1001C6CC8();
    v45 = v44;
    v46 = v32;
    v47 = v172;
    v172(v46, v5);
    v48 = sub_1001874E8(v43, v45, &v173);
    v49 = v170;
    v50 = v47;

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    sub_1000BCC94(v34);
    v51 = sub_1001C6CC8();
    v53 = v52;
    v50(v34, v5);
    v54 = sub_1001874E8(v51, v53, &v173);

    *(v42 + 14) = v54;
    v55 = v141;
    _os_log_impl(&_mh_execute_header, v141, v140, "CRDTModelSyncManager q_sync: incoming=%s and existing=%s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v172(v32, v5);
    v49 = v170;
  }

  v58 = v162;
  v57 = v163;
  sub_1000BCC94(v34);
  v59 = v38;
  v60 = v161;
  sub_1001C5C78();
  v172(v34, v5);
  v61 = *&v59[qword_10026FB18];
  v62 = v57;
  v63 = *(v57 + 104);
  v64 = v164;
  v63(v58, enum case for CRCodableVersion.version1(_:), v164);
  v65 = *(v60 + 8);
  v66 = v49;
  v67 = v165;
  v68 = sub_1001C5A98();
  v70 = v59;
  v71 = v167;
  if (!v67)
  {
    v84 = v69;
    v85 = v64;
    v86 = v68;
    (*(v62 + 8))(v58, v85);
    v163 = qword_10026FB20;
    v164 = v70;
    v87 = *&v70[qword_10026FB20];
    v165 = v86;
    sub_10009AD9C(v86, v84);

    v88 = v168;
    MutableObservableContainer.value.getter();

    v89 = *(v166 + 52);
    v90 = 1;
    v91 = &v88[v89];
    v92 = v158;
    if (!(*(v71 + 48))(v91, 1, v158))
    {
      v162 = type metadata accessor for CRDTModelRevisionInfo;
      v93 = v149;
      sub_10009B074(&v168[v89], v149, type metadata accessor for CRDTModelRevisionInfo);
      isa = sub_1001C4B98().super.isa;
      v95 = [(objc_class *)isa bu_sha256];

      v96 = sub_1001C6018();
      v98 = v97;

      v173 = 0x2D363532616873;
      v174 = 0xE700000000000000;
      v176._countAndFlagsBits = v96;
      v176._object = v98;
      sub_1001C6138(v176);

      v99 = v173;
      v100 = v174;
      v101 = *(v93 + 3);
      v161 = *(v93 + 2);
      v102 = *(v92 + 24);
      v103 = v169;
      sub_10009ADF0(&v93[v102], v169 + v102, &unk_10026FC70, &unk_1001F1430);

      sub_10009B0DC(v93, v162);
      v90 = 0;
      *v103 = v99;
      v103[1] = v100;
      v66 = v170;
      v103[2] = v161;
      v103[3] = v101;
      v71 = v167;
      v92 = v158;
    }

    v167 = v84;
    v104 = *(v71 + 56);
    v105 = 1;
    v104(v169, v90, 1, v92);
    if (v157)
    {
      v150(v160, v151, v5);
      v105 = 0;
    }

    v106 = v160;
    (v143[7])(v160, v105, 2, v5);
    v107 = v106;
    v108 = v168;
    v109 = ModelState.updating(model:source:revisionInfo:)(v66, v107, v169, v166);
    v110 = *(v164 + v163);
    __chkstk_darwin(v109);
    v111 = v148;
    *&v139[-32] = v5;
    *&v139[-24] = v111;
    *&v139[-16] = v171;
    *&v139[-8] = v108;

    MutableObservableContainer.mutate(_:)(sub_1000C5B7C, &v139[-48]);

    v112 = v156;
    v152 = v5;
    v150(v156, v66, v5);
    v113 = v165;
    v114 = v167;
    sub_10009AD9C(v165, v167);
    sub_10009AD9C(v113, v114);
    v115 = sub_1001C5128();
    v116 = sub_1001C65B8();
    if (!os_log_type_enabled(v115, v116))
    {
      sub_1000887D0(v113, v114);
      sub_1000887D0(v113, v114);

      v129 = v112;
      v130 = v172;
      v172(v129, v152);
      v125 = v66;
LABEL_28:
      v135 = *(v164 + qword_10026FB30);
      v136 = swift_allocObject();
      v137 = v144;
      *(v136 + 16) = v144;
      v138 = v137;
      sub_10018C6D4(v113, v114, sub_1000C5B80, v136);

      sub_1000887D0(v113, v114);
      sub_1000887D0(v113, v114);
      (*(v154 + 8))(v160, v155);
      sub_10008875C(v169, &unk_10026F410, &unk_1001F0E40);
      v130(v125, v152);
      (*(v153 + 8))(v168, v166);
      return;
    }

    LODWORD(v163) = v116;
    v117 = swift_slowAlloc();
    v118 = v112;
    v162 = swift_slowAlloc();
    v173 = v162;
    *v117 = 136315394;
    v119 = v152;
    v120 = sub_1001C6CC8();
    v122 = v121;
    v172(v118, v119);
    v123 = sub_1001874E8(v120, v122, &v173);

    *(v117 + 4) = v123;
    *(v117 + 12) = 2048;
    v124 = v114 >> 62;
    if ((v114 >> 62) > 1)
    {
      if (v124 != 2)
      {
        v113 = v165;
        sub_1000887D0(v165, v114);
        v126 = 0;
        v125 = v170;
        goto LABEL_27;
      }

      v132 = *(v165 + 16);
      v131 = *(v165 + 24);
      sub_1000887D0(v165, v114);
      v126 = v131 - v132;
      if (!__OFSUB__(v131, v132))
      {
        v125 = v170;
LABEL_25:
        v113 = v165;
        v114 = v167;
        goto LABEL_27;
      }

      __break(1u);
    }

    else
    {
      v125 = v170;
      if (!v124)
      {
        v113 = v165;
        v114 = v167;
        sub_1000887D0(v165, v167);
        v126 = BYTE6(v114);
LABEL_27:
        *(v117 + 14) = v126;
        sub_1000887D0(v113, v114);
        _os_log_impl(&_mh_execute_header, v115, v163, "CRDTModelSyncManager q_sync: sending merged=%s as %ld bytes to BCCloudDataManager", v117, 0x16u);
        sub_10008E7BC(v162);

        v130 = v172;
        goto LABEL_28;
      }

      v133 = v165;
      v134 = HIDWORD(v165);
      sub_1000887D0(v165, v167);
      LODWORD(v126) = v134 - v133;
      if (!__OFSUB__(v134, v133))
      {
        v126 = v126;
        goto LABEL_25;
      }
    }

    __break(1u);
    return;
  }

  (*(v62 + 8))(v58, v64);
  v72 = v159;
  v150(v159, v49, v5);
  v73 = sub_1001C5128();
  v74 = sub_1001C6598();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v152 = v5;
    v77 = v76;
    v173 = v76;
    *v75 = 136315138;
    v78 = sub_1001C6CC8();
    v80 = v79;
    v81 = v72;
    v82 = v172;
    v172(v81, v152);
    v83 = sub_1001874E8(v78, v80, &v173);

    *(v75 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v73, v74, "CRDTModelSyncManager q_sync: couldn't serialize model to sync: %s", v75, 0xCu);
    sub_10008E7BC(v77);
    v5 = v152;
  }

  else
  {

    v127 = v72;
    v82 = v172;
    v172(v127, v5);
  }

  type metadata accessor for CRDTModelSyncManager.SyncError();
  swift_getWitnessTable();
  swift_allocError();
  *v128 = 1;
  swift_willThrow();

  v82(v170, v5);
}

void sub_1000C1244(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [*&v5[qword_100273F70] createTransactionWithName:"com.apple.ibooks.CRDTModelSyncManager.setCloudData"];
  v22[0] = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v11 = sub_1001C6078();
  v13 = v12;
  objc_allocWithZone(type metadata accessor for CRDTModelSync());
  sub_10009AD9C(a1, a2);
  v14 = sub_100143EF4(v11, v13, a1, a2);
  v15 = *&v5[qword_100273F40];
  v16 = v14;
  sub_1000C2638();
  sub_100084528(&qword_10026FC80, &qword_1001F5970);
  isa = sub_1001C5EF8().super.isa;

  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = v10;
  v22[4] = sub_1000C5808;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_1000C4794;
  v22[3] = &unk_100244BB0;
  v19 = _Block_copy(v22);
  v20 = v5;

  v21 = v10;

  [v15 setCloudData:v16 predicate:0 mergers:isa completion:v19];
  _Block_release(v19);
}

void CRDTModelSyncManager.init()()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  sub_1000C55A8();
}

void sub_1000C14B4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  v3 = *((swift_isaMask & *a1) + 0x60);
  sub_1000C55A8();
}

uint64_t sub_1000C1508(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x60);
  v27 = *((swift_isaMask & *v1) + 0x58);
  v28 = v3;
  v26 = v4;
  v5 = type metadata accessor for ModelState();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for CRDTModelRevisionInfo();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a1, v12, &unk_10026F410, &unk_1001F0E40);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10008875C(v12, &unk_10026F410, &unk_1001F0E40);
  }

  sub_1000BBF38(v12, v17, type metadata accessor for CRDTModelRevisionInfo);
  v19 = qword_10026FB20;
  v20 = *(v1 + qword_10026FB20);

  v21 = v1;
  MutableObservableContainer.value.getter();

  v22 = *(v5 + 52);
  sub_10008875C(&v8[v22], &unk_10026F410, &unk_1001F0E40);
  sub_10009B074(v17, &v8[v22], type metadata accessor for CRDTModelRevisionInfo);
  v23 = (*(v14 + 56))(&v8[v22], 0, 1, v13);
  v24 = *(v21 + v19);
  __chkstk_darwin(v23);
  v25 = v27;
  *(&v26 - 4) = v28;
  *(&v26 - 3) = v25;
  *(&v26 - 2) = v26;
  *(&v26 - 1) = v8;

  MutableObservableContainer.mutate(_:)(sub_1000C5B7C, (&v26 - 6));

  sub_10009B0DC(v17, type metadata accessor for CRDTModelRevisionInfo);
  return (*(v29 + 8))(v8, v5);
}

uint64_t sub_1000C1868(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v122 = a3;
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = sub_1001C5AC8();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = *(v116 + 64);
  __chkstk_darwin(v7);
  v115 = &v100[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *((v6 & v5) + 0x50);
  v11 = *((v6 & v5) + 0x58);
  v124 = *((v6 & v5) + 0x60);
  v121 = type metadata accessor for ModelState();
  v119 = *(v121 - 8);
  v12 = *(v119 + 64);
  __chkstk_darwin(v121);
  v120 = &v100[-v13];
  v118 = v11;
  v14 = *(v11 + 8);
  v111 = *(v14 + 16);
  swift_getAssociatedTypeWitness();
  v110 = sub_1001C67F8();
  v15 = *(*(v110 - 8) + 64);
  v16 = __chkstk_darwin(v110);
  v109 = &v100[-v17];
  v18 = *(v10 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v16);
  v22 = &v100[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v100[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v100[-v27];
  __chkstk_darwin(v26);
  v30 = &v100[-v29];
  sub_1000BCC94(&v100[-v29]);
  v113 = v14;
  LOBYTE(v5) = sub_1001C5C38();
  v31 = v18[1];
  v123 = v18 + 1;
  v125 = v31;
  v31(v30, v10);
  v32 = qword_1002818C0;
  v114 = v18;
  v35 = v18[2];
  v34 = v18 + 2;
  v33 = v35;
  if (v5)
  {
    v36 = v33;
    v33(v28, a1, v10);
    v107 = v36;
    v36(v25, a1, v10);
    v37 = a2;
    v108 = v32;
    v38 = sub_1001C5128();
    v39 = sub_1001C65B8();
    v112 = v37;

    v40 = os_log_type_enabled(v38, v39);
    v41 = a1;
    v105 = v30;
    v106 = v34;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v126[0] = v103;
      *v42 = 136315650;
      v102 = v38;
      v101 = v39;
      v43 = sub_1001C6CC8();
      v104 = v41;
      v45 = v44;
      v125(v28, v10);
      v46 = sub_1001874E8(v43, v45, v126);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      sub_1000BCC94(v30);
      v47 = sub_1001C6CC8();
      v49 = v48;
      v50 = v125;
      v125(v30, v10);
      v51 = sub_1001874E8(v47, v49, v126);

      *(v42 + 14) = v51;
      *(v42 + 22) = 2080;
      v52 = v104;
      sub_1000BCC94(v30);
      sub_1001C5CB8();
      v53 = v30;
      v54 = v50;
      v41 = v52;
      v54(v53, v10);
      v55 = sub_1001C6098();
      v57 = v56;
      v54(v25, v10);
      v58 = sub_1001874E8(v55, v57, v126);

      *(v42 + 24) = v58;
      v59 = v102;
      _os_log_impl(&_mh_execute_header, v102, v101, "CRDTModelSyncManager resolveConflictsFor: merging resolved model: incoming=%s vs existing=%s with delta=%s", v42, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v74 = v125;
      v125(v25, v10);
      v74(v28, v10);
    }

    v75 = v112;
    v76 = qword_10026FB20;
    v77 = *&v112[qword_10026FB20];

    v78 = v120;
    MutableObservableContainer.value.getter();

    v79 = *(v113 + 8);
    v80 = v115;
    sub_1001C5AB8();
    (*(v116 + 8))(v80, v117);
    v81 = v121;
    v82 = *(v121 + 48);
    v83 = v41;
    v84 = v118;
    v85 = v124;
    v86 = type metadata accessor for ModelState.Source();
    (*(*(v86 - 8) + 8))(&v78[v82], v86);
    v107(&v78[v82], v83, v10);
    (v114[7])(&v78[v82], 0, 2, v10);
    v87 = sub_1000C5778(v122, &v78[*(v81 + 52)], &unk_10026F410, &unk_1001F0E40);
    v88 = *&v75[v76];
    __chkstk_darwin(v87);
    *&v100[-32] = v10;
    *&v100[-24] = v84;
    *&v100[-16] = v85;
    *&v100[-8] = v78;

    MutableObservableContainer.mutate(_:)(sub_1000C594C, &v100[-48]);

    v89 = v75;
    v90 = sub_1001C5128();
    v91 = sub_1001C65B8();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v126[0] = v93;
      *v92 = 136315138;
      v94 = v105;
      sub_1000BCC94(v105);
      v95 = sub_1001C6CC8();
      v97 = v96;
      v125(v94, v10);
      v98 = sub_1001874E8(v95, v97, v126);

      *(v92 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "CRDTModelSyncManager resolveConflictsFor: resolved model=%s", v92, 0xCu);
      sub_10008E7BC(v93);
    }

    return (*(v119 + 8))(v120, v121);
  }

  else
  {
    v33(v22, a1, v10);
    v60 = a2;
    v61 = sub_1001C5128();
    v62 = sub_1001C65B8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v121 = v60;
      v64 = v63;
      v120 = swift_slowAlloc();
      v126[0] = v120;
      *v64 = 136315394;
      v65 = sub_1001C6CC8();
      v67 = v66;
      v68 = v125;
      v125(v22, v10);
      v69 = sub_1001874E8(v65, v67, v126);

      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      sub_1000BCC94(v30);
      v70 = sub_1001C6CC8();
      v72 = v71;
      v68(v30, v10);
      v73 = sub_1001874E8(v70, v72, v126);

      *(v64 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v61, v62, "CRDTModelSyncManager resolveConflictsFor: incoming=%s has no delta from existing=%s", v64, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v125(v22, v10);
    }

    return sub_1000C1508(v122);
  }
}

uint64_t sub_1000C2300(uint64_t a1)
{
  v2 = *(*v1 + qword_10026FB10);
  v3 = *(a1 + 80);
  return sub_1001C6688();
}

uint64_t sub_1000C2364()
{
  v1 = *v0;
  v2 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_1000C23D0(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1000BD32C(v3);
  return sub_1000C2444;
}

void sub_1000C2444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000C248C()
{
  v1 = *(*v0 + qword_10026FB10);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000C250C(uint64_t a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v1;
  v9 = *(*v1 + qword_10026FB10);
  sub_1001C5638();
  v12 = v8;
  v13 = a1;
  v14 = 0;
  sub_1001C6678();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000C2638()
{
  v1 = qword_100273F68;
  if (*(v0 + qword_100273F68))
  {
    v2 = *(v0 + qword_100273F68);
  }

  else
  {
    v2 = sub_1000C26A0();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1000C26A0()
{
  type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v0 = sub_1001C6078();
  v2 = v1;
  sub_1001C61E8();
  v3 = sub_1001C6088();
  v5 = v4;

  v6 = sub_10014074C(15, v3, v5, v0, v2);
  v8 = v7;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;
  v19 = sub_1000C5814;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10018F040;
  v18 = &unk_100244C28;
  v11 = _Block_copy(&aBlock);

  sub_100084528(&qword_10026FC90, &unk_1001F81C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  aBlock = v6;
  v16 = v8;
  sub_1001C6968();
  *(inited + 72) = v11;
  v13 = sub_100118BA8(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_10026FC98, &unk_1001F1AB0);
  return v13;
}

void sub_1000C28A4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v223 = a4;
  v222 = a3;
  v221 = a2;
  v9 = sub_1001C5148();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1001C5BD8();
  v210 = *(v211 - 8);
  v14 = *(v210 + 64);
  __chkstk_darwin(v211);
  v209 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for ReadingHistoryModel(0);
  v216 = *(v218 - 8);
  v16 = v216[8];
  v17 = __chkstk_darwin(v218);
  v206 = &v197 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v212 = &v197 - v20;
  v21 = __chkstk_darwin(v19);
  v205 = &v197 - v22;
  v23 = __chkstk_darwin(v21);
  v204 = &v197 - v24;
  v25 = __chkstk_darwin(v23);
  v215 = &v197 - v26;
  v27 = __chkstk_darwin(v25);
  v203 = &v197 - v28;
  v29 = __chkstk_darwin(v27);
  v202 = &v197 - v30;
  v31 = __chkstk_darwin(v29);
  v208 = &v197 - v32;
  v33 = __chkstk_darwin(v31);
  v207 = &v197 - v34;
  v35 = __chkstk_darwin(v33);
  v213 = &v197 - v36;
  __chkstk_darwin(v35);
  v214 = &v197 - v37;
  v38 = sub_100084528(&qword_10026FCA0, &unk_1001F0E70);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v42 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v40);
  v45 = &v197 - v44;
  v46 = __chkstk_darwin(v43);
  v219 = &v197 - v47;
  __chkstk_darwin(v46);
  v217 = &v197 - v48;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v50 = Strong;
  sub_10008EBD0(a1, v228);
  if (!swift_dynamicCast())
  {

LABEL_7:
    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      (*(v10 + 16))(v13, v51 + qword_1002819F8, v9);

      sub_10008EBD0(a1, v228);

      v53 = v9;
      v54 = v10;
      v55 = a5;

      v56 = sub_1001C5128();
      v57 = sub_1001C65B8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v220 = a6;
        v59 = v58;
        v60 = swift_slowAlloc();
        v222 = v53;
        v225 = v60;
        *v59 = 136315650;
        swift_beginAccess();
        v231[0] = swift_unknownObjectWeakLoadStrong();
        sub_100084528(&qword_10026FCA8, &unk_1001F1AC0);
        v61 = sub_1001C6078();
        v63 = sub_1001874E8(v61, v62, &v225);

        *(v59 + 4) = v63;
        *(v59 + 12) = 2080;
        sub_10008EBD0(v228, v231);
        v64 = sub_1001C6078();
        v66 = v65;
        sub_10008E7BC(v228);
        v67 = sub_1001874E8(v64, v66, &v225);

        *(v59 + 14) = v67;
        *(v59 + 22) = 2080;
        *(v59 + 24) = sub_1001874E8(v223, v55, &v225);
        _os_log_impl(&_mh_execute_header, v56, v57, "CloudSyncConflictResolver: self=%s key=%s is not equal to recordType=%s", v59, 0x20u);
        swift_arrayDestroy();

        a6 = v220;

        (*(v54 + 8))(v13, v222);
      }

      else
      {

        sub_10008E7BC(v228);
        (*(v54 + 8))(v13, v53);
      }
    }

    *a6 = 0u;
    a6[1] = 0u;
    return;
  }

  v201 = v50;
  v220 = a6;
  if (v231[0] == v223 && v231[1] == a5)
  {

    goto LABEL_13;
  }

  v68 = sub_1001C6D08();

  if ((v68 & 1) == 0)
  {

    a6 = v220;
    goto LABEL_7;
  }

LABEL_13:
  sub_10009ADF0(v221, v228, &qword_10026FCB0, &unk_1001F14E0);
  sub_10009ADF0(v222, v229, &qword_10026FCB0, &unk_1001F14E0);
  v69 = v220;
  if (!v228[3])
  {
    if (!v230)
    {
LABEL_32:
      sub_10008875C(v228, &qword_10026FCB8, &qword_1001F1AD0);
      goto LABEL_33;
    }

    sub_10009ADF0(v229, v231, &qword_10026FCB0, &unk_1001F14E0);
    if (swift_dynamicCast())
    {
      v76 = v227[0];
      v77 = v227[1];
      v78 = sub_1001C5128();
      v79 = sub_1001C65B8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "CloudSyncConflictResolver: no existing data", v80, 2u);
      }

      sub_10008E7BC(v231);
      sub_10008875C(v229, &qword_10026FCB0, &unk_1001F14E0);
      sub_10008875C(v228, &qword_10026FCB0, &unk_1001F14E0);
      v81 = v220;
      *(v220 + 3) = &type metadata for Data;

      *v81 = v76;
      v81[1] = v77;
      return;
    }

LABEL_31:
    sub_10008E7BC(v231);
    goto LABEL_32;
  }

  sub_10009ADF0(v228, v231, &qword_10026FCB0, &unk_1001F14E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v70 = v231[4];
  v71 = v231[5];
  if (v230)
  {
    sub_10009ADF0(v229, v227, &qword_10026FCB0, &unk_1001F14E0);
    if (swift_dynamicCast())
    {
      v72 = v226;
      v223 = v225;
      if (sub_100144DE4(v70, v71, v225, v226))
      {
        v73 = sub_1001C5128();
        v74 = sub_1001C65B8();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "CloudSyncConflictResolver: incoming data and existing data are identical", v75, 2u);
        }

        *(v69 + 3) = &type metadata for Data;
        sub_1000887D0(v223, v72);

        *v69 = v70;
        *(v69 + 1) = v71;
        sub_10008E7BC(v227);
        sub_10008E7BC(v231);
        goto LABEL_58;
      }

      v222 = v72;
      v85 = qword_100273F60;
      v86 = *&v201[qword_100273F60];
      sub_10009AD9C(v70, v71);
      v87 = sub_1000C5A60(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
      v88 = v217;
      v200 = v87;
      sub_1001C5C88();
      v221 = v70;
      v89 = v216[7];
      v90 = v218;
      v89(v88, 0, 1, v218);
      v198 = v85;
      v91 = *&v201[v85];
      sub_10009AD9C(v223, v222);
      v92 = v90;
      sub_1001C5C88();
      v199 = v71;
      v93 = v215;
      v94 = v219;
      v89(v219, 0, 1, v92);
      v95 = v217;
      sub_10009ADF0(v217, v45, &qword_10026FCA0, &unk_1001F0E70);
      v96 = v216[6];
      if (v96(v45, 1, v92) == 1)
      {
        sub_10008875C(v45, &qword_10026FCA0, &unk_1001F0E70);
        v97 = v221;
        v98 = v199;
        sub_10009AD9C(v221, v199);
        v99 = v201;
        v100 = sub_1001C5128();
        v101 = sub_1001C65B8();
        sub_1000887D0(v97, v98);
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v224[0] = v103;
          *v102 = 136315138;
          sub_10009AD9C(v97, v98);
          v104 = sub_1001C4B58();
          v106 = v105;
          sub_1000887D0(v221, v98);
          v107 = sub_1001874E8(v104, v106, v224);
          v97 = v221;

          *(v102 + 4) = v107;
          v99 = v201;
          _os_log_impl(&_mh_execute_header, v100, v101, "CloudSyncConflictResolver: failed to deserialize either existingModel from %s", v102, 0xCu);
          sub_10008E7BC(v103);
        }

        v108 = v220;
        v109 = v219;
        v110 = v223;
        *(v220 + 3) = &type metadata for Data;

        sub_1000887D0(v110, v222);
        *v108 = v97;
        v108[1] = v98;
        sub_10008875C(v109, &qword_10026FCA0, &unk_1001F0E70);
        sub_10008875C(v95, &qword_10026FCA0, &unk_1001F0E70);
        sub_10008E7BC(v227);
        sub_10008E7BC(v231);
        goto LABEL_58;
      }

      v111 = v45;
      v112 = v214;
      sub_1000BBF38(v111, v214, type metadata accessor for ReadingHistoryModel);
      sub_10009ADF0(v94, v42, &qword_10026FCA0, &unk_1001F0E70);
      v113 = v96(v42, 1, v92);
      v114 = v201;
      v115 = v221;
      if (v113 == 1)
      {
        sub_10008875C(v42, &qword_10026FCA0, &unk_1001F0E70);
        v116 = v223;
        v117 = v222;
        sub_10009AD9C(v223, v222);
        v118 = sub_1001C5128();
        v119 = sub_1001C65B8();
        sub_1000887D0(v116, v117);
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v224[0] = v121;
          *v120 = 136315138;
          sub_10009AD9C(v223, v222);
          v122 = sub_1001C4B58();
          v124 = v123;
          sub_1000887D0(v223, v222);
          v125 = sub_1001874E8(v122, v124, v224);
          v115 = v221;

          *(v120 + 4) = v125;
          v114 = v201;
          _os_log_impl(&_mh_execute_header, v118, v119, "CloudSyncConflictResolver: failed to deserialize either incomingModel from %s", v120, 0xCu);
          sub_10008E7BC(v121);
          v116 = v223;

          v117 = v222;
        }

        v126 = v220;
        *(v220 + 3) = &type metadata for Data;

        sub_1000887D0(v116, v117);
        v127 = v199;
        *v126 = v115;
        v126[1] = v127;
        v128 = v112;
        goto LABEL_57;
      }

      v129 = v42;
      v130 = v213;
      sub_1000BBF38(v129, v213, type metadata accessor for ReadingHistoryModel);
      if (sub_1001C5C38())
      {
        if (sub_1001C5C38())
        {
          v131 = v202;
          sub_10009B074(v112, v202, type metadata accessor for ReadingHistoryModel);
          v132 = v203;
          sub_10009B074(v130, v203, type metadata accessor for ReadingHistoryModel);
          v133 = sub_1001C5128();
          v134 = sub_1001C65B8();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v224[0] = swift_slowAlloc();
            *v135 = 136315394;
            v136 = v205;
            sub_10009B074(v131, v205, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v131, type metadata accessor for ReadingHistoryModel);
            LODWORD(v216) = v134;
            v137 = ReadingHistoryModel.description.getter();
            v139 = v138;
            sub_10009B0DC(v136, type metadata accessor for ReadingHistoryModel);
            v140 = sub_1001874E8(v137, v139, v224);

            *(v135 + 4) = v140;
            *(v135 + 12) = 2080;
            sub_10009B074(v132, v136, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v132, type metadata accessor for ReadingHistoryModel);
            v141 = ReadingHistoryModel.description.getter();
            v143 = v142;
            sub_10009B0DC(v136, type metadata accessor for ReadingHistoryModel);
            v144 = sub_1001874E8(v141, v143, v224);

            *(v135 + 14) = v144;
            _os_log_impl(&_mh_execute_header, v133, v216, "CloudSyncConflictResolver: merging existing=%s with incoming=%s", v135, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_10009B0DC(v132, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v131, type metadata accessor for ReadingHistoryModel);
          }

          v177 = v206;
          v178 = v212;
          sub_1001C5C78();
          sub_10009B074(v178, v177, type metadata accessor for ReadingHistoryModel);
          v179 = sub_1001C5128();
          v180 = sub_1001C65B8();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v224[0] = v182;
            *v181 = 136315138;
            v183 = v205;
            sub_10009B074(v177, v205, type metadata accessor for ReadingHistoryModel);
            sub_10009B0DC(v177, type metadata accessor for ReadingHistoryModel);
            v184 = ReadingHistoryModel.description.getter();
            v186 = v185;
            sub_10009B0DC(v183, type metadata accessor for ReadingHistoryModel);
            v187 = sub_1001874E8(v184, v186, v224);

            *(v181 + 4) = v187;
            _os_log_impl(&_mh_execute_header, v179, v180, "CloudSyncConflictResolver: merged=%s", v181, 0xCu);
            sub_10008E7BC(v182);
          }

          else
          {
            sub_10009B0DC(v177, type metadata accessor for ReadingHistoryModel);
          }

          v190 = v217;
          v191 = v219;
          v192 = v223;
          v193 = *&v201[v198];
          (*(v210 + 104))(v209, enum case for CRCodableVersion.version1(_:), v211);
          sub_1000C5A60(&unk_10026FC60, type metadata accessor for ReadingHistoryModel);
          v194 = sub_1001C5A98();
          v196 = v195;
          v69 = v220;
          sub_1000887D0(v192, v222);
          sub_1000887D0(v221, v199);
          (*(v210 + 8))(v209, v211);
          sub_10009B0DC(v212, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v213, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v214, type metadata accessor for ReadingHistoryModel);
          sub_10008875C(v191, &qword_10026FCA0, &unk_1001F0E70);
          sub_10008875C(v190, &qword_10026FCA0, &unk_1001F0E70);
          sub_10008E7BC(v227);
          sub_10008E7BC(v231);
          sub_10008875C(v229, &qword_10026FCB0, &unk_1001F14E0);
          sub_10008875C(v228, &qword_10026FCB0, &unk_1001F14E0);
          if (v196 >> 60 != 15)
          {
            *(v69 + 3) = &type metadata for Data;

            *v69 = v194;
            *(v69 + 1) = v196;
            return;
          }

LABEL_33:

          *v69 = 0u;
          v69[1] = 0u;
          return;
        }

        sub_10009B074(v112, v93, type metadata accessor for ReadingHistoryModel);
        v159 = v204;
        sub_10009B074(v130, v204, type metadata accessor for ReadingHistoryModel);
        v160 = sub_1001C5128();
        v161 = sub_1001C65B8();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = v93;
          v163 = v159;
          v164 = swift_slowAlloc();
          v224[0] = swift_slowAlloc();
          *v164 = 136315394;
          v165 = ReadingHistoryModel.description.getter();
          v167 = v166;
          sub_10009B0DC(v162, type metadata accessor for ReadingHistoryModel);
          v168 = sub_1001874E8(v165, v167, v224);

          *(v164 + 4) = v168;
          *(v164 + 12) = 2080;
          v169 = ReadingHistoryModel.description.getter();
          v171 = v170;
          sub_10009B0DC(v163, type metadata accessor for ReadingHistoryModel);
          v172 = sub_1001874E8(v169, v171, v224);
          v173 = v221;

          *(v164 + 14) = v172;
          _os_log_impl(&_mh_execute_header, v160, v161, "CloudSyncConflictResolver: no delta on existing=%s from incoming=%s", v164, 0x16u);
          swift_arrayDestroy();
          v114 = v201;
        }

        else
        {
          v173 = v115;

          sub_10009B0DC(v159, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v93, type metadata accessor for ReadingHistoryModel);
        }

        v188 = v220;
        v189 = v222;
        *(v220 + 3) = &type metadata for Data;

        sub_1000887D0(v173, v199);
        *v188 = v223;
        v188[1] = v189;
        sub_10009B0DC(v213, type metadata accessor for ReadingHistoryModel);
        v128 = v214;
      }

      else
      {
        v145 = v207;
        sub_10009B074(v130, v207, type metadata accessor for ReadingHistoryModel);
        v146 = v208;
        sub_10009B074(v112, v208, type metadata accessor for ReadingHistoryModel);
        v147 = sub_1001C5128();
        v148 = sub_1001C65B8();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = v145;
          v150 = swift_slowAlloc();
          v224[0] = swift_slowAlloc();
          *v150 = 136315394;
          v151 = ReadingHistoryModel.description.getter();
          v153 = v152;
          sub_10009B0DC(v149, type metadata accessor for ReadingHistoryModel);
          v154 = sub_1001874E8(v151, v153, v224);

          *(v150 + 4) = v154;
          *(v150 + 12) = 2080;
          v155 = ReadingHistoryModel.description.getter();
          v157 = v156;
          v112 = v214;
          sub_10009B0DC(v146, type metadata accessor for ReadingHistoryModel);
          v158 = sub_1001874E8(v155, v157, v224);
          v115 = v221;

          *(v150 + 14) = v158;
          _os_log_impl(&_mh_execute_header, v147, v148, "CloudSyncConflictResolver: no delta on incoming=%s from existing=%s", v150, 0x16u);
          swift_arrayDestroy();
          v114 = v201;
        }

        else
        {

          sub_10009B0DC(v146, type metadata accessor for ReadingHistoryModel);
          sub_10009B0DC(v145, type metadata accessor for ReadingHistoryModel);
        }

        v174 = v220;
        v175 = v222;
        *(v220 + 3) = &type metadata for Data;

        sub_1000887D0(v223, v175);
        v176 = v199;
        *v174 = v115;
        v174[1] = v176;
        sub_10009B0DC(v213, type metadata accessor for ReadingHistoryModel);
        v128 = v112;
      }

LABEL_57:
      sub_10009B0DC(v128, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v219, &qword_10026FCA0, &unk_1001F0E70);
      sub_10008875C(v95, &qword_10026FCA0, &unk_1001F0E70);
      sub_10008E7BC(v227);
      sub_10008E7BC(v231);
LABEL_58:
      sub_10008875C(v229, &qword_10026FCB0, &unk_1001F14E0);
      sub_10008875C(v228, &qword_10026FCB0, &unk_1001F14E0);
      return;
    }

    sub_1000887D0(v70, v71);
    sub_10008E7BC(v227);
    goto LABEL_31;
  }

  v82 = sub_1001C5128();
  v83 = sub_1001C65B8();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "CloudSyncConflictResolver: no incoming data", v84, 2u);
  }

  sub_10008E7BC(v231);
  sub_10008875C(v229, &qword_10026FCB0, &unk_1001F14E0);
  sub_10008875C(v228, &qword_10026FCB0, &unk_1001F14E0);
  *(v69 + 3) = &type metadata for Data;

  *v69 = v70;
  *(v69 + 1) = v71;
}

id sub_1000C45B8(char a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  swift_errorRetain();
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v20 = a7;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 134218498;
    *(v14 + 4) = a1 & 1;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a2 & 1;
    *(v14 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      sub_1001C6D98();
    }

    sub_100084528(&qword_10026FC88, &unk_1001F1AA0);
    v16 = sub_1001C6078();
    v18 = sub_1001874E8(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelCloudDataManager q_sync: BCCloudDataManager is done: success=%ld hasChanges=%ld error=%s", v14, 0x20u);
    sub_10008E7BC(v15);

    a7 = v20;
  }

  else
  {
  }

  a5(a1 & 1);
  return [a7 endTransaction];
}

void sub_1000C4794(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1000C481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ModelState.Source();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v23 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModelState();
  (*(*(v21 - 8) + 8))(a1, v21);
  swift_beginAccess();
  (*(v17 + 16))(v20, a2, a4);
  (*(v17 + 56))(v16, 2, 2, a4);
  sub_10009ADF0(a3, v11, &unk_10026F410, &unk_1001F0E40);
  return ModelState.init(model:loaded:source:revisionInfo:)(v20, 1, v16, v11, a4, a1);
}

void sub_1000C4A54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1000C025C(v1, v2);
}

char *sub_1000C4AA8(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v95 = a5;
  v85 = a4;
  v86 = a3;
  v97 = a2;
  v92 = a1;
  ObjectType = swift_getObjectType();
  v93 = sub_1001C5148();
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  __chkstk_darwin(v93);
  v96 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v88 = v82 - v9;
  v10 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v11 = *(v10 - 8);
  v87 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v90 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v89 = v82 - v16;
  __chkstk_darwin(v15);
  v18 = v82 - v17;
  v19 = type metadata accessor for ReadingHistoryModel(0);
  v83 = v19;
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1001C6668();
  v84 = *(v98 - 1);
  v23 = *(v84 + 64);
  __chkstk_darwin(v98);
  v25 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001C6638();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = sub_1001C5688();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v82[1] = qword_1002818C0;
  v82[0] = ".ReadingHistoryDataStore.model";
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(&aBlock, "CRDTModelSync.");
  HIBYTE(aBlock) = -18;
  v104 = v19;
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v30 = sub_1001C6078();
  v32 = v31;
  sub_1001C61E8();
  v33 = sub_1001C6088();
  v35 = v34;

  v36 = sub_10014074C(15, v33, v35, v30, v32);
  v38 = v37;

  v106._countAndFlagsBits = v36;
  v106._object = v38;
  sub_1001C6138(v106);

  v39 = v85;
  sub_1001C5138();
  v40 = qword_10026FB10;
  sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  (*(v84 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v98);
  v41 = v86;
  *&v39[v40] = sub_1001C66A8();
  v39[direct field offset for CRDTModelSyncManager.enableCloudSync] = 0;
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490);
  sub_1001C5B58();
  v42 = v83;
  v43 = *(v83 + 20);
  sub_1001C4CA8();
  sub_1000C5A60(&unk_10026F440, &type metadata accessor for Date);
  sub_1001C5B58();
  *&v22[*(v42 + 24)] = &_swiftEmptyDictionarySingleton;
  v44 = v97;
  *&v39[qword_10026FB18] = v97;
  v98 = v22;
  sub_10009B074(v22, v18, type metadata accessor for ReadingHistoryModel);
  v45 = v87;
  v46 = *(v87 + 56);
  v47 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v47 - 8) + 56))(&v18[v46], 1, 2, v47);
  v48 = type metadata accessor for CRDTModelRevisionInfo();
  v49 = *(*(v48 - 8) + 56);
  v50 = v88;
  v49(v88, 1, 1, v48);
  v51 = *(v45 + 60);
  v49(&v18[v51], 1, 1, v48);
  v18[*(v45 + 52)] = 0;
  v52 = v44;
  sub_10009AC98(v50, &v18[v51]);
  v97 = v18;
  v53 = v18;
  v54 = v91;
  v55 = v89;
  sub_10009ADF0(v53, v89, &unk_10026F420, &unk_1001F0E50);
  v56 = sub_100084528(&unk_10026F450, &qword_1001F76A0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = v90;
  sub_10009ADF0(v55, v90, &unk_10026F420, &unk_1001F0E50);
  v60 = sub_100098354(v59);
  sub_10008875C(v55, &unk_10026F420, &unk_1001F0E50);
  *&v39[qword_10026FB20] = v60;
  v61 = v92;
  *&v39[qword_10026FB30] = v92;
  *&v39[qword_10026FB38] = v41;
  v62 = type metadata accessor for ObservableTransaction();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  swift_unknownObjectRetain_n();
  v66 = v61;
  v67 = v93;
  *&v39[qword_10026FB28] = sub_10015C33C(0xD000000000000030, 0x80000001001FEE50, v41, v65);
  v105.receiver = v39;
  v105.super_class = ObjectType;
  v68 = objc_msgSendSuper2(&v105, "init");
  v69 = *&v68[qword_10026FB28];
  v70 = *&v68[qword_10026FB20] + *(**&v68[qword_10026FB20] + 128);
  swift_beginAccess();
  *(v70 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v71 = v96;
  (*(v54 + 16))(v96, &v68[qword_1002818C0], v67);
  v72 = v68;
  v73 = sub_1001C5128();
  v74 = sub_1001C65B8();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "CRDTModelSyncManager Init: About to load cloudData", v75, 2u);
  }

  (*(v54 + 8))(v71, v67);
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = *&v66[qword_100273F40];
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = sub_10009AD08;
  v79[4] = v76;
  v102 = sub_10009A440;
  v103 = v79;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v100 = sub_1000982D4;
  v101 = &unk_100244D40;
  v80 = _Block_copy(&aBlock);
  swift_retain_n();

  [v77 cloudDataWithPredicate:0 sortDescriptors:0 completion:v80];
  _Block_release(v80);

  swift_unknownObjectRelease();

  sub_10009B0DC(v98, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v97, &unk_10026F420, &unk_1001F0E50);

  return v72;
}

uint64_t sub_1000C55F4()
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

void sub_1000C56E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1000BF080(v1, v2);
}

uint64_t sub_1000C5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000C57E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C5868()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(sub_100084528(&unk_10026F410, &unk_1001F0E40) - 8);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + *(v3 + 80) + 8) & ~*(v3 + 80));

  return sub_1000C1868(v0 + v1, v4, v5);
}

uint64_t sub_1000C5950(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ModelState();
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

uint64_t sub_1000C5A04(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1000C481C(a1, v1[5], v1[6], v1[2]);
}

unint64_t sub_1000C5A14()
{
  result = qword_10026F2D0;
  if (!qword_10026F2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026F2D0);
  }

  return result;
}

uint64_t sub_1000C5A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C5AA8(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1000C5AF8(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_1000BDEDC(a1);
}

uint64_t sub_1000C5B84(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_10026FD78, &qword_1001F1B68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1000C65A0();
  sub_1001C6E78();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20[15] = 0;
  sub_1000C6708();
  sub_1001C6CA8();
  if (!v2)
  {
    v13 = *(v3 + 16);
    LOBYTE(v21) = 1;
    sub_1001C6C78();
    v14 = _s8CardItemVMa();
    v15 = v14[6];
    LOBYTE(v21) = 2;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_10026F970);
    sub_1001C6CA8();
    v16 = *(v3 + v14[7]);
    LOBYTE(v21) = 3;
    sub_1001C6C88();
    v17 = (v3 + v14[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v21) = 4;
    sub_1001C6C68();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000C5DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1001C4CA8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_10026FD60, &qword_1001F1B60);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = _s8CardItemVMa();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_10009BB74(a1, v16);
  sub_1000C65A0();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(v34);
  }

  v18 = v32;
  v37 = 0;
  sub_1000C65F4();
  sub_1001C6C28();
  v19 = v36;
  *v15 = v35;
  *(v15 + 1) = v19;
  v29 = v19;
  LOBYTE(v35) = 1;
  v15[16] = sub_1001C6BF8() & 1;
  LOBYTE(v35) = 2;
  sub_1000B6E64(&qword_10026F980);
  sub_1001C6C28();
  (*(v31 + 32))(&v15[v12[6]], v7, v4);
  LOBYTE(v35) = 3;
  sub_1001C6C08();
  *&v15[v12[7]] = v20;
  LOBYTE(v35) = 4;
  v21 = sub_1001C6BE8();
  v28 = v22;
  v23 = v21;
  (*(v18 + 8))(v11, v33);
  v24 = &v15[v12[8]];
  v25 = v28;
  *v24 = v23;
  *(v24 + 1) = v25;
  sub_1000C6648(v15, v30);
  sub_10008E7BC(v34);
  return sub_1000C66AC(v15);
}

uint64_t sub_1000C622C()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 1702125924;
  v4 = 0x6563697270;
  if (v1 != 3)
  {
    v4 = 0x657474616D726F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x626F696475417369;
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

uint64_t sub_1000C62CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C69B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C6300(uint64_t a1)
{
  v2 = sub_1000C65A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C633C(uint64_t a1)
{
  v2 = sub_1000C65A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C63AC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = _s8CardItemVMa();
  v6 = v5[6];
  if ((sub_1001C4C68() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v7 = v5[8];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_1001C6D08();
}

uint64_t _s8CardItemVMa()
{
  result = qword_10026FD18;
  if (!qword_10026FD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6504()
{
  result = sub_1001C4CA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000C65A0()
{
  result = qword_10026FD68;
  if (!qword_10026FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD68);
  }

  return result;
}

unint64_t sub_1000C65F4()
{
  result = qword_10026FD70;
  if (!qword_10026FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD70);
  }

  return result;
}

uint64_t sub_1000C6648(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardItemVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C66AC(uint64_t a1)
{
  v2 = _s8CardItemVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C6708()
{
  result = qword_10026FD80;
  if (!qword_10026FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD80);
  }

  return result;
}

uint64_t _s8CardItemV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8CardItemV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C68B0()
{
  result = qword_10026FD88;
  if (!qword_10026FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD88);
  }

  return result;
}

unint64_t sub_1000C6908()
{
  result = qword_10026FD90;
  if (!qword_10026FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD90);
  }

  return result;
}

unint64_t sub_1000C6960()
{
  result = qword_10026FD98;
  if (!qword_10026FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FD98);
  }

  return result;
}

uint64_t sub_1000C69B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626F696475417369 && a2 == 0xEB000000006B6F6FLL || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE00656369725064)
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

uint64_t type metadata accessor for CRDTModelSyncVersion()
{
  result = qword_10026FDF8;
  if (!qword_10026FDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRDTModelSyncVersion.serializedData()()
{
  v1 = sub_1001C5BD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for CRDTModelSyncVersion() + 20);
  v7 = *v0;
  (*(v2 + 104))(v5, enum case for CRCodableVersion.version3(_:), v1);
  sub_1001C5EB8();
  v8 = sub_1001C5CE8();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t static CRDTModelSyncVersion.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1000C6DE4();
  v4 = *a1;
  v5 = *a2;
  if ((sub_1001C67A8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CRDTModelSyncVersion() + 20);

  return sub_1001C5E98();
}

unint64_t sub_1000C6DE4()
{
  result = qword_10026FAD8;
  if (!qword_10026FAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026FAD8);
  }

  return result;
}

uint64_t sub_1000C6E30(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1000C6DE4();
  v6 = *a1;
  v7 = *a2;
  if ((sub_1001C67A8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_1001C5E98();
}

uint64_t sub_1000C6EFC()
{
  result = sub_1001C5E38();
  if (v1 <= 0x3F)
  {
    result = sub_1001C5EB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000C6F80(char a1)
{
  if (v1[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] != (a1 & 1))
  {
    v2 = v1;
    v1[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] = a1 & 1;
    if (qword_10026EC88 != -1)
    {
      swift_once();
    }

    v4 = sub_1001C5148();
    sub_100083274(v4, qword_100274110);
    v5 = sub_1001C5128();
    v6 = sub_1001C6588();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureEngagementManagerService #enableCloudSync setEnableCloudSync %{BOOL}d", v7, 8u);
    }

    v8 = *&v2[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController];
    v9 = [v8 privateCloudDatabaseController];
    v10 = *&v2[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager];
    v12 = v9;
    if (a1)
    {
      [v9 addObserver:v10 recordType:@"SecureEngagement"];

      v11 = [v8 transactionManager];
      v12 = [v2 entityName];
      [v11 signalSyncToCKTransactionForEntityName:? syncManager:?];
    }

    else
    {
      [v9 removeObserver:v10 recordType:@"SecureEngagement"];
    }
  }
}

char *sub_1000C718C(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR___BDSSecureEngagementManagerService_dataModelName];
  *v6 = 0xD000000000000013;
  *(v6 + 1) = 0x80000001001FFD80;
  v7 = &v2[OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x80000001001FFDA0;
  v2[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] = 0;
  if (qword_10026EC88 != -1)
  {
    swift_once();
  }

  v8 = sub_1001C5148();
  sub_100083274(v8, qword_100274110);
  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Initializing BDSSecureEngagementManagerService", v11, 2u);
  }

  v12 = OBJC_IVAR___BDSSecureEngagementManagerService_secureDataSource;
  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_secureDataSource] = a1;
  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController] = a2;
  v13 = objc_allocWithZone(BCCloudDataSyncManager);
  v33 = a1;
  v14 = a2;
  v15 = [v13 initWithCloudKitController:v14];
  v16 = OBJC_IVAR___BDSSecureEngagementManagerService_syncManager;
  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager] = v15;
  v17 = [*&v3[v12] managedObjectContext];
  v18 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v17 zoneName:@"SecureUserDataZone" cloudKitController:v14];

  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_changeTokenController] = v18;
  v19 = *&v3[v12];
  v35 = sub_100088714(0, &qword_10026FE98, &off_10023DD60);
  v32 = v19;
  sub_100084528(&qword_10026FEA0, &qword_1001F1D48);
  sub_1001C6078();
  sub_1001C6018();
  sub_100088714(0, &qword_10026FEA8, off_10023DD38);
  v20 = *&v3[v16];
  v21 = objc_allocWithZone(BCCloudDataManager);
  v22 = v14;
  v23 = v20;
  v24 = sub_1001C5FE8();

  v25 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [v21 initWithCloudDataSource:v32 entityName:v24 notificationName:v25 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v23 cloudKitController:v22];

  *&v3[OBJC_IVAR___BDSSecureEngagementManagerService_dataManager] = v27;
  v34.receiver = v3;
  v34.super_class = type metadata accessor for CloudSecureEngagementManagerService();
  v28 = objc_msgSendSuper2(&v34, "init");
  v29 = *&v28[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager];
  v30 = v28;
  [v29 setDelegate:v30];

  return v30;
}

id sub_1000C757C()
{
  v1 = [*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController] privateCloudDatabaseController];
  v2 = OBJC_IVAR___BDSSecureEngagementManagerService_syncManager;
  [v1 removeObserver:*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager]];

  [*&v0[v2] setDelegate:0];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CloudSecureEngagementManagerService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000C775C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000C7A14(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001F0660;
  v10 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  v9 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;

  v11 = [a1 startTimestampString];
  v12 = sub_1001C6018();
  v14 = v13;

  *(v8 + 88) = &type metadata for String;
  *(v8 + 64) = v12;
  *(v8 + 72) = v14;
  v15 = sub_1001C5FE8();
  isa = sub_1001C6288().super.isa;

  v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v20[4] = sub_1000CACF0;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000C7C24;
  v20[3] = &unk_1002452A8;
  v19 = _Block_copy(v20);

  [v7 setCloudData:a1 predicate:v17 isEqualCheckIgnoringEmptySalt:1 completion:v19];
  _Block_release(v19);
}

void sub_1000C7C24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, v9);
}

void sub_1000C7D50(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1001C4A18();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2 & 1);
}

void sub_1000C7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100153948(a1);
  sub_100084528(&qword_100271010, &unk_1001F1D60);
  isa = sub_1001C5EF8().super.isa;

  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001F0660;
  v10 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  v11 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  *(v9 + 88) = sub_100084528(&unk_10026FEF0, &qword_1001F1D70);
  *(v9 + 64) = a1;

  v12 = sub_1001C5FE8();
  v13 = sub_1001C6288().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:v13];

  v15 = sub_1001C5FE8();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v18[4] = sub_1000CABAC;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000C7C24;
  v18[3] = &unk_100245258;
  v17 = _Block_copy(v18);

  [v7 setCloudData:isa predicate:v14 propertyIDKey:v15 isEqualCheckIgnoringEmptySalt:1 completion:v17];
  _Block_release(v17);
}

void sub_1000C80FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F0660;
  v11 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v10 + 32) = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  *(v10 + 40) = v11;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;

  v12 = sub_1001C5FE8();
  isa = sub_1001C6288().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v17[4] = sub_1000CACE0;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000982D4;
  v17[3] = &unk_100245208;
  v16 = _Block_copy(v17);

  [v9 cloudDataWithPredicate:v14 sortDescriptors:0 completion:v16];
  _Block_release(v16);
}

void sub_1000C8318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1001C4A18();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1000C8388(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(v5 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001F0660;
    v12 = *(v5 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
    *(v11 + 32) = *(v5 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
    *(v11 + 40) = v12;
    *(v11 + 88) = &type metadata for String;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = a2;
    *(v11 + 72) = a3;

    v13 = sub_1001C5FE8();
    isa = sub_1001C6288().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    v18[4] = sub_1000CAB90;
    v18[5] = v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1000982D4;
    v18[3] = &unk_1002451B8;
    v17 = _Block_copy(v18);

    [v10 cloudDataWithPredicate:v15 sortDescriptors:0 completion:v17];
    _Block_release(v17);
  }

  else
  {

    sub_1000C80FC(a2, a3, a4, a5);
  }
}

void sub_1000C85AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    if (a1)
    {
      v4 = a1;
      swift_unknownObjectRetain();
      a1 = v4;
    }
  }

  v5 = a1;
  a3();
}

uint64_t sub_1000C8700(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  if (!a1)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v14 = a4;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = sub_1001C6B38();
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        v10 = v8;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            sub_1001C69F8();
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_21;
            }

            v11 = *(a1 + 8 * v10 + 32);
            swift_unknownObjectRetain();
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v10;
          if (v8 == v7)
          {
            goto LABEL_24;
          }
        }

        sub_1001C6278();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1001C62B8();
        }

        sub_1001C62E8();
        v9 = &_swiftEmptyArrayStorage;
      }

      while (v8 != v7);
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_24:
  a4 = v14;
LABEL_25:
  a4(v9, a2);
}

uint64_t sub_1000C88CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_100084528(&qword_100271010, &unk_1001F1D60);
    v6 = sub_1001C6298();
  }

  v9 = a3;
  v10 = a4;
  v8(v6, v9, a4);
}

void sub_1000C8AC4(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_100088714(0, &qword_10026FEA8, off_10023DD38);
    isa = sub_1001C6288().super.isa;
  }

  if (a3)
  {
    v8 = sub_1001C4A18();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

void sub_1000C8B78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_100088714(0, &qword_100270F00, off_10023DD10);
  sub_1000CAC04();
  v11 = sub_1001C63E8();
  v12 = sub_1001C63E8();

  v14 = a4;
  v13 = a5;
  v10(v11, v12, v14, a5, a6);
}

void sub_1000C8E00(objc_class *a1, Class a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = a1;
  if (a1)
  {
    sub_100088714(0, &qword_100270F00, off_10023DD10);
    sub_1000CAC04();
    isa = sub_1001C63D8().super.isa;
  }

  if (a2)
  {
    a2 = sub_1001C63D8().super.isa;
  }

  if (a4)
  {
    v11 = sub_1001C4A18();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  (*(a6 + 16))(a6, isa, a2, a3);
}

void sub_1000C92B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = sub_10012B444(v7, 0);
  v9 = sub_10012C46C(aBlock, v8 + 4, v7, a1);

  sub_100005064();
  if (v9 == v7)
  {
    v5 = a2;
    v4 = a3;
LABEL_5:
    v10 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    sub_100084528(&qword_100271010, &unk_1001F1D60);
    isa = sub_1001C5EF8().super.isa;
    sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001F0660;
    v13 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
    v14 = *(v3 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    *(v12 + 88) = sub_100084528(&unk_10026FED0, &unk_1001F1450);
    *(v12 + 64) = v8;

    v15 = sub_1001C5FE8();
    v16 = sub_1001C6288().super.isa;

    v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:v16];

    v18 = sub_1001C5FE8();
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    *(v19 + 24) = v4;
    aBlock[4] = sub_1000CAB24;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10018C974;
    aBlock[3] = &unk_100245000;
    v20 = _Block_copy(aBlock);

    [v10 updateSyncGenerationFromCloudData:isa predicate:v17 propertyIDKey:v18 completion:v20];
    _Block_release(v20);

    return;
  }

  __break(1u);
}

uint64_t sub_1000C964C(void *a1, int a2, void *a3, int a4, void *aBlock, unint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, id, void *))
{
  v13 = _Block_copy(aBlock);
  sub_100088714(0, a6, a7);
  v14 = sub_1001C6298();
  _Block_copy(v13);
  v15 = a3;
  v16 = a1;
  a8(v14, v16, v13);
  _Block_release(v13);
  _Block_release(v13);
}

void sub_1000C9744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
  sub_100084528(&unk_10026FEB0, &unk_1001F1D50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001F0660;
  v11 = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey + 8);
  *(v10 + 32) = *(v4 + OBJC_IVAR___BDSSecureEngagementManagerService_propertyIDKey);
  *(v10 + 40) = v11;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;

  v12 = sub_1001C5FE8();
  isa = sub_1001C6288().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

  v16[4] = a3;
  v16[5] = a4;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10018CA5C;
  v16[3] = &unk_100244EC0;
  v15 = _Block_copy(v16);

  [v9 deleteCloudDataForPredicate:v14 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1000C9930(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1001C6018();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

uint64_t sub_1000C99F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C9A10(uint64_t a1, uint64_t a2)
{
  if (qword_10026EC88 != -1)
  {
    swift_once();
  }

  v4 = sub_1001C5148();
  sub_100083274(v4, qword_100274110);
  v5 = sub_1001C5128();
  v6 = sub_1001C65B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudSecureEngagementManagerService deleteCloudDataWithCompletion:", v7, 2u);
  }

  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100245118;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [objc_opt_self() deleteCloudDataWithCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_1000C9B98(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (*(a1 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    v5 = *(a1 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    v6 = *(a1 + OBJC_IVAR___BDSSecureEngagementManagerService_syncManager);
    v9[4] = sub_10009B1F8;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000DD4AC;
    v9[3] = &unk_1002450C8;
    v7 = _Block_copy(v9);
    _Block_copy(a2);

    [v5 startSyncToCKWithSyncManager:v6 completion:v7];
    _Block_release(v7);
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2);
  }
}

void sub_1000C9D08()
{
  if (v0[OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync] == 1)
  {
    v1 = [*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_cloudKitController] transactionManager];
    v2 = [v0 entityName];
    [v1 signalSyncToCKTransactionForEntityName:v2 syncManager:*&v0[OBJC_IVAR___BDSSecureEngagementManagerService_syncManager]];
  }
}

void sub_1000C9DC8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (*(a1 + 16))
  {
    v7 = *(a2 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    sub_100088714(0, &qword_100270AC0, NSPredicate_ptr);
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001F0670;
    *(v8 + 56) = sub_100084528(&unk_10026FED0, &unk_1001F1450);
    *(v8 + 64) = sub_1000CAB2C();
    *(v8 + 32) = a1;
    _Block_copy(a3);

    v9 = sub_1001C6568();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000CACE8;
    *(v10 + 24) = v6;
    v16[4] = sub_1000CACDC;
    v16[5] = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10018C974;
    v16[3] = &unk_100245078;
    v11 = _Block_copy(v16);

    [v7 removeCloudDataForPredicate:v9 completion:v11];
    _Block_release(v11);
  }

  else
  {
    _Block_copy(a3);
    if (qword_10026EC88 != -1)
    {
      swift_once();
    }

    v12 = sub_1001C5148();
    sub_100083274(v12, qword_100274110);
    v13 = sub_1001C5128();
    v14 = sub_1001C6598();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Trying to remove without IDs - EngagementData", v15, 2u);
    }

    a3[2](a3, 1, 0);
  }
}

void sub_1000CA0B8(unint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    if (a1 >> 62)
    {
      v18 = aBlock;
      v19 = sub_1001C6B38();
      aBlock = v18;
      v4 = v19;
      aBlocka = v18;
      v21 = a2;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      aBlocka = aBlock;
      v21 = a2;
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        _Block_copy(aBlock);
        v5 = 0;
        v6 = &_swiftEmptyArrayStorage;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v7 = sub_1001C69F8();
          }

          else
          {
            v7 = *(a1 + 8 * v5 + 32);
          }

          v8 = v7;
          v9 = [v7 recordName];
          v10 = sub_1001C6018();
          v12 = v11;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1000ADC34(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_1000ADC34((v13 > 1), v14 + 1, 1, v6);
          }

          ++v5;

          *(v6 + 2) = v14 + 1;
          v15 = &v6[16 * v14];
          *(v15 + 4) = v10;
          *(v15 + 5) = v12;
        }

        while (v4 != v5);
        goto LABEL_20;
      }
    }

    _Block_copy(aBlock);
    v6 = &_swiftEmptyArrayStorage;
LABEL_20:
    _Block_copy(aBlocka);
    sub_1000C9DC8(v6, v21, aBlocka);
    _Block_release(aBlocka);

    _Block_release(aBlocka);
    return;
  }

  v16 = *(aBlock + 2);

  v16(aBlock, 0, 0);
}

uint64_t sub_1000CA2D8(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    if (a1 >> 62)
    {
LABEL_38:
      v37 = v6;
      v7 = sub_1001C6B38();
      v39 = v37;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v6;
      if (v7)
      {
LABEL_4:
        v43 = a1 & 0xC000000000000001;
        aBlock = a3;
        v6 = _Block_copy(a3);
        v8 = 0;
        v9 = &_swiftEmptyDictionarySingleton;
        v40 = a1 & 0xFFFFFFFFFFFFFF8;
        v41 = v7;
        v42 = a1;
        while (1)
        {
          if (v43)
          {
            v6 = sub_1001C69F8();
            v11 = v6;
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v8 >= *(v40 + 16))
            {
              goto LABEL_36;
            }

            v11 = *(a1 + 8 * v8 + 32);
            v6 = swift_unknownObjectRetain();
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          v13 = [v11 identifier];
          if (!v13)
          {
            if (qword_10026EC88 != -1)
            {
              swift_once();
            }

            v25 = sub_1001C5148();
            sub_100083274(v25, qword_100274110);
            swift_unknownObjectRetain();
            a3 = sub_1001C5128();
            v26 = sub_1001C6598();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(a3, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              v44 = v28;
              *v27 = 136315138;
              swift_unknownObjectRetain();
              sub_100084528(&qword_100271010, &unk_1001F1D60);
              v29 = sub_1001C6078();
              v31 = sub_1001874E8(v29, v30, &v44);

              *(v27 + 4) = v31;
              v7 = v41;
              _os_log_impl(&_mh_execute_header, a3, v26, "Property %s has nil identifier, skipping updating sync generation", v27, 0xCu);
              sub_10008E7BC(v28);

              a1 = v42;

              swift_unknownObjectRelease();
            }

            else
            {

              v6 = swift_unknownObjectRelease();
            }

            goto LABEL_7;
          }

          v14 = v13;
          a1 = sub_1001C6018();
          v16 = v15;

          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v9;
          a3 = v9;
          v19 = sub_100187B3C(a1, v16);
          v20 = v9[2];
          v21 = (v18 & 1) == 0;
          v6 = v20 + v21;
          if (__OFADD__(v20, v21))
          {
            goto LABEL_35;
          }

          v22 = v18;
          if (v9[3] >= v6)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v18 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              a3 = &v44;
              sub_10018AAD4();
              if ((v22 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            sub_100188B88(v6, isUniquelyReferenced_nonNull_native);
            a3 = v44;
            v23 = sub_100187B3C(a1, v16);
            if ((v22 & 1) != (v24 & 1))
            {

              _Block_release(aBlock);
              result = sub_1001C6D68();
              __break(1u);
              return result;
            }

            v19 = v23;
            if ((v22 & 1) == 0)
            {
LABEL_26:
              v9 = v44;
              v44[(v19 >> 6) + 8] |= 1 << v19;
              v32 = (v9[6] + 16 * v19);
              *v32 = a1;
              v32[1] = v16;
              *(v9[7] + 8 * v19) = v11;
              v6 = swift_unknownObjectRelease();
              v33 = v9[2];
              v34 = __OFADD__(v33, 1);
              v35 = v33 + 1;
              if (v34)
              {
                goto LABEL_37;
              }

              v9[2] = v35;
              goto LABEL_6;
            }
          }

          v9 = v44;
          v10 = v44[7];
          a3 = *(v10 + 8 * v19);
          *(v10 + 8 * v19) = v11;
          swift_unknownObjectRelease();
          v6 = swift_unknownObjectRelease();
LABEL_6:
          v7 = v41;
          a1 = v42;
LABEL_7:
          ++v8;
          if (v12 == v7)
          {
            goto LABEL_40;
          }
        }
      }
    }

    _Block_copy(a3);
    v9 = &_swiftEmptyDictionarySingleton;
LABEL_40:
    sub_1000C92B0(v9, sub_1000CACE8, v39);
  }

  else
  {
    _Block_copy(a3);
    (a3[2])(a3, 0, 0);
  }
}

void sub_1000CA798(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    v6 = *(a2 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    _Block_copy(a3);
    sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
    isa = sub_1001C6288().super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1000CACE8;
    *(v8 + 24) = v5;
    v10[4] = sub_1000CAAF8;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10018CAE0;
    v10[3] = &unk_100244F88;
    v9 = _Block_copy(v10);

    [v6 resolveConflictsForRecords:isa completion:v9];
    _Block_release(v9);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0, 0);
  }
}

void sub_1000CA95C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  if (*(a2 + OBJC_IVAR___BDSSecureEngagementManagerService__enableCloudSync) == 1)
  {
    v6 = *(a2 + OBJC_IVAR___BDSSecureEngagementManagerService_dataManager);
    _Block_copy(a3);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    isa = sub_1001C6288().super.isa;
    v9[4] = sub_1000CACE8;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10018CA5C;
    v9[3] = &unk_100244F10;
    v8 = _Block_copy(v9);

    [v6 failedRecordIDs:isa completion:v8];
    _Block_release(v8);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0, 0);
  }
}

uint64_t sub_1000CAAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a3);
}

unint64_t sub_1000CAB2C()
{
  result = qword_10026FEE8;
  if (!qword_10026FEE8)
  {
    sub_1000885AC(&unk_10026FED0, &unk_1001F1450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FEE8);
  }

  return result;
}

uint64_t sub_1000CABAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000CABDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1000CAC04()
{
  result = qword_10026FF00;
  if (!qword_10026FF00)
  {
    sub_100088714(255, &qword_100270F00, off_10023DD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FF00);
  }

  return result;
}

uint64_t sub_1000CAD30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CAD88();
  }

  return result;
}

uint64_t sub_1000CAD88()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = v1[3];
  v5 = v2;
  ObjectType = swift_getObjectType();
  result = (*(v4 + 8))(ObjectType, v4);
  if (result)
  {
    v8 = sub_1001C5128();
    v9 = sub_1001C65B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncTransport: assume connection is healthy", v10, 2u);
    }

    v11 = v1[5];
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = v5;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000CF420;
    *(v13 + 24) = v12;
    v16[4] = sub_1000B3DA0;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1000906F4;
    v16[3] = &unk_100245B68;
    v14 = _Block_copy(v16);

    dispatch_sync(v11, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000CAFA8()
{
  v1 = v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRDTModelFileSyncTransport: disconnected", v4, 2u);
  }

  v5 = *(v1 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000CEA28;
  *(v6 + 24) = v1;
  v9[4] = sub_1000B2E48;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_100245848;
  v7 = _Block_copy(v9);

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1000CB158(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    sub_1000CB250(*(a1 + 56));
    v2 = *(a1 + 56) + *(a1 + 56);
    *(a1 + 56) = v2;
    if (v2 > 3600.0)
    {
      *(a1 + 56) = 0x40AC200000000000;
    }
  }

  else
  {
    oslog = sub_1001C5128();
    v3 = sub_1001C65B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "CRDTModelFileSyncTransport: not reconnecting automatically", v4, 2u);
    }
  }
}

void sub_1000CB250(double a1)
{
  v2 = v1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v4, v5, "CRDTModelFileSyncTransport: attempt auto-reconnect in %f sec", v6, 0xCu);
  }

  v7 = *(v2 + 64);
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = objc_allocWithZone(BUCoalescingCallBlock);
  v21 = sub_1000CEA30;
  v22 = v8;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1000991BC;
  v20 = &unk_100245898;
  v10 = _Block_copy(&v17);

  v11 = sub_1001C5FE8();
  v12 = [v9 initWithNotifyBlock:v10 blockDescription:v11];

  _Block_release(v10);

  v13 = *(v2 + 64);
  *(v2 + 64) = v12;

  v7 = *(v2 + 64);
  if (v7)
  {
LABEL_5:
    [v7 setCoalescingDelay:a1];
    v14 = *(v2 + 64);
    if (v14)
    {
      v21 = MarkedAsFinishedMechanism.rawValue.getter;
      v22 = 0;
      v17 = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_1000DD4AC;
      v20 = &unk_1002458C0;
      v15 = _Block_copy(&v17);
      v16 = v14;
      [v16 signalWithCompletion:v15];
      _Block_release(v15);
    }
  }
}

uint64_t sub_1000CB4D0()
{
  v0 = sub_1001C5148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC14bookdatastoredP33_27AA06B3302E8EDAEF33D49870C28CD227_TransportConnectionManager_logger, v0);

    v6 = sub_1001C5128();
    v7 = sub_1001C65B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelFileSyncTransport: About to auto-reconnect", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CB690();
  }

  return result;
}

uint64_t sub_1000CB690()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000CEA38;
  *(v3 + 24) = v0;
  v9[4] = sub_1000B3DA0;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_100245910;
  v4 = _Block_copy(v9);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 40))(ObjectType, v7);
  }

  return result;
}

void sub_1000CB7EC()
{
  v1 = v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C6588();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRDTModelFileSyncTransport: reconnected", v4, 2u);
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    v8[4] = MarkedAsFinishedMechanism.rawValue.getter;
    v8[5] = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000DD4AC;
    v8[3] = &unk_1002457D0;
    v6 = _Block_copy(v8);
    v7 = v5;
    [v7 signalWithCompletion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_1000CB924()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000CEFDC;
  *(v5 + 24) = v4;
  v8[4] = sub_1000B3DA0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000906F4;
  v8[3] = &unk_100245A50;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CBAA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC14bookdatastoredP33_27AA06B3302E8EDAEF33D49870C28CD227_TransportConnectionManager_logger;
  v3 = sub_1001C5148();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _TransportConnectionManager()
{
  result = qword_10026FFA0;
  if (!qword_10026FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBBB0()
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

uint64_t sub_1000CBC7C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 88) + 8);
  result = sub_1001C5D68();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = sub_1001C4B28();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_1001C5148();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000CBDD4()
{
  v1 = *(v0 + *(*v0 + 152));
  sub_1001C6688();
  return v3;
}

uint64_t sub_1000CBE48(char a1)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C5688();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + *(*v1 + 152));
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000CF3BC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100245BB8;
  v13 = _Block_copy(aBlock);

  sub_1001C5668();
  v17 = _swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1000CC11C(uint64_t result, char a2)
{
  v2 = *(*result + 184);
  if (*(result + v2) != (a2 & 1))
  {
    *(result + v2) = a2 & 1;
    v3 = *(*result + 168);
    if (*(result + v3))
    {
      v4 = *(result + v3);

      sub_1001C5BE8();
    }
  }

  return result;
}

char *sub_1000CC1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v28 = a2;
  v25 = *v3;
  v26 = a1;
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1001C6668();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C5688();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  v14 = &v4[*(*v4 + 144)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v24 = *(*v3 + 152);
  v23 = sub_1000C5A14();
  sub_1001C5678();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  v29 = &_swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  *&v3[v24] = sub_1001C66A8();
  *&v3[*(*v3 + 160)] = &_swiftEmptySetSingleton;
  *&v3[*(*v3 + 168)] = 0;
  v3[*(*v3 + 176)] = 0;
  v3[*(*v3 + 184)] = 0;
  v15 = *(*v3 + 192);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1001C69C8(20);

  v29 = 0xD000000000000012;
  v30 = 0x80000001001FE0E0;
  v16 = v25;
  v31._countAndFlagsBits = (*(*(v25 + 104) + 8))(*(v25 + 80));
  sub_1001C6138(v31);

  sub_1001C5138();
  *(v3 + 4) = v26;
  v17 = *(*v3 + 136);
  v18 = sub_1001C4B28();
  (*(*(v18 - 8) + 32))(&v4[v17], v27, v18);
  v19 = *(*v4 + 128);
  v20 = *(*(v16 + 88) + 8);
  v21 = sub_1001C5D68();
  (*(*(v21 - 8) + 32))(&v4[v19], v28, v21);
  return v4;
}

uint64_t sub_1000CC660(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(*v2 + 144));
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_1000044D8(v6);

  sub_1000CC6C4();
}

void sub_1000CC6C4()
{
  v1 = v0;
  v2 = *v0;
  v60 = v2;
  v3 = sub_1001C5BD8();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4B28();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[10];
  v12 = v2[11];
  v13 = *(v12 + 8);
  v14 = sub_1001C5D68();
  v15 = sub_1001C67F8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v2[21];
  v19 = v2[24];
  if (*(v1 + v18))
  {

    v20 = sub_1001C5128();
    v21 = sub_1001C65B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61[0] = v23;
      *v22 = 136315138;
      if (*(v1 + *(*v1 + 176)))
      {
        v24 = 0x657463656E6E6F63;
      }

      else
      {
        v24 = 0x697463656E6E6F63;
      }

      v25 = v18;
      if (*(v1 + *(*v1 + 176)))
      {
        v26 = 0xE900000000000064;
      }

      else
      {
        v26 = 0xEA0000000000676ELL;
      }

      v27 = sub_1001874E8(v24, v26, v61);
      v18 = v25;

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "CRDTModelFileSyncTransport reconnect: Already %s", v22, 0xCu);
      sub_10008E7BC(v23);
    }

    if (*(v1 + v18))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v49[1] = v13;
    v50 = v49 - v17;
    v51 = v7;
    v52 = v10;
    v53 = v6;
    v54 = v12;
    v55 = v18;
    v56 = v14;
    v28 = sub_1001C5128();
    v29 = sub_1001C65B8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "CRDTModelFileSyncTransport reconnect: About to initialize file sync manager", v30, 2u);
    }

    sub_1001C5BC8();
    swift_getWitnessTable();
    sub_1001C5C18();
    v31 = v1[4];
    v32 = v56;
    v33 = *(v56 - 8);
    v34 = v50;
    (*(v33 + 16))(v50, v1 + *(*v1 + 128), v56);
    (*(v33 + 56))(v34, 0, 1, v32);
    (*(v57 + 16))(v52, v1 + *(*v1 + 136), v51);
    (*(v58 + 104))(v53, enum case for CRCodableVersion.version3(_:), v59);
    v35 = v31;
    v36 = sub_1001C5C28();
    v37 = *(v1 + v55);
    *(v1 + v55) = v36;

    v38 = *(v1 + *(*v1 + 184));
    sub_1001C5BE8();
    v59 = sub_1001C5C08();
    v61[0] = v59;
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v41 = v11;
    v42 = v54;
    v40[2] = v11;
    v40[3] = v42;
    v43 = v60;
    v44 = v60[12];
    v40[4] = v44;
    v45 = v43[13];
    v40[5] = v45;
    v40[6] = v39;
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v47[2] = v41;
    v47[3] = v42;
    v47[4] = v44;
    v47[5] = v45;
    v47[6] = v46;
    sub_1000885AC(&unk_100270F10, &unk_1001F1F70);
    sub_1001C5158();
    swift_getWitnessTable();
    sub_1001C51A8();

    v48 = *(*v1 + 160);
    swift_beginAccess();
    sub_1001C5168();
    swift_endAccess();
  }
}

uint64_t sub_1000CCDB0(void *a1)
{
  v2 = sub_1001C5148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v3 + 16))(v9, Strong + *(*Strong + 192), v2);

      swift_errorRetain();
      v11 = sub_1001C5128();
      v12 = sub_1001C6598();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = sub_1001C6D98();
        v17 = sub_1001874E8(v15, v16, &v23);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "CRDTModelFileSyncTransport sink: error: %s", v13, 0xCu);
        sub_10008E7BC(v14);
      }

      (*(v3 + 8))(v9, v2);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1000CD134(sub_1000CEA24, &unk_1002457F8);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v3 + 16))(v7, result + *(*result + 192), v2);

      v19 = sub_1001C5128();
      v20 = sub_1001C65B8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "CRDTModelFileSyncTransport sink: finished", v21, 2u);
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_1000CD134(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001C5688();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + *(*v2 + 152));
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1001C5668();
  v18 = &_swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_1000CD3D8(uint64_t a1)
{
  v2 = sub_1001C5148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v6, Strong + *(*Strong + 192), v2);

    v8 = sub_1001C5128();
    v9 = sub_1001C6588();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncTransport sink: receiveValue", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000CD5AC(a1);
  }

  return result;
}

uint64_t sub_1000CD5AC(uint64_t a1)
{
  v3 = *v1;
  v26 = sub_1001C5648();
  v28 = *(v26 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v26);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001C5688();
  v25 = *(v27 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v27);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[10];
  v10 = v3[11];
  v11 = *(v10 + 8);
  v12 = sub_1001C5D68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  v23[1] = *(v1 + v3[19]);
  (*(v13 + 16))(v23 - v15, a1, v12);
  v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v9;
  *(v18 + 3) = v10;
  *(v18 + 4) = v3[12];
  *(v18 + 5) = v3[13];
  *(v18 + 6) = v1;
  (*(v13 + 32))(&v18[v17], v16, v12);
  aBlock[4] = sub_1000CE9B8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002457A8;
  v19 = _Block_copy(aBlock);

  sub_1001C5668();
  v29 = &_swiftEmptyArrayStorage;
  sub_1000CEA64(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v20 = v24;
  v21 = v26;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v19);
  (*(v28 + 8))(v20, v21);
  (*(v25 + 8))(v8, v27);
}

void sub_1000CD9B8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 176);
  if ((*(v1 + v5) & 1) == 0)
  {
    if (*(v1 + *(v4 + 168)))
    {
      *(v1 + v5) = 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000CB7EC();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = v1 + *(v4 + 192);
      v7 = sub_1001C5128();
      v8 = sub_1001C6598();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelFileSyncTransport: got disconnected before load complete", v9, 2u);
      }
    }
  }

  v10 = v2 + *(*v2 + 144);
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11(a1);

    sub_1000044D8(v11);
  }
}

uint64_t sub_1000CDB40()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = &_swiftEmptySetSingleton;

  v3 = *(*v0 + 168);
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  *(v0 + *(*v0 + 176)) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000CAFA8();
    return swift_unknownObjectRelease();
  }

  return result;
}