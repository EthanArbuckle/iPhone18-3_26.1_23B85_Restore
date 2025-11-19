void sub_100165F78(_BYTE *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v163 = a3;
  v164 = a4;
  v158 = a2;
  v7 = *v4;
  v171 = *(*v4 + 5);
  v8 = v7[12];
  v9 = v171;
  v145 = type metadata accessor for ModelState();
  v141 = *(v145 - 8);
  v10 = *(v141 + 64);
  __chkstk_darwin(v145);
  v157 = &v130[-v11];
  v140 = type metadata accessor for ModelState.Source();
  v139 = *(v140 - 8);
  v12 = *(v139 + 64);
  __chkstk_darwin(v140);
  v144 = &v130[-v13];
  v154 = sub_1001C5BD8();
  v153 = *(v154 - 8);
  v14 = *(v153 + 64);
  __chkstk_darwin(v154);
  v152 = &v130[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = sub_1001C5AC8();
  v149 = *(v150 - 8);
  v16 = *(v149 + 64);
  __chkstk_darwin(v150);
  v148 = &v130[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v7[13];
  v172 = v171;
  v170 = v8;
  *&v173 = v8;
  *(&v173 + 1) = v18;
  v168 = v18;
  v19 = type metadata accessor for CRDTModelFileSyncInfo();
  v156 = *(v19 - 8);
  v20 = *(v156 + 64);
  v21 = __chkstk_darwin(v19);
  v143 = &v130[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v161 = &v130[-v23];
  swift_getWitnessTable();
  v165 = sub_1001C5D68();
  isa = v165[-1].isa;
  v24 = *(isa + 8);
  v25 = __chkstk_darwin(v165);
  v138 = &v130[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v167 = &v130[-v28];
  v29 = *(v9 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v27);
  v146 = &v130[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v31);
  v147 = &v130[-v34];
  __chkstk_darwin(v33);
  v36 = &v130[-v35];
  v162 = [v5[8] createTransactionWithName:"com.apple.ibooks.CRDTModelFileSyncManager.q_sync"];
  sub_1001625D4(v36);
  v151 = *(&v9 + 1);
  v37 = *(*(&v9 + 1) + 8);
  LOBYTE(v7) = sub_1001C5C38();
  v38 = v29[1];
  v159 = v36;
  v169 = v29 + 1;
  v166 = v38;
  v38(v36, v9);
  v39 = *(*v5 + 25);
  v137 = v29;
  v40 = v29 + 2;
  v174 = v29[2];
  if (v7)
  {
    v41 = v147;
    v146 = a1;
    (v174)(v147, a1, v9);

    v135 = v39;
    v42 = sub_1001C5128();
    v43 = sub_1001C65B8();

    v44 = os_log_type_enabled(v42, v43);
    v142 = v19;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *&v172 = v134;
      *v45 = 67109634;
      *(v45 + 4) = v158 & 1;
      *(v45 + 8) = 2080;
      v133 = v42;
      v46 = sub_1001C6CC8();
      v131 = v43;
      v48 = v47;
      v49 = v41;
      v50 = v166;
      v166(v49, v9);
      v51 = sub_1001874E8(v46, v48, &v172);

      *(v45 + 10) = v51;
      *(v45 + 18) = 2080;
      v52 = v159;
      sub_1001625D4(v159);
      v53 = sub_1001C6CC8();
      v55 = v54;
      v50(v52, v9);
      v56 = sub_1001874E8(v53, v55, &v172);

      *(v45 + 20) = v56;
      v57 = v133;
      _os_log_impl(&_mh_execute_header, v133, v131, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v45, 0x1Cu);
      swift_arrayDestroy();

      v58 = v5;
      v59 = v165;
    }

    else
    {

      v166(v41, v9);
      v58 = v5;
      v59 = v165;
      v52 = v159;
    }

    v132 = v9;
    v78 = v58 + *(*v58 + 24);
    swift_beginAccess();
    v79 = *(isa + 2);
    v147 = v78;
    v134 = isa + 16;
    v133 = v79;
    (v79)(v167, v78, v59);
    (v174)(v52, v146, v9);
    v80 = v161;
    v81 = CRDTModelFileSyncInfo.init(model:)(v52, v9, v161);
    v151 = v130;
    __chkstk_darwin(v81);
    *&v130[-16] = v80;
    v82 = v148;
    v136 = v40;
    v83 = v150;
    v84 = v155;
    sub_1001C5D48();
    (*(v149 + 8))(v82, v83);
    v85 = v58[12];
    v86 = v153;
    v87 = v152;
    v88 = v154;
    (*(v153 + 104))(v152, enum case for CRCodableVersion.version3(_:), v154);
    v89 = sub_1001C5D08();
    if (v84)
    {

      (*(v86 + 8))(v87, v88);
      v91 = sub_1001C5128();
      v92 = sub_1001C6598();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        *&v172 = v174;
        *v93 = 136315138;
        v94 = v167;
        swift_beginAccess();
        v95 = v143;
        sub_1001C5D38();
        v96 = v142;
        v97 = *(v142 + 16);
        v98 = *(v142 + 32);
        v99 = sub_1001C6CC8();
        v101 = v100;
        v102 = v156;
        (*(v156 + 8))(v95, v96);
        v103 = sub_1001874E8(v99, v101, &v172);
        v104 = v96;

        *(v93 + 4) = v103;
        _os_log_impl(&_mh_execute_header, v91, v92, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v93, 0xCu);
        sub_10008E7BC(v174);
        v105 = v165;

        v106 = v170;
      }

      else
      {

        v105 = v165;
        v106 = v170;
        v104 = v142;
        v102 = v156;
        v94 = v167;
      }

      v163();
      *&v113 = v106;
      *(&v113 + 1) = v168;
      v173 = v113;
      v172 = v171;
      type metadata accessor for CRDTModelFileSyncManager.SyncError();
      swift_getWitnessTable();
      swift_allocError();
      *v114 = 1;
      swift_willThrow();

      (*(v102 + 8))(v161, v104);
      (*(isa + 1))(v94, v105);
    }

    else
    {
      v168 = v58;
      v108 = v174;
      v109 = v132;
      v170 = v89;
      *&v171 = v90;
      (*(v86 + 8))(v87, v88);
      if (v158)
      {
        v110 = v144;
        v111 = v108;
        (v108)(v144, v146, v109);
        v112 = 0;
      }

      else
      {
        v112 = 1;
        v110 = v144;
        v111 = v108;
      }

      v115 = v168;
      (v137[7])(v110, v112, 2, v109);
      v116 = v115[4];

      MutableObservableContainer.value.getter();

      v117 = v143;
      v118 = v165;
      sub_1001C5D38();
      v119 = v159;
      (v111)(v159, v117, v109);
      v174 = *(v156 + 8);
      (v174)(v117, v142);
      v120 = v157;
      ModelState.updating(model:source:)(v119, v110, v145);
      v166(v119, v109);
      sub_100164144(v120, 0x636E79735F71, 0xE600000000000000);
      v121 = v167;
      sub_100164478(v167);
      v122 = v115[11];
      v123 = v138;
      (v133)(v138, v147, v118);
      v124 = swift_allocObject();
      v125 = v163;
      v126 = v164;
      v124[2] = v115;
      v124[3] = v125;
      v127 = v162;
      v124[4] = v126;
      v124[5] = v127;

      v128 = v127;
      sub_1000CE44C(v123, sub_10016A190, v124);

      sub_1000887D0(v170, v171);

      v129 = *(isa + 1);
      v129(v123, v118);
      (*(v141 + 8))(v157, v145);
      (*(v139 + 8))(v144, v140);
      (v174)(v161, v142);
      v129(v121, v118);
    }
  }

  else
  {
    v60 = v146;
    (v174)(v146, a1, v9);

    v61 = sub_1001C5128();
    v62 = sub_1001C65B8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *&v172 = v174;
      *v63 = 67109634;
      *(v63 + 4) = v158 & 1;
      *(v63 + 8) = 2080;
      LODWORD(v167) = v62;
      v64 = v170;
      v65 = sub_1001C6CC8();
      v67 = v66;
      v165 = v61;
      v68 = v64;
      v69 = v166;
      v166(v60, v9);
      v70 = sub_1001874E8(v65, v67, &v172);

      *(v63 + 10) = v70;
      *(v63 + 18) = 2080;
      v71 = v159;
      v72 = v68;
      sub_1001625D4(v159);
      v73 = sub_1001C6CC8();
      v75 = v74;
      v69(v71, v9);
      v76 = sub_1001874E8(v73, v75, &v172);

      *(v63 + 20) = v76;
      v77 = v165;
      _os_log_impl(&_mh_execute_header, v165, v167, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v63, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v166(v60, v9);
      v72 = v170;
    }

    v163();
    v172 = v171;
    *&v173 = v72;
    *(&v173 + 1) = v168;
    type metadata accessor for CRDTModelFileSyncManager.SyncError();
    swift_getWitnessTable();
    swift_allocError();
    *v107 = 0;
    swift_willThrow();
  }
}

void sub_10016716C(_BYTE *a1@<X1>, char a2@<W2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v11 = sub_100162728();
  v12 = a2 & 1;
  if (v11)
  {
    sub_100165F78(a1, v12, a3, a4);
    if (v5)
    {

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100167218(a1, v12, a3, a4);
    v13 = 0;
  }

  *a5 = v13;
}

uint64_t sub_100167218(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  HIDWORD(v28) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v28 - v11;
  v14 = v4 + *(v13 + 200);
  v15 = sub_1001C5128();
  v16 = sub_1001C65B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "CRDTModelFileSyncManager q_enqueuePendingSync", v17, 2u);
  }

  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = *(v7 + 88);
  *(v19 + 40) = *(v7 + 104);
  *(v19 + 48) = v5;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *(v19 + v18 + v10) = BYTE4(v28) & 1;
  v20 = v19 + ((v18 + v10) & 0xFFFFFFFFFFFFFFF8);
  v21 = v30;
  *(v20 + 8) = v29;
  *(v20 + 16) = v21;
  swift_beginAccess();
  v22 = v5[9];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[9] = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1000ADC10(0, v22[2] + 1, 1, v22);
    v5[9] = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1000ADC10((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  v26 = &v22[2 * v25];
  v26[4] = sub_10016A2F8;
  v26[5] = v19;
  v5[9] = v22;
  return swift_endAccess();
}

void sub_1001674E4(uint64_t a1, _BYTE *a2, char a3, void (*a4)(void), uint64_t a5)
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

  sub_100165F78(a2, a3 & 1, a4, a5);
}

uint64_t sub_100167608()
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
      *(v17 + 16) = sub_10016A2D0;
      *(v17 + 24) = v15;
      aBlock[4] = sub_10009A564;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_10024AF50;
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

uint64_t sub_1001678C4()
{
  v0 = sub_1001C5D28();
  sub_100084528(&unk_1002739E0, &qword_1001F3498);
  sub_1000885F4(&qword_100270A58, &unk_1002739E0, &qword_1001F3498);
  sub_1001C57C8();
  return v0(&v2, 0);
}

uint64_t sub_1001679A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1001C5D28();
  v3 = *(v1 + class metadata base offset for Capsule.Ref);
  swift_getWitnessTable();
  sub_1001C57C8();
  return v2(&v5, 0);
}

uint64_t sub_100167A98(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a1 + *(*a1 + 200);
  v8 = sub_1001C5128();
  v9 = sub_1001C65B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncManager q_sync: finished", v10, 2u);
  }

  v11 = a5();
  return a2(v11);
}

uint64_t sub_100167B78()
{
  v1 = v0;
  v2 = type metadata accessor for CRDTModelSyncVersion();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(*v0 + 200);
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1001874E8(0xD000000000000013, 0x80000001001FDF60, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelFileSyncManager: Model did sync %s", v9, 0xCu);
    sub_10008E7BC(v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v14 = *(v1 + 48);
    sub_1001C6688();
    (*(v12 + 8))(v5, ObjectType, v12);
    swift_unknownObjectRelease();
    return sub_10016A0CC(v5, type metadata accessor for CRDTModelSyncVersion);
  }

  return result;
}

uint64_t sub_100167D84()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for CRDTModelSyncVersion();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + v2[25];
  v8 = sub_1001C5128();
  v9 = sub_1001C65B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v12 = (*(v2[13] + 8))(v2[10]);
    v14 = sub_1001874E8(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "CRDTModelFileSyncManager: Model did sync %s", v10, 0xCu);
    sub_10008E7BC(v11);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = v1[3];
    ObjectType = swift_getObjectType();
    v18 = v1[6];
    sub_1001C6688();
    (*(v16 + 8))(v6, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_10016A0CC(v6, type metadata accessor for CRDTModelSyncVersion);
  }

  return result;
}

uint64_t *CRDTModelFileSyncManager.deinit()
{
  v1 = *v0;
  sub_1000CEB00((v0 + 2));
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];
  swift_unknownObjectRelease();
  v6 = v0[9];

  v7 = v0[11];

  v8 = *(*v0 + 192);
  v13 = *(v1 + 80);
  v14 = *(v1 + 96);
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  v9 = sub_1001C5D68();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 200);
  v11 = sub_1001C5148();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t CRDTModelFileSyncManager.__deallocating_deinit()
{
  CRDTModelFileSyncManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_100168210(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v158 = a4;
  v160 = a3;
  v164 = a2;
  v184 = a1;
  v6 = *v4;
  v163 = sub_1001C5148();
  v171 = *(v163 - 8);
  v7 = *(v171 + 64);
  __chkstk_darwin(v163);
  v170 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1001C4B28();
  v181 = *(v169 - 8);
  v9 = *(v181 + 64);
  v10 = __chkstk_darwin(v169);
  v167 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v162 = &v149 - v13;
  v14 = __chkstk_darwin(v12);
  v180 = &v149 - v15;
  __chkstk_darwin(v14);
  v168 = &v149 - v16;
  v17 = type metadata accessor for CRDTModelSyncVersion();
  v18 = *(v17 - 8);
  v161 = (v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17 - 8);
  v165 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v159 = &v149 - v22;
  v23 = v6[10];
  v24 = v6[11];
  v25 = v6[12];
  v183 = v6[13];
  v185 = v23;
  v186 = v24;
  v26 = v24;
  v187 = v25;
  v188 = v183;
  v27 = v25;
  v28 = type metadata accessor for CRDTModelFileSyncInfo();
  WitnessTable = swift_getWitnessTable();
  v179 = v28;
  v175 = sub_1001C5D68();
  v182 = *(v175 - 8);
  v29 = *(v182 + 64);
  __chkstk_darwin(v175);
  v172 = &v149 - v30;
  v31 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v156 = &v149 - v33;
  v177 = v27;
  v178 = v26;
  v34 = type metadata accessor for ModelState.Source();
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v152 = &v149 - v37;
  v150 = *(v23 - 1);
  v38 = *(v150 + 64);
  __chkstk_darwin(v36);
  v149 = &v149 - v39;
  v176 = type metadata accessor for ModelState();
  v166 = *(v176 - 8);
  v40 = *(v166 + 64);
  v41 = __chkstk_darwin(v176);
  v173 = &v149 - v42;
  v174 = *(v28 - 8);
  v43 = *(v174 + 64);
  v44 = __chkstk_darwin(v41);
  v151 = &v149 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v149 - v46;
  v48 = sub_1001C6668();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v149 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1001C6638();
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v55 = sub_1001C5688();
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  (*(v49 + 104))(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v48);
  v5[6] = sub_1001C66A8();
  *(v5 + 80) = 0;
  v155 = *(*v5 + 200);
  v185 = 0;
  v186 = 0xE000000000000000;
  sub_1001C69C8(20);

  v185 = 0xD000000000000012;
  v186 = 0x80000001001FE0E0;
  v57 = v183;
  v58 = *(v183 + 8);
  v153 = v183 + 8;
  v154 = v58;
  v189._countAndFlagsBits = v58(v23, v183);
  sub_1001C6138(v189);

  sub_1001C5138();
  v59 = v178;
  sub_1001C5B38();
  v185 = v23;
  v186 = v59;
  v187 = v177;
  v188 = v57;
  *&v47[*(type metadata accessor for CRDTModelFileSyncInfo() + 52)] = &_swiftEmptyDictionarySingleton;
  v60 = v184[3];
  v61 = v184[4];
  sub_10009BB74(v184, v60);
  v5[12] = (*(v61 + 8))(v60, v61);
  swift_beginAccess();
  v5[3] = v158;
  swift_unknownObjectWeakAssign();
  v62 = v164;
  v5[8] = v164;
  v63 = type metadata accessor for ObservableTransaction();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v66 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v5[7] = sub_10015C33C(0xD000000000000034, 0x8000000100200D60, v62, v66);
  v67 = v150;
  v68 = v149;
  (*(v150 + 16))(v149, v47, v23);
  v69 = v152;
  (*(v67 + 56))(v152, 1, 2, v23);
  v70 = type metadata accessor for CRDTModelRevisionInfo();
  v71 = v156;
  (*(*(v70 - 8) + 56))(v156, 1, 1, v70);
  v72 = v173;
  ModelState.init(model:loaded:source:revisionInfo:)(v68, 0, v69, v71, v23, v173);
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  v5[4] = sub_10015C6B4(v72);
  v73 = *(v174 + 16);
  v164 = v47;
  v73(v151, v47, v179);
  v74 = v172;
  sub_1001C5D78();
  v75 = *(*v5 + 192);
  v76 = v182;
  v77 = v175;
  (*(v182 + 32))(v5 + v75, v74, v175);
  v78 = v5[12];
  swift_beginAccess();
  v79 = v78;
  sub_1001C5D18();
  swift_endAccess();

  v80 = v5[12];
  v81 = *(v76 + 16);
  v160 = v75;
  v158 = v76 + 16;
  WitnessTable = v81;
  v81(v74, v5 + v75, v77);
  v82 = v161[7];
  v83 = v80;
  v84 = v159;
  sub_1001C5D58();
  v85 = *(v76 + 8);
  v182 = v76 + 8;
  v161 = v85;
  (v85)(v74, v77);
  *v84 = v83;
  v86 = sub_100084528(&unk_100270A20, &unk_1001F3480);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v89 = v165;
  sub_10016A1E0(v84, v165, type metadata accessor for CRDTModelSyncVersion);
  v90 = sub_1000986B8(v89);
  sub_10016A0CC(v84, type metadata accessor for CRDTModelSyncVersion);
  v5[5] = v90;
  v91 = v184[3];
  v92 = v184[4];
  sub_10009BB74(v184, v91);
  v93 = *(v92 + 16);
  v94 = v168;
  v95 = v92;
  v96 = v181;
  v93(v91, v95);
  v165 = v23;
  v97 = v23;
  v98 = v163;
  v99 = v154(v97, v183);
  v100 = v162;
  v101 = v169;
  v185 = v99;
  v186 = v102;
  v190._countAndFlagsBits = 0x666E49636E79532DLL;
  v190._object = 0xE90000000000006FLL;
  sub_1001C6138(v190);
  v103 = v180;
  v104 = v94;
  sub_1001C4AA8();

  (*(v171 + 16))(v170, v5 + v155, v98);
  v105 = *(v96 + 16);
  v159 = (v96 + 16);
  v156 = v105;
  (v105)(v100, v103, v101);
  v106 = sub_1001C5128();
  v107 = sub_1001C6588();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v185 = v109;
    *v108 = 136315138;
    sub_10016A258(qword_100272010, &type metadata accessor for URL);
    v110 = sub_1001C6CC8();
    v111 = v100;
    v113 = v112;
    v162 = *(v96 + 8);
    (v162)(v111, v101);
    v114 = sub_1001874E8(v110, v113, &v185);

    *(v108 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v106, v107, "CRDTModelFileSyncManager Init: modelFileURL: %s", v108, 0xCu);
    sub_10008E7BC(v109);

    v104 = v168;
  }

  else
  {

    v162 = *(v96 + 8);
    (v162)(v100, v101);
  }

  (*(v171 + 8))(v170, v98);
  v115 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v116);
  v118 = v117;
  v185 = 0;
  v119 = [v115 createDirectoryAtURL:v117 withIntermediateDirectories:1 attributes:0 error:&v185];

  if (v119)
  {
    v120 = v185;
  }

  else
  {
    v121 = v185;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_1001F0660;
    v123 = sub_1001C4A58();
    v125 = v124;
    *(v122 + 56) = &type metadata for String;
    v126 = sub_100084570();
    *(v122 + 64) = v126;
    *(v122 + 32) = v123;
    *(v122 + 40) = v125;
    swift_getErrorValue();
    v127 = sub_1001C6D98();
    *(v122 + 96) = &type metadata for String;
    *(v122 + 104) = v126;
    *(v122 + 72) = v127;
    *(v122 + 80) = v128;
    sub_1001C5118();

    v101 = v169;
  }

  v129 = v179;
  v130 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v185 = v129;
  v186 = v130;
  v187 = v131;
  v188 = &protocol witness table for CRDTModelFileSyncInfo<A>;
  type metadata accessor for CRDTModelFileSyncTransport();
  v132 = v5[12];
  v133 = v172;
  v134 = v175;
  WitnessTable(v172, v5 + v160, v175);
  v135 = v167;
  v136 = v180;
  (v156)(v167, v180, v101);
  v137 = v132;
  v138 = sub_1000CF338(v137, v133, v135);
  (v161)(v133, v134);

  v5[11] = v138;
  v139 = v5[7];
  v140 = v5[4] + *(*v5[4] + 128);
  swift_beginAccess();
  *(v140 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v5[9] = &_swiftEmptyArrayStorage;
  v141 = v5[11];
  v142 = swift_allocObject();
  swift_weakInit();
  v143 = swift_allocObject();
  v145 = v177;
  v144 = v178;
  v143[2] = v165;
  v143[3] = v144;
  v146 = v183;
  v143[4] = v145;
  v143[5] = v146;
  v143[6] = v142;
  sub_1000CE428(sub_10016A248, v143);

  v147 = v162;
  (v162)(v136, v101);
  v147(v104, v101);
  (*(v166 + 8))(v173, v176);
  (*(v174 + 8))(v164, v129);
  sub_10008E7BC(v184);
  return v5;
}

void *sub_10016951C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_100168210(a1, a2, a3, a4);
}

void *sub_100169580(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *(v7 + 88);
  v12 = *(v7 + 96);
  v13 = *(v7 + 104);
  v21 = *(v7 + 80);
  if (a3)
  {
    v21 = type metadata accessor for CRDTModelFileSyncInfo();
    WitnessTable = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    v24 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    type metadata accessor for CRDTModelFileSyncContextStore();
    v14 = static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(a1, a2);
  }

  else
  {
    v21 = type metadata accessor for CRDTModelFileSyncInfo();
    WitnessTable = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    v24 = &protocol witness table for CRDTModelFileSyncInfo<A>;
    type metadata accessor for CRDTModelFileSyncContextStore();
    v14 = static CRDTModelFileSyncContextStore.persistentContext(_:)(a1, a2);
  }

  v15 = v14;

  WitnessTable = v11;
  v23 = v12;
  v24 = type metadata accessor for CRDTModelFileSyncManager.DefaultConfig();
  v25 = &protocol witness table for CRDTModelFileSyncManager<A>.DefaultConfig;
  v21 = v15;
  v16 = *(v7 + 48);
  v17 = *(v7 + 52);
  swift_allocObject();
  return sub_100168210(&v21, a4, a5, a6);
}

void sub_1001697B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_100165F78(v1, v2, MarkedAsFinishedMechanism.rawValue.getter, 0);
}

void sub_1001698FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_100169C74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100169984(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100169AC0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_100169C74()
{
  if (!qword_100273850[0])
  {
    sub_1001C5CD8();
    v0 = sub_1001C5F68();
    if (!v1)
    {
      atomic_store(v0, qword_100273850);
    }
  }
}

uint64_t sub_100169CDC(uint64_t a1)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 96);
  type metadata accessor for CRDTModelFileSyncInfo();
  swift_getWitnessTable();
  result = sub_1001C5D68();
  if (v2 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_1001C5148();
    if (v3 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100169E48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100169ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100169F20()
{
  v1 = v0;
  v2 = *(sub_100084528(&unk_100270A30, &qword_1001F3490) - 8);
  v3 = *(v0 + 16);
  v4 = (v1 + ((*(v2 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  sub_10015F710();
  sub_1001C5BF8();
}

void sub_10016A008()
{
  v1 = *(sub_100084528(&unk_100270A30, &qword_1001F3490) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_1001608B0(v2);
}

uint64_t sub_10016A0CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016A148()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10016A1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016A248(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_100162D08(a1);
}

uint64_t sub_10016A258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016A2A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100162E74(v1);
}

uint64_t sub_10016A2D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10016A3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10016A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016A478(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1001C61E8();
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10016A4C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(v3);
  return sub_1001C6E28();
}

void sub_10016A524()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1001C60E8();
  sub_1001C6E18(v3);
}

Swift::Int sub_10016A55C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(v3);
  return sub_1001C6E28();
}

uint64_t sub_10016A5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1001C6D08();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_10016A620()
{
  result = qword_100273A10;
  if (!qword_100273A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A10);
  }

  return result;
}

unint64_t sub_10016A674@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10016A958(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_10016A6A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3._countAndFlagsBits = 65;
  }

  else
  {
    v3._countAndFlagsBits = 66;
  }

  v3._object = 0xE100000000000000;
  sub_1001C6138(v3);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_1001C6138(v6);
  return 0;
}

void *sub_10016A720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10016AB7C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10016A754(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1001C6E68();
  if (v4)
  {
    v6._countAndFlagsBits = 65;
  }

  else
  {
    v6._countAndFlagsBits = 66;
  }

  v6._object = 0xE100000000000000;
  sub_1001C6138(v6);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_1001C6138(v9);
  v10._countAndFlagsBits = v2;
  v10._object = v3;
  sub_1001C6138(v10);
  sub_10009D148(v8, v8[3]);
  sub_1001C6D28();

  return sub_10008E7BC(v8);
}

unint64_t sub_10016A854()
{
  result = qword_100273A18;
  if (!qword_100273A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A18);
  }

  return result;
}

unint64_t sub_10016A8A8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1001C6118();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1001C6208();
}

unint64_t sub_10016A958(uint64_t a1, unint64_t a2)
{
  v4 = sub_10016A478(a1, a2);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v4;
  v7 = v5;
  if (v4 == 66 && v5 == 0xE100000000000000 || (sub_1001C6D08() & 1) != 0 || v6 == 65 && v7 == 0xE100000000000000)
  {
  }

  else
  {
    v19 = sub_1001C6D08();

    if ((v19 & 1) == 0)
    {
LABEL_21:

      return 0;
    }
  }

  v8 = sub_10016A8A8(1uLL, a1, a2);
  v10 = v9;

  if (v10 >> 14 == v8 >> 14)
  {
    goto LABEL_21;
  }

  if (sub_1001C6838() == 46 && v11 == 0xE100000000000000)
  {
  }

  else
  {
    v12 = sub_1001C6D08();

    if ((v12 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  result = sub_1001C6818();
  if (v14)
  {
    result = v10;
  }

  if (v10 >> 14 >= result >> 14)
  {
    v15 = sub_1001C6848();
    v17 = v16;

    if ((v15 ^ v17) >= 0x4000)
    {
      v18 = sub_1001C60B8();

      return v18;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *sub_10016AB7C(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10009BB74(a1, a1[3]);
  sub_1001C6E48();
  if (!v1)
  {
    sub_10009BB74(&v14, v16);
    v5 = sub_1001C6D18();
    v7 = v6;
    sub_10008E7BC(&v14);

    v9 = sub_10016A958(v5, v7);
    if (v10)
    {
      v4 = v9;

      sub_10008E7BC(a1);
      return v4;
    }

    v11 = a1[4];
    v12 = sub_10009BB74(a1, a1[3]);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1001C69C8(25);

    v14 = 39;
    v15 = 0xE100000000000000;
    v17._countAndFlagsBits = v5;
    v17._object = v7;
    sub_1001C6138(v17);

    v18._object = 0x8000000100203A00;
    v18._countAndFlagsBits = 0xD000000000000016;
    sub_1001C6138(v18);
    sub_1001C6A28();
    swift_allocError();
    v4 = v12;
    sub_100145220(v13);

    swift_willThrow();
  }

  sub_10008E7BC(a1);
  return v4;
}

__n128 sub_10016AD40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10016AD5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10016ADA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016AE0C(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100273A48, &unk_1001F78D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10016C1B0();
  sub_1001C6E78();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_1001C6C68();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_1001C6C68();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_1001C6C68();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  sub_1001C6C68();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  sub_1001C6C68();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  sub_1001C6C68();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10016B00C()
{
  v1 = *v0;
  v2 = 0x6E6953656C746974;
  v3 = 0x676E695379646F62;
  if (v1 != 4)
  {
    v3 = 0x746C754D79646F62;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 1)
  {
    v2 = 0x6C754D656C746974;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_10016B0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016BAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016B11C(uint64_t a1)
{
  v2 = sub_10016C1B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B158(uint64_t a1)
{
  v2 = sub_10016C1B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10016B194@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10016BD0C(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_10016B1F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10016B9D0(v9, v10) & 1;
}

uint64_t sub_10016B254@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1001C4CA8();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_1001C4B28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v71 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v20 = _s4DealVMa();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (v26)
  {
    v70 = v22;
    sub_100132EC0(a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v26 == 1)
    {
      if (v25[16])
      {
        v27 = 7;
        v28 = 6;
        v29 = 1;
        v30 = v2;
      }

      else
      {
        v30 = v2 + 2;
        v27 = 9;
        v28 = 8;
        v29 = 3;
      }

      v41 = *v30;
      v42 = v2[v29];
      v66 = v2[v28];
      v67 = v41;
      v43 = v2[v27];
      v69 = v42;

      v68 = v43;

      v44 = *(v25 + 4);
      v65 = *(v25 + 3);
      (*(v14 + 16))(v19, &v25[*(v70 + 24)], v13);
      v64 = v44;
    }

    else
    {
      v63 = v8;
      v38 = v2[4];
      v40 = v2[10];
      v39 = v2[11];
      v69 = v2[5];

      v68 = v39;

      sub_1001C4B08();
      result = (*(v14 + 48))(v12, 1, v13);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v66 = v40;
      v67 = v38;
      (*(v14 + 32))(v19, v12, v13);
      v64 = 0xE000000000000000;
      v65 = 0;
      v8 = v63;
    }

    sub_100084528(&qword_100273A50, &qword_1001F78E8);
    v45 = sub_1001C4888();
    v46 = *(v45 - 8);
    v47 = *(v46 + 72);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1001F0670;
    if (qword_10026EC70 != -1)
    {
      swift_once();
    }

    v50 = sub_100083274(v45, qword_100273A20);
    (*(v46 + 16))(v49 + v48, v50, v45);
    v51 = v71;
    sub_1001C4B18();

    v53 = v72;
    v52 = v73;
    (*(v72 + 16))(v8, &v25[*(v70 + 28)], v73);
    sub_1001C4BD8();
    v55 = v54;
    v56 = v54;
    (*(v53 + 8))(v8, v52);
    (*(v14 + 8))(v19, v13);
    sub_100132F24(v25);
    if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v55 > -9.22337204e18)
    {
      if (v55 < 9.22337204e18)
      {
        v57 = v67;
        *a2 = v55;
        *(a2 + 1) = v57;
        v59 = v64;
        v58 = v65;
        *(a2 + 2) = v69;
        *(a2 + 3) = v58;
        v60 = v66;
        *(a2 + 4) = v59;
        *(a2 + 5) = v60;
        *(a2 + 6) = v68;
        v61 = _s21PriceDropNotificationVMa();
        (*(v14 + 32))(&a2[*(v61 + 32)], v51, v13);
        return (*(*(v61 - 8) + 56))(a2, 0, 1, v61);
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_10026EBB8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = sub_1001C5148();
  sub_100083274(v31, qword_100281898);
  v32 = sub_1001C5128();
  v33 = sub_1001C65B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "[TemplateNotification] No notification (no deals)", v34, 2u);
  }

  v35 = _s21PriceDropNotificationVMa();
  v36 = *(*(v35 - 8) + 56);

  return v36(a2, 1, 1, v35);
}

uint64_t sub_10016B948()
{
  v0 = sub_1001C4888();
  sub_100088824(v0, qword_100273A20);
  sub_100083274(v0, qword_100273A20);
  return sub_1001C4878();
}

uint64_t sub_10016B9D0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1001C6D08() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1001C6D08() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1001C6D08() & 1) == 0)
  {
    return 0;
  }

  if (a1[10] == a2[10] && a1[11] == a2[11])
  {
    return 1;
  }

  return sub_1001C6D08();
}

uint64_t sub_10016BAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000100203A50 == a2;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6953656C746974 && a2 == 0xEF6B6F6F42656C67 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C754D656C746974 && a2 == 0xED0000656C706974 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100203A70 == a2 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E695379646F62 && a2 == 0xEE006B6F6F42656CLL || (sub_1001C6D08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C754D79646F62 && a2 == 0xEC000000656C7069)
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

uint64_t sub_10016BD0C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100084528(&qword_100273A38, &qword_1001F78D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10016C1B0();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = sub_1001C6BE8();
  v13 = v12;
  LOBYTE(v45[0]) = 1;
  v36 = sub_1001C6BE8();
  v38 = v14;
  LOBYTE(v45[0]) = 2;
  v15 = sub_1001C6BE8();
  v37 = v16;
  v32 = v15;
  LOBYTE(v45[0]) = 3;
  v35 = 0;
  v31 = sub_1001C6BE8();
  v34 = v17;
  LOBYTE(v45[0]) = 4;
  v30 = sub_1001C6BE8();
  v33 = v18;
  v46 = 5;
  v19 = sub_1001C6BE8();
  v20 = *(v6 + 8);
  v21 = v19;
  v35 = v22;
  v20(v9, v5);
  *&v39 = v11;
  *(&v39 + 1) = v13;
  *&v40 = v36;
  *(&v40 + 1) = v38;
  *&v41 = v32;
  v23 = v37;
  *(&v41 + 1) = v37;
  *&v42 = v31;
  v24 = v34;
  *(&v42 + 1) = v34;
  *&v43 = v30;
  *(&v43 + 1) = v33;
  *&v44 = v21;
  v25 = v35;
  *(&v44 + 1) = v35;
  sub_10016C204(&v39, v45);
  sub_10008E7BC(a1);
  v45[0] = v11;
  v45[1] = v13;
  v45[2] = v36;
  v45[3] = v38;
  v45[4] = v32;
  v45[5] = v23;
  v45[6] = v31;
  v45[7] = v24;
  v45[8] = v30;
  v45[9] = v33;
  v45[10] = v21;
  v45[11] = v25;
  result = sub_10016C23C(v45);
  v27 = v42;
  a2[2] = v41;
  a2[3] = v27;
  v28 = v44;
  a2[4] = v43;
  a2[5] = v28;
  v29 = v40;
  *a2 = v39;
  a2[1] = v29;
  return result;
}

unint64_t sub_10016C1B0()
{
  result = qword_100273A40;
  if (!qword_100273A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A40);
  }

  return result;
}

unint64_t sub_10016C280()
{
  result = qword_100273A58;
  if (!qword_100273A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A58);
  }

  return result;
}

unint64_t sub_10016C2D8()
{
  result = qword_100273A60;
  if (!qword_100273A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A60);
  }

  return result;
}

unint64_t sub_10016C330()
{
  result = qword_100273A68;
  if (!qword_100273A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A68);
  }

  return result;
}

unint64_t sub_10016C388()
{
  result = qword_100273A70;
  if (!qword_100273A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A70);
  }

  return result;
}

BOOL sub_10016C3DC(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_10016C3FC(double *a1, double *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] >= a1[1];
  }

  else
  {
    return *a2 >= *a1;
  }
}

BOOL sub_10016C41C(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] >= a2[1];
  }

  else
  {
    return *a1 >= *a2;
  }
}

BOOL sub_10016C43C(double *a1, double *a2)
{
  if (*a2 == *a1)
  {
    return a2[1] < a1[1];
  }

  else
  {
    return *a2 < *a1;
  }
}

__n128 sub_10016C46C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10016C488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10016C4D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10016C534()
{
  result = qword_100273A78;
  if (!qword_100273A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A78);
  }

  return result;
}

uint64_t sub_10016C588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = *(a2 + 16);
  if ((v3 & 1) == 0)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      v5 = *a1;
      v6 = *(a1 + 8) == *(a2 + 8);
      return v5 == *a2 && v6;
    }
  }

  return result;
}

BOOL sub_10016C5C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10016C9E4(v5, v7);
}

unint64_t sub_10016C620()
{
  result = qword_100273A80;
  if (!qword_100273A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273A80);
  }

  return result;
}

uint64_t sub_10016C674()
{
  v4 = sub_10016C744();
  v5._countAndFlagsBits = 124;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  sub_10016C858();
  sub_1001C6138(v6);

  v7._countAndFlagsBits = 124;
  v7._object = 0xE100000000000000;
  sub_1001C6138(v7);
  if (*(v0 + 25))
  {
    v1._countAndFlagsBits = 80;
  }

  else
  {
    v1._countAndFlagsBits = 45;
  }

  v1._object = 0xE100000000000000;
  sub_1001C6138(v1);
  v8._countAndFlagsBits = 124;
  v8._object = 0xE100000000000000;
  sub_1001C6138(v8);
  if (*(v0 + 24))
  {
    v2._countAndFlagsBits = 30574;
  }

  else
  {
    v2._countAndFlagsBits = 11565;
  }

  v2._object = 0xE200000000000000;
  sub_1001C6138(v2);

  return v4;
}

uint64_t sub_10016C744()
{
  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x74696E4972657355;
      }

      goto LABEL_8;
    }

    return 0x7974696C697455;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x616E65746E69614DLL;
      }

LABEL_8:
      v3 = *(v0 + 16);
      v4._countAndFlagsBits = sub_1001C6CC8();
      sub_1001C6138(v4);

      v5._countAndFlagsBits = 41;
      v5._object = 0xE100000000000000;
      sub_1001C6138(v5);
      return 0x286E776F6E6B6E55;
    }

    return 1701736270;
  }
}

void sub_10016C858()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = round(*(v0 + 32));
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v1 > -9.22337204e18)
    {
      if (v1 < 9.22337204e18)
      {
        v2 = *(v0 + 40);
        sub_1001C6CC8();
        v4._countAndFlagsBits = 47;
        v4._object = 0xE100000000000000;
        sub_1001C6138(v4);
        v3 = round(v2);
        if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5._countAndFlagsBits = sub_1001C6CC8();
              sub_1001C6138(v5);

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_10016C9A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_10016C674();
}

BOOL sub_10016C9E4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1001C6D08() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0 || ((*(a1 + 25) ^ *(a2 + 25)) & 1) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    return (*(a2 + 48) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }

  return (*(a2 + 48) & 1) != 0;
}

uint64_t getEnumTagSinglePayload for SystemTaskRequest.TaskType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemTaskRequest.TaskType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10016CAE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016CB00(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_10016CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10009ADF0(a3, v27 - v11, &unk_100270A00, &qword_1001F3120);
  v13 = sub_1001C6348();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10008875C(v12, &unk_100270A00, &qword_1001F3120);
  }

  else
  {
    sub_1001C6338();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1001C6308();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1001C60A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10016CE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10009ADF0(a3, v27 - v11, &unk_100270A00, &qword_1001F3120);
  v13 = sub_1001C6348();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10008875C(v12, &unk_100270A00, &qword_1001F3120);
  }

  else
  {
    sub_1001C6338();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1001C6308();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1001C60A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t *BDSSyncEngine.shared.unsafeMutableAddressor()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  return &static BDSSyncEngine.shared;
}

Swift::Void __swiftcall BDSSyncEngine.scheduleSync()()
{
  v0 = sub_1001C5128();
  v1 = sub_1001C65B8();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1001874E8(0x656C756465686373, 0xEE002928636E7953, &v4);
    _os_log_impl(&_mh_execute_header, v0, v1, "BDSSyncEngine - %s", v2, 0xCu);
    sub_10008E7BC(v3);
  }

  sub_10017145C(1);
}

uint64_t BDSSyncEngine.addSaltChangeObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_10017C644(a1, v1);
}

uint64_t BDSSyncEngine.sendChangesIfReady()()
{
  v1[2] = v0;
  v2 = sub_1001C5268();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1001C5298();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016D408, 0, 0);
}

uint64_t sub_10016D408()
{
  v17 = v0;
  v1 = v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1001874E8(0xD000000000000014, 0x8000000100203A90, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  v6 = v0[2];
  if ((sub_100171770() & 1) != 0 && (v7 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine), (v0[9] = v7) != 0))
  {
    v8 = v0[8];
    (*(v0[4] + 104))(v0[5], enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:), v0[3]);

    sub_1001C5278();
    v9 = async function pointer to CKSyncEngine.sendChanges(_:)[1];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_10016D63C;
    v11 = v0[8];

    return CKSyncEngine.sendChanges(_:)(v11);
  }

  else
  {
    v12 = v0[8];
    v13 = v0[5];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10016D63C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_10016D824, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 40);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_10016D824()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

Swift::Void __swiftcall BDSSyncEngine.resetCloudKitZone(_:)(CKRecordZone a1)
{
  v2 = v1;
  v4 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  if (v8)
  {
    v9 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);

    v10 = a1.super.isa;
    v11 = sub_1001C5128();
    v12 = sub_1001C65B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v32);
      *(v13 + 12) = 2114;
      *(v13 + 14) = v10;
      *v14 = v10;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEngine - %s. Removing zone - %{public}@", v13, 0x16u);
      sub_10008875C(v14, &unk_1002718E0, &qword_1001F31F0);

      sub_10008E7BC(v15);
    }

    sub_10017057C();
    sub_1001C55E8();
    sub_100084528(&qword_100270570, &unk_1001F2BA0);
    v17 = sub_1001C5328();
    v18 = *(v17 - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 1) = xmmword_1001F0670;
    *&v21[v20] = [(objc_class *)v10 zoneID];
    (*(v18 + 104))(&v21[v20], enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v17);
    v22._rawValue = v21;
    sub_1001C55D8(v22);

    v23 = sub_1001C6348();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v24;
    v25[5] = v8;
    v25[6] = v10;
    v26 = v10;
    sub_10016CE38(0, 0, v7, &unk_1001F7CB0, v25);
  }

  else
  {
    v31 = sub_1001C5128();
    v27 = sub_1001C65A8();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v32);
      _os_log_impl(&_mh_execute_header, v31, v27, "BDSSyncEngine - %s: syncEngine not initialized", v28, 0xCu);
      sub_10008E7BC(v29);
    }

    else
    {
      v30 = v31;
    }
  }
}

void sub_10016DD30()
{
  v0 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v37 - v2;
  v4 = sub_1001C4B28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1001019DC(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008875C(v3, &unk_10026EF10, &unk_1001F1FA0);
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v15 = sub_1001C5148();
    sub_100083274(v15, qword_100271020);
    v16 = sub_1001C5128();
    v17 = sub_1001C6598();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not save metadata. No BaseURL", v18, 2u);
    }
  }

  else
  {
    (*(v5 + 32))(v14, v3, v4);
    sub_1001C4AA8();
    v19 = sub_1001C4828();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_1001C4818();
    type metadata accessor for BDSSyncEngineStateMetadata();
    sub_1001826B0(&unk_100273D60, type metadata accessor for BDSSyncEngineStateMetadata);
    v22 = sub_1001C4808();
    v24 = v23;

    sub_1001C4BB8();
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v25 = sub_1001C5148();
    sub_100083274(v25, qword_100271020);
    (*(v5 + 16))(v9, v12, v4);
    v26 = sub_1001C5128();
    v27 = sub_1001C65B8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = v28;
      v39 = swift_slowAlloc();
      v41 = v39;
      *v28 = 136315138;
      sub_1001826B0(qword_100272010, &type metadata accessor for URL);
      v37 = v26;
      v29 = sub_1001C6CC8();
      v31 = v30;
      v40 = v24;
      v32 = *(v5 + 8);
      v32(v9, v4);
      v33 = sub_1001874E8(v29, v31, &v41);

      v35 = v37;
      v34 = v38;
      *(v38 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v35, v27, "Saved sync engine metadata at: %s", v34, 0xCu);
      sub_10008E7BC(v39);

      sub_1000887D0(v22, v40);

      v32(v12, v4);
      v32(v14, v4);
    }

    else
    {
      sub_1000887D0(v22, v24);

      v36 = *(v5 + 8);
      v36(v9, v4);
      v36(v12, v4);
      v36(v14, v4);
    }
  }
}

uint64_t sub_10016E4A0@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v48 - v3;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v52 = type metadata accessor for BDSSyncEngineStateMetadata();
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1001019DC(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10008875C(v4, &unk_10026EF10, &unk_1001F1FA0);
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1001C5148();
    sub_100083274(v17, qword_100271020);
    v18 = sub_1001C5128();
    v19 = sub_1001C6598();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v52;
    v21 = v53;
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not get metadata. No BaseURL", v23, 2u);
    }

    v24 = 1;
  }

  else
  {
    v51 = v6;
    (*(v6 + 32))(v16, v4, v5);
    sub_1001C4AA8();
    v25 = [objc_opt_self() defaultManager];
    sub_1001C4AF8();
    v26 = sub_1001C5FE8();

    v27 = [v25 fileExistsAtPath:v26];

    if (v27)
    {
      v50 = v16;
      v28 = sub_1001C4B48();
      v21 = v53;
      v40 = v28;
      v42 = v41;
      v43 = sub_1001C4788();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_1001C4778();
      sub_1001826B0(&qword_100273D78, type metadata accessor for BDSSyncEngineStateMetadata);
      v22 = v52;
      sub_1001C4768();

      sub_1000887D0(v40, v42);
      v47 = *(v51 + 8);
      v47(v14, v5);
      v47(v50, v5);
      v24 = 0;
    }

    else
    {
      v21 = v53;
      if (qword_10026EBE0 != -1)
      {
        swift_once();
      }

      v29 = sub_1001C5148();
      sub_100083274(v29, qword_100271020);
      v30 = v51;
      (*(v51 + 16))(v11, v14, v5);
      v31 = sub_1001C5128();
      v32 = sub_1001C6598();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54 = v49;
        *v33 = 136315138;
        sub_1001826B0(qword_100272010, &type metadata accessor for URL);
        v34 = sub_1001C6CC8();
        v36 = v35;
        v50 = v16;
        v37 = *(v30 + 8);
        v37(v11, v5);
        v38 = sub_1001874E8(v34, v36, &v54);
        v21 = v53;

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Could not locate metadata file at %s", v33, 0xCu);
        sub_10008E7BC(v49);

        v37(v14, v5);
        v37(v50, v5);
      }

      else
      {

        v39 = *(v30 + 8);
        v39(v11, v5);
        v39(v14, v5);
        v39(v16, v5);
      }

      v24 = 1;
      v22 = v52;
    }
  }

  return (*(*(v22 - 8) + 56))(v21, v24, 1, v22);
}

BDSCloudSyncDiagnosticSyncEngineInfo __swiftcall BDSSyncEngine.diagnosticSyncEngineInfo()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 establishedSalt];
  }

  else
  {
    v3 = 0;
  }

  result.super.isa = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt:v3];
  result._establishedSalt = v4;
  return result;
}

uint64_t BDSSyncEngine.clearMetadata()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  sub_100084528(&unk_1002718D0, &qword_1001F4558);
  sub_1001C6688();
  return v3;
}

uint64_t BDSSyncEngine.fetchRemoteChanges()()
{
  v1[2] = v0;
  v2 = sub_1001C52E8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1001C5318();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016F0A0, 0, 0);
}

uint64_t sub_10016F0A0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  v2 = v0[8];
  v3 = v0[5];
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[3]);

    sub_1001C52F8();
    v4 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_10016F1E4;
    v6 = v0[8];

    return CKSyncEngine.fetchChanges(_:)(v6);
  }

  else
  {
    v7 = v0[8];

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_10016F1E4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_10016F3CC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 40);

    v11 = *(v8 + 8);

    return v11(0);
  }
}

uint64_t sub_10016F3CC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v1);
}

id sub_10016F440()
{
  result = [objc_allocWithZone(type metadata accessor for BDSSyncEngine()) init];
  static BDSSyncEngine.shared = result;
  return result;
}

id static BDSSyncEngine.shared.getter()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v1 = static BDSSyncEngine.shared;

  return v1;
}

Swift::Void __swiftcall BDSSyncEngine.setDatabase(_:config:)(CKDatabase _, BCCloudKitConfiguration *config)
{
  v3 = v2;
  v49 = config;
  v50 = sub_1001C5248();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v50);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = sub_100084528(&unk_100273AC0, &qword_1001F7CC0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_100084528(&qword_100271108, &unk_1001F3720);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  v23 = sub_1001C5128();
  v24 = sub_1001C65B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = v20;
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Setting up CKSyncEngine...", v25, 2u);
    v20 = v48;
  }

  sub_10016E4A0(v15);
  v26 = type metadata accessor for BDSSyncEngineStateMetadata();
  if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
  {
    sub_10008875C(v15, &unk_100273AC0, &qword_1001F7CC0);
    v27 = sub_1001C55A8();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  }

  else
  {
    sub_10009ADF0(&v15[*(v26 + 20)], v22, &qword_100271108, &unk_1001F3720);
    sub_1001024FC(v15);
  }

  sub_10009ADF0(v22, v20, &qword_100271108, &unk_1001F3720);
  sub_1001826B0(&qword_100273AD0, type metadata accessor for BDSSyncEngine);
  v28 = _.super.isa;
  v29 = v3;
  sub_1001C5238();
  v30 = *&v29[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_BDSAPSDelegatePort];
  v31 = *&v29[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_BDSAPSDelegatePort + 8];

  sub_1001C5228();
  v32 = [(BCCloudKitConfiguration *)v49 dbSubscriptionID];
  if (v32)
  {
    v33 = v32;
    sub_1001C6018();
  }

  sub_1001C5218();
  v34 = v50;
  (*(v5 + 16))(v9, v11, v50);
  v35 = sub_1001C55F8();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_1001C5608();
  v39 = *&v29[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine];
  *&v29[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine] = v38;

  sub_10016FB58();
  v40 = [objc_allocWithZone(BDSSyncEngineSaltManager) initWithDatabase:v28 observer:v29];
  v41 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v42 = *&v29[v41];
  *&v29[v41] = v40;

  swift_beginAccess();
  v43 = *&v29[v41];
  if (v43)
  {
    swift_endAccess();
    v44 = swift_allocObject();
    *(v44 + 16) = v29;
    aBlock[4] = sub_10017CA70;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016FD38;
    aBlock[3] = &unk_10024B3D8;
    v45 = _Block_copy(aBlock);
    v46 = v29;
    v47 = v43;

    [v47 refreshSalt:v45];
    _Block_release(v45);

    (*(v5 + 8))(v11, v34);
    sub_10008875C(v22, &qword_100271108, &unk_1001F3720);
  }

  else
  {
    (*(v5 + 8))(v11, v34);
    sub_10008875C(v22, &qword_100271108, &unk_1001F3720);
    swift_endAccess();
  }
}

void sub_10016FB58()
{
  if (*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);

    v2 = sub_1001C5128();
    v3 = sub_1001C65B8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - setting hasPendingUntrackedChanges=false", v4, 2u);
    }

    sub_1001C55E8();
    sub_1001C55C8();
  }

  else
  {
    oslog = sub_1001C5128();
    v5 = sub_1001C6598();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1001874E8(0xD00000000000001FLL, 0x8000000100204090, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "BDSSyncEngine - %s: syncEngine not initialized", v6, 0xCu);
      sub_10008E7BC(v7);
    }
  }
}

void sub_10016FD38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10016FE1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltObservers) addObject:a2];
    v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 && [v6 establishedSalt] && (v7 = *&v4[v5]) != 0 && (v8 = objc_msgSend(v7, "establishedSaltVersionIdentifier")) != 0)
    {
      v9 = v8;
      v10 = sub_1001C5128();
      v11 = sub_1001C65B8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine: Added salt change observer with a valid salt. Calling -saltUpdated with current salt", v12, 2u);
      }

      [a2 saltUpdatedWithSaltVersionIdentifier:v9];
    }

    else
    {
      v13 = sub_1001C5128();
      v14 = sub_1001C65B8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine: Added salt change observer but no valid salt yet", v15, 2u);
      }

      v9 = v4;
      v4 = v13;
    }
  }
}

Swift::Bool __swiftcall BDSSyncEngine.establishedSalt()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    LOBYTE(v2) = [v2 establishedSalt];
  }

  return v2;
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSalt()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1001838DC;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016FD38;
    aBlock[3] = &unk_10024B428;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSalt:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1001C5128();
    v7 = sub_1001C6598();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v7, "BDSSyncEngine - reestablishSalt: saltManager not initialized", v8, 2u);
    }
  }
}

void sub_100170250()
{
  swift_errorRetain();
  oslog = sub_1001C5128();
  v0 = sub_1001C6598();

  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *v1 = 138543362;
    swift_errorRetain();
    v3 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v3;
    *v2 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v0, "BDSSyncEngine: Error encountered while trying to refresh salt: %{public}@", v1, 0xCu);
    sub_10008875C(v2, &unk_1002718E0, &qword_1001F31F0);
  }
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSaltIfNeeded()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1001838DC;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016FD38;
    aBlock[3] = &unk_10024B478;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSaltIfNeeded:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1001C5128();
    v7 = sub_1001C6598();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v7, "BDSSyncEngine - reestablishSaltIfNeeded: saltManager not initialized", v8, 2u);
    }
  }
}

void sub_10017057C()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 invalidateSalt];
  }

  else
  {
    v3 = sub_1001C5128();
    v4 = sub_1001C6598();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEngine - invalidateSalt: saltManager not initialized", v5, 2u);
    }
  }
}

uint64_t sub_100170654(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000B3A90(a3, v5);
  swift_beginAccess();
  sub_10019A09C(v5, a2);
  return swift_endAccess();
}

uint64_t sub_1001706CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_100187D7C(a2), (v9 & 1) != 0))
  {
    sub_1000B3A90(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZonesToSave:)(Swift::OpaquePointer recordZonesToSave)
{
  v2 = v1;
  v4 = sub_1001C5328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (v30 - v10);
  v12 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);

    rawValue = recordZonesToSave._rawValue;
    v14 = sub_1001C55E8();
    if (rawValue >> 62)
    {
      v15 = sub_1001C6B38();
    }

    else
    {
      v15 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = _swiftEmptyArrayStorage;
    if (!v15)
    {
LABEL_21:
      v29._rawValue = v16;
      sub_1001C55D8(v29);

      sub_100170BC8();

      return;
    }

    v34 = _swiftEmptyArrayStorage;
    sub_1000D38D8(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v30[0] = v14;
      v30[1] = v12;
      v30[2] = v2;
      v16 = v34;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v17 = 0;
        LODWORD(v33) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
        v32 = v5 + 32;
        do
        {
          *v11 = sub_1001C69F8();
          (*(v5 + 104))(v11, v33, v4);
          v34 = v16;
          v19 = v16[2];
          v18 = v16[3];
          if (v19 >= v18 >> 1)
          {
            sub_1000D38D8(v18 > 1, v19 + 1, 1);
            v16 = v34;
          }

          ++v17;
          v16[2] = v19 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v11, v4);
        }

        while (v15 != v17);
      }

      else
      {
        v24 = (rawValue + 32);
        LODWORD(v33) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
        rawValue = *(v5 + 104);
        v32 = v5 + 104;
        v30[3] = v5 + 32;
        do
        {
          v25 = *v24;
          *v9 = *v24;
          (rawValue)(v9, v33, v4);
          v34 = v16;
          v27 = v16[2];
          v26 = v16[3];
          v28 = v25;
          if (v27 >= v26 >> 1)
          {
            sub_1000D38D8(v26 > 1, v27 + 1, 1);
            v16 = v34;
          }

          v16[2] = v27 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v9, v4);
          ++v24;
          --v15;
        }

        while (v15);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v33 = sub_1001C5128();
    v20 = sub_1001C65A8();
    if (os_log_type_enabled(v33, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1001874E8(0xD000000000000017, 0x8000000100203AD0, &v34);
      _os_log_impl(&_mh_execute_header, v33, v20, "BDSSyncEngine - %s: syncEngine not initialized", v21, 0xCu);
      sub_10008E7BC(v22);
    }

    else
    {
      v23 = v33;
    }
  }
}

void sub_100170BC8()
{
  if (*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);

    v2 = sub_1001C5128();
    v3 = sub_1001C65B8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - setting hasPendingUntrackedChanges=true", v4, 2u);
    }

    sub_1001C55E8();
    sub_1001C55C8();
  }

  else
  {
    oslog = sub_1001C5128();
    v5 = sub_1001C6598();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1001874E8(0x6C7564656863735FLL, 0xEF2928636E795365, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "BDSSyncEngine - %s: syncEngine not initialized", v6, 0xCu);
      sub_10008E7BC(v7);
    }
  }
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZoneIDsToDelete:)(Swift::OpaquePointer recordZoneIDsToDelete)
{
  v2 = v1;
  v4 = sub_1001C5328();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (v30 - v10);
  v12 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);

    rawValue = recordZoneIDsToDelete._rawValue;
    v14 = sub_1001C55E8();
    if (rawValue >> 62)
    {
      v15 = sub_1001C6B38();
    }

    else
    {
      v15 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = _swiftEmptyArrayStorage;
    if (!v15)
    {
LABEL_21:
      v29._rawValue = v16;
      sub_1001C55D8(v29);

      sub_100170BC8();

      return;
    }

    v34 = _swiftEmptyArrayStorage;
    sub_1000D38D8(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v30[0] = v14;
      v30[1] = v12;
      v30[2] = v2;
      v16 = v34;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v17 = 0;
        LODWORD(v33) = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
        v32 = v5 + 32;
        do
        {
          *v11 = sub_1001C69F8();
          (*(v5 + 104))(v11, v33, v4);
          v34 = v16;
          v19 = v16[2];
          v18 = v16[3];
          if (v19 >= v18 >> 1)
          {
            sub_1000D38D8(v18 > 1, v19 + 1, 1);
            v16 = v34;
          }

          ++v17;
          v16[2] = v19 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v11, v4);
        }

        while (v15 != v17);
      }

      else
      {
        v24 = (rawValue + 32);
        LODWORD(v33) = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
        rawValue = *(v5 + 104);
        v32 = v5 + 104;
        v30[3] = v5 + 32;
        do
        {
          v25 = *v24;
          *v9 = *v24;
          (rawValue)(v9, v33, v4);
          v34 = v16;
          v27 = v16[2];
          v26 = v16[3];
          v28 = v25;
          if (v27 >= v26 >> 1)
          {
            sub_1000D38D8(v26 > 1, v27 + 1, 1);
            v16 = v34;
          }

          v16[2] = v27 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v9, v4);
          ++v24;
          --v15;
        }

        while (v15);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v33 = sub_1001C5128();
    v20 = sub_1001C65A8();
    if (os_log_type_enabled(v33, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1001874E8(0xD00000000000001BLL, 0x8000000100203AF0, &v34);
      _os_log_impl(&_mh_execute_header, v33, v20, "BDSSyncEngine - %s: syncEngine not initialized", v21, 0xCu);
      sub_10008E7BC(v22);
    }

    else
    {
      v23 = v33;
    }
  }
}

void sub_100171204(void *a1)
{
  v2 = v1;
  v4 = [a1 zoneID];
  v5 = [v4 zoneName];

  v6 = sub_1001C6018();
  v8 = v7;

  v9 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneResetsInProgress;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v11 = sub_1000F54C8(v6, v8, v10);

  if (v11)
  {
    v12 = a1;
    v13 = sub_1001C5128();
    v14 = sub_1001C65B8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1001874E8(0xD000000000000017, 0x8000000100203F30, &v19);
      *(v15 + 12) = 2114;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine - %s. Zone reset in progress while a new zone was added - %{public}@. Re-establishing salt", v15, 0x16u);
      sub_10008875C(v16, &unk_1002718E0, &qword_1001F31F0);

      sub_10008E7BC(v17);
    }

    swift_beginAccess();
    sub_10017B998(v6, v8);
    swift_endAccess();

    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
  }
}

uint64_t sub_10017145C(char a1)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001C5688();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1001836C4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B7C0;
  v14 = _Block_copy(aBlock);

  sub_1001C5668();
  v19 = &_swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

id sub_100171770()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = [result establishedSalt];
    if (result)
    {
      v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
      [*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
      v4 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v5 = *(v0 + v4);
      v6 = *(v0 + v3);

      [v6 unlock];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = sub_1001C6908();
      }

      else
      {
        v7 = *(v5 + 16);
      }

      return (v7 != 0);
    }
  }

  return result;
}

Swift::Void __swiftcall BDSSyncEngine.setCloudKitZone(_:enabled:)(CKRecordZoneID _, Swift::Bool enabled)
{
  v3 = v2;
  v6 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = _.super.isa;
  v11 = sub_1001C5128();
  v12 = sub_1001C65B8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_1001874E8(0xD00000000000001BLL, 0x8000000100203B10, &v29);
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    *v14 = v10;
    *(v13 + 22) = 1024;
    *(v13 + 24) = enabled;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEngine - %s. Zone: %{public}@. Enabled: %{BOOL}d", v13, 0x1Cu);
    sub_10008875C(v14, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v15);
  }

  v17 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  [*&v3[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock] lock];
  swift_beginAccess();
  if (enabled)
  {
    sub_100178D0C(&v28, v10);
    swift_endAccess();
  }

  else
  {
    v18 = sub_10017BAD4(v10);
    swift_endAccess();
  }

  v19 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v20 = *&v3[v19];
  if ((v20 & 0xC000000000000001) != 0)
  {

    v21 = sub_1001C6908();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  [*&v3[v17] unlock];
  if (v21)
  {
    v22 = sub_1001C5128();
    v23 = sub_1001C65B8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "BDSSyncEngine - Valid zones found", v24, 2u);
    }

    v25 = sub_1001C6348();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v3;
    v27 = v3;
    sub_10016CE38(0, 0, v9, &unk_1001F7CD0, v26);
  }
}

Swift::Void __swiftcall BDSSyncEngine.fetchRemoteChanges()()
{
  v1 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_1001C6348();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_10016CE38(0, 0, v4, &unk_1001F7CD8, v6);
}

uint64_t BDSSyncEngine.enabledCloudKitZones()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  [*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
  v2 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);

  [v4 unlock];
  return v3;
}

uint64_t sub_100171F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_1001C5648();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = sub_1001C5688();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = sub_1001C5268();
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();
  v16 = sub_1001C5298();
  v6[24] = v16;
  v17 = *(v16 - 8);
  v6[25] = v17;
  v18 = *(v17 + 64) + 15;
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001720DC, 0, 0);
}

uint64_t sub_1001720DC()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  v3 = v0[26];
  v4 = v0[23];
  if (Strong)
  {
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[14];
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001F31C0;
    *(v8 + 32) = [v7 zoneID];
    *v4 = v8;
    (*(v6 + 104))(v4, enum case for CKSyncEngine.SendChangesOptions.Scope.zoneIDs(_:), v5);
    sub_1001C5278();
    v9 = async function pointer to CKSyncEngine.sendChanges(_:)[1];
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1001722A4;
    v11 = v0[26];
    v12 = v0[13];

    return CKSyncEngine.sendChanges(_:)(v11);
  }

  else
  {
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[26];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1001722A4()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100172688;
  }

  else
  {
    v6 = sub_100172414;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100172414()
{
  v1 = v0[27];
  v16 = v0[20];
  v2 = v0[17];
  v19 = v0[19];
  v20 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v18 = *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_1001835FC;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000DD4AC;
  v0[5] = &unk_10024B6F8;
  v7 = _Block_copy(v0 + 2);
  v17 = v1;
  v8 = v5;
  sub_1001C5668();
  v0[11] = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v7);
  (*(v3 + 8))(v2, v4);
  (*(v19 + 8))(v16, v20);

  v9 = v0[7];

  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100172688()
{
  v20 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);
  v3 = sub_1001C5128();
  v4 = sub_1001C6598();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  if (v5)
  {
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v19);
    *(v9 + 12) = 2114;
    *(v9 + 14) = v8;
    *v10 = v8;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEngine - %s: Could not delete %{public}@", v9, 0x16u);
    sub_10008875C(v10, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v11);
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);
  v16 = *(v0 + 136);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100172874(char *a1, void *a2)
{
  v4 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_1001C5128();
  v9 = sub_1001C65B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v31);
    _os_log_impl(&_mh_execute_header, v8, v9, "BDSSyncEngine - %s. Zone removed. Saving it again...", v10, 0xCu);
    sub_10008E7BC(v11);
  }

  v12 = [a2 zoneID];
  v13 = [v12 zoneName];

  v14 = sub_1001C6018();
  v16 = v15;

  swift_beginAccess();
  sub_100178A6C(&v32, v14, v16);
  swift_endAccess();

  if (*&a1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine])
  {
    v17 = *&a1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine];

    sub_1001C55E8();

    sub_100084528(&qword_100270570, &unk_1001F2BA0);
    v18 = sub_1001C5328();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 1) = xmmword_1001F0670;
    *&v22[v21] = a2;
    (*(v19 + 104))(&v22[v21], enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v18);
    v23 = a2;
    v24._rawValue = v22;
    sub_1001C55D8(v24);
  }

  v25 = sub_1001C6348();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a1;
  v26[5] = a2;
  v27 = a2;
  v28 = a1;
  sub_10016CE38(0, 0, v7, &unk_1001F7E20, v26);
}

uint64_t sub_100172BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1001C5268();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_1001C5298();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100172D14, 0, 0);
}

uint64_t sub_100172D14()
{
  v20 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[10] = v1;
  if (v1)
  {
    v2 = v0[9];
    v4 = v0[5];
    v3 = v0[6];
    v6 = v0[3];
    v5 = v0[4];
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001F31C0;

    *(v7 + 32) = [v6 zoneID];
    *v3 = v7;
    (*(v4 + 104))(v3, enum case for CKSyncEngine.SendChangesOptions.Scope.zoneIDs(_:), v5);
    sub_1001C5278();
    v8 = async function pointer to CKSyncEngine.sendChanges(_:)[1];
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_100172F94;
    v10 = v0[9];

    return CKSyncEngine.sendChanges(_:)(v10);
  }

  else
  {
    v11 = sub_1001C5128();
    v12 = sub_1001C65B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v19);
      _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEngine - %s  Zone should have been created again!", v13, 0xCu);
      sub_10008E7BC(v14);
    }

    v15 = v0[9];
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100172F94()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_100173278;
  }

  else
  {
    v7 = sub_100173128;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100173128()
{
  v11 = v0;
  v1 = v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s  Zone should have been created again!", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100173278()
{
  v17 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1001C5128();
  v4 = sub_1001C6598();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v16);
    *(v8 + 12) = 2114;
    *(v8 + 14) = v7;
    *v9 = v7;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEngine - %s: Could not add %{public}@", v8, 0x16u);
    sub_10008875C(v9, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v10);
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

void sub_1001734A0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine))
  {
    v3 = *(v1 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);

    v4 = a1;
    v5 = sub_1001C5128();
    v6 = sub_1001C65B8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136446210;
      v9 = [v4 zoneName];
      v10 = sub_1001C6018();
      v12 = v11;

      v13 = sub_1001874E8(v10, v12, &v17);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "BDSSyncEngine - resetChangeToken: resetting change token for %{public}s", v7, 0xCu);
      sub_10008E7BC(v8);
    }

    sub_1001C55E8();
    v20.value.super.isa = 0;
    v20.is_nil = v4;
    sub_1001C55B8(v20, v19);
  }

  else
  {
    oslog = sub_1001C5128();
    v14 = sub_1001C65A8();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "BDSSyncEngine - resetChangeToken: syncEngine not initialized", v15, 2u);
    }
  }
}

uint64_t BDSSyncEngine.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009AAEC;

  return (sub_10017FC08)(a1);
}

uint64_t BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1001C5388();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = *(*(sub_100084528(&qword_100270B80, &unk_1001F3528) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = sub_1001C5378();
  v3[28] = v8;
  v9 = *(v8 - 8);
  v3[29] = v9;
  v10 = *(v9 + 64) + 15;
  v3[30] = swift_task_alloc();
  v11 = sub_1001C5298();
  v3[31] = v11;
  v12 = *(v11 - 8);
  v3[32] = v12;
  v13 = *(v12 + 64) + 15;
  v3[33] = swift_task_alloc();
  v14 = sub_1001C5268();
  v3[34] = v14;
  v15 = *(v14 - 8);
  v3[35] = v15;
  v16 = *(v15 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_100173A54, 0, 0);
}

uint64_t sub_100173A54()
{
  v102 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 152);
  sub_1001C5258();
  sub_1001C5288();
  (*(v6 + 8))(v5, v7);
  v9 = *(v4 + 16);
  v9(v2, v1, v3);
  v10 = (*(v4 + 88))(v2, v3);
  v11 = &dword_100273000;
  if (v10 == enum case for CKSyncEngine.SendChangesOptions.Scope.zoneIDs(_:))
  {
    v12 = *(v0 + 296);
    v13 = *(v0 + 160);
    (*(*(v0 + 280) + 96))(v12, *(v0 + 272));
    v14 = *v12;
    v15 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
    [*(v13 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
    v16 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v17 = *(v13 + v16);

    v19 = sub_100182B60(v18, v14);

    [*(v13 + v15) unlock];
  }

  else if (v10 == enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:))
  {
    v20 = *(v0 + 160);
    v21 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
    [*(v20 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
    v22 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v19 = *(v20 + v22);
    v23 = *(v20 + v21);

    [v23 unlock];
  }

  else
  {
    v24 = *(v0 + 160);
    v9(*(v0 + 288), *(v0 + 304), *(v0 + 272));
    v25 = sub_1001C5128();
    v26 = sub_1001C65A8();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v30 = *(v0 + 272);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v101[0] = v99;
      *v31 = 136315138;
      sub_1001826B0(&qword_100273B18, &type metadata accessor for CKSyncEngine.SendChangesOptions.Scope);
      v32 = sub_1001C6CC8();
      v34 = v33;
      v35 = *(v29 + 8);
      v35(v28, v30);
      v36 = v32;
      v11 = &dword_100273000;
      v37 = sub_1001874E8(v36, v34, v101);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "BDSSyncEngine - Ignoring scope %s. This is unexpected", v31, 0xCu);
      sub_10008E7BC(v99);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(v28, v30);
    }

    v35(*(v0 + 296), *(v0 + 272));
    v19 = &_swiftEmptySetSingleton;
  }

  *(v0 + 312) = v19;
  v38 = *(v0 + 160);
  v39 = *(v11 + 338);
  v40 = sub_1001C5128();
  v41 = sub_1001C65B8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v101);
    *(v42 + 12) = 2082;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    sub_10012D0A0();

    v43 = sub_1001C63F8();
    v45 = v44;

    v46 = sub_1001874E8(v43, v45, v101);

    *(v42 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "BDSSyncEngine - %s, enabledZoneIDs: %{public}s", v42, 0x16u);
    swift_arrayDestroy();
  }

  v47 = *(v0 + 160);
  v48 = *(v47 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  *(swift_task_alloc() + 16) = v47;
  sub_100084528(&qword_100273AF8, &qword_1001F7CF8);
  sub_1001C6688();

  v49 = *(v0 + 128);
  *(v0 + 320) = v49;
  if (!*(v49 + 16))
  {
    v61 = sub_1001C5128();
    v62 = sub_1001C65B8();
    v70 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 304);
    v65 = *(v0 + 272);
    v66 = *(v0 + 280);
    if (!v70)
    {
      goto LABEL_28;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v101[0] = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v101);
    v69 = "BDSSyncEngine - %s, record sources not found";
    goto LABEL_24;
  }

  v50 = *(v0 + 160);
  v51 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v52 = *(v50 + v51);
  if (!v52 || ![v52 establishedSalt])
  {
    v61 = sub_1001C5128();
    v62 = sub_1001C65B8();
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 304);
    v65 = *(v0 + 272);
    v66 = *(v0 + 280);
    if (!v63)
    {
      goto LABEL_28;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v101[0] = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v101);
    v69 = "BDSSyncEngine - %s, salt not ready";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v61, v62, v69, v67, 0xCu);
    sub_10008E7BC(v68);

LABEL_29:
    (*(v66 + 8))(v64, v65);
    (*(*(v0 + 232) + 56))(*(v0 + 144), 1, 1, *(v0 + 224));
LABEL_30:
    v73 = *(v0 + 304);
    v72 = *(v0 + 312);
    v75 = *(v0 + 288);
    v74 = *(v0 + 296);
    v76 = *(v0 + 264);
    v77 = *(v0 + 240);
    v79 = *(v0 + 208);
    v78 = *(v0 + 216);
    v81 = *(v0 + 192);
    v80 = *(v0 + 200);
    v100 = *(v0 + 184);

    v82 = *(v0 + 8);

    return v82();
  }

  if ((v19 & 0xC000000000000001) != 0)
  {

    v53 = sub_1001C6908();

    if (v53)
    {
      goto LABEL_16;
    }

LABEL_26:
    v61 = sub_1001C5128();
    v62 = sub_1001C65B8();
    v71 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 304);
    v65 = *(v0 + 272);
    v66 = *(v0 + 280);
    if (v71)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v101[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v101);
      v69 = "BDSSyncEngine - %s, enabledZoneIDs is empty";
      goto LABEL_24;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_26;
  }

LABEL_16:
  v54 = *(v0 + 232);
  v55 = *(v49 + 32);
  *(v0 + 392) = v55;
  v56 = -1;
  v57 = -1 << v55;
  if (-(-1 << v55) < 64)
  {
    v56 = ~(-1 << -(-1 << v55));
  }

  v58 = v56 & *(v49 + 64);
  *(v0 + 384) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 388) = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
  *(v0 + 344) = _swiftEmptyArrayStorage;
  *(v0 + 352) = &_swiftEmptyDictionarySingleton;
  *(v0 + 328) = &_swiftEmptyDictionarySingleton;
  *(v0 + 336) = 250;

  if (!v58)
  {
    v84 = 0;
    v60 = *(v0 + 320);
    while (((63 - v57) >> 6) - 1 != v84)
    {
      v59 = v84 + 1;
      v58 = *(v60 + 8 * v84++ + 72);
      if (v58)
      {
        goto LABEL_36;
      }
    }

    v90 = *(v0 + 224);
    v91 = *(v0 + 208);

    (*(v54 + 56))(v91, 1, 1, v90);
    v92 = *(v0 + 320);
    v93 = *(v0 + 304);
    v94 = *(v0 + 272);
    v95 = *(v0 + 280);
    if (_swiftEmptyArrayStorage[2])
    {
      v97 = *(v0 + 200);
      v96 = *(v0 + 208);
      *(swift_task_alloc() + 16) = &_swiftEmptyDictionarySingleton;
      sub_1001C5358();

      sub_10008875C(v96, &qword_100270B80, &unk_1001F3528);
      (*(v95 + 8))(v93, v94);
      sub_100182640(v97, v96);
    }

    else
    {
      v98 = *(v0 + 160);

      sub_10016FB58();

      (*(v95 + 8))(v93, v94);
    }

    sub_100182640(*(v0 + 208), *(v0 + 144));
    goto LABEL_30;
  }

  v59 = 0;
  v60 = *(v0 + 320);
LABEL_36:
  *(v0 + 360) = v58;
  *(v0 + 368) = v59;
  v85 = *(v0 + 312);
  sub_1000B3A90(*(v60 + 56) + 40 * (__clz(__rbit64(v58)) | (v59 << 6)), v0 + 16);
  v86 = *sub_10009BB74((v0 + 16), *(v0 + 40));

  v87 = swift_task_alloc();
  *(v0 + 376) = v87;
  *v87 = v0;
  v87[1] = sub_1001745A4;
  v88 = *(v0 + 312);
  v89 = *(v0 + 216);

  return BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(v89, v88, 250);
}

uint64_t sub_1001745A4()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 312);
  v5 = *v0;

  sub_10008E7BC((v1 + 16));

  return _swift_task_switch(sub_1001746C4, 0, 0);
}

uint64_t sub_1001746C4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 240), v3, v1);
    v8 = sub_1001C5348();
    isUniquelyReferenced_nonNull_native = v8;
    if (v8 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1001C6B38())
    {
      v11 = 0;
      v107 = isUniquelyReferenced_nonNull_native;
      v108 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v104 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v106 = i;
      v5 = *(v0 + 344);
      v12 = *(v0 + 352);
      v6 = *(v0 + 328);
      while (1)
      {
        if (v108)
        {
          v16 = sub_1001C69F8();
        }

        else
        {
          if (v11 >= *(v104 + 16))
          {
            goto LABEL_42;
          }

          v16 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
        }

        v17 = v16;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v111 = v11 + 1;
        v18 = *(v0 + 384);
        v19 = *(v0 + 192);
        v20 = *(v0 + 168);
        v21 = *(v0 + 176);
        *v19 = [v16 recordID];
        (*(v21 + 104))(v19, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000AE430(0, v5[2] + 1, 1, v5);
        }

        isUniquelyReferenced_nonNull_native = v5[2];
        v22 = v5[3];
        if (isUniquelyReferenced_nonNull_native >= v22 >> 1)
        {
          v5 = sub_1000AE430(v22 > 1, isUniquelyReferenced_nonNull_native + 1, 1, v5);
        }

        v23 = *(v0 + 192);
        v24 = *(v0 + 168);
        v25 = *(v0 + 176);
        v5[2] = isUniquelyReferenced_nonNull_native + 1;
        (*(v25 + 32))(v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * isUniquelyReferenced_nonNull_native, v23, v24);
        v26 = [v17 recordID];
        if ((v12 & 0xC000000000000001) != 0)
        {
          if (v12 < 0)
          {
            v27 = v12;
          }

          else
          {
            v27 = v12 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v17;
          v29 = sub_1001C6AF8();
          if (__OFADD__(v29, 1))
          {
            goto LABEL_40;
          }

          v6 = sub_10017ACE4(v27, v29 + 1);
        }

        else
        {
          v30 = v17;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 136) = v6;
        v32 = sub_100187BB4(v26);
        v33 = v6[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_39;
        }

        v36 = v31;
        if (v6[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v6 = *(v0 + 136);
            if (v31)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_10018B17C();
            v6 = *(v0 + 136);
            if (v36)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_100189238(v35, isUniquelyReferenced_nonNull_native);
          v37 = *(v0 + 136);
          v38 = sub_100187BB4(v26);
          if ((v36 & 1) != (v39 & 1))
          {
            sub_100088714(0, &unk_100273B00, CKRecordID_ptr);

            return sub_1001C6D68();
          }

          v32 = v38;
          v6 = *(v0 + 136);
          if (v36)
          {
LABEL_6:
            v13 = v6[7];
            v14 = *(v13 + 8 * v32);
            *(v13 + 8 * v32) = v17;

            goto LABEL_7;
          }
        }

        v6[(v32 >> 6) + 8] |= 1 << v32;
        *(v6[6] + 8 * v32) = v26;
        *(v6[7] + 8 * v32) = v17;

        v40 = v6[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_41;
        }

        v6[2] = v42;
LABEL_7:
        ++v11;
        v12 = v6;
        v15 = v6;
        isUniquelyReferenced_nonNull_native = v107;
        if (v111 == v106)
        {
          goto LABEL_45;
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
      ;
    }

    v5 = *(v0 + 344);
    v15 = *(v0 + 352);
    v6 = *(v0 + 328);
LABEL_45:
    v105 = v15;
    v44 = *(v0 + 240);

    v45 = sub_1001C5368();
    v46 = v45;
    if (v45 >> 62)
    {
      v60 = v45;
      result = sub_1001C6B38();
      v46 = v60;
      if (!result)
      {
        goto LABEL_59;
      }
    }

    else
    {
      result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_59;
      }
    }

    if (result < 1)
    {
LABEL_88:
      __break(1u);
      return result;
    }

    v47 = 0;
    v109 = v46 & 0xC000000000000001;
    v110 = result;
    v112 = v46;
    do
    {
      if (v109)
      {
        v48 = sub_1001C69F8();
      }

      else
      {
        v48 = *(v46 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = *(v0 + 388);
      v51 = *(v0 + 176);
      v52 = *(v0 + 168);
      **(v0 + 184) = v48;
      (*(v51 + 104))();
      v53 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000AE430(0, v5[2] + 1, 1, v5);
      }

      v55 = v5[2];
      v54 = v5[3];
      v56 = v5;
      if (v55 >= v54 >> 1)
      {
        v56 = sub_1000AE430(v54 > 1, v55 + 1, 1, v5);
      }

      ++v47;
      v57 = *(v0 + 176);
      v58 = *(v0 + 184);
      v59 = *(v0 + 168);

      *(v56 + 16) = v55 + 1;
      v5 = v56;
      (*(v57 + 32))(v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v55, v58, v59);
      v46 = v112;
    }

    while (v110 != v47);
LABEL_59:
    v61 = *(v0 + 240);

    v62 = sub_1001C5348();
    if (v62 >> 62)
    {
      goto LABEL_84;
    }

    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_61;
  }

  sub_10008875C(v3, &qword_100270B80, &unk_1001F3528);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  while (1)
  {
    v73 = *(v0 + 360);
    v72 = *(v0 + 368);
    *(v0 + 344) = v5;
    *(v0 + 352) = v4;
    *(v0 + 328) = v6;
    *(v0 + 336) = v7;
    v74 = (v73 - 1) & v73;
    if (v74)
    {
      break;
    }

    while (1)
    {
      v76 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v76 >= (((1 << *(v0 + 392)) + 63) >> 6))
      {
        v105 = v4;
        goto LABEL_77;
      }

      v75 = *(v0 + 320);
      v74 = *(v75 + 8 * v76 + 64);
      ++v72;
      if (v74)
      {
        v72 = v76;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_84:
    v63 = sub_1001C6B38();
LABEL_61:
    v64 = *(v0 + 336);

    v65 = v64 - v63;
    if (__OFSUB__(v64, v63))
    {
      __break(1u);
    }

    else
    {
      v66 = *(v0 + 240);
      v67 = sub_1001C5368();
      if (!(v67 >> 62))
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_64;
      }
    }

    v68 = sub_1001C6B38();
LABEL_64:
    v70 = *(v0 + 232);
    v69 = *(v0 + 240);
    v71 = *(v0 + 224);

    result = (*(v70 + 8))(v69, v71);
    v7 = v65 - v68;
    if (__OFSUB__(v65, v68))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v7 < 1)
    {
LABEL_77:
      v82 = *(v0 + 320);
      v83 = *(v0 + 224);
      v84 = *(v0 + 232);
      v85 = *(v0 + 208);

      (*(v84 + 56))(v85, 1, 1, v83);
      v86 = *(v0 + 320);
      v87 = *(v0 + 304);
      v88 = *(v0 + 272);
      v89 = *(v0 + 280);
      if (v5[2])
      {
        v91 = *(v0 + 200);
        v90 = *(v0 + 208);
        *(swift_task_alloc() + 16) = v105;
        sub_1001C5358();

        sub_10008875C(v90, &qword_100270B80, &unk_1001F3528);
        (*(v89 + 8))(v87, v88);
        sub_100182640(v91, v90);
      }

      else
      {
        v92 = *(v0 + 160);

        sub_10016FB58();

        (*(v89 + 8))(v87, v88);
      }

      sub_100182640(*(v0 + 208), *(v0 + 144));
      v94 = *(v0 + 304);
      v93 = *(v0 + 312);
      v96 = *(v0 + 288);
      v95 = *(v0 + 296);
      v97 = *(v0 + 264);
      v98 = *(v0 + 240);
      v100 = *(v0 + 208);
      v99 = *(v0 + 216);
      v102 = *(v0 + 192);
      v101 = *(v0 + 200);
      v113 = *(v0 + 184);

      v103 = *(v0 + 8);

      return v103();
    }

    v4 = v105;
  }

  v75 = *(v0 + 320);
LABEL_73:
  *(v0 + 360) = v74;
  *(v0 + 368) = v72;
  v77 = *(v0 + 312);
  sub_1000B3A90(*(v75 + 56) + 40 * (__clz(__rbit64(v74)) | (v72 << 6)), v0 + 16);
  v78 = *sub_10009BB74((v0 + 16), *(v0 + 40));

  v79 = swift_task_alloc();
  *(v0 + 376) = v79;
  *v79 = v0;
  v79[1] = sub_1001745A4;
  v80 = *(v0 + 312);
  v81 = *(v0 + 216);

  return BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(v81, v80, v7);
}

void sub_100174FE8(unint64_t a1, char a2)
{
  sub_10017057C();
  BDSSyncEngine.reestablishSalt()();
  if ((a2 & 1) == 0)
  {
    return;
  }

  if (a1 >> 62)
  {
    if (!sub_1001C6B38())
    {
      return;
    }

    v9 = sub_1001C6B38();
    if (!v9)
    {
      goto LABEL_10;
    }

    v4 = v9;
    sub_1001C6A78();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    sub_1001C6A78();
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1001C69F8();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [objc_allocWithZone(CKRecordZone) initWithZoneID:v6];

    sub_1001C6A48();
    v8 = _swiftEmptyArrayStorage[2];
    sub_1001C6A88();
    sub_1001C6A98();
    sub_1001C6A58();
  }

  while (v4 != v5);
LABEL_10:
  BDSSyncEngine.add(recordZonesToSave:)(_swiftEmptyArrayStorage);
}

void sub_10017518C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100171204(a2);
  }
}

void sub_1001751E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100175244(a2);
  }
}

uint64_t sub_100175244(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C55A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup);
  v21[0] = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v21[1] = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v13 + 32))(v18 + v17, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_100183548;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B608;
  v19 = _Block_copy(aBlock);

  sub_1001C5668();
  v25 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  sub_1001C68C8();
  sub_1001C6618();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_10017561C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BDSSyncEngineStateMetadata();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v8 + 16))(v11, Strong + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger, v7);

    v14 = sub_1001C5128();
    v15 = sub_1001C6588();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "BDSSyncEngine - q_saveMetadataState: About to save state metadata", v16, 2u);
    }

    (*(v8 + 8))(v11, v7);
  }

  v17 = *(v3 + 20);
  v18 = sub_1001C55A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v6[v17], a2, v18);
  (*(v19 + 56))(&v6[v17], 0, 1, v18);
  *v6 = 0x69676E45636E7953;
  *(v6 + 1) = 0xEF6574617453656ELL;
  sub_10016DD30();
  return sub_1001024FC(v6);
}

uint64_t BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1001C51E8();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_1001C52C8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_1001C52E8();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_1001C5318();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_100175A9C, 0, 0);
}

uint64_t sub_100175A9C()
{
  v60 = v0;
  v1 = v0[31];
  v3 = v0[18];
  v2 = v0[19];
  sub_1001C52B8();
  v4 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = [v5 establishedSalt];
    v7 = swift_allocObject();
    if (v6)
    {
      v8 = v0[19];
      v9 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
      [*(v8 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
      v10 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v11 = *(v8 + v10);
      v12 = *(v8 + v9);

      [v12 unlock];
      v13 = sub_100177A10(v11);

      *(v7 + 16) = v13;

      v58 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = swift_allocObject();
  }

  v58 = 0;
  v13 = _swiftEmptyArrayStorage;
  *(v7 + 16) = _swiftEmptyArrayStorage;
LABEL_6:
  v14 = v0[31];
  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[23];
  v20 = v0[24];
  v21 = v0[18];
  v22 = v0[19];
  *v16 = v13;
  (*(v15 + 104))(v16, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), v17);
  sub_1001C5308();
  (*(v20 + 16))(v18, v21, v19);
  v23 = sub_1001C5128();
  v24 = sub_1001C65B8();
  if (os_log_type_enabled(v23, v24))
  {
    v57 = v24;
    v25 = v0[31];
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[22];
    v29 = v0[21];
    v55 = v0[20];
    v56 = v0[23];
    v30 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v30 = 136446978;
    swift_beginAccess();
    v31 = sub_1001C52D8();
    v33 = sub_1001874E8(v31, v32, &v59);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    sub_1001C52A8();
    v34 = sub_1001C51D8();
    v36 = v35;
    (*(v29 + 8))(v28, v55);
    (*(v26 + 8))(v27, v56);
    v37 = sub_1001874E8(v34, v36, &v59);

    *(v30 + 14) = v37;
    *(v30 + 22) = 1024;
    *(v30 + 24) = v58;
    *(v30 + 28) = 2082;
    swift_beginAccess();
    v38 = *(v7 + 16);

    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    v39 = sub_1001C62A8();
    v41 = v40;

    v42 = sub_1001874E8(v39, v41, &v59);

    *(v30 + 30) = v42;
    _os_log_impl(&_mh_execute_header, v23, v57, "BDSSyncEngine: Returning %{public}s for nextFetchChangesOptions:syncEngine:%{public}s.\nValid salt: %{BOOL}d. Allowed zones: %{public}s", v30, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v44 = v0[24];
    v43 = v0[25];
    v45 = v0[23];

    (*(v44 + 8))(v43, v45);
  }

  v47 = v0[30];
  v46 = v0[31];
  v49 = v0[28];
  v48 = v0[29];
  v50 = v0[25];
  v51 = v0[22];
  v52 = v0[17];
  swift_beginAccess();
  (*(v47 + 16))(v52, v46, v48);
  (*(v47 + 8))(v46, v48);

  v53 = v0[1];

  return v53();
}

void sub_100175F4C()
{
  v0 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 && [v7 establishedSalt])
    {
      v8 = sub_1001C5128();
      v9 = sub_1001C65B8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "BDSSyncEngine - salt established. Fetching remote changes and updating pending modifications", v10, 2u);
      }

      v11 = sub_1001C6348();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v5;
      v5;
      sub_10016CE38(0, 0, v3, &unk_1001F7E00, v12);

      sub_10017145C(0);
    }

    v13 = [*&v5[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltObservers] allObjects];
    sub_100084528(&unk_100273D20, &qword_1001F7DF8);
    v14 = sub_1001C6298();

    if (v14 >> 62)
    {
      v15 = sub_1001C6B38();
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_9:
        if (v15 < 1)
        {
          __break(1u);
          return;
        }

        v16 = 0;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = sub_1001C69F8();
          }

          else
          {
            v17 = *(v14 + 8 * v16 + 32);
            swift_unknownObjectRetain();
          }

          ++v16;
          v18 = sub_1001C5FE8();
          [v17 saltUpdatedWithSaltVersionIdentifier:v18];
          swift_unknownObjectRelease();
        }

        while (v15 != v16);
      }
    }
  }
}

uint64_t sub_1001762CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BDSSyncEngineMetadataStore();
  result = sub_100101C94();
  *a1 = result;
  return result;
}

uint64_t sub_100176330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1001C52E8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_1001C5318();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10017644C, 0, 0);
}

uint64_t sub_10017644C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  v2 = v0[8];
  v3 = v0[5];
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[3]);

    sub_1001C52F8();
    v4 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_10017658C;
    v6 = v0[8];

    return CKSyncEngine.fetchChanges(_:)(v6);
  }

  else
  {
    v7 = v0[8];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10017658C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_100176770, 0, 0);
  }

  else
  {
    v9 = *(v2 + 64);
    v10 = *(v2 + 40);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_100176770()
{
  v1 = v0[11];
  v2 = v0[2];
  swift_errorRetain();
  v3 = sub_1001C5128();
  v4 = sub_1001C6598();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEngine - Error fetching remote changes - %@", v7, 0xCu);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);
  }

  else
  {
  }

  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

Swift::String_optional __swiftcall BDSSyncEngine.recordName(fromRecordType:identifier:)(Swift::String fromRecordType, Swift::String identifier)
{
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 && (v5 = v4, v6 = sub_1001C5FE8(), v7 = sub_1001C5FE8(), v8 = [v5 recordNameFromRecordType:v6 identifier:v7], v5, v6, v7, v8))
  {
    v9 = sub_1001C6018();
    v11 = v10;

    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  result.value._object = v12;
  result.value._countAndFlagsBits = v13;
  return result;
}

id BDSSyncEngine.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1001C6668();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1001C6638();
  v5 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v6 = sub_1001C5688();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_registeredDataSourceByRecordType] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_maxRecordCountPerBatch] = 250;
  v8 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordChangePublisher;
  v9 = sub_100084528(&qword_10026ECF0, &unk_1001F3690);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v0[v8] = sub_1001C5188();
  v12 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordDeletionPublisher;
  v13 = sub_100084528(&qword_10026ECF8, &unk_1001F06C0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v0[v12] = sub_1001C5188();
  v16 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_accountChangedPublisher;
  v17 = sub_100084528(&qword_10026ED00, qword_1001F36A0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v0[v16] = sub_1001C5188();
  v20 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_endFetchingChangesPublisher;
  v21 = sub_100084528(&qword_10026ED08, &qword_1001F06D0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v0[v20] = sub_1001C5188();
  v24 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_updateMetadataPublisher;
  v25 = sub_100084528(&qword_10026ED10, &qword_1001F06D8);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v0[v24] = sub_1001C5188();
  v28 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v40 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v36 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  *&v0[v28] = sub_1001C66A8();
  v29 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup;
  *&v1[v29] = dispatch_group_create();
  v30 = &v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_BDSAPSDelegatePort];
  *v30 = 0xD00000000000001CLL;
  v30[1] = 0x80000001001FE120;
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine] = 0;
  sub_1001C5138();
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager] = 0;
  v31 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltObservers;
  *&v1[v31] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones] = &_swiftEmptySetSingleton;
  v32 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  *&v1[v32] = [objc_allocWithZone(NSLock) init];
  v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications] = 0;
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneResetsInProgress] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_invalidTokenZoneIDs] = _swiftEmptyArrayStorage;
  v39.receiver = v1;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, "init");
}

uint64_t sub_100177178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009B25C;

  return (sub_10017FC08)(a1);
}

uint64_t sub_100177224(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2);
}

uint64_t sub_1001772CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(a1, a2);
}

uint64_t sub_100177374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = async function pointer to CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000F9958;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10017743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = async function pointer to CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000F9958;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

void sub_1001775B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((sub_100171770() & 1) == 0)
    {
      if (a2)
      {
        v10 = sub_1001C5128();
        v11 = sub_1001C65B8();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine - setting waitingPendingModifications=true since there are pending modifications", v12, 2u);
        }

        v4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications] = 1;
      }

      goto LABEL_13;
    }

    v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications;
    if ((v4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications] & 1) == 0 && (a2 & 1) == 0)
    {
LABEL_13:

      return;
    }

    v6 = *&v4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine];
    v7 = sub_1001C5128();
    if (v6)
    {
      v8 = sub_1001C65B8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - CKSyncEngine.setHasPendingModifications called since there were pending modifications", v9, 2u);
      }

      sub_100170BC8();
      v4[v5] = 0;
      goto LABEL_13;
    }

    v13 = sub_1001C6598();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1001874E8(0xD00000000000002DLL, 0x80000001002040B0, &v16);
      _os_log_impl(&_mh_execute_header, v7, v13, "BDSSyncEngine - %s: syncEngine not initialized", v14, 0xCu);
      sub_10008E7BC(v15);
    }
  }
}

void sub_10017786C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100084528(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_100177A10(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1001C6908();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10012B674(v2, 0);

    v1 = sub_10012CB98(&v5, v3 + 4, v2, v1);
    sub_100005064();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100177AC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1001C6DF8();
      sub_1001C6E08(v20);
      sub_1001C6E08(v21);
      result = sub_1001C6E28();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100177D28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273240, qword_1001F6BC8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v22);
      result = sub_1001C6E28();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100177FA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100178208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273D08, &qword_1001F7DE8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100178468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1001C6798(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100178690(uint64_t a1, uint64_t a2)
{
  sub_1001C6798(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_1001C68E8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_100178714(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
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

    sub_1001826F8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1001787B0(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1001C6DF8();
  sub_1001C6E08(a2);
  sub_1001C6E08(a3);
  v9 = sub_1001C6E28();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100179134(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1001788CC(uint64_t a1, Swift::Int a2, uint64_t a3, int a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  v24 = a4 & 1;
  sub_1001C6E18(a4 & 1);
  v10 = sub_1001C6E28();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      v16 = *(v15 + 16);
      v17 = *v15 == a2 && *(v15 + 8) == a3;
      if (v17 || (sub_1001C6D08()) && ((v16 ^ a4) & 1) == 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v21 = *(v8 + 48) + 24 * v12;
    v23 = *v21;
    v22 = *(v21 + 8);
    LOBYTE(v21) = *(v21 + 16);
    *a1 = v23;
    *(a1 + 8) = v22;
    *(a1 + 16) = v21;

    return 0;
  }

  else
  {
LABEL_11:
    v18 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;

    sub_1001792A4(a2, a3, v24, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v24;
    return 1;
  }
}

uint64_t sub_100178A6C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  v9 = sub_1001C6E28();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1001C6D08() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100179460(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100178BBC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  v9 = sub_1001C6E28();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1001C6D08() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1001795E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100178D0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1001C6918();

    if (v9)
    {

      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_1001C6908();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100178F44(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100178468(v21 + 1);
    }

    v19 = v8;
    sub_100178690(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v11 = sub_1001C6798(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100179760(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1001C67A8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_100178F44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100084528(&qword_100273258, &unk_1001F6BE8);
    v2 = sub_1001C6998();
    v15 = v2;
    sub_1001C68F8();
    if (sub_1001C6928())
    {
      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100178468(v9 + 1);
        }

        v2 = v15;
        result = sub_1001C6798(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1001C6928());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100179134(Swift::Int result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100177AC0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1001798D0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100179F84(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1001C6DF8();
  sub_1001C6E08(v6);
  sub_1001C6E08(a2);
  result = sub_1001C6E28();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v6;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1001C6D58();
  __break(1u);
  return result;
}

Swift::Int sub_1001792A4(Swift::Int result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100177D28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_100179A14();
      goto LABEL_18;
    }

    sub_10017A1BC(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(a3 & 1);
  result = sub_1001C6E28();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *v19 == v10 && *(v19 + 8) == a2;
      if (v21 || (result = sub_1001C6D08(), (result & 1) != 0))
      {
        if (((v20 ^ a3) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3 & 1;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_1001C6D58();
  __break(1u);
  return result;
}

Swift::Int sub_100179460(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100177FA8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100179B7C();
      goto LABEL_16;
    }

    sub_10017A414(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  result = sub_1001C6E28();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1001C6D08();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1001C6D58();
  __break(1u);
  return result;
}

Swift::Int sub_1001795E0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100178208(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100179CD8();
      goto LABEL_16;
    }

    sub_10017A64C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  result = sub_1001C6E28();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1001C6D08();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1001C6D58();
  __break(1u);
  return result;
}

void sub_100179760(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100178468(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100179E34();
      goto LABEL_12;
    }

    sub_10017A884(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1001C6798(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1001C67A8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1001C6D58();
  __break(1u);
}

void *sub_1001798D0()
{
  v1 = v0;
  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100179A14()
{
  v1 = v0;
  sub_100084528(&qword_100273240, qword_1001F6BC8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100179B7C()
{
  v1 = v0;
  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100179CD8()
{
  v1 = v0;
  sub_100084528(&qword_100273D08, &qword_1001F7DE8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100179E34()
{
  v1 = v0;
  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100179F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1001C6DF8();
      sub_1001C6E08(v19);
      sub_1001C6E08(v20);
      result = sub_1001C6E28();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10017A1BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273240, qword_1001F6BC8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1001C6DF8();

      sub_1001C60E8();
      sub_1001C6E18(v22);
      result = sub_1001C6E28();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10017A414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1001C6DF8();

      sub_1001C60E8();
      result = sub_1001C6E28();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10017A64C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273D08, &qword_1001F7DE8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1001C6DF8();

      sub_1001C60E8();
      result = sub_1001C6E28();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10017A884(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  result = sub_1001C6988();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1001C6798(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_10017AA98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100084528(&qword_100273D18, &qword_1001F7DF0);
    v2 = sub_1001C6B68();
    v19 = v2;
    sub_1001C6AE8();
    v3 = sub_1001C6B18();
    if (v3)
    {
      v4 = v3;
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100088714(0, &qword_100270F00, off_10023DD10);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100189224(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1001C6798(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1001C6B18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10017ACE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100084528(&qword_100273D30, &qword_1001F7E08);
    v2 = sub_1001C6B68();
    v19 = v2;
    sub_1001C6AE8();
    v3 = sub_1001C6B18();
    if (v3)
    {
      v4 = v3;
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100189238(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1001C6798(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1001C6B18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_10017AFB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  result = sub_100187A60(a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      result = sub_100187A60(a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_1001C6D68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v26 = *v9;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + 8 * result) = a3;
    v29 = (v26[7] + 16 * result);
    *v29 = a1;
    v29[1] = a2;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = (v26[7] + 16 * result);
  v28 = v27[1];
  *v27 = a1;
  v27[1] = a2;
}

id sub_10017B130(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100187BB4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100189238(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100187BB4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
        sub_1001C6D68();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10018B17C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_10017B300(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100187B3C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_100187B3C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1001C6D68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

unint64_t sub_10017B498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100187B3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100189AA0(v16, a4 & 1);
      v20 = *v5;
      result = sub_100187B3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1001C6D68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10018B630();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_10017B5FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v14 = sub_100187C98(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      sub_10018BA94();
      goto LABEL_7;
    }

    sub_10018A280(v17, a5 & 1);
    v24 = *v6;
    v25 = sub_100187C98(a2, a3, v8 & 1);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1001C6D68();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v6;
  if (v18)
  {
LABEL_8:
    v21 = v20[7];
    v22 = v21 + *(*(_s14PricingServiceV12FetchedPriceVMa(0) - 8) + 72) * v14;

    return sub_1001832B4(a1, v22);
  }

LABEL_13:
  sub_10017B77C(v14, a2, a3, v8 & 1, a1, v20);
}

uint64_t sub_10017B77C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a6[6] + 24 * a1;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  v10 = a6[7];
  v11 = _s14PricingServiceV12FetchedPriceVMa(0);
  result = sub_100183318(a5, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_10017B81C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(a3 & 1);
  v9 = sub_1001C6E28();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = v13 + 24 * v11;
    v15 = *(v14 + 16);
    v16 = *v14 == a1 && *(v14 + 8) == a2;
    if (v16 || (sub_1001C6D08()) && ((v15 ^ a3) & 1) == 0)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  v25 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100179A14();
    v20 = v25;
  }

  v21 = *(v20 + 48) + 24 * v11;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  sub_10017BDD4(v11);
  result = v22;
  *v3 = v25;
  return result;
}

uint64_t sub_10017B998(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1001C6DF8();
  sub_1001C60E8();
  v7 = sub_1001C6E28();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1001C6D08() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100179B7C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10017BFD0(v9);
  *v2 = v20;
  return v13;
}