uint64_t sub_1000164BC(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000166E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100016770(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_100016798(uint64_t a1, char *a2, void *a3, char a4, uint64_t (*a5)(void *))
{
  v5 = a1;
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v84 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a2;
    v10 = v5 + 56;
    v11 = -1 << *(v5 + 32);
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v67 = v5;
    v68 = *&a2[OBJC_IVAR____TtC7backupd19MBDryRestoreContext__domainManager];
    v60 = v5 + 64;
    v14 = *(v5 + 36);
    v61 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir;
    v62 = &a2[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_snapshotUUID];
    v63 = v6;
    v64 = a2;
    v65 = v14;
    v66 = v5 + 56;
    do
    {
      if ((v12 & 0x8000000000000000) != 0 || v12 >= 1 << *(v5 + 32))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      v17 = 1 << v12;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_28;
      }

      if (v14 != *(v5 + 36))
      {
        goto LABEL_29;
      }

      v78 = v12 >> 6;
      v79 = v12;
      v18 = (*(v5 + 48) + 16 * v12);
      v19 = *v18;
      v20 = v18[1];

      v21 = String._bridgeToObjectiveC()();
      v22 = [v68 domainForName:v21];

      if (!v22)
      {
        goto LABEL_33;
      }

      v80 = sub_10000BAF8(v22);
      v23 = v9;
      v24 = sub_10000B070(v80);
      v25 = v22;
      v26 = v24;
      v83 = 0;
      v81 = v25;
      v27 = [a3 planForDomain:? restoreType:? error:?];
      if (!v27)
      {
        v59 = v83;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v28 = v27;
      v72 = v13;
      v73 = v17;
      if (a4)
      {
        v29 = v9;
        v30 = *&v9[v61];
        v31 = v83;
        sub_100027C28(v30);
        v32 = *v62;
        v33 = v62[1];
        v34 = objc_allocWithZone(MBRestoreSnapshotIntegrityVerifier);
        v35 = String._bridgeToObjectiveC()();

        v23 = v29;
        v36 = String._bridgeToObjectiveC()();
        v37 = [v34 initWithPolicy:v26 snapshotFormat:2 snapshotDir:v35 snapshotUUID:v36 delegate:v29];
      }

      else
      {
        v38 = v83;
        v37 = 0;
      }

      v39 = a5(v81);
      v40 = swift_allocObject();
      *(v40 + 2) = v23;
      *(v40 + 3) = v39;
      *(v40 + 4) = v26;
      *(v40 + 5) = v28;
      *(v40 + 6) = v37;
      v76 = type metadata accessor for _DryRestoreDomainOperation();
      v41 = objc_allocWithZone(v76);
      v74 = OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__engine;
      sub_1000042B4(&qword_10041E7C0, &unk_1002B9300);
      v42 = v26;
      v43 = v37;
      v44 = swift_allocObject();
      type metadata accessor for MBUnfairLock();
      v45 = swift_allocObject();
      v77 = v43;
      v46 = v23;

      v75 = v42;
      swift_unknownObjectRetain();
      v47 = swift_slowAlloc();
      *(v45 + 16) = v47;
      *v47 = 0;
      *(v44 + 16) = v45;
      *(v44 + 24) = 0;
      *&v41[v74] = v44;
      *&v41[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__context] = v46;
      *&v41[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__restorePath] = v39;
      *&v41[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__domain] = v81;
      v48 = &v41[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__engineCreationBlock];
      *v48 = sub_100016E6C;
      v48[1] = v40;
      v82.receiver = v41;
      v82.super_class = v76;
      v49 = v46;

      v50 = v81;

      objc_msgSendSuper2(&v82, "init");

      swift_unknownObjectRelease();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v51 = v84[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 = v67;
      v15 = 1 << *(v67 + 32);
      if (v79 >= v15)
      {
        goto LABEL_30;
      }

      v10 = v66;
      v52 = *(v66 + 8 * v78);
      if ((v52 & v73) == 0)
      {
        goto LABEL_31;
      }

      v14 = v65;
      if (v65 != *(v67 + 36))
      {
        goto LABEL_32;
      }

      v53 = v52 & (-2 << (v79 & 0x3F));
      if (v53)
      {
        v15 = __clz(__rbit64(v53)) | v79 & 0x7FFFFFFFFFFFFFC0;
        v9 = v64;
        v16 = v72;
      }

      else
      {
        v54 = v78 << 6;
        v55 = v78 + 1;
        v56 = (v60 + 8 * v78);
        v16 = v72;
        while (v55 < (v15 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          v54 += 64;
          ++v55;
          if (v58)
          {
            sub_100016E90(v79, v65, 0);
            v15 = __clz(__rbit64(v57)) + v54;
            goto LABEL_23;
          }
        }

        sub_100016E90(v79, v65, 0);
LABEL_23:
        v9 = v64;
      }

      v13 = v16 + 1;
      v12 = v15;
    }

    while (v13 != v63);
    return v84;
  }

  return result;
}

uint64_t sub_100016D5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000148E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100016E10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016E90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100016E9C(id a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9, void *a10, void *a11)
{
  v206._countAndFlagsBits = a5;
  v206._object = a6;
  v11 = [objc_opt_self() sharedInstance];
  if (!v11)
  {
    __break(1u);
    goto LABEL_82;
  }

  v12 = v11;
  v13 = [a10 persona];
  v14 = [objc_allocWithZone(MBProgressModel) init];
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = a11;
  v234 = sub_100018A30;
  v235 = v15;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v232 = sub_1000127D0;
  v233 = &unk_1003BB430;
  v16 = _Block_copy(&aBlock);
  v17 = a11;
  v18 = v12;

  v223 = v14;
  [v14 setBlock:v16];
  _Block_release(v16);
  v19 = [v18 serviceDelegate];
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    [v20 manager:v21 didUpdateProgress:-1 estimatedTimeRemaining:v17 context:0.0];

    swift_unknownObjectRelease();
  }

  v22 = [objc_opt_self() expensiveCellularPolicy];
  [v22 setQualityOfService:25];
  v23 = String._bridgeToObjectiveC()();
  if (!a11 || (v24 = [v17 processName]) == 0)
  {
    v24 = 0;
  }

  v25 = [v22 operationGroupWithName:v23 processName:v24];

  v26 = [v18 databaseManager];
  if (!v26)
  {
LABEL_82:
    __break(1u);
  }

  v27 = v26;
  *&aBlock = 0;
  object = [objc_opt_self() operationTrackerWithAccount:a10 databaseManager:v26 policy:v22 group:v25 error:&aBlock];

  v29 = aBlock;
  if (aBlock)
  {
    swift_willThrow();
    v29;

LABEL_10:
    return object;
  }

  if (!object)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v198 = v25;
  v200 = v22;
  sub_10003F2C0(0xD000000000000016, 0x80000001002BB400, 0xD000000000000016, 0x80000001002BB180);
  v30 = MBDeviceUUID();
  v199 = v13;
  if (v30)
  {
    v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v216 = v31;
  }

  else
  {
    v196 = 0;
    v216 = 0;
  }

  v32 = String._bridgeToObjectiveC()();
  *&aBlock = 0;
  v33 = [v18 acquireLockWithBackupUDID:v32 account:a10 owner:v30 timeout:v17 connection:&aBlock error:7200.0];

  v34 = aBlock;
  if (!v33)
  {
    v70 = aBlock;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_46:

    return object;
  }

  v35 = swift_allocObject();
  *(v35 + 2) = v18;
  *(v35 + 3) = a7;
  v36 = a7;
  *(v35 + 4) = a8;
  *(v35 + 5) = a10;
  *(v35 + 6) = v196;
  *(v35 + 7) = v216;
  v219 = v35;
  *(v35 + 8) = a11;
  v37 = objc_opt_self();

  v38 = v18;
  v39 = v17;

  v40 = a10;
  v41 = v34;
  v42 = String._bridgeToObjectiveC()();
  *&aBlock = 0;
  v43 = object;
  object = [v37 fetchDeviceRecordSnapshotsAndKeybags:v42 account:v40 manager:v38 tracker:v43 error:&aBlock];

  if (!object)
  {
    v71 = aBlock;

    _convertNSErrorToError(_:)();
    swift_willThrow();

    goto LABEL_46;
  }

  v197 = v38;
  v44 = aBlock;
  v45 = [object assetIDPrefix];
  if (!v45)
  {

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v72._countAndFlagsBits = 0xD00000000000001BLL;
    v72._object = 0x80000001002BB420;
    String.append(_:)(v72);
    v73._countAndFlagsBits = v36;
    v73._object = a8;
    String.append(_:)(v73);
    v74._countAndFlagsBits = 0xD000000000000020;
    v74._object = 0x80000001002BB440;
    String.append(_:)(v74);
    v75 = v43;
    v76 = objc_opt_self();
    v77 = String._bridgeToObjectiveC()();

    [v76 errorWithCode:1 description:v77];

    swift_willThrow();

    goto LABEL_10;
  }

  v46 = object;
  v194 = v43;

  sub_10003F2C0(0xD000000000000018, 0x80000001002BB470, 0xD000000000000016, 0x80000001002BB180);
  v47 = [objc_allocWithZone(MBSettingsContext) init];
  v48 = [objc_opt_self() appManagerWithSettingsContext:v47];
  if (!v48)
  {
    goto LABEL_85;
  }

  *&aBlock = 0;
  v49 = v48;
  object = v199;
  if (![v48 loadAppsWithPersona:v199 safeHarbors:0 error:&aBlock])
  {
    v78 = aBlock;

    _convertNSErrorToError(_:)();
    swift_willThrow();

    goto LABEL_46;
  }

  v188 = v40;
  v230 = &_swiftEmptyArrayStorage;
  v229 = &_swiftEmptySetSingleton;
  v50 = aBlock;
  sub_10003F2C0(0xD00000000000001BLL, 0x80000001002BB490, 0xD000000000000016, 0x80000001002BB180);
  v190 = v49;
  v51 = [v49 allContainers];
  if (v51)
  {
    v52 = v51;
    v189 = v47;

    sub_100011314(0, &qword_10041E970, off_1003B99F0);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = v199;
    if (v53 >> 62)
    {
      v55 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v192 = v46;
    if (v55)
    {
      v56 = 0;
      v57 = v53 & 0xC000000000000001;
      v221 = &_swiftEmptyArrayStorage;
      v58 = &selRef_initWithCacheDirectory_;
      do
      {
        v59 = v56;
        while (1)
        {
          if (v57)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v59 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v60 = *(v53 + 8 * v59 + 32);
          }

          v61 = v60;
          v56 = (&v59->isa + 1);
          if (__OFADD__(v59, 1))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (([v60 isSystemContainer] & 1) != 0 || objc_msgSend(v61, "isSystemSharedContainer"))
          {
            break;
          }

          v59 = (v59 + 1);
          if (v56 == v55)
          {
            goto LABEL_49;
          }
        }

        v62 = [v61 domain];
        if (!v62)
        {
          goto LABEL_86;
        }

        v63 = v62;
        v64 = [v62 name];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v217 = v66;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v221 = sub_10000F0C8(0, *(v221 + 2) + 1, 1, v221);
        }

        v68 = *(v221 + 2);
        v67 = *(v221 + 3);
        if (v68 >= v67 >> 1)
        {
          v221 = sub_10000F0C8((v67 > 1), v68 + 1, 1, v221);
        }

        *(v221 + 2) = v68 + 1;
        v69 = &v221[16 * v68];
        *(v69 + 4) = v65;
        *(v69 + 5) = v217;
        v54 = v199;
      }

      while (v56 != v55);
    }

    else
    {
      v221 = &_swiftEmptyArrayStorage;
    }

LABEL_49:
    object = 0xE900000000000020;

    v80 = sub_100016D5C(v221);

    *&aBlock = 0x676E697461657243;
    *(&aBlock + 1) = 0xE900000000000020;
    v81._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v81);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    sub_100005348(448, a1);
    if (v212)
    {

      return object;
    }

    *&aBlock = 0x676E697461657243;
    *(&aBlock + 1) = 0xE900000000000020;
    v82._countAndFlagsBits = sub_1000285C4(a2);
    String.append(_:)(v82);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    sub_100005348(493, a2);
    v83 = sub_100027EFC(0x746F687370616E73, 0xE900000000000073, a2);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    *&aBlock = 0xD00000000000001DLL;
    *(&aBlock + 1) = 0x80000001002BB4B0;
    String.append(_:)(v206);
    v84._countAndFlagsBits = 544497952;
    v84._object = 0xE400000000000000;
    String.append(_:)(v84);
    v85._countAndFlagsBits = sub_1000285C4(v83);
    String.append(_:)(v85);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    v228 = 0;
    v222 = v83;
    v86 = sub_100027C28(v83);
    v88 = v87;
    v89 = String._bridgeToObjectiveC()();
    object = String._bridgeToObjectiveC()();
    v90 = swift_allocObject();
    *(v90 + 16) = v86;
    *(v90 + 24) = v88;
    v91 = v90;
    *(v90 + 32) = v206;
    *(v90 + 48) = &v228;
    *(v90 + 56) = &v230;
    *(v90 + 64) = v80;
    *(v90 + 72) = &v229;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_100018B18;
    *(v92 + 24) = v91;
    v234 = sub_100018B60;
    v235 = v92;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v232 = sub_100012C6C;
    v233 = &unk_1003BB4D0;
    v93 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v94 = [v192 synchronizeFileListsWithOperationTracker:v194 snapshotDirectory:v89 snapshotUUID:object error:&aBlock fetchedFileListBlock:v93];
    _Block_release(v93);

    if (!v94)
    {
      v107 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_61:

      return object;
    }

    v95 = v230;
    v96 = aBlock;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_10000FB64(v95);
    }

    v97 = *(v95 + 2);
    *&aBlock = v95 + 32;
    *(&aBlock + 1) = v97;
    sub_100015D18(&aBlock);
    v230 = v95;
    strcpy(&aBlock, "FG domains: ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;

    sub_1000042B4(&qword_10041E978, &qword_1002B93F8);
    sub_100018B88();
    v98 = BidirectionalCollection<>.joined(separator:)();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    strcpy(v227, "BG domains: ");
    BYTE5(v227[1]) = 0;
    HIWORD(v227[1]) = -5120;
    v102 = v229;
    v103 = v229[2];
    if (!v103)
    {

      v104 = &_swiftEmptyArrayStorage;
      v106 = v199;
LABEL_59:
      *&aBlock = v104;
      sub_100015CAC(&aBlock);

      v108 = BidirectionalCollection<>.joined(separator:)();
      v110 = v109;

      v111._countAndFlagsBits = v108;
      v111._object = v110;
      String.append(_:)(v111);

      sub_10003F2C0(v227[0], v227[1], 0xD000000000000016, 0x80000001002BB180);

      v112 = sub_100027EFC(0x5F65726F74736572, 0xED0000746F706564, a1);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      *&aBlock = 0xD00000000000002ALL;
      *(&aBlock + 1) = 0x80000001002BB510;
      v113._countAndFlagsBits = sub_1000285C4(v112);
      String.append(_:)(v113);

      sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

      v114 = sub_100027C28(a1);
      v116 = v115;
      v57 = 0;
      v117 = sub_100027C28(v112);
      v119 = sub_10002E0EC(v106, v114, v116, v117, v118);

      v120 = v229;
      v185 = v230;
      v187 = type metadata accessor for MBDryRestoreContext();
      v121 = objc_allocWithZone(v187);
      v213 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__failures;
      sub_1000042B4(&qword_10041E988, &qword_1002B9400);
      v122 = swift_allocObject();
      type metadata accessor for MBUnfairLock();
      v123 = swift_allocObject();

      v184 = v190;
      v193 = v192;
      v195 = v194;

      v191 = v119;
      v224 = v223;
      v124 = swift_slowAlloc();
      *(v123 + 16) = v124;
      *v124 = 0;
      *(v122 + 16) = v123;
      *(v122 + 24) = &_swiftEmptyArrayStorage;
      *(&v121->isa + v213) = v122;
      v125 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__summary;
      v126 = type metadata accessor for MBRestoreSummarizer(0);
      v127 = *(v126 + 48);
      v128 = *(v126 + 52);
      swift_allocObject();
      v129 = sub_100019A98();
      sub_1000042B4(&qword_10041E990, &qword_1002B9408);
      v130 = swift_allocObject();
      v131 = swift_allocObject();
      v132 = swift_slowAlloc();
      *(v131 + 16) = v132;
      *v132 = 0;
      *(v130 + 16) = v131;
      *(v130 + 24) = v129;
      *(&v121->isa + v125) = v130;
      v180 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_contentPath;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_contentPath) = a1;
      v181 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_metadataPath;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_metadataPath) = a2;
      v182 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames) = v185;
      v183 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames) = v120;
      v133 = (&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_originalDeviceName);
      *v133 = a3;
      v133[1] = a4;
      v202 = v133;
      v134 = (v121 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_snapshotUUID);
      *v134 = v206;
      v186 = v134;
      v207 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_account;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_account) = v188;

      v135 = v188;

      v136 = [v135 persona];
      v210 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona) = v136;
      v204 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress) = v224;
      v208 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir;
      *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir) = v222;
      v137 = objc_opt_self();
      v223 = v224;

      sub_100027C28(a1);
      v138 = String._bridgeToObjectiveC()();

      *&aBlock = 0;
      v139 = [v137 volumeMountPointForFile:v138 error:&aBlock];

      v140 = aBlock;
      if (v139)
      {
        LOBYTE(v206._countAndFlagsBits) = a9;
        v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v143 = v142;
        v144 = v140;

        v145 = (v121 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__volumeMountPoint);
        *v145 = v141;
        v145[1] = v143;
        v146 = [v135 isPrimaryAccount];
        *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__isRestoringPrimaryAccount) = v146;
        *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__appManager) = v184;
        v147 = *(&v121->isa + v210);
        v148 = objc_allocWithZone(MBDomainManager);
        v212 = v184;
        v149 = [v148 initWithPersona:v147];
        v55 = &OBJC_PROTOCOL___MBAssetFetcher;
        *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__domainManager) = v149;
        *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__tracker) = v195;
        *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__device) = v193;
        v56 = v121;
        *(&v121->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__depot) = v191;
        v206._object = v195;
        v58 = v191;
        a1 = v193;
        v54 = v223;
        if (MBIsInternalInstall())
        {
          v150 = [objc_opt_self() sharedOptions];
          v151 = [v150 useRestoreOperationLog];

          if (v151)
          {
            v152 = [*(&v121->isa + v210) restoreOperationLogPath];
            if (!v152)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v152 = String._bridgeToObjectiveC()();
            }

            v153 = [objc_allocWithZone(MBRestoreOperationLogger) initWithPath:v152];
          }

          else
          {
            v153 = 0;
          }

          v163 = v199;
          v164 = v197;
          v55 = &OBJC_PROTOCOL___MBAssetFetcher;
        }

        else
        {
LABEL_71:
          v153 = 0;
          v163 = v199;
          v164 = v197;
        }

        *(&v56->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__logger) = v153;
        v226.receiver = v56;
        v226.super_class = v187;
        v165 = objc_msgSendSuper2(&v226, "init");
        v166 = *&v165[v55[19].opt_class_meths];
        v167 = v165;
        [v166 setDelegate:v167];

        object = v206._object;

        if (v206._countAndFlagsBits)
        {
          v168 = sub_10000AB90();
        }

        else
        {
          v168 = sub_10000AE00();
        }

        if (!v57)
        {
          v169 = v168;
          v170 = type metadata accessor for MBDryRestoreSession();
          v171 = objc_allocWithZone(v170);
          v171[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__disposed] = 0;
          *&v171[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context] = v167;
          *&v171[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB] = v169;
          *&v171[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__depot] = v58;
          v172 = &v171[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__releaseRestoreLock];
          *v172 = sub_100018AA8;
          v172[1] = v219;
          v173 = objc_allocWithZone(NSOperationQueue);
          v211 = v58;
          v206._countAndFlagsBits = v167;
          v205 = v169;

          v174 = [v173 init];
          v175 = [objc_opt_self() sharedOptions];
          LODWORD(v169) = [v175 maxConcurrentRestoreDomainOperations];

          [v174 setMaxConcurrentOperationCount:v169];
          sub_1000042B4(&qword_10041E998, &unk_1002B9410);
          v176 = swift_allocObject();
          v177 = swift_allocObject();
          v178 = v174;
          v179 = swift_slowAlloc();
          *(v177 + 16) = v179;
          *v179 = 0;

          *(v176 + 16) = v177;
          *(v176 + 24) = v174;
          *&v171[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__operationQueue] = v176;
          v225.receiver = v171;
          v225.super_class = v170;
          object = objc_msgSendSuper2(&v225, "init");

          return object;
        }
      }

      else
      {
        v215 = aBlock;
        object = v223;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        v154 = *(&v121->isa + v180);

        v155 = *(&v121->isa + v181);

        v156 = *(&v121->isa + v182);

        v157 = *(&v121->isa + v183);

        v158 = v202[1];

        v159 = v186->_object;

        v160 = *(&v121->isa + v208);

        v161 = *(&v121->isa + v213);

        v162 = *(&v121->isa + v125);

        swift_deallocPartialClassInstance();
      }

      goto LABEL_61;
    }

    v104 = sub_10000F6A0(v103, 0);
    v105 = sub_10000FB78(&aBlock, v104 + 4, v103, v102);
    swift_bridgeObjectRetain_n();
    sub_1000113FC();
    if (v105 == v103)
    {
      v106 = v199;
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_84;
  }

LABEL_87:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000189F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A50()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100018AD0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100018B60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100018B88()
{
  result = qword_10041E980;
  if (!qword_10041E980)
  {
    sub_100009078(&qword_10041E978, &qword_1002B93F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041E980);
  }

  return result;
}

uint64_t sub_100018BEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100018C3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v99 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v6 = *(v99 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v99);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v94 - v11;
  v100 = type metadata accessor for Date();
  v13 = *(v100 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v100);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v94 - v18;
  v20 = [a1 start];
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = [a1 end];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v3 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__assetFetchDuration;
      swift_beginAccess();
      v25 = type metadata accessor for _MillisecondSegmentedDuration(0);
      v98 = v6;
      v26 = v25;
      v27 = &v24[*(v25 + 24)];
      *v27 = 0;
      v27[8] = 1;
      sub_10001A628();
      v28 = &v24[*(v26 + 20)];
      IndexSet.insert(integersIn:)();
      swift_endAccess();
      v97 = a1;
      v29 = *(v13 + 8);
      v30 = v100;
      v29(v17, v100);
      v31 = v30;
      v6 = v98;
      v29(v19, v31);
      a1 = v97;
    }

    else
    {
      (*(v13 + 8))(v19, v100);
    }
  }

  result = [a1 fetchedAssetBytes];
  v33 = v3[3];
  v34 = __CFADD__(v33, result);
  v35 = result + v33;
  if (v34)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3[3] = v35;
  result = [a1 fetchedAssetCount];
  v36 = v3[4];
  v34 = __CFADD__(v36, result);
  v37 = result + v36;
  if (v34)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3[4] = v37;
  result = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  v38 = result[2];
  if (v38)
  {
    v95 = a2;
    v96 = v3;
    v39 = *(v99 + 48);
    v40 = v3 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__restorablePlacementDuration;
    v41 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v97 = *(v6 + 72);
    v98 = v39;
    v42 = (v13 + 32);
    v94 = result;

    while (1)
    {
      sub_10001A730(v41, v12);
      v43 = v100;
      v44 = *(v99 + 48);
      v45 = *v42;
      (*v42)(v10, v12, v100);
      v45(&v10[v44], &v12[v98], v43);
      swift_beginAccess();
      v46 = type metadata accessor for _MillisecondSegmentedDuration(0);
      v47 = &v40[*(v46 + 24)];
      *v47 = 0;
      v47[8] = 1;
      result = Date.timeIntervalSince(_:)();
      v49 = v48 * 1000.0;
      if (COERCE__INT64(fabs(v48 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v49 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v49 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      result = Date.timeIntervalSince(_:)();
      v51 = v50 * 1000.0;
      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v51 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v51 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      result = v49;
      if (v51 < v49)
      {
        goto LABEL_41;
      }

      v52 = &v40[*(v46 + 20)];
      IndexSet.insert(integersIn:)();
      swift_endAccess();
      sub_10001A7A0(v10, &qword_10041E820, &unk_1002B9740);
      v41 += v97;
      if (!--v38)
      {

        a2 = v95;
        v3 = v96;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_18:
  v53 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles);
  v54 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles);
  v55 = v53 + v54;
  if (__CFADD__(v53, v54))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v56 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories);
  v57 = v55 + v56;
  if (__CFADD__(v55, v56))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v58 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks);
  v34 = __CFADD__(v57, v58);
  v59 = v57 + v58;
  if (v34)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v60 = v3[6];
  v34 = __CFADD__(v60, v59);
  v61 = v60 + v59;
  if (v34)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3[6] = v61;
  v62 = v3[7];
  v34 = __CFADD__(v62, v56);
  v63 = v62 + v56;
  if (v34)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v3[7] = v63;
  v64 = v3[8];
  v34 = __CFADD__(v64, v58);
  v65 = v64 + v58;
  if (v34)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v3[8] = v65;
  v66 = v3[9];
  v34 = __CFADD__(v66, v53);
  v67 = v66 + v53;
  if (v34)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3[9] = v67;
  v68 = v3[10];
  v34 = __CFADD__(v68, v54);
  v69 = v68 + v54;
  if (v34)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v3[10] = v69;
  v70 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
  v71 = v3[11];
  v34 = __CFADD__(v71, v70);
  v72 = v71 + v70;
  if (v34)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3[11] = v72;
  v73 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles);
  v74 = v3[12];
  v34 = __CFADD__(v74, v73);
  v75 = v74 + v73;
  if (v34)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v3[12] = v75;
  v76 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles);
  v77 = v3[13];
  v34 = __CFADD__(v77, v76);
  v78 = v77 + v76;
  if (v34)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v3[13] = v78;
  v79 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles);
  v80 = v3[14];
  v34 = __CFADD__(v80, v79);
  v81 = v80 + v79;
  if (v34)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v3[14] = v81;
  v82 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles);
  v83 = v3[15];
  v34 = __CFADD__(v83, v82);
  v84 = v83 + v82;
  if (v34)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v3[15] = v84;
  v85 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles);
  v86 = v3[16];
  v34 = __CFADD__(v86, v85);
  v87 = v86 + v85;
  if (v34)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v3[16] = v87;
  v88 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles);
  v89 = v3[17];
  v34 = __CFADD__(v89, v88);
  v90 = v89 + v88;
  if (v34)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3[17] = v90;
  v91 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories);
  v92 = v3[18];
  v34 = __CFADD__(v92, v91);
  v93 = v92 + v91;
  if (!v34)
  {
    v3[18] = v93;
    return result;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1000192FC()
{
  v1 = type metadata accessor for IndexSet.RangeView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000042B4(&qword_10041EB30, &qword_1002B9508);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v22 - v8;
  result = type metadata accessor for _MillisecondSegmentedDuration(0);
  v11 = v0 + *(result + 24);
  if (*(v11 + 8))
  {
    v12 = v0 + *(result + 20);
    IndexSet.rangeView.getter();
    IndexSet.RangeView.makeIterator()();
    (*(v2 + 8))(v5, v1);
    v13 = *(v6 + 36);
    sub_10001A520(&qword_10041EB38, &type metadata accessor for IndexSet.RangeView);
    v14 = 0;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v9[v13] == v22[0])
      {
        result = sub_10001A7A0(v9, &qword_10041EB30, &qword_1002B9508);
        *v11 = v14 / 1000.0;
        *(v11 + 8) = 0;
        return result;
      }

      v15 = dispatch thunk of Collection.subscript.read();
      v17 = *v16;
      v18 = v16[1];
      v15(v22, 0);
      result = dispatch thunk of Collection.formIndex(after:)();
      v19 = v18 - v17;
      if (__OFSUB__(v18, v17))
      {
        break;
      }

      v20 = __OFADD__(v14, v19);
      v14 += v19;
      if (v20)
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v21 = *v11;
  }

  return result;
}

uint64_t sub_100019558()
{
  sub_10001A5CC(v0 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__assetFetchDuration);
  sub_10001A5CC(v0 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__restorablePlacementDuration);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000195F4()
{
  result = type metadata accessor for _MillisecondSegmentedDuration(319);
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

uint64_t sub_1000196B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1000196E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10001971C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001973C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
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

  *(result + 136) = v3;
  return result;
}

uint64_t sub_1000197AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for IndexSet();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000198B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for IndexSet();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000199AC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IndexSet();
    if (v1 <= 0x3F)
    {
      sub_100019A48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100019A48()
{
  if (!qword_10041EAE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10041EAE8);
    }
  }
}

uint64_t sub_100019A98()
{
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = v0 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__assetFetchDuration;
  static Date.now.getter();
  v2 = type metadata accessor for _MillisecondSegmentedDuration(0);
  v3 = *(v2 + 20);
  type metadata accessor for IndexSet();
  sub_10001A520(&qword_10041EB40, &type metadata accessor for IndexSet);
  sub_1000042B4(&qword_10041EB48, &unk_1002B9510);
  sub_10001A568();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4 = v1 + *(v2 + 24);
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__restorablePlacementDuration;
  static Date.now.getter();
  v6 = *(v2 + 20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = v5 + *(v2 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return v0;
}

uint64_t sub_100019C08()
{
  v1 = v0;
  _StringGuts.grow(_:)(44);
  sub_1000042B4(&unk_10041E830, &qword_1002B9500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002B9270;
  v3 = *v0;
  v4 = *(v1 + 8) / *v1 * 0.000000953674316;
  *(v2 + 56) = &type metadata for Double;
  *(v2 + 64) = &protocol witness table for Double;
  *(v2 + 32) = v4;
  v5 = String.init(format:_:)();

  v6._countAndFlagsBits = 0x2C6365732F424D20;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002B9270;
  v8 = *(v0 + 16) / v3;
  *(v7 + 56) = &type metadata for Double;
  *(v7 + 64) = &protocol witness table for Double;
  *(v7 + 32) = v8;
  v9._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x2F73746573736120;
  v10._object = 0xED0000202C636573;
  String.append(_:)(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002B9270;
  v12 = *(v1 + 32) / *(v1 + 24);
  *(v11 + 56) = &type metadata for Double;
  *(v11 + 64) = &protocol witness table for Double;
  *(v11 + 32) = v12;
  v13._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v13);

  v14._object = 0x80000001002BB680;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  return v5;
}

unint64_t sub_100019E08(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
    case 8:
    case 14:
      result = 0xD000000000000011;
      break;
    case 2:
    case 15:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 16:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100019FB0(void *a1)
{
  v3 = v1;
  v5 = sub_1000042B4(&qword_10041EB20, &qword_1002B94F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_1000042FC(a1, a1[3]);
  sub_10001A4CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v30 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v30 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v30 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v30 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v30 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v30 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v30 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    v30 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v30 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[9];
    v30 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[10];
    v30 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[11];
    v30 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[12];
    v30 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[13];
    v30 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[14];
    v30 = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v3[15];
    v30 = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v3[16];
    v30 = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10001A348()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001A3BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001AA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001A43C(uint64_t a1)
{
  v2 = sub_10001A4CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A478(uint64_t a1)
{
  v2 = sub_10001A4CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10001A4CC()
{
  result = qword_10041EB28;
  if (!qword_10041EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB28);
  }

  return result;
}

uint64_t sub_10001A520(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001A568()
{
  result = qword_10041EB50;
  if (!qword_10041EB50)
  {
    sub_100009078(&qword_10041EB48, &unk_1002B9510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB50);
  }

  return result;
}

uint64_t sub_10001A5CC(uint64_t a1)
{
  v2 = type metadata accessor for _MillisecondSegmentedDuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001A628()
{
  result = Date.timeIntervalSince(_:)();
  v2 = v1 * 1000.0;
  if (COERCE__INT64(fabs(v1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = Date.timeIntervalSince(_:)();
  v4 = v3 * 1000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v2;
  if (v4 < v2)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A7A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000042B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for MBRestoreSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBRestoreSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001A954()
{
  result = qword_10041EB58;
  if (!qword_10041EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB58);
  }

  return result;
}

unint64_t sub_10001A9AC()
{
  result = qword_10041EB60;
  if (!qword_10041EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB60);
  }

  return result;
}

unint64_t sub_10001AA04()
{
  result = qword_10041EB68;
  if (!qword_10041EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB68);
  }

  return result;
}

uint64_t sub_10001AA58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001002BB6A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002BB6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002BB6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001002BB700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001002BB730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001002BB750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002BB770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002BB790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002BB7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002BB7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002BB870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002BB890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002BB8B0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

id sub_10001AF90()
{
  result = [objc_allocWithZone(type metadata accessor for MBActivityScheduler()) init];
  qword_10041EB70 = result;
  return result;
}

id sub_10001B01C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
  *&v0[v10] = sub_10003E598(&_swiftEmptyArrayStorage);
  v21 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__workQueue;
  v19 = sub_10001DEEC();
  v11 = [swift_getObjCClassFromMetadata() description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_10001DF38();
  sub_1000042B4(&qword_10041EBF0, &qword_1002B96F8);
  sub_10001DF90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = ObjectType;
  *&v0[v21] = v12;
  v22.receiver = v0;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "init");
  sub_10001BBBC();
  sub_1000042B4(&qword_10041EBC8, &qword_1002B96D8);
  v15 = Dictionary.description.getter();
  v17 = v16;

  sub_10003F2C0(v15, v17, 0xD000000000000011, 0x80000001002BB9C0);

  return v14;
}

void sub_10001B314(void *a1)
{
  v1 = [a1 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = v1;
  v7 = [v5 sharedScheduler];
  strcpy(v54, "Rescheduling ");
  HIWORD(v54[1]) = -4864;
  v8._countAndFlagsBits = v2;
  v8._object = v4;
  String.append(_:)(v8);
  sub_10003F2C0(v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);

  v53 = v7;
  v9 = [v7 taskRequestForIdentifier:v6];
  v52 = v6;

  if (v9)
  {
    v10 = v9;
    _StringGuts.grow(_:)(34);

    v54[0] = 0x786520646E756F46;
    v11._countAndFlagsBits = v2;
    v11._object = v4;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x6572206B73617420;
    v12._object = 0xEF203A7473657571;
    String.append(_:)(v12);
    v13 = [v10 propertyListRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    sub_10003F2C0(0x786520646E756F46, 0xEF20676E69747369, 0xD000000000000011, 0x80000001002BB9C0);
  }

  v18 = [a1 workQueue];
  __chkstk_darwin(v18);
  sub_1000042B4(&qword_10041EBD0, &qword_1002B96E0);
  OS_dispatch_queue.sync<A>(execute:)();

  v19 = v54[0];
  if (v54[0])
  {
    v20 = v2;
    if (v9 != v54[0])
    {
      if (!v9)
      {

        v21 = v53;
        goto LABEL_11;
      }

LABEL_8:
      v22 = v9;
      _StringGuts.grow(_:)(39);

      v54[1] = 0x80000001002BBAA0;
      v23._countAndFlagsBits = v20;
      v23._object = v4;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 0x6572206B73617420;
      v24._object = 0xEF203A7473657571;
      String.append(_:)(v24);
      v25 = [v22 propertyListRepresentation];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = Dictionary.description.getter();
      v28 = v27;

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      sub_10003F2C0(0xD000000000000014, 0x80000001002BBAA0, 0xD000000000000011, 0x80000001002BB9C0);

      v54[0] = 0;
      LOBYTE(v26) = [v53 cancelTaskRequestWithIdentifier:v52 error:v54];

      v30 = v54[0];
      if ((v26 & 1) == 0)
      {
        v21 = v53;
LABEL_16:
        v44 = v30;
        v45 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v54[0] = 0;
        v54[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v54[0] = 0xD000000000000011;
        v54[1] = 0x80000001002BBA80;
        v46._countAndFlagsBits = v2;
        v46._object = v4;
        String.append(_:)(v46);

        v47._object = 0xEE00207473657571;
        v47._countAndFlagsBits = 0x6572206B73617420;
        String.append(_:)(v47);
        if (v19)
        {
          v48 = [v19 propertyListRepresentation];
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_1000042B4(&qword_10041EBD8, &qword_1002B96E8);
        v49._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v49);

        sub_10003F5B0(v45, v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);

        return;
      }

      v31 = v54[0];

      if (!v19)
      {

        goto LABEL_21;
      }

      v21 = v53;
      v20 = v2;
LABEL_11:
      v54[0] = 0;
      v54[1] = 0xE000000000000000;
      v22 = v19;
      _StringGuts.grow(_:)(34);

      v54[0] = 0x697474696D627553;
      v54[1] = 0xEF2077656E20676ELL;
      v32._countAndFlagsBits = v20;
      v32._object = v4;
      String.append(_:)(v32);
      v33._countAndFlagsBits = 0x6572206B73617420;
      v33._object = 0xEF203A7473657571;
      String.append(_:)(v33);
      v34 = [v22 propertyListRepresentation];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = Dictionary.description.getter();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      sub_10003F2C0(v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);

      v54[0] = 0;
      v39 = [v21 submitTaskRequest:v22 error:v54];
      v30 = v54[0];
      if (v39)
      {
        v40 = v54[0];

LABEL_21:
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v20 = v2;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  _StringGuts.grow(_:)(36);

  v54[0] = 0xD000000000000011;
  v54[1] = 0x80000001002BBAC0;
  v41._countAndFlagsBits = v20;
  v41._object = v4;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x6572206B73617420;
  v42._object = 0xEF203A7473657571;
  String.append(_:)(v42);
  if (v19)
  {
    v43 = [v19 propertyListRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000042B4(&qword_10041EBD8, &qword_1002B96E8);
  v50._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v50);

  sub_10003F2C0(v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);
}

uint64_t sub_10001BBBC()
{
  v1 = [objc_opt_self() sharedScheduler];
  v36 = sub_10003E494(&_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v0 + v2);

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 48) + ((v9 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    v15 = String._bridgeToObjectiveC()();
    v16 = [v1 taskRequestForIdentifier:v15];

    if (v16)
    {
      v17 = [v16 propertyListRepresentation];
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v36;
      v18 = sub_10002C438(v14, v13);
      v20 = *(v36 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_22;
      }

      if (*(v36 + 24) >= v23)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        v34 = v18;
        v38 = v19;
        sub_10002DC68();
        v18 = v34;
        if ((v38 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        v26 = v18;

        v36 = v39;
        v27 = v39[7];
        v28 = *(v27 + 8 * v26);
        *(v27 + 8 * v26) = v35;
      }

      else
      {
        v37 = v19;
        sub_10002CBF4(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_10002C438(v14, v13);
        v25 = v24 & 1;
        v19 = v37;
        if ((v37 & 1) != v25)
        {
          goto LABEL_24;
        }

LABEL_15:
        if (v19)
        {
          goto LABEL_16;
        }

LABEL_18:
        v39[(v18 >> 6) + 8] |= 1 << v18;
        v29 = (v39[6] + 16 * v18);
        *v29 = v14;
        v29[1] = v13;
        *(v39[7] + 8 * v18) = v35;

        v30 = v39[2];
        v22 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v22)
        {
          goto LABEL_23;
        }

        v36 = v39;
        v39[2] = v31;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v36;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001BEEC(void *a1)
{
  v2 = a1;
  v3 = a1[2];
  if (v3 != 1)
  {
    if (!v3)
    {
      return sub_10001BBBC();
    }

    v6 = a1[6];
    v5 = a1[7];
    swift_bridgeObjectRetain_n();
    goto LABEL_11;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
  swift_beginAccess();
  v8 = *(v82 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_10000F6A0(v9, 0);
    v76 = sub_10000FCD0(&aBlock, v10 + 4, v9, v8);
    swift_bridgeObjectRetain_n();

    sub_1000113FC();
    if (v76 != v9)
    {
      goto LABEL_86;
    }
  }

  else
  {

    v10 = &_swiftEmptyArrayStorage;
  }

  aBlock = v10;
  sub_100015CAC(&aBlock);
  if (!v1)
  {

    v2 = aBlock;
LABEL_11:

    v11 = v6 == 0x7075727265746E69 && v5 == 0xE900000000000074;
    v12 = v11;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x656B6F766E69 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x7564656863736572 && v5 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x7564656863736E75 && v5 == 0xEA0000000000656CLL)
    {
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v63 & 1) == 0)
      {

        aBlock = 0;
        v84 = 0xE000000000000000;
        _StringGuts.grow(_:)(101);
        v64._countAndFlagsBits = 0xD00000000000001FLL;
        v64._object = 0x80000001002BB9E0;
        String.append(_:)(v64);
        v65._countAndFlagsBits = v6;
        v65._object = v5;
        String.append(_:)(v65);

        v66._countAndFlagsBits = 0xD000000000000044;
        v66._object = 0x80000001002BBA00;
        String.append(_:)(v66);
LABEL_82:
        sub_10003F97C(1, aBlock, v84, 0xD000000000000011, 0x80000001002BB9C0);

        return swift_willThrow();
      }
    }

    v13 = *(v2 + 16);
    if (v13)
    {
      v77 = v12;
      v78 = v6;
      v80 = v5;
      v89 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = 0;
      v14 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
      v15 = (v2 + 40);
      while (v6 < *(v2 + 16))
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        swift_beginAccess();
        v18 = *(v82 + v14);
        v19 = *(v18 + 16);

        if (!v19 || (v20 = sub_10002C438(v17, v16), (v21 & 1) == 0))
        {
          swift_endAccess();

          aBlock = 0;
          v84 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          aBlock = 0xD000000000000023;
          v84 = 0x80000001002BBA50;
          v24._countAndFlagsBits = v17;
          v24._object = v16;
          String.append(_:)(v24);
          sub_10003F97C(1, aBlock, v84, 0xD000000000000011, 0x80000001002BB9C0);

          swift_willThrow();
        }

        ++v6;
        v5 = *(*(v18 + 56) + 8 * v20);
        swift_endAccess();
        swift_unknownObjectRetain();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = v89[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 += 2;
        if (v13 == v6)
        {

          v23 = v89;
          v6 = v78;
          v5 = v80;
          v81 = v89;
          if (!v77)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      goto LABEL_80;
    }

    v23 = &_swiftEmptyArrayStorage;
    v81 = &_swiftEmptyArrayStorage;
    if (v12)
    {
      goto LABEL_39;
    }

LABEL_38:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_39:

      v25 = v23[2];
      if (v25)
      {
        v5 = 0;
        v26 = (v23 + 4);
        v74 = v23[2];
        while (v5 < v23[2])
        {
          v6 = *&v26[8 * v5];
          aBlock = 0;
          v84 = 0xE000000000000000;
          swift_unknownObjectRetain();
          _StringGuts.grow(_:)(31);
          v27._countAndFlagsBits = 0x7075727265746E49;
          v27._object = 0xED000020676E6974;
          String.append(_:)(v27);
          v28 = [v6 identifier];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32._countAndFlagsBits = v29;
          v32._object = v31;
          String.append(_:)(v32);

          v33._countAndFlagsBits = 0x6572206874697720;
          v33._object = 0xEE00203A6E6F7361;
          String.append(_:)(v33);
          v89 = 0;
          type metadata accessor for BGSystemTaskExpirationReason(0);
          _print_unlocked<A, B>(_:_:)();
          v35 = aBlock;
          v34 = v84;
          if (qword_10041DF00 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_10000685C(v36, qword_100421CD0);

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v39 = 136315394;
            *(v39 + 4) = sub_10003FE34(0xD000000000000011, 0x80000001002BB9C0, &aBlock);
            *(v39 + 12) = 2080;
            *(v39 + 14) = sub_10003FE34(v35, v34, &aBlock);
            _os_log_impl(&_mh_execute_header, v37, v38, "%s%s", v39, 0x16u);
            swift_arrayDestroy();
            v25 = v74;

            v23 = v81;
          }

          ++v5;
          [v6 interruptWithReason:0];
          swift_unknownObjectRelease();
          if (v25 == v5)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_58:

      return sub_10001BBBC();
    }

    if (v6 == 0x656B6F766E69 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v40 = 0;
      v41 = (v23 + 4);
      v79 = v23[2];
      v75 = (v23 + 4);
      while (v79 != v40)
      {
        if (v40 >= v81[2])
        {
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v47 = *&v41[8 * v40];
        v48 = [swift_unknownObjectRetain() identifier];
        v49._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        aBlock = 0x676E696B6F766E49;
        v84 = 0xE900000000000020;
        String.append(_:)(v49);

        v51 = aBlock;
        v50 = v84;
        if (qword_10041DF00 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10000685C(v52, qword_100421CD0);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v55 = 136315394;
          *(v55 + 4) = sub_10003FE34(0xD000000000000011, 0x80000001002BB9C0, &aBlock);
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_10003FE34(v51, v50, &aBlock);
          _os_log_impl(&_mh_execute_header, v53, v54, "%s%s", v55, 0x16u);
          swift_arrayDestroy();

          v41 = v75;
        }

        v42 = [objc_opt_self() sharedDaemon];
        v43 = swift_allocObject();
        *(v43 + 16) = v47;
        *(v43 + 24) = 0;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_10001DE08;
        *(v44 + 24) = v43;
        v87 = sub_10001DE10;
        v88 = v44;
        aBlock = _NSConcreteStackBlock;
        v84 = 1107296256;
        v85 = sub_10001D278;
        v86 = &unk_1003BB6C0;
        v45 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v42 holdingWorkAssertionWithDescription:v48 forScope:v45];

        _Block_release(v45);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        swift_unknownObjectRelease();

        ++v40;
        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_58;
    }

    if ((v6 != 0x7564656863736572 || v5 != 0xEA0000000000656CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v6 == 0x7564656863736E75 && v5 == 0xEA0000000000656CLL)
      {

        v62 = v81;
      }

      else
      {
        v62 = v81;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_81:

          aBlock = 0;
          v84 = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          aBlock = 0xD00000000000001FLL;
          v84 = 0x80000001002BB9E0;
          v73._countAndFlagsBits = v6;
          v73._object = v5;
          String.append(_:)(v73);

          goto LABEL_82;
        }
      }

      v67 = v62[2];
      if (!v67)
      {
        goto LABEL_58;
      }

      v68 = 0;
      v69 = (v62 + 4);
      while (v68 < v62[2])
      {
        v70 = v68 + 1;
        v71 = *&v69[8 * v68];
        v72 = swift_unknownObjectRetain();
        sub_10001CC78(v72);
        swift_unknownObjectRelease();
        v68 = v70;
        v62 = v81;
        if (v67 == v70)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_87;
    }

    v56 = v81;
    v57 = v81[2];
    if (!v57)
    {
      goto LABEL_58;
    }

    v58 = 0;
    while (v58 < v56[2])
    {
      v59 = v58 + 1;
      v60 = v81[v58 + 4];
      v61 = swift_unknownObjectRetain();
      sub_10001B314(v61);
      v56 = v81;
      swift_unknownObjectRelease();
      v58 = v59;
      if (v57 == v59)
      {
        goto LABEL_58;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10001CC78(void *a1)
{
  v1 = [a1 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  strcpy(v14, "Unscheduling ");
  HIWORD(v14[1]) = -4864;
  v5 = v1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  String.append(_:)(v6);
  sub_10003F2C0(v14[0], v14[1], 0xD000000000000011, 0x80000001002BB9C0);

  v7 = [objc_opt_self() sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:v5];

  if (v8)
  {

    v14[0] = 0;
    v9 = [v7 cancelTaskRequestWithIdentifier:v5 error:v14];

    if (v9)
    {
      v10 = v14[0];
    }

    else
    {
      v12 = v14[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v13._countAndFlagsBits = 0xD000000000000021;
      v13._object = 0x80000001002BBB00;
      String.append(_:)(v13);
      sub_1000042B4(&qword_10041E800, &qword_1002B96F0);
      _print_unlocked<A, B>(_:_:)();
      sub_10003F7B8(v14[0], v14[1], 0xD000000000000011, 0x80000001002BB9C0);
    }
  }

  else
  {

    _StringGuts.grow(_:)(32);

    v11._countAndFlagsBits = v2;
    v11._object = v4;
    String.append(_:)(v11);

    sub_10003F2C0(0xD00000000000001ELL, 0x80000001002BBAE0, 0xD000000000000011, 0x80000001002BB9C0);
  }
}

uint64_t sub_10001D0E8(void *a1, void *a2)
{
  v4 = [a1 workQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10001DE88;
  *(v6 + 24) = v5;
  v9[4] = sub_10001DFFC;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001D278;
  v9[3] = &unk_1003BB738;
  v7 = _Block_copy(v9);
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    [a2 setTaskCompleted];
    sub_10001B314(a1);
  }

  return result;
}

uint64_t sub_10001D324()
{
  v22.super_class = BGNonRepeatingSystemTaskRequest;
  v1 = objc_msgSendSuper2(&v22, "propertyListRepresentation");
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000042B4(&qword_10041EBB0, &qword_1002B96C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002B9640;
  strcpy((inited + 32), "scheduleAfter");
  *(inited + 46) = -4864;
  [v0 scheduleAfter];
  v4 = v3;
  v5 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v5 setUnitsStyle:0];
  v6 = [v5 localizedStringFromTimeInterval:v4];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001002BB9A0;
  [v0 trySchedulingBefore];
  v11 = v10;
  v12 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v12 setUnitsStyle:0];
  v13 = [v12 localizedStringFromTimeInterval:v11];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  v17 = sub_10003E69C(inited);
  swift_setDeallocating();
  sub_1000042B4(&qword_10041EBB8, &qword_1002B96C8);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v20;
  sub_10001D9E4(v17, sub_10001D848, 0, isUniquelyReferenced_nonNull_native, &v21);

  return v21;
}

Class sub_10001D5D0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

unint64_t sub_10001D65C()
{
  v1 = v0;
  sub_1000042B4(&qword_10041EBB0, &qword_1002B96C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002B9640;
  *(inited + 32) = 0x6C61767265746E69;
  *(inited + 40) = 0xE800000000000000;
  [v1 interval];
  v4 = v3;
  v5 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v5 setUnitsStyle:0];
  v6 = [v5 localizedStringFromTimeInterval:v4];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001002BB980;
  [v1 minDurationBetweenInstances];
  v11 = v10;
  v12 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v12 setUnitsStyle:0];
  v13 = [v12 localizedStringFromTimeInterval:v11];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  v17 = sub_10003E69C(inited);
  swift_setDeallocating();
  sub_1000042B4(&qword_10041EBB8, &qword_1002B96C8);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_10001D848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10001DD04((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_10001D894@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001DD04(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_10001DCF4(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_10001DD60(v22);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10001D9E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_10001D894(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_10001DCF4(v46, v44);
  v14 = *a5;
  result = sub_10002C438(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10002CE9C(v20, a4 & 1);
    v22 = *a5;
    result = sub_10002C438(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_10002DDD8();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_100004394(v26);
    sub_10001DCF4(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_10001DCF4(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_10001D894(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_10001DCF4(v46, v44);
        v33 = *a5;
        result = sub_10002C438(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_10002CE9C(v37, 1);
          v38 = *a5;
          result = sub_10002C438(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_100004394(v32);
          sub_10001DCF4(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_10001DCF4(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_10001D894(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_1000113FC();
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_10001DCF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001DD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001DD60(uint64_t a1)
{
  v2 = sub_1000042B4(&qword_10041EBC0, &qword_1002B96D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DDC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DE10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001DE38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001DE50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10001DEA8@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) nextTaskRequestWithCurrentTaskRequest:*(v1 + 24)];
  *a1 = result;
  return result;
}

unint64_t sub_10001DEEC()
{
  result = qword_10041EBE0;
  if (!qword_10041EBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10041EBE0);
  }

  return result;
}

unint64_t sub_10001DF38()
{
  result = qword_10041EBE8;
  if (!qword_10041EBE8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EBE8);
  }

  return result;
}

unint64_t sub_10001DF90()
{
  result = qword_10041EBF8;
  if (!qword_10041EBF8)
  {
    sub_100009078(&qword_10041EBF0, &qword_1002B96F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EBF8);
  }

  return result;
}

char *sub_10001E004(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10)
{
  v90 = a6;
  ObjectType = swift_getObjectType();
  v15 = [a7 domain];
  v16 = [v15 name];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = &v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__restoreRootPath];
  *v20 = a1;
  *(v20 + 1) = a2;
  v60 = v20;
  v61 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__policy;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__policy] = a3;
  v62 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot] = a4;
  v63 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher] = a5;
  v64 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan] = a7;
  v65 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress] = a8;
  v66 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__verifier;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__verifier] = a9;
  v67 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__logger;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__logger] = a10;
  v68 = a10;

  v82 = a3;
  v71 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = a8;
  v76 = a9;
  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v17;
  strcpy(v89, "=atc-engine= ");
  HIWORD(v89[1]) = -4864;
  v23._object = v19;
  String.append(_:)(v23);

  v24 = v89[1];
  v25 = v10;
  v26 = &v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
  *v26 = v89[0];
  *(v26 + 1) = v24;
  v59 = v26;

  v27._countAndFlagsBits = 1129595181;
  v27._object = 0xE400000000000000;
  String.append(_:)(v27);
  v28 = v19;
  v75 = type metadata accessor for MBRestorePerformer();
  v29 = objc_allocWithZone(v75);
  v80 = OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath;
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath] = 0xF000000000000007;
  v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed] = 0;
  v30 = OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary;
  v31 = objc_allocWithZone(type metadata accessor for MBRestorablePlacementSummary());
  v83 = v82;
  v72 = v71;
  v70 = v21;
  v69 = v68;
  swift_unknownObjectRetain();
  v58 = v30;
  *&v29[v30] = [v31 init];

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v17;
  strcpy(v89, "=performer= ");
  BYTE5(v89[1]) = 0;
  HIWORD(v89[1]) = -5120;
  v33._object = v28;
  String.append(_:)(v33);

  v34 = v89[1];
  v35 = &v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
  *v35 = v89[0];
  v35[1] = v34;
  v36 = &v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__identifier];
  *v36 = v17;
  v36[1] = v28;
  v57 = v36;
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v37 = swift_allocBox();

  FilePath.init(_:)();
  v38 = sub_100006180(v37);
  if (v74)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();

    v39 = v69;
    v40 = v80;
LABEL_6:

    v45 = v57[1];

    sub_1000112FC(*&v29[v40]);
    if (!v74)
    {

      v46 = *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter];
      swift_unknownObjectRelease();
    }

    v47 = v35[1];

    swift_deallocPartialClassInstance();
    v48 = *(v60 + 1);

    v49 = *&v25[v63];
    swift_unknownObjectRelease();
    v50 = *&v25[v64];
    swift_unknownObjectRelease();

    v51 = *(v59 + 1);

    swift_deallocPartialClassInstance();
    return v25;
  }

  v41 = v38;
  v73 = v17;

  v40 = v80;
  v42 = *&v29[v80];
  *&v29[v80] = v41;
  sub_1000112FC(v42);
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__policy] = v83;
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot] = v72;
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter] = v90;
  v43 = *&v72[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
  if ((~v43 & 0xF000000000000007) == 0)
  {

    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v39 = v76;
    goto LABEL_6;
  }

  sub_100011314(0, &qword_10041E7E0, &off_1003B9A08);
  v56 = v83;
  v84 = v72;
  swift_unknownObjectRetain();
  sub_10001135C(v43);
  sub_100027C28(v43);
  sub_1000112FC(v43);
  _StringGuts.grow(_:)(18);

  v89[0] = 0xD000000000000010;
  v89[1] = 0x80000001002BAE10;
  v44._countAndFlagsBits = v73;
  v44._object = v28;
  String.append(_:)(v44);

  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage] = sub_10000A778();
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger] = a10;
  v88.receiver = v29;
  v88.super_class = v75;
  v53 = objc_msgSendSuper2(&v88, "init");

  swift_unknownObjectRelease();
  *&v25[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer] = v53;
  v87.receiver = v25;
  v87.super_class = ObjectType;
  v54 = objc_msgSendSuper2(&v87, "initWithSettingsContext:debugContext:domainManager:", 0, 0, 0);
  result = a2;
  if (v54)
  {

    v55 = *&v54[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
    v25 = v54;
    [v55 setDelegate:v25];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v25;
  }

  __break(1u);
  return result;
}

id sub_10001EA50()
{
  v2 = v0;
  Current = CFAbsoluteTimeGetCurrent();
  v37 = v0;
  result = sub_10001F310(0x7075746553, 0xE500000000000000, sub_100023158, v36);
  if (!v1)
  {
    __chkstk_darwin(result);
    v34 = v0;
    v5 = sub_10001F310(0x64616F6C6E776F44, 0xE800000000000000, sub_10002317C, v33);
    __chkstk_darwin(v5);
    v34 = v0;
    v7 = sub_10001F310(0xD000000000000011, (v6 | 0x8000000000000000), sub_1000231A0, v33);
    __chkstk_darwin(v7);
    v34 = v0;
    v9 = sub_10001F310(0xD000000000000015, (v8 | 0x8000000000000000), sub_1000231C4, v33);
    __chkstk_darwin(v9);
    v34 = v0;
    v10 = sub_10001F310(0x7953206563616C50, 0xEE00736B6E696C6DLL, sub_1000231E8, v33);
    __chkstk_darwin(v10);
    v34 = v0;
    v11 = sub_10001F310(0x7341206563616C50, 0xEC00000073746573, sub_10002320C, v33);
    __chkstk_darwin(v11);
    v34 = v0;
    v13 = sub_10001F310(0xD00000000000001BLL, (v12 | 0x8000000000000000), sub_100023230, v33);
    __chkstk_darwin(v13);
    v34 = v0;
    sub_10001F310(0x796669726556, 0xE600000000000000, nullsub_7, v33);
    [v0 cleanUpAfterError:0];
    [*&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__logger] flush];
    v14 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
    swift_getObjectType();
    v15 = sub_100021170();
    v35 = v16;
    v17 = CFAbsoluteTimeGetCurrent() - Current;
    v18 = [v2 engineError];
    v19 = &v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v20 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v21 = *(v19 + 1);
    if (v18)
    {
      v22 = v18;
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v39 = 0xD000000000000014;
      v40 = 0x80000001002BBEC0;
      sub_1000042B4(&unk_10041E830, &qword_1002B9500);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1002B9270;
      *(v23 + 56) = &type metadata for Double;
      *(v23 + 64) = &protocol witness table for Double;
      *(v23 + 32) = v17;
      v38._countAndFlagsBits = String.init(format:_:)();
      v38._object = v24;

      v25._countAndFlagsBits = 115;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);

      String.append(_:)(v38);

      v26._countAndFlagsBits = 8250;
      v26._object = 0xE200000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v15;
      v27._object = v35;
      String.append(_:)(v27);

      sub_10003F5B0(v22, v39, v40, v20, v21);

      return swift_willThrow();
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v39 = 0xD000000000000019;
      v40 = 0x80000001002BBEA0;
      sub_1000042B4(&unk_10041E830, &qword_1002B9500);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1002B9270;
      *(v28 + 56) = &type metadata for Double;
      *(v28 + 64) = &protocol witness table for Double;
      *(v28 + 32) = v17;
      v38._countAndFlagsBits = String.init(format:_:)();
      v38._object = v29;

      v30._countAndFlagsBits = 115;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);

      String.append(_:)(v38);

      v31._countAndFlagsBits = 8250;
      v31._object = 0xE200000000000000;
      String.append(_:)(v31);
      v32._countAndFlagsBits = v15;
      v32._object = v35;
      String.append(_:)(v32);

      sub_10003F2C0(v39, v40, v20, v21);
    }
  }

  return result;
}

uint64_t sub_10001F05C()
{
  v2 = v0;
  v26 = 0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v28, "setUpWithError:", &v26);
  v4 = v26;
  if (!v3)
  {
    v11 = v26;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v5 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__restoreRootPath];
  v6 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__restoreRootPath + 8];
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v7 = swift_allocBox();
  v8 = v4;

  FilePath.init(_:)();
  v9 = sub_100005D30(v7);
  if (v1)
  {
  }

  v12 = v9;

  if ((v12 & 1) == 0)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v26 = 0xD000000000000011;
    v27 = 0x80000001002BC080;
    v22._countAndFlagsBits = v5;
    v22._object = v6;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0x6F6E2073656F6420;
    v23._object = 0xEF74736978652074;
    String.append(_:)(v23);
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();

    [v24 errorWithCode:1 description:v25];

    return swift_willThrow();
  }

  v13 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  swift_getObjectType();
  v14 = sub_100021170();
  v16 = v15;
  v17 = &v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
  v18 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
  v19 = *(v17 + 1);
  v26 = 0;
  v27 = 0xE000000000000000;
  v20 = v14;
  _StringGuts.grow(_:)(24);

  v26 = 0xD000000000000016;
  v27 = 0x80000001002BC0A0;
  v21._countAndFlagsBits = v20;
  v21._object = v16;
  String.append(_:)(v21);

  sub_10003F2C0(v26, v27, v18, v19);
}

id sub_10001F310(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = objc_autoreleasePoolPush();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000234B8;
  *(v13 + 24) = v12;
  v36 = sub_1000234C0;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100022268;
  v35 = &unk_1003BBA80;
  v14 = _Block_copy(&aBlock);

  [v5 performRetryablePhase:v14];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    v16 = CFAbsoluteTimeGetCurrent() - Current;
    v17 = *&v5[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v18 = *&v5[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
    aBlock = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    aBlock = 541283393;
    v33 = 0xE400000000000000;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x74656C706D6F6320;
    v20._object = 0xEE00206E69206465;
    String.append(_:)(v20);
    sub_1000042B4(&unk_10041E830, &qword_1002B9500);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002B9270;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v16;
    v30._countAndFlagsBits = String.init(format:_:)();
    v30._object = v22;

    v23._countAndFlagsBits = 115;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);

    String.append(_:)(v30);

    sub_10003F2C0(aBlock, v33, v17, v18);

    result = [v5 engineError];
    if (result)
    {
      v24 = result;
      aBlock = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      aBlock = 0x412064656C696146;
      v33 = 0xEB00000000204354;
      v25._countAndFlagsBits = a1;
      v25._object = a2;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 544106784;
      v26._object = 0xE400000000000000;
      String.append(_:)(v26);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1002B9270;
      *(v27 + 56) = &type metadata for Double;
      *(v27 + 64) = &protocol witness table for Double;
      *(v27 + 32) = v16;
      v31._countAndFlagsBits = String.init(format:_:)();
      v31._object = v28;

      v29._countAndFlagsBits = 115;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);

      String.append(_:)(v31);

      sub_10003F5B0(v24, aBlock, v33, v17, v18);

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10001F720()
{
  v1 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
  aBlock = 0;
  v2 = [v1 begin:&aBlock];
  v3 = aBlock;
  if (v2)
  {
    v4 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100023484;
    *(v6 + 24) = v5;
    v37 = sub_10002348C;
    v38 = v6;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100021E48;
    v36 = &unk_1003BBA08;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = v0;

    aBlock = 0;
    v10 = [v4 enumerateAssetsToDownload:&aBlock enumerator:v7];
    _Block_release(v7);
    v11 = aBlock;
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003F5B0(v12, 0xD00000000000001CLL, 0x80000001002BBFD0, *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log], *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8]);
    }

    aBlock = 0;
    v15 = [v1 finishWithError:&aBlock];
    v16 = aBlock;
    if (v15)
    {
      if (v12)
      {
        swift_willThrow();
        v17 = v16;
      }

      else
      {
        v23 = aBlock;
        v24 = [v1 fetchSummary];
        v25 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
        v26 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
        aBlock = 0;
        v34 = 0xE000000000000000;
        _StringGuts.grow(_:)(42);

        aBlock = 0xD000000000000021;
        v34 = 0x80000001002BC020;
        v27 = [v24 description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31._countAndFlagsBits = v28;
        v31._object = v30;
        String.append(_:)(v31);

        v32._countAndFlagsBits = 0x73746573736120;
        v32._object = 0xE700000000000000;
        String.append(_:)(v32);
        sub_10003F2C0(aBlock, v34, v25, v26);
      }
    }

    else
    {
      v18 = aBlock;
      v19 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v20 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
      v21 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
      aBlock = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);
      v22._countAndFlagsBits = 0xD000000000000026;
      v22._object = 0x80000001002BBFF0;
      String.append(_:)(v22);
      sub_1000042B4(&qword_10041ECD8, &unk_1002B9730);
      _print_unlocked<A, B>(_:_:)();
      sub_10003F5B0(v19, aBlock, v34, v20, v21);

      swift_willThrow();
    }
  }

  else
  {
    v13 = aBlock;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10001FB90()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v35 = &v31 - v4;
  v36 = type metadata accessor for Date();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v36);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  static Date.now.getter();
  v11 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100023454;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100023504;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B4F4;
  aBlock[3] = &unk_1003BB990;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  aBlock[0] = 0;
  v16 = [v11 enumerateAndMarkNotStartedDirectoriesTopDown:aBlock enumerator:v14];
  _Block_release(v14);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v17 = sub_10000F2D8(0, v17[2] + 1, 1, v17);
    *&v16[v13] = v17;
    goto LABEL_4;
  }

  if (!v16)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v10, v36);
  }

  v31 = v12;
  v19 = *&v15[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v20 = v34;
  static Date.now.getter();
  v13 = *(v19 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v21 = *(v32 + 48);
  v22 = *(v5 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v10, v36);
  v22(v24 + v21, v20, v23);
  v16 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v17 = *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v13] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v27 = v17[2];
  v26 = v17[3];
  if (v27 >= v26 >> 1)
  {
    v17 = sub_10000F2D8(v26 > 1, v27 + 1, 1, v17);
  }

  v17[2] = v27 + 1;
  sub_100023344(v35, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27);
  *&v16[v13] = v17;
  v28 = *(v5 + 8);
  v29 = v36;
  v28(v34, v36);
  v28(v10, v29);
}

uint64_t sub_10001FFF0()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v35 = &v31 - v4;
  v36 = type metadata accessor for Date();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v36);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  static Date.now.getter();
  v11 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100023424;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10002342C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100021688;
  aBlock[3] = &unk_1003BB918;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  aBlock[0] = 0;
  v16 = [v11 enumerateAndMarkUnfinishedZeroByteFiles:aBlock enumerator:v14];
  _Block_release(v14);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v17 = sub_10000F2D8(0, v17[2] + 1, 1, v17);
    *&v16[v13] = v17;
    goto LABEL_4;
  }

  if (!v16)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v10, v36);
  }

  v31 = v12;
  v19 = *&v15[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v20 = v34;
  static Date.now.getter();
  v13 = *(v19 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v21 = *(v32 + 48);
  v22 = *(v5 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v10, v36);
  v22(v24 + v21, v20, v23);
  v16 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v17 = *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v13] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v27 = v17[2];
  v26 = v17[3];
  if (v27 >= v26 >> 1)
  {
    v17 = sub_10000F2D8(v26 > 1, v27 + 1, 1, v17);
  }

  v17[2] = v27 + 1;
  sub_100023344(v35, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27);
  *&v16[v13] = v17;
  v28 = *(v5 + 8);
  v29 = v36;
  v28(v34, v36);
  v28(v10, v29);
}

uint64_t sub_100020450()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v35 = &v31 - v4;
  v36 = type metadata accessor for Date();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v36);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  static Date.now.getter();
  v11 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000233E4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000233FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002198C;
  aBlock[3] = &unk_1003BB8A0;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  aBlock[0] = 0;
  v16 = [v11 enumerateAndMarkUnfinishedSymlinks:aBlock enumerator:v14];
  _Block_release(v14);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v17 = sub_10000F2D8(0, v17[2] + 1, 1, v17);
    *&v16[v13] = v17;
    goto LABEL_4;
  }

  if (!v16)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v10, v36);
  }

  v31 = v12;
  v19 = *&v15[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v20 = v34;
  static Date.now.getter();
  v13 = *(v19 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v21 = *(v32 + 48);
  v22 = *(v5 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v10, v36);
  v22(v24 + v21, v20, v23);
  v16 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v17 = *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v13] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v27 = v17[2];
  v26 = v17[3];
  if (v27 >= v26 >> 1)
  {
    v17 = sub_10000F2D8(v26 > 1, v27 + 1, 1, v17);
  }

  v17[2] = v27 + 1;
  sub_100023344(v35, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27);
  *&v16[v13] = v17;
  v28 = *(v5 + 8);
  v29 = v36;
  v28(v34, v36);
  v28(v10, v29);
}

uint64_t sub_1000208B0()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v35 = &v31 - v4;
  v36 = type metadata accessor for Date();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v36);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  static Date.now.getter();
  v11 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000233B4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000233BC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022118;
  aBlock[3] = &unk_1003BB828;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  aBlock[0] = 0;
  v16 = [v11 enumerateAndMarkUnfinishedAssets:aBlock enumerator:v14];
  _Block_release(v14);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v17 = sub_10000F2D8(0, v17[2] + 1, 1, v17);
    *&v16[v13] = v17;
    goto LABEL_4;
  }

  if (!v16)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v10, v36);
  }

  v31 = v12;
  v19 = *&v15[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v20 = v34;
  static Date.now.getter();
  v13 = *(v19 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v21 = *(v32 + 48);
  v22 = *(v5 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v10, v36);
  v22(v24 + v21, v20, v23);
  v16 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v17 = *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v13] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v27 = v17[2];
  v26 = v17[3];
  if (v27 >= v26 >> 1)
  {
    v17 = sub_10000F2D8(v26 > 1, v27 + 1, 1, v17);
  }

  v17[2] = v27 + 1;
  sub_100023344(v35, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27);
  *&v16[v13] = v17;
  v28 = *(v5 + 8);
  v29 = v36;
  v28(v34, v36);
  v28(v10, v29);
}

uint64_t sub_100020D10()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v35 = &v31 - v4;
  v36 = type metadata accessor for Date();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v36);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  static Date.now.getter();
  v11 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000232F4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100023324;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B4F4;
  aBlock[3] = &unk_1003BB7B0;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  aBlock[0] = 0;
  v16 = [v11 enumerateAndMarkPlacedDirectoriesBottomUp:aBlock enumerator:v14];
  _Block_release(v14);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v17 = sub_10000F2D8(0, v17[2] + 1, 1, v17);
    *&v16[v13] = v17;
    goto LABEL_4;
  }

  if (!v16)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v10, v36);
  }

  v31 = v12;
  v19 = *&v15[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v20 = v34;
  static Date.now.getter();
  v13 = *(v19 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v21 = *(v32 + 48);
  v22 = *(v5 + 16);
  v24 = v35;
  v23 = v36;
  v22(v35, v10, v36);
  v22(v24 + v21, v20, v23);
  v16 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v17 = *(v13 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[v13] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v27 = v17[2];
  v26 = v17[3];
  if (v27 >= v26 >> 1)
  {
    v17 = sub_10000F2D8(v26 > 1, v27 + 1, 1, v17);
  }

  v17[2] = v27 + 1;
  sub_100023344(v35, v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27);
  *&v16[v13] = v17;
  v28 = *(v5 + 8);
  v29 = v36;
  v28(v34, v36);
  v28(v10, v29);
}

id sub_100021170()
{
  v9 = 0;
  v1 = [v0 countsOfRestorablesByState:&v9];
  v2 = v9;
  if (v1)
  {
    v3 = v1;
    sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
    sub_100023254();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v2;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = MBDescriptionForStateSummaryDictionary(isa);

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void sub_10002133C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
  v16 = 0;
  if ([v5 disposeWithError:&v16])
  {
    v6 = v16;
  }

  else
  {
    v7 = v16;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v10 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v11._object = 0x80000001002BBE00;
    v11._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v11);
    v15 = v5;
    sub_1000042B4(&qword_10041ECD8, &unk_1002B9730);
    _print_unlocked<A, B>(_:_:)();
    sub_10003F5B0(v8, v16, v17, v9, v10);
  }

  v12 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  sub_10003247C();
  if (a1)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "cleanUpOnceAfterError:", v13);
}

uint64_t sub_10002161C(void *a1, char a2, void *a3, void *a4)
{
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = sub_100022538(a3, v7, v7, a1, a2);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100021688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_unknownObjectRetain();
  v9 = v8(a2, a3, a4);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1000216F0(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  swift_unknownObjectRetain();

  if ([v11 isCanceled])
  {
    v12 = [v11 cancelError];
    if (v12)
    {
      v13 = v12;
      if (a5)
      {
        *a5 = _convertErrorToNSError(_:)();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v15 = 1;
  }

  else
  {
    v14 = *&v11[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
    sub_100032A38(a1, a3, a4, a2 & 1);
    v16 = *&v11[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v16)
    {
      [v16 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    swift_unknownObjectRelease();

    v15 = 5;
  }

  return v15;
}

uint64_t sub_10002198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = swift_unknownObjectRetain();
  v13 = v8(v12, a3, v9, v11, a5);
  swift_unknownObjectRelease();

  return v13;
}

id sub_100021A7C(char *a1)
{
  v3 = v1;
  if ([v1 isCanceled] && objc_msgSend(v1, "cancelError"))
  {
    return swift_willThrow();
  }

  v6 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot];
  v7 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata];
  result = sub_10002A444();
  if (!v2)
  {
    v9 = v8;
    v10 = result;

    v11 = *&v6[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
    if ((~v11 & 0xF000000000000007) != 0)
    {

      v12 = sub_100027EFC(v10, v9, v11);

      sub_1000112FC(v11);
      v13 = sub_100005D30(v12);

      v14 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
      v15 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
      if (v13)
      {
        _StringGuts.grow(_:)(40);

        v35 = 0x207465737341;
        v36 = 0xE600000000000000;
        v16 = [a1 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20._countAndFlagsBits = v17;
        v20._object = v19;
        String.append(_:)(v20);

        v21._countAndFlagsBits = 0xD00000000000001ELL;
        v21._object = 0x80000001002BC050;
        String.append(_:)(v21);
        v22 = [v6 description];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26._countAndFlagsBits = v23;
        v26._object = v25;
        String.append(_:)(v26);

        sub_10003F2C0(0x207465737341, 0xE600000000000000, v14, v15);

        v27 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
        if (v27)
        {
          return [v27 updatingProgress:objc_msgSend(v7 previousProgress:"assetSize") size:{1.0, 0.0}];
        }
      }

      else
      {
        v35 = 0x6974736575716552;
        v36 = 0xEB0000000020676ELL;
        v28 = [a1 description];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32._countAndFlagsBits = v29;
        v32._object = v31;
        String.append(_:)(v32);

        sub_10003F2C0(0x6974736575716552, 0xEB0000000020676ELL, v14, v15);

        v33 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
        v35 = 0;
        if (![v33 requestAsset:a1 error:&v35])
        {
          v34 = v35;
          _convertNSErrorToError(_:)();

          return swift_willThrow();
        }

        return v35;
      }
    }

    else
    {

      sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100021E48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

uint64_t sub_100021E94(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  swift_unknownObjectRetain();
  v10 = a3;
  if ([v9 isCanceled])
  {
    v11 = [v9 cancelError];
    if (v11)
    {
      v12 = v11;
      if (a4)
      {
        *a4 = _convertErrorToNSError(_:)();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v14 = 1;
  }

  else
  {
    v13 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
    sub_100032C9C(a1, a2 & 1, v10);
    v15 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v15)
    {
      [v15 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    swift_unknownObjectRelease();

    v14 = 5;
  }

  return v14;
}

uint64_t sub_100022118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = v10(a2, a3, v11, a5);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_100022194(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = sub_100022768(a2, v7, v7, a1, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100022538(void *a1, char *a2, uint64_t a3, void *a4, char a5)
{
  if ([a2 isCanceled])
  {
    v10 = [a2 cancelError];
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        *a1 = _convertErrorToNSError(_:)();
      }

      else
      {
      }
    }

    return 1;
  }

  else
  {
    v12 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer);
    sub_1000327E4(a4, a5 & 1);
    v13 = *&a2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v13)
    {
      [v13 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    return 5;
  }
}

uint64_t sub_100022768(void *a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if ([a2 isCanceled])
  {
    v10 = [a2 cancelError];
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        *a1 = _convertErrorToNSError(_:)();
      }

      else
      {
      }
    }

    return 1;
  }

  else
  {
    v12 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer);
    a5(a4);
    v13 = *&a2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v13)
    {
      [v13 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    return 5;
  }
}

id sub_100022998(char *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot);
  sub_100028BE4(a1);
  if (v4)
  {
    v51 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log);
    v50 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8);
    _StringGuts.grow(_:)(50);

    v52 = 0xD00000000000001CLL;
    v53 = 0x80000001002BBDB0;
    v10 = [a1 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 544497952;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a2;
    v16._object = a3;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x6564206F746E6920;
    v17._object = 0xEC00000020746F70;
    String.append(_:)(v17);
    v18 = [v9 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    sub_10003F5B0(v4, 0xD00000000000001CLL, 0x80000001002BBDB0, v51, v50);

    v23 = *(v5 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan);
    v24 = _convertErrorToNSError(_:)();
    v52 = 0;
    LODWORD(v21) = [v23 setAssetState:3 asset:a1 withFailure:v24 error:&v52];

    if (v21)
    {
      v25 = v52;
    }

    else
    {
      v31 = v52;
      v32 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v33._object = 0x80000001002BBD90;
      v33._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v33);
      v34 = [a1 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 0xD000000000000021;
      v39._object = 0x80000001002BBDD0;
      String.append(_:)(v39);
      sub_10003F5B0(v32, v52, v53, v51, v50);
    }

    return swift_willThrow();
  }

  v26 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan);
  v52 = 0;
  if (![v26 setAssetState:2 asset:a1 withFailure:0 error:&v52])
  {
    v40 = v52;
    v41 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v42 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log);
    v43 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v52 = 0xD000000000000015;
    v53 = 0x80000001002BBD90;
    v44 = [a1 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48._countAndFlagsBits = v45;
    v48._object = v47;
    String.append(_:)(v48);

    v49._countAndFlagsBits = 0x6E776F6420736120;
    v49._object = 0xEE00646564616F6CLL;
    String.append(_:)(v49);
    sub_10003F5B0(v41, v52, v53, v42, v43);

    return swift_willThrow();
  }

  v27 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress);
  if (!v27)
  {
    return v52;
  }

  v28 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata];
  v29 = v52;
  return [v27 updatingProgress:objc_msgSend(v28 previousProgress:"assetSize") size:{1.0, 0.0}];
}

id sub_100022E54(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log);
  v7 = *(v2 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8);
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._countAndFlagsBits = 0x2072656863746546;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  v27 = *(v2 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher);
  sub_1000042B4(&qword_10041ECD8, &unk_1002B9730);
  _print_unlocked<A, B>(_:_:)();
  v9._object = 0x80000001002BBD70;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10 = [a1 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  sub_10003F5B0(a2, 0, 0xE000000000000000, v6, v7);

  v15 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan);
  v16 = _convertErrorToNSError(_:)();
  v28 = 0;
  LODWORD(v15) = [v15 setAssetState:3 asset:a1 withFailure:v16 error:&v28];

  v17 = v28;
  if (v15)
  {

    return v17;
  }

  else
  {
    v19 = v28;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v28 = 0xD000000000000015;
    v29 = 0x80000001002BBD90;
    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0x6C69616620736120;
    v26._object = 0xEA00000000006465;
    String.append(_:)(v26);
    sub_10003F5B0(v20, v28, v29, v6, v7);
  }
}

unint64_t sub_100023254()
{
  result = qword_10041ECE0;
  if (!qword_10041ECE0)
  {
    sub_100011314(255, &unk_10041F3A0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041ECE0);
  }

  return result;
}

uint64_t sub_1000232BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002332C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000233BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000233FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10002342C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10002348C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1000234C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

id sub_100023550()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineStart;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferAttemptCount] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalFileCount] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__filesTransferred] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalByteCount] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__bytesTransferred] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneAttemptCount] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100023A50(void *a1, uint64_t *a2)
{
  v5 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v7);
  v12 = &v20[-v11];
  v13 = *(v2 + *a1);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v2 + *a1) = v15;
    v16 = *a2;
    swift_beginAccess();
    sub_100027A50(v2 + v16, v12);
    v17 = type metadata accessor for Date();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 48))(v12, 1, v17);
    result = sub_10001A7A0(v12, &qword_10041EE08, &qword_1002B9788);
    if (v19 == 1)
    {
      Date.init()();
      (*(v18 + 56))(v9, 0, 1, v17);
      swift_beginAccess();
      sub_100027AC0(v9, v2 + v16);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100023D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  Date.init()();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferEnd;
  swift_beginAccess();
  sub_100027AC0(v12, v4 + v14);
  result = swift_endAccess();
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalFileCount) = a2;
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalByteCount) = a1;
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__bytesTransferred) = a3;
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__filesTransferred) = a4;
  return result;
}

void sub_100024020(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = a1;
  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = *a3;
  swift_beginAccess();
  sub_100027AC0(v8, v9 + v11);
  swift_endAccess();
}

void sub_100024120()
{
  v1 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v364 = &v362 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v383 = &v362 - v6;
  v7 = __chkstk_darwin(v5);
  v385 = &v362 - v8;
  v9 = __chkstk_darwin(v7);
  v412 = &v362 - v10;
  v11 = __chkstk_darwin(v9);
  v407 = &v362 - v12;
  v13 = __chkstk_darwin(v11);
  v366 = &v362 - v14;
  v15 = __chkstk_darwin(v13);
  v386 = &v362 - v16;
  v17 = __chkstk_darwin(v15);
  v389 = &v362 - v18;
  v19 = __chkstk_darwin(v17);
  v413 = &v362 - v20;
  v21 = __chkstk_darwin(v19);
  v409 = &v362 - v22;
  v23 = __chkstk_darwin(v21);
  v388 = &v362 - v24;
  v25 = __chkstk_darwin(v23);
  v368 = &v362 - v26;
  v27 = __chkstk_darwin(v25);
  v390 = &v362 - v28;
  v29 = __chkstk_darwin(v27);
  v391 = &v362 - v30;
  v31 = __chkstk_darwin(v29);
  v414 = &v362 - v32;
  v33 = __chkstk_darwin(v31);
  v415 = &v362 - v34;
  v35 = __chkstk_darwin(v33);
  v370 = &v362 - v36;
  v37 = __chkstk_darwin(v35);
  v392 = &v362 - v38;
  v39 = __chkstk_darwin(v37);
  v394 = &v362 - v40;
  v41 = __chkstk_darwin(v39);
  v416 = &v362 - v42;
  v43 = __chkstk_darwin(v41);
  v420 = &v362 - v44;
  v45 = __chkstk_darwin(v43);
  v373 = &v362 - v46;
  v47 = __chkstk_darwin(v45);
  v395 = &v362 - v48;
  v49 = __chkstk_darwin(v47);
  v397 = &v362 - v50;
  v51 = __chkstk_darwin(v49);
  v417 = &v362 - v52;
  v53 = __chkstk_darwin(v51);
  v410 = &v362 - v54;
  v55 = __chkstk_darwin(v53);
  v376 = &v362 - v56;
  v57 = __chkstk_darwin(v55);
  v398 = &v362 - v58;
  v59 = __chkstk_darwin(v57);
  v399 = &v362 - v60;
  v61 = __chkstk_darwin(v59);
  v418 = &v362 - v62;
  v63 = __chkstk_darwin(v61);
  v411 = &v362 - v64;
  v65 = __chkstk_darwin(v63);
  v379 = &v362 - v66;
  v67 = __chkstk_darwin(v65);
  v400 = &v362 - v68;
  v69 = __chkstk_darwin(v67);
  v402 = &v362 - v70;
  v71 = __chkstk_darwin(v69);
  v419 = &v362 - v72;
  v73 = __chkstk_darwin(v71);
  v422 = (&v362 - v74);
  v75 = __chkstk_darwin(v73);
  v427 = (&v362 - v76);
  __chkstk_darwin(v75);
  v78 = &v362 - v77;
  v79 = type metadata accessor for Date();
  v80 = *(v79 - 8);
  v81 = v80[8];
  v82 = __chkstk_darwin(v79);
  v363 = &v362 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v403 = &v362 - v85;
  v86 = __chkstk_darwin(v84);
  v384 = &v362 - v87;
  v88 = __chkstk_darwin(v86);
  v365 = &v362 - v89;
  v90 = __chkstk_darwin(v88);
  v404 = &v362 - v91;
  v92 = __chkstk_darwin(v90);
  v387 = &v362 - v93;
  v94 = __chkstk_darwin(v92);
  v367 = &v362 - v95;
  v96 = __chkstk_darwin(v94);
  v371 = &v362 - v97;
  v98 = __chkstk_darwin(v96);
  v405 = &v362 - v99;
  v100 = __chkstk_darwin(v98);
  v369 = &v362 - v101;
  v102 = __chkstk_darwin(v100);
  v374 = &v362 - v103;
  v104 = __chkstk_darwin(v102);
  v393 = &v362 - v105;
  v106 = __chkstk_darwin(v104);
  v372 = &v362 - v107;
  v108 = __chkstk_darwin(v106);
  v377 = &v362 - v109;
  v110 = __chkstk_darwin(v108);
  v396 = &v362 - v111;
  v112 = __chkstk_darwin(v110);
  v375 = &v362 - v113;
  v114 = __chkstk_darwin(v112);
  v380 = &v362 - v115;
  v116 = __chkstk_darwin(v114);
  v408 = &v362 - v117;
  v118 = __chkstk_darwin(v116);
  v378 = &v362 - v119;
  v120 = __chkstk_darwin(v118);
  v381 = &v362 - v121;
  v122 = __chkstk_darwin(v120);
  v401 = &v362 - v123;
  v124 = __chkstk_darwin(v122);
  v382 = &v362 - v125;
  __chkstk_darwin(v124);
  v127 = &v362 - v126;
  v441 = sub_10003E69C(&_swiftEmptyArrayStorage);
  v128 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineStart;
  swift_beginAccess();
  v423 = v128;
  v129 = v0;
  sub_100027A50(v0 + v128, v78);
  v131 = v80 + 6;
  v130 = v80[6];
  if ((v130)(v78, 1, v79) == 1)
  {

    sub_10001A7A0(v78, &qword_10041EE08, &qword_1002B9788);
    sub_10003F7B8(0xD00000000000002CLL, 0x80000001002BC3D0, 0xD000000000000011, 0x80000001002BC3B0);
    return;
  }

  v424 = v80;
  v134 = v80[4];
  v133 = v80 + 4;
  v132 = v134;
  v134(v127, v78, v79);
  v135 = arc4random_uniform(0xFFFFFFFF);
  v440 = &type metadata for UInt32;
  LODWORD(v439) = v135;
  sub_10001DCF4(&v439, v438);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v437 = v441;
  sub_10002D5BC(v438, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v441 = v437;
  v137 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineEnd;
  swift_beginAccess();
  v138 = v129 + v137;
  v139 = v427;
  sub_100027A50(v138, v427);
  v428 = v131;
  v140 = (v130)(v139, 1, v79);
  v421 = v129;
  v406 = v79;
  v362 = v127;
  v425 = v134;
  if (v140 == 1)
  {
    sub_10001A7A0(v139, &qword_10041EE08, &qword_1002B9788);
    v141 = v133;
LABEL_7:
    v144 = v421;
    v145 = v419;
    goto LABEL_12;
  }

  v142 = v382;
  v141 = v133;
  v132(v382, v139, v79);
  Date.timeIntervalSince(_:)();
  if (v143 < 0.0)
  {
    sub_10003DB54(0x7275446C61746F74, 0xED00006E6F697461, &v439);
    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    (v424[1])(v142, v79);
    goto LABEL_7;
  }

  v146 = v424;
  if ((*&v143 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v144 = v421;
  if (v143 <= -9.22337204e18)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v145 = v419;
  if (v143 >= 9.22337204e18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v440 = &type metadata for Int64;
  *&v439 = v143;
  sub_10001DCF4(&v439, v438);
  v147 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v441;
  sub_10002D5BC(v438, 0x7275446C61746F74, 0xED00006E6F697461, v147);
  (v146[1])(v142, v406);
  v441 = v436;
LABEL_12:
  v148 = *(v144 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError);
  v426 = v141;
  if (v148)
  {
    v149 = objc_opt_self();
    v150 = v148;
    v151 = _convertErrorToNSError(_:)();
    v152 = [v149 signatureForError:v151];

    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v155 = v154;

    v440 = &type metadata for String;
    *&v439 = v153;
    *(&v439 + 1) = v155;
    sub_10001DCF4(&v439, v438);
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v436 = v441;
    sub_10002D5BC(v438, 0x676953726F727265, 0xEE0065727574616ELL, v156);

    v441 = v436;
  }

  v157 = [objc_allocWithZone(CWFInterface) init];
  [v157 activate];
  v158 = [v157 networkName];
  if (v158)
  {
    v159 = v158;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v160._countAndFlagsBits = 0x5320656C707041;
    v160._object = 0xE700000000000000;
    v161 = String.hasPrefix(_:)(v160);
  }

  else
  {
    v161 = 0;
  }

  [v157 invalidate];

  v440 = &type metadata for Bool;
  LOBYTE(v439) = v161;
  sub_10001DCF4(&v439, v438);
  v162 = swift_isUniquelyReferenced_nonNull_native();
  v436 = v441;
  sub_10002D5BC(v438, 0x53656C7070416E69, 0xEC00000065726F74, v162);
  v441 = v436;
  v163 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageStart;
  swift_beginAccess();
  v164 = v422;
  sub_100027A50(v144 + v163, v422);
  v165 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageEnd;
  swift_beginAccess();
  sub_100027A50(v144 + v165, v145);
  v382 = *(v144 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initAttemptCount);
  v166 = v402;
  sub_100027A50(v144 + v423, v402);
  v167 = v406;
  if ((v130)(v166, 1, v406) == 1)
  {
    goto LABEL_212;
  }

  v168 = v401;
  v169 = v425;
  v425(v401, v166, v167);
  v170 = v400;
  sub_100027A50(v164, v400);
  v427 = v130;
  if ((v130)(v170, 1, v167) == 1)
  {
    v171 = v424[1];
    (v171)(v168, v167);
    sub_10001A7A0(v170, &qword_10041EE08, &qword_1002B9788);
    goto LABEL_30;
  }

  v172 = v381;
  v169(v381, v170, v167);
  *&v439 = 1953066601;
  *(&v439 + 1) = 0xE400000000000000;
  v173._countAndFlagsBits = 0x7472617453;
  v173._object = 0xE500000000000000;
  String.append(_:)(v173);
  v174 = v439;
  Date.timeIntervalSince(_:)();
  if (v175 < 0.0)
  {
    sub_10003DB54(v174, *(&v174 + 1), &v439);

    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    v176 = v382;
    goto LABEL_26;
  }

  v176 = v382;
  if ((*&v175 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_168;
  }

  if (v175 <= -9.22337204e18)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if (v175 >= 9.22337204e18)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v440 = &type metadata for Int64;
  *&v439 = v175;
  sub_10001DCF4(&v439, v438);
  v177 = swift_isUniquelyReferenced_nonNull_native();
  v435 = v441;
  sub_10002D5BC(v438, v174, *(&v174 + 1), v177);

  v441 = v435;
LABEL_26:
  v178 = v379;
  sub_100027A50(v419, v379);
  if ((v427)(v178, 1, v167) != 1)
  {
    v425(v378, v178, v167);
    *&v439 = 1953066601;
    *(&v439 + 1) = 0xE400000000000000;
    v227._countAndFlagsBits = 0x6E6F697461727544;
    v227._object = 0xE800000000000000;
    String.append(_:)(v227);
    v228 = v439;
    Date.timeIntervalSince(_:)();
    if (v229 >= 0.0)
    {
      if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      if (v229 <= -9.22337204e18)
      {
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      if (v229 >= 9.22337204e18)
      {
LABEL_194:
        __break(1u);
        goto LABEL_195;
      }

      v440 = &type metadata for Int64;
      *&v439 = v229;
      sub_10001DCF4(&v439, v438);
      v355 = swift_isUniquelyReferenced_nonNull_native();
      v435 = v441;
      sub_10002D5BC(v438, v228, *(&v228 + 1), v355);

      v441 = v435;
    }

    else
    {
      sub_10003DB54(v228, *(&v228 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    }

    (v424[1])(v378, v167);
    if (!v176)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  sub_10001A7A0(v178, &qword_10041EE08, &qword_1002B9788);
  if (v176)
  {
LABEL_28:
    *&v439 = 1953066601;
    *(&v439 + 1) = 0xE400000000000000;
    v179._countAndFlagsBits = 0x4374706D65747441;
    v179._object = 0xEC000000746E756FLL;
    String.append(_:)(v179);
    v180 = v439;
    v440 = &type metadata for UInt64;
    *&v439 = v176;
    sub_10001DCF4(&v439, v438);
    v181 = swift_isUniquelyReferenced_nonNull_native();
    v435 = v441;
    sub_10002D5BC(v438, v180, *(&v180 + 1), v181);

    v441 = v435;
  }

LABEL_29:
  v171 = v424[1];
  (v171)(v172, v167);
  (v171)(v168, v167);
  v164 = v422;
LABEL_30:
  v422 = v171;
  sub_10001A7A0(v419, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v164, &qword_10041EE08, &qword_1002B9788);
  v182 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferStart;
  v183 = v421;
  swift_beginAccess();
  v184 = v411;
  sub_100027A50(v183 + v182, v411);
  v185 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferEnd;
  swift_beginAccess();
  sub_100027A50(v183 + v185, v418);
  v419 = *(v183 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferAttemptCount);
  v186 = v399;
  sub_100027A50(v183 + v423, v399);
  v187 = v427;
  v188 = (v427)(v186, 1, v167);
  v189 = v420;
  v190 = v408;
  if (v188 == 1)
  {
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  v191 = v425;
  (v425)(v408, v186);
  v192 = v184;
  v193 = v398;
  sub_100027A50(v192, v398);
  if (v187(v193, 1, v167) == 1)
  {
    (v422)(v190, v167);
    sub_10001A7A0(v193, &qword_10041EE08, &qword_1002B9788);
    v194 = v167;
    v195 = v421;
    v196 = v417;
    v197 = v411;
    goto LABEL_43;
  }

  v198 = v193;
  v199 = v380;
  v191(v380, v198, v167);
  *&v439 = 0xD000000000000010;
  *(&v439 + 1) = 0x80000001002BC400;
  v402 = 0x80000001002BC400;
  v200._countAndFlagsBits = 0x7472617453;
  v200._object = 0xE500000000000000;
  String.append(_:)(v200);
  v201 = v439;
  Date.timeIntervalSince(_:)();
  if (v202 < 0.0)
  {
    sub_10003DB54(v201, *(&v201 + 1), &v439);

    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    v195 = v421;
    v203 = v422;
    v194 = v406;
    v197 = v411;
    v204 = v419;
    goto LABEL_39;
  }

  v195 = v421;
  v197 = v411;
  v204 = v419;
  if ((*&v202 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_171;
  }

  v203 = v422;
  v194 = v406;
  if (v202 <= -9.22337204e18)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v202 >= 9.22337204e18)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v440 = &type metadata for Int64;
  *&v439 = v202;
  sub_10001DCF4(&v439, v438);
  v205 = swift_isUniquelyReferenced_nonNull_native();
  v434 = v441;
  sub_10002D5BC(v438, v201, *(&v201 + 1), v205);

  v441 = v434;
LABEL_39:
  v206 = v376;
  sub_100027A50(v418, v376);
  if ((v427)(v206, 1, v194) != 1)
  {
    v425(v375, v206, v194);
    *&v439 = 0xD000000000000010;
    *(&v439 + 1) = v402;
    v253._countAndFlagsBits = 0x6E6F697461727544;
    v253._object = 0xE800000000000000;
    String.append(_:)(v253);
    v254 = v439;
    Date.timeIntervalSince(_:)();
    if (v255 >= 0.0)
    {
      if ((*&v255 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      v204 = v419;
      if (v255 <= -9.22337204e18)
      {
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      if (v255 >= 9.22337204e18)
      {
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v440 = &type metadata for Int64;
      *&v439 = v255;
      sub_10001DCF4(&v439, v438);
      v356 = swift_isUniquelyReferenced_nonNull_native();
      v434 = v441;
      sub_10002D5BC(v438, v254, *(&v254 + 1), v356);

      v441 = v434;
    }

    else
    {
      sub_10003DB54(v254, *(&v254 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
      v204 = v419;
    }

    v203(v375, v194);
    if (!v204)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  sub_10001A7A0(v206, &qword_10041EE08, &qword_1002B9788);
  if (v204)
  {
LABEL_41:
    *&v439 = 0xD000000000000010;
    *(&v439 + 1) = v402;
    v207._countAndFlagsBits = 0x4374706D65747441;
    v207._object = 0xEC000000746E756FLL;
    String.append(_:)(v207);
    v208 = v439;
    v440 = &type metadata for UInt64;
    *&v439 = v204;
    sub_10001DCF4(&v439, v438);
    v209 = swift_isUniquelyReferenced_nonNull_native();
    v434 = v441;
    sub_10002D5BC(v438, v208, *(&v208 + 1), v209);

    v441 = v434;
  }

LABEL_42:
  v203(v199, v194);
  v203(v408, v194);
  v189 = v420;
  v196 = v417;
LABEL_43:
  sub_10001A7A0(v418, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v197, &qword_10041EE08, &qword_1002B9788);
  v210 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreStart;
  swift_beginAccess();
  v211 = v410;
  sub_100027A50(v195 + v210, v410);
  v212 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreEnd;
  swift_beginAccess();
  sub_100027A50(v195 + v212, v196);
  v419 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreAttemptCount);
  v213 = v397;
  sub_100027A50(v195 + v423, v397);
  v214 = v427;
  if ((v427)(v213, 1, v194) == 1)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  v215 = v396;
  v216 = v213;
  v217 = v425;
  v425(v396, v216, v194);
  v218 = v211;
  v219 = v395;
  sub_100027A50(v218, v395);
  if (v214(v219, 1, v194) == 1)
  {
    (v422)(v215, v194);
    sub_10001A7A0(v219, &qword_10041EE08, &qword_1002B9788);
    v220 = v410;
    goto LABEL_58;
  }

  v221 = v219;
  v222 = v377;
  v217(v377, v221, v194);
  *&v439 = 0x6E6961686379656BLL;
  *(&v439 + 1) = 0xEF65726F74736552;
  v223._countAndFlagsBits = 0x7472617453;
  v223._object = 0xE500000000000000;
  String.append(_:)(v223);
  v224 = v439;
  Date.timeIntervalSince(_:)();
  if (v225 < 0.0)
  {
    sub_10003DB54(v224, *(&v224 + 1), &v439);

    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    v220 = v410;
    v226 = v419;
    goto LABEL_54;
  }

  v220 = v410;
  if ((*&v225 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_175;
  }

  if (v225 <= -9.22337204e18)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v226 = v419;
  if (v225 >= 9.22337204e18)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v440 = &type metadata for Int64;
  *&v439 = v225;
  sub_10001DCF4(&v439, v438);
  v230 = swift_isUniquelyReferenced_nonNull_native();
  v433 = v441;
  sub_10002D5BC(v438, v224, *(&v224 + 1), v230);

  v441 = v433;
LABEL_54:
  v231 = v373;
  sub_100027A50(v417, v373);
  if ((v427)(v231, 1, v194) != 1)
  {
    v425(v372, v231, v194);
    *&v439 = 0x6E6961686379656BLL;
    *(&v439 + 1) = 0xEF65726F74736552;
    v278._countAndFlagsBits = 0x6E6F697461727544;
    v278._object = 0xE800000000000000;
    String.append(_:)(v278);
    v279 = v439;
    Date.timeIntervalSince(_:)();
    if (v280 >= 0.0)
    {
      if ((*&v280 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }

      v226 = v419;
      if (v280 <= -9.22337204e18)
      {
LABEL_198:
        __break(1u);
        goto LABEL_199;
      }

      if (v280 >= 9.22337204e18)
      {
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      v440 = &type metadata for Int64;
      *&v439 = v280;
      sub_10001DCF4(&v439, v438);
      v357 = swift_isUniquelyReferenced_nonNull_native();
      v433 = v441;
      sub_10002D5BC(v438, v279, *(&v279 + 1), v357);

      v441 = v433;
    }

    else
    {
      sub_10003DB54(v279, *(&v279 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
      v226 = v419;
    }

    (v422)(v372, v194);
    if (!v226)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  sub_10001A7A0(v231, &qword_10041EE08, &qword_1002B9788);
  if (v226)
  {
LABEL_56:
    *&v439 = 0x6E6961686379656BLL;
    *(&v439 + 1) = 0xEF65726F74736552;
    v232._countAndFlagsBits = 0x4374706D65747441;
    v232._object = 0xEC000000746E756FLL;
    String.append(_:)(v232);
    v233 = v439;
    v440 = &type metadata for UInt64;
    *&v439 = v226;
    sub_10001DCF4(&v439, v438);
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v433 = v441;
    sub_10002D5BC(v438, v233, *(&v233 + 1), v234);

    v441 = v433;
  }

LABEL_57:
  v235 = v422;
  (v422)(v222, v194);
  v235(v215, v194);
  v189 = v420;
LABEL_58:
  sub_10001A7A0(v417, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v220, &qword_10041EE08, &qword_1002B9788);
  v236 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightStart;
  swift_beginAccess();
  sub_100027A50(v195 + v236, v189);
  v237 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightEnd;
  swift_beginAccess();
  sub_100027A50(v195 + v237, v416);
  v238 = v189;
  v419 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightAttemptCount);
  v239 = v394;
  sub_100027A50(v195 + v423, v394);
  v240 = v427;
  v241 = (v427)(v239, 1, v194);
  v242 = v425;
  v243 = v415;
  if (v241 == 1)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  v244 = v393;
  v425(v393, v239, v194);
  v245 = v238;
  v246 = v392;
  sub_100027A50(v245, v392);
  if (v240(v246, 1, v194) == 1)
  {
    (v422)(v244, v194);
    sub_10001A7A0(v246, &qword_10041EE08, &qword_1002B9788);
    goto LABEL_73;
  }

  v247 = v246;
  v248 = v374;
  v242(v374, v247, v194);
  strcpy(&v439, "preflight");
  WORD5(v439) = 0;
  HIDWORD(v439) = -385875968;
  v249._countAndFlagsBits = 0x7472617453;
  v249._object = 0xE500000000000000;
  String.append(_:)(v249);
  v250 = v439;
  Date.timeIntervalSince(_:)();
  if (v251 < 0.0)
  {
    sub_10003DB54(v250, *(&v250 + 1), &v439);

    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    v252 = v419;
    goto LABEL_69;
  }

  v252 = v419;
  if ((*&v251 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_178;
  }

  if (v251 <= -9.22337204e18)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v251 >= 9.22337204e18)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v440 = &type metadata for Int64;
  *&v439 = v251;
  sub_10001DCF4(&v439, v438);
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v432 = v441;
  sub_10002D5BC(v438, v250, *(&v250 + 1), v256);

  v441 = v432;
LABEL_69:
  v257 = v370;
  sub_100027A50(v416, v370);
  if ((v427)(v257, 1, v194) != 1)
  {
    v425(v369, v257, v194);
    strcpy(&v439, "preflight");
    WORD5(v439) = 0;
    HIDWORD(v439) = -385875968;
    v314._countAndFlagsBits = 0x6E6F697461727544;
    v314._object = 0xE800000000000000;
    String.append(_:)(v314);
    v315 = v439;
    Date.timeIntervalSince(_:)();
    if (v316 >= 0.0)
    {
      if ((*&v316 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v252 = v419;
      if (v316 <= -9.22337204e18)
      {
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

      if (v316 >= 9.22337204e18)
      {
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      v440 = &type metadata for Int64;
      *&v439 = v316;
      sub_10001DCF4(&v439, v438);
      v358 = swift_isUniquelyReferenced_nonNull_native();
      v432 = v441;
      sub_10002D5BC(v438, v315, *(&v315 + 1), v358);

      v441 = v432;
    }

    else
    {
      sub_10003DB54(v315, *(&v315 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
      v252 = v419;
    }

    (v422)(v369, v194);
    if (!v252)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  sub_10001A7A0(v257, &qword_10041EE08, &qword_1002B9788);
  if (v252)
  {
LABEL_71:
    strcpy(&v439, "preflight");
    WORD5(v439) = 0;
    HIDWORD(v439) = -385875968;
    v258._countAndFlagsBits = 0x4374706D65747441;
    v258._object = 0xEC000000746E756FLL;
    String.append(_:)(v258);
    v259 = v439;
    v440 = &type metadata for UInt64;
    *&v439 = v252;
    sub_10001DCF4(&v439, v438);
    v260 = swift_isUniquelyReferenced_nonNull_native();
    v432 = v441;
    sub_10002D5BC(v438, v259, *(&v259 + 1), v260);

    v441 = v432;
  }

LABEL_72:
  v261 = v422;
  (v422)(v248, v194);
  v261(v244, v194);
  v243 = v415;
LABEL_73:
  sub_10001A7A0(v416, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v420, &qword_10041EE08, &qword_1002B9788);
  v262 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferStart;
  swift_beginAccess();
  sub_100027A50(v195 + v262, v243);
  v263 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferEnd;
  swift_beginAccess();
  sub_100027A50(v195 + v263, v414);
  v419 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferAttemptCount);
  v264 = v391;
  sub_100027A50(v195 + v423, v391);
  v265 = v427;
  v266 = (v427)(v264, 1, v194);
  v267 = v405;
  if (v266 == 1)
  {
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v420 = v263;
  v268 = v264;
  v269 = v425;
  v425(v405, v268, v194);
  v270 = v243;
  v271 = v390;
  sub_100027A50(v270, v390);
  if (v265(v271, 1, v194) == 1)
  {
    (v422)(v267, v194);
    sub_10001A7A0(v271, &qword_10041EE08, &qword_1002B9788);
    goto LABEL_88;
  }

  v272 = v271;
  v273 = v371;
  v269(v371, v272, v194);
  strcpy(&v439, "dataTransfer");
  BYTE13(v439) = 0;
  HIWORD(v439) = -5120;
  v274._countAndFlagsBits = 0x7472617453;
  v274._object = 0xE500000000000000;
  String.append(_:)(v274);
  v275 = v439;
  Date.timeIntervalSince(_:)();
  if (v276 < 0.0)
  {
    sub_10003DB54(v275, *(&v275 + 1), &v439);

    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    v277 = v419;
    goto LABEL_84;
  }

  if ((*&v276 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_181;
  }

  if (v276 <= -9.22337204e18)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v277 = v419;
  if (v276 >= 9.22337204e18)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v440 = &type metadata for Int64;
  *&v439 = v276;
  sub_10001DCF4(&v439, v438);
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v431 = v441;
  sub_10002D5BC(v438, v275, *(&v275 + 1), v281);

  v441 = v431;
LABEL_84:
  v282 = v368;
  sub_100027A50(v414, v368);
  if ((v427)(v282, 1, v194) != 1)
  {
    v425(v367, v282, v194);
    strcpy(&v439, "dataTransfer");
    BYTE13(v439) = 0;
    HIWORD(v439) = -5120;
    v337._countAndFlagsBits = 0x6E6F697461727544;
    v337._object = 0xE800000000000000;
    String.append(_:)(v337);
    v338 = v439;
    Date.timeIntervalSince(_:)();
    if (v339 >= 0.0)
    {
      if ((*&v339 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_202:
        __break(1u);
        goto LABEL_203;
      }

      v267 = v405;
      if (v339 <= -9.22337204e18)
      {
LABEL_204:
        __break(1u);
        goto LABEL_205;
      }

      if (v339 >= 9.22337204e18)
      {
LABEL_206:
        __break(1u);
        goto LABEL_207;
      }

      v440 = &type metadata for Int64;
      *&v439 = v339;
      sub_10001DCF4(&v439, v438);
      v359 = swift_isUniquelyReferenced_nonNull_native();
      v431 = v441;
      sub_10002D5BC(v438, v338, *(&v338 + 1), v359);

      v441 = v431;
    }

    else
    {
      sub_10003DB54(v338, *(&v338 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
      v267 = v405;
    }

    (v422)(v367, v194);
    if (!v277)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  sub_10001A7A0(v282, &qword_10041EE08, &qword_1002B9788);
  if (v277)
  {
LABEL_86:
    strcpy(&v439, "dataTransfer");
    BYTE13(v439) = 0;
    HIWORD(v439) = -5120;
    v283._countAndFlagsBits = 0x4374706D65747441;
    v283._object = 0xEC000000746E756FLL;
    String.append(_:)(v283);
    v284 = v439;
    v440 = &type metadata for UInt64;
    *&v439 = v277;
    sub_10001DCF4(&v439, v438);
    v285 = swift_isUniquelyReferenced_nonNull_native();
    v431 = v441;
    sub_10002D5BC(v438, v284, *(&v284 + 1), v285);

    v441 = v431;
  }

LABEL_87:
  v286 = v422;
  (v422)(v273, v194);
  v286(v267, v194);
LABEL_88:
  sub_10001A7A0(v414, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v415, &qword_10041EE08, &qword_1002B9788);
  v287 = v388;
  sub_100027A50(v195 + v420, v388);
  v288 = (v427)(v287, 1, v194);
  sub_10001A7A0(v287, &qword_10041EE08, &qword_1002B9788);
  if (v288 != 1)
  {
    v289 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalFileCount);
    v440 = &type metadata for UInt64;
    *&v439 = v289;
    sub_10001DCF4(&v439, v438);
    v290 = swift_isUniquelyReferenced_nonNull_native();
    v431 = v441;
    sub_10002D5BC(v438, 0x6C69466C61746F74, 0xEE00746E756F4365, v290);
    v441 = v431;
    v291 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalByteCount);
    v440 = &type metadata for UInt64;
    *&v439 = v291;
    sub_10001DCF4(&v439, v438);
    v292 = swift_isUniquelyReferenced_nonNull_native();
    v431 = v441;
    sub_10002D5BC(v438, 0x7479426C61746F74, 0xEE00746E756F4365, v292);
    v441 = v431;
    v293 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__filesTransferred);
    v440 = &type metadata for UInt64;
    *&v439 = v293;
    sub_10001DCF4(&v439, v438);
    v294 = swift_isUniquelyReferenced_nonNull_native();
    v431 = v441;
    sub_10002D5BC(v438, 0xD000000000000010, 0x80000001002BC470, v294);
    v441 = v431;
    v295 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__bytesTransferred);
    v440 = &type metadata for UInt64;
    *&v439 = v295;
    sub_10001DCF4(&v439, v438);
    v296 = swift_isUniquelyReferenced_nonNull_native();
    v431 = v441;
    sub_10002D5BC(v438, 0xD000000000000010, 0x80000001002BC490, v296);
    v441 = v431;
  }

  v297 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreStart;
  swift_beginAccess();
  v298 = v409;
  sub_100027A50(v195 + v297, v409);
  v299 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreEnd;
  swift_beginAccess();
  sub_100027A50(v195 + v299, v413);
  v300 = *(v195 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreAttemptCount);
  v301 = v389;
  sub_100027A50(v195 + v423, v389);
  v302 = v427;
  if ((v427)(v301, 1, v194) == 1)
  {
    goto LABEL_217;
  }

  v303 = v387;
  v304 = v425;
  (v425)();
  v305 = v298;
  v306 = v386;
  sub_100027A50(v305, v386);
  if (v302(v306, 1, v194) == 1)
  {
    (v422)(v303, v194);
    sub_10001A7A0(v306, &qword_10041EE08, &qword_1002B9788);
    v307 = v407;
    v308 = v423;
    v309 = v421;
    goto LABEL_105;
  }

  v304(v404, v306, v194);
  strcpy(&v439, "restore");
  *(&v439 + 1) = 0xE700000000000000;
  v310._countAndFlagsBits = 0x7472617453;
  v310._object = 0xE500000000000000;
  String.append(_:)(v310);
  v311 = v439;
  Date.timeIntervalSince(_:)();
  v313 = v303;
  if (v312 < 0.0)
  {
    sub_10003DB54(v311, *(&v311 + 1), &v439);

    sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    v308 = v423;
    v194 = v406;
    v309 = v421;
    goto LABEL_101;
  }

  v308 = v423;
  v309 = v421;
  if ((*&v312 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_184;
  }

  v194 = v406;
  if (v312 <= -9.22337204e18)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (v312 >= 9.22337204e18)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v440 = &type metadata for Int64;
  *&v439 = v312;
  sub_10001DCF4(&v439, v438);
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v430 = v441;
  sub_10002D5BC(v438, v311, *(&v311 + 1), v317);

  v441 = v430;
LABEL_101:
  v318 = v366;
  sub_100027A50(v413, v366);
  if ((v427)(v318, 1, v194) != 1)
  {
    v425(v365, v318, v194);
    strcpy(&v439, "restore");
    *(&v439 + 1) = 0xE700000000000000;
    v349._countAndFlagsBits = 0x6E6F697461727544;
    v349._object = 0xE800000000000000;
    String.append(_:)(v349);
    v350 = v439;
    Date.timeIntervalSince(_:)();
    if (v351 >= 0.0)
    {
      if ((*&v351 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      if (v351 <= -9.22337204e18)
      {
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      if (v351 >= 9.22337204e18)
      {
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      v440 = &type metadata for Int64;
      *&v439 = v351;
      sub_10001DCF4(&v439, v438);
      v360 = swift_isUniquelyReferenced_nonNull_native();
      v430 = v441;
      sub_10002D5BC(v438, v350, *(&v350 + 1), v360);

      v441 = v430;
    }

    else
    {
      sub_10003DB54(v350, *(&v350 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
    }

    (v422)(v365, v194);
    if (!v300)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  sub_10001A7A0(v318, &qword_10041EE08, &qword_1002B9788);
  if (v300)
  {
LABEL_103:
    strcpy(&v439, "restore");
    *(&v439 + 1) = 0xE700000000000000;
    v319._countAndFlagsBits = 0x4374706D65747441;
    v319._object = 0xEC000000746E756FLL;
    String.append(_:)(v319);
    v320 = v439;
    v440 = &type metadata for UInt64;
    *&v439 = v300;
    sub_10001DCF4(&v439, v438);
    v321 = swift_isUniquelyReferenced_nonNull_native();
    v430 = v441;
    sub_10002D5BC(v438, v320, *(&v320 + 1), v321);

    v441 = v430;
  }

LABEL_104:
  v322 = v422;
  (v422)(v404, v194);
  v322(v313, v194);
  v307 = v407;
LABEL_105:
  sub_10001A7A0(v413, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v409, &qword_10041EE08, &qword_1002B9788);
  v323 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneStart;
  swift_beginAccess();
  sub_100027A50(v309 + v323, v307);
  v324 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneEnd;
  swift_beginAccess();
  sub_100027A50(v309 + v324, v412);
  v423 = *(v309 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneAttemptCount);
  v325 = v385;
  sub_100027A50(v309 + v308, v385);
  v326 = v194;
  v327 = v427;
  if ((v427)(v325, 1, v194) != 1)
  {
    v328 = v384;
    v329 = v425;
    v425(v384, v325, v326);
    v330 = v383;
    sub_100027A50(v307, v383);
    if (v327(v330, 1, v326) == 1)
    {
      v331 = v422;
      (v422)(v328, v326);
      sub_10001A7A0(v330, &qword_10041EE08, &qword_1002B9788);
      v332 = v326;
      v333 = v331;
LABEL_120:
      sub_10001A7A0(v412, &qword_10041EE08, &qword_1002B9788);
      sub_10001A7A0(v307, &qword_10041EE08, &qword_1002B9788);
      v346 = objc_opt_self();
      v347 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v346 submitEventName:v347 event:isa];

      v333(v362, v332);
      return;
    }

    v329(v403, v330, v326);
    *&v439 = 1701736292;
    *(&v439 + 1) = 0xE400000000000000;
    v334._countAndFlagsBits = 0x7472617453;
    v334._object = 0xE500000000000000;
    String.append(_:)(v334);
    v335 = v439;
    Date.timeIntervalSince(_:)();
    v332 = v326;
    if (v336 < 0.0)
    {
      sub_10003DB54(v335, *(&v335 + 1), &v439);

      sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
      goto LABEL_116;
    }

    if ((*&v336 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v336 > -9.22337204e18)
      {
        if (v336 < 9.22337204e18)
        {
          v440 = &type metadata for Int64;
          *&v439 = v336;
          sub_10001DCF4(&v439, v438);
          v340 = swift_isUniquelyReferenced_nonNull_native();
          v429 = v441;
          sub_10002D5BC(v438, v335, *(&v335 + 1), v340);

          v441 = v429;
LABEL_116:
          v341 = v364;
          sub_100027A50(v412, v364);
          if ((v427)(v341, 1, v326) == 1)
          {
            sub_10001A7A0(v341, &qword_10041EE08, &qword_1002B9788);
            v333 = v422;
            v342 = v423;
            if (!v423)
            {
LABEL_119:
              v333(v403, v332);
              v333(v328, v332);
              v307 = v407;
              goto LABEL_120;
            }

LABEL_118:
            *&v439 = 1701736292;
            *(&v439 + 1) = 0xE400000000000000;
            v343._countAndFlagsBits = 0x4374706D65747441;
            v343._object = 0xEC000000746E756FLL;
            String.append(_:)(v343);
            v344 = v439;
            v440 = &type metadata for UInt64;
            *&v439 = v342;
            sub_10001DCF4(&v439, v438);
            v345 = swift_isUniquelyReferenced_nonNull_native();
            v429 = v441;
            sub_10002D5BC(v438, v344, *(&v344 + 1), v345);

            v441 = v429;
            goto LABEL_119;
          }

          v329(v363, v341, v326);
          *&v439 = 1701736292;
          *(&v439 + 1) = 0xE400000000000000;
          v352._countAndFlagsBits = 0x6E6F697461727544;
          v352._object = 0xE800000000000000;
          String.append(_:)(v352);
          v353 = v439;
          Date.timeIntervalSince(_:)();
          if (v354 < 0.0)
          {
            sub_10003DB54(v353, *(&v353 + 1), &v439);

            sub_10001A7A0(&v439, &qword_10041EE10, &unk_1002B9790);
            v333 = v422;
            v342 = v423;
            (v422)(v363, v332);
            goto LABEL_165;
          }

          v333 = v422;
          if ((*&v354 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v342 = v423;
            if (v354 > -9.22337204e18)
            {
              if (v354 < 9.22337204e18)
              {
                v440 = &type metadata for Int64;
                *&v439 = v354;
                sub_10001DCF4(&v439, v438);
                v361 = swift_isUniquelyReferenced_nonNull_native();
                v429 = v441;
                sub_10002D5BC(v438, v353, *(&v353 + 1), v361);

                v441 = v429;
                v333(v363, v332);
LABEL_165:
                if (!v342)
                {
                  goto LABEL_119;
                }

                goto LABEL_118;
              }

              goto LABEL_211;
            }

LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
            goto LABEL_213;
          }

          goto LABEL_208;
        }

        goto LABEL_190;
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    goto LABEL_187;
  }

LABEL_218:
  __break(1u);
}

uint64_t type metadata accessor for MBTargetDeviceTransferSummary()
{
  result = qword_10041EDF0;
  if (!qword_10041EDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027924()
{
  sub_1000279F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000279F8()
{
  if (!qword_10041EE00)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10041EE00);
    }
  }
}

uint64_t sub_100027A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100027BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100027C28(unint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  if (!(a1 >> 62))
  {
    v23 = swift_projectBox();
    (*(v3 + 16))(v16, v23, v2);
    v21 = FilePath.string.getter();
    (*(v3 + 8))(v16, v2);
    return v21;
  }

  if (a1 >> 62 == 1)
  {
    v17 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
    v18 = swift_projectBox();
    v19 = *(v17 + 48);
    v28 = *(v17 + 64);
    v20 = *(v3 + 16);
    v20(v16, v18 + v19, v2);
    v20(v14, v18 + v28, v2);
    v20(v7, v16, v2);
    FilePath.string.getter();
    FilePath.appending(_:)();
    FilePath.lexicallyNormalized()();
    v21 = FilePath.string.getter();
    v22 = *(v3 + 8);
    v22(v11, v2);
    v22(v14, v2);
    v22(v16, v2);
    return v21;
  }

  v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

  v26 = sub_100027C28(v25);

  return v26;
}

unint64_t sub_100027EFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      v17 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
      v18 = swift_projectBox();
      v36 = *v18;
      v37 = a2;
      v19 = *(v17 + 48);
      v20 = *(v17 + 64);
      v39 = a1;
      v21 = v7[2];
      v21(v16, v18 + v19, v6);
      v21(v14, v18 + v20, v6);
      v38 = swift_allocBox();
      v22 = *(v17 + 48);
      v23 = *(v17 + 64);
      v24 = v36;
      *v25 = v36;
      v21(&v25[v22], v16, v6);
      v21(v11, v14, v6);

      v26 = v24;
      FilePath.appending(_:)();
      v27 = v7[1];
      v27(v14, v6);
      v27(v16, v6);
      return v38 | 0x4000000000000000;
    }

    else
    {
      v32 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_10000672C((a3 & 0x3FFFFFFFFFFFFFFFLL) + 16, v40);
      v33 = swift_allocObject();
      sub_10000672C(v40, v33 + 16);

      v34 = sub_100027EFC(a1, a2, v32);

      sub_100004394(v40);
      *(v33 + 56) = v34;
      return v33 | 0x8000000000000000;
    }
  }

  else
  {
    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v29 = swift_projectBox();
    v30 = v7[2];
    v30(v16, v29, v6);
    v31 = swift_allocBox();
    v30(v14, v16, v6);

    FilePath.appending(_:)();
    (v7[1])(v16, v6);
    return v31;
  }
}

unint64_t sub_100028240(unint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v16 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
      v17 = swift_projectBox();
      v32 = *v17;
      v18 = *(v16 + 64);
      v19 = v3[2];
      v19(v10, v17 + *(v16 + 48), v2);
      v19(v7, v17 + v18, v2);
      v20 = v32;
      if (FilePath.length.getter())
      {
        v32 = swift_allocBox();
        v21 = *(v16 + 48);
        v22 = *(v16 + 64);
        *v23 = v20;
        v19(&v23[v21], v10, v2);
        v19(v15, v7, v2);
        FilePath.removingLastComponent()();
        v24 = v3[1];
        v24(v7, v2);
        v24(v10, v2);
        return v32 | 0x4000000000000000;
      }

      else
      {

        v30 = v3[1];
        v30(v7, v2);
        v30(v10, v2);
        return 0xF000000000000007;
      }
    }

    else
    {
      v28 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_10000672C((a1 & 0x3FFFFFFFFFFFFFFFLL) + 16, v33);

      v25 = sub_100028240(v28);

      if ((~v25 & 0xF000000000000007) != 0)
      {
        v29 = swift_allocObject();
        sub_100006844(v33, v29 + 16);
        *(v29 + 56) = v25;
        return v29 | 0x8000000000000000;
      }

      else
      {
        sub_100004394(v33);
      }
    }
  }

  else
  {
    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v26 = swift_projectBox();
    v27 = v3[2];
    v27(v15, v26, v2);
    v25 = swift_allocBox();
    v27(v13, v15, v2);
    FilePath.removingLastComponent()();
    (v3[1])(v15, v2);
  }

  return v25;
}

uint64_t sub_1000285C4(unint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v30 - v8;
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v10 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
      v11 = swift_projectBox();
      v12 = *v11;
      v13 = *(v10 + 48);
      v14 = *(v10 + 64);
      v15 = v3[2];
      v15(v9, v11 + v13, v2);
      v15(v7, v11 + v14, v2);
      v31 = 0;
      v32 = 0xE000000000000000;
      v16 = v12;
      _StringGuts.grow(_:)(20);

      v31 = 0x2068746150424D3CLL;
      v32 = 0xEB000000003A6466;
      v30[3] = [v16 fileDescriptor];
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      sub_10002890C();
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 62;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);

      v23 = v31;
      v24 = v3[1];
      v24(v7, v2);
      v24(v9, v2);
    }

    else
    {
      v28 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

      v23 = sub_1000285C4(v28);
    }
  }

  else
  {
    v25 = swift_projectBox();
    (v3[2])(v9, v25, v2);
    v31 = 0x3A68746150424D3CLL;
    v32 = 0xE800000000000000;
    v26._countAndFlagsBits = FilePath.string.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 62;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v23 = v31;
    (v3[1])(v9, v2);
  }

  return v23;
}

unint64_t sub_10002890C()
{
  result = qword_10041EE18;
  if (!qword_10041EE18)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE18);
  }

  return result;
}

uint64_t sub_100028964()
{
  sub_100004394((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000289A8(char a1)
{
  v4 = OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath;
  v5 = *(v1 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    _StringGuts.grow(_:)(23);
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001002BB3C0;
    v6._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v6);
    sub_10003F7B8(0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);
  }

  if (a1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
    sub_10001135C(v5);
    sub_10002E494(v8);
    result = sub_1000112FC(v8);
    if (v2)
    {
      return result;
    }

    v5 = *(v1 + v4);
  }

  *(v1 + v4) = 0xF000000000000007;
  return sub_1000112FC(v5);
}

void *sub_100028AC8(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v6 = *(a1 + OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata);
  result = sub_10002A444();
  if (!v3)
  {
    v9 = v8;
    v10 = result;

    v11 = *(v4 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
    if ((~v11 & 0xF000000000000007) != 0)
    {

      v12 = sub_100027EFC(v10, v9, v11);

      sub_1000112FC(v11);
      *a2 = sub_100005D30(v12) & 1;
    }

    else
    {

      sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100028BE4(char *a1)
{
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v4 = swift_allocBox();

  FilePath.init(_:)();
  v5 = *(v1 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    v6 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata];

    v7 = sub_10002A444();
    if (!v2)
    {
      v11 = v9;
      v12 = v10;
      v15 = sub_100027EFC(v7, v8, v5);

      v13 = sub_100027EFC(v11, v12, v5);

      sub_100005348(448, v13);
      if ([v6 compressionMethod])
      {
        sub_10002B0E0(a1, v4, v15);
      }

      else
      {
        sub_10002AB1C(a1, v4, v15);
      }
    }

    sub_1000112FC(v5);
  }

  else
  {
    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();
  }
}

_DWORD *sub_100028E80()
{
  sub_1000042B4(&qword_10041EE78, &qword_1002B98C0);
  v0 = swift_allocObject();
  type metadata accessor for MBUnfairLock();
  v1 = swift_allocObject();
  result = swift_slowAlloc();
  *(v1 + 16) = result;
  *result = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  off_10041EE20 = v0;
  return result;
}

_BYTE *sub_100028F00(unint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath;
  *&v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath] = 0xF000000000000007;
  v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot__requiresCrossVolumeCopy] = a2;
  v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot__checkFileSizesForCASMatch] = a3;
  sub_100005348(448, a1);
  if (v4)
  {

    sub_1000112FC(*&v3[v9]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_100006180(a1);
    v12 = *&v3[v9];
    *&v3[v9] = v10;
    sub_1000112FC(v12);
    v13 = sub_100027EFC(0xD000000000000010, 0x80000001002BC630, a1);
    *&v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot__assetProcessingRoot] = v13;

    sub_100005348(448, v13);

    v14 = sub_100027EFC(0xD000000000000015, 0x80000001002BC650, a1);
    sub_100005348(448, v14);
    v15 = sub_100027EFC(0xD00000000000001ELL, 0x80000001002BC670, a1);
    sub_100005348(448, v15);
    v16 = sub_100027EFC(0xD000000000000021, 0x80000001002BC690, a1);
    sub_100005348(448, v16);
    v17.receiver = v3;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, "init");
  }

  return v3;
}

id sub_10002918C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W4>, void *a5@<X8>)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_10002C438(a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    *a5 = v14;
    return v14;
  }

  else
  {
    result = sub_100029460(a2, a3);
    if (!v5)
    {
      v16 = result;
      v17 = objc_allocWithZone(type metadata accessor for MBRestoreDepot());

      v18 = sub_100028F00(v16, a4 & 1, 0);
      _StringGuts.grow(_:)(38);

      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23._countAndFlagsBits = v20;
      v23._object = v22;
      String.append(_:)(v23);

      v24._countAndFlagsBits = 0x6C6F7620726F6620;
      v24._object = 0xEC00000020656D75;
      String.append(_:)(v24);
      v25._countAndFlagsBits = a2;
      v25._object = a3;
      String.append(_:)(v25);
      sub_10003F2C0(0xD000000000000016, 0x80000001002BC5F0, 0x203D746F7065643DLL, 0xE800000000000000);

      v26 = v18;
      v27 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *a1;
      sub_10002D720(v26, a2, a3, isUniquelyReferenced_nonNull_native, &qword_10041EE70, &qword_1002B98B8);

      *a1 = v29;
      *a5 = v26;
    }
  }

  return result;
}

uint64_t sub_100029460(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [v2 restoreDepotRootsByVolume];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16) && (v8 = sub_10002C438(a1, a2), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v11 = *v10;
    v12 = v10[1];

    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v13 = swift_allocBox();
    FilePath.init(_:)();
  }

  else
  {

    _StringGuts.grow(_:)(78);
    v14._countAndFlagsBits = 0xD000000000000036;
    v14._object = 0x80000001002BC6F0;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._object = 0x80000001002BC730;
    v16._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v16);
    v17 = [v3 restoreDepotRootsByVolume];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = Dictionary.description.getter();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v13 = 0xE000000000000000;
    sub_10003F97C(4, 0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

    swift_willThrow();
  }

  return v13;
}

id sub_100029784()
{
  ObjectType = swift_getObjectType();
  if ((~*&v0[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath] & 0xF000000000000007) != 0)
  {
    v2 = v0;
    _StringGuts.grow(_:)(35);
    v5 = 0x203D746F7065643DLL;
    v6 = 0xE800000000000000;
    _print_unlocked<A, B>(_:_:)();
    v3._object = 0x80000001002BB5E0;
    v3._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v3);
    sub_10003F7B8(0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc", v5, v6);
}

uint64_t sub_1000299B0(void *a1)
{
  v1 = [a1 restoreDepotRootsByVolume];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_10041DEE8 != -1)
  {
    swift_once();
  }

  v3 = off_10041EE20;
  v4 = *(off_10041EE20 + 2);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  sub_100029AA4(v3 + 3, v2);
  swift_endAccess();
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_100029AA4(id *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v59 = v8;
  v60 = v4;
  v61 = a1;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (v10 << 10) | (16 * v11);
      v13 = (*(v2 + 56) + v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *a1;
      if (!*(*a1 + 2))
      {
        break;
      }

      v17 = (*(v2 + 48) + v12);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_10002C438(v18, v19);
      if ((v21 & 1) == 0)
      {

        goto LABEL_22;
      }

      v22 = v20;

      v23 = *(v16[7] + 8 * v22);
      v24 = sub_10002C438(v18, v19);
      v26 = v25;

      if (v26)
      {
        v27 = *v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v61;
        v62 = *v61;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10002DF90(&qword_10041EE70, &qword_1002B98B8);
          v29 = v62;
        }

        v30 = *(v29[6] + 16 * v24 + 8);

        sub_10003E0F8(v24, v29);
        *v61 = v29;
      }

      v31 = OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath;
      v32 = *&v23[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
      if ((~v32 & 0xF000000000000007) == 0)
      {
        v62 = 0;
        v63 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);
        _print_unlocked<A, B>(_:_:)();
        v33._countAndFlagsBits = 0xD000000000000015;
        v33._object = 0x80000001002BB3C0;
        String.append(_:)(v33);
        v34 = v62;
        v35 = v63;
        if (qword_10041DF00 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_10000685C(v36, qword_100421CD0);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v39 = 136315394;
          *(v39 + 4) = sub_10003FE34(0x203D746F7065643DLL, 0xE800000000000000, &v62);
          *(v39 + 12) = 2080;
          *(v39 + 14) = sub_10003FE34(v34, v35, &v62);
          _os_log_impl(&_mh_execute_header, v37, v38, "%s%s", v39, 0x16u);
          swift_arrayDestroy();
        }

LABEL_24:
        v9 = v10;
        goto LABEL_25;
      }

      v45 = v2;
      v46 = objc_allocWithZone(NSFileManager);

      v47 = [v46 init];
      sub_100027C28(v32);
      v48 = String._bridgeToObjectiveC()();

      v62 = 0;
      v49 = [v47 mb_moveToTmpDirThenRemoveItemAtPath:v48 error:&v62];

      if (!v49)
      {
        v56 = v62;
        v57 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v62 = 0;
        v63 = 0xE000000000000000;
        _StringGuts.grow(_:)(32);

        v62 = 0xD00000000000001ELL;
        v63 = 0x80000001002BC5D0;
        v58._countAndFlagsBits = sub_1000285C4(v32);
        String.append(_:)(v58);

        sub_10003F2D8(v57, v32, v62, v63, 0x203D746F7065643DLL, 0xE800000000000000);

        swift_willThrow();

        return sub_1000112FC(v32);
      }

      v50 = v62;
      sub_1000112FC(v32);
      v51 = *&v23[v31];
      *&v23[v31] = 0xF000000000000007;
      sub_1000112FC(v51);

      v9 = v10;
      v2 = v45;
LABEL_25:
      v4 = v60;
      a1 = v61;
      v8 = v59;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_22:
    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v40 = swift_allocBox();
    FilePath.init(_:)();
    v41 = [objc_allocWithZone(NSFileManager) init];
    sub_100027C28(v40);
    v42 = String._bridgeToObjectiveC()();

    v62 = 0;
    v43 = [v41 mb_moveToTmpDirThenRemoveItemAtPath:v42 error:&v62];

    if (!v43)
    {
      v53 = v62;
      v54 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v62 = 0;
      v63 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v62 = 0xD00000000000001ELL;
      v63 = 0x80000001002BC5D0;
      v55._countAndFlagsBits = sub_1000285C4(v40);
      String.append(_:)(v55);

      sub_10003F2D8(v54, v40, v62, v63, 0x203D746F7065643DLL, 0xE800000000000000);

      swift_willThrow();
    }

    v44 = v62;

    goto LABEL_24;
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }
}

void *sub_10002A444()
{
  v1 = [v0 assetSignature];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_allocWithZone(NSData);
    sub_10002E614(v3, v5);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [v6 initWithData:isa];

    sub_100009B84(v3, v5);
    v9 = sub_10002C008(v8);

    sub_100009B84(v3, v5);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    v10 = [v0 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._object = 0x80000001002BC750;
    v15._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v15);
    v9 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    [v9 errorWithCode:1 description:v16];

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_10002A660(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 domain];
  v5 = [v4 name];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1000042B4(&unk_10041E830, &qword_1002B9500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002B9640;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_10002E56C();
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v11 = v18;
  *(v9 + 96) = &type metadata for UInt64;
  *(v9 + 104) = &protocol witness table for UInt64;
  *(v9 + 64) = v10;
  *(v9 + 72) = v11;
  sub_10002E5C0();
  v12 = StringProtocol.appendingFormat<A>(_:_:)();
  v14 = v13;

  v15 = *(v2 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v15 & 0xF000000000000007) != 0)
  {

    v12 = sub_100027EFC(v12, v14, v15);
    sub_1000112FC(v15);
  }

  else
  {

    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();
  }

  return v12;
}

id sub_10002A85C(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    sub_100011314(0, &qword_10041E7E0, &off_1003B9A08);

    sub_100027C28(v3);
    sub_1000112FC(v3);
    _StringGuts.grow(_:)(18);

    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    return sub_10000A778();
  }

  else
  {
    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    return swift_willThrow();
  }
}

uint64_t sub_10002AB1C(char *a1, unint64_t a2, unint64_t a3)
{
  if ((*(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__requiresCrossVolumeCopy) & 1) == 0)
  {
    return sub_10002B814(a1, a2, a3);
  }

  result = sub_10002BD4C(a1, a3, a2);
  if (!v4)
  {
    if (result)
    {
      return sub_100005564(a2);
    }

    else
    {
      sub_100027C28(*(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__assetProcessingRoot));
      v9 = String._bridgeToObjectiveC()();

      v10 = MBCreateTemporaryFilePathIn(v9);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
      v11 = swift_allocBox();
      FilePath.init(_:)();
      v12 = objc_opt_self();
      sub_100027C28(a2);
      v13 = String._bridgeToObjectiveC()();

      sub_100027C28(v11);
      v14 = String._bridgeToObjectiveC()();

      v29 = 0;
      v15 = [v12 crossVolumeCopyFromSource:v13 toDestination:v14 shouldDeleteSource:0 error:&v29];

      if (v15)
      {
        v16 = v29;
        sub_10002B814(a1, v11, a3);
        sub_100005564(a2);
      }

      else
      {
        v17 = v29;
        v18 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v29 = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v19._countAndFlagsBits = 0xD000000000000015;
        v19._object = 0x80000001002BC7F0;
        String.append(_:)(v19);
        v20 = [a1 description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0x206D6F726620;
        v25._object = 0xE600000000000000;
        String.append(_:)(v25);
        v26._countAndFlagsBits = sub_1000285C4(a2);
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0xD000000000000019;
        v27._object = 0x80000001002BC810;
        String.append(_:)(v27);
        v28._countAndFlagsBits = sub_1000285C4(v11);
        String.append(_:)(v28);

        sub_10003F2D8(v18, a2, v29, v30, 0x203D746F7065643DLL, 0xE800000000000000);

        swift_willThrow();
      }
    }
  }

  return result;
}

void sub_10002B0E0(char *a1, unint64_t a2, unint64_t a3)
{
  v8 = sub_10002BD4C(a1, a3, a2);
  if (!v4)
  {
    if (v8)
    {
      sub_100005564(a2);
    }

    else
    {
      sub_100027C28(*(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__assetProcessingRoot));
      v9 = String._bridgeToObjectiveC()();

      v10 = MBCreateTemporaryFilePathIn(v9);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
      v11 = swift_allocBox();
      FilePath.init(_:)();
      v12 = dispatch_group_create();
      v13 = [objc_opt_self() decodingTaskWithEncodingMethod:1];
      if (v13)
      {
        v14 = v13;
        sub_100027C28(a2);
        v15 = String._bridgeToObjectiveC()();

        [v14 setSourcePath:v15];

        sub_100027C28(v11);
        v16 = String._bridgeToObjectiveC()();

        [v14 setDestinationPath:v16];

        [v14 setCompressionMethod:{objc_msgSend(*&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata], "compressionMethod")}];
        [v14 setProtectionClass:a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_protectionClass]];
        [v14 setGroup:v12];
        [v14 start];
        OS_dispatch_group.wait()();
        v17 = [v14 error];
        if (v17)
        {
          v18 = v17;
          v19 = objc_opt_self();
          v20 = _convertErrorToNSError(_:)();
          v21 = [v19 isError:v20 withCode:4];

          if (v21 && (v22 = sub_100005D30(a2), (v22 & 1) == 0))
          {
            sub_100027C28(a2);
            v26 = String._bridgeToObjectiveC()();

            v27 = String._bridgeToObjectiveC()();
            [v19 errorWithCode:302 path:v26 description:v27];
          }

          else
          {
            _StringGuts.grow(_:)(29);

            v23._countAndFlagsBits = sub_1000285C4(a2);
            String.append(_:)(v23);

            v24._countAndFlagsBits = 544175136;
            v24._object = 0xE400000000000000;
            String.append(_:)(v24);
            v25._countAndFlagsBits = sub_1000285C4(v11);
            String.append(_:)(v25);

            sub_10003F2D8(v18, a2, 0xD000000000000015, 0x80000001002BC9D0, 0x203D746F7065643DLL, 0xE800000000000000);
          }

          swift_willThrow();
        }

        else
        {
          sub_10002B814(a1, v11, a3);
          sub_100005564(a2);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_10002B814(char *a1, unint64_t a2, unint64_t a3)
{
  _StringGuts.grow(_:)(51);
  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x80000001002BC900;
  String.append(_:)(v7);
  v30 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_originalInode];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x206D6F72662029;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_1000285C4(a2);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6564206F746E6920;
  v11._object = 0xEF20746120746F70;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_1000285C4(a3);
  String.append(_:)(v12);

  sub_10003F2C0(0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

  result = sub_100004CD8(a3, a2);
  if (v3)
  {
    swift_getErrorValue();
    v14 = sub_100041E2C(v29);
    v15 = v14;
    if (v14 != 17 && v14 != 2)
    {
      goto LABEL_9;
    }

    if (sub_10002BD4C(a1, a3, a2))
    {
      _StringGuts.grow(_:)(31);

      v16 = [a1 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD000000000000015;
      v21._object = 0x80000001002BC970;
      String.append(_:)(v21);
      v22._countAndFlagsBits = sub_1000285C4(a3);
      String.append(_:)(v22);

      sub_10003F2C0(0x207465737341, 0xE600000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

      sub_100005564(a2);
    }

    if (v15 == 2 && (sub_100005D30(a2) & 1) == 0)
    {
      v26 = objc_opt_self();
      sub_100027C28(a2);
      v27 = String._bridgeToObjectiveC()();

      v28 = String._bridgeToObjectiveC()();
      [v26 errorWithCode:302 path:v27 description:v28];
    }

    else
    {
LABEL_9:
      _StringGuts.grow(_:)(38);

      v23._countAndFlagsBits = sub_1000285C4(a2);
      String.append(_:)(v23);

      v24._object = 0x80000001002BC920;
      v24._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v24);
      v25._countAndFlagsBits = sub_1000285C4(a3);
      String.append(_:)(v25);

      sub_10003F2D8(v3, a2, 0x742064656C696146, 0xEF2065766F6D206FLL, 0x203D746F7065643DLL, 0xE800000000000000);
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_10002BD4C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v8 = sub_100005D30(a2);
  if (!v4 && (v8 & 1) != 0 && *(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__checkFileSizesForCASMatch) == 1)
  {
    v9 = v8;

    sub_1000120FC(a2, v15);

    sub_1000120FC(a3, v17);
    if ([*(a1 + OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata) assetType] == 1)
    {
      v8 = v9;
      if (v16 != v18)
      {
        _StringGuts.grow(_:)(69);
        v11._countAndFlagsBits = 0x676E696D6F636E49;
        v11._object = 0xEF20746573736120;
        String.append(_:)(v11);
        v12._countAndFlagsBits = sub_1000285C4(a3);
        String.append(_:)(v12);

        v13._object = 0x80000001002BC8C0;
        v13._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v13);
        v14._countAndFlagsBits = sub_1000285C4(a2);
        String.append(_:)(v14);

        sub_10003FB68(1, a3, 0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

        swift_willThrow();
        v8 = v9;
      }
    }

    else
    {
      v8 = v9;
    }
  }

  return v8 & 1;
}

uint64_t MBAssetType.description.getter(uint64_t a1)
{
  v1 = MBStringForAssetType(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10002BF94()
{
  v1 = MBStringForAssetType(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10002C008(void *a1)
{
  v2 = [a1 mb_base64EncodedFileSystemPathString];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (String.count.getter() <= 2)
  {
    _StringGuts.grow(_:)(60);
    v8._countAndFlagsBits = 0xD00000000000001ALL;
    v8._object = 0x80000001002BC770;
    String.append(_:)(v8);
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    String.append(_:)(v9);

    v10._object = 0x80000001002BC790;
    v10._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x7463617261686320;
    v12._object = 0xEC00000029737265;
    String.append(_:)(v12);
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();

    [v13 errorWithCode:1 description:v14];

    return swift_willThrow();
  }

  else
  {

    sub_10002E668(2, v3, v5);

    static String._fromSubstring(_:)();

    sub_10002E724(2, v3, v5, v6);

    [v1 compressionMethod];
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v15 = String.init<A>(_:)();
    sub_10002E7C0();
    String.append<A>(contentsOf:)();

    return v15;
  }
}

unint64_t sub_10002C3B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100018BEC(&qword_10041F3F0);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10002C4F4(a1, v5);
}

unint64_t sub_10002C438(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10002C6A0(a1, a2, v6);
}

unint64_t sub_10002C4B0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002C758(a1, v4);
}

unint64_t sub_10002C4F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100018BEC(&qword_10041E9A0);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10002C6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10002C758(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100011314(0, &qword_10041EEA8, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10002C82C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000042B4(&qword_10041EEB8, &unk_1002B98E0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100018BEC(&qword_10041F3F0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10002CBF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000042B4(&qword_10041F3D0, &qword_1002B9B60);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002CE9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10001DCF4(v25, v37);
      }

      else
      {
        sub_10001DD04(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10001DCF4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10002D154(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1000042B4(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void sub_10002D3F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002C3B4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10002D9F4();
      goto LABEL_7;
    }

    sub_10002C82C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10002C3B4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_10002D8D0(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_10002D5BC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C438(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10002DDD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10002CE9C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10002C438(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100004394(v23);

    return sub_10001DCF4(a1, v23);
  }

  else
  {
    sub_10002D988(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10002D720(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10002C438(a2, a3);
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
      sub_10002D154(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10002C438(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_10002DF90(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_10002D8D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_10002D988(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001DCF4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

char *sub_10002D9F4()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000042B4(&qword_10041EEB8, &unk_1002B98E0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10002DC68()
{
  v1 = v0;
  sub_1000042B4(&qword_10041F3D0, &qword_1002B9B60);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}