void *sub_10002DDD8()
{
  v1 = v0;
  sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001DD04(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001DCF4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10002DF90(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000042B4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10002E0EC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v39 = 0;
  v12 = [v10 volumeMountPointForFile:v11 error:&v39];

  v13 = v39;
  if (!v12)
  {
    v27 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a2;
  }

  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = v13;

  v17 = [a1 volumeMountPoint];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (a2 == v18 && v15 == v20)
  {

    v23 = 0;
    if (a5)
    {
LABEL_7:

      sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
      swift_allocBox();

      FilePath.init(_:)();
      v24 = objc_allocWithZone(type metadata accessor for MBRestoreDepot());

      v26 = sub_100028F00(v25, v23 & 1, 0);
      if (v5)
      {
      }

      else
      {
        a2 = v26;
        v39 = 0;
        v40 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v39 = 0xD000000000000016;
        v40 = 0x80000001002BC5F0;
        v31 = [a2 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35._countAndFlagsBits = v32;
        v35._object = v34;
        String.append(_:)(v35);

        v36._object = 0x80000001002BC610;
        v36._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v36);
        v37._countAndFlagsBits = a4;
        v37._object = a5;
        String.append(_:)(v37);
        sub_10003F2C0(v39, v40, 0x203D746F7065643DLL, 0xE800000000000000);
      }

      return a2;
    }
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v22 ^ 1;
    if (a5)
    {
      goto LABEL_7;
    }
  }

  if (qword_10041DEE8 != -1)
  {
    swift_once();
  }

  v28 = off_10041EE20;
  v29 = *(off_10041EE20 + 2);
  os_unfair_lock_lock(*(v29 + 16));
  swift_beginAccess();
  sub_10002918C(v28 + 3, a2, v15, v23 & 1, &v38);
  swift_endAccess();
  if (!v5)
  {
    a2 = v38;
  }

  os_unfair_lock_unlock(*(v29 + 16));

  return a2;
}

id sub_10002E494(unint64_t a1)
{
  result = sub_100005778(a1);
  if (v1)
  {
    _StringGuts.grow(_:)(32);

    v4._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v4);

    sub_10003F2D8(v1, a1, 0xD00000000000001ELL, 0x80000001002BC5D0, 0x203D746F7065643DLL, 0xE800000000000000);

    swift_willThrow();
  }

  return result;
}

unint64_t sub_10002E56C()
{
  result = qword_10041EE88;
  if (!qword_10041EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE88);
  }

  return result;
}

unint64_t sub_10002E5C0()
{
  result = qword_10041EE90;
  if (!qword_10041EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE90);
  }

  return result;
}

uint64_t sub_10002E614(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002E668(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_10002E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = String.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      a2 = 15;
    }

    else
    {
      a2 = v6;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_10002E7C0()
{
  result = qword_10041EE98;
  if (!qword_10041EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE98);
  }

  return result;
}

id sub_10002E980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MBTapToRadarCore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002E9D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = a6;
  v88 = a8;
  v84 = a7;
  v85._countAndFlagsBits = a1;
  v81 = a3;
  v82 = a5;
  v85._object = a2;
  v86 = a4;
  v8 = sub_1000042B4(&qword_10041E480, &qword_1002B8FA8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v90 = v73 - v10;
  v11 = type metadata accessor for URL();
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  v13 = __chkstk_darwin(v11);
  v79 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v73 - v15;
  v91 = type metadata accessor for URLQueryItem();
  v17 = *(v91 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v91);
  v83 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = v73 - v22;
  __chkstk_darwin(v21);
  v80 = v73 - v24;
  v25 = sub_1000042B4(&qword_10041EEE8, &qword_1002B9920);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v73 - v27;
  v29 = type metadata accessor for URLComponents();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(string:)();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_10001A7A0(v28, &qword_10041EEE8, &qword_1002B9920);
    sub_10003F97C(1, 0xD000000000000018, 0x80000001002BCAA0, 0x203D7274743DLL, 0xE600000000000000);
    return swift_willThrow();
  }

  else
  {
    v35 = *(v30 + 32);
    v78 = v33;
    v35(v33, v28, v29);
    v36 = MBBuildVersion();
    v76 = v16;
    v77 = v11;
    v74 = v29;
    v75 = v30;
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v40 = 0xE300000000000000;
      v38 = 4144959;
    }

    v41 = v23;
    sub_1000042B4(&qword_10041E828, qword_1002B9360);
    v42 = v17;
    v43 = *(v17 + 72);
    v44 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1002B98F0;
    v92 = v38;
    v93 = v40;
    v73[1] = v40;

    v46._countAndFlagsBits = 8250;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    String.append(_:)(v85);
    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    if (v86)
    {
      v47 = v80;
      URLQueryItem.init(name:value:)();
      v49 = *(v45 + 16);
      v48 = *(v45 + 24);
      if (v49 >= v48 >> 1)
      {
        v45 = sub_10000F4C8(v48 > 1, v49 + 1, 1, v45);
      }

      v50 = v75;
      *(v45 + 16) = v49 + 1;
      (*(v42 + 32))(v45 + v44 + v49 * v43, v47, v91);
    }

    else
    {
      v50 = v75;
    }

    v51 = v89;
    if (v87)
    {
      URLQueryItem.init(name:value:)();
      v53 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v53 >= v52 >> 1)
      {
        v45 = sub_10000F4C8(v52 > 1, v53 + 1, 1, v45);
      }

      *(v45 + 16) = v53 + 1;
      (*(v42 + 32))(v45 + v44 + v53 * v43, v41, v91);
    }

    if (v88)
    {
      v54 = v83;
      URLQueryItem.init(name:value:)();
      v56 = *(v45 + 16);
      v55 = *(v45 + 24);
      if (v56 >= v55 >> 1)
      {
        v45 = sub_10000F4C8(v55 > 1, v56 + 1, 1, v45);
      }

      *(v45 + 16) = v56 + 1;
      (*(v42 + 32))(v45 + v44 + v56 * v43, v54, v91);
    }

    v57 = v78;
    URLComponents.queryItems.setter();
    v58 = v90;
    URLComponents.url.getter();
    v59 = v77;
    v60 = (*(v51 + 48))(v58, 1, v77);
    v61 = v76;
    if (v60 == 1)
    {

      sub_10001A7A0(v58, &qword_10041E480, &qword_1002B8FA8);

      sub_10003F97C(1, 0xD00000000000001CLL, 0x80000001002BCAE0, 0x203D7274743DLL, 0xE600000000000000);
      swift_willThrow();
      return (*(v50 + 8))(v57, v74);
    }

    else
    {
      v62 = v79;
      URL.absoluteURL.getter();
      v63 = v51;
      v64 = *(v51 + 8);
      v64(v58, v59);
      (*(v63 + 32))(v61, v62, v59);
      v92 = 0;
      v93 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v92 = 0xD000000000000010;
      v93 = 0x80000001002BCB00;
      sub_10002F40C();
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v65);

      sub_10003F2C0(v92, v93, 0x203D7274743DLL, 0xE600000000000000);

      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v66 = result;

        URL._bridgeToObjectiveC()(v67);
        v69 = v68;
        v92 = 0;
        v70 = [v66 openURL:v68 configuration:0 error:&v92];

        if (v70)
        {
          v71 = v92;
        }

        else
        {
          v72 = v92;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v64(v61, v59);
        return (*(v50 + 8))(v78, v74);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_10002F40C()
{
  result = qword_10041EEF0;
  if (!qword_10041EEF0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EEF0);
  }

  return result;
}

uint64_t sub_10002F464()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10002F4CC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10002F570()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_10002F5F0()
{
  sub_10002F570();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002F88C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10002F9B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10002F88C;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10002FC14()
{
  v1 = OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager;
  v2 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager);
  }

  else
  {
    v4 = [objc_allocWithZone(MBCKEncryptionManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100030234(char *result, uint64_t a2, void *a3)
{
  v3 = &result[*a3];
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v6 = result;
    v4(0);

    return sub_10003238C(v4);
  }

  return result;
}

void sub_1000302B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager) = 0;

  v6 = sub_10003E7CC(&_swiftEmptyArrayStorage);
  v7 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID) = v6;

  v8 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction) = 0;
  swift_unknownObjectRelease();
  v9 = (v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler);
  v10 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler);
  if (v10)
  {
    v11 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    v10(0);
    sub_10003238C(v10);
  }

  sub_1000303EC();
}

void sub_1000303EC()
{
  v1 = OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan;
  v2 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    _StringGuts.grow(_:)(34);

    v5 = [v4 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    sub_10003F2C0(0xD000000000000020, 0x80000001002BD4B0, 0xD000000000000010, 0x80000001002BD3B0);

    v10 = *(v3 + v1);
    *(v3 + v1) = 0;

    sub_1000320FC();
  }

  else
  {
    sub_10003F2C0(0xD000000000000019, 0x80000001002BD490, 0xD000000000000010, 0x80000001002BD3B0);
  }
}

uint64_t sub_1000305C8()
{
  if (*(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_serviceState) == 3)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_engines);
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          [v7 backupReason];
          IsManual = MBBackupReasonIsManual();

          if (IsManual)
          {
            v9 = 1;
LABEL_16:

            return v9;
          }
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v9 = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }

  return 0;
}

id sub_100030710()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_backup] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_initialMegaBackup] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_nextBackupSize] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restore] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan] = 0;
  v0[OBJC_IVAR____TtC7backupd14MBPersonaState_isHoldingWorkAssertionForBackgroundRestore] = 0;
  v2 = &v0[OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC7backupd14MBPersonaState_unboostManualBackupHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction] = 0;
  v4 = OBJC_IVAR____TtC7backupd14MBPersonaState_restoreQosByContext;
  *&v0[v4] = [objc_opt_self() weakToStrongObjectsMapTable];
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID] = &_swiftEmptyDictionarySingleton;
  v0[OBJC_IVAR____TtC7backupd14MBPersonaState_finishedAppRestores] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_serviceState] = 0;
  v5 = OBJC_IVAR____TtC7backupd14MBPersonaState_serviceGroup;
  *&v0[v5] = dispatch_group_create();
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_engines] = &_swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC7backupd14MBPersonaState_enginesByContext;
  *&v0[v6] = [objc_allocWithZone(NSMapTable) init];
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_delayedRestoreTimer] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTTRTimer] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

void *sub_100030A98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_10002C438(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = v12;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(type metadata accessor for MBPersonaState()) init];
    swift_beginAccess();

    v13 = v14;
    v15 = *(v3 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    sub_10002D70C(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v8) = v20;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v6 + 16));

  v17 = *&v13[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession];
  v18 = v17;

  return v17;
}

id sub_100030CDC(void *a1)
{
  v2 = v1;
  v3 = [a1 persona];
  v4 = [v3 personaIdentifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v2 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16) && (v12 = sub_10002C438(v5, v7), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v16 = [objc_allocWithZone(type metadata accessor for MBPersonaState()) init];
    swift_beginAccess();
    v15 = v16;
    v17 = *(v2 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + v10);
    *(v2 + v10) = 0x8000000000000000;
    sub_10002D70C(v15, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v2 + v10) = v20;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v8 + 16));

  return v15;
}

void *sub_100030ED8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_10000F724(*(v4 + 16), 0);
  v7 = sub_10000FE28(&v9, v6 + 4, v5, v4);

  sub_1000113FC();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = &_swiftEmptyArrayStorage;
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return v6;
}

id sub_100030FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_10002C438(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = v12;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(type metadata accessor for MBPersonaState()) init];
    swift_beginAccess();

    v13 = v14;
    v15 = *(v3 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    sub_10002D70C(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v8) = v18;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v6 + 16));

  return v13;
}

void sub_1000312B8(void *a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  sub_1000303EC();
  if (!v2)
  {
    v28[0] = v1;
    v28[1] = 0;
    v10 = [a1 restoreSnapshotsDatabaseDirectory];
    v29 = v10;
    v30 = v10;
    v11 = v10;
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    v12 = v10;
    v13 = String._bridgeToObjectiveC()();
    v14 = MBSnapshotDirectoryPath(v11, v13);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    FilePath.init(_:)();
    FilePath.appending(_:)();
    FilePath.string.getter();
    (*(v5 + 8))(v9, v4);
    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    v31 = 0;
    v18 = v29;
    v19 = [v15 createDatabaseAt:v16 restoreSnapshotsDir:v29 snapshotUUID:v17 error:&v31];

    v20 = v31;
    if (v19)
    {
      v21 = *(v28[0] + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
      *(v28[0] + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan) = v19;
      v22 = v20;

      v23 = String._bridgeToObjectiveC()();
      v31 = 0;
      v24 = v30;
      v25 = MBCreateSymlinksForPendingAndLatestSnapshots(v30, 0, v23, &v31);

      v26 = v31;
      if (v31)
      {
        if ((v25 & 1) == 0)
        {
          swift_willThrow();
          v26;
        }
      }
    }

    else
    {
      v27 = v31;

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }
  }
}

void *sub_100031654(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = *(v3 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
  if (v12)
  {
    if (a3)
    {
      v32 = v12;
      v13 = [a1 restoreSnapshotsDatabaseDirectory];
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      v14 = String._bridgeToObjectiveC()();
      v15 = MBSnapshotDirectoryPath(v13, v14);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      FilePath.init(_:)();
      FilePath.appending(_:)();
      v16 = FilePath.string.getter();
      v18 = v17;
      (*(v7 + 8))(v11, v6);
      v19 = v32;
      v20 = [v32 path];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v21 == v16 && v23 == v18;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        v33 = 0;
        v34 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v27._countAndFlagsBits = 0xD000000000000011;
        v27._object = 0x80000001002BD410;
        String.append(_:)(v27);
        v28._countAndFlagsBits = v16;
        v28._object = v18;
        String.append(_:)(v28);

        v29._countAndFlagsBits = 0xD000000000000022;
        v29._object = 0x80000001002BD430;
        String.append(_:)(v29);
        v30._countAndFlagsBits = v21;
        v30._object = v23;
        String.append(_:)(v30);

        sub_10003F97C(1, v33, v34, 0xD000000000000010, 0x80000001002BD3B0);

        swift_willThrow();
      }
    }

    else
    {
      v25 = v12;
    }
  }

  return v12;
}

void sub_100031978(void *a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_1000303EC();
  if (!v2)
  {
    v25 = v1;
    v26 = 0;
    v10 = [a1 restoreSnapshotsDatabaseDirectory];
    v11 = v10;
    v27 = v10;
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    v12 = v10;
    v13 = String._bridgeToObjectiveC()();
    v14 = MBSnapshotDirectoryPath(v11, v13);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    FilePath.init(_:)();
    FilePath.appending(_:)();
    FilePath.string.getter();
    (*(v5 + 8))(v9, v4);
    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    v28 = 0;
    v18 = v27;
    v19 = [v15 openDatabaseAt:v16 restoreSnapshotsDir:v27 snapshotUUID:v17 error:&v28];

    v20 = v28;
    if (v19)
    {
      v21 = *(v25 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
      *(v25 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan) = v19;
      v22 = v20;
      v19;
    }

    else
    {
      v23 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_100031E34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_100031654(a1, a2, a3);
  if (!v4)
  {
    v7 = v6;
    if (v6)
    {
      _StringGuts.grow(_:)(24);

      v16[0] = 0xD000000000000016;
      v16[1] = 0x80000001002BD3F0;
      v8 = [v7 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      String.append(_:)(v12);

      sub_10003F2C0(0xD000000000000016, 0x80000001002BD3F0, 0xD000000000000010, 0x80000001002BD3B0);

      v13 = *(v5 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
      *(v5 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan) = 0;

      v16[0] = 0;
      if ([v7 close:v16])
      {
        v14 = v16[0];
      }

      else
      {
        v15 = v16[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      sub_10003F97C(1, 0xD00000000000001ELL, 0x80000001002BD3D0, 0xD000000000000010, 0x80000001002BD3B0);
      swift_willThrow();
    }
  }
}

uint64_t sub_100032030(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t))
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = a1;
  a6(v12, v9, v11);

  return 1;
}

void sub_1000320FC()
{
  v17 = 0;
  if ([v0 close:&v17])
  {
    v1 = v17;
  }

  else
  {
    v2 = v17;
    v3 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10003F5B0(v3, 0xD00000000000001CLL, 0x80000001002BD4E0, 0xD000000000000010, 0x80000001002BD3B0);
  }

  v4 = [objc_opt_self() defaultManager];
  v5 = [v0 restoreSnapshotsDirectoryRoot];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v17 = 0;
  v9 = [v4 mb_moveAsideItemAtPath:v5 error:&v17];

  v10 = v17;
  if (v9 && (v17 = 0, v11 = v10, v12 = [v4 mb_markAsPurgeableItemAtPath:v9 error:&v17], v9, v10 = v17, (v12 & 1) != 0))
  {
    v13 = v17;
  }

  else
  {
    v14 = v10;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v17 = 0xD00000000000002BLL;
    v18 = 0x80000001002BD500;
    v16._countAndFlagsBits = v6;
    v16._object = v8;
    String.append(_:)(v16);

    sub_10003F5B0(v15, v17, v18, 0xD000000000000010, 0x80000001002BD3B0);

    swift_willThrow();
  }
}

uint64_t sub_10003238C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003239C()
{
  result = qword_10041F158;
  if (!qword_10041F158)
  {
    sub_100011314(255, &qword_10041EEA8, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041F158);
  }

  return result;
}

uint64_t sub_100032404()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003247C()
{
  if (*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v2 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    _StringGuts.grow(_:)(23);
    _print_unlocked<A, B>(_:_:)();
    v3._object = 0x80000001002BB3C0;
    v3._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v3);
    sub_10003F7B8(0, 0xE000000000000000, v1, v2);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed) = 1;
    v5 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage);
    v11 = 0;
    v6 = [v5 disposeWithError:&v11];
    v7 = v11;
    if (v6)
    {
      v8 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath);
      *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath) = 0xF000000000000007;
      v9 = v7;
      return sub_1000112FC(v8);
    }

    else
    {
      v10 = v11;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }
}

uint64_t sub_1000325F8(void *a1)
{
  result = sub_100033F34(a1);
  if (!v2)
  {
    v5 = result;
    v6 = objc_opt_self();
    sub_100027C28(v5);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 restore:a1 directoryAtPath:v7 settingDataProtection:0 settingOwnershipAndFlags:0];

    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v10 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
      _StringGuts.grow(_:)(33);
      v11._countAndFlagsBits = 0x702064656C696146;
      v11._object = 0xEF20676E6963616CLL;
      String.append(_:)(v11);
      sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
      _print_unlocked<A, B>(_:_:)();
      v12._countAndFlagsBits = 0x6F74636572696420;
      v12._object = 0xEE00207461207972;
      String.append(_:)(v12);
      v13._countAndFlagsBits = sub_1000285C4(v5);
      String.append(_:)(v13);

      sub_10003F5B0(v8, 0, 0xE000000000000000, v9, v10);

      swift_willThrow();
    }

    else
    {

      v14 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      v15 = *(v14 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories);
      v16 = __CFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        *(v14 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories) = v17;
      }
    }
  }

  return result;
}

unint64_t sub_1000327E4(void *a1, char a2)
{
  result = sub_100033F34(a1);
  if (!v3)
  {
    v7 = result;
    swift_unknownObjectRetain();
    v8 = v2;
    sub_100036E00(a1, a2 & 1, v8, a1, v8);
    swift_unknownObjectRelease();

    v9 = *&v8[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
    v10 = *&v8[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8];
    _StringGuts.grow(_:)(27);

    v11._countAndFlagsBits = sub_1000285C4(v7);
    String.append(_:)(v11);

    sub_10003F2C0(0xD000000000000019, 0x80000001002BDB60, v9, v10);

    v12 = *&v8[OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary];
    v13 = *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles) = v15;
    }
  }

  return result;
}

unint64_t sub_100032A38(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_100033F34(a1);
  if (!v5)
  {
    v9 = result;
    swift_unknownObjectRetain();

    sub_10003866C(a1, a4 & 1, v4, a1);
    swift_unknownObjectRelease();

    v10 = *(v4 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v11 = *(v4 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    _StringGuts.grow(_:)(20);

    v12._countAndFlagsBits = sub_1000285C4(v9);
    String.append(_:)(v12);

    sub_10003F2C0(0xD000000000000012, 0x80000001002BDBA0, v10, v11);

    v13 = *(v4 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    v14 = *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks);
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks) = v16;
    }
  }

  return result;
}

unint64_t sub_100032C9C(void *a1, char a2, void *a3)
{
  result = sub_100033F34(a1);
  if (!v4)
  {
    v9 = v3;
    v10 = a3;
    v11 = swift_unknownObjectRetain();
    sub_100039F18(v11, a2 & 1, v9, v9, v10, a1);

    swift_unknownObjectRelease();

    v12 = *&v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary];
    v13 = *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles) = v15;
    }
  }

  return result;
}

unint64_t sub_100032E80(void *a1)
{
  result = sub_100033F34(a1);
  if (!v2)
  {
    v5 = result;
    sub_100027C28(result);
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    v21 = 0;
    v9 = [v6 restore:a1 protectionClassToDestination:v7 unspecifiedDirectoryProtectionClass:4 logger:v8 error:&v21];

    v10 = v21;
    if (v9)
    {
      v11 = String._bridgeToObjectiveC()();

      v21 = 0;
      v12 = [v6 restore:a1 attributesToDestination:v11 error:&v21];

      if (v12)
      {
        v13 = v21;
      }

      v14 = v21;
    }

    else
    {
      v14 = v10;
    }

    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v17 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v18._object = 0x80000001002BDBC0;
    v18._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v18);
    sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 0xD000000000000019;
    v19._object = 0x80000001002BDBE0;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000285C4(v5);
    String.append(_:)(v20);

    sub_10003F5B0(v15, v21, v22, v16, v17);

    swift_willThrow();
  }

  return result;
}

void sub_1000330F8()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedOptions];
  v2 = [v1 restorePathsToFailPlacingRegex];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 sharedOptions];
  v6 = [v5 maxRestorePathsToFailPlacing];

  if (v4)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() errorInjectorForRegex:v7 maxFailureCount:v6];

  qword_10041F160 = v8;
}

char *sub_100033230(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, void *a8, void *a9)
{
  v11 = v9;
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath;
  *&v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath] = 0xF000000000000007;
  v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed] = 0;
  v35 = OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary;
  *&v9[v35] = [objc_allocWithZone(type metadata accessor for MBRestorablePlacementSummary()) init];

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a1;
  strcpy(v43, "=performer= ");
  BYTE5(v43[1]) = 0;
  HIWORD(v43[1]) = -5120;
  v16._object = a2;
  String.append(_:)(v16);

  v17 = v43[1];
  v18 = &v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
  *v18 = v43[0];
  *(v18 + 1) = v17;
  v34 = v18;
  v19 = &v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer__identifier];
  *v19 = a1;
  v19[1] = a2;
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v20 = swift_allocBox();

  FilePath.init(_:)();
  v21 = sub_100006180(v20);
  if (v10)
  {

    swift_unknownObjectRelease();
    v22 = a9;
    v23 = a8;
  }

  else
  {
    v24 = v21;

    v25 = *&v11[v14];
    *&v11[v14] = v24;
    sub_1000112FC(v25);
    *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__policy] = a5;
    *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot] = a6;
    *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter] = a7;
    v26 = *&a6[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
    if ((~v26 & 0xF000000000000007) != 0)
    {
      sub_100009B38();
      v37 = a5;
      v39 = a6;
      swift_unknownObjectRetain();
      sub_10001135C(v26);
      sub_100027C28(v26);
      sub_1000112FC(v26);
      _StringGuts.grow(_:)(18);

      v43[0] = 0xD000000000000010;
      v43[1] = 0x80000001002BAE10;
      v29._countAndFlagsBits = a1;
      v29._object = a2;
      String.append(_:)(v29);

      *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage] = sub_10000A778();
      *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger] = a9;
      v42.receiver = v11;
      v42.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v42, "init");

      swift_unknownObjectRelease();
      return v11;
    }

    v27 = a5;
    v28 = a6;
    swift_unknownObjectRetain();

    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();

    swift_unknownObjectRelease();
    v23 = a9;
    v22 = a8;
  }

  v30 = v19[1];

  sub_1000112FC(*&v11[v14]);
  if (!v10)
  {

    v31 = *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter];
    swift_unknownObjectRelease();
  }

  v32 = *(v34 + 1);

  swift_deallocPartialClassInstance();
  return v11;
}

id sub_100033780()
{
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed] & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
    v2 = *&v0[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8];
    v10 = 0;
    v11 = 0xE000000000000000;

    v4 = v0;
    _StringGuts.grow(_:)(35);
    v8 = v3;
    v9 = v2;
    _print_unlocked<A, B>(_:_:)();
    v5._object = 0x80000001002BB5E0;
    v5._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v5);
    sub_10003F7B8(0, 0xE000000000000000, v3, v2);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100033A64()
{
  v1 = v0;
  _StringGuts.grow(_:)(42);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 7876640;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0x3A6469203ALL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__identifier));
  v6._countAndFlagsBits = 0x3A6874617020;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  sub_10001135C(*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath));
  sub_1000042B4(&qword_10041EEB0, &qword_1002B98D8);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A746F70656420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9 = [*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot) description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x3A656761747320;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15 = [*(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage) description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0;
}

unint64_t sub_100033F34(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath);
  if ((~v3 & 0xF000000000000007) != 0)
  {

    v5 = [a1 relativePath];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v2 = sub_100027EFC(v6, v8, v3);

    sub_1000112FC(v3);
    v9 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    if (v9)
    {
      v10 = swift_allocObject();
      *(v10 + 40) = &type metadata for MBRestorableOperationLogger;
      *(v10 + 48) = &off_1003BB060;
      *(v10 + 16) = v9;
      *(v10 + 24) = a1;
      *(v10 + 56) = v2;
      v2 = v10 | 0x8000000000000000;
      swift_unknownObjectRetain();
    }

    v11 = v9;
  }

  else
  {
    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log), *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8));
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000340A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
  return 1;
}

id sub_100034150(unint64_t a1, uint64_t a2)
{
  sub_100027C28(a1);
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 restore:a2 symbolicLinkAtPath:v4 withTarget:v5 settingOwnershipAndFlags:0];

  if (v6)
  {
  }

  else
  {
    v7 = String._bridgeToObjectiveC()();

    v11 = 0;
    v8 = [v3 restore:a2 attributesToDestination:v7 error:&v11];

    if (v8)
    {
      return v11;
    }

    v10 = v11;
    _convertNSErrorToError(_:)();
  }

  return swift_willThrow();
}

void sub_1000343AC(unint64_t a1, uint64_t a2)
{
  v5 = sub_100027C28(a1);
  v7 = v6;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 restore:a2 emptyRegularFileAtPath:v9 settingAttributes:0];

  if (v10)
  {
    sub_100034534(v10, a2, v5, v7, a1);
    if (v2)
    {

      return;
    }
  }

  v11 = String._bridgeToObjectiveC()();

  v15 = 0;
  v12 = [v8 restore:a2 attributesToDestination:v11 error:&v15];

  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100034A74(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot);
  v10 = sub_10002A444();
  if (!v4)
  {
    v12 = v11;
    v13 = v10;

    v14 = *(v9 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
    if ((~v14 & 0xF000000000000007) == 0)
    {

      sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
      swift_willThrow();
      return;
    }

    v15 = sub_100027EFC(v13, v12, v14);
    sub_1000112FC(v14);

    v16 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    v17 = v15;
    if (v16)
    {
      v18 = swift_allocObject();
      *(v18 + 40) = &type metadata for MBRestorableOperationLogger;
      *(v18 + 48) = &off_1003BB060;
      *(v18 + 16) = v16;
      *(v18 + 24) = a4;
      *(v18 + 56) = v15;
      v17 = v18 | 0x8000000000000000;
      swift_unknownObjectRetain();
    }

    v19 = v16;
    sub_100004FD4(a1, v17);
    v20 = sub_100027C28(a1);
    __chkstk_darwin(v20);
    String.withPlatformString<A>(_:)();

    v27 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    v52 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v28._object = 0x80000001002BDAA0;
    v28._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v28);
    v29._countAndFlagsBits = sub_1000285C4(v17);
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x20726F6620;
    v32._object = 0xE500000000000000;
    String.append(_:)(v32);
    sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
    _print_unlocked<A, B>(_:_:)();
    v51 = v27;
    sub_10003F2C0(0, 0xE000000000000000, v52, v27);

    if ([a3 assetType] == 2)
    {
      v33 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter);
      sub_100027C28(a1);
      v34 = String._bridgeToObjectiveC()();

      v53 = 0;
      v35 = [v33 decrypt:v34 restorable:a4 metadata:a3 error:&v53];

      v36 = v53;
      if (!v35)
      {
        v38 = v53;
        v39 = _convertNSErrorToError(_:)();

        swift_willThrow();

        v21 = a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
        v22 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
        v23 = *(v21 + 8);
        v53 = 0;
        v54 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v53 = 0xD000000000000014;
        v54 = 0x80000001002BDA60;
        v24._countAndFlagsBits = sub_1000285C4(v15);
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0xD000000000000017;
        v25._object = 0x80000001002BDA80;
        String.append(_:)(v25);
        v26._countAndFlagsBits = sub_1000285C4(a1);
        String.append(_:)(v26);

        sub_10003F2D8(v39, a1, v53, v54, v22, v23);

        swift_willThrow();

        return;
      }

      v37 = v36;
      sub_1000120FC(a1, v55);
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v40._countAndFlagsBits = 0x6574707972636544;
      v40._object = 0xEA00000000002064;
      String.append(_:)(v40);
      v41._countAndFlagsBits = sub_1000285C4(a1);
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0x3A637020736120;
      v42._object = 0xE700000000000000;
      String.append(_:)(v42);
      type metadata accessor for MBProtectionClass(0);
      _print_unlocked<A, B>(_:_:)();
      v43._countAndFlagsBits = 0x20726F6620;
      v43._object = 0xE500000000000000;
      String.append(_:)(v43);
      _print_unlocked<A, B>(_:_:)();
      sub_10003F2C0(v53, v54, v52, v51);
    }

    sub_100027C28(a1);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 restore:a4 regularFileAtPath:v45 settingAttributes:0];

    if (v46)
    {
      sub_100035198(v46, a4, a1);
    }

    v47 = String._bridgeToObjectiveC()();

    v53 = 0;
    v48 = [v44 restore:a4 attributesToDestination:v47 error:&v53];

    if (v48)
    {
      v49 = v53;
    }

    else
    {
      v50 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

unint64_t sub_100035644(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage) makeTemporaryFilePath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v4 = swift_allocBox();
  FilePath.init(_:)();
  v5 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 40) = &type metadata for MBRestorableOperationLogger;
    *(v6 + 48) = &off_1003BB060;
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    *(v6 + 56) = v4;
    v4 = v6 | 0x8000000000000000;
    swift_unknownObjectRetain();
  }

  v7 = v5;
  return v4;
}

id sub_100035728(unint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_100004CD8(a2, a1);
  if (!v3)
  {
    v8 = a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
    v9 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v10 = *(v8 + 8);
    _StringGuts.grow(_:)(31);

    v11._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v11);

    v12._countAndFlagsBits = 544175136;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_1000285C4(a2);
    String.append(_:)(v13);

    sub_10003F2C0(0xD000000000000017, 0x80000001002BDA40, v9, v10);
  }

  return result;
}

id sub_100035830(unint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_100005044(a2, a1);
  if (!v3)
  {
    v8 = a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
    v9 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v10 = *(v8 + 8);
    _StringGuts.grow(_:)(31);

    v11._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v11);

    v12._countAndFlagsBits = 544175136;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_1000285C4(a2);
    String.append(_:)(v13);

    sub_10003F2C0(0xD000000000000017, 0x80000001002BD990, v9, v10);
  }

  return result;
}

BOOL sub_100035938()
{
  v1 = v0;
  swift_getObjectType();
  sub_100012584(v15);
  IsDataless = MBNodeIsDataless(v15);
  result = MBNodeIsReg(v15);
  if (!result)
  {
LABEL_12:
    result = MBNodeIsDir(v15);
    if (!(result & IsDataless))
    {
      return result;
    }

    v7 = (v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories);
    v10 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories);
    v5 = __CFADD__(v10, 1);
    v9 = v10 + 1;
    if (!v5)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (IsDataless)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      goto LABEL_31;
    }

    *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles) = v6;
  }

  LODWORD(v7) = v16;
  if (v16 > 2u)
  {
    if (v16 == 3)
    {
LABEL_21:
      v7 = (v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles);
      v12 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles);
      v5 = __CFADD__(v12, 1);
      v9 = v12 + 1;
      if (!v5)
      {
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (v16 == 4)
    {
LABEL_24:
      v7 = (v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles);
      v13 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles);
      v5 = __CFADD__(v13, 1);
      v9 = v13 + 1;
      if (!v5)
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_27:
      v7 = (v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles);
      v14 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles);
      v5 = __CFADD__(v14, 1);
      v9 = v14 + 1;
      if (!v5)
      {
        goto LABEL_28;
      }

LABEL_31:
      __break(1u);
    }

    if (v16 != 7)
    {
      return result;
    }

    v7 = (v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles);
    v8 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles);
    v5 = __CFADD__(v8, 1);
    v9 = v8 + 1;
    if (!v5)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_16:
  if (v7 == 1)
  {
    goto LABEL_27;
  }

  if (v7 != 2)
  {
    return result;
  }

  v7 = (v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles);
  v11 = *(v1 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles);
  v5 = __CFADD__(v11, 1);
  v9 = v11 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *v7 = v9;
  return result;
}

id sub_100035AC8(unint64_t a1)
{

  sub_1000120FC(a1, v17);
  v4 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
  v5 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
  if (v2)
  {
    _StringGuts.grow(_:)(48);

    v6._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v6);

    sub_10003F2D8(v2, a1, 0xD00000000000002ELL, 0x80000001002BD9B0, v4, v5);

    swift_willThrow();
  }

  else
  {
    _StringGuts.grow(_:)(44);

    v15[2] = v17[2];
    v15[3] = v17[3];
    v16 = v18;
    v15[0] = v17[0];
    v15[1] = v17[1];
    v8 = MBNodeAsString(v15);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._object = 0x80000001002BDA00;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    v14._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v14);

    sub_10003F2C0(0xD000000000000016, 0x80000001002BD9E0, v4, v5);

    return sub_100005564(a1);
  }
}

id sub_100035E3C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations] = &_swiftEmptyArrayStorage;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100035F70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot);
  v8 = sub_10002A660(a1);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  v10 = v8;
  v11 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 40) = &type metadata for MBRestorableOperationLogger;
    *(v12 + 48) = &off_1003BB060;
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    *(v12 + 56) = v10;
    v10 = v12 | 0x8000000000000000;
    swift_unknownObjectRetain();
  }

  v13 = v11;
  v23 = sub_100033F34(a1);
  if (sub_100005D30(v10))
  {
    sub_100005044(v23, v10);
    v15 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    sub_100035938();
    v16 = a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
    v17 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v18 = *(v16 + 8);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v24 = 0xD00000000000001ALL;
    v25 = 0x80000001002BD970;
    v19._countAndFlagsBits = sub_1000285C4(v10);
    String.append(_:)(v19);

    v20._countAndFlagsBits = 544175136;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = sub_1000285C4(v23);
    String.append(_:)(v21);

    sub_10003F2C0(v24, v25, v17, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_100035644(a1);
    sub_1000343AC(v14, a3);
    sub_100004CD8(v10, v14);
    sub_100035830(v10, v23, a2);
    v22 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    sub_100035938();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100036E00(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = sub_100033F34(a1);
  if (v6)
  {

    return swift_unknownObjectRelease();
  }

  v15 = v13;
  if (qword_10041DEF0 != -1)
  {
    swift_once();
  }

  v16 = qword_10041F160;
  if (!qword_10041F160)
  {
    goto LABEL_9;
  }

  sub_100027C28(v15);
  v30 = a1;
  v17 = a3;
  v18 = a4;
  v19 = v12;
  v20 = v15;
  v21 = String._bridgeToObjectiveC()();

  v22 = [v16 errorIfMatches:v21];

  v15 = v20;
  v12 = v19;
  a4 = v18;
  a3 = v17;
  a1 = v30;
  if (v22)
  {
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_9:
    if (a2)
    {
      swift_unknownObjectRetain();
      v23 = v12;
      sub_100035F70(a1, a3, a4);

      v25 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      v26 = *(v25 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
      v27 = __CFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
      }

      *(v25 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks) = v28;

      return swift_unknownObjectRelease();
    }

    v24 = sub_100035644(a1);
    sub_1000343AC(v24, a4);
    sub_100035728(v24, v15, a3);
    v29 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    sub_100035938();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000377CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot);
  v8 = sub_10002A660(a1);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  v10 = v8;
  v11 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 40) = &type metadata for MBRestorableOperationLogger;
    *(v12 + 48) = &off_1003BB060;
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    *(v12 + 56) = v10;
    v10 = v12 | 0x8000000000000000;
    swift_unknownObjectRetain();
  }

  v13 = v11;
  v23 = sub_100033F34(a1);
  v22 = v10;
  if (sub_100005D30(v10))
  {
    sub_100005044(v23, v10);
    v15 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    sub_100035938();
    v16 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v17 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v24 = 0xD00000000000001ALL;
    v25 = 0x80000001002BD970;
    v18._countAndFlagsBits = sub_1000285C4(v10);
    String.append(_:)(v18);

    v19._countAndFlagsBits = 544175136;
    v19._object = 0xE400000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000285C4(v23);
    String.append(_:)(v20);

    sub_10003F2C0(v24, v25, v16, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_100035644(a1);
    sub_100034150(v14, a3);
    sub_100004CD8(v22, v14);
    sub_100035830(v22, v23, a2);
    v21 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    sub_100035938();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10003866C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();

  v9 = sub_100033F34(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v11 = v9;
  if (qword_10041DEF0 != -1)
  {
    swift_once();
  }

  v12 = qword_10041F160;
  if (!qword_10041F160)
  {
    goto LABEL_8;
  }

  sub_100027C28(v11);
  v22 = a1;
  v13 = a3;
  v14 = String._bridgeToObjectiveC()();

  v15 = [v12 errorIfMatches:v14];

  a3 = v13;
  a1 = v22;
  if (v15)
  {
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_8:
    if (a2)
    {
      swift_unknownObjectRetain();

      sub_1000377CC(a1, a3, a4);

      v17 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      v18 = *(v17 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
      v19 = __CFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
      }

      *(v17 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks) = v20;
LABEL_2:

      return swift_unknownObjectRelease();
    }

    v16 = sub_100035644(a1);
    sub_100034150(v16, a4);
    sub_100035728(v16, v11, a3);
    v21 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    sub_100035938();

    swift_unknownObjectRelease();
  }
}

void sub_100039090(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot);
  v12 = sub_10002A660(a1);
  if (v5)
  {
  }

  else
  {
    v13 = v12;
    v14 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 40) = &type metadata for MBRestorableOperationLogger;
      *(v15 + 48) = &off_1003BB060;
      *(v15 + 16) = v14;
      *(v15 + 24) = a1;
      *(v15 + 56) = v13;
      v13 = v15 | 0x8000000000000000;
      swift_unknownObjectRetain();
    }

    v16 = v14;
    v26 = sub_100033F34(a1);
    v25 = v13;
    if (sub_100005D30(v13))
    {
      sub_100005044(v26, v13);
      v18 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      sub_100035938();
      v19 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v20 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v27 = 0xD00000000000001ALL;
      v28 = 0x80000001002BD970;
      v21._countAndFlagsBits = sub_1000285C4(v13);
      String.append(_:)(v21);

      v22._countAndFlagsBits = 544175136;
      v22._object = 0xE400000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = sub_1000285C4(v26);
      String.append(_:)(v23);

      sub_10003F2C0(v27, v28, v19, v20);
    }

    else
    {
      v17 = sub_100035644(a1);
      sub_100034A74(v17, a3, a4, a5);
      sub_100004CD8(v25, v17);
      sub_100035830(v25, v26, a2);
      v24 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      sub_100035938();
    }
  }
}

uint64_t sub_100039F18(void *a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = sub_100033F34(a1);
  if (v6)
  {
  }

  else
  {
    v16 = v14;
    v27 = a2;
    v28 = a1;
    if (qword_10041DEF0 != -1)
    {
      swift_once();
    }

    v17 = qword_10041F160;
    if (qword_10041F160)
    {
      sub_100027C28(v16);
      v18 = String._bridgeToObjectiveC()();

      v19 = [v17 errorIfMatches:v18];

      if (v19)
      {
        swift_willThrow();

        return swift_unknownObjectRelease();
      }
    }

    if ((v27 & 1) == 0)
    {
      v21 = sub_100035644(v28);
      sub_100034A74(v21, v12, v13, a6);
      sub_100035728(v21, v16, a3);
      v26 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      sub_100035938();

      return swift_unknownObjectRelease();
    }

    v12 = v12;
    v20 = v13;
    swift_unknownObjectRetain();
    sub_100039090(v28, a3, v12, v20, a6);

    swift_unknownObjectRelease();

    v22 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    v23 = *(v22 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
    v24 = __CFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      __break(1u);
    }

    *(v22 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks) = v25;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10003A92C()
{
  sub_100004394((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10003A98C(void *a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(43);

    v14 = 0xD000000000000028;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(50);

    v14 = 0xD00000000000002FLL;
    v4 = [a1 persona];
    v5 = [v4 personaIdentifier];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

LABEL_5:
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    return v14;
  }

  return 0xD000000000000019;
}

uint64_t sub_10003AAFC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        sub_10003B4F4();
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    return v4 == 2 && (v2 | v3) == 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == v3 && a1[1] == v2)
  {
    return 1;
  }

  v7 = *a1;

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10003B0D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for POSIXError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    v16 = 22;
LABEL_6:
    v22 = v16;
    sub_10003B540(&_swiftEmptyArrayStorage);
    sub_10003B650();
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v11 + 8))(v14, v10);
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  if ((a4 & 1) == 0)
  {

    a1 = 0;
    a2 = 0;
    v15 = 2;
    goto LABEL_8;
  }

  if (!a2)
  {
    v16 = 2;
    goto LABEL_6;
  }

  v15 = 0;
LABEL_8:
  v18 = &v5[OBJC_IVAR____TtC7backupd14MigratorConfig_state];
  *v18 = a1;
  *(v18 + 1) = a2;
  v18[16] = v15;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_10003B410(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10003B42C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003B440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10003B488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003B4CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10003B4F4()
{
  result = qword_10041F2B8;
  if (!qword_10041F2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10041F2B8);
  }

  return result;
}

unint64_t sub_10003B540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003B6A8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10002C438(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DCF4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003B650()
{
  result = qword_10041F2C0;
  if (!qword_10041F2C0)
  {
    type metadata accessor for POSIXError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041F2C0);
  }

  return result;
}

uint64_t sub_10003B6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041EBB8, &qword_1002B96C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10003B718(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

id sub_10003B740()
{
  v1 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher____lazy_storage___observer;
  v2 = *(v0 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher____lazy_storage___observer);
  v3 = v2;
  if (v2 == 1)
  {
    sub_1000042B4(&qword_10041E7F0, &qword_1002B9328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002B9260;
    *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:2];
    sub_10003E9C8(inited);
    swift_setDeallocating();
    v5 = *(inited + 16);
    swift_arrayDestroy();
    v6 = objc_allocWithZone(IXAppInstallObserver);
    v7 = String._bridgeToObjectiveC()();
    sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
    sub_100023254();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v3 = [v6 initWithMachServiceName:v7 forClients:isa delegate:v0];

    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    sub_10003F140(v9);
  }

  sub_10003F150(v2);
  return v3;
}

id sub_10003B8C4()
{
  result = [objc_allocWithZone(type metadata accessor for AppRestoreDispatcher()) init];
  qword_100421CB8 = result;
  return result;
}

uint64_t sub_10003B950()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7backupd20AppRestoreDispatcher____lazy_storage___observer] = 1;
  v2 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock;
  type metadata accessor for MBUnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers] = &_swiftEmptyDictionarySingleton;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v22, "init");
  v6 = sub_10003B740();
  if (v6)
  {
    v7 = v6;
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000685C(v8, qword_100421CD0);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Created IXAppInstallObserver instance: %@", v12, 0xCu);
      sub_10003F0D8(v13);

      v9 = v10;
      v10 = v14;
    }

    return v5;
  }

  else
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000685C(v16, qword_100421CD0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10003FE34(0xD000000000000025, 0x80000001002BE040, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to initialize observer for %s", v19, 0xCu);
      sub_100004394(v20);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10003BCB4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = *(v3 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  sub_10003BD68(a1, v3, a2, a3, &v11);
  if (v5)
  {

    os_unfair_lock_unlock(*(v9 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v9 + 16));
  }
}

id sub_10003BD68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = [a1 persona];
  v10 = [v9 personaIdentifier];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v15 = *(a2 + v14);
  if (*(v15 + 16) && (v16 = sub_10002C438(v11, v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = v18;

    result = [v19 setDelegate:a4];
  }

  else
  {
    v34 = v11;
    swift_endAccess();
    v21 = [objc_allocWithZone(MBAppRestoreManager) initWithStateQueue:a3 account:a1];
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000685C(v22, qword_100421CD0);

    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = a5;
      v28 = swift_slowAlloc();
      v36 = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_10003FE34(v34, v13, &v36);
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Created MBAppRestoreManager instance for %s: %@", v26, 0x16u);
      sub_10003F0D8(v27);

      sub_100004394(v28);
      a5 = v33;

      v30 = v34;
    }

    else
    {

      v30 = v34;
    }

    [v23 setDelegate:a4];
    swift_beginAccess();
    v19 = v23;
    v31 = *(a2 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a2 + v14);
    *(a2 + v14) = 0x8000000000000000;
    sub_10002D8BC(v19, v30, v13, isUniquelyReferenced_nonNull_native);

    *(a2 + v14) = v37;
    result = swift_endAccess();
  }

  *a5 = v19;
  return result;
}

void sub_10003C210(void *a1)
{
  v3 = [a1 identity];
  v49[3] = &OBJC_PROTOCOL____TtP7backupd18RestoreCoordinator_;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {
    if (qword_10041DF00 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v46 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v6 = *(v5 + 16);
  v47 = a1;

  os_unfair_lock_lock(v6);
  v7 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v5 + 16);

  os_unfair_lock_unlock(v9);

  v10 = 0;
  v48 = &_swiftEmptyArrayStorage;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }

LABEL_17:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if (*(v8 + 16))
      {
        v19 = *(v8 + 32);
LABEL_20:
        v20 = v19;

        [v20 restoreCoordinatorShouldBeginRestoringUserData:v46];

        goto LABEL_25;
      }

      __break(1u);
LABEL_35:
      swift_once();
LABEL_22:
      v21 = type metadata accessor for Logger();
      sub_10000685C(v21, qword_100421CD0);
      v22 = v3;
      v20 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v49[0] = v25;
        *v24 = 136315138;
        v26 = [v22 bundleID];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_10003FE34(v27, v29, v49);

        *(v24 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v23, "Not a RestoreCoordinator instance for %s", v24, 0xCu);
        sub_100004394(v25);
      }

      else
      {

LABEL_25:
      }

      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v8 + 64 + 8 * v15);
    ++v10;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v17 = *(*(v8 + 56) + ((v15 << 9) | (8 * v16)));
        if ([v17 shouldObserveCoordinatorWithIdentity:v3])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v18 = *(v48 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v10 = v15;
          if (!v13)
          {
            goto LABEL_8;
          }
        }

        else
        {

          v10 = v15;
          if (!v13)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v15 = v10;
      }
    }
  }

  v8 = v48;
  if (v48 < 0 || (v48 & 0x4000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (*(v48 + 16))
  {
    goto LABEL_17;
  }

LABEL_28:

  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000685C(v31, qword_100421CD0);
  v32 = v3;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = [v32 bundleID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_10003FE34(v37, v39, &v48);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = [v32 personaUniqueString];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = sub_10003FE34(v42, v44, &v48);

    *(v35 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "Failed to find a restorer for %s %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003C7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identity];
  v54[3] = &OBJC_PROTOCOL____TtP7backupd18RestoreCoordinator_;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    if (qword_10041DF00 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  v51 = v7;
  v8 = *(v3 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v9 = *(v8 + 16);
  v52 = a1;

  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v11 = *(v3 + v10);
  v12 = *(v8 + 16);

  os_unfair_lock_unlock(v12);

  v13 = 0;
  v53 = &_swiftEmptyArrayStorage;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = (v14 + 63) >> 6;
  if (v16)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_26:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }

LABEL_17:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if (*(v11 + 16))
      {
        v22 = *(v11 + 32);
LABEL_20:
        v23 = v22;

        v24 = _convertErrorToNSError(_:)();
        [v23 restoreCoordinator:v51 canceledWithReason:v24 client:a3];

        return;
      }

      __break(1u);
LABEL_34:
      swift_once();
LABEL_22:
      v25 = type metadata accessor for Logger();
      sub_10000685C(v25, qword_100421CD0);
      v26 = v6;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v54[0] = v30;
        *v29 = 136315138;
        v31 = [v26 bundleID];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10003FE34(v32, v34, v54);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "Not a RestoreCoordinator instance for %s", v29, 0xCu);
        sub_100004394(v30);
      }

      else
      {
      }

      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v11 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = *(*(v11 + 56) + ((v18 << 9) | (8 * v19)));
        if ([v20 shouldObserveCoordinatorWithIdentity:v6])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v53 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v13 = v18;
          if (!v16)
          {
            goto LABEL_8;
          }
        }

        else
        {

          v13 = v18;
          if (!v16)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v18 = v13;
      }
    }
  }

  v11 = v53;
  if (v53 < 0 || (v53 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*(v53 + 16))
  {
    goto LABEL_17;
  }

LABEL_27:

  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000685C(v36, qword_100421CD0);
  v37 = v6;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v40 = 136315394;
    v41 = [v37 bundleID];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = sub_10003FE34(v42, v44, &v53);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = [v37 personaUniqueString];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_10003FE34(v47, v49, &v53);

    *(v40 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to find a restorer for %s %s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003CE24(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = [a1 persona];
  v6 = [v5 personaIdentifier];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_10002C438(v7, v9);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v12);
      v16 = v15;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_6:
  swift_endAccess();
  os_unfair_lock_unlock(*(v3 + 16));

  if (v15)
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000685C(v17, qword_100421CD0);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40[0] = v22;
      *v21 = 136315138;
      v23 = [v18 persona];
      v24 = [v23 personaIdentifier];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10003FE34(v25, v27, v40);

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "IX: Retrying app data downloads for %s", v21, 0xCu);
      sub_100004394(v22);
    }

    [v15 retryAppDataDownloads];
  }

  else
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000685C(v29, qword_100421CD0);
    v30 = a1;
    v15 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136315138;
      v34 = [v30 persona];
      v35 = [v34 personaIdentifier];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_10003FE34(v36, v38, v40);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v15, v31, "IX: No app restorer found for persona %s", v32, 0xCu);
      sub_100004394(v33);
    }
  }
}

id sub_10003D278()
{
  v1 = *(v0 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(v0 + v3);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v7; result = [*(*(v4 + 56) + ((v12 << 9) | (8 * v13))) cancelAndUninstallAllCoordinators])
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v14 = sub_10003E8C4(&_swiftEmptyArrayStorage);
      v15 = *(v0 + v3);
      *(v0 + v3) = v14;

      os_unfair_lock_unlock(*(v1 + 16));
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003D424(void *a1)
{
  v2 = [a1 persona];
  v3 = [v2 personaIdentifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v8 = *(v7 + 16);

  os_unfair_lock_lock(v8);
  sub_10003D61C(v1, v4, v6);

  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_10003D510(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_10003D61C(v2, a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

void sub_10003D61C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v5 = sub_10003DBF8(a2, a3);
  swift_endAccess();
  if (v5)
  {
    [v5 cancelAndUninstallAllCoordinators];
  }

  else
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000685C(v6, qword_100421CD0);

    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10003FE34(a2, a3, &v10);
      _os_log_impl(&_mh_execute_header, v5, v7, "Failed find and cancel the restorer for %s", v8, 0xCu);
      sub_100004394(v9);
    }
  }
}

Class sub_10003D854(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    v3 = *a3;

    sub_1000042B4(&qword_10041F370, &unk_1002B9B20);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10003D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    sub_1000042B4(&qword_10041F370, &unk_1002B9B20);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = *a4;
  *a4 = v5;
}

uint64_t sub_10003D940(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_10003D9B0(void *a1, uint64_t a2)
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    swift_beginAccess();
    v4 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  return 1;
}

Class sub_10003DA90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1000042B4(&qword_10041F370, &unk_1002B9B20);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

double sub_10003DB54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10002C438(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002DDD8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10001DCF4((*(v12 + 56) + 32 * v9), a3);
    sub_10003DF48(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10003DBF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10002C438(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10002DF7C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_10003E0FC(v7, v10);
  *v3 = v10;
  return v12;
}

unint64_t sub_10003DC90(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_10003F1C8();
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
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
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10003DF48(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10003E0FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

unint64_t sub_10003E2AC(uint64_t a1)
{
  v2 = sub_1000042B4(&unk_10041F3E0, &qword_1002B9B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000042B4(&qword_10041EEB8, &unk_1002B98E0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10003F160(v10, v6, &unk_10041F3E0, &qword_1002B9B70);
      result = sub_10002C3B4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10003E494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041F3D0, &qword_1002B9B60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10002C438(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041F3D8, &qword_1002B9B68);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10002C438(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003F160(v4, &v13, &qword_10041EBB8, &qword_1002B96C8);
      v5 = v13;
      v6 = v14;
      result = sub_10002C438(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DCF4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003E7CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041F3B8, &qword_1002B9B48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10002C4B0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10003E8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041EE80, &qword_1002B98C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10002C438(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_10003E9C8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000042B4(&qword_10041F3B0, &qword_1002B9B40);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_10003ECB8()
{
  if (qword_100421CC0)
  {
    v0 = qword_100421CC0;
  }

  else
  {
    v1 = swift_allocObject();
    v1[2] = &_swiftEmptyArrayStorage;
    sub_100011314(0, &unk_10041F380, IXRestoringAppInstallCoordinator_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    aBlock[4] = sub_10003F228;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003D940;
    aBlock[3] = &unk_1003BBDC0;
    v3 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v4 = [ObjCClassFromMetadata enumerateCoordinatorsWithError:aBlock usingBlock:v3];
    _Block_release(v3);
    v5 = aBlock[0];
    if (v4)
    {
      swift_beginAccess();
      v0 = v1[2];
      v6 = v5;
    }

    else
    {
      v0 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v0;
}

id sub_10003EE90()
{
  if (qword_100421CC8)
  {
    v0 = qword_100421CC8;
  }

  else
  {
    v1 = swift_allocObject();
    v1[2] = &_swiftEmptyArrayStorage;
    sub_100011314(0, &qword_10041F378, IXRestoringDemotedAppInstallCoordinator_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    aBlock[4] = sub_10003F0A0;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003D940;
    aBlock[3] = &unk_1003BBD98;
    v3 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v4 = [ObjCClassFromMetadata enumerateCoordinatorsWithError:aBlock usingBlock:v3];
    _Block_release(v3);
    v5 = aBlock[0];
    if (v4)
    {
      swift_beginAccess();
      v0 = v1[2];
      v6 = v5;
    }

    else
    {
      v0 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_10003F068()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F0D8(uint64_t a1)
{
  v2 = sub_1000042B4(&unk_10041F390, &unk_1002B9B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003F140(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10003F150(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10003F160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000042B4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10003F1C8()
{
  result = qword_10041F3F0;
  if (!qword_10041F3F0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041F3F0);
  }

  return result;
}

uint64_t sub_10003F22C(uint64_t a1, int a2)
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

uint64_t sub_10003F274(uint64_t result, int a2, int a3)
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

id sub_10003F2D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000685C(v11, qword_100421CD0);

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_10003FE34(a5, a6, &v24);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10003FE34(a3, a4, &v24);
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s%s: %@", v14, 0x20u);
    sub_10003F0D8(v15);
    a2 = v23;

    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = _convertErrorToNSError(_:)();
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_100027C28(a2);
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 errorForNSError:v17 path:v18 description:v20];

  return v21;
}

void sub_10003F5B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000685C(v9, qword_100421CD0);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_10003FE34(a4, a5, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10003FE34(a2, a3, &v15);
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, oslog, v10, "%s%s: %@", v11, 0x20u);
    sub_10003F0D8(v12);

    swift_arrayDestroy();
  }
}

void sub_10003F7D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000685C(v10, qword_100421CD0);

  oslog = Logger.logObject.getter();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10003FE34(a3, a4, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10003FE34(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v11, "%s%s", v12, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_10003F97C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000685C(v10, qword_100421CD0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10003FE34(a4, a5, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10003FE34(a2, a3, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 errorWithCode:a1 description:v15];

  return v16;
}

id sub_10003FB68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000685C(v12, qword_100421CD0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10003FE34(a5, a6, &v21);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10003FE34(a3, a4, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = objc_opt_self();
  if ((~a2 & 0xF000000000000007) != 0)
  {

    sub_100027C28(a2);
    v19 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 errorWithCode:a1 path:v19 description:v17];
    sub_1000112FC(a2);
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 errorWithCode:a1 description:v17];
  }

  return v18;
}

id sub_10003FDD0()
{
  v0 = type metadata accessor for Logger();
  sub_1000403DC(v0, qword_100421CD0);
  sub_10000685C(v0, qword_100421CD0);
  result = MBGetMBSwiftLog();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_10003FE34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003FF00(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001DD04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004394(v11);
  return v7;
}

unint64_t sub_10003FF00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10004000C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_10004000C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100040058(a1, a2);
  sub_100040188(&off_1003BAAD0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100040058(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100040274(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100040274(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100040188(uint64_t result)
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

  result = sub_1000402E8(result, v12, 1, v3);
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

void *sub_100040274(uint64_t a1, uint64_t a2)
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

  sub_1000042B4(&qword_10041F400, &unk_1002B9BB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000402E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000042B4(&qword_10041F400, &unk_1002B9BB0);
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

uint64_t *sub_1000403DC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100040440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
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
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

unint64_t *sub_100040538(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_10000F7AC(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_errorRetain();
      sub_1000042B4(&qword_10041E800, &qword_1002B96F0);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000F7AC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10001DCF4(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_10004064C()
{
  sub_10001378C();
  if (!v1)
  {
    sub_100013938();
    v2 = *(v0 + OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB);
    v3 = *(v0 + OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context);
    v4 = *(v3 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress);
    v5 = *(v3 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames);
    v11 = *(v3 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames);
    v6 = v4;

    sub_10000DFD4(v7);
    sub_100016D5C(v11);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v11 = 0;
    LODWORD(v2) = [v2 addRemainingProgress:v6 forDomainNames:isa error:&v11];

    if (v2)
    {
      v9 = v11;
      sub_10001409C();
    }

    else
    {
      v10 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1000407E4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context];
  v3 = *&v2[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames];
  v38 = v2;
  v39 = *&v2[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames];

  sub_10000DFD4(v4);
  v5 = v39;
  v6 = v39[2];
  v7 = OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB;
  if (v6)
  {
    v8 = 0;
    v9 = v39 + 5;
    do
    {
      if (v8 >= v5[2])
      {
        __break(1u);
      }

      v10 = v5;
      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = v1;
      v14 = *&v1[v7];

      v15 = String._bridgeToObjectiveC()();

      v39 = 0;
      LODWORD(v14) = [v14 ingestFileListForDomainNamed:v15 error:&v39];

      if (!v14)
      {
        goto LABEL_11;
      }

      ++v8;
      v16 = v39;
      v9 += 2;
      v1 = v13;
      v5 = v10;
    }

    while (v6 != v8);
  }

  v17 = v1;
  v18 = *&v1[v7];
  v19 = *&v38[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress];

  sub_100016D5C(v20);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v39 = 0;
  v22 = [v18 addRemainingProgress:v19 forDomainNames:isa error:&v39];

  if (!v22)
  {
LABEL_11:
    v36 = v39;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v23 = *&v38[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona];
  v24 = v39;
  v25 = [v23 isDataSeparatedPersona];
  v26 = objc_opt_self();
  v27 = &selRef_foregroundDataSeparatedRestoreMode;
  if (!v25)
  {
    v27 = &selRef_foregroundRestoreMode;
  }

  v28 = [v26 *v27];
  v29 = sub_10000B070(v28);

  sub_100016D5C(v30);

  v31 = Set._bridgeToObjectiveC()().super.isa;

  [v29 setDomainNamesToForegroundRestore:v31];

  v32 = v17;
  v33 = sub_1000105A4(v18, v29, 0, v5, v38, v32);
  v35 = v34;

  if (v37)
  {
  }

  else
  {

    sub_1000135C4(v33, v35);
  }
}

void sub_100040B5C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  LODWORD(v64) = a3;
  v8 = *&v3[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context];
  v9 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames];

  v10 = sub_100040440(a1, a2, v9);

  sub_1000042B4(&qword_10041E7E8, &qword_1002B9320);
  inited = swift_initStackObject();
  v63 = xmmword_1002B9270;
  *(inited + 16) = xmmword_1002B9270;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v65 = sub_100016D5C(inited);
  swift_setDeallocating();
  sub_100012024(inited + 32);
  if (v10)
  {
    v12 = *&v5[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB];
    v13 = String._bridgeToObjectiveC()();
    v66[0] = 0;
    v14 = [v12 ingestFileListForDomainNamed:v13 error:v66];

    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress];
    v16 = v66[0];
    v17 = v15;
    v18 = v65;
    isa = Set._bridgeToObjectiveC()().super.isa;
    v66[0] = 0;
    v20 = [v12 addRemainingProgress:v17 forDomainNames:isa error:v66];

    v22 = v66[0];
    if (v20)
    {
      *&v63 = &v59;
      __chkstk_darwin(v21);
      v23 = v8;
      v24 = v12;
      v25 = v22;
      sub_100016798(v18, v23, v24, v64 & 1, sub_100041E24);

      if (!v4)
      {
        sub_1000135C4(0xD00000000000001CLL, 0x80000001002BB200);
      }
    }

    else
    {
LABEL_13:
      v37 = v66[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v26 = [*&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona] isDataSeparatedPersona];
    v27 = objc_opt_self();
    v28 = &selRef_foregroundDataSeparatedRestoreMode;
    if (!v26)
    {
      v28 = &selRef_foregroundRestoreMode;
    }

    v29 = [v27 *v28];
    v30 = sub_10000B070(v29);

    v31 = *&v5[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB];
    sub_10000B1E0(v31, v30);
    if (v4)
    {
    }

    else
    {
      v60 = v5;
      v62 = v31;
      v61 = v30;
      if (v64)
      {
        sub_100027C28(*&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir]);
        v32 = v30;
        v33 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_snapshotUUID + 8];
        v64 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_snapshotUUID];
        v59 = v33;
        v34 = objc_allocWithZone(MBRestoreSnapshotIntegrityVerifier);
        v35 = String._bridgeToObjectiveC()();

        v36 = String._bridgeToObjectiveC()();
        v64 = [v34 initWithPolicy:v32 snapshotFormat:2 snapshotDir:v35 snapshotUUID:v36 delegate:v8, v59, v60];
      }

      else
      {
        v64 = 0;
      }

      v38 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress];
      v39 = Set._bridgeToObjectiveC()().super.isa;

      v66[0] = 0;
      v40 = v62;
      v41 = [v62 addRemainingProgress:v38 forDomainNames:v39 error:v66];

      v42 = v66[0];
      if (v41)
      {
        v43 = swift_initStackObject();
        *(v43 + 16) = v63;
        *(v43 + 32) = a1;
        *(v43 + 40) = a2;

        v44 = v60;
        v45 = v42;
        v65 = 0;
        v46 = sub_10001060C(v40, v61, v64, v43, v8, v44);
        v49 = v48;
        v50 = v46;

        swift_setDeallocating();
        sub_100012024(v43 + 32);
        sub_1000135C4(v50, v49);

        v51 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext__failures];
        v52 = *(v51 + 16);
        os_unfair_lock_lock(*(v52 + 16));
        swift_beginAccess();
        v53 = *(v51 + 24);
        if (*(v53 + 16))
        {
          v54 = objc_opt_self();
          sub_100040538(v53);
          v55 = Array._bridgeToObjectiveC()().super.isa;

          v56 = [v54 errorWithErrors:v55];
        }

        else
        {
          v56 = 0;
        }

        swift_endAccess();
        os_unfair_lock_unlock(*(v52 + 16));
        if (v56)
        {
        }

        else
        {
          sub_10000C8B0(v62, v8, v44);
          sub_1000135C4(v57, v58);
        }
      }

      else
      {
        v47 = v66[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

unint64_t sub_100041440(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context) + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_contentPath);

  v4 = [a1 name];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_100027EFC(v5, v7, v3);

  return v8;
}

void sub_1000414E4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9, void *a10, void *a11)
{
  _StringGuts.grow(_:)(25);

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 544497952;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = a3;
  v19._object = a4;
  String.append(_:)(v19);
  sub_10003F2C0(0xD000000000000011, 0x80000001002BE130, 0xD000000000000011, 0x80000001002BE110);

  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v20 = swift_allocBox();

  FilePath.init(_:)();
  sub_100005348(511, v20);
  if (v11)
  {

    return;
  }

  v21 = a1 == 0x4742747365676E49 && a2 == 0xE800000000000000;
  v22 = v21;
  v48 = v22;
  if (v21)
  {
    v23 = 0;
    v24 = a8;
    v25 = a7;
    v26 = a6;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = a8;
    v25 = a7;
    if (v27)
    {
      v23 = 0;
      v26 = a6;
    }

    else if (a1 == 0x756F726765726F46 && a2 == 0xEA0000000000646ELL)
    {
      v26 = a6;
      v23 = 0;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = 0;
      v30 = a1 == 0x756F72676B636142 && a2 == 0xEA0000000000646ELL;
      if (v28)
      {
        v24 = a8;
        v25 = a7;
        v26 = a6;
      }

      else
      {
        v24 = a8;
        v25 = a7;
        v26 = a6;
        v31 = a5;
        if (v30)
        {
          goto LABEL_33;
        }

        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 4412481 && a2 == 0xE300000000000000)
        {
          v23 = 0;
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
        }

        v24 = a8;
        v25 = a7;
        v26 = a6;
      }
    }
  }

  v31 = a5;
LABEL_33:
  v32 = sub_100016E9C(v20, v20, 0x6669636570736E55, 0xEB00000000646569, v31, v26, v25, v24, v23 & 1, a10, a11);
  if (a1 == 0x4746747365676E49 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10001378C();
  }

  else if (v48 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    sub_100013938();
  }

  else if (a1 == 0x756F726765726F46 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100013B38(a9 & 1);
  }

  else if (a1 == 0x756F72676B636142 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100013E6C(a9 & 1);
  }

  else if (a1 == 4412481 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10003F2C0(0xD000000000000014, 0x80000001002BADD0, 0xD000000000000016, 0x80000001002BB180);
    sub_10000D3B4(*&v32[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB], *&v32[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context], v32);
    sub_1000135C4(v46, v47);
  }

  else
  {
    if (a1 == 0xD000000000000012 && 0x80000001002BE150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_71;
    }

    if (a1 == 0x6968747972657645 && a2 == 0xEE0074736146676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_65;
    }

    if ((a1 != 0x6968747972657645 || a2 != 0xEA0000000000676ELL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100040B5C(a1, a2, a9 & 1);
      goto LABEL_40;
    }

    if (a9)
    {
LABEL_71:
      sub_10004064C();
    }

    else
    {
LABEL_65:
      sub_1000407E4();
    }
  }

LABEL_40:
  v33 = OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context;
  v34 = *(*&v32[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context] + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__summary);
  v35 = *(v34 + 16);
  os_unfair_lock_lock(*(v35 + 16));
  swift_beginAccess();
  v36 = *(v34 + 24);
  v51 = *(v36 + 24);
  v56 = *(v36 + 112);
  v57 = *(v36 + 128);
  v58 = *(v36 + 144);
  v52 = *(v36 + 48);
  v53 = *(v36 + 64);
  v54 = *(v36 + 80);
  v55 = *(v36 + 96);
  swift_beginAccess();
  sub_1000192FC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000192FC();
  swift_endAccess();
  swift_endAccess();
  os_unfair_lock_unlock(*(v35 + 16));
  v37._countAndFlagsBits = 0x3A7972616D6D7553;
  v37._object = 0xE900000000000020;
  String.append(_:)(v37);
  v38._countAndFlagsBits = sub_100019C08();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 10;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  _print_unlocked<A, B>(_:_:)();
  sub_10003F2C0(0, 0xE000000000000000, 0xD000000000000011, 0x80000001002BE110);

  v40 = *(*&v32[v33] + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__failures);
  v41 = *(v40 + 16);
  os_unfair_lock_lock(*(v41 + 16));
  swift_beginAccess();
  v42 = *(v40 + 24);
  if (*(v42 + 16))
  {
    v43 = objc_opt_self();
    sub_100040538(v42);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v45 = [v43 errorWithErrors:isa];
  }

  else
  {
    v45 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(*(v41 + 16));
  if (v45)
  {
    swift_willThrow();
  }

  sub_100013048(0);
}

id sub_100041E2C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = objc_opt_self();
  v9 = _convertErrorToNSError(_:)();

  v10 = [v8 errnoForError:v9];

  return v10;
}

char *sub_100041FA0(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_100274C60(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100042020(const char *a1, int a2, int a3, char a4)
{
  v16 = 0;
  v15 = xmmword_1002B9BE0;
  v14 = 0;
  if (getattrlist(a1, &v15, &v14, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v14) == a3 || a2 != -1 && HIDWORD(v14) != a2)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (a4)
    {
      fprintf(__stdoutp, "%s set %i\n");
    }
  }

  else if (a4)
  {
    fprintf(__stdoutp, "%s update %i -> %i\n");
  }

  v13 = a3;
  if (!setattrlist(a1, &v15, &v13, 4uLL, 0))
  {
    return 0;
  }

  v8 = __error();
  v9 = *v8;
  v10 = __stderrp;
  v11 = strerror(*v8);
  fprintf(v10, "failed (%s) to update class for %s\n", v11, a1);
  return v9;
}

uint64_t sub_100042160(_DWORD *a1, uint64_t a2)
{
  v2 = a1[8];
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 48);
    v4 = a1[9];
    v5 = a1[10];
    v3 = v6;
    goto LABEL_5;
  }

  if ((v2 & 8) != 0)
  {
    v3 = *(a2 + 48);
    v4 = -1;
    v5 = 0;
LABEL_5:
    sub_100042020(v3, v4, v5, v2);
  }

  return 1;
}

_DWORD *sub_1000421A4(_DWORD *result, uint64_t a2)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[9];
    if ((v4 & 0x10) != 0)
    {
      if (result[10])
      {
        v5 = result[10];
      }

      else
      {
        v5 = 3;
      }

      return sub_100042020(*(a2 + 48), v3, v5, v4);
    }
  }

  return result;
}

uint64_t MBSynchronizeFileListsWithSnapshotDirectory(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  if ([MBFileOperation createDirectories:4294967294 destinationBasePath:@"/" destinationRpath:v15 permissions:493 error:a7])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10004239C;
    v24[3] = &unk_1003BBEB0;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v22 = MBAcquireSnapshotDirectoryLock(v25, a7, v24);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t sub_10004239C(uint64_t a1, double *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v54 = *(a1 + 32);
  v55 = *(a1 + 72);
  v6 = v54;
  v7 = *(&v54 + 1);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v53 = v55;
  v50 = *(&v55 + 1);
  v52 = v6;
  if (!v6)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 58, "snapshotDirectory");
  }

  if (!v7)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 59, "commitID");
  }

  if (!v8)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 60, "hmacKey");
  }

  if (!v9)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 61, "references");
  }

  if (!v10)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 62, "tracker");
  }

  v49 = v10;
  v51 = v7;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v78 objects:v102 count:16];
  if (v14)
  {
    v15 = *v79;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v79 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (([v12 addDomainReference:*(*(&v78 + 1) + 8 * i) error:a2] & 1) == 0)
        {
          v34 = 0;
          v35 = v13;
          goto LABEL_32;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v78 objects:v102 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100043718;
  v72[3] = &unk_1003BBF00;
  v17 = v12;
  v73 = v17;
  v74 = v8;
  v18 = v53;
  v75 = v18;
  v19 = v6;
  v20 = v51;
  v76 = v54;
  v77 = &v82;
  v21 = MBEnumerateDomainNamesForSnapshot(v19, v20, a2, v72);

  if (!v21)
  {
    v34 = 0;
    goto LABEL_33;
  }

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000438BC;
  v69[3] = &unk_1003BBF28;
  v22 = v18;
  v23 = v50;
  v70 = v55;
  v71 = &v90;
  [v17 enumerateConsolidatedDomainNamesAndReference:v69];
  v48 = v22;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_100043534;
  v67 = sub_100043544;
  v24 = v23;
  v68 = objc_opt_new();
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100043A18;
  v57[3] = &unk_1003BBF78;
  v25 = [[MBCKBatchFetch alloc] initWithOperationTracker:v49];
  v58 = v25;
  v26 = v19;
  v27 = v20;
  v61 = &v63;
  v28 = v48;
  v29 = v24;
  v60 = v55;
  v59 = v54;
  v62 = &v86;
  [v17 enumerateReferencesWithUnknownDomainName:v57];
  v56 = 0;
  LOBYTE(v24) = [(MBCKBatchFetch *)v25 finishWithError:&v56];
  v30 = v25;
  v31 = COERCE_DOUBLE(v56);
  if ((v24 & 1) == 0)
  {
    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v95 = v31;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "=sync= Failed to finish batch fetch of domain records: %@", buf, 0xCu);
      _MBLog();
    }

    if (a2)
    {
      v37 = *&v31;
      v34 = 0;
      *a2 = v31;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if ([*(v64 + 5) count])
  {
    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v64[5];
      *buf = 138412290;
      v95 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=sync= Encountered fetch errors during file list synchronization: %@", buf, 0xCu);
      v44 = *(v64 + 5);
      _MBLog();
    }

    if (a2)
    {
      [MBError errorWithErrors:*(v64 + 5)];
      *a2 = v34 = 0;
      goto LABEL_31;
    }

LABEL_27:
    v34 = 0;
    goto LABEL_31;
  }

  v38 = CFAbsoluteTimeGetCurrent();
  v39 = MBGetDefaultLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v91[3];
    v41 = v87[3];
    v42 = v83[3];
    *buf = 134218752;
    v95 = v38 - Current;
    v96 = 2048;
    v97 = v40;
    v98 = 2048;
    v99 = v41;
    v100 = 2048;
    v101 = v42;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "=sync= Finished file list synchronization in %.2fs - consolidated:%llu fetched:%llu deleted:%llu", buf, 0x2Au);
    v46 = v87[3];
    v47 = v83[3];
    v45 = v91[3];
    _MBLog();
  }

  v34 = 1;
LABEL_31:

  _Block_object_dispose(&v63, 8);
  v35 = v70;
LABEL_32:

LABEL_33:
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v90, 8);

  return v34;
}

void sub_100042B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

id MBSynchronizeSnapshotDirectoryForBackup(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void **a7)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v54 = a4;
  v15 = a5;
  v51 = a6;
  v58 = v12;
  if (!v12)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 166, "snapshotDirectory");
  }

  if (!v14)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 167, "currentSnapshot");
  }

  if (!v54)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 168, "device");
  }

  if (!v15)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 169, "tracker");
  }

  v50 = v15;
  v53 = v14;
  [v14 snapshotFormat];
  v16 = MBSnapshotFormatContainsFileLists();
  v17 = v13;
  [v13 snapshotFormat];
  if (MBSnapshotFormatContainsFileLists())
  {
    v18 = [v13 commitID];
    if (!v18)
    {
      __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 175, "previousSnapshotCommitID");
    }
  }

  else
  {
    v18 = 0;
  }

  v55 = v18;
  v57 = [v14 commitID];
  v67 = 0;
  v56 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v58 commitID:v57 readonly:0 error:&v67];
  v19 = v67;
  v20 = v19;
  if (v56)
  {
    v21 = v16 ^ 1;
    if (!v55)
    {
      v21 = 1;
    }

    if (v21)
    {
      v49 = [NSSet setWithObject:v57];
    }

    else
    {
      v76[0] = v57;
      v76[1] = v55;
      v22 = [NSArray arrayWithObjects:v76 count:2];
      v49 = [NSSet setWithArray:v22];
    }

    MBDeleteSnapshotDirectoriesNotBelongingToSnapshots(v58, v49);
    if (MBCreateSymlinksForPendingAndLatestSnapshots(v58, v57, v55, a7))
    {
      if (((v55 != 0) & v16) == 0)
      {
        v26 = v56;
        goto LABEL_55;
      }

      if ([v56 clearDomainsFromPreviousSnapshot:a7])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v72 = 0x3032000000;
        v73 = sub_100043534;
        v74 = sub_100043544;
        v75 = 0;
        v27 = [v54 snapshots];
        v48 = MBGetLatestDomainRecordReferencesFromSnapshots(v27);

        v28 = [v54 hmacKey];
        v66 = v20;
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10004354C;
        v63[3] = &unk_1003BBED8;
        v46 = v56;
        v64 = v46;
        p_buf = &buf;
        v29 = MBSynchronizeFileListsWithSnapshotDirectory(v58, v55, v28, v48, v50, v51, &v66, v63);
        v47 = v66;

        if (v29)
        {

          if (*(*(&buf + 1) + 40))
          {
            v30 = MBGetDefaultLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = *(*(&buf + 1) + 40);
              *v69 = 138412290;
              v70 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=sync= Failed to add domains into pending snapshot database: %@", v69, 0xCu);
              v43 = *(*(&buf + 1) + 40);
              _MBLog();
            }

            if (a7)
            {
              *a7 = *(*(&buf + 1) + 40);
            }

            sub_100043458(v46);
            v26 = 0;
            goto LABEL_54;
          }

          v45 = [v54 domainHMACsToRepair];
          if (![v45 count])
          {
            goto LABEL_49;
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v34 = v45;
          v35 = [v34 countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v35)
          {
            v36 = *v60;
            do
            {
              for (i = 0; i != v35; i = i + 1)
              {
                if (*v60 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v59 + 1) + 8 * i);
                v39 = MBGetDefaultLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  *v69 = 138412290;
                  v70 = v38;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "=sync= =domain repair= Found domain HMAC to repair %@", v69, 0xCu);
                  _MBLog();
                }
              }

              v17 = v13;
              v35 = [v34 countByEnumeratingWithState:&v59 objects:v68 count:16];
            }

            while (v35);
          }

          if (([v46 addDomainHMACsToRepair:v34 error:a7] & 1) == 0)
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = *a7;
              *v69 = 138412290;
              v70 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "=sync= =domain repair= Failed to add repair domains to pending snapshot database: %@", v69, 0xCu);
              v44 = *a7;
              _MBLog();
            }

            sub_100043458(v46);
            v26 = 0;
          }

          else
          {
LABEL_49:
            v26 = v46;
            v34 = v45;
          }
        }

        else
        {
          if (a7)
          {
            v32 = v47;
            *a7 = v47;
          }

          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *v69 = 138412290;
            v70 = v47;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=sync= Failed to synchronize file lists: %@", v69, 0xCu);
            _MBLog();
          }

          sub_100043458(v46);
          v26 = 0;
          v34 = v64;
        }

LABEL_54:
        _Block_object_dispose(&buf, 8);

        v20 = v47;
        goto LABEL_55;
      }
    }

    sub_100043458(v56);
    v26 = 0;
LABEL_55:
    v25 = v49;
    goto LABEL_56;
  }

  if (a7)
  {
    v23 = v19;
    *a7 = v20;
  }

  v24 = MBGetDefaultLog();
  v25 = v24;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=sync= Failed to create pending snapshot database: %@", &buf, 0xCu);
    _MBLog();
    v26 = 0;
    v25 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_56:

  return v26;
}

void sub_100043458(void *a1)
{
  v4 = 0;
  v1 = [a1 close:&v4];
  v2 = v4;
  if ((v1 & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "=sync= Failed to close pending snapshot DB: %@", buf, 0xCu);
      _MBLog();
    }
  }
}

uint64_t sub_100043534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004354C(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [v8 baseRecordID];
  v17 = 0;
  v11 = [v9 addDomainFromPreviousSnapshotsWithName:v7 recordID:v10 pageCount:objc_msgSend(v8 error:{"pageCount"), &v17}];
  v12 = v17;

  v13 = MBGetDefaultLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 1024;
      v21 = a4;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=sync= Added domain %@(%d) with reference %@ into pending snapshot database", buf, 0x1Cu);
      _MBLog();
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=sync= Failed to insert domain name into pending snapshot DB: %@", buf, 0xCu);
      _MBLog();
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = v12;
    v13 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

uint64_t sub_100043718(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) consolidateDomainName:v3 hmacKey:*(a1 + 40)] & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=sync= Deleting file list for %@ that isn't present in snapshot", buf, 0xCu);
      _MBLog();
    }

    [*(a1 + 48) trackDeletedDomainDuringFileListSynchronization:v3];
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v11 = 0;
    v7 = MBDeleteFileListDB(v5, v6, v3, &v11);
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=sync= Failed to delete file list database for domain %@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    ++*(*(*(a1 + 72) + 8) + 24);
  }

  return 1;
}

uint64_t sub_1000438BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 baseRecordID];
    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=sync= Consolidated baseRecordID %@ with domain on disk %@", buf, 0x16u);

    v10 = [v6 baseRecordID];
    _MBLog();
  }

  [*(a1 + 32) trackConsolidatedDomainDuringFileListSynchronization:v5];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
  ++*(*(*(a1 + 48) + 8) + 24);

  return 1;
}

uint64_t sub_100043A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100043CC4;
  v22[3] = &unk_1003BBF50;
  v7 = *(a1 + 48);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v8 = v3;
  v9 = v5;
  v10 = v7;
  v11 = v6;
  v12 = v22;
  v13 = v4;
  v14 = [v8 baseRecordID];
  v15 = [MBDomainRecord recordIDFromBaseRecordID:v14 pageIndex:0];

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=sync= Fetching domain record ID %@ from reference %@", buf, 0x16u);
    _MBLog();
  }

  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100043D58;
  v26 = &unk_1003BBFA0;
  v27 = v9;
  v28 = v10;
  v30 = v8;
  v31 = v12;
  v29 = v11;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v8;
  [v13 fetchRecordWithID:v15 completion:buf];

  ++*(*(*(a1 + 80) + 8) + 24);
  return 1;
}

void sub_100043CC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 trackDownloadedDomainDuringFileListSynchronization:v7];
  (*(*(a1 + 40) + 16))();
}

void sub_100043D58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=sync= Failed to fetch recordID %@: %@", buf, 0x16u);
      _MBLog();
    }
  }

  else
  {
    v10 = [MBDomainRecord domainRecordFromCKRecord:a3];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 domainName];
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=sync= Fetched domain record %@ for domain %@", buf, 0x16u);

      v19 = [v10 domainName];
      _MBLog();
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v20 = 0;
    v15 = [v10 decompressAssetIntoSnapshotDirectoryRoot:v13 commitID:v14 error:&v20];
    v9 = v20;
    if (v15)
    {
      v16 = *(a1 + 64);
      v17 = [v10 domainName];
      (*(v16 + 16))(v16, v17, *(a1 + 56), 1);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=sync= Failed to decompress domain record %@: %@", buf, 0x16u);
        _MBLog();
      }

      [*(a1 + 48) addObject:v9];
    }
  }
}

void sub_100044CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 applicationType];
    v7 = [v6 isEqualToString:LSSystemApplicationType];

    if (v7)
    {
      goto LABEL_30;
    }

    v8 = [v5 installType];
    if ((v8 - 7) > 1)
    {
      goto LABEL_30;
    }

    v9 = v8;
    v10 = [v5 bundleIdentifier];
    v11 = [v5 managedPersonas];
    if ([v11 count])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v10;
        v25 = 2114;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found app %@ with managed personae: %{public}@", buf, 0x16u);
        v19 = v10;
        v20 = v11;
        _MBLog();
      }
    }

    if (*(a1 + 64) != 1)
    {
      if ([v11 containsObject:*(a1 + 32)])
      {
        goto LABEL_16;
      }

      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138412802;
        v24 = v10;
        v25 = 2048;
        v26 = v9;
        v27 = 2114;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle: %@/%lu for managed persona %{public}@", buf, 0x20u);
        v21 = *(a1 + 32);
        _MBLog();
      }

LABEL_28:

LABEL_29:
LABEL_30:

      goto LABEL_31;
    }

    v13 = [v5 purchaserDSID];
    if (![v11 count] || *(a1 + 32) && (objc_msgSend(v11, "containsObject:") & 1) != 0)
    {
      if ([v11 count] || (objc_msgSend(*(a1 + 40), "addAccountWithDSID:", v13) & 1) != 0)
      {

LABEL_16:
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v10;
          v25 = 2048;
          v26 = v9;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found demoted bundle: %@/%lu", buf, 0x16u);
          v19 = v10;
          v20 = v9;
          _MBLog();
        }

        if (v9 == 7)
        {
          v15 = *(a1 + 48);
        }

        else
        {
          v15 = *(a1 + 56);
        }

        [v15 addObject:{v10, v19, v20}];
        goto LABEL_29;
      }

      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412802;
      v24 = v10;
      v25 = 2048;
      v26 = v9;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for DSID %@", buf, 0x20u);
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        goto LABEL_28;
      }

      v18 = *(a1 + 32);
      *buf = 138412802;
      v24 = v10;
      v25 = 2048;
      v26 = v9;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for personal persona %{public}@", buf, 0x20u);
      v22 = *(a1 + 32);
    }

    _MBLog();
    goto LABEL_27;
  }

LABEL_31:
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100045580(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  qword_1004215C8 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100047CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100047CDC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = [v3 accountIdentifier];
  v7 = [v4 stringByAppendingFormat:@".%@", v6];
  [v5 setUniqueIdentifier:v7];

  [v5 setTypeIdentifier:v4];
  if ([v3 isPrimaryAccount])
  {
    v8 = [v3 accountIdentifier];
  }

  else
  {
    v9 = +[ACAccountStore defaultStore];
    v10 = [v3 accountIdentifier];
    v11 = [v9 accountWithIdentifier:v10];
    v8 = [v11 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
  }

  [v5 setAccountIdentifier:v8];
  [v5 setExtensionIdentifier:@"com.apple.MobileBackup.framework.FollowUpUIExtension"];

  return v5;
}

uint64_t sub_100047E3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100047E54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get localized string from byte count: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }
}

id sub_100047F48(uint64_t a1)
{
  [*(a1 + 32) _postFollowUpItem:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _refreshBackgroundRestoreFollowUps];
}

void sub_100048164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004817C(uint64_t a1)
{
  [*(a1 + 32) _postFollowUpItem:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(a1 + 32);

  return [v2 _refreshBackgroundRestoreFollowUps];
}

void sub_1000495CC(id a1)
{
  qword_1004215D8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];

  _objc_release_x1();
}

void sub_100049614(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v1 = qword_1004215D0;
  qword_1004215D0 = 0;

  objc_sync_exit(obj);
}

int main(int argc, const char **argv, const char **envp)
{
  MBSetIsRunningInDaemon();
  MBLogEnableFileLogging();
  v3 = os_transaction_create();
  atexit_b(&stru_1003BC110);
  v4 = objc_autoreleasePoolPush();
  v5 = +[MBXPCServer sharedInstance];
  v6 = +[MBDaemon sharedDaemon];
  [v6 setupSignalHandlers];
  v7 = +[MBCKManager sharedInstance];
  [v7 setUpXPCEventHandler];
  v8 = +[MBBackupScheduler sharedInstance];
  v9 = +[_TtC7backupd19MBActivityScheduler sharedInstance];
  objc_autoreleasePoolPop(v4);
  v10 = objc_opt_self();

  if (!v6)
  {
    __assert_rtn("main", "backupd_main.m", 47, "daemon");
  }

  [v6 run];

  return 0;
}

void sub_10004A2B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 138543618;
        v19 = objc_opt_class();
        v20 = 2112;
        v21 = v9;
        v16 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ record: %@", buf, 0x16u);

        v17 = *(a1 + 32);
        objc_opt_class();
        _MBLog();
      }
    }
  }

  else
  {
    [*(a1 + 32) refreshWithRecord:v8];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v11, v12, v13);
}

void sub_10004A54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004A57C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004AAE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    if ([MBError isCKNotFoundError:v8])
    {
      if (!v12)
      {
        __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]_block_invoke", "MBCKModel.m", 140, "recordID");
      }

      [*(a1 + 32) addObject:?];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    }

    objc_sync_exit(v9);
  }

  else
  {
    if (!v7)
    {
      __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]_block_invoke", "MBCKModel.m", 148, "record");
    }

    v10 = [objc_alloc(*(a1 + 64)) initWithRecord:v7 cache:*(a1 + 40)];
    v11 = *(a1 + 48);
    objc_sync_enter(v11);
    [*(a1 + 48) addObject:v10];
    objc_sync_exit(v11);

    v9 = v10;
  }
}

void sub_10004AC60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(*(*(a1 + 64) + 8) + 40);
  }

  v8 = v3;
  v4 = [*(a1 + 32) count];
  v5 = &v4[[*(a1 + 40) count]];
  if (v5 > [*(a1 + 48) count])
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]_block_invoke_2", "MBCKModel.m", 157, "children.count + missing.count <= refs.count");
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_10004B154(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error preparing record %@ for save to server: %@", buf, 0x16u);
      v6 = *(a1 + 32);
      _MBLog();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
  }

  else
  {
    [*(a1 + 32) addSavesWithOperationTracker:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10004B394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004B3AC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004B760(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error preparing record %@ for save to server: %@", buf, 0x16u);
      v6 = *(a1 + 32);
      _MBLog();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
  }

  else
  {
    [*(a1 + 32) addSavesWithBatchSave:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10004C184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C19C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004CB24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004CB3C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004CDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004CDE0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleAssetFetchResponseFor:*(a1 + 32) record:v9 withFetchError:v6];
  }
}

int64_t sub_10004D714(id a1, MBCKSnapshot *a2, MBCKSnapshot *a3)
{
  v4 = a3;
  v5 = [(MBCKSnapshot *)a2 created];
  v6 = [(MBCKSnapshot *)v4 created];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10004EC44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error fetching manifest records from server for domain %@: %@", buf, 0x16u);
      v19 = *(a1 + 32);
      _MBLog();
    }

    v6 = *(a1 + 40);
    objc_sync_enter(v6);
    [*(a1 + 40) addObject:v3];
    objc_sync_exit(v6);
  }

  else
  {
    v7 = [*(a1 + 48) domainName];

    if (v7)
    {
      v8 = *(*(a1 + 56) + 72);
      objc_sync_enter(v8);
      v9 = *(a1 + 48);
      v10 = *(*(a1 + 56) + 72);
      v11 = [v9 domainName];
      [v10 setObject:v9 forKeyedSubscript:v11];

      objc_sync_exit(v8);
      v12 = *(a1 + 64);
      if (v12)
      {
        (*(v12 + 16))(v12, *(a1 + 48));
      }
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 48) recordID];
        *buf = 138543362;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Manifest %{public}@ had no domain name", buf, 0xCu);

        v20 = [*(a1 + 48) recordID];
        _MBLog();
      }

      v15 = *(a1 + 40);
      objc_sync_enter(v15);
      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) recordID];
      v18 = [MBError errorWithCode:4 format:@"Manifest %@ had no domain name", v17];
      [v16 addObject:v18];

      objc_sync_exit(v15);
    }
  }
}

void sub_10004EF08(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [MBError errorWithErrors:*(a1 + 32)];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v3)
    {
LABEL_9:
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 40) snapshotID];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Done fetching all manifests from the server for snapshot %@", buf, 0xCu);

        v10 = [*(a1 + 40) snapshotID];
        _MBLog();
      }

      v4 = 0;
      *(*(a1 + 40) + 106) = 1;
      goto LABEL_12;
    }

    v4 = v3;
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 40) snapshotID];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch the manifest records from the server for snapshot %@: %@", buf, 0x16u);

    v9 = [*(a1 + 40) snapshotID];
    _MBLog();
  }

LABEL_12:
  (*(*(a1 + 48) + 16))(*(a1 + 48), v4);
}

void sub_10004F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F268(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004F280(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100050118(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to delete old manifests: %@", buf, 0xCu);
      _MBLog();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000501F4(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 deleteCloudFilesPendingDeleteForManifestID:*(a1 + 40)];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_10005024C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to reclaim quota for replaced files: %@", buf, 0xCu);
      _MBLog();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100050328(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000503B4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100050414(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) count])
  {
    v3 = [MBError errorWithErrors:*(a1 + 32)];
    if (!v3)
    {
      goto LABEL_9;
    }

LABEL_6:
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      *buf = 138543618;
      v34 = v6;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to prepare the manifests for snapshot %{public}@: %@", buf, 0x16u);
      v26 = *(a1 + 40);
      _MBLog();
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v3);
    goto LABEL_30;
  }

  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (v4)
  {
    v3 = v4;
    goto LABEL_6;
  }

LABEL_9:
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully prepared all manifests for snapshot %{public}@", buf, 0xCu);
    v25 = *(a1 + 40);
    _MBLog();
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 48) + 72), "count")}];
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 48) + 72), "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [*(*(a1 + 48) + 72) allValues];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v12)
  {
    v3 = 0;
    goto LABEL_29;
  }

  v13 = v12;
  v14 = *v29;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v28 + 1) + 8 * i);
      if (([v16 isPersistedToServer] & 1) == 0)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Attempted to commit a snapshot with unsaved manifest: %@", buf, 0xCu);
          _MBLog();
        }

        v20 = @"Attempted to commit a snapshot with unsaved manifest";
        goto LABEL_28;
      }

      v17 = [v16 domainName];

      if (!v17)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = [v16 recordRepresentation];
          *buf = 138412546;
          v34 = v16;
          v35 = 2112;
          v36 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Manifest has no domain name: %@, %@", buf, 0x16u);

          v27 = [v16 recordRepresentation];
          _MBLog();
        }

        v20 = @"Attempted to add a manifest without a domain name to a snapshot";
LABEL_28:

        v3 = [MBError errorWithCode:306 format:v20];
        goto LABEL_29;
      }

      [v9 addObject:v16];
      v18 = [v16 baseRecordIDString];
      [v10 addObject:v18];
    }

    v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v3 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v22 = *(a1 + 48);
  v23 = *(v22 + 136);
  *(v22 + 136) = v10;
  v24 = v10;

  (*(*(a1 + 56) + 16))();
LABEL_30:

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100052B6C(id *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=commit= Marking domain %{public}@ (baseRecordID:%@ pageCount:%llu) checksum [0x%llx] as modified", buf, 0x2Au);
    _MBLog();
  }

  v12 = [[MBCKSnapshotToDomainRecordReference alloc] initWithBaseRecordID:v10 pageCount:a4 checksum:a5];
  [a1[4] addObject:v12];
  [a1[5] trackModifiedDomainInCommit:v9];
  if ([a1[6] count])
  {
    v13 = [MBDomainRecord domainHmacFromBaseRecordID:v10];
    if ([a1[6] containsObject:v13])
    {
      [a1[5] trackRepairedDomain:v9];
      [a1[5] trackDeletedDomainInCommit:v9];
      [a1[7] removeObject:v13];
    }
  }

  return 1;
}

uint64_t sub_100052D1C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MBDomainRecord domainHmacFromBaseRecordID:v6];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=commit= Marking domain %{public}@ with hmac %@ and baseRecordID %@ to be removed", buf, 0x20u);
    _MBLog();
  }

  [a1[4] addObject:v7];
  [a1[5] trackDeletedDomainInCommit:v5];
  if ([a1[6] count])
  {
    v9 = [MBDomainRecord domainHmacFromBaseRecordID:v6];
    if ([a1[6] containsObject:v9])
    {
      [a1[5] trackRepairedDomain:v5];
      [a1[7] removeObject:v9];
    }
  }

  return 1;
}

id MBGetLatestDomainRecordReferencesFromSnapshots(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v1;
  v34 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v34)
  {
    v33 = *v45;
    do
    {
      v3 = 0;
      do
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * v3);
        v5 = MBGetDefaultLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v4 snapshotID];
          *buf = 138412290;
          v50 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=replay= Starting to replay snapshot: %@", buf, 0xCu);

          v30 = [v4 snapshotID];
          _MBLog();
        }

        [v4 type];
        v35 = v3;
        if (MBSnapshotTypeIsFull())
        {
          v7 = MBGetDefaultLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [v4 snapshotID];
            *buf = 138412290;
            v50 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=replay= Detected full backup for %@, invalidating latest refs", buf, 0xCu);

            v30 = [v4 snapshotID];
            _MBLog();
          }

          v9 = objc_opt_new();
          v2 = v9;
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v10 = [v4 domainHmacsToRemove];
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v53 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v40 + 1) + 8 * i);
              v16 = MBGetDefaultLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = [v4 snapshotID];
                *buf = 138412546;
                v50 = v17;
                v51 = 2112;
                v52 = v15;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=replay= Snapshot %@ contains reference to deleted domain hmac %@", buf, 0x16u);

                v30 = [v4 snapshotID];
                v31 = v15;
                _MBLog();
              }

              [v2 setObject:0 forKeyedSubscript:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v40 objects:v53 count:16];
          }

          while (v12);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = [v4 modifiedDomainRecordReferences];
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v37;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v36 + 1) + 8 * j);
              v24 = [v23 baseRecordID];
              v25 = [MBDomainRecord domainHmacFromBaseRecordID:v24];
              [v2 setObject:v23 forKeyedSubscript:v25];
              v26 = MBGetDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v4 snapshotID];
                *buf = 138412546;
                v50 = v27;
                v51 = 2112;
                v52 = v24;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=replay= Snapshot %@ contains reference to modified domain baseRecordID: %@", buf, 0x16u);

                v30 = [v4 snapshotID];
                v31 = v24;
                _MBLog();
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v20);
        }

        v3 = v35 + 1;
      }

      while ((v35 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v34);
  }

  v28 = [v2 allValues];

  return v28;
}

id MBGetAllDomainHMACsInSnapshots(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        [v6 type];
        if (MBSnapshotTypeIsFull())
        {
          v7 = objc_opt_new();

          v2 = v7;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [v6 modifiedDomainRecordReferences];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v18 + 1) + 8 * j) baseRecordID];
              v14 = [MBDomainRecord domainHmacFromBaseRecordID:v13];
              [v2 addObject:v14];
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  return v2;
}

id MBGetAllDomainQuotasByDomainHMAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 indexOfObjectPassingTest:&stru_1003BC3C0];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2)
    {
      [MBError errorWithCode:204 format:@"No domains assets snapshot found"];
      *a2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v30 = v3;
    v6 = [v3 subarrayWithRange:{v4, objc_msgSend(v3, "count") - v4}];
    v7 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = a2;
      v32 = *v38;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          [v11 type];
          if (MBSnapshotTypeIsFull())
          {
            v12 = objc_opt_new();

            v7 = v12;
          }

          v13 = [v11 domainRecordQuotas];
          if (!v13)
          {
            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v11 recordID];
              *buf = 138412290;
              v43 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Domain quotas missing from snapshot record %@", buf, 0xCu);

              v28 = [v11 recordID];
              _MBLog();
            }

            v3 = v30;
            if (v29)
            {
              v26 = [v11 recordID];
              *v29 = [MBError errorWithCode:4 format:@"Domain quotas missing from snapshot record %@", v26];
            }

            v23 = obj;

            v5 = 0;
            goto LABEL_30;
          }

          v14 = v13;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v15 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v34;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v34 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v33 + 1) + 8 * j);
                v20 = [v19 domainHmac];
                v21 = [v7 objectForKeyedSubscript:v20];

                if (v21)
                {
                  v22 = [v7 objectForKeyedSubscript:v20];
                  [v22 addQuota:{objc_msgSend(v19, "quota")}];
                }

                else
                {
                  [v7 setObject:v19 forKeyedSubscript:v20];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v16);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v23 = obj;

    v7 = v7;
    v5 = v7;
    v3 = v30;
LABEL_30:
  }

  return v5;
}

uint64_t MBSnapshotTypeForFormatTransition(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == -1)
  {
    __assert_rtn("MBSnapshotTypeForFormatTransition", "MBCKSnapshot.m", 1035, "previousFormat != MBSnapshotFormatUnspecified");
  }

  if (a2 == -1)
  {
    __assert_rtn("MBSnapshotTypeForFormatTransition", "MBCKSnapshot.m", 1036, "nextFormat != MBSnapshotFormatUnspecified");
  }

  if (a1 == a2)
  {
    goto LABEL_4;
  }

  v3 = a2;
  if (a2 != 3)
  {
    if (a2)
    {
      if (a1 <= a2)
      {
LABEL_4:
        v3 = 1;
        goto LABEL_12;
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:205 format:@"Invalid format transition %llu -> %llu", a1, a2];
      }

      v3 = -1;
    }

    else
    {
      v3 = 2;
    }
  }

LABEL_12:
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MBStringForSnapshotType();
    v7 = MBStringForSnapshotFormat();
    v8 = MBStringForSnapshotFormat();
    *buf = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Determined snapshot type:%@ for format transition %@ -> %@", buf, 0x20u);

    v9 = MBStringForSnapshotType();
    v10 = MBStringForSnapshotFormat();
    v12 = MBStringForSnapshotFormat();
    _MBLog();
  }

  return v3;
}

id MBOperationGroupNamePrefixForBackup(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = MBStringForSnapshotFormat();
  [v4 appendFormat:@"%@|", v5];

  if (v3 && [v3 snapshotFormat] < a2)
  {
    [v4 appendFormat:@"transition|"];
  }

  else
  {
    v6 = MBStringForSnapshotType();
    [v4 appendFormat:@"%@|", v6];
  }

  v7 = +[MBBehaviorOptions sharedOptions];
  [v4 appendFormat:@"%d|", objc_msgSend(v7, "isAutomation")];

  return v4;
}

BOOL MBSnapshotsAreTransitioningFormats(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    __assert_rtn("MBSnapshotsAreTransitioningFormats", "MBCKSnapshot.m", 1075, "currentSnapshot");
  }

  v5 = v4;
  if (v3)
  {
    v6 = [v3 snapshotFormat];
    v7 = v6 != [v5 snapshotFormat];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

const __CFString *MBStringForCameraRollState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unspecified";
  }

  else
  {
    return off_1003BC3E0[a1 - 1];
  }
}

id sub_100056288(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.01 maxProgress:0.05];

  v5 = *(a1 + 32);

  return [v5 refreshCacheWithError:a2];
}

id sub_1000562F4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.05 maxProgress:0.1];

  v5 = *(a1 + 32);

  return [v5 synchronizeFileListsWithError:a2];
}

id sub_10005636C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.1 maxProgress:0.95];

  v5 = *(a1 + 32);

  return [v5 downloadRestorablesWithError:a2];
}

void sub_100058D94(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Fetched %@ (downloaded: %d) with reference %@", buf, 0x1Cu);
    _MBLog();
  }

  [*(a1 + 32) addObject:v7];
}

void sub_1000591A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_1000591E0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]_block_invoke", "MBCKRestoreEngine.m", 871, "restorable");
  }

  if (!a3)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]_block_invoke", "MBCKRestoreEngine.m", 872, "enumeratorError");
  }

  v6 = v5;
  ++*(*(a1[5] + 8) + 24);
  v7 = [*(a1[4] + 280) foregroundStateForRestorable:v5];
  if (v7 == 3)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  return v7;
}

uint64_t sub_100059C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100059C18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relativePath];

  if (!v4)
  {
    v7 = MBGetDefaultLog();
    v16 = 1;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v17 = [v3 fileID];
    *buf = 138412546;
    v32 = v17;
    v33 = 1024;
    LODWORD(v34) = [v3 deleted];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=ckrestore-engine= Ignoring fileID: %@ with NULL relativePath (deleted: %d)", buf, 0x12u);

    v18 = [v3 fileID];
    [v3 deleted];
    _MBLog();
    goto LABEL_24;
  }

  v5 = *(a1 + 32);
  v6 = [v3 domainName];
  v7 = [v5 domainForName:v6];

  if (!v7)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Unable to get domain for file: %@", buf, 0xCu);
      _MBLog();
    }

    v7 = 0;
    goto LABEL_24;
  }

  [v3 setupWithDomain:v7];
  v8 = [v3 relativePath];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 40) restorePolicy];
    v11 = [v10 shouldRestoreSystemFile:v3];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if ([v3 size])
  {
    v12 = [v3 signature];
    if (!v12)
    {
      __assert_rtn("[MBCKRestoreEngine findRestorablesWithError:]_block_invoke", "MBCKRestoreEngine.m", 949, "file.size == 0 || file.signature");
    }
  }

  if (![v3 volumeType])
  {
    __assert_rtn("[MBCKRestoreEngine findRestorablesWithError:]_block_invoke", "MBCKRestoreEngine.m", 950, "file.volumeType != MBVolumeTypeUnspecified");
  }

  v13 = [*(a1 + 48) addFileToRestoreFiles:v3];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v18 = [v7 name];
    v19 = *(*(a1 + 64) + 8);
    v22 = *(v19 + 40);
    v20 = (v19 + 40);
    v21 = v22;
    if (v22)
    {
      if ([v21 isEqualToString:v18])
      {
        v23 = *(*(a1 + 72) + 8);
        v24 = *(v23 + 24) + 1;
LABEL_23:
        *(v23 + 24) = v24;
        ++*(*(*(a1 + 80) + 8) + 24);
LABEL_24:

LABEL_25:
        v16 = 1;
        goto LABEL_26;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(*(*(a1 + 72) + 8) + 24);
        v27 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 134218242;
        v32 = v26;
        v33 = 2114;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found %llu restorables for %{public}@", buf, 0x16u);
        v29 = *(*(*(a1 + 72) + 8) + 24);
        v30 = *(*(*(a1 + 64) + 8) + 40);
        _MBLog();
      }

      v20 = (*(*(a1 + 64) + 8) + 40);
    }

    objc_storeStrong(v20, v18);
    v23 = *(*(a1 + 72) + 8);
    v24 = 1;
    goto LABEL_23;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

uint64_t sub_10005B144(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] useFileLists])
  {
    [a1[5] addObject:v3];
  }

  if (([a1[6] isSystemDomainName:v3] & 1) != 0 || (+[MBDomain isSystemContainerName:](MBDomain, "isSystemContainerName:", v3) & 1) != 0 || (+[MBDomain isSystemSharedContainerName:](MBDomain, "isSystemSharedContainerName:", v3) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"SkippedFilesDomain"))
  {
    [a1[7] addObject:v3];
  }

  else if (([a1[4] useFileLists] & 1) == 0 && +[MBDomain isLegacyPerAppPlaceholderName:](MBDomain, "isLegacyPerAppPlaceholderName:", v3))
  {
    v5 = [MBDomain containerIDWithName:v3];
    v6 = [a1[4] excludedAppBundleIDs];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Excluding legacy app placeholder for %{public}@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      [a1[4] _uninstallExistingAppWithBundleID:v5];
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= App wasn't already installed %@. Adding it to domainNamesToRestore", buf, 0xCu);
        _MBLog();
      }

      [a1[7] addObject:v3];
    }
  }

  return 1;
}

uint64_t sub_10005B36C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) excludedAppBundleIDs];
  v5 = [v4 containsObject:v3];

  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Excluding app placeholder for %{public}@", buf, 0xCu);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=ckrestore-engine= Found placeholder ipa corresponding to bundleID %@", buf, 0xCu);
      _MBLog();
    }

    [*(a1 + 32) _uninstallExistingAppWithBundleID:v3];
  }

  return 1;
}

id sub_10005B4E4(id result, uint64_t a2, uint64_t a3)
{
  if (!(a3 | a2))
  {
    v3 = result;
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 4);
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Removing from foreground restore: %@ (not present in backup)", buf, 0xCu);
      v6 = *(v3 + 4);
      _MBLog();
    }

    return [*(v3 + 5) addObject:*(v3 + 4)];
  }

  return result;
}

void sub_10005BF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ([*(a1 + 32) containsObject:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) += a4 - a6;
    *(*(*(a1 + 48) + 8) + 24) += a5 - a7;
  }

  else
  {
    a6 = a4;
    a7 = a5;
  }

  *(*(*(a1 + 56) + 8) + 24) += a6;
  *(*(*(a1 + 64) + 8) + 24) += a7;
  return 1;
}

void sub_10005C56C(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) restoreRootPath];
    *buf = 138543618;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting domain restore for %{public}@ at path %@", buf, 0x16u);

    v5 = *(a1 + 32);
    v15 = [*(a1 + 40) restoreRootPath];
    _MBLog();
  }

  v6 = *(a1 + 40);
  v16 = 0;
  v7 = [v6 runWithError:&v16];
  v8 = v16;
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ckrestore-engine= Finished domain restore for %{public}@", buf, 0xCu);
      v13 = *(a1 + 32);
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore using plan for domain %{public}@: %@", buf, 0x16u);
      v14 = *(a1 + 32);
      _MBLog();
    }

    v10 = *(a1 + 48);
    objc_sync_enter(v10);
    [*(a1 + 48) addObject:v8];
    objc_sync_exit(v10);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10005D4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D5BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 size];
  *(*(*(a1 + 48) + 8) + 24) += &v4[[v3 resourcesSize]];
  v5 = [*(a1 + 32) domainManager];
  v6 = [v3 domainName];
  v7 = [v5 domainForName:v6];

  v8 = *(a1 + 40);
  v9 = [v7 name];
  LODWORD(v8) = [v8 containsObject:v9];

  if (v8)
  {
    v10 = [v3 size];
    *(*(*(a1 + 56) + 8) + 24) += &v10[[v3 resourcesSize]];
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  return 1;
}

uint64_t sub_10005D6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isRegularFile] && (objc_msgSend(v3, "deleted") & 1) == 0)
  {
    v5 = [v3 size];
    v6 = &v5[[v3 resourcesSize]];
    v7 = [*(a1 + 32) domainManager];
    v8 = [v3 domainName];
    v9 = [v7 domainForName:v8];

    v10 = *(a1 + 40);
    v11 = [v9 name];
    LOBYTE(v10) = [v10 containsObject:v11];

    if ((v10 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) += v6;
      ++*(*(*(a1 + 64) + 8) + 24);
      v4 = 1;
LABEL_20:

      goto LABEL_21;
    }

    [v3 setupWithDomain:v9];
    v24 = 0;
    v12 = *(*(a1 + 32) + 280);
    v23 = 0;
    v13 = [v12 shouldRestoreFile:v3 markFileAsSkipped:&v24 error:&v23];
    v14 = v23;
    if (v13)
    {
      if (([v3 downloaded] & 1) == 0)
      {
        ++*(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 80) + 8) + 24) += v6;
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=ckrestore-engine= Adding file to download batch: %@", buf, 0xCu);
          _MBLog();
        }

        [*(a1 + 48) prefetchRecord:v3];
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      v16 = *(*(a1 + 96) + 8);
      v17 = &v6[*(v16 + 24)];
    }

    else
    {
      v18 = [*(a1 + 32) progressModel];
      [v18 finishedItem:v3 size:v6];

      if (v24 == 1)
      {
        v19 = [*(a1 + 32) cache];
        v20 = [v19 setRestoreState:13 forFile:v3];

LABEL_18:
        v4 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (v14 && ([MBError isError:v14 withCode:213]& 1) == 0)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v26 = v3;
          v27 = 2112;
          v28 = v14;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to determine if file %@ should be restored: %@", buf, 0x16u);
          _MBLog();
        }

        v4 = 0;
        goto LABEL_19;
      }

      *(*(*(a1 + 56) + 8) + 24) += v6;
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 24) + 1;
    }

    *(v16 + 24) = v17;
    goto LABEL_18;
  }

  v4 = 1;
LABEL_21:

  return v4;
}

void sub_10005E884(id a1)
{
  qword_1004215E8 = objc_opt_new();

  _objc_release_x1();
}

void sub_10005F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id obj, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&a41, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_10005F748(id a1)
{
  qword_1004215F8 = objc_opt_new();

  _objc_release_x1();
}

int64_t sub_10005F7A4(id a1, id a2, id a3)
{
  if ([a2 containerType] == 1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10006171C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domainName];
  v5 = [v3 entitlements];
  v6 = v5;
  if (v5)
  {
    if (![v5 count])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= No entitlements for domain %@", buf, 0xCu);
        v13 = v4;
        _MBLog();
      }
    }

    v8 = [v3 entitlementsPath];
    v9 = [v3 owningBundleID];
    if (!v9)
    {
      v9 = [MBDomain containerIDWithName:v4];
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Setting entitlements for %@ (%@): %@", buf, 0x20u);
      _MBLog();
    }

    v11 = [[MBPlaceholderEntitlements alloc] initWithBundleID:v9 relativePath:v8 entitlements:v6];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v4];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Found nil entitlements dictionary for domain %@", buf, 0xCu);
      _MBLog();
    }
  }

  return 1;
}