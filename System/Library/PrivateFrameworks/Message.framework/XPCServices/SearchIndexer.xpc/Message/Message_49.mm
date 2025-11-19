void sub_100312568(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v91 = a4;
  v86 = _s6LoggerVMa_1(0);
  v17 = *(*(v86 - 8) + 64);
  v18 = __chkstk_darwin(v86);
  v85 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v84 = &v81[-v21];
  __chkstk_darwin(v20);
  v23 = &v81[-v22];
  v24 = v8[3];
  v96 = v8[2];
  v97 = v24;
  v98[0] = v8[4];
  *(v98 + 12) = *(v8 + 76);
  v25 = v8[1];
  v94 = *v8;
  v95 = v25;
  v90 = a1;
  v26 = sub_100315BFC(a1);
  v27 = 0.0;
  if (*(v26 + 16))
  {
    v28 = sub_10035E1B0(a2, a3);
    if (v29)
    {
      v27 = *(*(v26 + 56) + 8 * v28);
    }
  }

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    a5 = sub_1003364B8(a5);
    goto LABEL_29;
  }

  v87 = a5;
  v88 = a6;
  v89 = a7;
  v92 = (a8 * 8);
  a5 = v96;
  v30 = *(v96 + 16);
  if (!v30)
  {
LABEL_15:
    v33 = v92;
    sub_10031BFB8(v92, v23, _s6LoggerVMa_1);
    v34 = sub_1004A4A54();
    v35 = sub_1004A6014();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v93 = v37;
      *v36 = 136446210;
      v38 = &v23[*(v86 + 20)];
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];
      v43 = sub_1004A5864();
      v45 = v44;
      sub_10031BF58(v23, _s6LoggerVMa_1);
      v46 = sub_10015BA6C(v43, v45, &v93);

      *(v36 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s] Unknown account did go above data threshold.", v36, 0xCu);
      sub_1000197E0(v37);

LABEL_20:

LABEL_26:
      v76 = v88;
      v77 = v89;
LABEL_33:
      sub_1003107C4(v90, v91, v87, v76, v77, v33);
      return;
    }

    v60 = v23;
LABEL_25:
    sub_10031BF58(v60, _s6LoggerVMa_1);
    goto LABEL_26;
  }

  a6 = 0;
  a8 = 5;
  while (1)
  {
    v31 = &a5[a8];
    v32 = a5[a8 + 1] == a2 && a5[a8 + 2] == a3;
    if (v32 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    a6 = (a6 + 1);
    a8 += 6;
    if (v30 == a6)
    {
      goto LABEL_15;
    }
  }

  if (*(v31 + 28))
  {
    v33 = v92;
    v47 = v85;
    sub_10031BFB8(v92, v85, _s6LoggerVMa_1);
    v34 = sub_1004A4A54();
    v48 = sub_1004A6014();
    if (os_log_type_enabled(v34, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v93 = v50;
      *v49 = 136446210;
      v51 = &v47[*(v86 + 20)];
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      v56 = sub_1004A5864();
      v58 = v57;
      sub_10031BF58(v47, _s6LoggerVMa_1);
      v59 = sub_10015BA6C(v56, v58, &v93);

      *(v49 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v34, v48, "[%{public}s] Account did go above data threshold, but has no active sync.", v49, 0xCu);
      sub_1000197E0(v50);

      goto LABEL_20;
    }

    v60 = v47;
    goto LABEL_25;
  }

  v85 = v27;
  v61 = *(v31 + 6);
  v62 = v84;
  sub_10031BFB8(v92, v84, _s6LoggerVMa_1);
  v63 = sub_1004A4A54();
  v64 = sub_1004A6014();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v82 = v61;
    v66 = v65;
    v83 = swift_slowAlloc();
    v93 = v83;
    *v66 = 136446722;
    v67 = &v62[*(v86 + 20)];
    v68 = *v67;
    v69 = v67[1];
    v70 = v67[2];
    v71 = v67[3];
    v72 = sub_1004A5864();
    v74 = v73;
    sub_10031BF58(v62, _s6LoggerVMa_1);
    v75 = sub_10015BA6C(v72, v74, &v93);

    *(v66 + 4) = v75;
    *(v66 + 12) = 2048;
    *(v66 + 14) = v85;
    *(v66 + 22) = 1024;
    *(v66 + 24) = v82;
    _os_log_impl(&_mh_execute_header, v63, v64, "[%{public}s] Account did go above data threshold (run time: %ld). Completing its sync #%u.", v66, 0x1Cu);
    sub_1000197E0(v83);
  }

  else
  {

    sub_10031BF58(v62, _s6LoggerVMa_1);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (a6 < a5[2])
  {
    v78 = &a5[a8];
    v76 = v88;
    if ((a5[a8 + 3] & 0x100000000) == 0)
    {
      v79 = a5[a8];
      v80 = v88;
      sub_10034A348(*(v78 + 6));
      v76 = v80;
    }

    *(v78 + 6) = 0;
    *(v78 + 28) = 1;
    *(v9 + 4) = a5;
    v33 = v92;
    v77 = v89;
    goto LABEL_33;
  }

  __break(1u);
}

double sub_100312C34@<D0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10031B228(a1, &v8);

  sub_10031B86C(a1, a2, &v8);

  result = *&v8;
  v7 = v9[0];
  *a3 = v8;
  *(a3 + 16) = v7;
  *(a3 + 29) = *(v9 + 13);
  return result;
}

void sub_100312CA8(NSObject *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v78 = a8;
  v75 = a6;
  v76 = a7;
  v73 = a4;
  v74 = a5;
  v72 = a1;
  v71 = _s6LoggerVMa_1(0);
  v11 = *(*(v71 - 8) + 64);
  v12 = __chkstk_darwin(v71);
  v70 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - v15;
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v77 = v8;
  v19 = *(v8 + 32);
  v20 = v19[2];
  if (!v20)
  {
LABEL_9:
    v25 = v78;
    sub_10031BFB8(v78, v18, _s6LoggerVMa_1);
    v26 = sub_1004A4A54();
    v27 = sub_1004A6014();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v79 = v29;
      *v28 = 136446210;
      v30 = &v18[*(v71 + 20)];
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = *(v30 + 2);
      v34 = *(v30 + 3);
      v35 = sub_1004A5864();
      v37 = v36;
      sub_10031BF58(v18, _s6LoggerVMa_1);
      v38 = sub_10015BA6C(v35, v37, &v79);

      *(v28 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] Received server-unavailable for unknown account.", v28, 0xCu);
      sub_1000197E0(v29);

LABEL_14:

LABEL_27:
      sub_1003107C4(v72, v73, v74, v75, v76, v25);
      return;
    }

    v52 = v18;
LABEL_19:
    sub_10031BF58(v52, _s6LoggerVMa_1);
    goto LABEL_27;
  }

  v21 = 0;
  v22 = 5;
  while (1)
  {
    v23 = &v19[v22];
    v24 = v19[v22 + 1] == a2 && v19[v22 + 2] == a3;
    if (v24 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    ++v21;
    v22 += 6;
    if (v20 == v21)
    {
      goto LABEL_9;
    }
  }

  if (*(v23 + 28))
  {
    v25 = v78;
    v39 = v70;
    sub_10031BFB8(v78, v70, _s6LoggerVMa_1);
    v26 = sub_1004A4A54();
    v40 = sub_1004A6014();
    if (os_log_type_enabled(v26, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v79 = v42;
      *v41 = 136446210;
      v43 = (v39 + *(v71 + 20));
      v44 = *v43;
      v45 = v43[1];
      v46 = v43[2];
      v47 = v43[3];
      v48 = sub_1004A5864();
      v50 = v49;
      sub_10031BF58(v39, _s6LoggerVMa_1);
      v51 = sub_10015BA6C(v48, v50, &v79);

      *(v41 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v26, v40, "[%{public}s] Received server-unavailable, but the account has no active sync.", v41, 0xCu);
      sub_1000197E0(v42);

      goto LABEL_14;
    }

    v52 = v39;
    goto LABEL_19;
  }

  v53 = *(v23 + 6);
  sub_10031BFB8(v78, v16, _s6LoggerVMa_1);
  v54 = sub_1004A4A54();
  v55 = sub_1004A6014();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    LODWORD(v70) = v53;
    v57 = v56;
    v58 = swift_slowAlloc();
    v79 = v58;
    *v57 = 136446466;
    v59 = &v16[*(v71 + 20)];
    v60 = *v59;
    v61 = *(v59 + 1);
    v62 = *(v59 + 2);
    v63 = *(v59 + 3);
    v64 = sub_1004A5864();
    v66 = v65;
    sub_10031BF58(v16, _s6LoggerVMa_1);
    v67 = sub_10015BA6C(v64, v66, &v79);

    *(v57 + 4) = v67;
    *(v57 + 12) = 1024;
    *(v57 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v54, v55, "[%{public}s] Received server-unavailable. Completing sync #%u.", v57, 0x12u);
    sub_1000197E0(v58);
  }

  else
  {

    sub_10031BF58(v16, _s6LoggerVMa_1);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1003364B8(v19);
  }

  if (v21 < v19[2])
  {
    v68 = &v19[v22];
    if ((v19[v22 + 3] & 0x100000000) == 0)
    {
      v69 = v19[v22];
      sub_10034A348(*(v68 + 6));
    }

    *(v68 + 6) = 0;
    *(v68 + 28) = 1;
    v25 = v78;
    *(v77 + 32) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_100313244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v9 = sub_1004A5244();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1004A5274();
  v39 = *(v41 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v34 = *(a1 + 24);
    v35 = a1;
    v36 = a4;
    v37 = a5;
    aBlock[0] = _swiftEmptyArrayStorage;
    result = sub_10034F590(0, v15, 0);
    v17 = aBlock[0];
    v18 = (a2 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = HIBYTE(*v18) & 0xF;
      if ((*v18 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        break;
      }

      aBlock[0] = v17;
      v23 = v17[2];
      v22 = v17[3];

      if (v23 >= v22 >> 1)
      {
        result = sub_10034F590((v22 > 1), v23 + 1, 1);
        v17 = aBlock[0];
      }

      v17[2] = v23 + 1;
      v24 = &v17[2 * v23];
      v24[4] = v19;
      v24[5] = v20;
      v18 += 7;
      if (!--v15)
      {
        a4 = v36;
        a5 = v37;
        a1 = v35;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_11:
    v25 = sub_100374688(v17);

    __chkstk_darwin(v26);
    *(&v34 - 4) = sub_100313640;
    *(&v34 - 3) = 0;
    v27 = v38;
    *(&v34 - 2) = v25;
    *(&v34 - 1) = v27;

    v28 = sub_100316BF8(sub_10031B170, (&v34 - 6), a2);

    v29 = *(a1 + 16);
    v30 = swift_allocObject();
    v30[2] = a4;
    v30[3] = a5;
    v30[4] = v28;
    aBlock[4] = sub_10031B1F8;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B3678;
    v31 = _Block_copy(aBlock);

    sub_1004A5254();
    v44 = _swiftEmptyArrayStorage;
    sub_10022AAC8();
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    v32 = v40;
    v33 = v43;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v31);
    (*(v42 + 8))(v32, v33);
    (*(v39 + 8))(v14, v41);
  }

  return result;
}

uint64_t *sub_100313640(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = result[1];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100313688(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100310DE0(a3, a4, a1);
  }

  return result;
}

uint64_t sub_100313704(int a1, uint64_t a2, char *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = a2;
  v66 = a7;
  v64 = a6;
  v14 = _s6LoggerVMa_0(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = *a4;
  v22 = a4[1];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v59 = a1;
    v24 = a3;
    v25 = a4[6];
    v60 = a4[5];
    v61 = v25;
    v62 = a8;
    v26 = type metadata accessor for SearchIndexPersistence();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    a8 = swift_allocObject();
    *(a8 + 56) = 0;
    sub_10000C9C0(&qword_1005D8CB0, &qword_1004F5F38);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(a8 + 80) = v29;
    *(a8 + 104) = 0;
    a3 = _swiftEmptyArrayStorage;
    *(a8 + 128) = _swiftEmptyArrayStorage;
    type metadata accessor for Cache();
    swift_allocObject();

    Cache.init()();
    *(a8 + 136) = v30;
    *(a8 + 152) = sub_100350E90(_swiftEmptyArrayStorage);
    *(a8 + 160) = 0;
    v63 = a5;
    if ([a5 concurrencyType] == 1)
    {
      v58 = v18;
      v18 = v24;
      a3 = v14;
      v14 = v64;
      LOBYTE(a5) = v59;
      v57 = a9;
      v31 = qword_1005D8778;

      if (v31 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_6:
  v32 = sub_1004A4A74();
  v33 = sub_1001C203C(v32, qword_1005DE2D0);
  (*(*(v32 - 8) + 16))(v20, v33, v32);
  v34.value._countAndFlagsBits = v21;
  v34.value._object = v22;
  v35.rawValue = AccountLoggerID.init(accountIdentifier:)(v34).rawValue;
  rawValue = v35.rawValue;
  v55 = a3;
  v36 = &v20[*(a3 + 5)];
  *v36 = a5;
  *(v36 + 1) = v35;
  *(a8 + 16) = v21;
  *(a8 + 24) = v22;
  v37 = v61;
  *(a8 + 32) = v60;
  *(a8 + 40) = v37;
  v38 = v63;
  *(a8 + 48) = v63;
  *(a8 + 88) = v65;
  *(a8 + 96) = v18;
  v39 = v20;
  v40 = v66;
  *(a8 + 64) = v14;
  *(a8 + 72) = v40;
  v41 = v57;
  *(a8 + 112) = v62;
  *(a8 + 120) = v41;
  *(a8 + 144) = _swiftEmptyArrayStorage;
  v65 = v39;
  sub_10031BFB8(v39, a8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_logger, _s6LoggerVMa_0);

  v42 = v38;

  v43 = v58;
  sub_1004A4A64();
  v44 = v43 + *(v55 + 5);
  *v44 = a5;
  *(v44 + 4) = rawValue;
  sub_10031BE68(v43, a8 + OBJC_IVAR____TtC17IMAPSearchIndexer22SearchIndexPersistence_actionLogger);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = objc_opt_self();

  v47 = [v46 defaultCenter];
  if (qword_1005D8770 != -1)
  {
    swift_once();
  }

  v48 = qword_1005D9368;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_10031BECC;
  *(v49 + 24) = v45;
  aBlock[4] = sub_10031BED4;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100307F04;
  aBlock[3] = &unk_1005B3830;
  v50 = _Block_copy(aBlock);
  v51 = v48;

  v52 = [v47 addObserverForName:v51 object:v40 queue:0 usingBlock:v50];
  _Block_release(v50);

  sub_10031BF58(v65, _s6LoggerVMa_0);

  v53 = *(a8 + 104);
  *(a8 + 104) = v52;
  swift_unknownObjectRelease();
  return a8;
}

uint64_t sub_100313C28(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = sub_100307550();
  swift_beginAccess();
  v3 = *(v2 + 16);

  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v5 = 0;
    v6 = 0x746E756F636361;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    p_attr = (&stru_1005CAFF8 + 8);
    v30 = v3;
    while (1)
    {
      if (v7)
      {
        v12 = sub_1004A6794();
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v12 = *(v3 + 8 * v5 + 32);
      }

      v13 = v12;
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (([v12 p_attr[429]] & 1) == 0)
      {
        v15 = [v13 managedObjectContext];
        if (v15)
        {

          v16 = sub_1004A5734();
          [v13 willAccessValueForKey:v16];

          v17 = [v13 primitiveAccount];
          if (!v17)
          {
            goto LABEL_17;
          }

          v18 = v17;
          v19 = i;
          v20 = v8;
          v21 = v7;
          v22 = v6;
          v23 = sub_1004A5764();
          v25 = v24;

          v26 = HIBYTE(v25) & 0xF;
          v27 = v23 & 0xFFFFFFFFFFFFLL;
          v6 = v22;
          v7 = v21;
          v8 = v20;
          i = v19;
          v3 = v30;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v27;
          }

          if (!v26)
          {

LABEL_17:
            v25 = 0;
          }

          v28 = sub_1004A5734();
          [v13 didAccessValueForKey:v28];

          p_attr = &stru_1005CAFF8.attr;
          if (v25)
          {

            if (qword_1005D8758 != -1)
            {
              swift_once();
            }

            v10 = sub_1004A4A74();
            v11 = sub_1001C203C(v10, qword_1005D8B78);
            sub_100313E98(v11);
          }
        }
      }

      ++v5;
      if (v14 == i)
      {
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

uint64_t sub_100313E98(uint64_t a1)
{
  v2 = sub_1004A44E4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v83 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v83 - v12;
  result = sub_10033A4C4(v11);
  if (!v15)
  {
    return result;
  }

  v90 = a1;
  v91 = v15;
  v88 = result;
  sub_1004A44D4();
  v16 = sub_10033A6CC();
  v92 = v3[2];
  v92(v10, v13, v2);
  sub_1004A4464();
  v18 = round(v17 / 21600.0);
  v19 = v2;
  v20 = v3[1];
  v21 = v19;
  v93 = v3 + 1;
  result = v20(v10);
  v22 = v20;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v18 <= -9.22337204e18)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v18 >= 9.22337204e18)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v24 = v18;
    result = swift_allocObject();
    v25 = 0;
    v26 = 0;
    v27 = 0;
    *(result + 16) = v18;
    v28 = -1;
    v29 = -1 << *(v16 + 32);
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & *(v16 + 64);
    v31 = v24 - 4;
    v32 = __OFSUB__(v24, 4);
    v33 = v24 + 1;
    v34 = __OFADD__(v24, 1);
    v23 = v21;
    while (v30)
    {
      if (v32)
      {
        goto LABEL_32;
      }

LABEL_17:
      if (v34)
      {
        goto LABEL_74;
      }

      if (v33 <= v31)
      {
        goto LABEL_75;
      }

      v35 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v36 = v35 | (v27 << 6);
      result = *(*(v16 + 48) + 8 * v36);
      if (result > v31 && v33 >= result)
      {
        v38 = (*(v16 + 56) + 72 * v36);
        result = *v38;
        v39 = __OFADD__(v25, *v38);
        v25 += *v38;
        if (v39)
        {
          goto LABEL_82;
        }

        v40 = v38[1];
        v39 = __OFADD__(v26, v40);
        v26 += v40;
        if (v39)
        {
          goto LABEL_83;
        }
      }
    }

    result = v27;
    do
    {
      v41 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v41 >= ((63 - v29) >> 6))
      {
        goto LABEL_33;
      }

      v30 = *(v16 + 64 + 8 * v41);
      ++result;
    }

    while (!v30);
    v27 = v41;
    if (!v32)
    {
      goto LABEL_17;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v86 = v26;
    v87 = v25;
    sub_100020D08();
  }

  else
  {

    v86 = 0;
    v87 = 0;
    v23 = v21;
  }

  v42 = sub_10033A6CC();
  v92(v7, v13, v23);
  sub_1004A4464();
  v44 = round(v43 / 21600.0);
  result = v22(v7, v23);
  v89 = v22;
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {

    v45 = 0;
    v46 = 0;
    v92 = 0;
    v84 = 0;
    v85 = 0;
LABEL_68:
    v67 = sub_10033A6CC();
    v68 = sub_1003734D8(v13, v67);

    v69 = sub_10033A6CC();
    v70 = sub_10037382C(v13, v69);

    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v90 = v68;
      v74 = v73;
      v75 = swift_slowAlloc();
      v83 = v46;
      v76 = v75;
      v94 = v75;
      *v74 = 136317442;
      sub_100236568(8);
      v91 = v23;
      LODWORD(v88) = v70;

      v77 = sub_1004A5864();
      v79 = v78;

      v80 = sub_10015BA6C(v77, v79, &v94);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2048;
      v81 = v86;
      *(v74 + 14) = v87;
      *(v74 + 22) = 2048;
      *(v74 + 24) = v81;
      *(v74 + 32) = 2048;
      *(v74 + 34) = v45;
      *(v74 + 42) = 2048;
      *(v74 + 44) = v83;
      *(v74 + 52) = 2048;
      *(v74 + 54) = v92;
      *(v74 + 62) = 2048;
      v82 = v84;
      *(v74 + 64) = v85;
      *(v74 + 72) = 2048;
      *(v74 + 74) = v82;
      *(v74 + 82) = 2048;
      *(v74 + 84) = v90;
      *(v74 + 92) = 1024;
      *(v74 + 94) = v88 & 1;
      _os_log_impl(&_mh_execute_header, v71, v72, "%s: received %{iec-bytes}ld, sent %{iec-bytes}ld, messages indexed %ld, updated flags %ld, deleted messages %ld, complete re-index %ld, message re-donate requests %ld, over quota count %ld, was unavailable: %{BOOL}d", v74, 0x62u);
      sub_1000197E0(v76);

      return v89(v13, v91);
    }

    else
    {

      return v89(v13, v23);
    }
  }

  if (v44 <= -9.22337204e18)
  {
    goto LABEL_80;
  }

  if (v44 < 9.22337204e18)
  {
    v47 = v44;
    result = swift_allocObject();
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    *(result + 16) = v44;
    v52 = -1;
    v53 = -1 << *(v42 + 32);
    if (-v53 < 64)
    {
      v52 = ~(-1 << -v53);
    }

    v54 = v52 & *(v42 + 64);
    v55 = v47 - 4;
    v56 = __OFSUB__(v47, 4);
    v57 = v47 + 1;
    v58 = __OFADD__(v47, 1);
    while (v54)
    {
      if (v56)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        v84 = v50;
        v85 = v49;
        v92 = v48;
        sub_100020D08();

        goto LABEL_68;
      }

LABEL_48:
      if (v58)
      {
        goto LABEL_76;
      }

      if (v57 <= v55)
      {
        goto LABEL_77;
      }

      v59 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v60 = v59 | (v51 << 6);
      result = *(*(v42 + 48) + 8 * v60);
      if (result > v55 && v57 >= result)
      {
        v62 = *(v42 + 56) + 72 * v60;
        v64 = *(v62 + 16);
        v63 = (v62 + 16);
        result = v64;
        v39 = __OFADD__(v45, v64);
        v45 += v64;
        if (v39)
        {
          goto LABEL_84;
        }

        result = v63[1];
        v39 = __OFADD__(v46, result);
        v46 += result;
        if (v39)
        {
          goto LABEL_85;
        }

        result = v63[2];
        v39 = __OFADD__(v48, result);
        v48 = (v48 + result);
        if (v39)
        {
          goto LABEL_86;
        }

        result = v63[3];
        v39 = __OFADD__(v49, result);
        v49 += result;
        if (v39)
        {
          goto LABEL_87;
        }

        v65 = v63[4];
        v39 = __OFADD__(v50, v65);
        v50 += v65;
        if (v39)
        {
          goto LABEL_88;
        }
      }
    }

    result = v51;
    while (1)
    {
      v66 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      if (v66 >= ((63 - v53) >> 6))
      {
        goto LABEL_67;
      }

      v54 = *(v42 + 64 + 8 * v66);
      ++result;
      if (v54)
      {
        v51 = v66;
        if (!v56)
        {
          goto LABEL_48;
        }

        goto LABEL_66;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_100314634(uint64_t a1)
{
  v2 = *(a1 + 200);

  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10031B310;
  *(v6 + 24) = v5;
  *(v2 + 16) = sub_10031B34C;
  *(v2 + 24) = v6;

  os_unfair_lock_unlock((v2 + 32));

  v7 = *(a1 + 24);
  v12[0] = sub_100323FA0();
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  v4(v12);
}

void sub_100314738()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = -v2;
    v4 = (v1 + 68);
    v5 = 1;
    v37 = -v2;
    do
    {
      v6 = *v4;
      v7 = *(v4 - 1);
      v8 = *(v4 - 12);
      v9 = *(v4 - 20);
      v10 = *(v4 - 28);
      v11 = *(v4 - 36);

      if (!v11)
      {
        break;
      }

      oslog = v6;
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v12 = sub_1004A4A54();
      v41 = sub_1004A6034();
      if (os_log_type_enabled(v12, v41))
      {
        v40 = v7;
        log = v12;
        v13 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v47 = v38;
        *v13 = 134218498;
        *(v13 + 4) = v5;
        *(v13 + 12) = 2082;

        sub_100236568(8);

        swift_bridgeObjectRelease_n();
        v14 = sub_1004A5864();
        v16 = v15;

        v17 = sub_10015BA6C(v14, v16, &v47);

        *(v13 + 14) = v17;
        *(v13 + 22) = 1024;
        if (oslog)
        {
          v40 = *SyncRequest.ID.serverTriggered.unsafeMutableAddressor();
        }

        *(v13 + 24) = v40;

        _os_log_impl(&_mh_execute_header, log, v41, "[%ld] %{public}s, req: #%u", v13, 0x1Cu);
        sub_1000197E0(v38);

        v3 = v37;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      ++v5;
      v4 += 48;
    }

    while (v3 + v5 != 1);
  }

  v18 = *(v0 + 64);
  v47 = *(v0 + 48);
  v48 = v18;
  v49 = *(v0 + 80);
  v19 = v47;
  if ((*(&v47 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v20 = v48;
  sub_10000E268(&v47, &v45, &qword_1005D8C90, &qword_1004F5F10);
  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  if (!os_log_type_enabled(v21, v22))
  {

    sub_100025F40(&v47, &qword_1005D8C90, &qword_1004F5F10);
    return;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v44 = v24;
  *v23 = 67109634;
  *(v23 + 4) = DWORD2(v19);
  *(v23 + 8) = 2048;
  *(v23 + 10) = v19;
  *(v23 + 18) = 2082;
  v25 = static MonotonicTime.now()();
  v26 = v25 - v20;
  if (v25 >= v20)
  {
    if (!__OFSUB__(v25, v20))
    {
LABEL_24:
      v29 = v26 / 1000000000.0;
      v30 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v30 setUnitsStyle:1];
      [v30 setAllowedUnits:224];
      [v30 setAllowsFractionalUnits:1];
      [v30 setMaximumUnitCount:1];
      [v30 setCollapsesLargestUnit:1];
      v31 = [v30 stringFromTimeInterval:v29];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1004A5764();
        v35 = v34;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1004A5D34();

        v33 = v45;
        v35 = v46;
      }

      v36 = sub_10015BA6C(v33, v35, &v44);

      *(v23 + 20) = v36;
      _os_log_impl(&_mh_execute_header, v21, v22, "Request #%u {%ld}, running for %{public}s", v23, 0x1Cu);
      sub_1000197E0(v24);

      sub_100025F40(&v47, &qword_1005D8C90, &qword_1004F5F10);

      return;
    }

LABEL_29:
    __break(1u);
    return;
  }

  if (__OFSUB__(v20, v25))
  {
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25 - v20;
  if (!__OFSUB__(0, v20 - v25))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_17:
  osloga = sub_1004A4A54();
  v27 = sub_1004A6034();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v19;
    _os_log_impl(&_mh_execute_header, osloga, v27, "No active request {%ld}.", v28, 0xCu);
  }
}

void sub_100314D40(double *a1, void (*a2)(void *), uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v57 - v12;
  v66 = v5[4];
  v14 = *(v66 + 16);
  v70 = v5[7];
  if (v70 < 0)
  {
    v51 = v5[3];

    v5[3] = &_swiftEmptyArrayStorage;
    v52 = sub_1004A4A74();
    v53 = *(v52 - 8);
    (*(v53 + 16))(v13, a4, v52);
    (*(v53 + 56))(v13, 0, 1, v52);
    sub_10031C31C(a1, a2, a3, v13, v5);
LABEL_28:
    sub_100025F40(v13, &qword_1005D5968, &unk_1004E9180);
    sub_100316524(v5, v14);
    return;
  }

  v15 = v5[6];
  v16 = v5[9];
  v17 = v5[10];
  v65 = v5[8];
  v64 = v16;
  v63 = v17;
  if (!v14)
  {

LABEL_27:
    v54 = sub_1004A4A74();
    v55 = *(v54 - 8);
    (*(v55 + 16))(v13, a4, v54);
    (*(v55 + 56))(v13, 0, 1, v54);
    v56 = v70;
    sub_10031C80C(a1, a2, a3, v13, v5, v70);
    sub_10031B5C0(v15, v56);
    goto LABEL_28;
  }

  v58 = a1;
  v59 = a2;
  v60 = a3;
  v61 = v13;
  v57 = v15;
  sub_10031B5D0(v15, v70);

  v75 = 0;
  v19 = (v18 + 72);
  *&v20 = 136446210;
  v67 = v20;
  v62 = v14;
  v21 = v14;
  v68 = a4;
  v69 = v5;
  while (1)
  {
    v22 = *(v19 - 5);
    v23 = *(v19 - 4);
    v25 = *(v19 - 3);
    v24 = *(v19 - 2);
    v26 = *(v19 - 2);
    v27 = *(v19 - 4);
    v28 = *v19;
    v77[0] = v22;
    v77[1] = v23;
    v77[2] = v25;
    v77[3] = v24;
    v78 = v26;
    v79 = v27;
    v80 = v28;
    if ((v27 & 1) == 0 && v26 == v70)
    {
      goto LABEL_5;
    }

    swift_bridgeObjectRetain_n();

    v29 = sub_1004A4A54();
    v30 = sub_1004A6034();
    v31 = os_log_type_enabled(v29, v30);
    v73 = v23;
    v74 = v22;
    v72 = v24;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = v67;
      sub_100236568(8);

      v34 = sub_1004A5864();
      v36 = v35;
      v5 = v69;

      v37 = sub_10015BA6C(v34, v36, &v76);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Account %{public}s did complete.", v32, 0xCu);
      sub_1000197E0(v33);
    }

    else
    {
    }

    __chkstk_darwin(v38);
    *(&v57 - 2) = v77;
    v39 = v75;
    v40 = sub_10035885C(sub_10031B740, (&v57 - 4));
    a4 = v5[3];
    v41 = a4[2];
    v42 = v41 - v40;
    if (v41 < v40)
    {
      break;
    }

    v43 = v40;
    if (v40 < 0)
    {
      goto LABEL_30;
    }

    v71 = &v57;
    v44 = v40 - v41;
    v45 = v40;
    if (__OFADD__(v41, v40 - v41))
    {
      goto LABEL_31;
    }

    v75 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v45 > a4[3] >> 1)
    {
      if (v41 <= v45)
      {
        v47 = v41 - v42;
      }

      else
      {
        v47 = v41;
      }

      a4 = sub_10035D4E4(isUniquelyReferenced_nonNull_native, v47, 1, a4);
    }

    v5 = a4 + 4;
    sub_10000C9C0(&qword_1005D8C98, &qword_1004F5F18);
    swift_arrayDestroy();
    if (v41 != v43)
    {
      memmove(&a4[8 * v43 + 4], &v5[8 * v41], (a4[2] - v41) << 6);
      v48 = a4[2];
      v49 = __OFADD__(v48, v44);
      v50 = v48 - v42;
      if (v49)
      {
        __break(1u);
LABEL_24:

        v14 = v62;
        v13 = v61;
        a3 = v60;
        a2 = v59;
        a1 = v58;
        v15 = v57;
        goto LABEL_27;
      }

      a4[2] = v50;
    }

    v5 = v69;
    v69[3] = a4;
    a4 = v68;
LABEL_5:
    v19 += 6;
    if (!--v21)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_100315324(uint64_t result)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = (v2 + 56);
    while (v5 < *(v2 + 16))
    {
      ++v5;
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_100361EC4(v15, v8, v7);

      v6 += 6;
      if (v3 == v5)
      {
        result = v4;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v9 = *(v1 + 48);
    v15[2] = *(v1 + 32);
    v15[3] = v9;
    v16[0] = *(v1 + 64);
    *(v16 + 12) = *(v1 + 76);
    v10 = *(v1 + 16);
    v15[0] = *v1;
    v15[1] = v10;
    v11 = *&v10;
    v12 = sub_100315BFC(result);
    v13 = sub_100316600(v12, _swiftEmptySetSingleton, v11, v1, 3);

    if (v13[2] <= _swiftEmptySetSingleton[2] >> 3)
    {

      sub_100317710(v13);
      v14 = _swiftEmptySetSingleton;
    }

    else
    {

      v14 = sub_10031798C(v13, _swiftEmptySetSingleton);
    }

    if (_swiftEmptySetSingleton[2] <= v13[2] >> 3)
    {
      sub_100317710(_swiftEmptySetSingleton);
    }

    else
    {
      sub_10031798C(_swiftEmptySetSingleton, v13);
    }

    return v14;
  }

  return result;
}

uint64_t sub_1003154D0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void (*a5)(uint64_t *__return_ptr, _OWORD *)@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v8 = *(a3 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v13 = result;
    v40 = a5;
    v14 = (v8 + 32);
    while (1)
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v37[2] = v14[2];
      v37[3] = v17;
      v37[0] = v15;
      v37[1] = v16;
      v18 = v14[1];
      v38[0] = *v14;
      v38[1] = v18;
      v38[2] = v14[2];
      v39 = *(v14 + 6);
      result = v15;
      v19 = HIBYTE(*(&v15 + 1)) & 0xFLL;
      if ((*(&v15 + 1) & 0x2000000000000000) == 0)
      {
        v19 = *&v37[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        __break(1u);
        return result;
      }

      if (v37[0] == __PAIR128__(a2, v13))
      {
        break;
      }

      result = sub_1004A6D34();
      if (result)
      {
        break;
      }

      v14 += 4;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    sub_10000E268(v37, v34, &qword_1005D8C98, &qword_1004F5F18);
    sub_10031B638(a4, v34);
    sub_10031B638(a4, v34);

    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();

    if (os_log_type_enabled(v24, v25))
    {
      v33 = a6;
      v26 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v26 = 134218498;
      *(v26 + 4) = *a4;
      *(v26 + 12) = 2082;

      sub_100236568(8);
      log = v24;

      v27 = sub_1004A5864();
      v29 = v28;

      v30 = sub_10015BA6C(v27, v29, v34);

      *(v26 + 14) = v30;
      *(v26 + 22) = 1024;
      sub_10031B694(a4);
      *(v26 + 24) = *(a4 + 8);
      sub_10031B694(a4);
      _os_log_impl(&_mh_execute_header, log, v25, "{%ld} Creating instance for account %{public}s for request #%u", v26, 0x1Cu);
      sub_1000197E0(v32);

      a6 = v33;
    }

    else
    {
      sub_10031B694(a4);
      sub_10031B694(a4);
    }

    sub_10000E268(v37, v34, &qword_1005D8C98, &qword_1004F5F18);
    v40(v34, v38);
    sub_100025F40(v37, &qword_1005D8C98, &qword_1004F5F18);
    v9 = *(a4 + 8);
    v21 = v34[1];
    if (v36 != 1)
    {
      sub_10034A348(v35);
    }

    sub_10034A378(v9);
    result = sub_100025F40(v37, &qword_1005D8C98, &qword_1004F5F18);
    v20 = v34[0];
    v22 = v34[2];
    v23 = v34[3];
  }

  else
  {
LABEL_9:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    a6 = 0;
  }

  *a7 = v20;
  a7[1] = v21;
  a7[2] = v22;
  a7[3] = v23;
  a7[4] = v9;
  a7[5] = a6;
  return result;
}

void *sub_100315840(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = (a3 + 40);
  v6 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5;
    v24[0] = *(v5 - 1);
    v24[1] = v8;

    a1(&v19, v24);
    if (v3)
    {
      break;
    }

    if (v19)
    {
      v18 = v19;
      v9 = v20;
      v10 = v21;
      v11 = v22;
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10035D618(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      v14 = v18;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_10035D618((v12 > 1), v13 + 1, 1, v6);
        v14 = v18;
        v6 = v15;
      }

      v6[2] = v13 + 1;
      v7 = &v6[6 * v13];
      *(v7 + 2) = v14;
      v7[6] = v9;
      v7[7] = v10;
      *(v7 + 16) = v11;
      *(v7 + 68) = BYTE4(v11) & 1;
      v7[9] = v25;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void sub_1003159B4(int a1)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *(v1 + 40);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v12)
        {
          while (1)
          {
            v14 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v14 >= v13)
            {
              goto LABEL_20;
            }

            v12 = *(v9 + 64 + 8 * v14);
            ++v8;
            if (v12)
            {
              v8 = v14;
              goto LABEL_9;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return;
        }

LABEL_9:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(*(v9 + 56) + (v15 | (v8 << 6)));
        if (v16)
        {
          break;
        }

        v17 = __OFADD__(v7, 1);
        v5 = ++v7;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      if (v16 != 1)
      {
        break;
      }

      v17 = __OFADD__(v6, 1);
      v4 = ++v6;
      if (v17)
      {
        goto LABEL_27;
      }
    }

    v17 = __OFADD__(v3++, 1);
  }

  while (!v17);
  __break(1u);
LABEL_20:
  oslog = sub_1004A4A54();
  v18 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109888;
    *(v19 + 4) = a1;
    *(v19 + 8) = 2048;
    *(v19 + 10) = v5;
    *(v19 + 18) = 2048;
    *(v19 + 20) = v4;
    *(v19 + 28) = 2048;
    *(v19 + 30) = v3;
    _os_log_impl(&_mh_execute_header, oslog, v18, "Completing sync #%u for all accounts. %ld account(s) did not connect, %ld account(s) did sync without completing, %ld account(s) did complete sync.", v19, 0x26u);
  }
}

uint64_t sub_100315B60()
{
  v1 = 0;
  v2 = *(v0 + 40);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v2 + 56) + (v8 | (v7 << 6))) != 2)
    {
      return 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 3;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100315BFC(uint64_t a1)
{
  v2 = v1;
  v5 = sub_100350D8C(&_swiftEmptyArrayStorage);
  v6 = *(v2 + 24);
  v7 = *(v6 + 16);
  v61 = a1;
  if (!v7)
  {
    v34 = 0;
LABEL_23:
    v35 = *(v2 + 32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = (v35 + 40);
      while (1)
      {
        v41 = *(v38 - 1);
        v42 = *v38;
        v44 = v38[1];
        v43 = v38[2];
        v45 = v38[4];
        if (v45 <= a1)
        {
          v46 = a1 - v45;
          if (__OFSUB__(a1, v45))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (__OFSUB__(v45, a1))
          {
            goto LABEL_48;
          }

          v46 = a1 - v45;
          if (__OFSUB__(0, v45 - a1))
          {
            goto LABEL_50;
          }
        }

        v47 = v46 / 1000000000.0;
        if (v47 > 0.0)
        {
          v48 = v38[2];
          swift_bridgeObjectRetain_n();

          sub_1000B5158(v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v63 = v5;
          v40 = sub_10035E1B0(v44, v43);
          v51 = v5[2];
          v52 = (v50 & 1) == 0;
          v20 = __OFADD__(v51, v52);
          v53 = v51 + v52;
          if (v20)
          {
            goto LABEL_51;
          }

          v54 = v50;
          if (v5[3] >= v53)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = v40;
              sub_100360DA8();
              v40 = v59;
            }
          }

          else
          {
            sub_10035EC70(v53, isUniquelyReferenced_nonNull_native);
            v40 = sub_10035E1B0(v44, v43);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_53;
            }
          }

          a1 = v61;
          v5 = v63;
          if (v54)
          {
            v39 = v40;

            v40 = v39;
          }

          else
          {
            *(v63 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            v56 = (v5[6] + 16 * v40);
            *v56 = v44;
            v56[1] = v43;
            *(v5[7] + 8 * v40) = 0;
            v57 = v5[2];
            v20 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v20)
            {
              goto LABEL_52;
            }

            v5[2] = v58;
          }

          *(v5[7] + 8 * v40) = v47 + *(v5[7] + 8 * v40);

          v37 = sub_10031C0C4;
        }

        v38 += 6;
        if (!--v36)
        {
          goto LABEL_45;
        }
      }
    }

    v37 = 0;
LABEL_45:
    sub_1000B5158(v34);
    sub_1000B5158(v37);
    return v5;
  }

  v8 = *(v6 + 48);
  v63 = *(v6 + 32);
  v64 = v8;
  v9 = *(v6 + 80);
  v65 = *(v6 + 64);
  v66 = v9;
  v10 = *(&v63 + 1);
  v11 = v63;
  v12 = HIBYTE(*(&v63 + 1)) & 0xFLL;
  if ((*(&v63 + 1) & 0x2000000000000000) == 0)
  {
    v12 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v34 = v4;
    a1 = v61;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = (v6 + 96);
  while (1)
  {
    sub_10000E268(&v63, &v62, &qword_1005D8C98, &qword_1004F5F18);

    sub_1000B5158(v13);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v5;
    v16 = sub_10035E1B0(v11, v10);
    v18 = v5[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v5[3] < v21)
    {
      sub_10035EC70(v21, v15);
      v5 = v62;
      v16 = sub_10035E1B0(v11, v10);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_53;
      }

LABEL_11:
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (v15)
    {
      goto LABEL_11;
    }

    v25 = v16;
    sub_100360DA8();
    v16 = v25;
    v5 = v62;
    if (v22)
    {
LABEL_12:
      v24 = v16;

      v16 = v24;
      goto LABEL_16;
    }

LABEL_14:
    v5[(v16 >> 6) + 8] |= 1 << v16;
    v26 = (v5[6] + 16 * v16);
    *v26 = v11;
    v26[1] = v10;
    *(v5[7] + 8 * v16) = 0;
    v27 = v5[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v20)
    {
      goto LABEL_47;
    }

    v5[2] = v28;
LABEL_16:
    *(v5[7] + 8 * v16) = *(&v66 + 1) + *(v5[7] + 8 * v16);
    sub_100025F40(&v63, &qword_1005D8C98, &qword_1004F5F18);
    v4 = sub_10031C0C4;
    if (!--v7)
    {
      goto LABEL_21;
    }

    v29 = v14[2];
    v30 = v14[3];
    v32 = *v14;
    v31 = v14[1];
    v14 += 4;
    v65 = v29;
    v66 = v30;
    v63 = v32;
    v64 = v31;
    v10 = *(&v32 + 1);
    v11 = v32;
    v33 = HIBYTE(*(&v32 + 1)) & 0xFLL;
    if ((*(&v32 + 1) & 0x2000000000000000) == 0)
    {
      v33 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v4 = sub_10031C0C4;
    v13 = sub_10031C0C4;
    if (!v33)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void sub_100316060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s6LoggerVMa_1(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = *(v3 + 40);
  if (!*(v18 + 16) || (v19 = sub_10035E1B0(a1, a2), (v20 & 1) == 0) || !*(*(v18 + 56) + v19))
  {
    sub_10031BFB8(a3, v12, _s6LoggerVMa_1);
    v34 = sub_1004A4A54();
    v35 = sub_1004A6014();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136446210;
      v38 = &v12[*(v8 + 20)];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = *(v38 + 2);
      v42 = *(v38 + 3);
      v43 = sub_1004A5864();
      v45 = v44;
      sub_10031BF58(v12, _s6LoggerVMa_1);
      v46 = sub_10015BA6C(v43, v45, &v61);

      *(v36 + 4) = v46;
      v47 = "[%{public}s] Account did complete sync, but never started.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v34, v35, v47, v36, 0xCu);
      sub_1000197E0(v37);

      return;
    }

    v48 = v12;
LABEL_11:
    sub_10031BF58(v48, _s6LoggerVMa_1);
    return;
  }

  if (*(*(v18 + 56) + v19) != 1)
  {
    sub_10031BFB8(a3, v15, _s6LoggerVMa_1);
    v34 = sub_1004A4A54();
    v35 = sub_1004A6014();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136446210;
      v49 = &v15[*(v8 + 20)];
      v50 = *v49;
      v51 = *(v49 + 1);
      v52 = *(v49 + 2);
      v53 = *(v49 + 3);
      v54 = sub_1004A5864();
      v56 = v55;
      sub_10031BF58(v15, _s6LoggerVMa_1);
      v57 = sub_10015BA6C(v54, v56, &v61);

      *(v36 + 4) = v57;
      v47 = "[%{public}s] Account did complete sync, but was already complete.";
      goto LABEL_9;
    }

    v48 = v15;
    goto LABEL_11;
  }

  sub_10031BFB8(a3, v17, _s6LoggerVMa_1);
  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v61 = v24;
    *v23 = 136446210;
    v25 = &v17[*(v8 + 20)];
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);
    v29 = *(v25 + 3);
    v30 = sub_1004A5864();
    v32 = v31;
    sub_10031BF58(v17, _s6LoggerVMa_1);
    v33 = sub_10015BA6C(v30, v32, &v61);

    *(v23 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Account did complete sync.", v23, 0xCu);
    sub_1000197E0(v24);
  }

  else
  {

    sub_10031BF58(v17, _s6LoggerVMa_1);
  }

  v58 = *(v4 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v4 + 40);
  sub_1003591C8(2, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 40) = v61;
}

void sub_100316524(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 != a2)
  {
    oslog = sub_1004A4A54();
    v3 = sub_1004A6034();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v2;
      _os_log_impl(&_mh_execute_header, oslog, v3, "%ld remaining instance(s).", v4, 0xCu);
    }
  }
}

uint64_t sub_100316600(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = _swiftEmptySetSingleton;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;

  v10 = 0;
  v11 = sub_10031950C(a1, a2, a3);

  if (v11[2])
  {
    sub_10000C9C0(&qword_1005D8CA8, &unk_1004F5F28);
    v12 = sub_1004A6A74();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v63 = v12;

  sub_100317368(v13, 1, &v63);

  v14 = v63;
  v63 = _swiftEmptySetSingleton;
  if (_swiftEmptySetSingleton[2] >= v6 || (v15 = , v16 = sub_100316AC0(v15), v18 = v17, v19 = v17, , v19 == 2))
  {
LABEL_7:

    return v5;
  }

  v54 = v6;
  v21 = &_swiftEmptySetSingleton[2];
  while (1)
  {

    v23 = sub_100318FE4(v22, v16, v18 & 1);

    v24 = *(v23 + 16);
    if (v24)
    {
      break;
    }

    v45 = &_swiftEmptyArrayStorage;
LABEL_30:

    v46 = sub_10031A104(v14, v45);

    v47 = *(v45 + 2);
    if (__OFADD__(*v21, v47))
    {
      goto LABEL_48;
    }

    if (*v21 + v47 <= v6)
    {
      sub_10031A2C4(v45);
    }

    else
    {
      v62 = v45;

      sub_100317204(&v62);

      sub_100319164();
      v48 = v6 - *v21;
      if (v48 < 0)
      {
        goto LABEL_49;
      }

      if (*(v62 + 2) < v48)
      {
        v48 = *(v62 + 2);
      }

      v49 = 2 * v48;
      if (v6 == *v21)
      {
        v50 = 1;
      }

      else
      {
        v50 = v49 + 1;
      }

      sub_10031A334((v62 + 32), 0, v50);
    }

    v5 = v63;
    v21 = v63 + 2;
    if (v63[2] < v6)
    {

      v16 = sub_100316AC0(v51);
      v18 = v52;
      v53 = v52;

      v14 = v46;
      if (v53 != 2)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v55 = v10;
  v56 = v21;
  v62 = &_swiftEmptyArrayStorage;
  sub_10034F590(0, v24, 0);
  v25 = v62;
  v26 = v23 + 64;
  v27 = -1 << *(v23 + 32);
  v28 = sub_1004A6554();
  v29 = 0;
  v57 = v23 + 72;
  v58 = v24;
  v59 = v23 + 64;
  while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v23 + 32))
  {
    v31 = v28 >> 6;
    if ((*(v26 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
    {
      goto LABEL_44;
    }

    v60 = *(v23 + 36);
    v32 = (*(v23 + 48) + 16 * v28);
    v33 = v32[1];
    v61 = *v32;
    v62 = v25;
    v34 = v23;
    v36 = *(v25 + 2);
    v35 = *(v25 + 3);

    if (v36 >= v35 >> 1)
    {
      sub_10034F590((v35 > 1), v36 + 1, 1);
      v25 = v62;
    }

    *(v25 + 2) = v36 + 1;
    v37 = &v25[16 * v36];
    *(v37 + 4) = v61;
    *(v37 + 5) = v33;
    v30 = 1 << *(v34 + 32);
    if (v28 >= v30)
    {
      goto LABEL_45;
    }

    v23 = v34;
    v26 = v59;
    v38 = *(v59 + 8 * v31);
    if ((v38 & (1 << v28)) == 0)
    {
      goto LABEL_46;
    }

    if (v60 != *(v23 + 36))
    {
      goto LABEL_47;
    }

    v39 = v38 & (-2 << (v28 & 0x3F));
    if (v39)
    {
      v30 = __clz(__rbit64(v39)) | v28 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v40 = v31 << 6;
      v41 = v31 + 1;
      v42 = (v57 + 8 * v31);
      while (v41 < (v30 + 63) >> 6)
      {
        v44 = *v42++;
        v43 = v44;
        v40 += 64;
        ++v41;
        if (v44)
        {
          sub_100020944(v28, v60, 0);
          v30 = __clz(__rbit64(v43)) + v40;
          goto LABEL_13;
        }
      }

      sub_100020944(v28, v60, 0);
    }

LABEL_13:
    ++v29;
    v28 = v30;
    if (v29 == v58)
    {

      v45 = v25;
      v6 = v54;
      v10 = v55;
      v21 = v56;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100316AC0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    v13 = (v12 + 16 * v6);
    v14 = *v13;
    v15 = *(v13 + 8);
    while (1)
    {
      v16 = v15;
      result = v14;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v20 = (v12 + ((v5 << 10) | (16 * v19)));
      v14 = *v20;
      v15 = *(v20 + 8);
      if (v14 >= result)
      {
        if ((v14 != result || (v15 & 1) == 0) | v16 & 1)
        {
          v14 = result;
          v15 = v16;
        }
      }
    }

    while (1)
    {
      v18 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v18 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v18);
      ++v5;
      if (v7)
      {
        v5 = v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100316BF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = 32;
    v18 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 16);
      v23[0] = *(a3 + v9);
      v23[1] = v10;
      v24 = *(a3 + v9 + 32);
      v25 = *(a3 + v9 + 48);
      v26 = v23[0];
      v27 = v10;
      v28 = v24;
      v29 = v25;
      sub_10031B228(v23, &v19);
      v11 = v6(&v26);
      if (v3)
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        sub_100306EFC(&v19);

        goto LABEL_15;
      }

      if (v11)
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v8;
        if ((result & 1) == 0)
        {
          result = sub_10034F650(0, v8[2] + 1, 1);
          v8 = v30;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_10034F650((v12 > 1), v13 + 1, 1);
          v8 = v30;
        }

        v8[2] = v13 + 1;
        v14 = &v8[7 * v13];
        v15 = v19;
        v16 = v20;
        v17 = v21;
        v14[10] = v22;
        *(v14 + 3) = v16;
        *(v14 + 4) = v17;
        *(v14 + 2) = v15;
        v6 = v18;
      }

      else
      {
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        result = sub_100306EFC(&v19);
      }

      ++v7;
      v9 += 56;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_100316DE0(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v5;
  v37[2] = *(a1 + 32);
  v38 = *(a1 + 48);
  v6 = a2(v37);
  if (!*(a4 + 16) || (v8 = sub_10035E1B0(v6, v7), (v9 & 1) == 0))
  {

    return 0;
  }

  v10 = *(a4 + 56) + 24 * v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);

  v14 = sub_1004A4A54();
  v15 = sub_1004A6034();

  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v17 = 136446722;
        sub_100236568(8);

        v18 = sub_1004A5864();
        v20 = v19;

        v21 = sub_10015BA6C(v18, v20, &v39);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2048;
        *(v17 + 14) = v11;
        *(v17 + 22) = 2048;
        *(v17 + 24) = v12;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Did already download too much -- %{iec-bytes}ld inside current time window, limit is %{iec-bytes}ld", v17, 0x20u);
        v22 = v34;
LABEL_12:
        sub_1000197E0(v22);

LABEL_14:

        return 0;
      }
    }

    else if (v16)
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v29 = 136446210;
      sub_100236568(8);

      v30 = sub_1004A5864();
      v32 = v31;

      v33 = sub_10015BA6C(v30, v32, &v39);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Server was recently unavailable.", v29, 0xCu);
      v22 = v36;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v24 = 136446466;
    sub_100236568(8);

    v25 = sub_1004A5864();
    v27 = v26;

    v28 = sub_10015BA6C(v25, v27, &v39);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Did download %{iec-bytes}ld inside current time window.", v24, 0x16u);
    sub_1000197E0(v35);
  }

  else
  {
  }

  return 1;
}

Swift::Int sub_100317204(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100367F40(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100317270(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100317270(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
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
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10020E050(v7, v8, a1, v4);
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
    return sub_10020DF80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100317368(uint64_t a1, char a2, void *a3)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  LOBYTE(v8) = *(a1 + 56);
  v9 = *a3;

  v10 = sub_10035E1B0(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10035EF14(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_10035E1B0(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1004A6E24();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_100360F10();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = v21[7] + 16 * v10;
  *v23 = v7;
  *(v23 + 8) = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1004A6724(30);
    v42._object = 0x80000001004AA380;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1004A5994(v42);
    sub_1004A6934();
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    sub_1004A5994(v43);
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v21[2] = v25;
  if (v40 != 1)
  {
    v4 = (a1 + 88);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v26 = *v4;
      v27 = *a3;

      v28 = sub_10035E1B0(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_10035EF14(v32, 1);
        v33 = *a3;
        v28 = sub_10035E1B0(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      v37 = v35[7] + 16 * v28;
      *v37 = v8;
      *(v37 + 8) = v26;
      v38 = v35[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v39;
      v4 += 32;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100317710(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10036742C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10031783C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 11) | (32 * v10));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        v15 = *(v11 + 24);

        v16 = sub_100367568(v12, v13, v14, v15);
        sub_100073984(v16, v17);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10031798C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v24 = sub_1004A6F14();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_100318B5C(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            sub_1004A6E94();

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            v43 = sub_1004A6F14();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_1004A6D34() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_100318648(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100020D08();
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100317EFC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v8 = a1 + 56;
  v7 = *(a1 + 56);
  v9 = -1;
  v10 = -1 << *(a1 + 32);
  v75 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (63 - v10) >> 6;
  v84 = a2 + 7;

  v16 = 0;
  v78 = v8;
  v77 = v13;
  v80 = v6;
  v79 = v14;
  if (!v12)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_67;
      }

      if (v18 >= v13)
      {
        goto LABEL_63;
      }

      v12 = *(v8 + 8 * v18);
      ++v17;
    }

    while (!v12);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = *(v14 + 48);
    v81 = v16;
    v21 = v20 + ((v16 << 11) | (32 * v19));
    v5 = *v21;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v25 = v6[5];
    sub_1004A6E94();

    v83 = v23;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v82 = v24 | (v24 << 32);
    sub_1004A6EB4(v82);
    v26 = sub_1004A6F14();
    v27 = -1 << *(v6 + 32);
    v13 = v26 & ~v27;
    v2 = v13 >> 6;
    v3 = 1 << v13;
    if (((1 << v13) & v84[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_27:

    v6 = v80;
    v16 = v81;
    v14 = v79;
    v8 = v78;
    v13 = v77;
    v9 = -1;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  v4 = ~v27;
  v28 = v80[6];
  v76 = (v83 + 32);
  while (1)
  {
    v29 = v28 + 32 * v13;
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v32 = *v29 == v5 && *(v29 + 8) == v22;
    if (v32 || (sub_1004A6D34()) && (v31 | (v31 << 32)) == v82)
    {
      v33 = *(v30 + 16);
      if (v33 == *(v83 + 16))
      {
        break;
      }
    }

LABEL_13:
    v13 = (v13 + 1) & v4;
    v2 = v13 >> 6;
    v3 = 1 << v13;
    if ((v84[v13 >> 6] & (1 << v13)) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v33 && v30 != v83)
  {
    v34 = (v30 + 32);
    v35 = v76;
    while (*v34 == *v35)
    {
      ++v34;
      ++v35;
      if (!--v33)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_13;
  }

LABEL_29:
  v86 = v75;
  v87 = v81;
  v88 = v12;
  v5 = v78;
  v4 = v79;
  v85[0] = v79;
  v85[1] = v78;

  v9 = v80;
  v37 = *(v80 + 32);
  v71 = ((1 << v37) + 63) >> 6;
  v15 = 8 * v71;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v72 = &v70;
    __chkstk_darwin(v36);
    v39 = &v70 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v84, v38);
    v40 = *&v39[8 * v2] & ~v3;
    v41 = *(v9 + 16);
    v74 = v39;
    *&v39[8 * v2] = v40;
    v42 = v41 - 1;
    v43 = v81;
    v44 = v77;
LABEL_31:
    v73 = v42;
    while (v12)
    {
LABEL_39:
      v47 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v48 = *(v4 + 48);
      v81 = v43;
      v49 = (v48 + ((v43 << 11) | (32 * v47)));
      v50 = *v49;
      v4 = v49[1];
      v51 = v49[2];
      v52 = *(v49 + 6);
      v53 = *(v9 + 40);
      sub_1004A6E94();

      v83 = v51;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v82 = v52 | (v52 << 32);
      sub_1004A6EB4(v82);
      v54 = sub_1004A6F14();
      v55 = -1 << *(v9 + 32);
      v5 = v54 & ~v55;
      v13 = v5 >> 6;
      v3 = 1 << v5;
      if (((1 << v5) & v84[v5 >> 6]) != 0)
      {
        v9 = ~v55;
        v56 = v80[6];
        v76 = (v83 + 32);
        while (1)
        {
          v57 = v56 + 32 * v5;
          v58 = *(v57 + 16);
          v2 = *(v57 + 24);
          v59 = *v57 == v50 && *(v57 + 8) == v4;
          if (v59 || (sub_1004A6D34()) && (v2 | (v2 << 32)) == v82)
          {
            v60 = *(v58 + 16);
            if (v60 == *(v83 + 16))
            {
              break;
            }
          }

LABEL_41:
          v5 = (v5 + 1) & v9;
          v13 = v5 >> 6;
          v3 = 1 << v5;
          if ((v84[v5 >> 6] & (1 << v5)) == 0)
          {
            goto LABEL_32;
          }
        }

        if (v60)
        {
          v61 = v58 == v83;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          v62 = (v58 + 32);
          v63 = v76;
          while (v60)
          {
            if (*v62 != *v63)
            {
              goto LABEL_41;
            }

            ++v62;
            ++v63;
            if (!--v60)
            {
              goto LABEL_57;
            }
          }

          __break(1u);
          goto LABEL_66;
        }

LABEL_57:

        v64 = v74[v13];
        v74[v13] = v64 & ~v3;
        v9 = v80;
        v43 = v81;
        v4 = v79;
        v5 = v78;
        v44 = v77;
        if ((v64 & v3) != 0)
        {
          v42 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            v6 = _swiftEmptySetSingleton;
            goto LABEL_63;
          }

          goto LABEL_31;
        }
      }

      else
      {
LABEL_32:

        v9 = v80;
        v43 = v81;
        v4 = v79;
        v5 = v78;
        v44 = v77;
      }
    }

    v45 = v43;
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v44)
      {
        v6 = sub_100318D80(v74, v71, v73, v9);
        goto LABEL_63;
      }

      v12 = *(v5 + 8 * v46);
      ++v45;
      if (v12)
      {
        v43 = v46;
        goto LABEL_39;
      }
    }

LABEL_66:
    __break(1u);
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v66 = v15;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v67 = v9;
  v68 = swift_slowAlloc();
  memcpy(v68, v84, v66);
  v69 = sub_100318880(v68, v71, v67, v13, v85);

  v75 = v86;
  v6 = v69;
LABEL_63:
  sub_100020D08();
  return v6;
}

unint64_t *sub_100318648(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_100318B5C(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v20 = sub_1004A6F14();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1004A6D34() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return _swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100318880(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v37 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v43 = a3 + 56;
  v38 = a5;
  while (2)
  {
    v36 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = (a5[2] + 64) >> 6;
          v11 = a5[3];
          while (1)
          {
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v9 >= v10)
            {
              if (v10 <= v7 + 1)
              {
                v34 = v7 + 1;
              }

              else
              {
                v34 = (a5[2] + 64) >> 6;
              }

              a5[3] = v34 - 1;
              a5[4] = 0;

              return sub_100318D80(v37, a2, v36, a3);
            }

            v8 = *(a5[1] + 8 * v9);
            ++v11;
            if (v8)
            {
              goto LABEL_10;
            }
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        v9 = a5[3];
LABEL_10:
        v12 = *(*a5 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v8))));
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        v17 = *(a3 + 40);
        sub_1004A6E94();

        v42 = v15;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v41 = v16 | (v16 << 32);
        sub_1004A6EB4(v41);
        v18 = sub_1004A6F14();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v43 + 8 * (v20 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v38;
      }

      v23 = ~v19;
      v24 = *(a3 + 48);
      v39 = (v15 + 32);
      while (1)
      {
        v25 = v24 + 32 * v20;
        result = *v25;
        v26 = *(v25 + 16);
        v27 = *(v25 + 24);
        v28 = *v25 == v13 && *(v25 + 8) == v14;
        if (v28 || (result = sub_1004A6D34(), (result & 1) != 0))
        {
          if ((v27 | (v27 << 32)) == v41)
          {
            v29 = *(v26 + 16);
            if (v29 == *(v42 + 16))
            {
              break;
            }
          }
        }

LABEL_12:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v43 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }

      if (v29)
      {
        v30 = v26 == v42;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = (v26 + 32);
        v32 = v39;
        while (v29)
        {
          if (*v31 != *v32)
          {
            goto LABEL_12;
          }

          ++v31;
          ++v32;
          if (!--v29)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_28:

      a5 = v38;
      v33 = v37[v21];
      v37[v21] = v33 & ~v22;
    }

    while ((v33 & v22) == 0);
    v6 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_38;
    }

    if (v36 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

uint64_t sub_100318B5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D8CA0, &qword_1004F5F20);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    result = sub_1004A6F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100318D80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005D8CC0, &qword_1004F5F48);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 32 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = v9[5];
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1004A6EB4(v20 | (v20 << 32));
    result = sub_1004A6F14();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = v9[6] + 32 * v25;
    *v30 = v17;
    *(v30 + 8) = v18;
    *(v30 + 16) = v19;
    *(v30 + 24) = v20;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100318FE4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v10 = &v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1003192E0(v10, v8, v6, a2, a3 & 1);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_10031947C(v12, v8, v6, a2, a3 & 1);

  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_100319164()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v6 = PCG32Random.next()();
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            v9 = PCG32Random.next()();
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      if (v4 != v10)
      {
        v11 = *(v1 + 2);
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v12 = &v1[16 * v4 + 32];
        v14 = *v12;
        v13 = *(v12 + 1);
        v15 = &v1[16 * v10 + 32];
        v16 = *v15;
        v17 = *(v15 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_100367F40(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v18 = &v1[16 * v4 + 32];
        v19 = *(v18 + 1);
        *v18 = v16;
        *(v18 + 1) = v17;

        if (v10 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v20 = &v1[16 * v10 + 32];
        v21 = *(v20 + 1);
        *v20 = v14;
        *(v20 + 1) = v13;

        *v22 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
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
}

unint64_t *sub_1003192E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = v12 | (v7 << 6);
LABEL_11:
    v16 = *(a3 + 56) + 16 * v13;
    if (*v16 == a4 && ((*(v16 + 8) ^ a5) & 1) == 0)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_100359920(result, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      return sub_100359920(result, a2, v6, a3);
    }

    v15 = *(a3 + 64 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003193E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100319F60(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_10031947C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

    v10 = sub_1003192E0(result, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

void *sub_10031950C(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v4)
  {
    sub_10034F5B0(0, v4, 0);
    v8 = v3 + 64;
    v9 = -1 << *(v3 + 32);
    v10 = sub_1004A6554();
    result = &_swiftEmptyArrayStorage;
    v11 = 0;
    v12 = *(v3 + 36);
    v50 = a2 + 56;
    v43 = v3 + 72;
    v44 = v4;
    v45 = a2;
    v46 = v12;
    v47 = v3 + 64;
    v48 = v3;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v3 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_39;
      }

      if (v12 != *(v3 + 36))
      {
        goto LABEL_40;
      }

      v49 = v11;
      v16 = (*(v3 + 48) + 16 * v10);
      v17 = *(*(v3 + 56) + 8 * v10);
      v19 = *v16;
      v18 = v16[1];
      v20 = floor(v17 / a3);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v20 <= -9.22337204e18)
        {
          goto LABEL_44;
        }

        if (v20 >= 9.22337204e18)
        {
          goto LABEL_45;
        }

        v21 = v20 & ~(v20 >> 63);
      }

      else
      {
        v21 = 0;
      }

      v22 = result;
      if (*(a2 + 16))
      {
        v23 = *(a2 + 40);
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v24 = sub_1004A6F14();
        v25 = -1 << *(a2 + 32);
        v26 = v24 & ~v25;
        if ((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(a2 + 48) + 16 * v26);
            v29 = *v28 == v19 && v28[1] == v18;
            if (v29 || (sub_1004A6D34() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v30 = 1;
        }

        else
        {
LABEL_23:
          v30 = 0;
        }
      }

      else
      {

        v30 = 0;
      }

      result = v22;
      v51 = v22;
      v31 = v22[2];
      v32 = result[3];
      if (v31 >= v32 >> 1)
      {
        sub_10034F5B0((v32 > 1), v31 + 1, 1);
        result = v51;
      }

      result[2] = v31 + 1;
      v33 = &result[4 * v31];
      *(v33 + 4) = v19;
      *(v33 + 5) = v18;
      *(v33 + 6) = v21;
      v33[56] = v30;
      v3 = v48;
      v13 = 1 << *(v48 + 32);
      if (v10 >= v13)
      {
        goto LABEL_41;
      }

      v8 = v47;
      v34 = *(v47 + 8 * v15);
      if ((v34 & (1 << v10)) == 0)
      {
        goto LABEL_42;
      }

      v12 = v46;
      if (v46 != *(v48 + 36))
      {
        goto LABEL_43;
      }

      v35 = v34 & (-2 << (v10 & 0x3F));
      if (v35)
      {
        v13 = __clz(__rbit64(v35)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v14 = v44;
        a2 = v45;
      }

      else
      {
        v36 = v15 << 6;
        v37 = v15 + 1;
        v38 = (v43 + 8 * v15);
        v14 = v44;
        a2 = v45;
        while (v37 < (v13 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            v41 = result;
            sub_100020944(v10, v46, 0);
            result = v41;
            v13 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        v42 = result;
        sub_100020944(v10, v46, 0);
        result = v42;
      }

LABEL_4:
      v11 = v49 + 1;
      v10 = v13;
      if (v49 + 1 == v14)
      {
        return result;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003198C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = sub_1004A5234();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v48);
  v49 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = (&v47 - v14);
  v16 = sub_1004A4374();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030E32C(0x724DA56DFED9E99ALL, v51);
  v21 = v51[3];
  *(v5 + 80) = v51[2];
  *(v5 + 96) = v21;
  *(v5 + 112) = v52[0];
  *(v5 + 124) = *(v52 + 12);
  v22 = v51[1];
  *(v5 + 48) = v51[0];
  *(v5 + 64) = v22;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0;
  sub_10000C9C0(&qword_1005D8CC8, &qword_1004F5F50);
  v23 = swift_allocObject();
  *(v23 + 32) = 0;
  *(v23 + 16) = UInt32.init(_:);
  *(v23 + 24) = 0;
  *(v5 + 200) = v23;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v24 = a1;
  v25 = a2;

  *(v5 + 184) = static MonotonicTime.now()();
  *(v5 + 192) = static MonotonicTime.now()();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = qword_1005D8738;
  v28 = v24;

  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_1001C203C(v16, qword_1005D8A40);
  (*(v17 + 16))(v20, v29, v16);
  v30 = sub_10030D500(v20, v28, sub_10031C05C, v26);

  v31 = *(v5 + 144);
  *(v5 + 144) = v30;

  *v15 = 1;
  v32 = enum case for DispatchTimeInterval.seconds(_:);
  v33 = *(v10 + 104);
  v34 = v48;
  v33(v15, enum case for DispatchTimeInterval.seconds(_:), v48);
  v35 = v49;
  *v49 = 1;
  v33(v35, v32, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10031C064;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3920;
  v37 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v38 = v28;

  v39 = RestartableTimer.init(queue:repeating:leeway:closure:)(v38, v15, v35, v37);

  v40 = *(v5 + 176);
  *(v5 + 176) = v39;

  type metadata accessor for StateCapture();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v38;

  v43 = StateCapture.__allocating_init(title:queue:capture:)(0x64616F6C6E776F44, 0xEA00000000007265, v42, sub_10031C06C, v41);
  v44 = *(v5 + 168);
  *(v5 + 168) = v43;

  v46 = *(v5 + 144);
  if (v46)
  {
    dispatch_activate(*(v46 + OBJC_IVAR____TtC17IMAPSearchIndexer17DiskSpaceObserver_source));
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100319DA4(uint64_t *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  if (qword_1005D8758 != -1)
  {
    swift_once();
  }

  v4 = sub_1004A4A74();
  sub_1001C203C(v4, qword_1005D8B78);

  v5 = sub_1004A4A54();
  v6 = sub_1004A6034();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    sub_100236568(8);

    v9 = sub_1004A5864();
    v11 = v10;

    v12 = sub_10015BA6C(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tearing down instance for account %{public}s.", v7, 0xCu);
    sub_1000197E0(v8);
  }

  else
  {
  }

  v13 = *a1;
  Engine.tearDown()();
}

unint64_t *sub_100319F60(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    __chkstk_darwin(result);
    v18[2] = v23;

    v16 = sub_100351DE4(sub_10031B6E8, v18, v22);

    if ((v16 & 1) == 0)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_100359920(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100359920(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10031A104(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1003193E0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100319F60((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_10031A2C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_100361EC4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10031A334(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v3)
    {
      v3 = a2;
    }

    v5 = v3 - a2;
    v6 = (result + 16 * a2 + 8);
    while (v5)
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_100361EC4(&v9, v8, v7);

      --v5;
      v6 += 2;
      if (!--v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031A3C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v119 = a1;
  v121 = sub_1004A4A74();
  v105 = *(v121 - 8);
  v13 = *(v105 + 64);
  __chkstk_darwin(v121);
  v103 = v14;
  v104 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004A53F4();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = (v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v107 = a5;
  v108 = a6;
  v20[4] = a6;
  v20[5] = a7;
  v21 = a3[2];
  *v19 = v21;
  v22 = v16[13];
  v113 = enum case for DispatchPredicate.onQueue(_:);
  v114 = v16 + 13;
  v112 = v22;
  v22(v19);

  v109 = a7;

  v110 = v21;
  v23 = sub_1004A5404();
  v25 = v16[1];
  v24 = (v16 + 1);
  v115 = v19;
  v116 = v24;
  v117 = v15;
  v111 = v25;
  v25(v19, v15);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_12;
  }

  v106 = a4;
  v24 = *(a2 + 16);
  v26 = _swiftEmptyArrayStorage;
  v118 = v20;
  v120 = a3;
  if (v24)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_10034F590(0, v24, 0);
    v26 = aBlock;
    v27 = (a2 + 40);
    v28 = v24;
    v29 = v24;
    while (1)
    {
      v31 = *(v27 - 1);
      v30 = *v27;
      v32 = HIBYTE(*v27) & 0xF;
      if ((*v27 & 0x2000000000000000) == 0)
      {
        v32 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_43;
      }

      aBlock = v26;
      v33 = *(v26 + 2);
      v34 = *(v26 + 3);

      if (v33 >= v34 >> 1)
      {
        sub_10034F590((v34 > 1), v33 + 1, 1);
        v26 = aBlock;
      }

      *(v26 + 2) = v33 + 1;
      v35 = &v26[16 * v33];
      *(v35 + 4) = v31;
      *(v35 + 5) = v30;
      v27 += 7;
      if (!--v29)
      {
        a3 = v120;
        v24 = v28;
        v20 = v118;
        break;
      }
    }
  }

  v23 = sub_100367FF4(v26);

  if (qword_1005D8758 != -1)
  {
    goto LABEL_40;
  }

LABEL_12:
  v36 = sub_1001C203C(v121, qword_1005D8B78);

  v37 = sub_1004A4A54();
  v38 = sub_1004A6034();

  if (os_log_type_enabled(v37, v38))
  {
    v97 = v38;
    v98 = v37;
    v39 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v122 = v95;
    *v39 = 134218498;
    *(v39 + 4) = v119;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v24;

    v96 = v39;
    *(v39 + 22) = 2082;
    v40 = *(v23 + 16);
    v101 = a2;
    v100 = v24;
    v99 = v36;
    v102 = v23;
    if (v40)
    {
      v41 = sub_10035E0A8(v40, 0);
      v42 = sub_100139548(&aBlock, v41 + 4, v40, v23);

      sub_100020D08();
      if (v42 != v40)
      {
        goto LABEL_42;
      }

      a2 = v101;
      v24 = v100;
      v36 = v99;
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    aBlock = v41;
    sub_100317204(&aBlock);
    v43 = aBlock;
    v44 = aBlock[2];
    if (v44)
    {
      aBlock = _swiftEmptyArrayStorage;
      sub_10034F5D0(0, v44, 0);
      v45 = aBlock;
      v94[1] = v43;
      v46 = (v43 + 5);
      do
      {
        v47 = *(v46 - 1);
        if ((*v46 & 0x2000000000000000) == 0)
        {
          v48 = *(v46 - 1);
        }

        v49 = *v46;

        sub_1004A5954();
        v50 = sub_1004A5AB4();
        v52 = v51;
        v54 = v53;
        v56 = v55;

        aBlock = v45;
        v58 = *(v45 + 2);
        v57 = *(v45 + 3);
        if (v58 >= v57 >> 1)
        {
          sub_10034F5D0((v57 > 1), v58 + 1, 1);
          v45 = aBlock;
        }

        *(v45 + 2) = v58 + 1;
        v59 = &v45[32 * v58];
        *(v59 + 4) = v50;
        *(v59 + 5) = v52;
        *(v59 + 6) = v54;
        *(v59 + 7) = v56;
        v46 += 2;
        --v44;
      }

      while (v44);

      v20 = v118;
      a2 = v101;
      v24 = v100;
      v36 = v99;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    aBlock = v45;
    sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
    sub_1000CBB00(&qword_1005D6C10, &unk_1005DA980, &unk_1004F5F00);
    sub_1002AACE0();
    v60 = sub_1004A5BC4();
    v62 = v61;

    v63 = sub_10015BA6C(v60, v62, &v122);

    v64 = v96;
    *(v96 + 24) = v63;
    v65 = v98;
    _os_log_impl(&_mh_execute_header, v98, v97, "Starting {%ld} for %ld account(s): %{public}s", v64, 0x20u);
    sub_1000197E0(v95);

    a3 = v120;
    v23 = v102;
  }

  else
  {
  }

  v66 = a3[3];
  v67 = swift_allocObject();
  *(v67 + 16) = a3;
  *(v67 + 24) = v23;
  v127 = sub_10031AF44;
  v128 = v67;
  aBlock = _NSConcreteStackBlock;
  v124 = 1107296256;
  v125 = sub_10019C778;
  v126 = &unk_1005B35B0;
  v68 = _Block_copy(&aBlock);

  v102 = v66;
  [v66 performBlock:v68];
  _Block_release(v68);
  if (!v24)
  {
    v78 = v107;
    v79 = 3;
    goto LABEL_37;
  }

  v69 = v115;
  v70 = v110;
  *v115 = v110;
  v71 = v117;
  v112(v69, v113, v117);
  v72 = v70;
  LOBYTE(v70) = sub_1004A5404();
  v111(v69, v71);
  if (v70)
  {
    v73 = a3[19];
    if (v73 >= 11000000000 || (v74 = a3[20], v74 > 0x98BCA59FFLL))
    {
      v80 = a3[4];
      sub_100327468();
      v81 = swift_allocObject();
      v82 = v119;
      *(v81 + 2) = a3;
      *(v81 + 3) = v82;
      *(v81 + 4) = sub_10031AEF8;
      *(v81 + 5) = v20;
      v83 = a2;
      v84 = v105;
      v85 = v104;
      v86 = v36;
      v87 = v121;
      (*(v105 + 16))(v104, v86, v121);
      v88 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v89 = (v103 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      *(v90 + 16) = a3;
      *(v90 + 24) = v83;
      (*(v84 + 32))(v90 + v88, v85, v87);
      v91 = (v90 + v89);
      *v91 = sub_10031AFC8;
      v91[1] = v81;
      v127 = sub_10031B0DC;
      v128 = v90;
      aBlock = _NSConcreteStackBlock;
      v124 = 1107296256;
      v125 = sub_10019C778;
      v126 = &unk_1005B3628;
      v92 = _Block_copy(&aBlock);
      swift_retain_n();

      [v102 performBlock:v92];
      _Block_release(v92);
    }

    v75 = sub_1004A4A54();
    v76 = sub_1004A6014();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134218240;
      *(v77 + 4) = v73;
      *(v77 + 12) = 2048;
      *(v77 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "Refusing download & index due to low disk space %{iec-bytes}ld / %{iec-bytes}ld.", v77, 0x16u);
    }

    v78 = v107;
    v79 = 0;
LABEL_37:
    sub_10032131C(v78, v79, v108, v109);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10031AF04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031AF44()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  return sub_100309F8C(v1, *(v2 + 40));
}

uint64_t sub_10031AF70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10031AF88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10031AFC8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  sub_10030EFC8(v3, a1, v4, v5);
}

uint64_t sub_10031AFF8()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10031B0DC()
{
  v1 = *(sub_1004A4A74() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100313244(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_10031B170(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  return sub_100316DE0(v8, v2, v3, v4) & 1;
}

uint64_t sub_10031B1B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10031B284@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v7);
  result = *&v7;
  v6 = *v8;
  *a1 = v7;
  *(a1 + 16) = v6;
  *(a1 + 29) = *&v8[13];
  return result;
}

uint64_t sub_10031B2D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  return v5(v8);
}

unint64_t sub_10031B368(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_10035E1B0(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_10035F1D4(v15, v5 & 1);
    v17 = *a3;
    result = sub_10035E1B0(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1004A6E24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v22 = (v19[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v19[7] + result) = v9;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_100361088();
  result = v21;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  *(v19[7] + v20) = v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v26 = *a3;

      result = sub_10035E1B0(v7, v6);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v27;
      if (v26[3] < v30)
      {
        sub_10035F1D4(v30, 1);
        v31 = *a3;
        result = sub_10035E1B0(v7, v6);
        if ((v8 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v8)
      {
        v25 = result;

        *(v33[7] + v25) = v9;
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v7;
        v34[1] = v6;
        *(v33[7] + result) = v9;
        v35 = v33[2];
        v14 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v5 += 24;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10031B5C0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_10031B5D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

double sub_10031B5E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 48);
  sub_1003154D0(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 32), *(v2 + 40), *(v2 + 56), v9);
  if (!v3)
  {
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
    result = *&v10;
    a2[2] = v10;
  }

  return result;
}

uint64_t sub_10031B6E8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34() & 1;
  }
}

uint64_t sub_10031B740(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return sub_10031BC94(v6, *(v2 + 16), *(v2 + 24)) & 1;
}

unint64_t sub_10031B780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D8CB8, &qword_1004F5F40);
    v3 = sub_1004A6A74();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1002B375C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10031B86C@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t (***a3)(uint64_t a1)@<X8>)
{
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = *a1;
  v10 = *(&v50 + 1);
  v11 = v50;
  v12 = HIBYTE(*(&v50 + 1)) & 0xFLL;
  if ((*(&v50 + 1) & 0x2000000000000000) == 0)
  {
    v12 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v45 = v9;
    v46 = a1;
    v47 = a3;
    v13 = qword_1005D8758;

    if (v13 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v14 = sub_1004A4A74();
  sub_1001C203C(v14, qword_1005D8B78);

  v15 = sub_1004A4A54();
  v16 = sub_1004A6034();
  sub_10031BD04(&v50);
  v17 = os_log_type_enabled(v15, v16);
  v48 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49[0] = v19;
    *v18 = 136446210;

    sub_100236568(8);
    v20 = v10;
    sub_10031BD04(&v50);
    v21 = sub_1004A5864();
    v23 = v22;

    v24 = v21;
    v10 = v20;
    v11 = v48;
    v25 = sub_10015BA6C(v24, v23, v49);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating new instance for account: %{public}s", v18, 0xCu);
    sub_1000197E0(v19);
  }

  v44 = v10;
  v26 = a2[3];
  v27 = a2[4];
  v28 = a2[5];
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v11;
  v30[4] = v10;
  v43[1] = type metadata accessor for Engine(0);
  v31 = v26;

  v43[0] = v28;

  v32 = v46;
  sub_10031B228(v46, v49);
  v33 = v45;
  sub_1003065F0(v32, v45);
  v34 = sub_10031B780(_swiftEmptyArrayStorage);
  __chkstk_darwin(v34);
  v43[-6] = v32;
  v43[-5] = v31;
  v35 = type metadata accessor for SearchIndexPersistence();
  v36 = static Engine.makeEngineAndPersistence<A>(configuration:windowOfInterestSizes:environment:makePersistence:)(v33, v34, 0, 1, 2, 0, 3, 0, sub_10031BDDC, &v43[-8], v35, &off_1005B4FE0);
  v38 = v37;

  sub_10031BF58(v33, type metadata accessor for Configuration);
  sub_10031BE0C(&v50, v49);

  Engine.start()();

  sub_100306EFC(v32);

  v40 = v47;
  v41 = v48;
  *v47 = v36;
  v40[1] = v38;
  v42 = v44;
  v40[2] = v41;
  v40[3] = v42;
  *(v40 + 8) = 0;
  *(v40 + 36) = 1;
  return result;
}

uint64_t sub_10031BC94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v7 = a1[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (result == a2 && v7 == a3)
    {
      return 1;
    }

    else
    {
      return sub_1004A6D34() & 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031BD58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10031BD90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10031BE68(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031BEDC()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5] >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10031BF2C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  return sub_10031108C(v1, v2, v3);
}

uint64_t sub_10031BF58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10031BFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10031C028(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

uint64_t sub_10031C108()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10031C150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10031C174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10031C1BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10031C22C(uint64_t a1, uint64_t a2)
{
  if ((sub_1004A5724() & 1) == 0)
  {
    return 0;
  }

  v4 = _s5StateV12InstanceInfoVMa();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

Swift::Int sub_10031C2B4()
{
  sub_1004A6E94();
  DisplayPart.PlainTextLineKind.hash(into:)(v2, *v0);
  return sub_1004A6F14();
}

BOOL sub_10031C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return sub_10031C22C(a1, a2);
}

uint64_t sub_10031C31C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v9 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v48 = &v38 - v11;
  v50 = *(a5 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v12 = a5 + 32;
    v13 = *(a5 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003364B8(v13);
      v13 = result;
    }

    *(a5 + 24) = v50;
    *(a5 + 32) = v13;
    if (!v13[2])
    {
      return result;
    }

    v47 = (v50 + 11);
    *&v15 = 136446466;
    v38 = v15;
    v49 = a1;
    v40 = a5;
    v39 = a3;
    v45 = a2;
    while (1)
    {
      v16 = v13[6];
      v17 = v13[7];
      v18 = v13[9];
      if (v18 > a1)
      {
        break;
      }

      v19 = a1 - v18;
      if (__OFSUB__(a1, v18))
      {
        goto LABEL_46;
      }

LABEL_12:
      if (v19 / 1000000000.0 < 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v19 / 1000000000.0;
      }

      a1 = v50[2];
      if (a1)
      {
        v21 = v47;
        while (1)
        {
          v22 = *(v21 - 7);
          v23 = *(v21 - 6);
          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (!v24)
          {
            __break(1u);
            goto LABEL_45;
          }

          v25 = v22 == v16 && v23 == v17;
          if (v25 || (sub_1004A6D34() & 1) != 0)
          {
            break;
          }

          v21 += 8;
          if (!--a1)
          {
            goto LABEL_37;
          }
        }

        *v21 = v20 + *v21;
        *(a5 + 24) = v50;
        v26 = *v21;
        a1 = *v21 & 0x7FFFFFFFFFFFFFFFLL;

        if (a1 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        if (v26 <= -9.22337204e18)
        {
          goto LABEL_49;
        }

        if (v26 >= 9.22337204e18)
        {
          goto LABEL_50;
        }

        v27 = v48;
        sub_10031DC4C(v46, v48);
        v28 = sub_1004A4A74();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v27, 1, v28) == 1)
        {

          sub_100025F40(v27, &qword_1005D5968, &unk_1004E9180);
        }

        else
        {

          v30 = sub_1004A4A54();
          v31 = sub_1004A6034();

          v44 = v31;
          if (os_log_type_enabled(v30, v31))
          {
            v43 = v26;
            v32 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v51 = v42;
            *v32 = v38;
            sub_100236568(8);
            v41 = v30;

            a3 = v39;
            v33 = sub_1004A5864();
            v35 = v34;
            a5 = v40;

            v36 = sub_10015BA6C(v33, v35, &v51);

            *(v32 + 4) = v36;
            *(v32 + 12) = 2048;
            *(v32 + 14) = v43;
            v37 = v41;
            _os_log_impl(&_mh_execute_header, v41, v44, "Tearing down instance for account %{public}s (run time: %ld)", v32, 0x16u);
            sub_1000197E0(v42);
          }

          else
          {
          }

          (*(v29 + 8))(v48, v28);
        }

        a2 = v45;
      }

LABEL_37:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (!v13[2])
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = sub_1003364B8(v13);
        v13 = result;
        if (!*(result + 16))
        {
LABEL_42:
          __break(1u);
          return result;
        }
      }

      a2(v13 + 4);
      *v12 = v13;
      sub_10034A618(0, &v52);

      v54 = v53;
      result = sub_10031DCBC(&v54);
      v13 = *v12;
      a1 = v49;
      if (!*(*v12 + 16))
      {
        return result;
      }
    }

    if (!__OFSUB__(v18, a1))
    {
      v19 = a1 - v18;
      if (__OFSUB__(0, v18 - a1))
      {
        goto LABEL_47;
      }

      goto LABEL_12;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v50 = sub_1003364CC(v50);
  }
}

uint64_t sub_10031C80C(double *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v53 = a4;
  v56 = a2;
  v57 = a3;
  v9 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v52 = v42 - v11;
  v12 = *(a5 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    v12 = sub_1003364CC(v12);
  }

  v14 = a5 + 32;
  v13 = *(a5 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003364B8(v13);
    v13 = result;
  }

  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  v54 = a5;
  v17 = v13[2];
  if (!v17)
  {
    return result;
  }

  v51 = (v12 + 11);
  *&v16 = 136446466;
  v49 = v16;
  v55 = a1;
  while (1)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = &v13[v18];
      if ((v13[v18 + 8] & 0x100000000) != 0 || *(v20 + 16) != a6)
      {
        break;
      }

      ++v19;
      v18 += 6;
      if (v17 == v19)
      {
        return result;
      }
    }

    v22 = v20[6];
    v21 = v20[7];
    v23 = v20[9];
    if (v23 <= a1)
    {
      break;
    }

    if (__OFSUB__(v23, a1))
    {
      goto LABEL_50;
    }

    v24 = a1 - v23;
    if (__OFSUB__(0, v23 - a1))
    {
      goto LABEL_51;
    }

LABEL_17:
    if (v24 / 1000000000.0 < 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24 / 1000000000.0;
    }

    a5 = v12[2];
    if (a5)
    {
      a1 = v51;
      while (1)
      {
        v26 = *(a1 - 7);
        v27 = *(a1 - 6);
        v28 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v28 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (!v28)
        {
          __break(1u);
          goto LABEL_47;
        }

        v29 = v26 == v22 && v27 == v21;
        if (v29 || (sub_1004A6D34() & 1) != 0)
        {
          break;
        }

        a1 += 8;
        if (!--a5)
        {
          goto LABEL_41;
        }
      }

      *a1 = v25 + *a1;
      *(v54 + 24) = v12;
      v30 = *a1;
      v31 = *a1 & 0x7FFFFFFFFFFFFFFFLL;

      if (v31 > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_52;
      }

      if (v30 <= -9.22337204e18)
      {
        goto LABEL_53;
      }

      if (v30 >= 9.22337204e18)
      {
        goto LABEL_54;
      }

      v32 = v52;
      sub_10031DC4C(v53, v52);
      a5 = sub_1004A4A74();
      v50 = *(a5 - 8);
      if ((*(v50 + 48))(v32, 1, a5) == 1)
      {

        sub_100025F40(v32, &qword_1005D5968, &unk_1004E9180);
      }

      else
      {
        v47 = v12;
        v48 = a5;

        a5 = sub_1004A4A54();
        v33 = sub_1004A6034();

        v46 = v33;
        if (os_log_type_enabled(a5, v33))
        {
          v45 = v30;
          v34 = swift_slowAlloc();
          v44 = a5;
          a5 = v34;
          v35 = swift_slowAlloc();
          v58 = v35;
          *a5 = v49;
          v43 = sub_100236568(8);
          v42[1] = v36;
          v42[0] = v37;

          v43 = sub_1004A5864();
          v39 = v38;

          v40 = sub_10015BA6C(v43, v39, &v58);

          *(a5 + 4) = v40;
          *(a5 + 12) = 2048;
          *(a5 + 14) = v45;
          v41 = v44;
          _os_log_impl(&_mh_execute_header, v44, v46, "Tearing down instance for account %{public}s (run time: %ld)", a5, 0x16u);
          sub_1000197E0(v35);
        }

        else
        {
        }

        v12 = v47;
        (*(v50 + 8))(v32, v48);
      }
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1003364B8(v13);
    }

    a1 = v55;
    if (v19 >= v13[2])
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v56(&v13[v18 + 4]);
    *v14 = v13;
    sub_10034A618(v19, &v59);

    v61 = v60;
    result = sub_10031DCBC(&v61);
    v13 = *v14;
    v17 = *(*v14 + 16);
    if (!v17)
    {
      return result;
    }
  }

  v24 = a1 - v23;
  if (!__OFSUB__(a1, v23))
  {
    goto LABEL_17;
  }

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
  return result;
}

uint64_t sub_10031CD50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a2 & (a4 ^ 1);
  if (a1 != a3)
  {
    v4 = 0;
  }

  if (a1 >= a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_10031CDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - v8;
  v48 = *(a3 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v10 = a3 + 32;
    v11 = *(a3 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003364B8(v11);
      v11 = result;
    }

    *(a3 + 24) = v48;
    *(a3 + 32) = v11;
    if (!v11[2])
    {
      return result;
    }

    v47 = (v48 + 11);
    *&v13 = 136446466;
    v38 = v13;
    v40 = a3;
    v39 = a2;
    v45 = v9;
    v46 = a1;
    while (1)
    {
      v15 = v11[6];
      v14 = v11[7];
      v16 = v11[9];
      if (v16 > a1)
      {
        break;
      }

      v17 = a1 - v16;
      if (__OFSUB__(a1, v16))
      {
        goto LABEL_45;
      }

LABEL_12:
      if (v17 / 1000000000.0 < 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v17 / 1000000000.0;
      }

      v19 = v48[2];
      if (v19)
      {
        v20 = v47;
        while (1)
        {
          v21 = *(v20 - 7);
          v22 = *(v20 - 6);
          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = v21 & 0xFFFFFFFFFFFFLL;
          }

          if (!v23)
          {
            __break(1u);
            goto LABEL_44;
          }

          v24 = v21 == v15 && v22 == v14;
          if (v24 || (sub_1004A6D34() & 1) != 0)
          {
            break;
          }

          v20 += 8;
          if (!--v19)
          {
            goto LABEL_36;
          }
        }

        *v20 = v18 + *v20;
        *(a3 + 24) = v48;
        v25 = *v20;
        v26 = *v20 & 0x7FFFFFFFFFFFFFFFLL;

        if (v26 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        if (v25 <= -9.22337204e18)
        {
          goto LABEL_48;
        }

        if (v25 >= 9.22337204e18)
        {
          goto LABEL_49;
        }

        sub_10031DC4C(a2, v9);
        v27 = sub_1004A4A74();
        v28 = v9;
        v29 = *(v27 - 8);
        if ((*(v29 + 48))(v28, 1, v27) == 1)
        {

          sub_100025F40(v28, &qword_1005D5968, &unk_1004E9180);
          a1 = v46;
          v9 = v28;
        }

        else
        {

          v30 = sub_1004A4A54();
          v31 = sub_1004A6034();

          if (os_log_type_enabled(v30, v31))
          {
            v44 = v25;
            v32 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v49 = v43;
            *v32 = v38;
            sub_100236568(8);
            v41 = v31;
            v42 = v30;

            v33 = sub_1004A5864();
            v35 = v34;

            v36 = sub_10015BA6C(v33, v35, &v49);
            a2 = v39;

            *(v32 + 4) = v36;
            *(v32 + 12) = 2048;
            *(v32 + 14) = v44;
            v30 = v42;
            _os_log_impl(&_mh_execute_header, v42, v41, "Tearing down instance for account %{public}s (run time: %ld)", v32, 0x16u);
            sub_1000197E0(v43);

            a3 = v40;
          }

          else
          {
          }

          v37 = v45;
          (*(v29 + 8))(v45, v27);
          v9 = v37;
          a1 = v46;
        }
      }

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (!v11[2])
        {
          goto LABEL_41;
        }
      }

      else
      {
        result = sub_1003364B8(v11);
        v11 = result;
        if (!*(result + 16))
        {
LABEL_41:
          __break(1u);
          return result;
        }
      }

      sub_100319DA4(v11 + 4);
      *v10 = v11;
      sub_10034A618(0, &v50);

      v52 = v51;
      result = sub_10031DCBC(&v52);
      v11 = *v10;
      if (!*(*v10 + 16))
      {
        return result;
      }
    }

    if (!__OFSUB__(v16, a1))
    {
      v17 = a1 - v16;
      if (__OFSUB__(0, v16 - a1))
      {
        goto LABEL_46;
      }

      goto LABEL_12;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v48 = sub_1003364CC(v48);
  }
}

uint64_t sub_10031D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_1004A4A74();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a3, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_10031CDCC(a1, v11, a4);
  sub_100025F40(v11, &qword_1005D5968, &unk_1004E9180);
  v14 = *(a4 + 24);

  *(a4 + 24) = &_swiftEmptyArrayStorage;
  v16 = (a4 + 64);
  v17 = *(a4 + 64);
  v18 = *(a4 + 56);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v30 = *(a4 + 48);
    v19 = *(a4 + 72);
    v20 = *(a4 + 80);

    v21 = sub_1004A4A54();
    v22 = sub_1004A6034();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v29 = a2;
      *v23 = 67109120;
      *(v23 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v21, v22, "Stop and clear everything: completing sync #%u for all accounts.", v23, 8u);
      a2 = v29;
    }

    v24 = *(a4 + 48);
    v33 = *(a4 + 32);
    v34 = v24;
    v35[0] = *(a4 + 64);
    *(v35 + 12) = *(a4 + 76);
    v25 = *(a4 + 16);
    v31 = *a4;
    v32 = v25;
    v26 = *v16;
    v36[0] = *(a4 + 48);
    v36[1] = v26;
    v37 = *(a4 + 80);

    v27 = sub_100315B60();
    v19(v27);
    v28 = v30;
    sub_10031B5C0(v30, v18);
    sub_10031B5C0(v28, v18);
    result = sub_100025F40(v36, &qword_1005D8C90, &qword_1004F5F10);
  }

  *(a4 + 48) = a2;
  *(a4 + 56) = 0x8000000000000000;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *v16 = 0;
  return result;
}

uint64_t sub_10031D53C(unint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v70 = a6;
  v57 = a4;
  v63 = a3;
  v62 = a2;
  v8 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v59 = v55 - v10;
  v60 = a5;
  v65 = *(a5 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_68:
    v65 = sub_1003364CC(v65);
  }

  v11 = *(v60 + 32);
  v61 = (v60 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  v64 = a1;
  if ((result & 1) == 0)
  {
    result = sub_1003364B8(v11);
    v11 = result;
  }

  v14 = v60;
  *(v60 + 24) = v65;
  *(v14 + 32) = v11;
  v68 = v11;
  v16 = v11 + 2;
  v15 = v11[2];
  if (v15)
  {
    v69 = v70 + 7;
    v58 = (v65 + 11);
    *&v13 = 136446466;
    v56 = v13;
LABEL_6:
    v17 = 0;
    v18 = v68 + 4;
    v67 = v15;
    v66 = v68 + 4;
    while (v17 < *v16)
    {
      v19 = &v18[6 * v17];
      v20 = *(v19 + 36);
      if (v70[2])
      {
        v21 = *v19;
        v22 = v19[1];
        v24 = v19[2];
        v23 = v19[3];
        v25 = v70;
        v26 = v70[5];
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v27 = sub_1004A6F14();
        v28 = -1 << *(v25 + 32);
        a1 = v27 & ~v28;
        if ((*(v69 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
        {
          v29 = ~v28;
          while (1)
          {
            v30 = (v70[6] + 16 * a1);
            v31 = *v30 == v24 && v30[1] == v23;
            if (v31 || (sub_1004A6D34() & 1) != 0)
            {
              break;
            }

            a1 = (a1 + 1) & v29;
            if (((*(v69 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

LABEL_22:
          if (v17 < *v16)
          {
            v32 = v19[2];
            v33 = v19[3];
            v34 = v19[5];
            if (v34 <= v64)
            {
              v36 = v64 - v34;
              v35 = v68;
              if (!__OFSUB__(v64, v34))
              {
                goto LABEL_29;
              }

              goto LABEL_62;
            }

            v35 = v68;
            if (__OFSUB__(v34, v64))
            {
LABEL_63:
              __break(1u);
            }

            else
            {
              v36 = v64 - v34;
              if (!__OFSUB__(0, v34 - v64))
              {
LABEL_29:
                if (v36 / 1000000000.0 < 0.0)
                {
                  v37 = 0.0;
                }

                else
                {
                  v37 = v36 / 1000000000.0;
                }

                a1 = v65[2];
                if (!a1)
                {
                  goto LABEL_53;
                }

                v38 = v58;
                while (1)
                {
                  v39 = *(v38 - 7);
                  v40 = *(v38 - 6);
                  v41 = HIBYTE(v40) & 0xF;
                  if ((v40 & 0x2000000000000000) == 0)
                  {
                    v41 = v39 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v41)
                  {
                    __break(1u);
                    goto LABEL_59;
                  }

                  v42 = v39 == v32 && v40 == v33;
                  if (v42 || (sub_1004A6D34() & 1) != 0)
                  {
                    break;
                  }

                  v38 += 8;
                  if (!--a1)
                  {
                    goto LABEL_53;
                  }
                }

                *v38 = v37 + *v38;
                *(v60 + 24) = v65;
                v43 = *v38;
                v44 = *v38 & 0x7FFFFFFFFFFFFFFFLL;

                if (v44 > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_65;
                }

                if (v43 > -9.22337204e18)
                {
                  if (v43 >= 9.22337204e18)
                  {
                    goto LABEL_67;
                  }

                  v45 = v59;
                  sub_10031DC4C(v57, v59);
                  v46 = sub_1004A4A74();
                  v47 = *(v46 - 8);
                  if ((*(v47 + 48))(v45, 1, v46) == 1)
                  {

                    sub_100025F40(v45, &qword_1005D5968, &unk_1004E9180);
                  }

                  else
                  {

                    v48 = sub_1004A4A54();
                    a1 = sub_1004A6034();

                    if (os_log_type_enabled(v48, a1))
                    {
                      v67 = v43;
                      v49 = swift_slowAlloc();
                      v50 = swift_slowAlloc();
                      v71 = v50;
                      *v49 = v56;
                      sub_100236568(8);
                      v55[1] = v51;
                      LODWORD(v66) = a1;

                      v52 = sub_1004A5864();
                      v54 = v53;
                      v35 = v68;

                      a1 = sub_10015BA6C(v52, v54, &v71);

                      *(v49 + 4) = a1;
                      *(v49 + 12) = 2048;
                      *(v49 + 14) = v67;
                      _os_log_impl(&_mh_execute_header, v48, v66, "Tearing down instance for account %{public}s (run time: %ld)", v49, 0x16u);
                      sub_1000197E0(v50);
                    }

                    else
                    {
                    }

                    (*(v47 + 8))(v59, v46);
                  }

LABEL_53:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v35 = sub_1003364B8(v35);
                  }

                  if (v17 < v35[2])
                  {
                    v62(&v35[6 * v17 + 4]);
                    a1 = v61;
                    *v61 = v35;
                    sub_10034A618(v17, &v72);

                    v74 = v73;
                    result = sub_10031DCBC(&v74);
                    v68 = *a1;
                    v16 = v68 + 2;
                    v15 = v68[2];
                    if (v15)
                    {
                      goto LABEL_6;
                    }

                    return result;
                  }

LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

LABEL_17:

        v15 = v67;
        v18 = v66;
      }

      if (v20)
      {
        goto LABEL_22;
      }

      if (++v17 == v15)
      {
        return result;
      }
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  return result;
}

uint64_t sub_10031DC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D5968, &unk_1004E9180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DD10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AppendData(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10031DDC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10031DE04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10031DE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = (v3 >> 1) << 32;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10031DEF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10031DF70(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_10031E074(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_10031E1F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_10031E298()
{
  result = qword_1005D8FD8;
  if (!qword_1005D8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8FD8);
  }

  return result;
}

void sub_10031E2EC(void *a1)
{
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004CEAA0;
  v4 = [a1 objectID];
  *(v3 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v3 + 32) = v4;
  v5 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:isa];

  [v1 appendPredicate:v7];
}

void sub_10031E42C(void *a1)
{
  v3 = [v1 predicate];
  if (v3)
  {
    v4 = v3;
    sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1004F6340;
    *(v5 + 32) = v4;
    *(v5 + 40) = a1;
    sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
    v6 = v4;
    v7 = a1;
    isa = sub_1004A5C04().super.isa;

    v9 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v1 setPredicate:v9];
  }

  else
  {

    [v1 setPredicate:a1];
  }
}

void sub_10031E5F0(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = sub_10035E0A8(*(a1 + 16), 0);
    v5 = sub_10031EE9C(v73, v4 + 4, v3, a1);

    sub_100020D08();
    if (v5 != v3)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v68 = v1;
  v73[0] = v4;
  sub_10031F154(v73, sub_100367F40, &type metadata for Account.ID, sub_10020E050, sub_10020DF80);
  v6 = v73[0];
  v72 = _swiftEmptyArrayStorage;
  v7 = *(v73[0] + 16);
  v8 = &_s2os12OSSignpostIDV8rawValues6UInt64Vvg_ptr;
  p_attr = (&stru_1005CAFF8 + 8);
  if (v7)
  {
    v10 = 0;
    v11 = 0;
    v12 = v73[0] + 40;
    v67 = v73[0] + 40;
LABEL_7:
    v13 = (v12 + 16 * v11);
    do
    {
      if (v11 >= *(v6 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (*(a1 + 16))
      {
        v15 = *(v13 - 1);
        v14 = *v13;

        v16 = sub_10035E1B0(v15, v14);
        if (v17)
        {
          v18 = *(*(a1 + 56) + 8 * v16);
          if (*(v18 + 16))
          {
            sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
            v19 = swift_allocObject();
            *(v19 + 16) = xmmword_1004CEAA0;
            *(v19 + 56) = &type metadata for String;
            *(v19 + 32) = v15;
            *(v19 + 40) = v14;

            v20 = sub_1004A5734();
            isa = sub_1004A5C04().super.isa;

            v59 = objc_opt_self();
            v62 = [v59 predicateWithFormat:v20 argumentArray:isa];

            v22 = *(v18 + 16);
            if (v22)
            {
              v23 = sub_1001354C0(*(v18 + 16), 0);
              v63 = sub_10031EFF4(v73, (v23 + 4), v22, v18);

              sub_100020D08();
              if (v63 != v22)
              {
LABEL_45:
                __break(1u);
              }
            }

            else
            {
              v23 = _swiftEmptyArrayStorage;
            }

            v24 = 0;
            v73[0] = v23;
            sub_10031F154(v73, sub_100141998, &type metadata for MailboxName, sub_10031F408, sub_10031F300);

            v25 = v73[0];
            v71 = _swiftEmptyArrayStorage;
            v26 = *(v73[0] + 16);
LABEL_19:
            v27 = v10;
            v28 = v24;
            v29 = 16 * v24 + 16;
            while (v26 != v24)
            {
              if (v24 >= *(v25 + 16))
              {
                goto LABEL_42;
              }

              if (v10 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_43;
              }

              ++v10;
              ++v24;
              v29 += 16;
              if (v10 <= 19)
              {
                v64 = *(v25 + v29);
                v58 = swift_allocObject();
                *(v58 + 16) = xmmword_1004CEAA0;
                v30 = sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
                v73[3] = v30;
                v73[4] = sub_1001E29A4();
                v73[0] = v64;
                v31 = sub_10002587C(v73, v30);
                v32 = *v31;
                v33 = *(*v31 + 16);
                v57 = v26;
                if (v33)
                {
                  if (v33 <= 0xE)
                  {
                    memset(__dst, 0, sizeof(__dst));
                    v70 = v33;
                    memcpy(__dst, (v32 + 32), v33);
                    v38 = *__dst;
                    v39 = v53 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v70 << 16)) << 32);
                    swift_bridgeObjectRetain_n();
                    v53 = v39;
                  }

                  else
                  {
                    v54 = *(*v31 + 16);
                    v34 = sub_1004A4114();
                    v35 = *(v34 + 48);
                    v36 = *(v34 + 52);
                    swift_allocObject();
                    swift_bridgeObjectRetain_n();
                    v37 = sub_1004A40C4();
                    if (v54 >= 0x7FFFFFFF)
                    {
                      v52 = v37;
                      sub_1004A43C4();
                      v38 = swift_allocObject();
                      *(v38 + 16) = 0;
                      *(v38 + 24) = v54;
                      v39 = v52 | 0x8000000000000000;
                    }

                    else
                    {
                      v38 = v54 << 32;
                      v39 = v37 | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  swift_bridgeObjectRetain_n();
                  v38 = 0;
                  v39 = 0xC000000000000000;
                }

                sub_1000197E0(v73);
                v55 = sub_1004A4404().super.isa;
                sub_100014D40(v38, v39);
                *(v58 + 56) = sub_10019A8E4(0, &qword_1005D9000, NSData_ptr);
                *(v58 + 32) = v55;
                v40 = sub_1004A5734();
                v56 = sub_1004A5C04().super.isa;

                [v59 predicateWithFormat:v40 argumentArray:v56];

                sub_1004A5BF4();
                if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v65 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_1004A5C44();
                }

                sub_1004A5C84();
                v26 = v57;
                goto LABEL_19;
              }
            }

            v61 = v27;
            v66 = v28;

            sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
            v41 = sub_1004A5C04().super.isa;

            v42 = objc_opt_self();
            v43 = [v42 orPredicateWithSubpredicates:v41];

            sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
            v44 = swift_allocObject();
            *(v44 + 16) = xmmword_1004F6340;
            *(v44 + 32) = v62;
            *(v44 + 40) = v43;
            v60 = v62;
            v45 = v43;
            v46 = sub_1004A5C04().super.isa;

            [v42 andPredicateWithSubpredicates:v46];

            sub_1004A5BF4();
            if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1004A5C44();
            }

            v10 = v26 + v61 - v66;
            sub_1004A5C84();
            v12 = v67;
            v47 = v7 - 1 == v11;
            p_attr = (&stru_1005CAFF8 + 8);
            v8 = &_s2os12OSSignpostIDV8rawValues6UInt64Vvg_ptr;
            ++v11;
            if (v47)
            {
              goto LABEL_40;
            }

            goto LABEL_7;
          }
        }
      }

      ++v11;
      v13 += 2;
    }

    while (v7 != v11);
    p_attr = &stru_1005CAFF8.attr;
    v8 = &_s2os12OSSignpostIDV8rawValues6UInt64Vvg_ptr;
  }

LABEL_40:

  sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
  v49 = sub_1004A5C04().super.isa;

  v50 = v8[90];
  v51 = [objc_opt_self() p_attr[467]];

  [v68 appendPredicate:v51];
}

void *sub_10031EE9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10031EFF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      LODWORD(v17) = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10031F154(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_10031F1F0(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

Swift::Int sub_10031F1F0(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1004A6CC4(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = sub_1004A5C64();
        v10[2] = v7 / 2;
      }

      v12[0] = v10 + 4;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_10031F300(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v17 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 - 16);
      v12 = *(v8 - 8);

      LOBYTE(v12) = static MailboxName.stableOrder(_:_:)(v9, v10, v11, v12);

      if ((v12 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 += 16;
        --v6;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *v8;
      v14 = *(v8 + 8);
      *v8 = *(v8 - 16);
      *(v8 - 8) = v14;
      *(v8 - 16) = v13;
      v8 -= 16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10031F408(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_94:
    v6 = *v105;
    if (!*v105)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_100141810(v8);
      v8 = result;
    }

    v94 = v5;
    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v5 = v95 - 1;
        v96 = *&v8[16 * v95];
        v97 = *&v8[16 * v95 + 24];
        sub_10031FAD8((*a3 + 16 * v96), (*a3 + 16 * *&v8[16 * v95 + 16]), (*a3 + 16 * v97), v6);
        if (v94)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v95 - 2 >= *(v8 + 2))
        {
          goto LABEL_121;
        }

        v98 = &v8[16 * v95];
        *v98 = v96;
        *(v98 + 1) = v97;
        result = sub_100141784(v95 - 1);
        v95 = *(v8 + 2);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v25 = v7 + 1;
    }

    else
    {
      v103 = v8;
      v100 = v5;
      v10 = *a3 + 16 * (v7 + 1);
      v11 = *v10;
      v12 = *(v10 + 8);
      v5 = 16 * v7;
      v13 = *a3 + 16 * v7;
      v14 = *v13;
      v15 = *(v13 + 8);

      v16 = static MailboxName.stableOrder(_:_:)(v11, v12, v14, v15);

      v102 = v7;
      v17 = v7 + 2;
      v18 = v13 + 24;
      do
      {
        if (v6 == v17)
        {
          v25 = v6;
          v8 = v103;
          if (!v16)
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

        v19 = *(v18 + 8);
        v20 = v18 + 16;
        v21 = *(v18 + 16);
        v22 = *(v18 - 8);
        v23 = *v18;

        v24 = static MailboxName.stableOrder(_:_:)(v19, v21, v22, v23);

        ++v17;
        v18 = v20;
      }

      while (v16 == v24);
      v25 = v17 - 1;
      v8 = v103;
      if (!v16)
      {
LABEL_9:
        v5 = v100;
        v9 = v102;
        goto LABEL_24;
      }

LABEL_12:
      v9 = v102;
      if (v25 < v102)
      {
        goto LABEL_124;
      }

      if (v102 < v25)
      {
        v26 = 16 * v25 - 16;
        v27 = v25;
        v28 = v102;
        do
        {
          if (v28 != --v27)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_130;
            }

            v31 = (v30 + v5);
            v32 = (v30 + v26);
            v33 = *(v30 + v5);
            v34 = *(v30 + v5 + 8);
            if (v5 != v26 || v31 >= v32 + 1)
            {
              *v31 = *v32;
            }

            v29 = v30 + v26;
            *v29 = v33;
            *(v29 + 8) = v34;
          }

          ++v28;
          v26 -= 16;
          v5 += 16;
        }

        while (v28 < v27);
      }

      v5 = v100;
    }

LABEL_24:
    v35 = a3[1];
    if (v25 < v35)
    {
      if (__OFSUB__(v25, v9))
      {
        goto LABEL_123;
      }

      if (v25 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_125;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v25 != v36)
        {
          break;
        }
      }
    }

    v7 = v25;
    if (v25 < v9)
    {
      goto LABEL_122;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v38 = *(v8 + 2);
    v37 = *(v8 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_100085288((v37 > 1), v38 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v39;
    v40 = &v8[16 * v38];
    *(v40 + 4) = v9;
    *(v40 + 5) = v7;
    v41 = *v105;
    if (!*v105)
    {
      goto LABEL_132;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_53:
          if (v46)
          {
            goto LABEL_111;
          }

          v59 = &v8[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_114;
          }

          v65 = &v8[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_118;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v69 = &v8[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_67:
        if (v64)
        {
          goto LABEL_113;
        }

        v72 = &v8[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_116;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_74:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v81 = *&v8[16 * v80 + 32];
        v6 = *&v8[16 * v42 + 40];
        sub_10031FAD8((*a3 + 16 * v81), (*a3 + 16 * *&v8[16 * v42 + 32]), (*a3 + 16 * v6), v41);
        if (v5)
        {
        }

        if (v6 < v81)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100141810(v8);
        }

        if (v80 >= *(v8 + 2))
        {
          goto LABEL_108;
        }

        v82 = &v8[16 * v80];
        *(v82 + 4) = v81;
        *(v82 + 5) = v6;
        result = sub_100141784(v42);
        v39 = *(v8 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v8[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_109;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_110;
      }

      v54 = &v8[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_112;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_115;
      }

      if (v58 >= v50)
      {
        v76 = &v8[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_94;
    }
  }

  v104 = v8;
  v101 = v5;
  v83 = *a3;
  v84 = *a3 + 16 * v25;
  v85 = v9 - v25;
  v106 = v36;
LABEL_85:
  v107 = v25;
  v86 = v85;
  v6 = v84;
  while (1)
  {
    v87 = *v6;
    v88 = *(v6 + 8);
    v89 = *(v6 - 16);
    v90 = *(v6 - 8);

    LOBYTE(v90) = static MailboxName.stableOrder(_:_:)(v87, v88, v89, v90);

    if ((v90 & 1) == 0)
    {
LABEL_84:
      v7 = v106;
      v25 = v107 + 1;
      v84 += 16;
      --v85;
      if (v107 + 1 != v106)
      {
        goto LABEL_85;
      }

      v5 = v101;
      v8 = v104;
      if (v106 < v9)
      {
        goto LABEL_122;
      }

      goto LABEL_34;
    }

    if (!v83)
    {
      break;
    }

    v91 = *v6;
    v92 = *(v6 + 8);
    *v6 = *(v6 - 16);
    *(v6 - 8) = v92;
    *(v6 - 16) = v91;
    v6 -= 16;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_10031FAD8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  v33 = __dst;
  if (v9 < v12)
  {
    v13 = 16 * v9;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      v14 = __dst;
      memmove(__dst, __src, v13);
      __dst = v14;
    }

    v15 = &__dst[v13];
    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v16 = v33;
      goto LABEL_38;
    }

    v16 = v33;
    while (1)
    {
      v17 = *v5;
      v18 = *(v5 + 2);
      v19 = *v16;
      v20 = *(v16 + 2);

      LOBYTE(v20) = static MailboxName.stableOrder(_:_:)(v17, v18, v19, v20);

      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = v5;
      v22 = v6 == v5;
      v5 += 16;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v16 >= v15 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_38;
      }
    }

    v21 = v16;
    v22 = v6 == v16;
    v16 += 16;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v21;
    goto LABEL_18;
  }

  v23 = 16 * v12;
  v16 = __dst;
  if (__dst != a2 || &a2[v23] <= __dst)
  {
    memmove(__dst, a2, 16 * v12);
  }

  v15 = &v16[v23];
  if (v10 >= 16 && v5 > v6)
  {
    do
    {
      v32 = v5 - 16;
      v4 -= 16;
      v24 = v15;
      while (1)
      {
        v25 = v4 + 16;
        v26 = *(v24 - 2);
        v24 -= 16;
        v27 = *(v24 + 2);
        v28 = *(v5 - 2);
        v29 = *(v5 - 2);

        LOBYTE(v29) = static MailboxName.stableOrder(_:_:)(v26, v27, v28, v29);

        if (v29)
        {
          break;
        }

        if (v25 != v15)
        {
          *v4 = *v24;
        }

        v4 -= 16;
        v15 = v24;
        v16 = v33;
        if (v24 <= v33)
        {
          v15 = v24;
          goto LABEL_38;
        }
      }

      if (v25 != v5)
      {
        *v4 = *v32;
      }

      v16 = v33;
      if (v15 <= v33)
      {
        break;
      }

      v5 -= 16;
    }

    while (v32 > v6);
    v5 = v32;
  }

LABEL_38:
  v30 = (v15 - v16 + (v15 - v16 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v5 != v16 || v5 >= &v16[v30])
  {
    memmove(v5, v16, v30);
  }

  return 1;
}

uint64_t sub_10031FD9C(unint64_t a1)
{
  v1 = HIBYTE(a1);
  v2 = a1 & &_mh_execute_header;
  if (a1)
  {
    if ((a1 & 0x100) != 0)
    {
      if ((a1 & 0x10000) != 0)
      {
        if ((a1 & 0x1000000) != 0)
        {
          if (v2)
          {
            v3 = 31;
            if ((a1 & 0x10000000000) != 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v3 = 15;
            if ((a1 & 0x10000000000) != 0)
            {
              goto LABEL_62;
            }
          }
        }

        else if (v2)
        {
          v3 = 23;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v3 = 7;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if ((a1 & 0x1000000) != 0)
      {
        if (v2)
        {
          v3 = 27;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v3 = 11;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if (v2)
      {
        v3 = 19;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 3;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if ((a1 & 0x10000) != 0)
    {
      v4 = v2 == 0;
      if ((a1 & 0x1000000) != 0)
      {
        v3 = 29;
        if (v4)
        {
          v3 = 13;
        }

        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 21;
        if (v4)
        {
          v3 = 5;
        }

        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if ((a1 & 0x1000000) != 0)
    {
      v4 = v2 == 0;
      v3 = 25;
      if (v4)
      {
        v3 = 9;
      }

      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (!v2)
      {
        v3 = 1;
        if ((a1 & 0x10000000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_62:
        v3 |= 0x20uLL;
        goto LABEL_63;
      }

      v3 = 17;
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    if ((a1 & 0x10000) != 0)
    {
      if ((a1 & 0x1000000) != 0)
      {
        if (v2)
        {
          v3 = 30;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v3 = 14;
          if ((a1 & 0x10000000000) != 0)
          {
            goto LABEL_62;
          }
        }
      }

      else if (v2)
      {
        v3 = 22;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 6;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if ((a1 & 0x1000000) != 0)
    {
      if (v2)
      {
        v3 = 26;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v3 = 10;
        if ((a1 & 0x10000000000) != 0)
        {
          goto LABEL_62;
        }
      }
    }

    else if (v2)
    {
      v3 = 18;
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v3 = 2;
      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if ((a1 & 0x10000) != 0)
  {
    v5 = v2 == 0;
    if ((a1 & 0x1000000) != 0)
    {
      v3 = 28;
      if (v5)
      {
        v3 = 12;
      }

      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v3 = 20;
      if (v5)
      {
        v3 = 4;
      }

      if ((a1 & 0x10000000000) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else if ((a1 & 0x1000000) != 0)
  {
    v4 = v2 == 0;
    v3 = 24;
    if (v4)
    {
      v3 = 8;
    }

    if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v3 = v2 >> 28;
    if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_63:
  if (!BYTE6(a1))
  {
    if (v1 > 3)
    {
      goto LABEL_70;
    }

    goto LABEL_66;
  }

  if (BYTE6(a1) != 1)
  {
    v3 |= 0x200uLL;
    if (v1 > 3)
    {
      goto LABEL_70;
    }

LABEL_66:
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return v3 | 0x1000;
      }

      else
      {
        return v3 | 0x1800;
      }
    }

    else if (v1)
    {
      return v3 | 0x800;
    }

    else
    {
      return v3;
    }
  }

  v3 |= 0x100uLL;
  if (v1 <= 3)
  {
    goto LABEL_66;
  }

LABEL_70:
  if (v1 > 5)
  {
    if (v1 == 6)
    {
      return v3 | 0x3000;
    }

    else
    {
      return v3 | 0x3800;
    }
  }

  else if (v1 == 4)
  {
    return v3 | 0x2000;
  }

  else
  {
    return v3 | 0x2800;
  }
}

uint64_t sub_100320034(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100320048(unint64_t a1)
{
  v2 = sub_100320034((a1 >> 11) & 7);
  v3 = (a1 >> 8) & 3;
  v4 = (v3 == 1) << 48;
  v5 = v3 == 2;
  v6 = 0x2000000000000;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = vdupq_n_s64(a1);
  v8 = vorrq_s8(vandq_s8(vshlq_u64(v7, xmmword_1004F6350), xmmword_1004F6380), vandq_s8(vshlq_u64(v7, xmmword_1004F6360), xmmword_1004F6370));
  return *&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | (a1 << 35) & 0x10000000000 | a1 & 1 | qword_1004F6390[v2] | v6;
}

uint64_t sub_100320100()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int sub_100320164()
{
  sub_1004A6E94();
  ModificationSequenceValue.hash(into:)(v2, *v0);
  return sub_1004A6F14();
}

char *sub_100320230(void *a1)
{
  v3 = type metadata accessor for IndexUpdater.Configuration(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_1004A6164();
  v6 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v7 = sub_1004A6074();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A4A74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  *(v1 + 2) = a1;
  v60 = a1;
  sub_1004A4A64();
  v62 = v13;
  v63 = v12;
  v19 = *(v13 + 16);
  v64 = v18;
  v58 = v19;
  v19(&v1[OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger], v18, v12);
  sub_10019A8E4(0, &qword_1005D5A50, OS_dispatch_workloop_ptr);
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  v65 = _swiftEmptyArrayStorage;
  sub_100323A48(&qword_1005D91D0, &type metadata accessor for OS_dispatch_workloop.Attributes);
  sub_10000C9C0(&qword_1005D5A58, &unk_1004E9230);
  v20 = v1;
  sub_1000CBB00(&qword_1005D91E0, &qword_1005D5A58, &unk_1004E9230);
  sub_1004A6544();
  *(v1 + 3) = sub_1004A6174();
  v21 = objc_allocWithZone(CSSearchableIndex);
  v22 = sub_1004A5734();
  v23 = [v21 initWithName:v22];

  if (qword_1005D8738 != -1)
  {
    swift_once();
  }

  v24 = sub_1004A4374();
  v25 = sub_1001C203C(v24, qword_1005D8A40);
  v26 = __chkstk_darwin(v25);
  v27 = v64;
  *(&v56 - 2) = v64;
  *(&v56 - 1) = v23;
  v28 = sub_10035B7B4(v26, sub_1003239B0, (&v56 - 4));
  *(v20 + 4) = v28;
  v29 = v59;
  v30 = v63;
  v58(v59, v27, v63);
  v31 = type metadata accessor for DelayedSave();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = v28;
  v35 = sub_100308BD4(v34, v29);
  type metadata accessor for IndexQueue();
  v36 = swift_allocObject();
  sub_10000C9C0(&qword_1005D91E8, &qword_1004F65A0);
  v37 = swift_allocObject();
  *(v37 + 20) = 0;
  *(v37 + 16) = 0;
  *(v36 + 32) = v37;
  v38 = swift_allocObject();
  *(v38 + 20) = 0;
  *(v38 + 16) = 0;
  *(v36 + 40) = v38;
  v39 = v34;

  v40 = *sub_1004A47B4();
  sub_10000C9C0(&qword_1005D91F0, &qword_1004F65A8);
  v41 = swift_allocObject();
  *(v41 + 48) = 0;
  *(v41 + 16) = v40;
  *(v41 + 24) = 0;
  *(v41 + 32) = 1;
  *(v41 + 40) = _swiftEmptyArrayStorage;
  *(v36 + 48) = v41;
  *(v36 + 56) = 1;
  *(v36 + 64) = UInt32.init(_:);
  *(v36 + 72) = 0;
  *(v36 + 16) = v39;
  *(v36 + 24) = v35;
  *(v36 + 80) = xmmword_1004F6510;
  *(v20 + 6) = v36;
  type metadata accessor for SpotlightIndexer();
  v42 = swift_allocObject();
  swift_retain_n();

  v43 = v23;
  *(v20 + 5) = sub_1003230D8(v43, v36, 23, v42);
  v44 = swift_allocObject();
  swift_weakInit();

  sub_100327650(sub_1003239F0, v44);

  *(v20 + 7) = sub_10032DD9C(v39, v36);
  v45 = v61;
  sub_10032C858(v39, v61);
  v46 = type metadata accessor for IndexUpdater(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = v39;

  *(v20 + 8) = sub_10032B930(v45, v49, v36);
  type metadata accessor for Search();
  v50 = swift_allocObject();
  v51 = v60;
  *(v50 + 16) = v60;
  *(v50 + 24) = v49;
  *(v20 + 9) = v50;
  type metadata accessor for Downloader();
  swift_allocObject();
  v52 = v51;
  v53 = v49;
  v54 = sub_1003198C0(v52, v53, v36, v35);

  *(v20 + 10) = v54;
  (*(v62 + 8))(v64, v30);
  return v20;
}