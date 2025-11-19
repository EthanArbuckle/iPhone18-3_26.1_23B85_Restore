uint64_t sub_100037F5C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000380BC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100038048(uint64_t a1, uint64_t a2)
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

  sub_1000057A0(&qword_10009E970, &unk_10007E5A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000380BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000057A0(&qword_10009E970, &unk_10007E5A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1000381B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&unk_10009F400, qword_10007E5B0);
    v3 = sub_10007B66C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000187C8(v4, &v13, &qword_10009E920, &qword_10007F580);
      v5 = v13;
      v6 = v14;
      result = sub_100037AD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000285C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000382E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100038330()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100038358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000383A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000383C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000383F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100038418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003846C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000384C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000384E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100038510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100038538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100038584(uint64_t *a1, void (**a2)(void, void, void))
{
  v4 = sub_10007AA3C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v41 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v40 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007AE2C();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  __chkstk_darwin(v15);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  (*(v11 + 16))(v14, a1, v10);
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38[1] = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v39 = v19;
    v38[0] = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v25 = sub_10007B69C();
    v26 = a2;
    v28 = v27;
    (*(v11 + 8))(v14, v10);
    v29 = sub_100037C08(v25, v28, aBlock);
    a2 = v26;

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "callForSharingStatus url: %s", v23, 0xCu);
    sub_10000585C(v38[0]);
    v19 = v39;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  (*(v44 + 8))(v18, v45);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v30 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v35 = sub_10007AB9C();
    sub_10007ACAC();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_10004617C;
    *(v36 + 24) = v19;
    aBlock[4] = sub_100046250;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029D60;
    aBlock[3] = &unk_100097A40;
    v37 = _Block_copy(aBlock);

    [v30 sharingStatusForWithURLWrapper:v35 withReply:v37];

    _Block_release(v37);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v31 = v40;
    v32 = v43;
    sub_10007AB6C();
    v33 = sub_10007AA1C();
    (*(v42 + 8))(v31, v32);
    v34 = sub_10007AB7C();
    (a2)[2](a2, 0, v34);
  }
}

void sub_100038D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v126 = a6;
  v128 = a5;
  v127 = a4;
  v137 = a2;
  v138 = a3;
  v9 = sub_10007AA3C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v121 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10007AA4C();
  v122 = *(v123 - 8);
  v12 = *(v122 + 64);
  __chkstk_darwin(v123);
  v120 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v116 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v117 = &v114 - v19;
  v20 = __chkstk_darwin(v18);
  v119 = &v114 - v21;
  __chkstk_darwin(v20);
  v124 = &v114 - v22;
  v23 = sub_10007AC4C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  __chkstk_darwin(v23);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10007AE2C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v132 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v131 = &v114 - v34;
  v35 = __chkstk_darwin(v33);
  v130 = &v114 - v36;
  v37 = __chkstk_darwin(v35);
  v129 = &v114 - v38;
  v39 = __chkstk_darwin(v37);
  v139 = &v114 - v40;
  __chkstk_darwin(v39);
  v42 = &v114 - v41;
  v136 = swift_allocObject();
  *(v136 + 16) = a7;
  v125 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v43 = v24[2];
  v133 = a1;
  v43(v27, a1, v23);
  v44 = sub_10007AE1C();
  v45 = sub_10007B41C();
  v46 = os_log_type_enabled(v44, v45);
  v140 = v29;
  v134 = v24;
  v135 = v23;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v115 = v28;
    v48 = v24;
    v49 = v47;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v51 = sub_10007B69C();
    v53 = v52;
    v54 = v48;
    v28 = v115;
    v118 = v54[1];
    v118(v27, v23);
    v55 = sub_100037C08(v51, v53, aBlock);

    *(v49 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v44, v45, "callForFileSharing url: %s", v49, 0xCu);
    sub_10000585C(v50);
    v29 = v140;
  }

  else
  {

    v118 = v24[1];
    v118(v27, v23);
  }

  v56 = *(v29 + 8);
  v56(v42, v28);
  v57 = v139;
  sub_10007AE0C();

  v58 = sub_10007AE1C();
  v59 = sub_10007B3DC();

  v60 = os_log_type_enabled(v58, v59);
  v61 = v130;
  if (v60)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = sub_10007B2BC();
    v66 = sub_100037C08(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "callForFileSharing emailAddresses: %s", v62, 0xCu);
    sub_10000585C(v63);

    v67 = v139;
  }

  else
  {

    v67 = v57;
  }

  v56(v67, v28);
  v68 = v129;
  sub_10007AE0C();

  v69 = sub_10007AE1C();
  v70 = sub_10007B3DC();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v71 = 136315138;
    v73 = sub_10007B2BC();
    v75 = v28;
    v76 = sub_100037C08(v73, v74, aBlock);

    *(v71 + 4) = v76;
    v28 = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "callForFileSharing phoneNumbers: %s", v71, 0xCu);
    sub_10000585C(v72);
  }

  v56(v68, v28);
  sub_10007AE0C();
  v77 = sub_10007AE1C();
  v78 = sub_10007B3DC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 136315138;
    v141 = v127;
    aBlock[0] = v80;
    type metadata accessor for ParticipantPermission(0);
    v81 = sub_10007B1AC();
    v83 = sub_100037C08(v81, v82, aBlock);

    *(v79 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v77, v78, "callForFileSharing accessType: %s", v79, 0xCu);
    sub_10000585C(v80);
  }

  v56(v61, v28);
  v84 = v131;
  sub_10007AE0C();
  v85 = sub_10007AE1C();
  v86 = sub_10007B3DC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 136315138;
    v141 = v128;
    aBlock[0] = v88;
    type metadata accessor for ParticipantPermission(0);
    v89 = sub_10007B1AC();
    v91 = sub_100037C08(v89, v90, aBlock);

    *(v87 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v85, v86, "callForFileSharing permissionType: %s", v87, 0xCu);
    sub_10000585C(v88);
  }

  v56(v84, v28);
  v92 = v132;
  sub_10007AE0C();
  v93 = sub_10007AE1C();
  v94 = sub_10007B3DC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 67109120;
    *(v95 + 4) = v126 & 1;
    _os_log_impl(&_mh_execute_header, v93, v94, "callForFileSharing allowOthersToInvite: %{BOOL}d", v95, 8u);
  }

  v56(v92, v28);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v96 = qword_1000A23D0;
  v98 = v134;
  v97 = v135;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v106 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v110 = sub_10007B29C().super.isa;
    v111 = swift_allocObject();
    v112 = v136;
    *(v111 + 16) = sub_100046368;
    *(v111 + 24) = v112;
    aBlock[4] = sub_100046430;
    aBlock[5] = v111;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097978;
    v113 = _Block_copy(aBlock);

    [v96 startFileSharingWithURLWrapper:v106 emailAddresses:isa phoneNumbers:v110 accessType:v127 permissionType:v128 allowOthersToInvite:v126 & 1 withReply:v113];

    _Block_release(v113);

    swift_unknownObjectRelease();
  }

  else
  {
    v99 = v124;
    (v134[7])(v124, 1, 1, v135);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v100 = v120;
    v101 = v123;
    sub_10007AB6C();
    v102 = sub_10007AA1C();
    (*(v122 + 8))(v100, v101);
    v103 = v119;
    sub_1000187C8(v99, v119, &unk_10009ED10, &qword_10007D310);
    if ((v98[6])(v103, 1, v97) == 1)
    {
      v105 = 0;
    }

    else
    {
      sub_10007ABFC(v104);
      v105 = v107;
      v118(v103, v97);
    }

    v108 = sub_10007AB7C();
    v125[2](v125, v105, 0, v108);

    sub_100008824(v99, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100039C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(const void *, void *, void, void *))
{
  v112 = a4;
  v114 = a2;
  v115 = a3;
  v7 = sub_10007AA3C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v100 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10007AA4C();
  v101 = *(v102 - 8);
  v10 = *(v101 + 64);
  __chkstk_darwin(v102);
  v99 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v96[0] = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v96[1] = v96 - v17;
  v18 = __chkstk_darwin(v16);
  v98 = v96 - v19;
  __chkstk_darwin(v18);
  v103 = v96 - v20;
  v21 = sub_10007AC4C();
  v22 = *(v21 - 8);
  v23 = v22[8];
  __chkstk_darwin(v21);
  v25 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10007AE2C();
  v26 = *(v107 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v107);
  v30 = v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v109 = v96 - v32;
  v33 = __chkstk_darwin(v31);
  v108 = v96 - v34;
  __chkstk_darwin(v33);
  v36 = v96 - v35;
  v113 = swift_allocObject();
  *(v113 + 16) = a5;
  v106 = a5;
  _Block_copy(a5);
  sub_10007AE0C();
  v37 = v22[2];
  v111 = a1;
  v37(v25, a1, v21);
  v38 = sub_10007AE1C();
  v39 = sub_10007B41C();
  v40 = os_log_type_enabled(v38, v39);
  v116 = v26;
  v104 = v22;
  v105 = v21;
  v110 = v30;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v43 = sub_10007B69C();
    v45 = v44;
    v97 = v22[1];
    v97(v25, v21);
    v46 = sub_100037C08(v43, v45, aBlock);
    v26 = v116;

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "callForFileSharing url: %s", v41, 0xCu);
    sub_10000585C(v42);
  }

  else
  {

    v97 = v22[1];
    v97(v25, v21);
  }

  v47 = *(v26 + 8);
  v48 = v107;
  v47(v36, v107);
  v49 = v108;
  sub_10007AE0C();

  v50 = sub_10007AE1C();
  v51 = sub_10007B3DC();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v109;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_10007B2BC();
    v58 = sub_100037C08(v56, v57, aBlock);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "callForFileSharing emailAddresses: %s", v54, 0xCu);
    sub_10000585C(v55);
  }

  v47(v49, v48);
  sub_10007AE0C();

  v59 = sub_10007AE1C();
  v60 = sub_10007B3DC();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136315138;
    v63 = sub_10007B2BC();
    v65 = sub_100037C08(v63, v64, aBlock);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "callForFileSharing phoneNumbers: %s", v61, 0xCu);
    sub_10000585C(v62);
  }

  v47(v53, v48);
  v66 = v110;
  sub_10007AE0C();

  v67 = sub_10007AE1C();
  v68 = sub_10007B3DC();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = v48;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock[0] = v71;
    *v70 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v72 = sub_10007B2BC();
    v74 = sub_100037C08(v72, v73, aBlock);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v67, v68, "callForFileSharing optionsGroups: %s", v70, 0xCu);
    sub_10000585C(v71);

    v75 = v66;
    v76 = v69;
  }

  else
  {

    v75 = v66;
    v76 = v48;
  }

  v47(v75, v76);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v77 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v87 = sub_10007AB9C();
    sub_10007ACAC();
    isa = sub_10007B29C().super.isa;
    v91 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v92 = sub_10007B29C().super.isa;
    v93 = swift_allocObject();
    v94 = v113;
    *(v93 + 16) = sub_100046368;
    *(v93 + 24) = v94;
    aBlock[4] = sub_100046430;
    aBlock[5] = v93;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097900;
    v95 = _Block_copy(aBlock);

    [v77 startFileSharingWithURLWrapper:v87 emailAddresses:isa phoneNumbers:v91 optionsGroups:v92 withReply:v95];

    _Block_release(v95);

    swift_unknownObjectRelease();
  }

  else
  {
    v79 = v103;
    v78 = v104;
    v80 = v105;
    (v104[7])(v103, 1, 1, v105);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v81 = v99;
    v82 = v102;
    sub_10007AB6C();
    v83 = sub_10007AA1C();
    (*(v101 + 8))(v81, v82);
    v84 = v98;
    sub_1000187C8(v79, v98, &unk_10009ED10, &qword_10007D310);
    if ((v78[6])(v84, 1, v80) == 1)
    {
      v86 = 0;
    }

    else
    {
      sub_10007ABFC(v85);
      v86 = v88;
      v97(v84, v80);
    }

    v89 = sub_10007AB7C();
    v106[2](v106, v86, 0, v89);

    sub_100008824(v79, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003AA00(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (**a8)(const void *, void *, void, void *))
{
  v128 = a7;
  v124 = a6;
  v129 = a5;
  v130 = a3;
  v132 = a4;
  v11 = sub_10007AA3C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v116 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10007AA4C();
  v117 = *(v118 - 8);
  v14 = *(v117 + 64);
  __chkstk_darwin(v118);
  v115 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v119 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v114 - v20;
  v133 = sub_10007AE2C();
  v21 = *(v133 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v133);
  v123 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v122 = &v114 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v114 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v114 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v114 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v114 - v37;
  __chkstk_darwin(v36);
  v40 = &v114 - v39;
  v125 = swift_allocObject();
  *(v125 + 16) = a8;
  v121 = a8;
  _Block_copy(a8);
  sub_10007AE0C();
  v41 = a1;
  v42 = sub_10007AE1C();
  v43 = sub_10007B41C();
  v127 = v41;

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v131 = v35;
    v46 = v21;
    v47 = v32;
    v48 = v29;
    v49 = a2;
    v50 = v45;
    *v44 = 138412290;
    v51 = v127;
    *(v44 + 4) = v127;
    *v45 = v51;
    v52 = v51;
    _os_log_impl(&_mh_execute_header, v42, v43, "callForCloudKitAddToShare share: %@", v44, 0xCu);
    sub_100008824(v50, &qword_10009F570, &qword_10007DAF0);
    a2 = v49;
    v29 = v48;
    v32 = v47;
    v21 = v46;
    v35 = v131;
  }

  v53 = v133;
  v131 = *(v21 + 8);
  (v131)(v40, v133);
  sub_10007AE0C();
  v54 = a2;
  v55 = sub_10007AE1C();
  v56 = sub_10007B41C();
  v126 = v54;

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    v59 = v126;
    *(v57 + 4) = v126;
    *v58 = v59;
    v60 = v59;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForCloudKitAddToShare containerSetupInfo: %@", v57, 0xCu);
    sub_100008824(v58, &qword_10009F570, &qword_10007DAF0);

    v53 = v133;
  }

  v61 = v131;
  (v131)(v38, v53);
  sub_10007AE0C();

  v62 = sub_10007AE1C();
  v63 = sub_10007B3DC();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v64 = 136315138;
    v66 = sub_10007B2BC();
    v68 = sub_100037C08(v66, v67, aBlock);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "callForCloudKitAddToShare emailAddresses: %s", v64, 0xCu);
    sub_10000585C(v65);
    v53 = v133;

    v61 = v131;
  }

  v61(v35, v53);
  sub_10007AE0C();

  v69 = sub_10007AE1C();
  v70 = sub_10007B3DC();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v71 = 136315138;
    v73 = sub_10007B2BC();
    v75 = sub_100037C08(v73, v74, aBlock);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "callForCloudKitAddToShare phoneNumbers: %s", v71, 0xCu);
    sub_10000585C(v72);
    v53 = v133;
  }

  v61(v32, v53);
  sub_10007AE0C();
  v76 = sub_10007AE1C();
  v77 = sub_10007B3DC();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 136315138;
    v134 = v129;
    aBlock[0] = v79;
    type metadata accessor for ParticipantPermission(0);
    v80 = sub_10007B1AC();
    v82 = sub_100037C08(v80, v81, aBlock);

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v76, v77, "callForCloudKitAddToShare accessType: %s", v78, 0xCu);
    sub_10000585C(v79);
    v53 = v133;
  }

  v61(v29, v53);
  v83 = v124;
  v84 = v122;
  sub_10007AE0C();
  v85 = sub_10007AE1C();
  v86 = sub_10007B3DC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v134 = v83;
    aBlock[0] = v88;
    *v87 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v89 = sub_10007B1AC();
    v91 = sub_100037C08(v89, v90, aBlock);

    *(v87 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v85, v86, "callForCloudKitAddToShare permissionType: %s", v87, 0xCu);
    sub_10000585C(v88);
    v53 = v133;

    v61 = v131;
    (v131)(v84, v53);
  }

  else
  {

    v61(v84, v53);
  }

  v92 = v123;
  sub_10007AE0C();
  v93 = sub_10007AE1C();
  v94 = sub_10007B3DC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 67109120;
    *(v95 + 4) = v128 & 1;
    _os_log_impl(&_mh_execute_header, v93, v94, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v95, 8u);
  }

  v61(v92, v53);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v96 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v98 = sub_10007B29C().super.isa;
    v99 = swift_allocObject();
    v100 = v125;
    *(v99 + 16) = sub_100046368;
    *(v99 + 24) = v100;
    aBlock[4] = sub_100046430;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097888;
    v101 = _Block_copy(aBlock);

    LOBYTE(v113) = v128 & 1;
    [v96 addToCloudKitSharing:v127 containerSetupInfo:v126 emailAddresses:isa phoneNumbers:v98 accessType:v129 permissionType:v83 allowOthersToInvite:v113 withReply:v101];
    _Block_release(v101);

    swift_unknownObjectRelease();
  }

  else
  {
    v102 = sub_10007AC4C();
    v103 = *(v102 - 8);
    v104 = v120;
    (*(v103 + 56))(v120, 1, 1, v102);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v105 = v115;
    v106 = v118;
    sub_10007AB6C();
    v107 = sub_10007AA1C();
    (*(v117 + 8))(v105, v106);
    v108 = v119;
    sub_1000187C8(v104, v119, &unk_10009ED10, &qword_10007D310);
    v110 = 0;
    if ((*(v103 + 48))(v108, 1, v102) != 1)
    {
      sub_10007ABFC(v109);
      v110 = v111;
      (*(v103 + 8))(v108, v102);
    }

    v112 = sub_10007AB7C();
    v121[2](v121, v110, 0, v112);

    sub_100008824(v104, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003B738(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(const void *, void *, void, void *))
{
  v110 = a5;
  v113 = a3;
  v114 = a4;
  v9 = sub_10007AA3C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v101 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  __chkstk_darwin(v12);
  v100 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v104 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v107 = &v99 - v19;
  v115 = sub_10007AE2C();
  v20 = *(v115 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v115);
  v112 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v99 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v99 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v99 - v31;
  __chkstk_darwin(v30);
  v34 = &v99 - v33;
  v111 = swift_allocObject();
  *(v111 + 16) = a6;
  v105 = a6;
  _Block_copy(a6);
  sub_10007AE0C();
  v35 = a1;
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v109 = v29;
    v40 = v20;
    v41 = a2;
    v42 = v39;
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v43 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForCloudKitAddToShare share: %@", v38, 0xCu);
    sub_100008824(v42, &qword_10009F570, &qword_10007DAF0);
    a2 = v41;
    v20 = v40;
    v29 = v109;
  }

  v108 = v26;
  v106 = v35;

  v44 = *(v20 + 8);
  v45 = v115;
  v44(v34, v115);
  sub_10007AE0C();
  v46 = a2;
  v47 = sub_10007AE1C();
  v48 = sub_10007B41C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "callForCloudKitAddToShare containerSetupInfo: %@", v49, 0xCu);
    sub_100008824(v50, &qword_10009F570, &qword_10007DAF0);

    v45 = v115;
  }

  v44(v32, v45);
  sub_10007AE0C();

  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();

  v54 = os_log_type_enabled(v52, v53);
  v109 = v46;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = sub_10007B2BC();
    v59 = sub_100037C08(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "callForCloudKitAddToShare emailAddresses: %s", v55, 0xCu);
    sub_10000585C(v56);
    v45 = v115;
  }

  v44(v29, v45);
  v60 = v108;
  sub_10007AE0C();

  v61 = sub_10007AE1C();
  v62 = sub_10007B3DC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = 136315138;
    v65 = sub_10007B2BC();
    v67 = sub_100037C08(v65, v66, aBlock);

    *(v63 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v61, v62, "callForCloudKitAddToShare phoneNumbers: %s", v63, 0xCu);
    sub_10000585C(v64);
    v45 = v115;
  }

  v44(v60, v45);
  v68 = v112;
  sub_10007AE0C();

  v69 = sub_10007AE1C();
  v70 = sub_10007B3DC();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v45;
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v71 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v74 = sub_10007B2BC();
    v76 = sub_100037C08(v74, v75, aBlock);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "callForCloudKitAddToShare optionsGroups: %s", v71, 0xCu);
    sub_10000585C(v73);

    v77 = v112;
    v78 = v72;
  }

  else
  {

    v77 = v68;
    v78 = v45;
  }

  v44(v77, v78);
  v79 = v109;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v80 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v82 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v83 = sub_10007B29C().super.isa;
    v84 = swift_allocObject();
    v85 = v111;
    *(v84 + 16) = sub_100046368;
    *(v84 + 24) = v85;
    aBlock[4] = sub_100046430;
    aBlock[5] = v84;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097810;
    v86 = _Block_copy(aBlock);

    [v80 addToCloudKitSharing:v106 containerSetupInfo:v79 emailAddresses:isa phoneNumbers:v82 optionsGroups:v83 withReply:v86];
    _Block_release(v86);

    swift_unknownObjectRelease();
  }

  else
  {
    v87 = sub_10007AC4C();
    v88 = *(v87 - 8);
    v89 = v107;
    (*(v88 + 56))(v107, 1, 1, v87);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v90 = v100;
    v91 = v103;
    sub_10007AB6C();
    v92 = sub_10007AA1C();
    (*(v102 + 8))(v90, v91);
    v93 = v89;
    v94 = v104;
    sub_1000187C8(v93, v104, &unk_10009ED10, &qword_10007D310);
    v96 = 0;
    if ((*(v88 + 48))(v94, 1, v87) != 1)
    {
      sub_10007ABFC(v95);
      v96 = v97;
      (*(v88 + 8))(v94, v87);
    }

    v98 = sub_10007AB7C();
    v105[2](v105, v96, 0, v98);

    sub_100008824(v107, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003C284(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  v121 = a7;
  v122 = a5;
  v123 = a6;
  v125 = a4;
  v114 = a2;
  v11 = sub_10007AA3C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v107 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10007AA4C();
  v108 = *(v109 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v109);
  v106 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007AC4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007AE2C();
  v112 = *(v21 - 8);
  v22 = *(v112 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v117 = &v105 - v27;
  v28 = __chkstk_darwin(v26);
  v116 = &v105 - v29;
  v30 = __chkstk_darwin(v28);
  v115 = &v105 - v31;
  v32 = __chkstk_darwin(v30);
  v113 = &v105 - v33;
  v34 = __chkstk_darwin(v32);
  v124 = &v105 - v35;
  __chkstk_darwin(v34);
  v37 = &v105 - v36;
  v119 = swift_allocObject();
  *(v119 + 16) = a8;
  v110 = a8;
  _Block_copy(a8);
  sub_10007AE0C();
  v38 = *(v17 + 16);
  v111 = a1;
  v38(v20, a1, v16);
  v39 = sub_10007AE1C();
  v40 = sub_10007B41C();
  v41 = os_log_type_enabled(v39, v40);
  v120 = a3;
  v126 = v21;
  v118 = v25;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v44 = sub_10007B69C();
    v46 = v45;
    (*(v17 + 8))(v20, v16);
    v47 = sub_100037C08(v44, v46, aBlock);
    v21 = v126;

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForSharingURLAddToShare sharingURL: %s", v42, 0xCu);
    sub_10000585C(v43);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v48 = *(v112 + 8);
  v48(v37, v21);
  sub_10007AE0C();
  v49 = v114;
  v50 = sub_10007AE1C();
  v51 = sub_10007B41C();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v116;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v49;
    *v55 = v49;
    v56 = v49;
    _os_log_impl(&_mh_execute_header, v50, v51, "callForSharingURLAddToShare containerSetupInfo: %@", v54, 0xCu);
    sub_100008824(v55, &qword_10009F570, &qword_10007DAF0);
  }

  v114 = v49;

  v48(v124, v21);
  v57 = v113;
  sub_10007AE0C();

  v58 = sub_10007AE1C();
  v59 = sub_10007B3DC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v60 = 136315138;
    v62 = sub_10007B2BC();
    v64 = sub_100037C08(v62, v63, aBlock);

    *(v60 + 4) = v64;
    v21 = v126;
    _os_log_impl(&_mh_execute_header, v58, v59, "callForSharingURLAddToShare emailAddresses: %s", v60, 0xCu);
    sub_10000585C(v61);
  }

  v48(v57, v21);
  v65 = v115;
  sub_10007AE0C();

  v66 = sub_10007AE1C();
  v67 = sub_10007B3DC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136315138;
    v70 = sub_10007B2BC();
    v72 = sub_100037C08(v70, v71, aBlock);

    *(v68 + 4) = v72;
    v21 = v126;
    _os_log_impl(&_mh_execute_header, v66, v67, "callForSharingURLAddToShare phoneNumbers: %s", v68, 0xCu);
    sub_10000585C(v69);
  }

  v48(v65, v21);
  sub_10007AE0C();
  v73 = sub_10007AE1C();
  v74 = sub_10007B3DC();
  v75 = os_log_type_enabled(v73, v74);
  v76 = v114;
  if (v75)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 136315138;
    v127 = v122;
    aBlock[0] = v78;
    type metadata accessor for ParticipantPermission(0);
    v79 = sub_10007B1AC();
    v81 = sub_100037C08(v79, v80, aBlock);

    *(v77 + 4) = v81;
    v21 = v126;
    _os_log_impl(&_mh_execute_header, v73, v74, "callForSharingURLAddToShare accessType: %s", v77, 0xCu);
    sub_10000585C(v78);
  }

  v48(v53, v21);
  v82 = v117;
  sub_10007AE0C();
  v83 = sub_10007AE1C();
  v84 = sub_10007B3DC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 136315138;
    v127 = v123;
    aBlock[0] = v86;
    type metadata accessor for ParticipantPermission(0);
    v87 = sub_10007B1AC();
    v89 = sub_100037C08(v87, v88, aBlock);

    *(v85 + 4) = v89;
    v21 = v126;
    _os_log_impl(&_mh_execute_header, v83, v84, "callForSharingURLAddToShare permissionType: %s", v85, 0xCu);
    sub_10000585C(v86);
  }

  v48(v82, v21);
  v90 = v118;
  sub_10007AE0C();
  v91 = sub_10007AE1C();
  v92 = sub_10007B3DC();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 67109120;
    *(v93 + 4) = v121 & 1;
    _os_log_impl(&_mh_execute_header, v91, v92, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v93, 8u);
  }

  v48(v90, v21);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v94 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(&v129);
    v96 = v95;
    v97.super.isa = sub_10007B29C().super.isa;
    v98.super.isa = sub_10007B29C().super.isa;
    v99 = swift_allocObject();
    v100 = v119;
    *(v99 + 16) = sub_100046174;
    *(v99 + 24) = v100;
    aBlock[4] = sub_100046438;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002DDAC;
    aBlock[3] = &unk_100097798;
    v101 = _Block_copy(aBlock);

    LOBYTE(v104) = v121 & 1;
    [v94 addToShareFromSharingURL:v96 containerSetupInfo:v76 emailAddresses:v97.super.isa phoneNumbers:v98.super.isa accessType:v122 permissionType:v123 allowOthersToInvite:v104 withReply:v101];
    _Block_release(v101);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v102 = v106;
    v103 = v109;
    sub_10007AB6C();
    v97.super.isa = sub_10007AA1C();
    (*(v108 + 8))(v102, v103);
    v98.super.isa = sub_10007AB7C();
    (*(v110 + 2))(v110, 0, 0, v98.super.isa);
  }
}

void sub_10003CF68(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v61 = a2;
  v5 = sub_10007AA3C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007AE2C();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v62 = swift_allocObject();
  *(v62 + 16) = a3;
  v54 = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v23 = *(v12 + 16);
  v59 = a1;
  v23(v15, a1, v11);
  v24 = sub_10007AE1C();
  v25 = sub_10007B41C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v26 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v27 = sub_10007B69C();
    v52 = v16;
    v28 = v20;
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_100037C08(v27, v30, aBlock);
    v20 = v28;

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "callForSharingURLRemoveShare sharingURL: %s", v26, 0xCu);
    sub_10000585C(v53);

    v32 = *(v60 + 8);
    v33 = v52;
    v32(v22, v52);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v32 = *(v60 + 8);
    v32(v22, v16);
    v33 = v16;
  }

  sub_10007AE0C();
  v34 = v61;
  v35 = v61;
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v34;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForSharingURLRemoveShare containerSetupInfo: %@", v38, 0xCu);
    sub_100008824(v39, &qword_10009F570, &qword_10007DAF0);
  }

  v32(v20, v33);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v41 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v42);
    v44 = v43;
    v45 = swift_allocObject();
    v46 = v62;
    *(v45 + 16) = sub_10004636C;
    *(v45 + 24) = v46;
    aBlock[4] = sub_100046254;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100097720;
    v47 = _Block_copy(aBlock);

    [v41 removeFromShareFromSharingURL:v44 containerSetupInfo:v35 withReply:v47];
    _Block_release(v47);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v48 = v55;
    v49 = v58;
    sub_10007AB6C();
    v50 = sub_10007AA1C();
    (*(v57 + 8))(v48, v49);
    v44 = sub_10007AB7C();
    v54[2](v54, 0, v44);
  }
}

void sub_10003D674(void *a1, void *a2, void (**a3)(const void *, void, void *))
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AE2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v20 = swift_allocObject();
  v53 = a3;
  v54 = v20;
  *(v20 + 16) = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v21 = a1;
  v22 = sub_10007AE1C();
  v23 = sub_10007B41C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v21;
    *v26 = v21;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "callForRemoveShare share: %@", v25, 0xCu);
    sub_100008824(v26, &qword_10009F570, &qword_10007DAF0);

    a2 = v24;
  }

  v28 = *(v13 + 8);
  v28(v19, v12);
  sub_10007AE0C();
  v29 = a2;
  v30 = sub_10007AE1C();
  v31 = sub_10007B41C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v48 = v28;
    v33 = v12;
    v34 = v21;
    v35 = a2;
    v36 = v32;
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v29;
    *v37 = v35;
    v21 = v34;
    v12 = v33;
    v28 = v48;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "callForRemoveShare containerSetupInfo: %@", v36, 0xCu);
    sub_100008824(v37, &qword_10009F570, &qword_10007DAF0);
  }

  v28(v17, v12);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v39 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v40 = swift_allocObject();
    v41 = v54;
    *(v40 + 16) = sub_10004636C;
    *(v40 + 24) = v41;
    aBlock[4] = sub_100046254;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_1000976A8;
    v42 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v39 removeFromShare:v21 containerSetupInfo:v29 withReply:v42];
    _Block_release(v42);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v43 = v49;
    v44 = v52;
    sub_10007AB6C();
    v45 = sub_10007AA1C();
    (*(v51 + 8))(v43, v44);
    v46 = sub_10007AB7C();
    v53[2](v53, 0, v46);
  }
}

void sub_10003DC2C(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_10007AA3C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007AC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007AE2C();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  (*(v11 + 16))(v14, a1, v10);
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = v19;
    v23 = v22;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v23 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v24 = sub_10007B69C();
    v40 = a1;
    v25 = a2;
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_100037C08(v24, v27, aBlock);
    a2 = v25;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "callForFileURLRemoveShare url: %s", v23, 0xCu);
    sub_10000585C(v39);

    v19 = v41;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  (*(v46 + 8))(v18, v47);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v29 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v30);
    v32 = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10004616C;
    *(v33 + 24) = v19;
    aBlock[4] = sub_100046254;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E714;
    aBlock[3] = &unk_100097630;
    v34 = _Block_copy(aBlock);

    [v29 removeFromShareForFileURL:v32 withReply:v34];
    _Block_release(v34);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v35 = v42;
    v36 = v45;
    sub_10007AB6C();
    v37 = sub_10007AA1C();
    (*(v44 + 8))(v35, v36);
    v32 = sub_10007AB7C();
    (a2)[2](a2, 0, v32);
  }
}

void sub_10003E1E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, const void *a8)
{
  v127 = a7;
  v128 = a4;
  v131 = a5;
  v132 = a3;
  v12 = sub_10007AA3C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10007AA4C();
  v112 = *(v113 - 8);
  v15 = *(v112 + 64);
  __chkstk_darwin(v113);
  v110 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = *(*(v116 - 8) + 64);
  v18 = __chkstk_darwin(v116);
  v119 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v115 = &v109 - v21;
  __chkstk_darwin(v20);
  v122 = &v109 - v22;
  v23 = sub_10007AC4C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  __chkstk_darwin(v23);
  v27 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10007AE2C();
  v28 = *(v133 - 1);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v133);
  v130 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v123 = &v109 - v33;
  v34 = __chkstk_darwin(v32);
  v129 = &v109 - v35;
  v36 = __chkstk_darwin(v34);
  v121 = &v109 - v37;
  __chkstk_darwin(v36);
  v39 = &v109 - v38;
  v125 = swift_allocObject();
  *(v125 + 16) = a8;
  v114 = a8;
  _Block_copy(a8);
  sub_10007AE0C();
  v40 = v24[2];
  v120 = a1;
  v40(v27, a1, v23);
  v41 = sub_10007AE1C();
  v42 = sub_10007B41C();
  v43 = os_log_type_enabled(v41, v42);
  v126 = a6;
  v118 = v24;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v124 = a2;
    v117 = v45;
    aBlock[0] = v45;
    *v44 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v46 = sub_10007B69C();
    v47 = v28;
    v49 = v48;
    v109 = v24[1];
    v109(v27, v23);
    v50 = sub_100037C08(v46, v49, aBlock);
    v28 = v47;

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForMailContent sharingURL: %s", v44, 0xCu);
    sub_10000585C(v117);
    a2 = v124;
  }

  else
  {

    v109 = v24[1];
    v109(v27, v23);
  }

  v51 = *(v28 + 8);
  v52 = v133;
  (v51)(v39, v133);
  v124 = v23;
  v53 = v121;
  sub_10007AE0C();
  v54 = a2;
  v55 = sub_10007AE1C();
  v56 = sub_10007B41C();

  v57 = os_log_type_enabled(v55, v56);
  v133 = v51;
  v58 = v122;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = v52;
    v61 = swift_slowAlloc();
    *v59 = 138412290;
    *(v59 + 4) = v54;
    *v61 = v54;
    v62 = v54;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForMailContent share: %@", v59, 0xCu);
    sub_100008824(v61, &qword_10009F570, &qword_10007DAF0);
    v52 = v60;

    v51 = v133;
  }

  v117 = v54;

  (v51)(v53, v52);
  v63 = v129;
  sub_10007AE0C();
  sub_1000187C8(v132, v58, &unk_10009ED10, &qword_10007D310);
  v64 = sub_10007AE1C();
  v65 = sub_10007B41C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = v52;
    sub_1000187C8(v58, v115, &unk_10009ED10, &qword_10007D310);
    v69 = sub_10007B1AC();
    v70 = v58;
    v71 = v69;
    v73 = v72;
    sub_100008824(v70, &unk_10009ED10, &qword_10007D310);
    v74 = sub_100037C08(v71, v73, aBlock);

    *(v66 + 4) = v74;
    v52 = v68;
    _os_log_impl(&_mh_execute_header, v64, v65, "callForMailContent fileURL: %s", v66, 0xCu);
    sub_10000585C(v67);
    v51 = v133;

    v75 = v129;
    v76 = v68;
  }

  else
  {

    sub_100008824(v58, &unk_10009ED10, &qword_10007D310);
    v75 = v63;
    v76 = v52;
  }

  (v51)(v75, v76);
  v78 = v126;
  v77 = v127;
  v79 = v131;
  v80 = v123;
  sub_10007AE0C();

  v81 = sub_10007AE1C();
  v82 = sub_10007B3DC();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    aBlock[0] = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_100037C08(v128, v79, aBlock);
    _os_log_impl(&_mh_execute_header, v81, v82, "callForMailContent appName: %s", v83, 0xCu);
    sub_10000585C(v84);
    v51 = v133;
  }

  (v51)(v80, v52);
  v85 = v130;
  sub_10007AE0C();
  sub_100038418(v78, v77);
  v86 = sub_10007AE1C();
  v87 = sub_10007B3EC();
  sub_10003846C(v78, v77);
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v88 = 136315138;
    v90 = sub_10007AC5C();
    v92 = sub_100037C08(v90, v91, aBlock);

    *(v88 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v86, v87, "callForMailContent appIconData: %s", v88, 0xCu);
    sub_10000585C(v89);

    (v133)(v130, v52);
  }

  else
  {

    (v51)(v85, v52);
  }

  v93 = v124;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v94 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v95);
    v97 = v96;
    v98 = v119;
    sub_1000187C8(v132, v119, &unk_10009ED10, &qword_10007D310);
    if ((v118[6])(v98, 1, v93) == 1)
    {
      v100 = 0;
    }

    else
    {
      sub_10007ABFC(v99);
      v100 = v105;
      v109(v98, v93);
    }

    v103 = sub_10007B15C();
    isa = sub_10007AC6C().super.isa;
    v106 = swift_allocObject();
    v107 = v125;
    *(v106 + 16) = sub_100046164;
    *(v106 + 24) = v107;
    aBlock[4] = sub_100046374;
    aBlock[5] = v106;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FF84;
    aBlock[3] = &unk_1000975B8;
    v108 = _Block_copy(aBlock);

    [v94 mailContentFromSharingURL:v97 share:v117 fileURL:v100 appName:v103 appIconData:isa withReply:v108];
    _Block_release(v108);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v101 = v110;
    v102 = v113;
    sub_10007AB6C();
    v103 = sub_10007AA1C();
    (*(v112 + 8))(v101, v102);
    isa = sub_10007AB7C();
    (*(v114 + 2))(v114, 0, 0, isa);
  }
}

void sub_10003EEBC(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v61 = a2;
  v5 = sub_10007AA3C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007AA4C();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007AE2C();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v62 = swift_allocObject();
  *(v62 + 16) = a3;
  v54 = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v23 = *(v12 + 16);
  v59 = a1;
  v23(v15, a1, v11);
  v24 = sub_10007AE1C();
  v25 = sub_10007B41C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v26 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v27 = sub_10007B69C();
    v52 = v16;
    v28 = v20;
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_100037C08(v27, v30, aBlock);
    v20 = v28;

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "callForMetadataFromShareURL sharingURL: %s", v26, 0xCu);
    sub_10000585C(v53);

    v32 = *(v60 + 8);
    v33 = v52;
    v32(v22, v52);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v32 = *(v60 + 8);
    v32(v22, v16);
    v33 = v16;
  }

  sub_10007AE0C();
  v34 = v61;
  v35 = v61;
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v34;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForMetadataFromShareURL containerSetupInfo: %@", v38, 0xCu);
    sub_100008824(v39, &qword_10009F570, &qword_10007DAF0);
  }

  v32(v20, v33);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v41 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v42);
    v44 = v43;
    v45 = swift_allocObject();
    v46 = v62;
    *(v45 + 16) = sub_10004615C;
    *(v45 + 24) = v46;
    aBlock[4] = sub_10004625C;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C29C;
    aBlock[3] = &unk_100097540;
    v47 = _Block_copy(aBlock);

    [v41 getMetadataFromShareFromSharingURL:v44 containerSetupInfo:v35 withReply:v47];
    _Block_release(v47);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v48 = v55;
    v49 = v58;
    sub_10007AB6C();
    v50 = sub_10007AA1C();
    (*(v57 + 8))(v48, v49);
    v44 = sub_10007AB7C();
    v54[2](v54, 0, v44);
  }
}

uint64_t sub_10003F5C8(void *a1, void *a2, void (**a3)(const void *, void *, void, void *))
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58[1] = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  __chkstk_darwin(v9);
  v58[0] = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v61 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = v58 - v16;
  v17 = sub_10007AE2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v58 - v23;
  v25 = swift_allocObject();
  v63 = a3;
  v64 = v25;
  *(v25 + 16) = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v26 = a1;
  v27 = sub_10007AE1C();
  v28 = sub_10007B41C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = a2;
    v31 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v31 = v26;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "callForUpdateShare share: %@", v29, 0xCu);
    sub_100008824(v31, &qword_10009F570, &qword_10007DAF0);
    a2 = v30;
  }

  v33 = *(v18 + 8);
  v33(v24, v17);
  sub_10007AE0C();
  v34 = a2;
  v35 = sub_10007AE1C();
  v36 = sub_10007B41C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = a2;
    v40 = v38;
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v39;
    v41 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "callForUpdateShare containerSetupInfo: %@", v37, 0xCu);
    sub_100008824(v40, &qword_10009F570, &qword_10007DAF0);
  }

  v33(v22, v17);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v42 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v43 = swift_allocObject();
    v44 = v64;
    *(v43 + 16) = sub_100046368;
    *(v43 + 24) = v44;
    aBlock[4] = sub_100046430;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000974C8;
    v45 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v42 updateShare:v26 containerSetupInfo:v34 withReply:v45];
    _Block_release(v45);

    return swift_unknownObjectRelease();
  }

  else
  {
    v47 = sub_10007AC4C();
    v48 = *(v47 - 8);
    v49 = v62;
    (*(v48 + 56))(v62, 1, 1, v47);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v50 = v58[0];
    v51 = v60;
    sub_10007AB6C();
    v52 = sub_10007AA1C();
    (*(v59 + 8))(v50, v51);
    v53 = v61;
    sub_1000187C8(v49, v61, &unk_10009ED10, &qword_10007D310);
    v55 = 0;
    if ((*(v48 + 48))(v53, 1, v47) != 1)
    {
      sub_10007ABFC(v54);
      v55 = v56;
      (*(v48 + 8))(v53, v47);
    }

    v57 = sub_10007AB7C();
    v63[2](v63, v55, 0, v57);

    sub_100008824(v49, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10003FCD8(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_10007AA3C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AE2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  v17 = a1;
  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = v16;
    v23 = v8;
    v24 = v7;
    v25 = v22;
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "callForCurrentUserSharingStatus share: %@", v21, 0xCu);
    sub_100008824(v25, &qword_10009F570, &qword_10007DAF0);
    v7 = v24;
    v8 = v23;
    v16 = v33;

    a2 = v34;
  }

  (*(v12 + 8))(v15, v11);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v27 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = sub_100046370;
    *(v28 + 24) = v16;
    aBlock[4] = sub_100046258;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000316DC;
    aBlock[3] = &unk_100097450;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v27 currentUserSharingStatusFor:v17 withReply:v29];
    _Block_release(v29);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v30 = v35;
    sub_10007AB6C();
    v31 = sub_10007AA1C();
    (*(v8 + 8))(v30, v7);
    v32 = sub_10007AB7C();
    (a2)[2](a2, 0, v32);
  }
}

void sub_100040168(void *a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(const void *, void *, void, void *))
{
  v98 = a4;
  v99 = a3;
  v8 = sub_10007AA3C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  __chkstk_darwin(v11);
  v86 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v90 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = &v85 - v18;
  v97 = sub_10007AE2C();
  v19 = *(v97 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v97);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v93 = &v85 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v85 - v27;
  __chkstk_darwin(v26);
  v30 = &v85 - v29;
  v96 = swift_allocObject();
  *(v96 + 16) = a5;
  v91 = a5;
  _Block_copy(a5);
  sub_10007AE0C();
  v31 = a1;
  v32 = sub_10007AE1C();
  v33 = sub_10007B41C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = a2;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v31;
    *v36 = v31;
    v37 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "callForAddParticipantsToShare share: %@", v35, 0xCu);
    sub_100008824(v36, &qword_10009F570, &qword_10007DAF0);

    a2 = v34;
  }

  v38 = *(v19 + 8);
  v39 = v97;
  v38(v30, v97);
  sub_10007AE0C();
  v40 = a2;
  v41 = sub_10007AE1C();
  v42 = sub_10007B41C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForAddParticipantsToShare containerSetupInfo: %@", v43, 0xCu);
    sub_100008824(v44, &qword_10009F570, &qword_10007DAF0);

    v39 = v97;
  }

  v38(v28, v39);
  v46 = v93;
  sub_10007AE0C();

  v47 = sub_10007AE1C();
  v48 = sub_10007B3DC();

  v49 = os_log_type_enabled(v47, v48);
  v94 = v40;
  v95 = v31;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v52 = sub_10007B2BC();
    v54 = sub_100037C08(v52, v53, aBlock);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v47, v48, "callForAddParticipantsToShare emailAddresses: %s", v50, 0xCu);
    sub_10000585C(v51);
    v39 = v97;
  }

  v38(v46, v39);
  sub_10007AE0C();

  v55 = sub_10007AE1C();
  v56 = sub_10007B3DC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v39;
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v57 = 136315138;
    v60 = sub_10007B2BC();
    v62 = sub_100037C08(v60, v61, aBlock);

    *(v57 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "callForAddParticipantsToShare phoneNumbers: %s", v57, 0xCu);
    sub_10000585C(v59);

    v63 = v23;
    v64 = v58;
  }

  else
  {

    v63 = v23;
    v64 = v39;
  }

  v38(v63, v64);
  v66 = v94;
  v65 = v95;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v67 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v69 = sub_10007B29C().super.isa;
    v70 = swift_allocObject();
    v71 = v96;
    *(v70 + 16) = sub_100046368;
    *(v70 + 24) = v71;
    aBlock[4] = sub_100046430;
    aBlock[5] = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000973D8;
    v72 = _Block_copy(aBlock);

    [v67 addParticipantsToShare:v65 containerSetupInfo:v66 emailAddresses:isa phoneNumbers:v69 withReply:v72];
    _Block_release(v72);

    swift_unknownObjectRelease();
  }

  else
  {
    v73 = sub_10007AC4C();
    v74 = *(v73 - 8);
    v75 = v92;
    (*(v74 + 56))(v92, 1, 1, v73);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v76 = v86;
    v77 = v89;
    sub_10007AB6C();
    v78 = sub_10007AA1C();
    (*(v88 + 8))(v76, v77);
    v79 = v75;
    v80 = v90;
    sub_1000187C8(v79, v90, &unk_10009ED10, &qword_10007D310);
    v82 = 0;
    if ((*(v74 + 48))(v80, 1, v73) != 1)
    {
      sub_10007ABFC(v81);
      v82 = v83;
      (*(v74 + 8))(v80, v73);
    }

    v84 = sub_10007AB7C();
    v91[2](v91, v82, 0, v84);

    sub_100008824(v92, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100040B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  LODWORD(v101) = a6;
  v104 = a3;
  v105 = a4;
  v97 = a2;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v91 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10007AA4C();
  v92 = *(v93 - 8);
  v13 = *(v92 + 64);
  __chkstk_darwin(v93);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v94 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v89 - v19;
  v106 = sub_10007AE2C();
  v20 = *(v106 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v106);
  v99 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v98 = &v89 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v89 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v89 - v30;
  __chkstk_darwin(v29);
  v33 = &v89 - v32;
  v103 = swift_allocObject();
  *(v103 + 16) = a7;
  v96 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v34 = a1;
  v35 = sub_10007AE1C();
  v36 = sub_10007B41C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v34;
    v39 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "callForAddParticipantsToShare urlWrapper: %@", v37, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);
  }

  v100 = v34;

  v40 = *(v20 + 8);
  v41 = v106;
  v40(v33, v106);
  sub_10007AE0C();

  v42 = sub_10007AE1C();
  v43 = sub_10007B3DC();

  v44 = os_log_type_enabled(v42, v43);
  v102 = a5;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    v47 = sub_10007B2BC();
    v49 = sub_100037C08(v47, v48, aBlock);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "callForAddParticipantsToShare emailAddresses: %s", v45, 0xCu);
    sub_10000585C(v46);

    v41 = v106;
  }

  v40(v31, v41);
  v50 = v101;
  sub_10007AE0C();

  v51 = sub_10007AE1C();
  v52 = sub_10007B3DC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = sub_10007B2BC();
    v57 = sub_100037C08(v55, v56, aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v51, v52, "callForAddParticipantsToShare phoneNumbers: %s", v53, 0xCu);
    sub_10000585C(v54);
    v41 = v106;
  }

  v40(v28, v41);
  v58 = v102;
  v59 = v98;
  sub_10007AE0C();
  v60 = sub_10007AE1C();
  v61 = sub_10007B3DC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v107 = v58;
    aBlock[0] = v63;
    *v62 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v64 = sub_10007B1AC();
    v101 = v40;
    v66 = sub_100037C08(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "callForAddParticipantsToShare permissionType: %s", v62, 0xCu);
    sub_10000585C(v63);
    v41 = v106;

    v40 = v101;
    v101(v59, v41);
  }

  else
  {

    v40(v59, v41);
  }

  v67 = v99;
  sub_10007AE0C();
  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109120;
    *(v70 + 4) = v50 & 1;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v70, 8u);
  }

  v40(v67, v41);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v71 = qword_1000A23D0;
  v72 = v100;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v74 = sub_10007B29C().super.isa;
    v75 = swift_allocObject();
    v76 = v103;
    *(v75 + 16) = sub_100046368;
    *(v75 + 24) = v76;
    aBlock[4] = sub_100046430;
    aBlock[5] = v75;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097360;
    v77 = _Block_copy(aBlock);

    [v71 addParticipantsToShareWithURLWrapper:v72 share:v97 emailAddresses:isa phoneNumbers:v74 permissionType:v58 allowOthersToInvite:v50 & 1 withReply:v77];
    _Block_release(v77);

    swift_unknownObjectRelease();
  }

  else
  {
    v78 = sub_10007AC4C();
    v79 = *(v78 - 8);
    v80 = v95;
    (*(v79 + 56))(v95, 1, 1, v78);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v81 = v90;
    v82 = v93;
    sub_10007AB6C();
    v83 = sub_10007AA1C();
    (*(v92 + 8))(v81, v82);
    v84 = v94;
    sub_1000187C8(v80, v94, &unk_10009ED10, &qword_10007D310);
    v86 = 0;
    if ((*(v79 + 48))(v84, 1, v78) != 1)
    {
      sub_10007ABFC(v85);
      v86 = v87;
      (*(v79 + 8))(v84, v78);
    }

    v88 = sub_10007AB7C();
    v96[2](v96, v86, 0, v88);

    sub_100008824(v80, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100041614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(const void *, void *, void, void *))
{
  v93 = a5;
  v98 = a4;
  v91 = a2;
  v9 = sub_10007AA3C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v85[1] = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  __chkstk_darwin(v12);
  v85[0] = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v88 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v92 = v85 - v19;
  v20 = sub_10007AE2C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v95 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = v85 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v85 - v29;
  __chkstk_darwin(v28);
  v32 = v85 - v31;
  v94 = swift_allocObject();
  *(v94 + 16) = a6;
  v89 = a6;
  _Block_copy(a6);
  sub_10007AE0C();
  v33 = a1;
  v34 = sub_10007AE1C();
  v35 = sub_10007B41C();

  v36 = os_log_type_enabled(v34, v35);
  v96 = v20;
  v97 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v33;
    *v38 = v33;
    v39 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "callForAddParticipantsToShare urlWrapper: %@", v37, 0xCu);
    sub_100008824(v38, &qword_10009F570, &qword_10007DAF0);

    v20 = v96;
  }

  v90 = v33;

  v40 = *(v21 + 8);
  v40(v32, v20);
  sub_10007AE0C();

  v41 = sub_10007AE1C();
  v42 = sub_10007B3DC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = sub_10007B2BC();
    v47 = sub_100037C08(v45, v46, aBlock);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "callForAddParticipantsToShare emailAddresses: %s", v43, 0xCu);
    sub_10000585C(v44);
    v20 = v96;
  }

  v40(v30, v20);
  sub_10007AE0C();

  v48 = sub_10007AE1C();
  v49 = sub_10007B3DC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v52 = sub_10007B2BC();
    v54 = sub_100037C08(v52, v53, aBlock);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "callForAddParticipantsToShare phoneNumbers: %s", v50, 0xCu);
    sub_10000585C(v51);
    v20 = v96;
  }

  v40(v27, v20);
  v55 = v95;
  sub_10007AE0C();

  v56 = sub_10007AE1C();
  v57 = sub_10007B3DC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = v20;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v58 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v61 = sub_10007B2BC();
    v63 = sub_100037C08(v61, v62, aBlock);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "callForAddParticipantsToShare optionsGroups: %s", v58, 0xCu);
    sub_10000585C(v60);

    v64 = v95;
    v65 = v59;
  }

  else
  {

    v64 = v55;
    v65 = v20;
  }

  v40(v64, v65);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v66 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v68 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v69 = sub_10007B29C().super.isa;
    v70 = swift_allocObject();
    v71 = v94;
    *(v70 + 16) = sub_100046368;
    *(v70 + 24) = v71;
    aBlock[4] = sub_100046430;
    aBlock[5] = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000972E8;
    v72 = _Block_copy(aBlock);

    [v66 addParticipantsToShareWithURLWrapper:v90 share:v91 emailAddresses:isa phoneNumbers:v68 optionsGroups:v69 withReply:v72];
    _Block_release(v72);

    swift_unknownObjectRelease();
  }

  else
  {
    v73 = sub_10007AC4C();
    v74 = *(v73 - 8);
    v75 = v92;
    (*(v74 + 56))(v92, 1, 1, v73);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v76 = v85[0];
    v77 = v87;
    sub_10007AB6C();
    v78 = sub_10007AA1C();
    (*(v86 + 8))(v76, v77);
    v79 = v75;
    v80 = v88;
    sub_1000187C8(v79, v88, &unk_10009ED10, &qword_10007D310);
    v82 = 0;
    if ((*(v74 + 48))(v80, 1, v73) != 1)
    {
      sub_10007ABFC(v81);
      v82 = v83;
      (*(v74 + 8))(v80, v73);
    }

    v84 = sub_10007AB7C();
    v89[2](v89, v82, 0, v84);

    sub_100008824(v92, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10004202C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v109 = a6;
  v110 = a5;
  v112 = a3;
  v108 = a2;
  v10 = sub_10007AA3C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v98 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10007AA4C();
  v99 = *(v100 - 8);
  v13 = *(v99 + 64);
  __chkstk_darwin(v100);
  v97 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v101 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v96 - v19;
  v20 = sub_10007AE2C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v106 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v105 = &v96 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v96 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v96 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v96 - v34;
  __chkstk_darwin(v33);
  v37 = &v96 - v36;
  v107 = swift_allocObject();
  *(v107 + 16) = a7;
  v103 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v38 = a1;
  v39 = sub_10007AE1C();
  v40 = sub_10007B41C();

  v41 = os_log_type_enabled(v39, v40);
  v111 = a4;
  v113 = v20;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v38;
    *v43 = v38;
    v44 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForAddParticipantsToShare share: %@", v42, 0xCu);
    sub_100008824(v43, &qword_10009F570, &qword_10007DAF0);

    v20 = v113;
  }

  v104 = v38;

  v45 = *(v21 + 8);
  v45(v37, v20);
  sub_10007AE0C();
  v46 = v108;
  v47 = sub_10007AE1C();
  v48 = sub_10007B41C();
  v108 = v46;

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = v108;
    *(v49 + 4) = v108;
    *v50 = v51;
    v52 = v51;
    _os_log_impl(&_mh_execute_header, v47, v48, "callForAddParticipantsToShare containerSetupInfo: %@", v49, 0xCu);
    sub_100008824(v50, &qword_10009F570, &qword_10007DAF0);

    v20 = v113;
  }

  v45(v35, v20);
  sub_10007AE0C();

  v53 = sub_10007AE1C();
  v54 = sub_10007B3DC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = sub_10007B2BC();
    v59 = sub_100037C08(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v53, v54, "callForAddParticipantsToShare emailAddresses: %s", v55, 0xCu);
    sub_10000585C(v56);
    v20 = v113;
  }

  v45(v32, v20);
  sub_10007AE0C();

  v60 = sub_10007AE1C();
  v61 = sub_10007B3DC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = sub_10007B2BC();
    v66 = sub_100037C08(v64, v65, aBlock);
    v20 = v113;

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "callForAddParticipantsToShare phoneNumbers: %s", v62, 0xCu);
    sub_10000585C(v63);
  }

  v45(v29, v20);
  v67 = v105;
  sub_10007AE0C();
  v68 = sub_10007AE1C();
  v69 = sub_10007B3DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 136315138;
    v114 = v110;
    aBlock[0] = v71;
    type metadata accessor for ParticipantPermission(0);
    v72 = sub_10007B1AC();
    v74 = sub_100037C08(v72, v73, aBlock);

    *(v70 + 4) = v74;
    v20 = v113;
    _os_log_impl(&_mh_execute_header, v68, v69, "callForAddParticipantsToShare permissionType: %s", v70, 0xCu);
    sub_10000585C(v71);
  }

  v45(v67, v20);
  v75 = v106;
  sub_10007AE0C();
  v76 = sub_10007AE1C();
  v77 = sub_10007B3DC();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 67109120;
    *(v78 + 4) = v109 & 1;
    _os_log_impl(&_mh_execute_header, v76, v77, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v78, 8u);
  }

  v45(v75, v20);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v79 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v81 = sub_10007B29C().super.isa;
    v82 = swift_allocObject();
    v83 = v107;
    *(v82 + 16) = sub_100046368;
    *(v82 + 24) = v83;
    aBlock[4] = sub_100046430;
    aBlock[5] = v82;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097270;
    v84 = _Block_copy(aBlock);

    [v79 addParticipantsToShare:v104 containerSetupInfo:v108 emailAddresses:isa phoneNumbers:v81 permissionType:v110 allowOthersToInvite:v109 & 1 withReply:v84];
    _Block_release(v84);

    swift_unknownObjectRelease();
  }

  else
  {
    v85 = sub_10007AC4C();
    v86 = *(v85 - 8);
    v87 = v102;
    (*(v86 + 56))(v102, 1, 1, v85);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v88 = v97;
    v89 = v100;
    sub_10007AB6C();
    v90 = sub_10007AA1C();
    (*(v99 + 8))(v88, v89);
    v91 = v101;
    sub_1000187C8(v87, v101, &unk_10009ED10, &qword_10007D310);
    v93 = 0;
    if ((*(v86 + 48))(v91, 1, v85) != 1)
    {
      sub_10007ABFC(v92);
      v93 = v94;
      (*(v86 + 8))(v91, v85);
    }

    v95 = sub_10007AB7C();
    v103[2](v103, v93, 0, v95);

    sub_100008824(v87, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_100042C00(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(const void *, void *, void, void *))
{
  v110 = a5;
  v113 = a3;
  v114 = a4;
  v9 = sub_10007AA3C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v101 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AA4C();
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  __chkstk_darwin(v12);
  v100 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v104 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v107 = &v99 - v19;
  v115 = sub_10007AE2C();
  v20 = *(v115 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v115);
  v112 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v99 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v99 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v99 - v31;
  __chkstk_darwin(v30);
  v34 = &v99 - v33;
  v111 = swift_allocObject();
  *(v111 + 16) = a6;
  v105 = a6;
  _Block_copy(a6);
  sub_10007AE0C();
  v35 = a1;
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v109 = v29;
    v40 = v20;
    v41 = a2;
    v42 = v39;
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v43 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForAddParticipantsToShare share: %@", v38, 0xCu);
    sub_100008824(v42, &qword_10009F570, &qword_10007DAF0);
    a2 = v41;
    v20 = v40;
    v29 = v109;
  }

  v108 = v26;
  v106 = v35;

  v44 = *(v20 + 8);
  v45 = v115;
  v44(v34, v115);
  sub_10007AE0C();
  v46 = a2;
  v47 = sub_10007AE1C();
  v48 = sub_10007B41C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "callForAddParticipantsToShare containerSetupInfo: %@", v49, 0xCu);
    sub_100008824(v50, &qword_10009F570, &qword_10007DAF0);

    v45 = v115;
  }

  v44(v32, v45);
  sub_10007AE0C();

  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();

  v54 = os_log_type_enabled(v52, v53);
  v109 = v46;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = sub_10007B2BC();
    v59 = sub_100037C08(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "callForAddParticipantsToShare emailAddresses: %s", v55, 0xCu);
    sub_10000585C(v56);
    v45 = v115;
  }

  v44(v29, v45);
  v60 = v108;
  sub_10007AE0C();

  v61 = sub_10007AE1C();
  v62 = sub_10007B3DC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = 136315138;
    v65 = sub_10007B2BC();
    v67 = sub_100037C08(v65, v66, aBlock);

    *(v63 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v61, v62, "callForAddParticipantsToShare phoneNumbers: %s", v63, 0xCu);
    sub_10000585C(v64);
    v45 = v115;
  }

  v44(v60, v45);
  v68 = v112;
  sub_10007AE0C();

  v69 = sub_10007AE1C();
  v70 = sub_10007B3DC();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v45;
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v71 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v74 = sub_10007B2BC();
    v76 = sub_100037C08(v74, v75, aBlock);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "callForAddParticipantsToShare optionsGroups: %s", v71, 0xCu);
    sub_10000585C(v73);

    v77 = v112;
    v78 = v72;
  }

  else
  {

    v77 = v68;
    v78 = v45;
  }

  v44(v77, v78);
  v79 = v109;
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v80 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    isa = sub_10007B29C().super.isa;
    v82 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v83 = sub_10007B29C().super.isa;
    v84 = swift_allocObject();
    v85 = v111;
    *(v84 + 16) = sub_100046368;
    *(v84 + 24) = v85;
    aBlock[4] = sub_100046430;
    aBlock[5] = v84;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_1000971F8;
    v86 = _Block_copy(aBlock);

    [v80 addParticipantsToShare:v106 containerSetupInfo:v79 emailAddresses:isa phoneNumbers:v82 optionsGroups:v83 withReply:v86];
    _Block_release(v86);

    swift_unknownObjectRelease();
  }

  else
  {
    v87 = sub_10007AC4C();
    v88 = *(v87 - 8);
    v89 = v107;
    (*(v88 + 56))(v107, 1, 1, v87);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v90 = v100;
    v91 = v103;
    sub_10007AB6C();
    v92 = sub_10007AA1C();
    (*(v102 + 8))(v90, v91);
    v93 = v89;
    v94 = v104;
    sub_1000187C8(v93, v104, &unk_10009ED10, &qword_10007D310);
    v96 = 0;
    if ((*(v88 + 48))(v94, 1, v87) != 1)
    {
      sub_10007ABFC(v95);
      v96 = v97;
      (*(v88 + 8))(v94, v87);
    }

    v98 = sub_10007AB7C();
    v105[2](v105, v96, 0, v98);

    sub_100008824(v107, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10004374C(uint64_t a1, void (**a2)(void, void, void, void))
{
  v4 = sub_10007AA3C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007AA4C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  __chkstk_darwin(v7);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v68 = &v59 - v15;
  v16 = __chkstk_darwin(v14);
  v62 = &v59 - v17;
  __chkstk_darwin(v16);
  v67 = &v59 - v18;
  v19 = sub_10007AC4C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007AE2C();
  v71 = *(v24 - 8);
  v25 = *(v71 + 64);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  _Block_copy(a2);
  sub_10007AE0C();
  v29 = *(v20 + 16);
  v72 = a1;
  v29(v23, a1, v19);
  v30 = sub_10007AE1C();
  v31 = sub_10007B41C();
  v32 = os_log_type_enabled(v30, v31);
  v70 = v19;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v69 = v20;
    v34 = v33;
    v35 = swift_slowAlloc();
    v60 = a2;
    v36 = v35;
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v37 = sub_10007B69C();
    v38 = v19;
    v39 = v28;
    v41 = v40;
    v59 = v24;
    v42 = *(v69 + 8);
    v42(v23, v38);
    v43 = sub_100037C08(v37, v41, aBlock);
    v28 = v39;

    *(v34 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "callForExistingShareForFile url: %s", v34, 0xCu);
    sub_10000585C(v36);
    a2 = v60;

    v20 = v69;

    v44 = v42;
    (*(v71 + 8))(v27, v59);
  }

  else
  {

    v44 = *(v20 + 8);
    v44(v23, v19);
    (*(v71 + 8))(v27, v24);
  }

  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v45 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    v54 = sub_10007AB9C();
    sub_10007ACAC();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_100046368;
    *(v57 + 24) = v28;
    aBlock[4] = sub_100046430;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097180;
    v58 = _Block_copy(aBlock);

    [v45 existingShareForFileWithURLWrapper:v54 withReply:v58];

    _Block_release(v58);

    swift_unknownObjectRelease();
  }

  else
  {
    v46 = v67;
    v47 = v70;
    (*(v20 + 56))(v67, 1, 1, v70);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v48 = v63;
    v49 = v66;
    sub_10007AB6C();
    v50 = sub_10007AA1C();
    (*(v65 + 8))(v48, v49);
    v51 = v62;
    sub_1000187C8(v46, v62, &unk_10009ED10, &qword_10007D310);
    if ((*(v20 + 48))(v51, 1, v47) == 1)
    {
      v53 = 0;
    }

    else
    {
      sub_10007ABFC(v52);
      v53 = v55;
      v44(v51, v47);
    }

    v56 = sub_10007AB7C();
    (a2)[2](a2, v53, 0, v56);

    sub_100008824(v46, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_10004406C(uint64_t a1, void *a2, const void *a3)
{
  v6 = sub_10007AA3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007AA4C();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  v75 = v12;
  v76 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v74 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v16 = *(*(v69 - 8) + 64);
  v17 = __chkstk_darwin(v69);
  v73 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v63 - v20;
  __chkstk_darwin(v19);
  v23 = &v63 - v22;
  v24 = sub_10007AE2C();
  v71 = *(v24 - 8);
  v25 = *(v71 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v63 - v29;
  v72 = swift_allocObject();
  *(v72 + 16) = a3;
  v68 = a3;
  _Block_copy(a3);
  sub_10007AE0C();
  v70 = a1;
  sub_1000187C8(a1, v23, &unk_10009ED10, &qword_10007D310);
  v31 = sub_10007AE1C();
  v32 = sub_10007B41C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v63 = v28;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_1000187C8(v23, v21, &unk_10009ED10, &qword_10007D310);
    v36 = sub_10007B1AC();
    v37 = a2;
    v38 = v24;
    v39 = v37;
    v41 = v40;
    sub_100008824(v23, &unk_10009ED10, &qword_10007D310);
    v42 = sub_100037C08(v36, v41, aBlock);
    v43 = v39;
    v24 = v38;
    a2 = v43;

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "callForUserNameAndEmail url: %s", v34, 0xCu);
    sub_10000585C(v35);

    v28 = v63;
  }

  else
  {

    sub_100008824(v23, &unk_10009ED10, &qword_10007D310);
  }

  v44 = *(v71 + 8);
  v44(v30, v24);
  sub_10007AE0C();
  v45 = a2;
  v46 = sub_10007AE1C();
  v47 = sub_10007B41C();

  v48 = os_log_type_enabled(v46, v47);
  v49 = v76;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v45;
    *v51 = a2;
    v52 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "callForUserNameAndEmail containerSetupInfo: %@", v50, 0xCu);
    sub_100008824(v51, &qword_10009F570, &qword_10007DAF0);

    v49 = v76;
  }

  v44(v28, v24);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v53 = qword_1000A23D0;
  v54 = v73;
  v55 = v74;
  if (qword_1000A23D0)
  {
    sub_1000187C8(v70, v73, &unk_10009ED10, &qword_10007D310);
    if ((*(v49 + 48))(v54, 1, v75) == 1)
    {
      swift_unknownObjectRetain();
      sub_100008824(v54, &unk_10009ED10, &qword_10007D310);
      v56 = 0;
    }

    else
    {
      (*(v49 + 32))(v55, v54, v75);
      swift_unknownObjectRetain();
      v56 = sub_10007AB9C();
      sub_10007ACAC();
      (*(v49 + 8))(v55, v75);
    }

    v60 = swift_allocObject();
    v61 = v72;
    *(v60 + 16) = sub_100046154;
    *(v60 + 24) = v61;
    aBlock[4] = sub_100046434;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035D58;
    aBlock[3] = &unk_100097108;
    v62 = _Block_copy(aBlock);

    [v53 userNameAndEmailWithURLWrapper:v56 containerSetupInfo:v45 withReply:v62];

    _Block_release(v62);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v57 = v64;
    v58 = v67;
    sub_10007AB6C();
    v59 = sub_10007AA1C();
    (*(v66 + 8))(v57, v58);
    v56 = sub_10007AB7C();
    (*(v68 + 2))(v68, 0, 0, v56);
  }
}

void sub_100044994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v122 = a5;
  v113 = a4;
  v119 = a3;
  v11 = sub_10007AA3C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v106 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10007AA4C();
  v108 = *(v109 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v109);
  v105 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v107 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = &v102 - v20;
  v21 = sub_10007AC4C();
  v22 = *(v21 - 8);
  v23 = v22[8];
  __chkstk_darwin(v21);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10007AE2C();
  v124 = *(v26 - 8);
  v125 = v26;
  v27 = *(v124 + 64);
  v28 = __chkstk_darwin(v26);
  v117 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v116 = &v102 - v31;
  v32 = __chkstk_darwin(v30);
  v115 = &v102 - v33;
  v34 = __chkstk_darwin(v32);
  v114 = &v102 - v35;
  __chkstk_darwin(v34);
  v37 = &v102 - v36;
  v120 = swift_allocObject();
  *(v120 + 16) = a7;
  v111 = a7;
  _Block_copy(a7);
  sub_10007AE0C();
  v38 = v22[2];
  v112 = a1;
  v38(v25, a1, v21);
  v39 = sub_10007AE1C();
  v40 = sub_10007B41C();
  v41 = os_log_type_enabled(v39, v40);
  v123 = a2;
  v121 = a6;
  v118 = v21;
  v104 = v22;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v44 = sub_10007B69C();
    v46 = v45;
    v103 = v22[1];
    v103(v25, v21);
    v47 = sub_100037C08(v44, v46, aBlock);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "callForForciblyShareFolder folderURL: %s", v42, 0xCu);
    sub_10000585C(v43);
  }

  else
  {

    v103 = v22[1];
    v103(v25, v21);
  }

  v48 = *(v124 + 8);
  v49 = v37;
  v50 = v125;
  v48(v49, v125);
  v51 = v114;
  sub_10007AE0C();

  v52 = sub_10007AE1C();
  v53 = sub_10007B3DC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_10007B2BC();
    v58 = sub_100037C08(v56, v57, aBlock);

    *(v54 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v52, v53, "callForForciblyShareFolder emailAddresses: %s", v54, 0xCu);
    sub_10000585C(v55);
    v50 = v125;
  }

  v48(v51, v50);
  v59 = v115;
  sub_10007AE0C();

  v60 = sub_10007AE1C();
  v61 = sub_10007B3DC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    v64 = sub_10007B2BC();
    v66 = sub_100037C08(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "callForForciblyShareFolder phoneNumbers: %s", v62, 0xCu);
    sub_10000585C(v63);
    v50 = v125;
  }

  v48(v59, v50);
  v67 = v122;
  v68 = v116;
  sub_10007AE0C();
  v69 = sub_10007AE1C();
  v70 = sub_10007B3DC();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v126 = v67;
    aBlock[0] = v72;
    *v71 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v73 = sub_10007B1AC();
    v75 = sub_100037C08(v73, v74, aBlock);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "callForForciblyShareFolder permissionType: %s", v71, 0xCu);
    sub_10000585C(v72);
    v50 = v125;
  }

  v48(v68, v50);
  v76 = v117;
  sub_10007AE0C();
  v77 = sub_10007AE1C();
  v78 = sub_10007B3DC();
  v79 = os_log_type_enabled(v77, v78);
  v80 = v121;
  if (v79)
  {
    v81 = swift_slowAlloc();
    *v81 = 67109120;
    *(v81 + 4) = v80 & 1;
    _os_log_impl(&_mh_execute_header, v77, v78, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v81, 8u);
  }

  v48(v76, v50);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v82 = qword_1000A23D0;
  v83 = v118;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v84);
    v86 = v85;
    isa = sub_10007B29C().super.isa;
    v88 = sub_10007B29C().super.isa;
    v89 = swift_allocObject();
    v90 = v120;
    *(v89 + 16) = sub_100046368;
    *(v89 + 24) = v90;
    aBlock[4] = sub_100046430;
    aBlock[5] = v89;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097090;
    v91 = _Block_copy(aBlock);

    [v82 forciblyShareFolder:v86 emailAddresses:isa phoneNumbers:v88 accessType:v113 permissionType:v67 allowOthersToInvite:v80 & 1 withReply:v91];
    _Block_release(v91);

    swift_unknownObjectRelease();
  }

  else
  {
    v92 = v104;
    v93 = v110;
    (v104[7])(v110, 1, 1, v118);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v94 = v105;
    v95 = v109;
    sub_10007AB6C();
    v96 = sub_10007AA1C();
    (*(v108 + 8))(v94, v95);
    v97 = v107;
    sub_1000187C8(v93, v107, &unk_10009ED10, &qword_10007D310);
    if ((v92[6])(v97, 1, v83) == 1)
    {
      v99 = 0;
    }

    else
    {
      sub_10007ABFC(v98);
      v99 = v100;
      v103(v97, v83);
    }

    v101 = sub_10007AB7C();
    v111[2](v111, v99, 0, v101);

    sub_100008824(v93, &unk_10009ED10, &qword_10007D310);
  }
}

void sub_1000455A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(const void *, void *, void, void *))
{
  v109 = a3;
  v115 = a2;
  v8 = sub_10007AA3C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007AA4C();
  v103 = *(v11 - 8);
  v104 = v11;
  v12 = *(v103 + 64);
  __chkstk_darwin(v11);
  v100 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v102 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v97 - v18;
  v19 = sub_10007AC4C();
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007AE2C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v113 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v112 = &v97 - v30;
  v31 = __chkstk_darwin(v29);
  v108 = &v97 - v32;
  __chkstk_darwin(v31);
  v34 = &v97 - v33;
  v111 = swift_allocObject();
  *(v111 + 16) = a5;
  v105 = a5;
  _Block_copy(a5);
  sub_10007AE0C();
  v35 = v20[2];
  v106 = a1;
  v35(v23, a1, v19);
  v36 = sub_10007AE1C();
  v37 = sub_10007B41C();
  v38 = os_log_type_enabled(v36, v37);
  v114 = v25;
  v110 = a4;
  v99 = v19;
  v98 = v20;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    sub_100038358(&qword_10009EB10, &type metadata accessor for URL);
    v41 = sub_10007B69C();
    v42 = v19;
    v44 = v43;
    v97 = v20[1];
    v97(v23, v42);
    v45 = sub_100037C08(v41, v44, aBlock);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "callForForciblyShareFolder folderURL: %s", v39, 0xCu);
    sub_10000585C(v40);

    v25 = v114;
  }

  else
  {

    v97 = v20[1];
    v97(v23, v19);
  }

  v46 = *(v25 + 8);
  v46(v34, v24);
  v47 = v24;
  v48 = v108;
  sub_10007AE0C();

  v49 = sub_10007AE1C();
  v50 = sub_10007B3DC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    *v51 = 136315138;
    v53 = sub_10007B2BC();
    v55 = sub_100037C08(v53, v54, aBlock);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "callForForciblyShareFolder emailAddresses: %s", v51, 0xCu);
    sub_10000585C(v52);
  }

  v46(v48, v47);
  v56 = v112;
  sub_10007AE0C();

  v57 = sub_10007AE1C();
  v58 = sub_10007B3DC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315138;
    v61 = sub_10007B2BC();
    v63 = sub_100037C08(v61, v62, aBlock);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "callForForciblyShareFolder phoneNumbers: %s", v59, 0xCu);
    sub_10000585C(v60);

    v64 = v112;
  }

  else
  {

    v64 = v56;
  }

  v65 = v47;
  v46(v64, v47);
  v66 = v113;
  sub_10007AE0C();

  v67 = sub_10007AE1C();
  v68 = sub_10007B3DC();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v69 = 136315138;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v71 = sub_10007B2BC();
    v73 = sub_100037C08(v71, v72, aBlock);

    *(v69 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v67, v68, "callForAddParticipantsToShare optionsGroups: %s", v69, 0xCu);
    sub_10000585C(v70);

    v74 = v113;
  }

  else
  {

    v74 = v66;
  }

  v46(v74, v65);
  if (qword_10009DF50 != -1)
  {
    swift_once();
  }

  v75 = qword_1000A23D0;
  if (qword_1000A23D0)
  {
    swift_unknownObjectRetain();
    sub_10007ABFC(v76);
    v78 = v77;
    isa = sub_10007B29C().super.isa;
    v80 = sub_10007B29C().super.isa;
    sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
    v81 = sub_10007B29C().super.isa;
    v82 = swift_allocObject();
    v83 = v111;
    *(v82 + 16) = sub_10004614C;
    *(v82 + 24) = v83;
    aBlock[4] = sub_100046430;
    aBlock[5] = v82;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002AAC0;
    aBlock[3] = &unk_100097018;
    v84 = _Block_copy(aBlock);

    [v75 forciblyShareFolder:v78 emailAddresses:isa phoneNumbers:v80 optionsGroups:v81 withReply:v84];
    _Block_release(v84);

    swift_unknownObjectRelease();
  }

  else
  {
    v85 = v98;
    v86 = v107;
    v87 = v99;
    (v98[7])(v107, 1, 1, v99);
    sub_10007AA2C();
    sub_1000381B0(_swiftEmptyArrayStorage);
    sub_100038358(&qword_10009E938, &type metadata accessor for CocoaError);
    v88 = v100;
    v89 = v104;
    sub_10007AB6C();
    v90 = sub_10007AA1C();
    (*(v103 + 8))(v88, v89);
    v91 = v86;
    v92 = v102;
    sub_1000187C8(v91, v102, &unk_10009ED10, &qword_10007D310);
    if ((v85[6])(v92, 1, v87) == 1)
    {
      v94 = 0;
    }

    else
    {
      sub_10007ABFC(v93);
      v94 = v95;
      v97(v92, v87);
    }

    v96 = sub_10007AB7C();
    v105[2](v105, v94, 0, v96);

    sub_100008824(v107, &unk_10009ED10, &qword_10007D310);
  }
}

uint64_t sub_100046114()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004643C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 40;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v7 = *(v5 - 1);
        v8 = *v5;

        v9 = sub_100047128(v7, v8, 0x20uLL);
        if (v9)
        {
          break;
        }

        if (sub_100047128(v7, v8, 0x800uLL))
        {
          goto LABEL_13;
        }

        ++v6;
        v5 += 2;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      v10 = sub_100046618();
      if (*(v10 + 2))
      {
        v7 = *(v10 + 4);
        v11 = *(v10 + 5);

        v8 = v11;
      }

      else
      {
      }

LABEL_13:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10004700C(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        result = sub_10004700C((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[24 * v13];
      *(v14 + 4) = v7;
      *(v14 + 5) = v8;
      v14[48] = (v9 ^ 1) & 1;
    }

    while (v2 != v1);
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

char *sub_100046618()
{
  v0 = sub_10007AE2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v22 = sub_10007B15C();
  v2 = objc_allocWithZone(NSRegularExpression);
  v3 = sub_100046F30(0xD00000000000002FLL, 0x8000000100081DC0, 1);
  v4 = sub_10007B1FC();
  v5 = sub_10007B15C();
  v6 = [v3 matchesInString:v5 options:1 range:{0, v4}];

  sub_1000474A0();
  v7 = sub_10007B2AC();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v8 = sub_10007B64C();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_100027E0C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = sub_10007B5DC();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 range];
      v15 = [v22 substringWithRange:{v13, v14}];
      v16 = sub_10007B19C();
      v18 = v17;

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_100027E0C((v19 > 1), v20 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
    }

    while (v8 != v10);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100046A78(void **a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10007AE2C();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = *a1;
  if (a2)
  {
    v25 = [v24 URL];
    if (v25)
    {
      v26 = v25;
      sub_10007AC1C();

      v27 = sub_10007AC4C();
      (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
    }

    else
    {
      v27 = sub_10007AC4C();
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
    }

    sub_100018608(v21, v23);
    sub_10007AC4C();
    v37 = *(v27 - 8);
    if ((*(v37 + 48))(v23, 1, v27) == 1)
    {
      sub_1000474EC(v23);
      LOBYTE(v23) = 0;
    }

    else
    {
      v38 = sub_10007AC3C();
      v40 = v39;
      (*(v37 + 8))(v23, v27);
      if (v40)
      {
        if (v38 == 0x6F746C69616DLL && v40 == 0xE600000000000000)
        {

          LOBYTE(v23) = 1;
        }

        else
        {
          LOBYTE(v23) = sub_10007B6BC();
        }
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    sub_10007AE0C();
    v42 = sub_10007AE1C();
    v43 = sub_10007B41C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v23 & 1;
      _os_log_impl(&_mh_execute_header, v42, v43, "isValid(address...) is link, valid email: %{BOOL}d", v44, 8u);
    }

    (*(v46 + 8))(v16, v47);
  }

  else
  {
    LODWORD(v23) = [v24 range] == a3 && v28 == a4;
    sub_10007AE0C();
    v30 = sub_10007AE1C();
    v31 = sub_10007B41C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315394;
      v48 = a5;
      type metadata accessor for CheckingType(0);
      v34 = sub_10007B1AC();
      v36 = sub_100037C08(v34, v35, &v49);

      *(v32 + 4) = v36;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v30, v31, "isValid(address...) is %s, valid: %{BOOL}d", v32, 0x12u);
      sub_10000585C(v33);
    }

    (*(v46 + 8))(v14, v47);
  }

  return v23 & 1;
}

id sub_100046F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007B15C();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10007AB8C();

    swift_willThrow();
  }

  return v6;
}

char *sub_10004700C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000057A0(&qword_10009E988, &unk_10007E638);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100047128(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10007B23C();
  v40 = 0;
  v7 = [objc_allocWithZone(NSDataDetector) initWithTypes:a3 error:&v40];
  if (v7)
  {
    v8 = v7;
    v9 = v40;
    v10 = sub_10007B15C();
    v36 = v8;
    v39 = v6;
    v11 = [v8 matchesInString:v10 options:0 range:{0, v6}];

    sub_1000474A0();
    v12 = sub_10007B2AC();

    v40 = _swiftEmptyArrayStorage;
    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007B64C())
    {
      v35 = a3;
      a3 = 0;
      v14 = v12 & 0xC000000000000001;
      v15 = v12 & 0xFFFFFFFFFFFFFF8;
      v16 = &stru_10009D000;
      v37 = v12 & 0xC000000000000001;
      v38 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v14)
        {
          v17 = sub_10007B5DC();
        }

        else
        {
          if (a3 >= *(v15 + 16))
          {
            goto LABEL_16;
          }

          v17 = *(v12 + 8 * a3 + 32);
        }

        v18 = v17;
        v19 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v17 *&v16[48].align];
        sub_10007B3CC();
        if (v20)
        {
        }

        else
        {
          sub_10007B5FC();
          v21 = v16;
          v22 = v12;
          v23 = a1;
          v24 = a2;
          v25 = v40[2];
          sub_10007B61C();
          a2 = v24;
          a1 = v23;
          v12 = v22;
          v16 = v21;
          sub_10007B62C();
          sub_10007B60C();
          v14 = v37;
          v15 = v38;
        }

        ++a3;
        if (v19 == i)
        {
          v26 = v40;
          a3 = v35;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_19:

    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      goto LABEL_34;
    }

    for (j = *(v26 + 16); j; j = sub_10007B64C())
    {
      v28 = 0;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = sub_10007B5DC();
        }

        else
        {
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_33;
          }

          v29 = *(v26 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v40 = v29;
        v32 = sub_100046A78(&v40, a3 == 32, 0, v39, a3);

        if (v32)
        {

          return 1;
        }

        ++v28;
        if (v31 == j)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  else
  {
    v34 = v40;
    sub_10007AB8C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000474A0()
{
  result = qword_10009E980;
  if (!qword_10009E980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E980);
  }

  return result;
}

uint64_t sub_1000474EC(uint64_t a1)
{
  v2 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100047568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007AC9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004763C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007AC9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100047718()
{
  sub_10007AC9C();
  if (v0 <= 0x3F)
  {
    sub_1000477EC();
    if (v1 <= 0x3F)
    {
      sub_100047BF8(319, &unk_10009EA00, type metadata accessor for AlertViewModelButton, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000477EC()
{
  if (!qword_10009E9F8)
  {
    v0 = sub_10007B55C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E9F8);
    }
  }
}

uint64_t sub_10004785C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000478A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007AC9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000057A0(&qword_10009EA38, &qword_10007E658);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000479F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10007AC9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000057A0(&qword_10009EA38, &qword_10007E658);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100047B24()
{
  sub_10007AC9C();
  if (v0 <= 0x3F)
  {
    sub_100047BF8(319, &qword_10009EAA8, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100047C5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100047BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100047C5C()
{
  if (!qword_10009EAB0)
  {
    sub_100004AD8(&unk_10009EAB8, qword_10007E678);
    v0 = sub_10007B55C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009EAB0);
    }
  }
}

unint64_t sub_100047CC0()
{
  result = qword_10009EAF0;
  if (!qword_10009EAF0)
  {
    sub_10007AC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EAF0);
  }

  return result;
}

uint64_t sub_100047D20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007AC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100047DB8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_10007B32C();
  v3[12] = sub_10007B31C();
  v5 = sub_10007B2EC();
  v3[13] = v5;
  v3[14] = v4;

  return _swift_task_switch(sub_100047E54, v5, v4);
}

uint64_t sub_100047E54()
{
  v1 = type metadata accessor for CloudKitOperations();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v0[15] = v4;
  v4[2] = 0xD000000000000021;
  v4[3] = 0x8000000100081B20;
  v4[4] = 0xD000000000000016;
  v4[5] = 0x8000000100081B50;
  v4[6] = 0xD00000000000001DLL;
  v4[7] = 0x8000000100081B70;
  v0[6] = 0;
  v0[5] = 0;
  sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  sub_10007AF0C();

  return _swift_task_switch(sub_100047F5C, 0, 0);
}

uint64_t sub_100047F5C()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = sub_1000057A0(&qword_10009F3D0, &qword_10007F458);
  *v6 = v0;
  v6[1] = sub_100048074;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x8000000100081100, sub_100068590, v4, v7);
}

uint64_t sub_100048074()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1000483E4;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100048190;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100048190()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return _swift_task_switch(sub_1000481B8, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_1000481B8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 24);
  if (v3)
  {
    v5 = v0[10];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v5;
    v6 = v5;

    sub_10007AF4C();
  }

  else
  {
    v7 = v0[20];

    v8 = v7;
    sub_100008A60(v7, 0);
  }

  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v12 = v0[15];
  v13 = v0[11];
  v14 = *(v13 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_ckMetadata);
  *(v13 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_ckMetadata) = v9;
  v15 = v9;

  v16 = *(v13 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v11;

  v17 = v11;
  sub_10007AF4C();
  swift_setDeallocating();
  v18 = *(v12 + 3);

  v19 = *(v12 + 5);

  v20 = *(v12 + 7);

  v21 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v22 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v22 - 8) + 8))(&v12[v21], v22);
  v23 = *(*v12 + 48);
  v24 = *(*v12 + 52);
  swift_deallocClassInstance();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000483E4()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100048448, v2, v3);
}

uint64_t sub_100048448()
{
  v1 = v0[15];
  v2 = v0[12];

  swift_setDeallocating();
  v3 = *(v1 + 3);

  v4 = *(v1 + 5);

  v5 = *(v1 + 7);

  v6 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v7 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);
  swift_deallocClassInstance();
  v10 = v0[1];
  v11 = v0[18];

  return v10();
}

uint64_t sub_100048564(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 220) = a2;
  *(v3 + 219) = a1;
  v4 = sub_10007AE2C();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_10007B32C();
  *(v3 + 88) = sub_10007B31C();
  v8 = sub_10007B2EC();
  *(v3 + 96) = v8;
  *(v3 + 104) = v7;

  return _swift_task_switch(sub_10004866C, v8, v7);
}

uint64_t sub_10004866C()
{
  v1 = *(*(v0 + 48) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v2 = *(v0 + 16);
  *(v0 + 112) = v2;
  if (!v2)
  {
    v16 = *(v0 + 88);

    sub_100005AB8();
    swift_allocError();
    *v17 = 0xD000000000000043;
    *(v17 + 8) = 0x80000001000824B0;
    *(v17 + 16) = xmmword_10007E710;
    *(v17 + 32) = 0x8000000100082500;
    *(v17 + 40) = 11;
    swift_willThrow();
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);

    v15 = *(v0 + 8);
LABEL_7:

    return v15();
  }

  v3 = *(*(v0 + 48) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(v0 + 216) == 1)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    sub_10007AE0C();
    v6 = sub_10007AE1C();
    v7 = sub_10007B41C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "addParticipantsToShare, doing nothing as we have a public share", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);

    v15 = *(v0 + 8);
    goto LABEL_7;
  }

  v21 = *(v0 + 48);
  *(v0 + 24) = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *(v0 + 32);
  *(v0 + 120) = result;
  v22 = *(result + 16);
  *(v0 + 128) = v22;
  if (v22)
  {
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 144) = 0;
    if (*(result + 16))
    {
      v23 = *(result + 32);
      *(v0 + 152) = v23;
      v24 = *(result + 40);
      *(v0 + 160) = v24;
      v25 = *(result + 48);
      *(v0 + 221) = v25;
      sub_100068244();
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      *v26 = v0;
      v26[1] = sub_100048BC8;
      v27 = *(v0 + 48);

      return sub_10005814C(v23, v24, v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v0 + 192) = _swiftEmptyArrayStorage;
    v28 = *(v0 + 112);
    v29 = *(v0 + 72);
    v30 = *(v0 + 48);
    v31 = *(v0 + 220);

    [v28 setAllowsAccessRequests:v31];
    sub_10007AE0C();

    v32 = sub_10007AE1C();
    v33 = sub_10007B41C();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 48);
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v37 = *(*(v0 + 40) + 16);

      *(v36 + 4) = v37;

      _os_log_impl(&_mh_execute_header, v32, v33, "addParticipantsToShare, adding %ld", v36, 0xCu);
    }

    else
    {
      v38 = *(v0 + 48);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v39[1] = sub_100049208;
    v40 = *(v0 + 48);

    return sub_100059058(_swiftEmptyArrayStorage, 1, 1);
  }

  return result;
}

uint64_t sub_100048BC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v4 + 221);
  v8 = *(v3 + 160);
  v9 = *(v3 + 152);
  if (v1)
  {
    v10 = *(v4 + 136);
    v11 = *(v4 + 120);
    sub_10006824C();

    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_1000493A0;
  }

  else
  {
    sub_10006824C();
    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_100048D38;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_100048D38()
{
  v1 = *(*(v0 + 48) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(v0 + 217) == 3)
  {
    v2 = 2;
  }

  else
  {
    v3 = *(*(v0 + 48) + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 218) > 1u)
    {
      if (*(v0 + 218) != 2)
      {
        sub_10007B63C();
        return;
      }

      v2 = 2;
    }

    else if (*(v0 + 218))
    {
      v2 = 3;
    }

    else
    {
      v2 = 1;
    }
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  v6 = *(v0 + 219);
  [v4 setPermission:v2];
  [v4 setRole:{sub_100058E7C(objc_msgSend(v4, "permission"), v6)}];
  v7 = v4;
  sub_10007B28C();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10007B2CC();
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 128);
  v10 = *(v0 + 144) + 1;
  sub_10007B2DC();

  v11 = *(v0 + 24);
  if (v10 == v9)
  {
    *(v0 + 192) = v11;
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    v16 = *(v0 + 220);

    [v13 setAllowsAccessRequests:v16];
    sub_10007AE0C();

    v17 = sub_10007AE1C();
    v18 = sub_10007B41C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 48);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v22 = *(*(v0 + 40) + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v17, v18, "addParticipantsToShare, adding %ld", v21, 0xCu);
    }

    else
    {
      v31 = *(v0 + 48);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v32 = swift_task_alloc();
    *(v0 + 200) = v32;
    *v32 = v0;
    v32[1] = sub_100049208;
    v33 = *(v0 + 48);

    sub_100059058(v11, 1, 1);
  }

  else
  {
    v23 = *(v0 + 144) + 1;
    *(v0 + 136) = v11;
    *(v0 + 144) = v23;
    v24 = *(v0 + 120);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = v24 + 24 * v23;
      v26 = *(v25 + 32);
      *(v0 + 152) = v26;
      v27 = *(v25 + 40);
      *(v0 + 160) = v27;
      v28 = *(v25 + 48);
      *(v0 + 221) = v28;
      sub_100068244();
      v29 = swift_task_alloc();
      *(v0 + 168) = v29;
      *v29 = v0;
      v29[1] = sub_100048BC8;
      v30 = *(v0 + 48);

      sub_10005814C(v26, v27, v28);
    }
  }
}

uint64_t sub_100049208()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_10004941C;
  }

  else
  {
    v7 = v2[24];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_100049324;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100049324()
{
  v1 = v0[14];
  v2 = v0[11];

  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000493A0()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[23];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004941C()
{
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[26];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000494A4(uint64_t a1, char a2, char a3)
{
  *(v4 + 217) = a3;
  *(v4 + 216) = a2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  v5 = sub_10007AE2C();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 88) = sub_10007B31C();
  v9 = sub_10007B2EC();
  *(v4 + 96) = v9;
  *(v4 + 104) = v8;

  return _swift_task_switch(sub_1000495A0, v9, v8);
}

uint64_t sub_1000495A0()
{
  v1 = *(*(v0 + 56) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v2 = *(v0 + 16);
  *(v0 + 112) = v2;
  if (v2)
  {
    if ([v2 publicPermission] == 1)
    {
      v3 = *(v0 + 56);
      *(v0 + 24) = _swiftEmptyArrayStorage;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      result = *(v0 + 32);
      *(v0 + 120) = result;
      v5 = *(result + 16);
      *(v0 + 128) = v5;
      if (v5)
      {
        *(v0 + 136) = _swiftEmptyArrayStorage;
        *(v0 + 144) = 0;
        if (*(result + 16))
        {
          v6 = *(result + 32);
          *(v0 + 152) = v6;
          v7 = *(result + 40);
          *(v0 + 160) = v7;
          v8 = *(result + 48);
          *(v0 + 218) = v8;
          sub_100068244();
          v9 = swift_task_alloc();
          *(v0 + 168) = v9;
          *v9 = v0;
          v9[1] = sub_1000499EC;
          v10 = *(v0 + 56);

          return sub_10005814C(v6, v7, v8);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        *(v0 + 192) = _swiftEmptyArrayStorage;
        v15 = *(v0 + 112);
        v16 = *(v0 + 80);
        v17 = *(v0 + 56);
        v18 = *(v0 + 217);

        [v15 setAllowsAccessRequests:v18];
        sub_10007AE0C();

        v19 = sub_10007AE1C();
        v20 = sub_10007B41C();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 56);
        if (v21)
        {
          v23 = swift_slowAlloc();
          *v23 = 134217984;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF3C();

          v24 = *(*(v0 + 40) + 16);

          *(v23 + 4) = v24;

          _os_log_impl(&_mh_execute_header, v19, v20, "addParticipantsToShareWithOptions, adding %ld", v23, 0xCu);
        }

        else
        {
          v25 = *(v0 + 56);
        }

        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        v26 = swift_task_alloc();
        *(v0 + 200) = v26;
        *v26 = v0;
        v26[1] = sub_100049ECC;
        v27 = *(v0 + 56);

        return sub_100059058(_swiftEmptyArrayStorage, 0, 1);
      }

      return result;
    }
  }

  v11 = *(v0 + 88);

  sub_100005AB8();
  swift_allocError();
  *v12 = 0xD00000000000005DLL;
  *(v12 + 8) = 0x8000000100082720;
  *(v12 + 16) = xmmword_10007E720;
  *(v12 + 32) = 0x8000000100082780;
  *(v12 + 40) = 11;
  swift_willThrow();
  v13 = *(v0 + 80);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000499EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v4 + 218);
  v8 = *(v3 + 160);
  v9 = *(v3 + 152);
  if (v1)
  {
    v10 = *(v4 + 136);
    v11 = *(v4 + 120);
    sub_10006824C();

    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_10004A05C;
  }

  else
  {
    sub_10006824C();
    v12 = *(v4 + 96);
    v13 = *(v4 + 104);
    v14 = sub_100049B5C;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_100049B5C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 216);
  v3 = *(v0 + 48);
  [v1 setPermission:v3];
  [v1 setRole:{sub_100058E7C(v3, v2)}];
  v4 = v1;
  sub_10007B28C();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v31 = *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_10007B2CC();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 144) + 1;
  sub_10007B2DC();

  v8 = *(v0 + 24);
  if (v7 == v6)
  {
    *(v0 + 192) = v8;
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(v0 + 217);

    [v10 setAllowsAccessRequests:v13];
    sub_10007AE0C();

    v14 = sub_10007AE1C();
    v15 = sub_10007B41C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 56);
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v19 = *(*(v0 + 40) + 16);

      *(v18 + 4) = v19;

      _os_log_impl(&_mh_execute_header, v14, v15, "addParticipantsToShareWithOptions, adding %ld", v18, 0xCu);
    }

    else
    {
      v28 = *(v0 + 56);
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v29 = swift_task_alloc();
    *(v0 + 200) = v29;
    *v29 = v0;
    v29[1] = sub_100049ECC;
    v30 = *(v0 + 56);

    sub_100059058(v8, 0, 1);
  }

  else
  {
    v20 = *(v0 + 144) + 1;
    *(v0 + 136) = v8;
    *(v0 + 144) = v20;
    v21 = *(v0 + 120);
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = v21 + 24 * v20;
      v23 = *(v22 + 32);
      *(v0 + 152) = v23;
      v24 = *(v22 + 40);
      *(v0 + 160) = v24;
      v25 = *(v22 + 48);
      *(v0 + 218) = v25;
      sub_100068244();
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      *v26 = v0;
      v26[1] = sub_1000499EC;
      v27 = *(v0 + 56);

      sub_10005814C(v23, v24, v25);
    }
  }
}

uint64_t sub_100049ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_10004A0D0;
  }

  else
  {
    v7 = v2[24];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_100049FE8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100049FE8()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004A05C()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[23];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004A0D0()
{
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[26];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004A150()
{
  v1[6] = v0;
  v2 = sub_10007AE2C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_10007B32C();
  v1[12] = sub_10007B31C();
  v7 = sub_10007B2EC();
  v1[13] = v7;
  v1[14] = v6;

  return _swift_task_switch(sub_10004A288, v7, v6);
}

uint64_t sub_10004A288()
{
  v38 = v0;
  v1 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 2;

  sub_10007AF4C();
  v2 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v3 = *(v0 + 16);
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v0 + 170) & 0xFE) == 8)
    {
      v6 = 0;
    }

    else
    {
      v10 = *(v0 + 48);
      v6 = sub_100021AB0();
    }

    *(v0 + 128) = v6;
    v28 = *(v0 + 48);
    v29 = sub_100069054();
    v31 = v30;
    v33 = v32;
    *(v0 + 136) = v30;
    v34 = swift_task_alloc();
    *(v0 + 144) = v34;
    *v34 = v0;
    v34[1] = sub_10004A75C;
    v35 = *(v0 + 88);

    return sub_100025984(v35, v3, v6, v29 & 0x101FFFFFFFFFFLL, v31, v33 & 0x101);
  }

  else
  {
    v7 = *(v0 + 96);

    sub_100005AB8();
    v8 = swift_allocError();
    *v9 = xmmword_10007E730;
    *(v9 + 16) = xmmword_10007E740;
    *(v9 + 32) = 0x8000000100082480;
    *(v9 + 40) = 11;
    swift_willThrow();
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_10007AF4C();
    sub_10007AE0C();
    swift_errorRetain();
    v13 = sub_10007AE1C();
    v14 = sub_10007B3FC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 64);
    v36 = *(v0 + 72);
    v17 = *(v0 + 56);
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      *(v0 + 24) = v8;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v20 = sub_10007B1AC();
      v22 = sub_100037C08(v20, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "saveShare error: %s", v18, 0xCu);
      sub_10000585C(v19);
    }

    (*(v16 + 8))(v36, v17);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    v25 = *(v0 + 72);
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10004A75C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = (*v2)[18];
  v6 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v7 = v3[17];
  v8 = v3[16];
  sub_100008824(v3[11], &unk_10009ED10, &qword_10007D310);

  v9 = v3[14];
  v10 = v3[13];
  if (v1)
  {
    v11 = sub_10004AC04;
  }

  else
  {
    v11 = sub_10004A904;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10004A904()
{
  v34 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v5 = *(v4 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  v6 = v1;
  sub_10007AF4C();
  sub_10007AE0C();
  v7 = v6;
  v8 = sub_10007AE1C();
  v9 = sub_10007B41C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 152);
    v32 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v0 + 40) = [v10 rootRecordID];
    sub_1000057A0(&unk_10009F3A0, &qword_10007F078);
    v15 = sub_10007B1AC();
    v17 = sub_100037C08(v15, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1026;
    v18 = [v10 allowsAccessRequests];

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "saveShare succeeded, rootRecordID: %s, share allowAccessRequests: %{BOOL,public}d", v13, 0x12u);
    sub_10000585C(v14);

    (*(v11 + 8))(v32, v12);
  }

  else
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);

    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 48);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 120);
  v26 = *(v0 + 80);
  v27 = *(v0 + 88);
  v28 = *(v0 + 72);
  v29 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 171) = 3;

  sub_10007AF4C();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10004AC04()
{
  v25 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 160);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = 0;

  sub_10007AF4C();
  sub_10007AE0C();
  swift_errorRetain();
  v6 = sub_10007AE1C();
  v7 = sub_10007B3FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v23 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 24) = v3;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v12 = sub_10007B1AC();
    v14 = sub_100037C08(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveShare error: %s", v10, 0xCu);
    sub_10000585C(v11);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);

    (*(v16 + 8))(v15, v17);
  }

  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v20 = *(v0 + 72);
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10004AE58(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  v2[95] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v5 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v6 = sub_10007AC4C();
  v2[106] = v6;
  v7 = *(v6 - 8);
  v2[107] = v7;
  v8 = *(v7 + 64) + 15;
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v9 = sub_10007AE2C();
  v2[111] = v9;
  v10 = *(v9 - 8);
  v2[112] = v10;
  v11 = *(v10 + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_10007B32C();
  v2[118] = sub_10007B31C();
  v13 = sub_10007B2EC();
  v2[119] = v13;
  v2[120] = v12;

  return _swift_task_switch(sub_10004B0CC, v13, v12);
}

uint64_t sub_10004B0CC()
{
  v96 = v0;
  v1 = *(v0 + 936);
  sub_10007AE0C();
  v2 = sub_10007AE1C();
  v3 = sub_10007B3DC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 936);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v95 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v95);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_10000585C(v9);
  }

  v10 = *(v6 + 8);
  v10(v5, v7);
  *(v0 + 968) = v10;
  v11 = *(v0 + 752);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 1012) & 0xFE) != 8)
  {
    v12 = *(v0 + 752);
    v13 = *(v12 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v14 = *(v0 + 696);
    if (v14)
    {
      v15 = [*(v0 + 696) URL];
      if (v15)
      {
        v16 = v15;
        v93 = v14;
        v17 = *(v0 + 944);
        v18 = *(v0 + 928);
        v19 = *(v0 + 880);
        v20 = *(v0 + 872);
        v21 = *(v0 + 856);
        v22 = *(v0 + 848);

        sub_10007AC1C();

        sub_10007AE0C();
        v90 = *(v21 + 16);
        v90(v20, v19, v22);
        v23 = sub_10007AE1C();
        v24 = sub_10007B3DC();
        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 928);
        v85 = *(v0 + 896);
        v27 = *(v0 + 888);
        v28 = *(v0 + 872);
        v29 = *(v0 + 856);
        v30 = *(v0 + 848);
        if (v25)
        {
          v83 = v12;
          v31 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *v31 = 136315394;
          *(v31 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v95);
          *(v31 + 12) = 2080;
          v79 = v27;
          v80 = v26;
          v32 = sub_10007ABDC();
          v34 = v33;
          v88 = *(v29 + 8);
          v88(v28, v30);
          v35 = sub_100037C08(v32, v34, &v95);

          *(v31 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v23, v24, "%s Found CKShare URL, replacing URL with: %s", v31, 0x16u);
          swift_arrayDestroy();

          v12 = v83;

          v37 = v79;
          v36 = v80;
        }

        else
        {

          v88 = *(v29 + 8);
          v88(v28, v30);
          v36 = v26;
          v37 = v27;
        }

        v10(v36, v37);
        v62 = *(v0 + 880);
        v63 = *(v0 + 856);
        v64 = *(v0 + 848);
        v65 = *(v0 + 840);
        v66 = *(v0 + 832);
        v67 = *(v12 + 24);
        v90(v65, v62, v64);
        (*(v63 + 56))(v65, 0, 1, v64);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000187C8(v65, v66, &unk_10009ED10, &qword_10007D310);

        sub_10007AF4C();

        sub_100008824(v65, &unk_10009ED10, &qword_10007D310);
        v88(v62, v64);
LABEL_20:
        v68 = *(v0 + 936);
        v69 = *(v0 + 928);
        v70 = *(v0 + 920);
        v71 = *(v0 + 912);
        v72 = *(v0 + 904);
        v73 = *(v0 + 880);
        v74 = *(v0 + 872);
        v75 = *(v0 + 864);
        v76 = *(v0 + 840);
        v81 = *(v0 + 832);
        v82 = *(v0 + 824);
        v84 = *(v0 + 816);
        v86 = *(v0 + 808);
        v87 = *(v0 + 800);
        v89 = *(v0 + 792);
        v91 = *(v0 + 784);
        v92 = *(v0 + 776);
        v94 = *(v0 + 768);
        sub_10005AA6C();

        v77 = *(v0 + 8);

        return v77();
      }
    }
  }

  v38 = *(v0 + 856);
  v39 = *(v0 + 848);
  v40 = *(v0 + 824);
  sub_1000187C8(*(v0 + 744), v40, &unk_10009ED10, &qword_10007D310);
  v41 = *(v38 + 48);
  *(v0 + 976) = v41;
  *(v0 + 984) = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v41(v40, 1, v39) == 1)
  {
    v42 = *(v0 + 944);
    v43 = *(v0 + 904);
    v44 = *(v0 + 824);

    sub_100008824(v44, &unk_10009ED10, &qword_10007D310);
    sub_10007AE0C();
    v45 = sub_10007AE1C();
    v46 = sub_10007B3FC();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 904);
    v49 = *(v0 + 896);
    v50 = *(v0 + 888);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v95 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v95);
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s Is not a CKShare nor is there a fileURL. This is a silent failure.", v51, 0xCu);
      sub_10000585C(v52);
    }

    v10(v48, v50);
    goto LABEL_20;
  }

  v53 = *(v0 + 920);
  (*(*(v0 + 856) + 32))(*(v0 + 864), *(v0 + 824), *(v0 + 848));
  sub_10007AE0C();
  v54 = sub_10007AE1C();
  v55 = sub_10007B3DC();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 920);
  v58 = *(v0 + 896);
  v59 = *(v0 + 888);
  if (v56)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v95 = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v95);
    _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s Copying sharing URL...", v60, 0xCu);
    sub_10000585C(v61);
  }

  v10(v57, v59);
  *(v0 + 1008) = *(*(v0 + 760) + 48);

  return _swift_task_switch(sub_10004B9D0, 0, 0);
}

uint64_t sub_10004B9D0()
{
  v1 = v0[108];
  v2 = v0[101];
  v3 = v0[95];
  v4 = swift_task_alloc();
  v0[124] = v4;
  *(v4 + 16) = v1;
  swift_asyncLet_begin();
  v5 = v0[101];

  return _swift_asyncLet_get(v0 + 2, v5, sub_10004BA84, v0 + 82);
}

uint64_t sub_10004BAA0()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  sub_1000187C8(v0[101], v2, &qword_10009E708, &qword_10007DAA0);
  v0[125] = *(v2 + *(v3 + 48));
  sub_10002591C(v2, v1, &unk_10009ED10, &qword_10007D310);
  v4 = v0[101];

  return _swift_asyncLet_finish(v0 + 2, v4, sub_10004BB5C, v0 + 88);
}

uint64_t sub_10004BB78()
{
  v1 = v0[124];

  v2 = v0[120];
  v3 = v0[119];

  return _swift_task_switch(sub_10004BBE0, v3, v2);
}

uint64_t sub_10004BBE0()
{
  v93 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 760);
  *(v1 + *(v0 + 1008)) = *(v0 + 1000);
  sub_1000187C8(v1, v2, &qword_10009E708, &qword_10007DAA0);
  v4 = *(v2 + *(v3 + 48));
  if (!v4)
  {
    v14 = *(v0 + 912);
    v15 = *(v0 + 816);
    v16 = *(v0 + 784);
    sub_100008824(*(v0 + 792), &unk_10009ED10, &qword_10007D310);
    sub_10007AE0C();
    sub_1000187C8(v15, v16, &qword_10009E708, &qword_10007DAA0);
    v17 = sub_10007AE1C();
    v18 = sub_10007B3DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 984);
      v20 = *(v0 + 976);
      v21 = *(v0 + 848);
      v22 = *(v0 + 784);
      v23 = *(v0 + 776);
      v24 = *(v0 + 760);
      v25 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, v92);
      *(v25 + 12) = 2080;
      sub_1000187C8(v22, v23, &qword_10009E708, &qword_10007DAA0);

      result = v20(v23, 1, v21);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v83 = *(v0 + 912);
      v87 = *(v0 + 968);
      v77 = *(v0 + 896);
      v80 = *(v0 + 888);
      v27 = *(v0 + 856);
      v28 = *(v0 + 848);
      v29 = *(v0 + 784);
      v30 = *(v0 + 776);
      v31 = sub_10007ABDC();
      v33 = v32;
      sub_100008824(v29, &qword_10009E708, &qword_10007DAA0);
      (*(v27 + 8))(v30, v28);
      v34 = sub_100037C08(v31, v33, v92);

      *(v25 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s Replacing URL with: %s", v25, 0x16u);
      swift_arrayDestroy();

      v87(v83, v80);
    }

    else
    {
      v35 = *(v0 + 968);
      v36 = *(v0 + 912);
      v37 = *(v0 + 896);
      v38 = *(v0 + 888);
      v39 = *(v0 + 784);

      sub_100008824(v39, &qword_10009E708, &qword_10007DAA0);
      v35(v36, v38);
    }

    v40 = *(v0 + 984);
    v41 = *(v0 + 976);
    v42 = *(v0 + 848);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(*(v0 + 752) + 24);
    sub_1000187C8(*(v0 + 816), v43, &qword_10009E708, &qword_10007DAA0);
    v46 = *(v43 + *(v44 + 48));

    result = v41(v43, 1, v42);
    if (result != 1)
    {
      v47 = *(v0 + 944);
      v48 = *(v0 + 856);
      v49 = *(v0 + 848);
      v50 = *(v0 + 840);
      v51 = *(v0 + 832);
      v84 = *(v0 + 816);
      v88 = *(v0 + 864);
      v52 = *(v0 + 768);

      (*(v48 + 16))(v50, v52, v49);
      (*(v48 + 56))(v50, 0, 1, v49);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000187C8(v50, v51, &unk_10009ED10, &qword_10007D310);
      sub_10007AF4C();
      sub_100008824(v50, &unk_10009ED10, &qword_10007D310);
      sub_100008824(v84, &qword_10009E708, &qword_10007DAA0);
      v53 = *(v48 + 8);
      v53(v88, v49);
      v53(v52, v49);
      v54 = *(v0 + 936);
      v55 = *(v0 + 928);
      v56 = *(v0 + 920);
      v57 = *(v0 + 912);
      v58 = *(v0 + 904);
      v59 = *(v0 + 880);
      v60 = *(v0 + 872);
      v61 = *(v0 + 864);
      v62 = *(v0 + 840);
      v69 = *(v0 + 832);
      v71 = *(v0 + 824);
      v73 = *(v0 + 816);
      v75 = *(v0 + 808);
      v78 = *(v0 + 800);
      v81 = *(v0 + 792);
      v85 = *(v0 + 784);
      v89 = *(v0 + 776);
      v91 = *(v0 + 768);
      sub_10005AA6C();

      v13 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v63 = *(v0 + 928);
  v64 = *(v0 + 920);
  v65 = *(v0 + 912);
  v66 = *(v0 + 904);
  v67 = *(v0 + 880);
  v68 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);
  v70 = *(v0 + 840);
  v72 = *(v0 + 832);
  v10 = *(v0 + 816);
  v74 = *(v0 + 824);
  v76 = *(v0 + 808);
  v11 = *(v0 + 792);
  v79 = *(v0 + 800);
  v82 = *(v0 + 784);
  v86 = *(v0 + 776);
  v90 = *(v0 + 768);

  sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
  sub_100005AB8();
  swift_allocError();
  *v12 = 0xD00000000000001CLL;
  *(v12 + 8) = 0x8000000100082460;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v4;
  *(v12 + 40) = 7;
  swift_willThrow();
  sub_100008824(v10, &qword_10009E708, &qword_10007DAA0);
  (*(v8 + 8))(v7, v9);
  sub_10005AA6C();

  v13 = *(v0 + 8);
LABEL_9:

  return v13();
}

uint64_t sub_10004C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000187C8(a3, v24 - v10, &qword_10009F370, &qword_10007FC90);
  v12 = sub_10007B35C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008824(v11, &qword_10009F370, &qword_10007FC90);
  }

  else
  {
    sub_10007B34C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10007B2EC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10007B1CC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100008824(a3, &qword_10009F370, &qword_10007FC90);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008824(a3, &qword_10009F370, &qword_10007FC90);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10004C5D4()
{
  v1[4] = v0;
  v2 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_10007AC4C();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_10007B32C();
  v1[11] = sub_10007B31C();
  v7 = sub_10007B2EC();

  return _swift_task_switch(sub_10004C718, v7, v6);
}

uint64_t sub_10004C718()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 1;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 97) & 0xFE) == 8)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v6 = *(v0 + 88);
      v7 = *(v0 + 56);
      v8 = *(v0 + 32);

      sub_100008824(v7, &unk_10009ED10, &qword_10007D310);
      sub_100005AB8();
      swift_allocError();
      *v9 = 0xD000000000000016;
      *(v9 + 8) = 0x80000001000822D0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
      *(v9 + 40) = 0;
      swift_willThrow();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 98) = 0;
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v12 = sub_10001E7F4();
      v14 = v12;
      v15 = *(v0 + 88);
      if (v13)
      {
        v16 = *(v0 + 72);
        v48 = *(v0 + 80);
        v17 = *(v0 + 64);
        v18 = *(v0 + 32);
        v19 = v12;
        v20 = v13;
        v21 = v13;

        sub_100005AB8();
        swift_allocError();
        *v22 = xmmword_10007E750;
        *(v22 + 24) = 0;
        *(v22 + 32) = 0;
        *(v22 + 16) = v20;
        *(v22 + 40) = 1;
        swift_willThrow();

        (*(v16 + 8))(v48, v17);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 103) = 0;
      }

      else
      {
        v29 = *(v0 + 88);

        if (v14)
        {
          v30 = *(v0 + 32);
          v31 = *(v30 + 16);
          swift_getKeyPath();
          swift_getKeyPath();
          v32 = v14;

          sub_10007AF3C();

          if (*(v0 + 100) == 1)
          {
            v33 = *(v30 + 16);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10007AF3C();

            if (*(v0 + 102) > 1u)
            {
              if (*(v0 + 102) != 2)
              {
                return sub_10007B63C();
              }

              v34 = 2;
            }

            else if (*(v0 + 102))
            {
              v34 = 3;
            }

            else
            {
              v34 = 1;
            }
          }

          else
          {
            v34 = 1;
          }

          [v32 setPublicPermission:v34];
          v40 = *(*(v30 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
          v41 = v14;
          if (v40 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10007AF3C();

            LOBYTE(v40) = *(v0 + 101);
          }

          v42 = *(v0 + 72);
          v43 = *(v0 + 80);
          v44 = *(v0 + 64);
          v45 = *(v0 + 32);
          [v32 setAllowsAccessRequests:v40 & 1];
          v46 = *(v45 + 24);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 24) = v41;

          sub_10007AF4C();

          (*(v42 + 8))(v43, v44);
        }

        else
        {
          v35 = *(v0 + 72);
          v36 = *(v0 + 64);
          v49 = *(v0 + 80);
          v38 = *(v0 + 40);
          v37 = *(v0 + 48);
          v39 = *(*(v0 + 32) + 24);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 16) = 0;
          swift_retain_n();
          sub_10007AF4C();
          (*(v35 + 56))(v37, 1, 1, v36);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000187C8(v37, v38, &unk_10009ED10, &qword_10007D310);

          sub_10007AF4C();
          sub_100008824(v37, &unk_10009ED10, &qword_10007D310);

          (*(v35 + 8))(v49, v36);
        }

        v47 = *(v0 + 32);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 99) = 0;
      }
    }
  }

  else
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 32);
    sub_10004F634();

    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = 0;
  }

  sub_10007AF4C();
  v23 = *(v0 + 80);
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 40);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10004CEF0()
{
  v1[20] = v0;
  v2 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = sub_10007AC4C();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_10007B32C();
  v1[25] = sub_10007B31C();
  v7 = sub_10007B2EC();
  v1[26] = v7;
  v1[27] = v6;

  return _swift_task_switch(sub_10004D01C, v7, v6);
}

uint64_t sub_10004D01C()
{
  v1 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if (*(v0 + 96) || *(v0 + 104) != 0xE000000000000000)
  {
    v4 = *(v0 + 104);
    v5 = sub_10007B6BC();

    if ((v5 & 1) == 0)
    {
      v16 = *(v0 + 200);

      goto LABEL_15;
    }
  }

  else
  {
  }

  if (v2 || v3 != 0xE000000000000000)
  {
    v6 = sub_10007B6BC();

    if ((v6 & 1) == 0)
    {
      v17 = *(v0 + 200);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v7 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 384) & 0xFE) == 8)
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      v12 = *(v0 + 200);
      v13 = *(v0 + 168);

      sub_100008824(v13, &unk_10009ED10, &qword_10007D310);
LABEL_15:
      v18 = *(v0 + 192);
      v19 = *(v0 + 168);

      v20 = *(v0 + 8);

      return v20();
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v22 = swift_task_alloc();
    *(v0 + 280) = v22;
    *v22 = v0;
    v22[1] = sub_10004D7B0;
    v23 = *(v0 + 192);

    return sub_100019390(v0 + 16, v23);
  }

  else
  {
    v14 = *(v0 + 160);
    v15 = sub_100021AB0();
    *(v0 + 224) = v15;
    v24 = v15;
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    v25[1] = sub_10004D438;

    return sub_100005138(v24);
  }
}

uint64_t sub_10004D438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 232);
  v12 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v13 = *(v10 + 208);
    v14 = *(v10 + 216);
    v15 = sub_10004D70C;
  }

  else
  {

    *(v10 + 248) = a4;
    *(v10 + 256) = a3;
    *(v10 + 264) = a2;
    *(v10 + 272) = a1;
    v13 = *(v10 + 208);
    v14 = *(v10 + 216);
    v15 = sub_10004D588;
  }

  return _swift_task_switch(v15, v13, v14);
}

uint64_t sub_10004D588()
{
  v1 = v0[25];

  v2 = v0[33];
  v3 = v0[31];
  if (v2)
  {
    if (v3)
    {
      v4 = v0[34];
      v5 = v0[32];
      v6 = v0[20];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[16] = v4;
      v0[17] = v2;
      v0[18] = v5;
      v0[19] = v3;

      sub_10007AF4C();
      v7 = v0[24];
      v8 = v0[21];

      v9 = v0[1];
      goto LABEL_7;
    }

    v11 = v0[33];
  }

  else
  {
    v10 = v0[31];
  }

  sub_100005AB8();
  swift_allocError();
  *v12 = 0xD000000000000016;
  *(v12 + 8) = 0x80000001000822B0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = 6;
  swift_willThrow();
  v13 = v0[24];
  v14 = v0[21];

  v9 = v0[1];
LABEL_7:

  return v9();
}

uint64_t sub_10004D70C()
{
  *(v0 + 328) = *(v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10004DB20;

  return sub_100019B14(v0 + 56);
}

uint64_t sub_10004D7B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 280);
  v8 = *v0;
  v4 = *(*v0 + 32);
  *(v2 + 18) = *(v2 + 1);
  *(v2 + 19) = v4;
  v2[40] = v1[6];

  v5 = v1[27];
  v6 = v1[26];

  return _swift_task_switch(sub_10004D8EC, v6, v5);
}

uint64_t sub_10004D8EC()
{
  v1 = v0[40];
  v2 = v0[25];

  if (v1)
  {
    v3 = v0[39];
    v4 = v0[40];
    v5 = v0[37];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];
    sub_100005AB8();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000822B0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = v4;
    *(v9 + 40) = 6;
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v10 = v0[39];
    v11 = v0[37];
    if (v11)
    {
      if (v10)
      {
        v12 = v0[38];
        v13 = v0[36];
        v14 = v0[20];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v13;
        v0[17] = v11;
        v0[18] = v12;
        v0[19] = v10;

        sub_10007AF4C();
        v15 = v0[24];
        v16 = v0[21];

        v17 = v0[1];
        goto LABEL_10;
      }

      v19 = v0[37];
    }

    else
    {
      v18 = v0[39];
    }

    sub_100005AB8();
    swift_allocError();
    *v20 = 0xD000000000000016;
    *(v20 + 8) = 0x80000001000822B0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *(v20 + 16) = 0;
    *(v20 + 40) = 6;
    swift_willThrow();
  }

  v21 = v0[24];
  v22 = v0[21];

  v17 = v0[1];
LABEL_10:

  return v17();
}

uint64_t sub_10004DB20()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 336);
  v7 = *v0;
  *(v2 + 43) = *(v2 + 7);
  *(v2 + 45) = *(v2 + 9);
  v2[47] = v1[11];

  v4 = v1[27];
  v5 = v1[26];

  return _swift_task_switch(sub_10004DC6C, v5, v4);
}

uint64_t sub_10004DC6C()
{
  v1 = v0[47];
  v2 = v0[25];

  if (v1)
  {
    v3 = v0[46];
    v4 = v0[47];
    v5 = v0[44];
    v6 = v0[41];
    sub_100005AB8();
    swift_allocError();
    *v7 = 0xD000000000000016;
    *(v7 + 8) = 0x80000001000822B0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 16) = v4;
    *(v7 + 40) = 6;
    swift_willThrow();
  }

  else
  {
    v8 = v0[41];

    v9 = v0[46];
    v10 = v0[44];
    if (v10)
    {
      if (v9)
      {
        v11 = v0[45];
        v12 = v0[43];
        v13 = v0[20];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v12;
        v0[17] = v10;
        v0[18] = v11;
        v0[19] = v9;

        sub_10007AF4C();
        v14 = v0[24];
        v15 = v0[21];

        v16 = v0[1];
        goto LABEL_10;
      }

      v18 = v0[44];
    }

    else
    {
      v17 = v0[46];
    }

    sub_100005AB8();
    swift_allocError();
    *v19 = 0xD000000000000016;
    *(v19 + 8) = 0x80000001000822B0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 0;
    *(v19 + 40) = 6;
    swift_willThrow();
  }

  v20 = v0[24];
  v21 = v0[21];

  v16 = v0[1];
LABEL_10:

  return v16();
}

uint64_t sub_10004DE7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_10004DEF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_10007AE2C();
  *(v3 + 96) = v5;
  v6 = *(v5 - 8);
  *(v3 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  sub_10007B32C();
  *(v3 + 152) = sub_10007B31C();
  v9 = sub_10007B2EC();
  *(v3 + 160) = v9;
  *(v3 + 168) = v8;

  return _swift_task_switch(sub_10004E054, v9, v8);
}

void sub_10004E054()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[22] = BRCloudDocsErrorDomain;
    v0[23] = v2;
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_10004E104;
    v4 = v0[10];

    sub_100059770();
  }
}

uint64_t sub_10004E104()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_10004E394;
  }

  else
  {
    v7 = sub_10004E240;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004E240()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_10007AE0C();
  v3 = sub_10007AE1C();
  v4 = sub_10007B41C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "fetchShare completed with this many retries left: %ld", v6, 0xCu);
  }

  v7 = v0[18];
  v8 = v0[12];
  v9 = v0[13];

  (*(v9 + 8))(v7, v8);
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10004E394()
{
  *(v0 + 64) = *(v0 + 200);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  v1 = swift_dynamicCast();
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 208) = v3;
    *(v0 + 216) = v2;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 224) = v4;
    *(v0 + 232) = v5;
    v6 = *(v0 + 48);
    *(v0 + 240) = v6;
    v7 = *(v0 + 56);
    v88 = v5;
    if (v7 != 5)
    {
      v20 = *(v0 + 200);
      v21 = *(v0 + 152);
      v22 = *(v0 + 112);

      sub_10007AE0C();
      v23 = sub_10007AE1C();
      v24 = sub_10007B3FC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 184);
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v23, v24, "tryToFetchShare error: throwing unexpected error--retries that were left: %ld", v26, 0xCu);
      }

      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v29 = *(v0 + 96);

      (*(v28 + 8))(v27, v29);
      sub_100005AB8();
      swift_allocError();
      *v30 = 0xD00000000000003ELL;
      *(v30 + 8) = 0x8000000100083190;
      *(v30 + 16) = xmmword_10007E760;
      *(v30 + 32) = 0x80000001000831D0;
      *(v30 + 40) = 11;
      swift_willThrow();
      v31 = v3;
      v32 = v2;
      v33 = v4;
      v34 = v88;
      v35 = v6;
      v36 = v7;
      goto LABEL_21;
    }

    v87 = v3;
    if (v4)
    {
      v8 = *(v0 + 200);
      v9 = *(v0 + 176);

      v10 = v4;

      v11 = v10;
      v12 = [v11 domain];
      v13 = sub_10007B19C();
      v15 = v14;

      if (v13 == sub_10007B19C() && v15 == v16)
      {

        v17 = v87;
      }

      else
      {
        v37 = sub_10007B6BC();

        v17 = v87;
        if ((v37 & 1) == 0)
        {
          v45 = *(v0 + 152);

          goto LABEL_17;
        }
      }

      v38 = [v11 code];

      if (v38 != 7)
      {
        v44 = *(v0 + 152);

        goto LABEL_17;
      }

      v39 = *(v0 + 80);
      v40 = *(v0 + 88);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v41 = sub_10007AC4C();
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
        v42 = *(v0 + 152);
        v43 = *(v0 + 88);

        sub_100008824(v43, &unk_10009ED10, &qword_10007D310);
        v17 = v87;
LABEL_17:
        v46 = *(v0 + 120);
        sub_10007AE0C();
        v47 = v11;
        v48 = sub_10007AE1C();
        v49 = sub_10007B3FC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = *(v0 + 184);
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 134218242;
          *(v51 + 4) = v50;
          *(v51 + 12) = 2112;
          *(v51 + 14) = v47;
          *v52 = v4;
          v53 = v47;
          _os_log_impl(&_mh_execute_header, v48, v49, "tryToFetchShare failed to fetch share so throwing--retries that were left: %ld, error: %@", v51, 0x16u);
          sub_100008824(v52, &qword_10009F570, &qword_10007DAF0);
          v17 = v87;
        }

        v54 = *(v0 + 120);
        v55 = *(v0 + 96);
        v56 = *(v0 + 104);

        (*(v56 + 8))(v54, v55);
        sub_100005AB8();
        swift_allocError();
        *v57 = v17;
        *(v57 + 8) = v2;
        *(v57 + 16) = v4;
        *(v57 + 24) = v88;
        *(v57 + 32) = v6;
        *(v57 + 40) = 5;
        swift_willThrow();
        sub_100018B7C(v17, v2, v4, v88, v6, 5u);

        v31 = v17;
        v32 = v2;
        v33 = v4;
        v34 = v88;
LABEL_20:
        v35 = v6;
        v36 = 5;
LABEL_21:
        sub_100018BDC(v31, v32, v33, v34, v35, v36);
        goto LABEL_22;
      }

      v67 = *(v0 + 57);
      sub_100008824(*(v0 + 88), &unk_10009ED10, &qword_10007D310);
      if ((v67 & 1) == 0)
      {
        v78 = *(v0 + 152);
        v79 = *(v0 + 136);

        sub_10007AE0C();
        v80 = sub_10007AE1C();
        v81 = sub_10007B3FC();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "tryToFetchShare not synced to iCloud AND not shared so throw notInICloud error", v82, 2u);
        }

        v83 = *(v0 + 136);
        v84 = *(v0 + 96);
        v85 = *(v0 + 104);

        (*(v85 + 8))(v83, v84);
        sub_100005AB8();
        swift_allocError();
        *v86 = v87;
        *(v86 + 8) = v2;
        *(v86 + 16) = v4;
        *(v86 + 24) = v5;
        *(v86 + 32) = v6;
        *(v86 + 40) = 5;
        swift_willThrow();
        sub_100018B7C(v87, v2, v4, v5, v6, 5u);

        v31 = v87;
        v32 = v2;
        v33 = v4;
        v34 = v5;
        goto LABEL_20;
      }

      v68 = *(v0 + 128);
      sub_10007AE0C();
      v69 = sub_10007AE1C();
      v70 = sub_10007B41C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = *(v0 + 184);
        v72 = swift_slowAlloc();
        *v72 = 134217984;
        *(v72 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v69, v70, "About to retry tryToFetchShare post-share when unsynced after 1 second--retries left including this one: %ld", v72, 0xCu);
      }

      v73 = *(v0 + 128);
      v74 = *(v0 + 96);
      v75 = *(v0 + 104);

      (*(v75 + 8))(v73, v74);
      v76 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v77 = swift_task_alloc();
      *(v0 + 248) = v77;
      *v77 = v0;
      v77[1] = sub_10004EBEC;
      v1 = 1000000000;
    }

    else
    {
      __break(1u);
    }

    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v18 = *(v0 + 152);

  v19 = *(v0 + 200);
LABEL_22:
  v59 = *(v0 + 136);
  v58 = *(v0 + 144);
  v61 = *(v0 + 120);
  v60 = *(v0 + 128);
  v62 = *(v0 + 112);
  v63 = *(v0 + 88);
  v64 = *(v0 + 64);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10004EBEC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_100068860;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 168);
    v7 = sub_10004ED10;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10004ED10()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];

  sub_100018BDC(v5, v4, v3, v1, v2, 5u);
  v7 = v0[8];

  if (v6 == 1)
  {
    v12 = v0[19];

    v14 = v0[17];
    v13 = v0[18];
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    v18 = v0[11];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v9 = v0[23];
    if (v9 < 2)
    {
      __break(1u);
    }

    else
    {
      v0[23] = v9 - 1;
      v10 = swift_task_alloc();
      v0[24] = v10;
      *v10 = v0;
      v10[1] = sub_10004E104;
      v11 = v0[10];

      return sub_100059770();
    }
  }

  return result;
}

uint64_t sub_10004EE9C(char a1, char a2)
{
  v4 = sub_10007AE2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (a1)
    {
      v10 = v7;
      sub_10007AE0C();
      v11 = sub_10007AE1C();
      v12 = sub_10007B3FC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "setExecutionModeForSPI specified true for both isPreShare and isAddPeople; this will eventually become an internal error", v13, 2u);
      }

      (*(v5 + 8))(v9, v10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16[13] = 3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (v16[15] == 3)
    {
      return result;
    }

    if (a1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16[14] = v15;
  }

  return sub_10007AF4C();
}

uint64_t sub_10004F0D8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  sub_10007B32C();
  *(v2 + 32) = sub_10007B31C();
  v5 = sub_10007B2EC();
  *(v2 + 40) = v5;
  *(v2 + 48) = v4;

  return _swift_task_switch(sub_10004F1AC, v5, v4);
}

uint64_t sub_10004F1AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = sub_10007AC4C();
  *(v0 + 56) = v3;
  v4 = *(v3 - 8);
  *(v0 + 64) = v4;
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_10004F2F4;
    v7 = *(v0 + 24);
    v8 = *(v0 + 88);

    return sub_10001A398(v7, v8);
  }

  return result;
}

uint64_t sub_10004F2F4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_10004F48C;
  }

  else
  {
    (*(v2[8] + 8))(v2[3], v2[7]);
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_10004F420;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10004F420()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10004F48C()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  (*(v2 + 8))(v4, v1);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

unint64_t sub_10004F544(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_10007B26C() != a1 || v9 != a2)
  {
    v10 = sub_10007B6BC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_10007B20C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10004F634()
{
  v1 = v0;
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10007AE0C();
    v7 = sub_10007AE1C();
    v8 = sub_10007B41C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ext computed property--extensionController is nil--will assert", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + 48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10004F79C()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (!v6)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (!v5)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  return v4 != 0;
}

uint64_t sub_10004F8DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v68 = a2;
  v69 = a3;
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v67 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v24 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v67 - v26;
  if ((a6 & 1) == 0)
  {
    return 8;
  }

  if (!a5)
  {
    sub_1000187C8(a1, &v67 - v26, &unk_10009ED10, &qword_10007D310);
    v46 = sub_10007AC4C();
    v47 = (*(*(v46 - 8) + 48))(v27, 1, v46);
    sub_100008824(v27, &unk_10009ED10, &qword_10007D310);
    if (v47 != 1)
    {
      return 9;
    }

    v48 = sub_100050218();
    if ((v48 & 0xFE) != 8 && (v48 > 7u || ((1 << v48) & 0xC1) == 0))
    {
      v58 = v48;
      sub_10007AE0C();
      v59 = sub_10007AE1C();
      v60 = sub_10007B41C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v72[0] = v62;
        *v61 = 136315138;
        v63 = sub_10001F500(v58);
        v65 = sub_100037C08(v63, v64, v72);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v59, v60, "Combine for sharingType specific CK sharingType: %s.", v61, 0xCu);
        sub_10000585C(v62);
      }

      (*(v71 + 8))(v18, v70);
      return v58;
    }

    sub_10007AE0C();
    v49 = v69;

    v50 = sub_10007AE1C();
    v51 = sub_10007B41C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72[1] = v49;
      v73 = v53;
      *v52 = 136315138;
      v54 = v68;
      v72[0] = v68;
      sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
      v55 = sub_10007B54C();
      v57 = sub_100037C08(v55, v56, &v73);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Combine for sharingType sourceAppBundleID: %s.", v52, 0xCu);
      sub_10000585C(v53);

      (*(v71 + 8))(v15, v70);
      if (!v49)
      {
        return 0;
      }
    }

    else
    {

      (*(v71 + 8))(v15, v70);
      v54 = v68;
      if (!v49)
      {
        return 0;
      }
    }

    if (v54 == 0x6C7070612E6D6F63 && v49 == 0xEF7365746F4E2E65 || (sub_10007B6BC() & 1) != 0 || v54 == 0xD000000000000015 && 0x8000000100082700 == v49 || (sub_10007B6BC() & 1) != 0)
    {
      return 1;
    }

    if (v54 == 0xD000000000000013 && 0x80000001000826E0 == v49 || (sub_10007B6BC() & 1) != 0)
    {
      return 3;
    }

    if (v54 == 0xD000000000000010 && 0x80000001000826C0 == v49 || (sub_10007B6BC() & 1) != 0 || v54 == 0xD000000000000016 && 0x80000001000826A0 == v49 || (sub_10007B6BC() & 1) != 0)
    {
      return 4;
    }

    if (v54 == 0xD000000000000010 && 0x8000000100082680 == v69 || (sub_10007B6BC() & 1) != 0 || v68 == 0xD000000000000012 && 0x8000000100082660 == v69 || (sub_10007B6BC() & 1) != 0)
    {
      return 5;
    }

    v66 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v66 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      return 6;
    }

    return 0;
  }

  v28 = sub_100021110(a4, a5, a1);
  v29 = sub_10001F6E0(v28);
  if ((v29 & 0xFE) != 8 && (v29 == 7 || !v29) && v69)
  {
    v30 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v30 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = v29;
      sub_10007AE0C();

      v32 = sub_10007AE1C();
      v33 = sub_10007B41C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v72[0] = swift_slowAlloc();
        *v34 = 136315394;
        *(v34 + 4) = sub_100037C08(a4, a5, v72);
        *(v34 + 12) = 2080;
        v35 = sub_10001F500(v31);
        v37 = sub_100037C08(v35, v36, v72);

        *(v34 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v32, v33, "Combine for sharingType itemUTI: %s, sharingType: %s--return .other for unspecified.", v34, 0x16u);
        swift_arrayDestroy();
      }

      (*(v71 + 8))(v23, v70);
      return 6;
    }
  }

  v39 = v29;
  sub_10007AE0C();

  v40 = sub_10007AE1C();
  v41 = sub_10007B41C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_100037C08(a4, a5, v72);
    *(v42 + 12) = 2080;
    v43 = sub_10001F500(v39);
    v45 = sub_100037C08(v43, v44, v72);

    *(v42 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v40, v41, "Combine for sharingType itemUTI: %s, sharingType: %s.", v42, 0x16u);
    swift_arrayDestroy();
  }

  (*(v71 + 8))(v21, v70);
  return v39;
}

uint64_t sub_100050218()
{
  v1 = sub_10007AE2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - v8;
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (!v39[0])
  {
    sub_10007AE0C();
    v33 = sub_10007AE1C();
    v34 = sub_10007B41C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ckSharingTypeFromShare on model--no CKShare yet so return .cloudKit(type: .other).", v35, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 6;
  }

  v13 = v39[0];
  sub_10007B4FC();
  v14 = sub_10007B50C();

  if (!v14 || (v39[2] = v14, sub_1000057A0(&unk_10009E7A0, &unk_10007DBA8), (swift_dynamicCast() & 1) == 0))
  {
    sub_10007AE0C();
    v30 = sub_10007AE1C();
    v31 = sub_10007B41C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ckSharingTypeFromShare on model--couldn't get a string from CKShare.shareType so return .cloudKit(type: .other).", v32, 2u);
    }

    else
    {
    }

    (*(v2 + 8))(v9, v1);
    return 6;
  }

  v15 = sub_10001FAA4(v39[0], v39[1]);
  v17 = v16;

  sub_10007AE0C();

  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v20;
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v20 = 136315138;
    v21 = sub_100020B88(v15, v17);
    v22 = sub_10001F6E0(v21);
    v23 = sub_10001F500(v22);
    LOBYTE(v20) = v19;
    v25 = v15;
    v26 = sub_100037C08(v23, v24, v39);

    v27 = v37;
    *(v37 + 1) = v26;
    v15 = v25;
    _os_log_impl(&_mh_execute_header, v18, v20, "ckSharingTypeFromShare on model--CKShare converts to: %s.", v27, 0xCu);
    sub_10000585C(v38);
  }

  (*(v2 + 8))(v11, v1);
  v28 = sub_100020B88(v15, v17);

  return sub_10001F6E0(v28);
}

uint64_t sub_100050658@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1000057A0(&qword_10009F3C0, &qword_10007F440);
  result = a2(a1, *(a1 + v6[12]), *(a1 + v6[12] + 8), *(a1 + v6[16]), *(a1 + v6[16] + 8), *(a1 + v6[20]));
  *a3 = result;
  return result;
}

_BYTE *sub_1000506D0(_BYTE *result)
{
  if (*result == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10007AF4C();
  }

  return result;
}

_UNKNOWN **sub_100050754(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return &off_100095B00;
  }

  if (!a2)
  {

    return &off_100095B00;
  }

  v5 = Strong;
  v6 = a2;
  v7 = [v6 participants];
  sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
  v8 = sub_10007B2AC();

  v9 = *(v5 + 24);
  v10 = v6;

  sub_10000CF38(a2);
  v27 = v11;

  if (v8 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007B64C())
  {
    if (i)
    {
      v13 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v14 = sub_10007B5DC();
        }

        else
        {
          if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v14 = *(v8 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ([v14 role] != 1 && objc_msgSend(v15, "role") == 2 && objc_msgSend(v15, "permission") == 3)
        {
          sub_10007B5FC();
          v17 = _swiftEmptyArrayStorage[2];
          sub_10007B61C();
          sub_10007B62C();
          sub_10007B60C();
        }

        else
        {
        }

        ++v13;
      }

      while (v16 != i);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
      {
        v19 = _swiftEmptyArrayStorage[2];
        goto LABEL_25;
      }
    }

    v19 = sub_10007B64C();
LABEL_25:

    if (!i)
    {
      break;
    }

    v26 = v19;
    v20 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v21 = sub_10007B5DC();
      }

      else
      {
        if (v20 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v21 = *(v8 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v21 role] == 1 || objc_msgSend(v22, "role") == 2 && objc_msgSend(v22, "permission") != 2)
      {
      }

      else
      {
        sub_10007B5FC();
        v24 = _swiftEmptyArrayStorage[2];
        sub_10007B61C();
        sub_10007B62C();
        sub_10007B60C();
      }

      ++v20;
      if (v23 == i)
      {
        v19 = v26;
        goto LABEL_39;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_39:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_57;
  }

  for (j = _swiftEmptyArrayStorage[2]; ; j = sub_10007B64C())
  {

    if (!__OFSUB__(j, v27))
    {
      break;
    }

    __break(1u);
LABEL_57:
    ;
  }

  if (v19 <= 0)
  {

    return &off_100095A60;
  }

  else if (j - v27 < 1)
  {

    return &off_100095AD8;
  }

  else
  {

    if (a1 == 3)
    {
      return &off_100095A88;
    }

    else
    {
      return &off_100095AB0;
    }
  }
}

uint64_t sub_100050B60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10007AE2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  v17 = __chkstk_darwin(v14);
  v66 = &v59 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v59 - v20;
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    if (a1)
    {
      v60 = v13;
      v61 = v16;
      v63 = v9;
      v64 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v62 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v26 = v67;
      v27 = *(v25 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10007AF3C();

      v28 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v29 = v67 == 1 && (a1 == 1) | v28 & 1 && v62 != 2 && v26 == 2;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v67) = v29;

      sub_10007AF4C();
      sub_10007AE0C();

      v30 = sub_10007AE1C();
      v31 = sub_10007B41C();
      v32 = os_log_type_enabled(v30, v31);
      v65 = v25;
      v59 = a6;
      if (v32)
      {
        v33 = v62 == 2;
        v34 = swift_slowAlloc();
        *v34 = 67241216;
        *(v34 + 4) = 1;
        *(v34 + 8) = 1026;
        *(v34 + 10) = v33;
        *(v34 + 14) = 1026;
        *(v34 + 16) = v26 == 2;
        *(v34 + 20) = 1026;
        *(v34 + 22) = a1 == 1;
        *(v34 + 26) = 1026;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        *(v34 + 28) = v67;

        _os_log_impl(&_mh_execute_header, v30, v31, "executionMode is set. appIsOKForCoOwners: %{BOOL,public}d, R/O: %{BOOL,public}d, private: %{BOOL,public}d, isPreShare: %{BOOL,public}d, allowCoOwnersEditing: %{BOOL,public}d", v34, 0x20u);
      }

      else
      {
      }

      v35 = v64;
      v36 = *(v63 + 8);
      v36(v23, v64);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v67)
      {
        if (a1 != 1)
        {
          v37 = *(v65 + 24);
          swift_getKeyPath();
          swift_getKeyPath();

          sub_10007AF3C();

          v38 = v67;
          if (v67)
          {
            v39 = [v67 participants];
            sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
            v40 = sub_10007B2AC();

            if (v40 >> 62)
            {
              v41 = sub_10007B64C();
            }

            else
            {
              v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v42 = v61;

            if (v41 > 1)
            {
              sub_10007AE0C();
              v43 = sub_10007AE1C();
              v44 = sub_10007B3DC();
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                *v45 = 0;
                _os_log_impl(&_mh_execute_header, v43, v44, "Do allow co-owner editing with participants.", v45, 2u);
              }

              v36(v66, v35);
              v46 = *(v65 + 24);
              swift_getKeyPath();
              swift_getKeyPath();

              sub_10007AF3C();

              if (v67 == 1)
              {
                v47 = v59;
              }

              else
              {
                swift_getKeyPath();
                swift_getKeyPath();
                sub_10007AF3C();

                v47 = v67;
              }

              sub_100077834(v47);

              sub_10007AE0C();

              v56 = sub_10007AE1C();
              v57 = sub_10007B41C();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                *v58 = 67109120;
                *(v58 + 4) = sub_100078014() & 1;

                _os_log_impl(&_mh_execute_header, v56, v57, "Setting newParticipantsCanBeCoOwners from CKShare state: %{BOOL}d.", v58, 8u);
                v42 = v61;
              }

              else
              {
              }

              v55 = v42;
              return (v36)(v55, v35);
            }
          }

          else
          {
          }

          v51 = v60;
          sub_10007AE0C();
          v52 = sub_10007AE1C();
          v53 = sub_10007B3DC();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Do allow co-owner editing without participants.", v54, 2u);
          }

          else
          {
          }

          v55 = v51;
          return (v36)(v55, v35);
        }
      }

      else
      {
        sub_10007AE0C();
        v48 = sub_10007AE1C();
        v49 = sub_10007B3DC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Do not allow co-owner editing. Updating state.", v50, 2u);
        }

        v36(v21, v35);
        sub_100077834(&off_100095B28);
      }
    }
  }

  return result;
}

void sub_1000514D4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v1)
    {
      v2 = v1;
      sub_10007B4FC();
      v3 = sub_10007B50C();

      if (v3)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_10007B19C();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF4C();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF4C();
    }

    else
    {
    }
  }
}

uint64_t sub_100051618(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (v1 == 8)
      {
LABEL_4:

        return swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v5 != 8)
      {
        if (v5 == 9)
        {
          if (v1 > 6)
          {
            goto LABEL_4;
          }

LABEL_16:
          if (v1 == 4)
          {
            v4 = *(v3 + 16);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10007AF4C();
          }

          goto LABEL_4;
        }

        if (v1 == 9 || v5 == 7 || v1 == 7 || v5 == v1)
        {
          goto LABEL_4;
        }
      }

      if (v1 > 6)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10005179C(_BYTE *a1)
{
  v2 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v11[-v5];
  if (*a1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (v11[7] == 3)
      {
        sub_10007B33C();
        v8 = sub_10007B35C();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        sub_10007B32C();

        v9 = sub_10007B31C();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        sub_10000DAD0(0, 0, v6, &unk_10007F360, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10005196C()
{
  v0[2] = sub_10007B32C();
  v0[3] = sub_10007B31C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051A1C;

  return sub_100051B58(1500);
}

uint64_t sub_100051A1C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_10007B2EC();

  return _swift_task_switch(sub_10006886C, v5, v4);
}

uint64_t sub_100051B58(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10007AE2C();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10007B32C();
  v2[15] = sub_10007B31C();
  v7 = sub_10007B2EC();
  v2[16] = v7;
  v2[17] = v6;

  return _swift_task_switch(sub_100051C58, v7, v6);
}

uint64_t sub_100051C58(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 144) = BRCloudDocsErrorDomain;
  *(v1 + 152) = CKErrorDomain;
  *(v1 + 160) = v2;
  v3 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v4 = *(v1 + 57);
  if (v4 > 2)
  {
    if (v4 - 4 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_100051F44;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v7 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10007AF4C();
  }

  v8 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v9 = *(v1 + 58);
  if (v9 == 4 || v9 == 2)
  {
    v10 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10007AF4C();
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_100052340;
    v12 = *(v1 + 80);

    return sub_10004C5D4();
  }

LABEL_15:
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 104);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_100051F44()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100068844;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    v7 = sub_100052068;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100052068(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 160) = v2 - 1;
  v3 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v4 = *(v1 + 57);
  if (v4 > 2)
  {
    if (v4 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v6 = swift_task_alloc();
      *(v1 + 168) = v6;
      *v6 = v1;
      v6[1] = sub_100051F44;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v7 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_10007AF4C();
  }

  v8 = *(v1 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v9 = *(v1 + 58);
  if (v9 == 4 || v9 == 2)
  {
    v10 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_10007AF4C();
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_100052340;
    v12 = *(v1 + 80);

    return sub_10004C5D4();
  }

LABEL_16:
  v15 = *(v1 + 112);
  v14 = *(v1 + 120);
  v16 = *(v1 + 104);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_100052340()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_1000527B8;
  }

  else
  {
    v7 = sub_10005247C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10005247C()
{
  v1 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = 4;

  v2 = sub_10007AF4C();
  v3 = *(v0 + 160);
  if (v3 == 1)
  {
    goto LABEL_16;
  }

  if (v3 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v2);
  }

  *(v0 + 160) = v3 - 1;
  v4 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = *(v0 + 57);
  if (v5 > 2)
  {
    if (v5 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 == 1)
    {
      v6 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_100051F44;
      v2 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v2);
    }

    v8 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10007AF4C();
  }

  v9 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v10 = *(v0 + 58);
  if (v10 == 4 || v10 == 2)
  {
    v11 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10007AF4C();
    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_100052340;
    v13 = *(v0 + 80);

    return sub_10004C5D4();
  }

LABEL_16:
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = *(v0 + 104);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000527B8()
{
  v76 = v0;
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 208) = v4;
  *(v0 + 216) = v3;
  v5 = *(v0 + 48);
  *(v0 + 224) = v5;
  v6 = *(v0 + 56);
  if (v6 != 1)
  {
    sub_100018BDC(v1, v2, v4, v3, v5, v6);
    goto LABEL_16;
  }

  v72 = v3;
  v73 = v1;
  if (!v4)
  {
LABEL_38:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v7 = *(v0 + 144);

  v8 = v4;
  v74 = v2;

  v9 = [v8 domain];
  v10 = sub_10007B19C();
  v12 = v11;

  if (v10 == sub_10007B19C() && v12 == v13)
  {

    goto LABEL_9;
  }

  v14 = sub_10007B6BC();

  if (v14)
  {
LABEL_9:
    v15 = [v8 code];

    if (v15 == 7)
    {
      v16 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v17 = swift_task_alloc();
      *(v0 + 232) = v17;
      *v17 = v0;
      v18 = sub_100052FE4;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_12:
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 5;

  sub_10007AF4C();
  sub_10007AE0C();
  v21 = v8;
  v22 = v74;

  v23 = sub_10007AE1C();
  v24 = sub_10007B3FC();

  v71 = v24;
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 112);
  v28 = *(v0 + 88);
  v27 = *(v0 + 96);
  if (v25)
  {
    v69 = *(v0 + 112);
    v29 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v75 = v68;
    *v29 = 136315138;
    v70 = v21;
    v30 = v21;
    v31 = [v30 description];
    log = v23;
    v67 = v28;
    v32 = sub_10007B19C();
    v34 = v33;

    v22 = v74;
    v35 = sub_100037C08(v32, v34, &v75);

    *(v29 + 4) = v35;
    v21 = v70;
    _os_log_impl(&_mh_execute_header, log, v71, "tryToCreateShareIfNeeded not-in-iCloud error after retries: %s", v29, 0xCu);
    sub_10000585C(v68);

    (*(v27 + 8))(v69, v67);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  v36 = *(v0 + 80);
  v37 = v21;
  sub_10005A3E4(1u, v4);
  sub_100018BDC(v73, v22, v4, v72, v5, 1u);

LABEL_16:
  v38 = *(v0 + 152);
  v39 = *(v0 + 104);
  v40 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  sub_10007AF4C();
  v41 = [objc_allocWithZone(NSError) initWithDomain:v38 code:1 userInfo:0];
  sub_10007AE0C();
  v42 = sub_10007AE1C();
  v43 = sub_10007B3FC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "tryToCreateShareIfNeeded unexpected error, returning CKError.internalError as best approximation", v44, 2u);
  }

  v45 = *(v0 + 184);
  v47 = *(v0 + 96);
  v46 = *(v0 + 104);
  v48 = *(v0 + 80);
  v49 = *(v0 + 88);

  (*(v47 + 8))(v46, v49);
  v50 = v41;
  sub_10005A3E4(1u, v41);

  v51 = *(v0 + 160);
  if (v51 == 1)
  {
    goto LABEL_34;
  }

  if (v51 < 2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 160) = v51 - 1;
  v52 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v53 = *(v0 + 57);
  if (v53 > 2)
  {
    if (v53 - 4 < 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v53 == 1)
    {
      v54 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *v17 = v0;
      v18 = sub_100051F44;
LABEL_23:
      v17[1] = v18;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    v55 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_10007AF4C();
  }

  v56 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v57 = *(v0 + 58);
  if (v57 == 4 || v57 == 2)
  {
    v58 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_10007AF4C();
    v59 = swift_task_alloc();
    *(v0 + 176) = v59;
    *v59 = v0;
    v59[1] = sub_100052340;
    v60 = *(v0 + 80);

    return sub_10004C5D4();
  }

LABEL_34:
  v63 = *(v0 + 112);
  v62 = *(v0 + 120);
  v64 = *(v0 + 104);

  v65 = *(v0 + 8);

  return v65();
}