id sub_100001690(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v97 = a5;
  v98 = a4;
  v105 = a3;
  v7 = type metadata accessor for Logger();
  v8 = sub_1000029A0(v7);
  v106 = v9;
  v107 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_1000021D4();
  v110 = v12 - v13;
  __chkstk_darwin(v14);
  v96 = &v95 - v15;
  v103 = sub_1000068C0(&qword_100014A30, &qword_10000C068);
  v16 = sub_1000029C4(v103);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v104 = &v95 - v19;
  v102 = type metadata accessor for URLResourceValues();
  v20 = sub_1000029A0(v102);
  v101 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_1000029FC();
  v26 = v25 - v24;
  v27 = sub_1000068C0(&qword_100014A38, &qword_10000C070);
  v28 = sub_100008250(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_1000021D4();
  v99 = v31 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - v35;
  __chkstk_darwin(v34);
  v100 = &v95 - v37;
  v38 = type metadata accessor for URL();
  v39 = sub_1000029A0(v38);
  v108 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_1000021D4();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  v48 = &v95 - v47;
  sub_100007E80(0, &qword_100014A40, CKDContainer_ptr);
  v49 = objc_opt_self();
  v111 = sub_100002110(a1, a2, [v49 sharedInternalUseContainers]);
  v50 = [v111 directoryContext];
  v51 = [v50 fileDownloadDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000068C0(&qword_100014A48, &qword_10000C078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  *(inited + 32) = NSURLVolumeURLKey;
  v53 = NSURLVolumeURLKey;
  sub_1000021E4(inited);
  v109 = v48;
  v54 = v112;
  URL.resourceValues(forKeys:)();
  if (v54)
  {

    v112 = 0;
    v55 = v38;
    v56 = v108;
LABEL_3:
    v57 = v110;
    CKLog.getter();
    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      sub_10000818C();
      v60 = swift_slowAlloc();
      sub_100008160();
      v61 = swift_slowAlloc();
      v114 = v61;
      *v60 = 136315138;
      ErrorValue = swift_getErrorValue();
      v108 = v55;
      v63 = *(*(v113 - 8) + 64);
      __chkstk_darwin(ErrorValue);
      sub_1000029FC();
      (*(v66 + 16))(v65 - v64);
      v67 = String.init<A>(describing:)();
      v69 = sub_100006AE4(v67, v68, &v114);

      *(v60 + 4) = v69;
      sub_100008240();
      _os_log_impl(v70, v71, v72, v73, v74, v75);
      sub_100007068(v61);
      sub_1000080B4();

      sub_1000080C4();

      (*(v106 + 8))(v110, v107);
      return (*(v56 + 8))(v109, v108);
    }

    (*(v106 + 8))(v57, v107);
    return (*(v56 + 8))(v109, v55);
  }

  v95 = v45;
  v112 = 0;

  v77 = v100;
  URLResourceValues.volume.getter();
  (*(v101 + 8))(v26, v102);
  v56 = v108;
  (*(v108 + 16))(v36, v105, v38);
  sub_100002978(v36, 0, 1, v38);
  v78 = v104;
  v79 = *(v103 + 48);
  sub_100007D98(v77, v104, &qword_100014A38, &qword_10000C070);
  sub_100007D98(v36, v78 + v79, &qword_100014A38, &qword_10000C070);
  v55 = v38;
  if (sub_1000029D4(v78, 1, v38) != 1)
  {
    v81 = v99;
    sub_100007D98(v78, v99, &qword_100014A38, &qword_10000C070);
    if (sub_1000029D4(v78 + v79, 1, v38) != 1)
    {
      v82 = v78 + v79;
      v83 = v95;
      (*(v56 + 32))(v95, v82, v38);
      sub_100007DF8(&qword_100014A50, &type metadata accessor for URL);
      LODWORD(v105) = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = v78;
      v85 = *(v56 + 8);
      v85(v83, v38);
      sub_10000217C(v36, &qword_100014A38, &qword_10000C070);
      v85(v81, v38);
      sub_10000217C(v84, &qword_100014A38, &qword_10000C070);
      v80 = v111;
      if (v105)
      {
        goto LABEL_16;
      }

LABEL_14:
      sub_10000217C(v77, &qword_100014A38, &qword_10000C070);
      return (*(v56 + 8))(v109, v38);
    }

    sub_10000217C(v36, &qword_100014A38, &qword_10000C070);
    (*(v56 + 8))(v81, v38);
LABEL_13:
    sub_10000217C(v78, &qword_100014A30, &qword_10000C068);
    goto LABEL_14;
  }

  sub_10000217C(v36, &qword_100014A38, &qword_10000C070);
  if (sub_1000029D4(v78 + v79, 1, v38) != 1)
  {

    goto LABEL_13;
  }

  sub_10000217C(v78, &qword_100014A38, &qword_10000C070);
  v80 = v111;
LABEL_16:
  v114 = 0;
  if (![v80 setupAssetTransfers:&v114])
  {
    v90 = v114;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000217C(v77, &qword_100014A38, &qword_10000C070);
    v112 = 0;
    goto LABEL_3;
  }

  v86 = v114;
  sub_10000217C(v77, &qword_100014A38, &qword_10000C070);
  v87 = [v80 MMCS];
  if (!v87)
  {
    v91 = v96;
    CKLog.getter();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "cache_purge: container.MMCS nil", v94, 2u);
      sub_1000080C4();
    }

    (*(v106 + 8))(v91, v107);
    return (*(v56 + 8))(v109, v55);
  }

  v88 = v87;
  result = [v87 assetCache];
  if (result)
  {
    v89 = result;
    v98();

    return (*(v56 + 8))(v109, v55);
  }

  __break(1u);
  return result;
}

id sub_100002110(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() containerWithAppContainerAccountTuple:a1 deviceContext:a2 sharedContainerTable:a3];

  return v6;
}

uint64_t sub_10000217C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000068C0(a2, a3);
  sub_1000029C4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1000021E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100007DF8(&qword_100014A58, type metadata accessor for URLResourceKey);
  v3 = Set.init(minimumCapacity:)();
  v4 = 0;
  v7[1] = v3;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = v4 + 1;
    sub_100002580(v7, *(a1 + 8 * v4 + 32));

    v4 = v6;
  }

  __break(1u);
}

void sub_1000022DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100002328(void *a1, char a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v8 = v2[6];
  v7 = v2[7];
  v9 = [a1 clearForced:a2 & 1];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 bytesCount];
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!__OFADD__(*v4, v11))
    {
      *v4 += v11;
      v12 = [v10 purgedBytesCount];
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(*v3, v12))
        {
          *v3 += v12;
          v13 = [v10 purgeableBytesCount];
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (!__OFADD__(*v6, v13))
            {
              *v6 += v13;
              v14 = [v10 filesCount];
              if ((v14 & 0x8000000000000000) == 0)
              {
                if (!__OFADD__(*v5, v14))
                {
                  *v5 += v14;
                  v15 = [v10 purgedFilesCount];
                  if ((v15 & 0x8000000000000000) == 0)
                  {
                    if (!__OFADD__(*v8, v15))
                    {
                      *v8 += v15;
                      v16 = [v10 purgeableFilesCount];

                      if ((v16 & 0x8000000000000000) == 0)
                      {
                        if (!__OFADD__(*v7, v16))
                        {
                          *v7 += v16;
                          return;
                        }

LABEL_27:
                        __break(1u);
                        return;
                      }

LABEL_26:
                      __break(1u);
                      goto LABEL_27;
                    }

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1000024A0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = objc_autoreleasePoolPush();
  sub_100008198();
  sub_100001690(v7, v8, v9, v10, v5);

  __objc_autoreleasePoolPop(v6);
}

BOOL sub_100002580(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v17 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v23;
      v19 = a2;
      sub_1000027A8(v19, v8, isUniquelyReferenced_nonNull_native);
      *v23 = v25;
      *a1 = v19;
      return v9 == 0;
    }

    v10 = *(*(v4 + 48) + 8 * v8);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {

      goto LABEL_12;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      break;
    }

    v6 = v8 + 1;
  }

LABEL_12:
  v20 = *(*(v4 + 48) + 8 * v8);
  *a1 = v20;
  v21 = v20;
  return v9 == 0;
}

void sub_100002724(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_100002780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000027A8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000071E0(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_10000760C(v7 + 1);
LABEL_10:
      v13 = *v3;
      v14 = *(*v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for URLResourceKey(0);
        v17 = *(*(v13 + 48) + 8 * a2);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          goto LABEL_19;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_20;
        }

        v15 = a2 + 1;
      }
    }

    result = sub_1000074BC();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t sub_1000029B4()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_100002A24()
{
  sub_10000825C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100002A58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100002A98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002AD0()
{
  v1 = type metadata accessor for URL();
  sub_1000029A0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_100002BB8(int a1)
{
  v1 = 1751607624;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x6D756964654DLL;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 7827276;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100002C1C()
{
  v1 = *&v0[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue];
  sub_10000825C();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100007E40;
  *(v3 + 24) = v2;
  v9[4] = sub_100007E58;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002D78;
  v9[3] = &unk_100010C50;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100002DE8()
{
  sub_1000081A4();
  v26 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1000068C0(&qword_100014A08, &qword_10000C018);
  v18 = sub_100008250(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v25 - v21;
  v23 = type metadata accessor for TaskPriority();
  sub_100002978(v22, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v16;
  v24[5] = v14;
  v24[6] = v12;
  v24[7] = v10;
  v24[8] = v8;
  v24[9] = v6;
  v24[10] = v4;
  v24[11] = v2;
  v24[12] = v26;

  sub_100003844(0, 0, v22, &unk_10000C028, v24);

  sub_100002A0C();
}

uint64_t sub_100002F0C()
{
  sub_1000082DC();
  *(v0 + 72) = v15;
  *(v0 + 56) = v14;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  v6 = sub_1000068C0(&qword_100014A10, &qword_10000C048);
  sub_100008250(v6);
  v8 = *(v7 + 64) + 15;
  *(v0 + 80) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v0 + 88) = v9;
  v10 = *(v9 - 8);
  *(v0 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();

  return (_swift_task_switch)(sub_100003024, 0, 0);
}

uint64_t sub_100003024()
{
  v62 = v0;
  v58 = v0[9];
  v59 = v0[14];
  v56 = v0[7];
  v57 = v0[8];
  v53 = v0[4];
  v54 = v0[5];
  v1 = v0[2];
  v2 = v0[3];
  v55 = v0[6];
  sub_1000068C0(&qword_100014A18, &qword_10000C050);
  v3 = (sub_1000068C0(&qword_100014A20, &qword_10000C058) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10000BFB0;
  v7 = (v6 + v5);
  v8 = (v7 + v3[14]);
  *v7 = 0x79636E65677275;
  v7[1] = 0xE700000000000000;
  *v8 = v1;
  v8[1] = v2;
  v9 = enum case for EventValue.string(_:);
  v10 = type metadata accessor for EventValue();
  sub_1000029C4(v10);
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = (v7 + v4);
  v14 = v3[14];
  *v13 = 0x756F437365747962;
  v13[1] = 0xEA0000000000746ELL;
  *(v13 + v14) = v53;
  (v12)(v7 + v4 + v14, enum case for EventValue.int(_:), v10);
  v15 = v3[14];
  sub_100008284();
  *v16 = 0xD000000000000010;
  v16[1] = v17;
  v18 = sub_1000080A0(v16);
  v12(v18);
  v19 = v3[14];
  sub_100008284();
  *v20 = 0xD000000000000013;
  v20[1] = v21;
  v22 = sub_1000080A0(v20);
  v12(v22);
  v23 = (v7 + 4 * v4);
  v24 = v3[14];
  *v23 = 0x756F4373656C6966;
  v23[1] = 0xEA0000000000746ELL;
  v25 = sub_1000080A0(v23);
  v12(v25);
  v26 = v3[14];
  sub_100008284();
  *v27 = 0xD000000000000010;
  v27[1] = v28;
  v29 = sub_1000080A0(v27);
  v12(v29);
  v30 = v3[14];
  sub_100008284();
  *v31 = 0xD000000000000013;
  v31[1] = v32;
  v33 = sub_1000080A0(v31);
  v12(v33);

  v34 = Dictionary.init(dictionaryLiteral:)();
  v0[15] = v34;
  CKLog.getter();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[14];
  v40 = v0[11];
  v39 = v0[12];
  if (v37)
  {
    sub_10000818C();
    v60 = v38;
    v41 = swift_slowAlloc();
    sub_100008160();
    v42 = swift_slowAlloc();
    v61 = v42;
    *v41 = 136315138;
    v43 = Dictionary.description.getter();
    v45 = sub_100006AE4(v43, v44, &v61);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "reporting asset cache metrics %s", v41, 0xCu);
    sub_100007068(v42);
    sub_1000080C4();

    sub_1000080C4();

    v46 = *(v39 + 8);
    v46(v60, v40);
  }

  else
  {

    v46 = *(v39 + 8);
    v46(v38, v40);
  }

  v0[16] = v46;
  v47 = v0[10];
  type metadata accessor for Reporter();
  v48 = type metadata accessor for TransportConfiguration();
  sub_100002978(v47, 1, 1, v48);
  v49 = async function pointer to static Reporter.report(teamID:eventType:event:transportConfiguration:)[1];
  v50 = swift_task_alloc();
  v0[17] = v50;
  *v50 = v0;
  v50[1] = sub_100003514;
  v51 = v0[10];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(0x51424A3241394B34, 0xEA00000000005832, 0xD000000000000010, 0x800000010000C5B0, v34, v51);
}

uint64_t sub_100003514()
{
  sub_1000082B0();
  v3 = v2;
  v4 = v2[17];
  v5 = v2[15];
  v6 = v2[10];
  v7 = *v1;
  sub_100008150();
  *v8 = v7;
  v3[18] = v0;

  sub_10000217C(v6, &qword_100014A10, &qword_10000C048);

  if (!v0)
  {
    v10 = v3[13];
    v9 = v3[14];
    v11 = v3[10];

    v12 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000036C0, 0, 0);
}

uint64_t sub_1000036C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  CKLog.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    sub_10000818C();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    sub_100008240();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_10000217C(v8, &qword_100014A28, &qword_10000C060);
    sub_1000080B4();

    sub_1000080C4();
  }

  else
  {
    v16 = *(v0 + 144);
  }

  v17 = *(v0 + 96) + 8;
  (*(v0 + 128))(*(v0 + 104), *(v0 + 88));
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 80);

  sub_1000082D0();

  return v21();
}

uint64_t sub_100003844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000068C0(&qword_100014A08, &qword_10000C018);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100007D98(a3, v26 - v11, &qword_100014A08, &qword_10000C018);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1000029D4(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10000217C(v12, &qword_100014A08, &qword_10000C018);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000217C(a3, &qword_100014A08, &qword_10000C018);

      return v24;
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

  sub_10000217C(a3, &qword_100014A08, &qword_10000C018);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_100003B28()
{
  sub_1000081A4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for URL();
  v7 = sub_1000029A0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = [objc_opt_self() defaultContext];
  v13 = [v12 metadataCache];
  (*(v9 + 16))(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v6);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v9 + 32))(v15 + v14, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v3;
  v16[1] = v1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000024A0;
  *(v17 + 24) = v15;
  v20[4] = sub_100002780;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100002724;
  v20[3] = &unk_100010BD8;
  v18 = _Block_copy(v20);
  v19 = v12;

  [v13 enumerateKnownAppContainerAccountTuplesUsingBlock:v18];

  _Block_release(v18);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_100002A0C();
  }
}

void sub_100003D94()
{
  sub_1000081A4();
  v1 = v0;
  v3 = v2;
  v87 = v4;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = sub_1000029A0(v5);
  v85 = v7;
  v86 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_1000029FC();
  v84 = v11 - v10;
  v12 = type metadata accessor for Logger();
  v13 = sub_1000029A0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_1000021D4();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v80 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = sub_1000029A0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_1000029FC();
  v32 = v31 - v30;
  v33 = *(v1 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue);
  *(v31 - v30) = v33;
  (*(v27 + 104))(v31 - v30, enum case for DispatchPredicate.onQueue(_:), v24);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v32, v24);
  if (v33)
  {
    if (*(v1 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_systemAvailableForCacheDelete) == 1 && (v3 & 0xFFFFFFFE) == 2)
    {
      v94 = 0;
      v95 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0;
      v36 = OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume;
      v37 = *(v1 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume);
      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      v41 = [v37 objectForKey:v39];

      v82 = v3;
      if (v41 && (v89 = v41, (sub_100008328(&v88, &v89, &type metadata for CKDMain_Swift.VolumeSizeCache, &type metadata for Swift.AnyObject) & 1) != 0))
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = v88;
        v93 = v88;
      }

      else
      {
        v81 = v36;
        CKLog.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          sub_10000818C();
          v48 = swift_slowAlloc();
          sub_100008160();
          v49 = swift_slowAlloc();
          v89 = v49;
          *v48 = 136315138;
          v50 = sub_100002BB8(v3);
          v80 = v20;
          v52 = sub_100006AE4(v50, v51, &v89);
          v20 = v80;

          *(v48 + 4) = v52;
          v3 = v82;
          sub_100008240();
          _os_log_impl(v53, v54, v55, v56, v57, v58);
          sub_100007068(v49);
          sub_1000080C4();

          sub_1000080C4();
        }

        v59 = (*(v15 + 8))(v23, v12);
        __chkstk_darwin(v59);
        sub_1000080E8();
        sub_100003B28();
        v60 = *(v1 + v81);
        v45 = v93;
        v89 = v93;
        v61 = v60;
        v62 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        URL._bridgeToObjectiveC()(v63);
        v65 = v64;
        v66 = v84;
        Date.init(timeIntervalSinceNow:)();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v85 + 8))(v66, v86);
        [v61 setObject:v62 forKey:v65 expirationDate:isa];
        swift_unknownObjectRelease();

        v44 = v94;
        v42 = v90;
        v43 = v91;
      }

      if (v44 > 0 || v45 > 0 || v43 > 0 || v42 >= 1)
      {
        sub_100002BB8(v3);
        sub_100002DE8();
      }

      CKLog.getter();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        sub_100008160();
        v74 = swift_slowAlloc();
        v89 = v74;
        *v73 = 134218242;
        *(v73 + 4) = v45;
        *(v73 + 12) = 2080;
        v75 = sub_100002BB8(v82);
        v77 = v20;
        v78 = v12;
        v79 = sub_100006AE4(v75, v76, &v89);

        *(v73 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v71, v72, "Found %lld purgeable bytes, urgency: %s", v73, 0x16u);
        sub_100007068(v74);
        sub_1000080C4();

        sub_1000080C4();

        (*(v15 + 8))(v77, v78);
      }

      else
      {

        (*(v15 + 8))(v20, v12);
      }
    }

    sub_100002A0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100004378()
{
  sub_1000081A4();
  v60 = v1;
  v58 = v2;
  v55 = v3;
  v5 = v4;
  swift_getObjectType();
  v6 = type metadata accessor for Date();
  v7 = sub_1000029A0(v6);
  v56 = v8;
  v57 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_1000029FC();
  v13 = v12 - v11;
  v61 = type metadata accessor for Logger();
  v14 = sub_1000029A0(v61);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000021D4();
  v59 = v17 - v18;
  __chkstk_darwin(v19);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_1000029A0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_1000029FC();
  v28 = v27 - v26;
  v29 = *(v0 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue);
  *(v27 - v26) = v29;
  (*(v23 + 104))(v27 - v26, enum case for DispatchPredicate.onQueue(_:), v20);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v28, v20);
  if (v31)
  {
    if (*(v0 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_systemAvailableForCacheDelete) == 1 && (v5 & 0xFFFFFFFE) == 2)
    {
      CKLog.getter();
      v33 = v60;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        sub_100008160();
        v36 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v36 = 134218498;
        *(v36 + 4) = v55;
        *(v36 + 12) = 2080;
        v37 = sub_100002BB8(v5);
        v39 = sub_100006AE4(v37, v38, &v63);

        *(v36 + 14) = v39;
        v33 = v60;
        *(v36 + 22) = 2080;
        *(v36 + 24) = sub_100006AE4(v58, v60, &v63);
        _os_log_impl(&_mh_execute_header, v34, v35, "Purging %lld bytes, urgency: %s, reason: %s", v36, 0x20u);
        sub_1000082A4();
        swift_arrayDestroy();
        sub_1000080C4();

        sub_1000080C4();

        v40 = sub_100008290();
      }

      else
      {

        v40 = sub_100008290();
      }

      v41 = (v34)(v40, v61);
      v63 = 0;
      __chkstk_darwin(v41);
      sub_1000080E8();
      sub_100003B28();
      v42 = *(v0 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume);
      memset(v62, 0, sizeof(v62));
      v43 = v42;
      v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v56 + 8))(v13, v57);
      [v43 setObject:v44 forKey:v47 expirationDate:isa];
      swift_unknownObjectRelease();

      CKLog.getter();

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v51 = 134218754;
        *(v51 + 4) = 0;
        *(v51 + 12) = 2048;
        *(v51 + 14) = 0;
        *(v51 + 22) = 2080;
        v52 = sub_100002BB8(v5);
        v54 = sub_100006AE4(v52, v53, v62);

        *(v51 + 24) = v54;
        *(v51 + 32) = 2080;
        *(v51 + 34) = sub_100006AE4(v58, v33, v62);
        _os_log_impl(&_mh_execute_header, v49, v50, "Purged %lld bytes, still have %lld purgeable bytes, urgency: %s, reason: %s", v51, 0x2Au);
        swift_arrayDestroy();
        sub_1000080C4();

        sub_1000080B4();

        (v34)(v59, v61);
      }

      else
      {

        (v34)(v59, v61);
      }
    }

    sub_100002A0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000496C()
{
  v1 = objc_opt_self();
  v2 = [v1 currentProcess];
  v3 = [v2 processType];

  if (!v3)
  {
    v4 = &OBJC_IVAR____TtC6cloudd13CKDMain_Swift_CACHE_DELETE_LISTENER;
LABEL_5:
    v5 = &v0[*v4];
    v6 = *v5;
    v7 = *(v5 + 1);

    sub_10000825C();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    sub_10000825C();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    sub_10000825C();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v11 = v0;
    v12 = String._bridgeToObjectiveC()();

    v27 = sub_1000067B4;
    v28 = v8;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100005A40;
    v26 = &unk_100010A70;
    v13 = _Block_copy(&aBlock);

    v27 = sub_1000067CC;
    v28 = v9;
    aBlock = _NSConcreteStackBlock;
    sub_10000811C();
    v25 = v14;
    v26 = &unk_100010A98;
    v15 = _Block_copy(&aBlock);

    v27 = sub_100005570;
    v28 = 0;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100005AA8;
    v26 = &unk_100010AC0;
    v16 = _Block_copy(&aBlock);

    v27 = sub_1000067E4;
    v28 = v10;
    aBlock = _NSConcreteStackBlock;
    sub_10000811C();
    v25 = v17;
    v26 = &unk_100010AE8;
    v18 = _Block_copy(&aBlock);

    CacheDeleteRegisterInfoCallbacks();
    _Block_release(v18);
    _Block_release(v16);
    _Block_release(v15);
    _Block_release(v13);

    return;
  }

  if (v3 == 1)
  {
    v4 = &OBJC_IVAR____TtC6cloudd13CKDMain_Swift_CACHE_DELETE_SYSTEM_LISTENER;
    goto LABEL_5;
  }

  _StringGuts.grow(_:)(26);
  v19._object = 0x800000010000C490;
  v19._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v19);
  v20 = [v1 currentProcess];
  [v20 processType];

  type metadata accessor for CKDDaemonProcessType(0);
  _print_unlocked<A, B>(_:_:)();
  sub_100008308("Fatal error", v21, v22, 0, 0xE000000000000000, "cloudd/cloudd_main.swift");
  __break(1u);
}

void sub_100004D2C()
{
  sub_1000081A4();
  v1 = v0;
  v25 = v2;
  v3 = type metadata accessor for Logger();
  v4 = sub_1000029A0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000029FC();
  v7 = sub_100008268();
  v8 = sub_1000029A0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000029FC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  CKLog.getter();
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    sub_10000818C();
    v14 = swift_slowAlloc();
    sub_100008160();
    v15 = swift_slowAlloc();
    v26 = v15;
    sub_1000081FC(4.8149e-34);
    v16 = String.init<A>(describing:)();
    v18 = sub_100006AE4(v16, v17, &v26);

    *(v14 + 4) = v18;
    sub_1000081BC(&_mh_execute_header, v19, v20, "Info dictionary passed to purgeable block has unexpected content: %s");
    sub_100007068(v15);
    sub_1000080C4();

    sub_1000080B4();
  }

  v21 = sub_100008230();
  v22(v21);
  sub_1000068C0(&qword_1000149F0, &qword_10000C000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  sub_1000080D0(inited, "CACHE_DELETE_AMOUNT");
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_100008198();
  Dictionary.init(dictionaryLiteral:)();
  sub_100008198();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *v25 = isa;
  sub_100002A0C();
}

uint64_t sub_1000050C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000070B4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

void sub_100005118()
{
  sub_1000081A4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = sub_1000029A0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000029FC();
  v8 = sub_100008268();
  v9 = sub_1000029A0(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1000029FC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  CKLog.getter();
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    sub_10000818C();
    v15 = swift_slowAlloc();
    sub_100008160();
    v16 = swift_slowAlloc();
    v26 = v16;
    sub_1000081FC(4.8149e-34);
    v17 = String.init<A>(describing:)();
    v19 = sub_100006AE4(v17, v18, &v26);

    *(v15 + 4) = v19;
    sub_1000081BC(&_mh_execute_header, v20, v21, "Info dictionary passed to purge block has unexpected content: %s");
    sub_100007068(v16);
    sub_1000080C4();

    sub_1000080B4();
  }

  v22 = sub_100008230();
  v23(v22);
  sub_1000068C0(&qword_1000149F0, &qword_10000C000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  sub_1000080D0(inited, "CACHE_DELETE_AMOUNT");
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_100008198();
  Dictionary.init(dictionaryLiteral:)();
  sub_100008198();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *v3 = isa;
  sub_100002A0C();
}

uint64_t sub_100005570()
{
  v0 = type metadata accessor for Logger();
  v1 = sub_1000029A0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_1000029FC();
  v8 = v7 - v6;
  CKLog.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Purge cancel requested. Ignoring.", v11, 2u);
    sub_1000080C4();
  }

  return (*(v3 + 8))(v8, v0);
}

void sub_10000568C()
{
  sub_1000081A4();
  v1 = v0;
  v25 = v2;
  v3 = type metadata accessor for Logger();
  v4 = sub_1000029A0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000029FC();
  v7 = sub_100008268();
  v8 = sub_1000029A0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000029FC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  CKLog.getter();
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    sub_10000818C();
    v14 = swift_slowAlloc();
    sub_100008160();
    v15 = swift_slowAlloc();
    v26 = v15;
    sub_1000081FC(4.8149e-34);
    v16 = String.init<A>(describing:)();
    v18 = sub_100006AE4(v16, v17, &v26);

    *(v14 + 4) = v18;
    sub_1000081BC(&_mh_execute_header, v19, v20, "Info dictionary passed to periodic block has unexpected content: %s");
    sub_100007068(v15);
    sub_1000080C4();

    sub_1000080B4();
  }

  v21 = sub_100008230();
  v22(v21);
  sub_1000068C0(&qword_1000149F0, &qword_10000C000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  sub_1000080D0(inited, "CACHE_DELETE_AMOUNT");
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_100008198();
  Dictionary.init(dictionaryLiteral:)();
  sub_100008198();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *v25 = isa;
  sub_100002A0C();
}

uint64_t sub_100005A40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v8 = v6(a2, v7);

  return v8;
}

uint64_t sub_100005AA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100005B34()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

void sub_100005BB4()
{
  sub_1000081A4();
  v1 = type metadata accessor for Logger();
  v2 = sub_1000029A0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1000029FC();
  v5 = type metadata accessor for XPCListener.InitializationOptions();
  v6 = sub_100008250(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1000029FC();
  v9 = objc_opt_self();
  v10 = [v9 currentProcess];
  v11 = [v10 processType];

  v12 = [v9 currentProcess];
  v13 = [v12 isSystemInstalledBinary];

  if (!v11 || v11 == 2 || v11 == 1)
  {
    if ((v13 & 1) == 0)
    {
      sub_100005B34();
    }

    static XPCListener.InitializationOptions.none.getter();
    v16 = type metadata accessor for XPCListener();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
    v20 = *(v0 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cloudAssetsServiceListener);
    *(v0 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cloudAssetsServiceListener) = v19;

    sub_100002A0C();
  }

  else
  {
    sub_100008308("Fatal error", v14, v15, 0xD000000000000012, 0x800000010000C3F0, "cloudd/cloudd_main.swift");
    __break(1u);
  }
}

uint64_t sub_100005EB4()
{
  type metadata accessor for Dispatcher();
  static Dispatcher.shared.getter();
  Dispatcher.dispatchRequest(_:)();
}

void sub_100006004()
{
  sub_1000081A4();
  v1 = v0;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_1000029A0(v22);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1000029FC();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = sub_1000029C4(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_1000029FC();
  v14 = type metadata accessor for DispatchQoS();
  v15 = sub_100008250(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000029FC();
  v21 = OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue;
  sub_100007E80(0, &qword_100014A68, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100007DF8(&qword_100014A70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000068C0(&qword_100014A78, &qword_10000C088);
  sub_100007EC0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *&v0[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_systemAvailableForCacheDelete] = 0;
  v18 = &v0[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_CACHE_DELETE_LISTENER];
  *v18 = 0xD00000000000001DLL;
  *(v18 + 1) = 0x800000010000C600;
  v19 = &v0[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_CACHE_DELETE_SYSTEM_LISTENER];
  *v19 = 0xD000000000000024;
  *(v19 + 1) = 0x800000010000C620;
  *&v0[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cloudAssetsServiceListener] = 0;
  v20 = OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume;
  *&v1[v20] = [objc_allocWithZone(CKExpiringCache) init];
  v23.receiver = v1;
  v23.super_class = type metadata accessor for CKDMain_Swift();
  objc_msgSendSuper2(&v23, "init");
  sub_100002A0C();
}

id sub_1000062C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDMain_Swift();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006390()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10000641C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000645C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000064B8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10000653C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000065B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100006638@<X0>(void *a1@<X8>)
{
  result = sub_100008024();
  *a1 = result;
  return result;
}

uint64_t sub_100006660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100006390();
}

uint64_t sub_10000666C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000066B4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000066E4(uint64_t a1)
{
  v2 = sub_100007DF8(&qword_100014A58, type metadata accessor for URLResourceKey);
  v3 = sub_100007DF8(&qword_100014AB8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000067FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue);
  sub_1000068C0(&qword_1000149E8, &qword_10000BFF8);
  OS_dispatch_queue.sync<A>(execute:)();

  return v3;
}

uint64_t sub_100006880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006908(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006A00;

  return v7(a1);
}

uint64_t sub_100006A00()
{
  sub_1000082DC();
  sub_1000082B0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100008150();
  *v4 = v3;

  sub_1000082D0();

  return v5();
}

uint64_t sub_100006AE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006BA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000079E0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100007068(v11);
  return v7;
}

unint64_t sub_100006BA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006CA8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100006CA8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006CF4(a1, a2);
  sub_100006E0C(&off_1000109D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006CF4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100006EF0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100006E0C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100006F60(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100006EF0(uint64_t a1, uint64_t a2)
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

  sub_1000068C0(&qword_100014A00, &qword_10000C010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100006F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000068C0(&qword_100014A00, &qword_10000C010);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100007068(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000070B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000712C(a1, a2, v6);
}

unint64_t sub_10000712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000071E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000068C0(&qword_100014A60, &qword_10000C080);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v29 = v2;
  v30 = v3;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_100007458(0, (v28 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = Hasher._finalize()();

    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    v3 = v30;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100007458(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10000BFD0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_1000074BC()
{
  v1 = v0;
  sub_1000068C0(&qword_100014A60, &qword_10000C080);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

uint64_t sub_10000760C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000068C0(&qword_100014A60, &qword_10000C080);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v19 = v17;
        String.hash(into:)();
        v20 = Hasher._finalize()();

        v21 = -1 << *(v6 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v6 + 48) + 8 * v24) = v19;
        ++*(v6 + 16);
        v3 = v30;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v13 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10000785C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000070B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000068C0(&qword_1000149F8, &qword_10000C008);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_1000070B4(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100007998(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_100007998(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000079E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007A98()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v10 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100007B78;

  return sub_100002F0C();
}

uint64_t sub_100007B78()
{
  sub_1000082DC();
  sub_1000082B0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100008150();
  *v4 = v3;

  sub_1000082D0();

  return v5();
}

uint64_t sub_100007C58()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_10000816C(v4);

  return v6(v5);
}

uint64_t sub_100007CF8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_10000816C(v4);

  return v6(v5);
}

uint64_t sub_100007D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000068C0(a3, a4);
  sub_1000029C4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100007DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007E58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100007E80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100007EC0()
{
  result = qword_100014A80;
  if (!qword_100014A80)
  {
    sub_100007F24(&qword_100014A78, &qword_10000C088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014A80);
  }

  return result;
}

uint64_t sub_100007F24(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

NSString sub_100008024()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1000080D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000013;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_100008130@<X0>(uint64_t a1@<X8>)
{

  return sub_1000050C8(0xD000000000000013, a1 | 0x8000000000000000, v1);
}

uint64_t sub_10000816C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_1000081BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000081DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_10000785C(v4, 0xD000000000000013, a3, a4);
}

id sub_1000081FC(float a1)
{
  *v1 = a1;
  *(v3 - 144) = v2;
  type metadata accessor for CFDictionary(0);

  return v2;
}

uint64_t sub_100008268()
{

  return type metadata accessor for URL();
}

uint64_t sub_1000082D0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000082E8()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);

  return URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_100008308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, a4, a5, a6, 24, 2);
}

uint64_t sub_100008328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return _swift_dynamicCast(a1, a2, a4 + 8, a3, 6);
}

void sub_100008394(id a1)
{
  qword_100014F70 = objc_alloc_init(CKDMain);

  _objc_release_x1();
}

void sub_1000085D4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = _os_activity_create(&_mh_execute_header, "com.apple.notifyd.matching", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    if (string)
    {
      if (!strcasecmp("com.apple.Preferences.ResetPrivacyWarningsNotification", string))
      {
        v5 = +[CKDPrivacyManager sharedManager];
        [v5 resetPrivacySettingsWithCompletionHandler:&stru_100010DB8];
LABEL_10:

        goto LABEL_11;
      }

      if (!strcasecmp("com.apple.Preferences.ChangedRestrictionsEnabledStateNotification", string) || !strcasecmp("com.apple.managedconfiguration.effectivesettingschanged", string) || !strcasecmp("com.apple.ManagedConfiguration.profileListChanged", string))
      {
        v5 = +[CKDAccountNotifier sharedNotifier];
        [v5 postAccountChangedNotificationToClients];
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  os_activity_scope_leave(&v6);
}

void sub_10000875C(id a1, NSError *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finished resetting privacy settings with error: %@", &v4, 0xCu);
  }
}

void sub_100008854(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = _os_activity_create(&_mh_execute_header, "com.apple.distnoted.matching", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v3, &v10);
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    v5 = xpc_dictionary_get_value(v2, "UserInfo");
    if (v5)
    {
      v6 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v6 = 0;
    }

    if (!strcmp(string, "com.apple.cdp.manatee-availability"))
    {
      v7 = +[CKDLogicalDeviceContext defaultContext];
      v8 = [v7 accountDataSecurityObserver];
      v9 = [v6 objectForKeyedSubscript:@"com.apple.cdp.manatee-state"];
      [v8 handleManateeStatusUpdateNotificationWithAvailability:v9];
    }
  }

  os_activity_scope_leave(&v10);
}

void sub_100008A54(id a1, NSString *a2, NSString *a3, int64_t a4, int64_t a5)
{
  v6 = a2;
  v7 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notifying clients of authorization change", v10, 2u);
  }

  +[CKAccountInfo invalidateCachedAccountInfo];
  v9 = CKNotificationKey();
  notify_post([v9 UTF8String]);
}

void sub_100008B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = CKGetGlobalQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100008C9C;
    v6[3] = &unk_100010E40;
    v7 = v3;
    v8 = *(a1 + 32);
    dispatch_async(v4, v6);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "No background tasks need to be cleaned up.", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

intptr_t sub_100008C9C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v7 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Cleaning up background tasks for configuration %@", buf, 0xCu);
        }

        v8 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v6];
        if (v8)
        {
          v9 = [NSURLSession sessionWithConfiguration:v8];
          [v9 invalidateAndCancel];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v3);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_100008E70(void *a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  switch(a4)
  {
    case 4:
      if (!a3)
      {
        break;
      }

      goto LABEL_10;
    case 3:
      if (!a3)
      {
        break;
      }

      if ([v9 isEqualToString:kCKPackageDirectoryName])
      {
        goto LABEL_15;
      }

LABEL_10:
      v11 = kCKFrameworkCachesDirectoryName;
      goto LABEL_11;
    case 1:
      if (a3 & 1) == 0 && (([v9 hasPrefix:a1[4]] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", a1[5])))
      {
        goto LABEL_15;
      }

      v11 = a1[6];
LABEL_11:
      if (([v9 isEqualToString:v11] & 1) == 0)
      {
        break;
      }

LABEL_15:
      v12 = 1;
      goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

id sub_100009A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 && a3)
  {
    return [v3 expungeDataForAccountID:a2];
  }

  else
  {
    return [v3 expungeOldData];
  }
}

id *sub_100009A24(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] expungeOperationInfoForDeletedAccountID:a2];
  }

  return result;
}

uint64_t start(uint64_t a1, uint64_t a2)
{
  signal(15, 0);
  v4 = dispatch_get_global_queue(25, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);

  if (v5)
  {
    dispatch_source_set_event_handler(v5, &stru_100010F18);
    dispatch_activate(v5);
  }

  context = objc_autoreleasePoolPush();
  v6 = +[CKSignpost signpost];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 log];
    v9 = [v7 identifier];
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Launch", "", buf, 2u);
      }
    }
  }

  +[CKDXPCConnectionManager clouddStarted];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v59 = _os_activity_create(&_mh_execute_header, "cloudd_main", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v59, &state);
  setCKRunningInClientProcess();
  [CKDDaemonProcess deriveCurrentProcessWithArgC:a1 argv:a2];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = CKBuildVersion();
    v13 = CKProductName();
    v14 = getuid();
    *buf = 138412802;
    v63 = v12;
    v64 = 2112;
    v65 = v13;
    v66 = 1024;
    v67 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Welcome to cloudd, running on version %@ (%@). We are running as user %d. Enjoy your stay!", buf, 0x1Cu);
  }

  v15 = +[CKBehaviorOptions sharedOptions];
  v16 = [v15 isAppleInternalInstall];

  if (v16)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Device is an AppleInternal install", buf, 2u);
    }
  }

  v18 = +[CKBehaviorOptions sharedOptions];
  v19 = [v18 sandboxCloudD];

  if (v19)
  {
    v20 = +[CKDDaemonProcess currentProcess];
    v21 = [v20 processType];
    if (!v21 || (+[CKDDaemonProcess currentProcess](CKDDaemonProcess, "currentProcess"), v19 = objc_claimAutoreleasedReturnValue(), [v19 processType] == 1))
    {
      v23 = +[CKDDaemonProcess currentProcess];
      v24 = [v23 isSystemInstalledBinary];

      if (v21)
      {
      }

      if ((v24 & 1) == 0)
      {
        v25 = @"com.apple.cloudd.debug";
        goto LABEL_30;
      }
    }

    else
    {
    }

    v25 = @"com.apple.cloudd";
LABEL_30:
    if (CKIsRunningInSyncBubble())
    {
      v26 = +[CKDDaemonProcess currentProcess];
      v27 = [v26 processType] == 0;

      if (!v27)
      {
        v56 = +[NSAssertionHandler currentHandler];
        v57 = [NSString stringWithUTF8String:"void get_in_the_sandbox(void)"];
        v58 = +[CKDDaemonProcess currentProcess];
        [v56 handleFailureInFunction:v57 file:@"cloudd_main.m" lineNumber:98 description:{@"Didn't expect to run process type %ld in the sync bubble", objc_msgSend(v58, "processType")}];
      }

      v25 = [NSString stringWithFormat:@"com.apple.cloudd.%u", getuid()];
    }

    v28 = v25;
    [(__CFString *)v25 UTF8String];
    _set_user_dir_suffix();
    bzero(buf, 0x400uLL);
    confstr(65537, buf, 0x400uLL);

    goto LABEL_35;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v22 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "cloudd is not sandboxed", buf, 2u);
  }

LABEL_35:
  v29 = +[CKBehaviorOptions sharedOptions];
  v30 = [v29 CFNetworkLogging];

  if (v30)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Enabling CFNetwork diagnostics", buf, 2u);
    }

    setenv("CFNETWORK_DIAGNOSTICS", "2", 1);
  }

  if (CKIsRunningInSyncBubble())
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v32 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "cloudd is running in the sync bubble", buf, 2u);
    }
  }

  v33 = +[CKDDaemonProcess currentProcess];
  if (![v33 processType])
  {
    v34 = +[UMUserManager sharedManager];
    v35 = [v34 isSharedIPad];

    if (!v35)
    {
      goto LABEL_50;
    }

    v33 = +[UMUserManager sharedManager];
    v36 = +[CKDMain sharedMain];
    [v33 registerUserSyncStakeholder:v36 withMachServiceName:kCKUserManagerMachServiceName];
  }

LABEL_50:
  v37 = +[CKDMain sharedMain];
  if (v7)
  {
    v38 = [v7 log];
    v39 = [v7 identifier];
    if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, v39, "Launch", "Starting services", buf, 2u);
    }
  }

  v40 = +[CKDXPCConnectionManager sharedConnectionManager];
  [v40 activate];

  v41 = +[CKDMain sharedMain];
  v42 = [v41 swiftMain];
  [v42 startCloudAssetsService];

  if (objc_opt_respondsToSelector())
  {
    v43 = +[C2ReportMetrics useCloudTelemetryService];
  }

  else
  {
    v43 = _os_feature_enabled_impl();
  }

  if (v43)
  {
    v44 = +[CKDMain sharedMain];
    v45 = [v44 swiftMain];
    [v45 setupCloudTelemetryXpcServiceActivities];
  }

  if (v7)
  {
    v46 = [v7 log];
    v47 = [v7 identifier];
    if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v47, "Launch", "Started services", buf, 2u);
    }
  }

  v48 = +[CKDDaemonProcess currentProcess];
  if ([v48 isSystemInstalledBinary])
  {
    v49 = +[CKDDaemonProcess currentProcess];
    v50 = [v49 processType] == 2;

    if (v50)
    {
      goto LABEL_69;
    }

    v48 = +[CKDMain sharedMain];
    v51 = [v48 swiftMain];
    [v51 registerWithCacheDelete];
  }

LABEL_69:
  if (v7)
  {
    v52 = [v7 log];
    v53 = [v7 identifier];
    if ((v53 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, v53, "Launch", "", buf, 2u);
    }
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(context);
  v54 = +[NSRunLoop mainRunLoop];
  [v54 run];

  return 0;
}

void sub_10000A4E8(id a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v1 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Received SIGTERM", v2, 2u);
  }
}