uint64_t sub_10004933C()
{
  v55 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    *(v0 + 32) = v1;
    swift_errorRetain();
    v5 = swift_dynamicCast();
    v6 = *(v0 + 48);
    if (v5)
    {
      v7 = *(v0 + 104);
      sub_10004A0AC();
      static LoggedObject.logger.getter();

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 104);
      v13 = *(v0 + 80);
      v12 = *(v0 + 88);
      if (v10)
      {
        v52 = *(v0 + 104);
        v15 = *(v0 + 40);
        v14 = *(v0 + 48);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v54 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_100035120(v15, v14, &v54);
        _os_log_impl(&_mh_execute_header, v8, v9, "Task associated with identifier %{public}s was canceled", v16, 0xCu);
        sub_10000D330(v17);

        sub_10004A360(v1, 1);
        (*(v12 + 8))(v52, v13);
      }

      else
      {
        sub_10004A360(v1, 1);

        (*(v12 + 8))(v11, v13);
      }

      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      v44 = *(v0 + 32);
    }

    else
    {
      v30 = *(v0 + 96);
      v31 = *(v0 + 32);

      sub_10004A0AC();
      static LoggedObject.logger.getter();

      sub_10004A354(v1, 1);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      sub_10004A360(v1, 1);
      v34 = os_log_type_enabled(v32, v33);
      v36 = *(v0 + 88);
      v35 = *(v0 + 96);
      v37 = *(v0 + 80);
      if (v34)
      {
        v39 = *(v0 + 40);
        v38 = *(v0 + 48);
        v53 = *(v0 + 80);
        v40 = swift_slowAlloc();
        v51 = v35;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54 = v42;
        *v40 = 136446466;
        *(v40 + 4) = sub_100035120(v39, v38, &v54);
        *(v40 + 12) = 2112;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v43;
        *v41 = v43;
        _os_log_impl(&_mh_execute_header, v32, v33, "Execution of task associated with identifier %{public}s failed: %@", v40, 0x16u);
        sub_10000F32C(v41);

        sub_10000D330(v42);

        sub_10004A360(v1, 1);
        (*(v36 + 8))(v51, v53);
      }

      else
      {
        sub_10004A360(v1, 1);

        (*(v36 + 8))(v35, v37);
      }
    }
  }

  else
  {
    v18 = *(v0 + 112);
    v19 = *(v0 + 48);
    sub_10004A0AC();
    static LoggedObject.logger.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 112);
    v24 = *(v0 + 80);
    v25 = *(v0 + 88);
    if (v22)
    {
      v27 = *(v0 + 40);
      v26 = *(v0 + 48);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_100035120(v27, v26, &v54);
      _os_log_impl(&_mh_execute_header, v20, v21, "Finished execution of task associated with identifier %{public}s", v28, 0xCu);
      sub_10000D330(v29);
    }

    (*(v25 + 8))(v23, v24);
  }

  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v47 = *(v0 + 96);
  v48 = *(v0 + 72);

  v49 = *(v0 + 8);

  return v49();
}

void sub_10004983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  sub_10000D544(0, &qword_1000AB288, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.background(_:), v8);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  aBlock[4] = sub_10004A3A4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100049AF8;
  aBlock[3] = &unk_1000A2E88;
  v16 = _Block_copy(aBlock);

  LOBYTE(v5) = [v5 registerForTaskWithIdentifier:v13 usingQueue:v14 launchHandler:v16];
  _Block_release(v16);

  if ((v5 & 1) == 0)
  {
    sub_100029038();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }
}

uint64_t sub_100049A80(void *a1, void (*a2)(uint64_t *))
{
  v6[3] = sub_10000D544(0, &qword_1000ABA40, BGSystemTask_ptr);
  v6[4] = &off_1000A4000;
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_10000D330(v6);
}

void sub_100049AF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100049B60(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000D224(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithIdentifier:v7];

  v9 = a1[3];
  v10 = a1[4];
  sub_10000D224(a1, v9);
  v11 = *(v10 + 88);
  v12 = v8;
  [v12 setPriority:{v11(v9, v10)}];
  v13 = a1[3];
  v14 = a1[4];
  sub_10000D224(a1, v13);
  [v12 setRequiresNetworkConnectivity:{(*(v14 + 16))(v13, v14) & 1}];
  v15 = a1[3];
  v16 = a1[4];
  sub_10000D224(a1, v15);
  [v12 setShouldWakeDevice:{(*(v16 + 40))(v15, v16) & 1}];
  v17 = a1[3];
  v18 = a1[4];
  sub_10000D224(a1, v17);
  [v12 setRequiresExternalPower:{(*(v18 + 64))(v17, v18) & 1}];
  v19 = a1[3];
  v20 = a1[4];
  sub_10000D224(a1, v19);
  v21 = (*(v20 + 112))(v19, v20);
  sub_10001DF94(v21);
  v22 = a1[3];
  v23 = a1[4];
  sub_10000D224(a1, v22);
  v24 = COERCE_DOUBLE((*(v23 + 160))(v22, v23));
  if ((v25 & 1) == 0)
  {
    [v12 setScheduleAfter:v24];
  }

  v26 = a1[3];
  v27 = a1[4];
  sub_10000D224(a1, v26);
  v28 = COERCE_DOUBLE((*(v27 + 136))(v26, v27));
  if ((v29 & 1) == 0)
  {
    [v12 setTrySchedulingBefore:v28];
  }

  v30 = a1[3];
  v31 = a1[4];
  sub_10000D224(a1, v30);
  [v12 setPreventsDeviceSleep:{(*(v31 + 184))(v30, v31) & 1}];
  v32 = a1[3];
  v33 = a1[4];
  sub_10000D224(a1, v32);
  (*(v33 + 208))(v32, v33);
  [v12 setRandomInitialDelay:?];
  v34 = a1[3];
  v35 = a1[4];
  sub_10000D224(a1, v34);
  [v12 setRequiresBuddyComplete:{(*(v35 + 232))(v34, v35) & 1}];

  v38 = 0;
  if ([v2 submitTaskRequest:v12 error:&v38])
  {
    v36 = v38;
  }

  else
  {
    v37 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

BOOL sub_100049F9C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  if (v3)
  {
  }

  return v3 != 0;
}

__n128 sub_100049FF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004A00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10004A054(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10004A0AC()
{
  result = qword_1000ABA38;
  if (!qword_1000ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABA38);
  }

  return result;
}

unint64_t sub_10004A100()
{
  result = qword_1000AAE50;
  if (!qword_1000AAE50)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAE50);
  }

  return result;
}

uint64_t sub_10004A158()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A1A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A1F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004A238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000D130;

  return sub_10004909C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004A354(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10004A360(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10004A36C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A3AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004A3D8()
{
  result = qword_1000ABA48;
  if (!qword_1000ABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABA48);
  }

  return result;
}

uint64_t sub_10004A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  v49 = a7;
  v47 = a6;
  v48 = a5;
  v46 = a1;
  v13 = sub_10000CED0(&qword_1000ABCA8, &qword_100087268);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v45 - v19;
  v21 = sub_10000CED0(&unk_1000ABCB0, &qword_100087270);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v45 - v23;
  v25 = _s15DefaultDelegateC13ConfigurationVMa(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v45 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v45 - v29;
  v31 = type metadata accessor for DatabaseConfiguration();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v32 = type metadata accessor for URL();
  (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  v33 = type metadata accessor for DigestRecord.Encoding();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  v34 = v46;
  sub_10004A86C(v46, a2, v24, v20, a3, v48, v47 & 1, v49, v30, a8 & 1, v16, a9, a4);

  sub_10000D620(v16, &qword_1000ABCA8, &qword_100087268);
  sub_10000D620(v20, &qword_1000AADD8, &qword_1000855A8);
  sub_10000D620(v24, &unk_1000ABCB0, &qword_100087270);
  v35 = v45;
  sub_10004C8D4(v30, v45);
  v36 = _s15DefaultDelegateCMa(0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10000D620(a9, &qword_1000AB0C8, &qword_100085F18);
  v40 = type metadata accessor for Configuration.TargetCloudKitZone();
  (*(*(v40 - 8) + 8))(a4, v40);
  sub_10000D620(a2, &qword_1000AB0D0, &unk_100085F20);
  v41 = type metadata accessor for UUID();
  (*(*(v41 - 8) + 8))(v34, v41);
  sub_10004C938(v30);
  v42 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata;
  v43 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v43 - 8) + 56))(v39 + v42, 1, 1, v43);
  sub_10004C994(v35, v39 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration);
  return v39;
}

uint64_t sub_10004A86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v121 = a8;
  v122 = a7;
  v123 = a6;
  v128 = a5;
  v114 = a4;
  v118 = a3;
  v116 = a2;
  v117 = a1;
  v127 = a9;
  v13 = sub_10000CED0(&qword_1000ABCA8, &qword_100087268);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v120 = v106 - v15;
  v126 = type metadata accessor for DigestRecord.Encoding();
  v125 = *(v126 - 8);
  v16 = *(v125 + 64);
  __chkstk_darwin(v126);
  v124 = v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000CED0(&unk_1000ABCB0, &qword_100087270);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v129 = v106 - v20;
  v135 = type metadata accessor for DatabaseConfiguration();
  v137 = *(v135 - 8);
  v21 = *(v137 + 64);
  __chkstk_darwin(v135);
  v134 = (v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for UUID();
  v138 = *(v23 - 8);
  v139 = v23;
  v24 = *(v138 + 64);
  v25 = __chkstk_darwin(v23);
  v133 = v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v112 = v106 - v27;
  v28 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v113 = v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = v106 - v32;
  v111 = type metadata accessor for URL.DirectoryHint();
  v136 = *(v111 - 8);
  v34 = v136;
  v35 = *(v136 + 8);
  __chkstk_darwin(v111);
  v37 = v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for URL();
  v108 = *(v110 - 8);
  v38 = v108;
  v39 = *(v108 + 64);
  v40 = __chkstk_darwin(v110);
  v119 = v106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v107 = v106 - v43;
  v44 = __chkstk_darwin(v42);
  v131 = v106 - v45;
  v46 = __chkstk_darwin(v44);
  v132 = v106 - v47;
  v48 = __chkstk_darwin(v46);
  v109 = v106 - v49;
  __chkstk_darwin(v48);
  v130 = v106 - v50;
  v51 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = enum case for URL.DirectoryHint.isDirectory(_:);
  v53 = *(v34 + 13);
  v54 = v111;
  (v53)(v37, enum case for URL.DirectoryHint.isDirectory(_:), v111);
  v55 = *(v38 + 56);
  v56 = v110;
  v55(v33, 1, 1, v110);
  URL.init(filePath:directoryHint:relativeTo:)();
  v57 = v112;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v61 = v57;
  v62 = v108;
  (*(v138 + 8))(v61, v139);
  *&v142 = v58;
  *(&v142 + 1) = v60;
  v63 = v52;
  v64 = v37;
  v112 = v53;
  (v53)(v37, v63, v54);
  v106[1] = sub_100013D50();
  v65 = v109;
  URL.appending<A>(component:directoryHint:)();
  v66 = *(v136 + 1);
  v67 = v54;
  v136 = (v136 + 8);
  v66(v37, v54);

  v68 = *(v62 + 8);
  v69 = v113;
  v68(v65, v56);
  sub_100013358(v114, v69, &qword_1000AADD8, &qword_1000855A8);
  if ((*(v62 + 48))(v69, 1, v56) == 1)
  {
    sub_10000D620(v69, &qword_1000AADD8, &qword_1000855A8);
    *&v142 = 0xD000000000000010;
    *(&v142 + 1) = 0x8000000100089680;
    (v112)(v37, enum case for URL.DirectoryHint.inferFromPath(_:), v67);
    v70 = v130;
    URL.appending<A>(component:directoryHint:)();
    v66(v64, v67);
    v71 = *(v62 + 32);
    v72 = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v73 = v56;
  }

  else
  {
    v71 = *(v62 + 32);
    v72 = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74 = v107;
    v71(v107, v69, v56);
    sub_10004C190(v74, v131);
    v68(v74, v56);
    v73 = v56;
    v70 = v130;
  }

  v115 = a11;
  v75 = v131;
  v136 = v71;
  v131 = v72;
  v71(v132, v75, v73);
  sub_100013358(v116, &v140, &qword_1000AB0D0, &unk_100085F20);
  v76 = v135;
  v77 = v137;
  v78 = v129;
  if (v141)
  {
    sub_10001122C(&v140, &v142);
  }

  else
  {
    type metadata accessor for Configuration();
    v143 = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10000CF2C(&v142);
    static Configuration.defaultFeaturesDataSource.getter();
    v78 = v129;
    if (v141)
    {
      sub_10000D620(&v140, &qword_1000AB0D0, &unk_100085F20);
    }
  }

  v116 = a13;
  v114 = a12;
  (*(v138 + 16))(v133, v117, v139);
  sub_100013358(v118, v78, &unk_1000ABCB0, &qword_100087270);
  v79 = *(v77 + 48);
  if (v79(v78, 1, v76) == 1)
  {
    type metadata accessor for Configuration();
    v80 = v76;
    v81 = static Configuration.cloudKitContainer.getter();
    v82 = sub_10004C558(v81);
    v68(v70, v73);
    v83 = sub_10000CED0(&qword_1000AB8B8, &qword_100086D10);
    v84 = *(v83 + 48);
    v85 = v73;
    v86 = *(v83 + 64);
    v87 = v134;
    *v134 = v81;
    v88 = enum case for QueryScope.owned(_:);
    Scope = type metadata accessor for QueryScope();
    (*(*(Scope - 8) + 104))(v87 + v84, v88, Scope);
    *(v87 + v86) = v82;
    v90 = v129;
    v73 = v85;
    (*(v137 + 104))(v87, enum case for DatabaseConfiguration.unconfigured(_:), v80);
    v91 = v79(v90, 1, v80);
    v92 = v124;
    v93 = v120;
    v94 = v119;
    if (v91 != 1)
    {
      sub_10000D620(v90, &unk_1000ABCB0, &qword_100087270);
    }
  }

  else
  {
    v68(v70, v73);
    (*(v77 + 32))(v134, v78, v76);
    v92 = v124;
    v93 = v120;
    v94 = v119;
  }

  v136(v94, v132, v73);
  sub_100013358(v115, v93, &qword_1000ABCA8, &qword_100087268);
  v95 = v125;
  v96 = *(v125 + 48);
  v97 = v126;
  v98 = v73;
  if (v96(v93, 1, v126) == 1)
  {
    (*(v95 + 104))(v92, enum case for DigestRecord.Encoding.default(_:), v97);
    if (v96(v93, 1, v97) != 1)
    {
      sub_10000D620(v93, &qword_1000ABCA8, &qword_100087268);
    }
  }

  else
  {
    (*(v95 + 32))(v92, v93, v97);
  }

  if (a10)
  {
    v99 = 17;
  }

  else
  {
    v99 = v121;
  }

  if (v122)
  {
    v100 = 1;
  }

  else
  {
    v100 = v123;
  }

  v101 = _s15DefaultDelegateC13ConfigurationVMa(0);
  v102 = v127;
  sub_100013358(v114, v127 + v101[12], &qword_1000AB0C8, &qword_100085F18);
  v103 = v101[13];
  v104 = type metadata accessor for Configuration.TargetCloudKitZone();
  (*(*(v104 - 8) + 16))(v102 + v103, v116, v104);
  sub_10001122C(&v142, v102);
  (*(v138 + 32))(v102 + v101[5], v133, v139);
  (*(v137 + 32))(v102 + v101[6], v134, v135);
  v136((v102 + v101[7]), v94, v98);
  *(v102 + v101[8]) = v128;
  *(v102 + v101[9]) = v100;
  *(v102 + v101[10]) = v99;
  (*(v95 + 32))(v102 + v101[11], v92, v97);
}

uint64_t sub_10004B594()
{
  sub_10004C938(v0 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration);
  sub_10000D620(v0 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata, &qword_1000AB6D0, &qword_1000869F0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10004B61C()
{
  v0 = _s15DefaultDelegateC13ConfigurationVMa(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10004C13C(319, &unk_1000ABA88, _s15DefaultDelegateC14DigestMetadataVMa);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10004B750(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004B79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004B86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10004B924()
{
  type metadata accessor for DateInterval();
  if (v0 <= 0x3F)
  {
    sub_10004B9C8();
    if (v1 <= 0x3F)
    {
      sub_1000142D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004B9C8()
{
  if (!qword_1000ABB98)
  {
    type metadata accessor for EventCategory();
    sub_10004C88C(&qword_1000AB718, &type metadata accessor for EventCategory);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1000ABB98);
    }
  }
}

uint64_t sub_10004BA70(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for DatabaseConfiguration();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_15;
  }

  v13 = type metadata accessor for URL();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v14 = type metadata accessor for DigestRecord.Encoding();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v17 = type metadata accessor for Configuration.TargetCloudKitZone();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_10004BCD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for DatabaseConfiguration();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_13;
  }

  v13 = type metadata accessor for URL();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v14 = type metadata accessor for DigestRecord.Encoding();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v17 = type metadata accessor for Configuration.TargetCloudKitZone();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[13];

  return v18(v19, a2, a2, v17);
}

void sub_10004BF24()
{
  sub_10004C074();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DatabaseConfiguration();
      if (v2 <= 0x3F)
      {
        type metadata accessor for URL();
        if (v3 <= 0x3F)
        {
          sub_10004C0D8();
          if (v4 <= 0x3F)
          {
            type metadata accessor for QualityOfService(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for DigestRecord.Encoding();
              if (v6 <= 0x3F)
              {
                sub_10004C13C(319, &unk_1000ABC50, &type metadata accessor for Date);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Configuration.TargetCloudKitZone();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10004C074()
{
  result = qword_1000ABC38;
  if (!qword_1000ABC38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000ABC38);
  }

  return result;
}

void sub_10004C0D8()
{
  if (!qword_1000ABC40)
  {
    sub_100003988(&qword_1000ABC48, &qword_1000871F8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000ABC40);
    }
  }
}

void sub_10004C13C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v33 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v34 = &v32 - v13;
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = v8[2];
  v16(&v32 - v14, a1, v7);
  v17 = URL.hasDirectoryPath.getter();
  v35 = v8;
  v18 = v8[1];
  v18(v15, v7);
  if (v17)
  {
    v19 = v34;
    v16(v34, a1, v7);
    v38 = 0xD000000000000010;
    v39 = 0x8000000100089680;
    v20 = *(v3 + 104);
    v32 = a1;
    v21 = v33;
    v20(v6, enum case for URL.DirectoryHint.notDirectory(_:), v33);
    sub_100013D50();
    URL.appending<A>(path:directoryHint:)();
    v22 = v21;
    a1 = v32;
    (*(v3 + 8))(v6, v22);
    v18(v19, v7);
    (v35[5])(a1, v15, v7);
  }

  v23 = v36;
  v24 = a1;
  v16(v36, a1, v7);
  v25 = URL.pathExtension.getter();
  v27 = v26;
  v18(v23, v7);
  if (v25 == 0x766D682E6E6F736ALL && v27 == 0xE90000000000007ALL)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      v30 = v34;
      v16(v34, v24, v7);
      URL.appendingPathExtension(_:)();
      v18(v30, v7);
      (v35[5])(v24, v15, v7);
    }
  }

  return (v16)(v37, v24, v7);
}

id sub_10004C558(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CKOperationGroup) init];
  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  v20[0] = 47;
  v20[1] = 0xE100000000000000;
  v19[2] = v20;
  v5 = sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v19, 0xD000000000000037, 0x80000001000896A0, "digest.json.hmvz");
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v20[0] = v2;
    swift_getMetatypeMetadata();
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    [v4 setName:v16];

    result = [v4 defaultConfiguration];
    if (result)
    {
      v18 = result;
      [result setContainer:a1];

      return v4;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C724()
{
  type metadata accessor for EventDigestController();
  sub_10004C88C(&qword_1000ABCA0, type metadata accessor for EventDigestController);
  result = static LoggedObject.logCategory.getter();
  qword_1000AC490 = result;
  *algn_1000AC498 = v1;
  return result;
}

uint64_t sub_10004C798()
{
  _s15DefaultDelegateCMa(0);
  sub_10004C88C(&qword_1000AAFE8, _s15DefaultDelegateCMa);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_10004C824()
{
  if (qword_1000AAA58 != -1)
  {
    swift_once();
  }

  v0 = qword_1000AC490;

  return v0;
}

uint64_t sub_10004C88C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004C8D4(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C938(uint64_t a1)
{
  v2 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C994(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10004CA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10003E6D8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      sub_10000CED0(&unk_1000ABDA0, qword_1000872A0);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10003E6D8((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10004DBDC(&v9, &v2[4 * v6 + 4]);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10004CB28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10004CB9C()
{
  v2.receiver = v0;
  v2.super_class = _s8ListenerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004CCC0(uint64_t a1, void *a2, uint64_t a3)
{
  v109 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v111 = v5;
  v112 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v107 = &v101 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v101 - v14;
  __chkstk_darwin(v13);
  v17 = &v101 - v16;
  v108 = sub_10004DB14();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_33;
  }

  v18 = (a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features);
  v19 = *(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features + 32);
  sub_10000D224((a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features), *(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features + 24));
  if ((dispatch thunk of FeaturesDataSource.isInternalBuild.getter() & 1) == 0)
  {
    v20 = v18[4];
    sub_10000D224(v18, v18[3]);
    if ((dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter() & 1) == 0)
    {
      sub_10000E874();
      static LoggedObject.logger.getter();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring connection on this platform", v39, 2u);
      }

      (*(v112 + 8))(v10, v111);
      return 0;
    }
  }

  if (*(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_isCoreDataSetUp) != 1)
  {
    sub_10000E874();
    static LoggedObject.logger.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Ignoring connection when core data has not been set up", v36, 2u);
    }

    (*(v112 + 8))(v17, v111);
    return 0;
  }

  v21 = *(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_listener);
  os_unfair_lock_lock((v21 + 32));
  v22 = *(v21 + 16);
  os_unfair_lock_unlock((v21 + 32));
  if (v22)
  {
    v23 = v22 == a1;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    sub_10000E874();
    static LoggedObject.logger.getter();
    v24 = v109;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v114 = v28;
      *v27 = 136446210;
      v29 = [v24 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_100035120(v30, v32, &v114);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Ignoring connection for a different listener: %{public}s", v27, 0xCu);
      sub_10000D330(v28);
    }

    (*(v112 + 8))(v15, v111);
    return 0;
  }

  v41 = *(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_proxyConnectionFactory + 8);
  v42 = v109;
  v102 = (*(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_proxyConnectionFactory))(v109, v108, Strong, v18);
  v43 = objc_opt_self();
  v44 = [v43 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13HomeKitEvents18XPCClientInterface_];
  [v42 setRemoteObjectInterface:v44];

  v45 = [v43 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13HomeKitEvents18XPCServerInterface_];
  v46 = sub_10000CED0(&qword_1000ABD70, &qword_100087298);
  inited = swift_initStackObject();
  v105 = xmmword_100085F30;
  *(inited + 16) = xmmword_100085F30;
  v48 = sub_10000D544(0, &qword_1000ABD78, NSArray_ptr);
  *(inited + 32) = v48;
  v106 = sub_10000D544(0, &qword_1000ABD80, NSUUID_ptr);
  *(inited + 40) = v106;
  sub_10004CA18(inited);
  v49 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v49 initWithArray:isa];

  v114 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v114)
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_setDeallocating();

  v52 = Set._bridgeToObjectiveC()().super.isa;

  v104 = v45;
  [v45 setClasses:v52 forSelector:"hmvutilClearEventsWithHomes:deleteCloudZones:reply:" argumentIndex:0 ofReply:0];

  v103 = v46;
  v53 = swift_initStackObject();
  *(v53 + 16) = v105;
  v54 = v106;
  *(v53 + 32) = v48;
  *(v53 + 40) = v54;
  sub_10004CA18(v53);
  v55 = objc_allocWithZone(NSSet);
  v56 = Array._bridgeToObjectiveC()().super.isa;

  v57 = [v55 initWithArray:v56];

  v114 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v114)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_setDeallocating();

  v58 = Set._bridgeToObjectiveC()().super.isa;

  v59 = v104;
  [v104 setClasses:v58 forSelector:"clearEventsWithHomes:deleteCloudZones:reply:" argumentIndex:0 ofReply:0];

  v60 = swift_initStackObject();
  *(v60 + 16) = v105;
  v61 = v106;
  *(v60 + 32) = v48;
  *(v60 + 40) = v61;
  sub_10004CA18(v60);
  v62 = objc_allocWithZone(NSSet);
  v63 = Array._bridgeToObjectiveC()().super.isa;

  v64 = [v62 initWithArray:v63];

  v114 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v114)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_setDeallocating();

  v65 = Set._bridgeToObjectiveC()().super.isa;

  [v59 setClasses:v65 forSelector:"hmvutilClearLocalDatabaseWithHomes:reply:" argumentIndex:0 ofReply:0];

  v66 = swift_initStackObject();
  *(v66 + 16) = v105;
  v67 = sub_10000D544(0, &qword_1000ABD88, NSSet_ptr);
  v68 = v106;
  *(v66 + 32) = v67;
  *(v66 + 40) = v68;
  sub_10004CA18(v66);
  v69 = objc_allocWithZone(NSSet);
  v70 = Array._bridgeToObjectiveC()().super.isa;

  v71 = [v69 initWithArray:v70];

  v114 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  v72 = v102;
  if (!v114)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_setDeallocating();

  v73 = Set._bridgeToObjectiveC()().super.isa;

  v74 = v104;
  [v104 setClasses:v73 forSelector:"clearEnergyKitDataWithPrivateHomeIdentifiers:sharedHomeIdentifiers:deletePrivateCloudZones:reply:" argumentIndex:0 ofReply:0];

  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_100085C80;
  v76 = sub_10000D544(0, &qword_1000ABD90, NSDictionary_ptr);
  v77 = v106;
  *(v75 + 32) = v76;
  *(v75 + 40) = v77;
  *(v75 + 48) = sub_10000D544(0, &qword_1000ABD98, NSError_ptr);
  sub_10004CA18(v75);
  v78 = objc_allocWithZone(NSSet);
  v79 = Array._bridgeToObjectiveC()().super.isa;

  v80 = [v78 initWithArray:v79];

  v114 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v114)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  swift_setDeallocating();

  v81 = Set._bridgeToObjectiveC()().super.isa;

  [v74 setClasses:v81 forSelector:"clearEnergyKitDataWithPrivateHomeIdentifiers:sharedHomeIdentifiers:deletePrivateCloudZones:reply:" argumentIndex:0 ofReply:1];

  v82 = v74;
  v83 = v109;
  [v109 setExportedInterface:v82];
  v117 = swift_getObjectType();
  v114 = v72;
  swift_unknownObjectRetain();
  v84 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000D330(&v114);
  [v83 setExportedObject:v84];
  swift_unknownObjectRelease();
  v85 = swift_allocObject();
  v86 = v108;
  *(v85 + 24) = v108;
  swift_unknownObjectWeakInit();
  v118 = sub_10004DBB4;
  v119 = v85;
  v114 = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_10004CB28;
  v117 = &unk_1000A2FC0;
  v87 = _Block_copy(&v114);

  [v83 setInterruptionHandler:v87];
  _Block_release(v87);

  v88 = swift_allocObject();
  *(v88 + 24) = v86;
  swift_unknownObjectWeakInit();
  v118 = sub_10004DBD4;
  v119 = v88;
  v114 = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_10004CB28;
  v117 = &unk_1000A2FE8;
  v89 = _Block_copy(&v114);

  [v83 setInvalidationHandler:v89];
  _Block_release(v89);

  [v83 activate];
  sub_10000E874();
  v90 = v107;
  static LoggedObject.logger.getter();
  v91 = v83;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v114 = v95;
    *v94 = 136446210;
    v96 = [v91 description];
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = sub_100035120(v97, v99, &v114);

    *(v94 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v92, v93, "Accepted new connection: %{public}s", v94, 0xCu);
    sub_10000D330(v95);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v112 + 8))(v90, v111);
  return 1;
}

unint64_t sub_10004DB14()
{
  result = qword_1000ABD58;
  if (!qword_1000ABD58)
  {
    sub_10000D544(255, &qword_1000ABD60, NSXPCConnection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABD58);
  }

  return result;
}

uint64_t sub_10004DB7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004DBBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10004DBDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_10004DC1C@<D0>(_OWORD *a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10004DCAC(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = sub_10000D224(a1, a1[3]);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v2);
    sub_10000D330(a1);
  }

  else
  {
    v9 = 0;
  }

  [v1 setExportedObject:v9];
  return swift_unknownObjectRelease();
}

uint64_t sub_10004DDE0()
{
  v1 = [objc_allocWithZone(HMFProcessInfo) initWithXPCConnection:v0];
  v2 = [v1 signingIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10004DE6C(uint64_t a1)
{
  result = sub_10004DE94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004DE94()
{
  result = qword_1000ABDB0;
  if (!qword_1000ABDB0)
  {
    sub_10004DEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABDB0);
  }

  return result;
}

unint64_t sub_10004DEEC()
{
  result = qword_1000ABD60;
  if (!qword_1000ABD60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ABD60);
  }

  return result;
}

uint64_t sub_10004DF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v26 - v11;
  result = __chkstk_darwin(v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_10002F2E4(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100013358(a3, v24 - v10, &qword_1000AAD30, &qword_100085540);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D620(v11, &qword_1000AAD30, &qword_100085540);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);

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

  sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);
  sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10004E410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100013358(a3, v24 - v10, &qword_1000AAD30, &qword_100085540);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D620(v11, &qword_1000AAD30, &qword_100085540);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);

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

  sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10004E6BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_weakInit();
  sub_10000D2CC(a1, (v4 + 5));
  v4[2] = a2;
  v4[3] = a3;
  swift_weakAssign();
  v9 = *(a4 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  if (v9)
  {
    v10 = *(a4 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties + 8);
    swift_unknownObjectRetain();
    sub_10005F608(v9);
    v11 = v9;
    v12 = static Constants.maxCloudKitRecordsPerOperation.getter();
    v13 = type metadata accessor for CoreDataDatabase();
    v14 = swift_allocObject();
    v15 = [v11 newBackgroundContext];

    *(v14 + 16) = v15;
    *(v14 + 24) = v12;
    *(v14 + 32) = 0;
    v18 = v13;
    v19 = &off_1000A42B8;
    swift_unknownObjectRelease();

    *&v17 = v14;
    sub_10000D330(a1);
    sub_1000111BC(&v17, (v4 + 10));
    v4[15] = v10;

    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E840()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  swift_weakDestroy();
  sub_10000D330(v0 + 5);
  sub_10000D330(v0 + 10);
  v2 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_10004E8BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v41 = &v38 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v42 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = a1;
    *&v45[0] = v21;
    v22 = a2;
    v23 = v21;
    *v20 = 136315394;

    sub_10000CED0(&unk_1000ABED0, &qword_1000874F8);
    v24 = String.init<A>(describing:)();
    v26 = sub_100035120(v24, v25, v45);
    v39 = v12;
    v27 = v26;

    *(v20 + 4) = v27;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v22 & 1;
    _os_log_impl(&_mh_execute_header, v17, v42, "calling clearEvents(%s, %{BOOL}d)", v20, 0x12u);
    sub_10000D330(v23);

    a4 = v40;

    (*(v13 + 8))(v16, v39);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    v22 = a2;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v43;
  *(v28 + 24) = a4;

  v29 = sub_10004ED44(1, sub_10005D844, v28);

  if (v29)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v31 = result;
      v32 = v5;
      v33 = type metadata accessor for TaskPriority();
      v34 = *(*(v33 - 8) + 56);
      v35 = v41;
      v34(v41, 1, 1, v33);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = v31;
      *(v36 + 40) = 0;
      sub_100080ECC(0, 0, v35, &unk_100087580, v36);

      v34(v35, 1, 1, v33);
      sub_10000D2CC(v32 + 80, v45);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = a1;
      *(v37 + 40) = v22 & 1;
      sub_1000111BC(v45, v37 + 48);
      *(v37 + 88) = v43;
      *(v37 + 96) = a4;

      sub_100080ECC(0, 0, v35, &unk_100087590, v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10004ED44(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v80 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v81 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v82 = a1;
  v88 = a2;
  v89 = a3;
  v90 = v11;
  v86 = v20;
  v87 = v23;
  if (a1)
  {
    if (a1 == 1)
    {
      v24 = "ricted to internal devices";
      v25 = 0xD000000000000026;
    }

    else
    {
      v24 = " has no coordinator";
      v25 = 0xD000000000000028;
    }
  }

  else
  {
    v25 = 0xD000000000000025;
    v24 = "e.home.hindsight.write";
  }

  v80 = "e.home.hindsight.write";
  v83 = &v80 - v21;
  v84 = v22;
  v26 = v24 | 0x8000000000000000;
  *&v94[0] = v25;
  *(&v94[0] + 1) = v24 | 0x8000000000000000;
  *&v92 = 46;
  *(&v92 + 1) = 0xE100000000000000;
  sub_100013D50();
  v27 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v27)
  {
    v28 = &v27[2 * *v27];
    v29 = v28[1];
    v85 = *v28;

    v30 = v4[2];
    v31 = v4[3];
    ObjectType = swift_getObjectType();
    v33 = *(v31 + 32);
    swift_unknownObjectRetain();
    v33(&v92, v25, v26, ObjectType, v31);
    swift_unknownObjectRelease();

    if (v93)
    {
      sub_10004DBDC(&v92, v94);
      sub_10000CFA0(v94, &v92);
      sub_10005CF58();
      if (swift_dynamicCast())
      {
        v34 = v91[0];
        if ([v91[0] BOOLValue])
        {
          if (v82 && v82 != 1)
          {
          }

          else
          {
            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v68 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v69 = v4[9];
          sub_10000D224(v4 + 5, v4[8]);
          if (dispatch thunk of FeaturesDataSource.isInternalBuild.getter())
          {
LABEL_29:
            sub_10000D330(v94);

            return 1;
          }

          type metadata accessor for XPCServer();
          sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
          v71 = v81;
          static LoggedObject.logger.getter();

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v92 = v75;
            *v74 = 136446210;
            v76 = sub_100035120(v85, v29, &v92);

            *(v74 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v72, v73, "Denying %{public}s privilege because the device does not have an internal build", v74, 0xCu);
            sub_10000D330(v75);
          }

          else
          {
          }

          (*(v87 + 8))(v71, v86);
          v55 = v88;
          v54 = v89;
          v65 = 0x8000000100089930;
          sub_10005CCD4();
          v56 = swift_allocError();
          v67 = 0xD00000000000002ALL;
        }

        else
        {
          type metadata accessor for XPCServer();
          sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
          v58 = v83;
          static LoggedObject.logger.getter();

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *&v92 = v62;
            *v61 = 136446210;
            v63 = sub_100035120(v85, v29, &v92);

            *(v61 + 4) = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "Denying %{public}s privilege because the entitlement was NO", v61, 0xCu);
            sub_10000D330(v62);
          }

          else
          {
          }

          (*(v87 + 8))(v58, v86);
          v55 = v88;
          v54 = v89;
          v65 = 0x8000000100089910;
          sub_10005CCD4();
          v56 = swift_allocError();
          v67 = 0xD000000000000017;
        }

        *v66 = v67;
        *(v66 + 8) = v65;
        *(v66 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        type metadata accessor for XPCServer();
        sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
        v40 = v84;
        static LoggedObject.logger.getter();
        sub_10000CFA0(v94, &v92);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v91[0] = swift_slowAlloc();
          *v43 = 136446466;
          v44 = sub_100035120(v85, v29, v91);

          *(v43 + 4) = v44;
          *(v43 + 12) = 2080;
          v45 = v93;
          v46 = sub_10000D224(&v92, v93);
          v47 = *(*(v45 - 8) + 64);
          __chkstk_darwin(v46);
          (*(v49 + 16))(&v80 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
          v50 = String.init<A>(describing:)();
          v52 = v51;
          sub_10000D330(&v92);
          v53 = sub_100035120(v50, v52, v91);

          *(v43 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v41, v42, "Denying %{public}s privilege because the entitlement wasn't a number: %s", v43, 0x16u);
          swift_arrayDestroy();

          (*(v87 + 8))(v40, v86);
        }

        else
        {

          (*(v87 + 8))(v40, v86);
          sub_10000D330(&v92);
        }

        v55 = v88;
        v54 = v89;
        sub_10005CCD4();
        v56 = swift_allocError();
        *v64 = 0xD000000000000016;
        *(v64 + 8) = 0x80000001000898F0;
        *(v64 + 16) = 1;
        swift_willThrow();
      }

      sub_10000D330(v94);
    }

    else
    {
      sub_10000D620(&v92, &qword_1000ABEB8, &qword_1000873A0);
      type metadata accessor for XPCServer();
      sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
      static LoggedObject.logger.getter();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v94[0] = v38;
        *v37 = 136446210;
        v39 = sub_100035120(v85, v29, v94);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "Denying %{public}s privilege because the connection has no entitlement", v37, 0xCu);
        sub_10000D330(v38);
      }

      else
      {
      }

      (*(v87 + 8))(v16, v86);
      v55 = v88;
      v54 = v89;
      sub_10005CCD4();
      v56 = swift_allocError();
      *v57 = 0xD000000000000013;
      *(v57 + 8) = 0x80000001000898D0;
      *(v57 + 16) = 1;
      swift_willThrow();
    }

    v77 = type metadata accessor for TaskPriority();
    v78 = v90;
    (*(*(v77 - 8) + 56))(v90, 1, 1, v77);
    v79 = swift_allocObject();
    v79[2] = 0;
    v79[3] = 0;
    v79[4] = v55;
    v79[5] = v54;
    v79[6] = v56;

    sub_100080ECC(0, 0, v78, &unk_1000873B0, v79);

    return 0;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10004F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10004FA28;

  return sub_10001C164(a4, a5, a6);
}

uint64_t sub_10004FA28()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10004FBA4;
  }

  else
  {
    v3 = sub_10004FB3C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004FB3C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004FBA4()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

void sub_10004FC64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10004FCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v16;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_10004FDA0;

  return (sub_100063B14)(a4, a5, a6, a7);
}

uint64_t sub_10004FDA0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10005F794;
  }

  else
  {
    v3 = sub_10005F7E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a3;
  v62 = a2;
  v59 = a1;
  v9 = type metadata accessor for UUID();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v60 = v11;
  v67 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Date();
  v61 = *(v63 - 8);
  v12 = *(v61 + 64);
  __chkstk_darwin(v63);
  v58 = v13;
  v66 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v53 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v23, v24, "calling createFakeEvents(%ld events)", v25, 0xCu);
  }

  (*(v19 + 8))(v22, v18);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;

  v27 = sub_10004ED44(1, sub_10005F7E8, v26);

  if (v27)
  {
    v56 = a4;
    v57 = a5;
    result = swift_weakLoadStrong();
    if (result)
    {
      v29 = result;
      v30 = type metadata accessor for TaskPriority();
      v31 = *(*(v30 - 8) + 56);
      v31(v17, 1, 1, v30);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v29;
      *(v32 + 40) = 1;
      v55 = v17;
      sub_100080ECC(0, 0, v17, &unk_100087550, v32);

      v33 = v6[2];
      v34 = v6[3];
      ObjectType = swift_getObjectType();
      v36 = *(v34 + 160);
      swift_unknownObjectRetain();
      v37 = v36(ObjectType, v34);
      v39 = v38;
      swift_unknownObjectRelease();
      if (v39)
      {
        v40 = v37;
      }

      else
      {
        v40 = 0x436E776F6E6B6E75;
      }

      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0xED0000746E65696CLL;
      }

      type metadata accessor for EventUploadRequestLogEvent();
      sub_10005F7F0(v40, v41, v68, 1);

      v54 = v6[15];
      v31(v17, 1, 1, v30);
      v42 = v61;
      v43 = v63;
      (*(v61 + 16))(v66, v59, v63);
      v45 = v64;
      v44 = v65;
      (*(v64 + 16))(v67, v62, v65);
      v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v47 = (v58 + *(v45 + 80) + v46) & ~*(v45 + 80);
      v48 = (v60 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      (*(v42 + 32))(v50 + v46, v66, v43);
      (*(v45 + 32))(v50 + v47, v67, v44);
      *(v50 + v48) = v68;
      *(v50 + v49) = v54;
      v51 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
      v52 = v57;
      *v51 = v56;
      v51[1] = v52;

      sub_100080ECC(0, 0, v55, &unk_100087560, v50);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10005055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v16;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_10004FDA0;

  return sub_100047450(a4, a5, a6, a7);
}

uint64_t sub_10005082C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v11 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v48 = &v42[-v13];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v49 = a3;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v47 = a5;
    v23 = v22;
    v45 = swift_slowAlloc();
    *&v52[0] = v45;
    *v23 = 136315650;
    type metadata accessor for UUID();
    v46 = v14;
    sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID);
    v44 = v15;
    v24 = Set.description.getter();
    v43 = v20;
    v26 = a1;
    v27 = sub_100035120(v24, v25, v52);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = Set.description.getter();
    v30 = sub_100035120(v28, v29, v52);

    *(v23 + 14) = v30;
    a1 = v26;
    LOBYTE(v26) = v49;
    *(v23 + 22) = 1024;
    *(v23 + 24) = v26 & 1;
    _os_log_impl(&_mh_execute_header, v19, v43, "calling clearEnergyKitData(%s, %s, %{BOOL}d)", v23, 0x1Cu);
    swift_arrayDestroy();

    a5 = v47;

    (*(v44 + 8))(v18, v46);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = a2;
  v31[4] = v50;
  v31[5] = a5;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10005ECE0;
  *(v32 + 24) = v31;

  v33 = sub_10004ED44(1, sub_10005D844, v32);

  if ((v33 & 1) == 0)
  {
  }

  v34 = a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = result;
    v37 = type metadata accessor for TaskPriority();
    v38 = *(*(v37 - 8) + 56);
    v39 = v48;
    v38(v48, 1, 1, v37);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v36;
    *(v40 + 40) = 0;
    sub_100080ECC(0, 0, v39, &unk_100087530, v40);

    v38(v39, 1, 1, v37);
    sub_10000D2CC(v6 + 40, v52);
    sub_10000D2CC(v6 + 80, v51);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    sub_1000111BC(v52, v41 + 32);
    *(v41 + 72) = v34;
    *(v41 + 80) = a2;
    *(v41 + 88) = v49 & 1;
    sub_1000111BC(v51, v41 + 96);
    *(v41 + 136) = v50;
    *(v41 + 144) = a5;

    sub_100080ECC(0, 0, v39, &unk_100087540, v41);
  }

  __break(1u);
  return result;
}

uint64_t sub_100050DB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v123 = type metadata accessor for UUID();
  v10 = *(v123 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v123);
  v115 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v111 = v109 - v15;
  v16 = __chkstk_darwin(v14);
  v116 = v109 - v17;
  __chkstk_darwin(v16);
  v113 = v109 - v18;
  v125 = &_swiftEmptyDictionarySingleton;
  v19 = *(a2 + 16);
  v117 = a3;
  v20 = *(a3 + 16);
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_63;
  }

  v109[1] = a5;
  v110 = a4;
  sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  Dictionary.reserveCapacity(_:)(v21);
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;
  v122 = v10 + 16;
  v119 = (v10 + 8);
  v120 = v10 + 32;

  v27 = 0;
  v121 = a1;
  v118 = v10;
  v28 = v116;
  v112 = a2;
  while (v25)
  {
    v31 = a1;
LABEL_13:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = *(a2 + 48);
    v35 = *(v10 + 72);
    v36 = v113;
    v37 = v123;
    v114 = *(v10 + 16);
    v114(v113, v34 + v35 * (v33 | (v27 << 6)), v123);
    (*(v10 + 32))(v28, v36, v37);
    a1 = v31;
    if (v31)
    {
      swift_errorRetain();
      v38 = v125;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v38;
      v41 = sub_10007B6C4(v28);
      v42 = v38[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_59;
      }

      v45 = v40;
      if (v38[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v124;
          if (v40)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_10007F178();
          v48 = v124;
          if (v45)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_10007C614(v44, isUniquelyReferenced_nonNull_native);
        v46 = sub_10007B6C4(v116);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_64;
        }

        v41 = v46;
        v48 = v124;
        if (v45)
        {
LABEL_5:
          v29 = v48[7];
          v30 = *(v29 + 8 * v41);
          a1 = v121;
          *(v29 + 8 * v41) = v121;

          v28 = v116;
          (*v119)(v116, v123);
          goto LABEL_6;
        }
      }

      v48[(v41 >> 6) + 8] |= 1 << v41;
      v57 = v48[6] + v41 * v35;
      v58 = v116;
      v59 = v123;
      v114(v57, v116, v123);
      a1 = v121;
      *(v48[7] + 8 * v41) = v121;
      v28 = v58;
      (*v119)(v58, v59);
      v60 = v48[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_61;
      }

      v48[2] = v62;
LABEL_6:
      v125 = v48;
      v10 = v118;
      a2 = v112;
    }

    else
    {
      v49 = v125;
      v50 = sub_10007B6C4(v28);
      if (v51)
      {
        v52 = v50;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v49;
        if (!v53)
        {
          sub_10007F178();
          v49 = v124;
        }

        v54 = *(v49 + 48) + v52 * v35;
        v55 = *v119;
        (*v119)(v54, v123);
        v56 = *(*(v49 + 56) + 8 * v52);

        sub_10005A280(v52, v49);
        v28 = v116;
        v55(v116, v123);
        v125 = v49;
        a2 = v112;
      }

      else
      {
        (*v119)(v28, v123);
        a2 = v112;
      }
    }
  }

  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v32 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v32);
    ++v27;
    if (v25)
    {
      v31 = a1;
      v27 = v32;
      goto LABEL_13;
    }
  }

  v63 = v117 + 56;
  v64 = 1 << *(v117 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v117 + 56);
  v67 = (v64 + 63) >> 6;

  v68 = 0;
LABEL_33:
  v69 = v115;
  while (v66)
  {
LABEL_39:
    v71 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v72 = v118;
    v73 = *(v118 + 72);
    v74 = *(v118 + 16);
    v75 = v111;
    v76 = v123;
    v74(v111, *(v117 + 48) + v73 * (v71 | (v68 << 6)), v123);
    (*(v72 + 32))(v69, v75, v76);
    if (v121)
    {
      swift_errorRetain();
      v77 = v125;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v69;
      v80 = v78;
      v124 = v77;
      v81 = sub_10007B6C4(v79);
      v83 = v77[2];
      v84 = (v82 & 1) == 0;
      v61 = __OFADD__(v83, v84);
      v85 = v83 + v84;
      if (v61)
      {
        goto LABEL_60;
      }

      v86 = v82;
      if (v77[3] >= v85)
      {
        if ((v80 & 1) == 0)
        {
          v100 = v81;
          sub_10007F178();
          v81 = v100;
        }

        v69 = v115;
        v88 = v124;
        if ((v86 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_10007C614(v85, v80);
        v69 = v115;
        v81 = sub_10007B6C4(v115);
        if ((v86 & 1) != (v87 & 1))
        {
          goto LABEL_64;
        }

        v88 = v124;
        if ((v86 & 1) == 0)
        {
LABEL_54:
          v88[(v81 >> 6) + 8] |= 1 << v81;
          v101 = v81;
          v102 = v88[6] + v81 * v73;
          v103 = v69;
          v104 = v69;
          v105 = v123;
          v74(v102, v103, v123);
          *(v88[7] + 8 * v101) = v121;
          (*v119)(v104, v105);
          v106 = v88[2];
          v61 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v61)
          {
            goto LABEL_62;
          }

          v88[2] = v107;
          v125 = v88;
          goto LABEL_33;
        }
      }

      v98 = v88[7];
      v99 = *(v98 + 8 * v81);
      *(v98 + 8 * v81) = v121;

      (*v119)(v69, v123);
      v125 = v88;
    }

    else
    {
      v89 = v125;
      v90 = sub_10007B6C4(v69);
      if (v91)
      {
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v89;
        if (!v93)
        {
          sub_10007F178();
          v89 = v124;
        }

        v94 = *v119;
        v95 = v123;
        (*v119)(*(v89 + 48) + v92 * v73, v123);
        v96 = *(*(v89 + 56) + 8 * v92);

        sub_10005A280(v92, v89);
        v97 = v115;
        v94(v115, v95);
        v69 = v97;
        v125 = v89;
      }

      else
      {
        (*v119)(v69, v123);
      }
    }
  }

  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v67)
    {

      v110(v125);
    }

    v66 = *(v63 + 8 * v70);
    ++v68;
    if (v66)
    {
      v68 = v70;
      goto LABEL_39;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = v14;
  *(v8 + 64) = v15;
  *(v8 + 120) = a7;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10005167C, 0, 0);
}

uint64_t sub_10005167C()
{
  v1 = *(v0 + 24);
  v2 = v1[4];
  sub_10000D224(v1, v1[3]);
  if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 120);
    v5 = sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    v7 = *(v0 + 32);
    *(v6 + 16) = v4;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = v7;
    *(v6 + 56) = v3;
    v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_100051BC8;
    v10 = &unk_100087548;
    v11 = v0 + 16;
    v12 = v5;
    v13 = v5;
    v14 = 0;
    v15 = 0;
    v16 = v6;
    v17 = v5;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v11, v12, v13, v14, v15, v10, v16, v17);
  }

  v19 = *(v0 + 32);
  v18 = *(v0 + 40);
  sub_10005CCD4();
  v20 = swift_allocError();
  *v21 = 0xD000000000000018;
  *(v21 + 8) = 0x80000001000899C0;
  *(v21 + 16) = 0;
  v67 = v20;
  v11 = swift_willThrow();
  if (__OFADD__(*(v19 + 16), *(v18 + 16)))
  {
LABEL_34:
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)(v11, v12, v13, v14, v15, v10, v16, v17);
  }

  v22 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID);
  v26 = Dictionary.init(minimumCapacity:)();

  v11 = sub_10004DF38(v27, v25);
  v28 = 0;
  v29 = v11 + 56;
  v64 = v23;
  v65 = v11;
  v30 = -1;
  v31 = -1 << *(v11 + 32);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & *(v11 + 56);
  v33 = (63 - v31) >> 6;
  v63 = (v23 + 8);
  v68 = v0;
  while (v32)
  {
    v36 = v28;
LABEL_16:
    v38 = *(v0 + 88);
    v37 = *(v0 + 96);
    v39 = *(v0 + 72);
    v40 = *(v64 + 72);
    v66 = *(v64 + 16);
    v66(v37, *(v65 + 48) + v40 * (__clz(__rbit64(v32)) | (v36 << 6)), v39);
    (*(v64 + 32))(v38, v37, v39);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v26;
    v11 = sub_10007B6C4(v38);
    v42 = v26[2];
    v43 = (v12 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v46 = v12;
    if (v26[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = v11;
        sub_10007F178();
        v11 = v55;
        v26 = v69;
      }
    }

    else
    {
      v47 = *(v68 + 88);
      sub_10007C614(v45, isUniquelyReferenced_nonNull_native);
      v11 = sub_10007B6C4(v47);
      if ((v46 & 1) != (v48 & 1))
      {
        v62 = *(v68 + 72);

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    v32 &= v32 - 1;
    v49 = *(v68 + 88);
    v50 = *(v68 + 72);
    if (v46)
    {
      v34 = v26[7];
      v35 = *(v34 + 8 * v11);
      *(v34 + 8 * v11) = v67;

      v11 = (*v63)(v49, v50);
    }

    else
    {
      v26[(v11 >> 6) + 8] |= 1 << v11;
      v51 = v26[6] + v11 * v40;
      v52 = v11;
      v66(v51, v49, v50);
      *(v26[7] + 8 * v52) = v67;
      v11 = (*v63)(v49, v50);
      v53 = v26[2];
      v44 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v44)
      {
        goto LABEL_33;
      }

      v26[2] = v54;
    }

    v28 = v36;
    v0 = v68;
  }

  while (1)
  {
    v36 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v36 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v36);
    ++v28;
    if (v32)
    {
      goto LABEL_16;
    }
  }

  v56 = *(v0 + 56);
  v57 = *(v0 + 64);

  v56(v26);

  v59 = *(v0 + 88);
  v58 = *(v0 + 96);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_100051BC8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100051CE0, 0, 0);
}

uint64_t sub_100051CE0()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 16));

  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

void sub_100051E98(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100051F64(uint64_t a1, char *a2, char *a3)
{
  v36 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v35 = v8;
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v37 = &v34 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v9;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "calling ensureDigests()", v20, 2u);
    v9 = v34;
  }

  (*(v14 + 8))(v17, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  v22 = v38;
  v23 = sub_10004ED44(1, sub_10005F7E8, v21);

  if (v23)
  {
    v34 = a2;
    result = swift_weakLoadStrong();
    if (result)
    {
      v25 = result;
      v26 = type metadata accessor for TaskPriority();
      v27 = *(*(v26 - 8) + 56);
      v28 = v37;
      v27(v37, 1, 1, v26);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v25;
      *(v29 + 40) = 0;
      sub_100080ECC(0, 0, v28, &unk_100087518, v29);

      v27(v28, 1, 1, v26);
      sub_10000D2CC(v22 + 40, v39);
      (*(v6 + 16))(v9, v36, v5);
      v30 = (*(v6 + 80) + 72) & ~*(v6 + 80);
      v31 = (v35 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      sub_1000111BC(v39, v32 + 32);
      (*(v6 + 32))(v32 + v30, v9, v5);
      v33 = (v32 + v31);
      *v33 = v34;
      v33[1] = a3;

      sub_100080ECC(0, 0, v28, &unk_100087528, v32);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000523E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(sub_10000CED0(&qword_1000AB0C8, &qword_100085F18) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return _swift_task_switch(sub_100052488, 0, 0);
}

uint64_t sub_100052488()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_10000D224(v1, v1[3]);
  if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
  {
    v3 = v0[6];
    v4 = type metadata accessor for Date();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100052650;
    v6 = v0[6];
    v7 = v0[3];

    return sub_1000128C8(v7, v6);
  }

  else
  {
    sub_10005CCD4();
    v9 = swift_allocError();
    *v10 = 0xD000000000000018;
    *(v10 + 8) = 0x80000001000899C0;
    *(v10 + 16) = 0;
    swift_willThrow();
    v12 = v0[4];
    v11 = v0[5];
    swift_errorRetain();
    v12(v9);

    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100052650()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  sub_10000D620(v3, &qword_1000AB0C8, &qword_100085F18);
  if (v0)
  {
    v4 = sub_100052800;
  }

  else
  {
    v4 = sub_100052790;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100052790()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100052800()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000529CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v18 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for TaskPriority();
    v12 = *(*(v11 - 8) + 56);
    v12(v8, 1, 1, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v10;
    *(v13 + 40) = 0;
    sub_100080ECC(0, 0, v8, &unk_1000873F0, v13);

    result = swift_weakLoadStrong();
    if (result)
    {
      v14 = result;
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;
      v16 = *sub_10000D224((v2 + 80), *(v2 + 104));
      v19[3] = type metadata accessor for CoreDataDatabase();
      v19[4] = &off_1000A42B8;
      v19[0] = v16;
      v12(v8, 1, 1, v11);
      sub_10000D2CC(v19, v18);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = sub_10005D844;
      v17[6] = v15;
      sub_1000111BC(v18, (v17 + 7));

      sub_100080ECC(0, 0, v8, &unk_1000873F8, v17);

      return sub_10000D330(v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100052CC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v38 - v12;
  v41 = type metadata accessor for Logger();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v41);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v40 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v39 = v13;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a1;
    v26 = v21;
    v27 = swift_slowAlloc();
    v38[1] = v5;
    v28 = v27;
    v42 = v27;
    *v26 = 136315138;
    v29 = v25;
    a4 = v24;
    a3 = v23;
    a2 = v22;
    v13 = v39;
    *(v26 + 4) = sub_100035120(v29, a2, &v42);
    _os_log_impl(&_mh_execute_header, v18, v19, "calling hmvutil echo(%s)", v26, 0xCu);
    sub_10000D330(v28);
  }

  (*(v14 + 8))(v17, v41);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;

  v31 = sub_10004ED44(2, sub_10005E928, v30);

  if (v31)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v33 = result;
      v34 = type metadata accessor for TaskPriority();
      v35 = *(*(v34 - 8) + 56);
      v35(v13, 1, 1, v34);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = v33;
      *(v36 + 40) = 0;
      sub_100080ECC(0, 0, v13, &unk_100087500, v36);

      v35(v13, 1, 1, v34);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = a3;
      v37[5] = a4;
      v37[6] = v40;
      v37[7] = a2;

      sub_100080ECC(0, 0, v13, &unk_100087510, v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000530BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000530E0, 0, 0);
}

uint64_t sub_1000530E0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32), *(v0 + 40), 0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100053180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100053210(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v38 = a2;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v37 = &v34 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v5;
    v21 = v20;
    v40 = a1;
    *&v41[0] = v20;
    *v19 = 136315138;

    sub_10000CED0(&unk_1000ABED0, &qword_1000874F8);
    v22 = String.init<A>(describing:)();
    v24 = sub_100035120(v22, v23, v41);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "calling hmvutil clearEvents(%s", v19, 0xCu);
    sub_10000D330(v21);
    v5 = v35;

    a4 = v36;
  }

  (*(v12 + 8))(v15, v11);
  v25 = swift_allocObject();
  *(v25 + 16) = v39;
  *(v25 + 24) = a4;

  v26 = sub_10004ED44(2, sub_10005F7E8, v25);

  if (v26)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v28 = result;
      v29 = type metadata accessor for TaskPriority();
      v30 = *(*(v29 - 8) + 56);
      v31 = v37;
      v30(v37, 1, 1, v29);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v28;
      *(v32 + 40) = 0;
      sub_100080ECC(0, 0, v31, &unk_1000874E0, v32);

      v30(v31, 1, 1, v29);
      sub_10000D2CC(v5 + 80, v41);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = a1;
      *(v33 + 40) = v38 & 1;
      sub_1000111BC(v41, v33 + 48);
      *(v33 + 88) = v39;
      *(v33 + 96) = a4;

      sub_100080ECC(0, 0, v31, &unk_1000874F0, v33);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100053648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10004FDA0;

  return sub_10001C164(a4, a5, a6);
}

uint64_t sub_100053740(int a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  if (a3)
  {
    type metadata accessor for UUID();
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  a8(a3, a4, a7, v13);
}

uint64_t sub_100053810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = v11;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "calling hmvutil clearLocalDatabase()", v19, 2u);
    v11 = v28;
  }

  (*(v13 + 8))(v16, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  v21 = sub_10004ED44(2, sub_10005F7E8, v20);

  if (v21)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v23 = result;
      v24 = type metadata accessor for TaskPriority();
      v25 = *(*(v24 - 8) + 56);
      v25(v11, 1, 1, v24);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v23;
      *(v26 + 40) = 0;
      sub_100080ECC(0, 0, v11, &unk_1000874C8, v26);

      v25(v11, 1, 1, v24);
      sub_10000D2CC(v4 + 80, v29);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      sub_1000111BC(v29, (v27 + 4));
      v27[9] = a1;
      v27[10] = a2;
      v27[11] = a3;

      sub_100080ECC(0, 0, v11, &unk_1000874D8, v27);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100053BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_10004FDA0;

  return sub_1000358C4(a4, a5);
}

uint64_t sub_100053D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 48) = v16;
  *(v8 + 56) = v17;
  *(v8 + 138) = v15;
  *(v8 + 137) = v14;
  *(v8 + 136) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for EventRecord.DecodedEvent();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100053E10, 0, 0);
}

uint64_t sub_100053E10()
{
  v1 = sub_100066850(*(v0 + 16), *(v0 + 24));
  *(v0 + 88) = v1;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v1;
    if (*(v0 + 138))
    {
      v7 = *(v0 + 72);
      sub_10003E718(0, v5, 0);
      v27 = type metadata accessor for SomeEvent();
      v8 = *(v27 - 8);
      v26 = *(v8 + 16);
      v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v25 = *(v8 + 72);
      v10 = enum case for EventRecord.DecodedEvent.someEvent(_:);
      do
      {
        v11 = *(v0 + 80);
        v12 = *(v0 + 64);
        v26(v11, v9, v27);
        (*(v7 + 104))(v11, v10, v12);
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10003E718(v13 > 1, v14 + 1, 1);
        }

        v15 = *(v0 + 80);
        v16 = *(v0 + 64);
        _swiftEmptyArrayStorage[2] = v14 + 1;
        (*(v7 + 32))(_swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v15, v16);
        v9 += v25;
        --v5;
      }

      while (v5);
      v19 = *(v0 + 88);

      *(v0 + 112) = _swiftEmptyArrayStorage;
      v20 = swift_task_alloc();
      *(v0 + 120) = v20;
      *v20 = v0;
      v20[1] = sub_100054544;
      v21 = *(v0 + 137);
      v22 = *(v0 + 136);
      v23 = *(v0 + 32);
      v24 = *(v0 + 40);

      return sub_10005FF20(_swiftEmptyArrayStorage, v23, v24, v22, v21);
    }

    else
    {
      v18 = swift_task_alloc();
      *(v0 + 96) = v18;
      *v18 = v0;
      v18[1] = sub_100054160;

      return sub_10002AA68(v6);
    }
  }

  else
  {

    v17 = *(v0 + 56);
    (*(v0 + 48))(0);
    v2 = *(v0 + 80);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100054160()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100054274;
  }

  else
  {
    v3 = sub_100054310;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054274()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(v2);

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100054310()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);
    sub_10003E718(0, v2, 0);
    v22 = type metadata accessor for SomeEvent();
    v4 = *(v22 - 8);
    v21 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = *(v4 + 72);
    v6 = enum case for EventRecord.DecodedEvent.someEvent(_:);
    do
    {
      v7 = *(v0 + 80);
      v8 = *(v0 + 64);
      v21(v7, v5, v22);
      (*(v3 + 104))(v7, v6, v8);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10003E718(v9 > 1, v10 + 1, 1);
      }

      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v20;
      --v2;
    }

    while (v2);
  }

  v13 = *(v0 + 88);

  *(v0 + 112) = _swiftEmptyArrayStorage;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_100054544;
  v15 = *(v0 + 137);
  v16 = *(v0 + 136);
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);

  return sub_10005FF20(_swiftEmptyArrayStorage, v17, v18, v16, v15);
}

uint64_t sub_100054544()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1000546D0;
  }

  else
  {
    v3 = sub_100054658;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054658()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 56);
  (*(v0 + 48))(0);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000546D0()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(v2);

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100054834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v19;
  *(v8 + 72) = v20;
  *(v8 + 153) = v17;
  *(v8 + 152) = v16;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v10 = type metadata accessor for Logger();
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  if (v18)
  {
    *(v8 + 112) = 0;

    return _swift_task_switch(sub_100054AD4, 0, 0);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v8 + 104) = v13;
    *v13 = v8;
    v13[1] = sub_1000549B0;

    return sub_10002B3F0(a5);
  }
}

uint64_t sub_1000549B0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 144) = v0;
    v5 = sub_100055048;
  }

  else
  {
    *(v2 + 112) = 0;
    v5 = sub_100054AD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100054AD4()
{
  v1 = *(v0 + 40);
  if (v1 < 1)
  {
    v20 = type metadata accessor for HomeKitEventsError();
    sub_10005E474(&qword_1000ABA30, &type metadata accessor for HomeKitEventsError);
    v21 = swift_allocError();
    v23 = v22;
    _StringGuts.grow(_:)(35);

    *(v0 + 16) = v1;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    *v23 = 0xD000000000000021;
    v23[1] = 0x80000001000895C0;
    (*(*(v20 - 8) + 104))(v23, enum case for HomeKitEventsError.unexpected(_:), v20);
    swift_willThrow();
    *(v0 + 144) = v21;

    return _swift_task_switch(sub_100055048, 0, 0);
  }

  else
  {
    v2 = *(v0 + 96);
    type metadata accessor for XPCServer();
    sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 40);
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "Creating %ld fake event(s)", v6, 0xCu);
    }

    v7 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v11 = *(v0 + 40);
    v25 = *(v0 + 24);

    (*(v9 + 8))(v8, v10);
    v12 = swift_task_alloc();
    *(v12 + 16) = v25;
    v13 = sub_1000366FC(sub_100047D94, v12, 0, v11);
    *(v0 + 120) = v13;

    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = sub_100054E4C;
    v15 = *(v0 + 153);
    v16 = *(v0 + 152);
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);

    return sub_10005FF20(v13, v17, v18, v16, v15);
  }
}

uint64_t sub_100054E4C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100054FD8;
  }

  else
  {
    v3 = sub_100054F60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054F60()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[9];

  v2(0);
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100054FD8()
{
  v1 = v0[15];

  v0[18] = v0[17];

  return _swift_task_switch(sub_100055048, 0, 0);
}

uint64_t sub_100055048()
{
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  swift_errorRetain();
  v3(v1);

  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000552D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "calling hmvutil dumpLocalDatabase()", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v19 = sub_10004ED44(2, sub_10005DEE8, v18);

  if (v19)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = type metadata accessor for TaskPriority();
      v23 = *(*(v22 - 8) + 56);
      v23(v9, 1, 1, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v21;
      *(v24 + 40) = 0;
      sub_100080ECC(0, 0, v9, &unk_100087470, v24);

      v23(v9, 1, 1, v22);
      sub_10000D2CC(v3 + 80, v27);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      sub_1000111BC(v27, (v25 + 4));
      v25[9] = a1;
      v25[10] = a2;

      sub_100080ECC(0, 0, v9, &unk_100087480, v25);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100055640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1000556EC;

  return sub_100082138(a4);
}

uint64_t sub_1000556EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_10005588C;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_100055814;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100055814()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005588C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_1000559AC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for UUID();
    sub_10000CED0(&qword_1000ABEC0, &qword_100087488);
    sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100055AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v11;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "calling hmvutil uploadEvents()", v19, 2u);
    v11 = v29;
  }

  (*(v13 + 8))(v16, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  v21 = sub_10004ED44(2, sub_10005F7E8, v20);

  if (v21)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v23 = result;
      v24 = type metadata accessor for TaskPriority();
      v25 = *(*(v24 - 8) + 56);
      v25(v11, 1, 1, v24);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v23;
      *(v26 + 40) = 0;
      sub_100080ECC(0, 0, v11, &unk_100087458, v26);

      v25(v11, 1, 1, v24);
      sub_10000D2CC(v4 + 80, v30);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      sub_1000111BC(v30, (v27 + 4));
      v27[9] = a1;
      v27[10] = a2;
      v27[11] = a3;
      v28 = a1;

      sub_100080ECC(0, 0, v11, &unk_100087468, v27);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100055E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100055E70, 0, 0);
}

uint64_t sub_100055E70()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100055F50;
  v4 = *(v0 + 16);

  return sub_10000F394(v4, v2, v1 == 0);
}

uint64_t sub_100055F50()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000560CC;
  }

  else
  {
    v3 = sub_100056064;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056064()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000560CC()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000561FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v5 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "calling hmvutil exit(%ld)", v16, 0xCu);
  }

  (*(v10 + 8))(v13, v9);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  v18 = sub_10004ED44(2, sub_10005F7E8, v17);

  if (v18)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v20 = result;
      v21 = type metadata accessor for TaskPriority();
      v22 = *(*(v21 - 8) + 56);
      v22(v8, 1, 1, v21);
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = v20;
      *(v23 + 40) = 0;
      sub_100080ECC(0, 0, v8, &unk_100087440, v23);

      v22(v8, 1, 1, v21);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = a2;
      v24[5] = a3;
      v24[6] = v26;

      sub_100080ECC(0, 0, v8, &unk_100087450, v24);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100056570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100056594, 0, 0);
}

void sub_100056594()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  (*(v0 + 16))(0);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 32);
    if (v3 <= 0x7FFFFFFF)
    {
      exit(v3);
    }
  }

  __break(1u);
}

uint64_t sub_100056690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "calling hmvutil registerForTaskWithIdentifier()", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  v19 = sub_10004ED44(2, sub_10005F7E8, v18);

  if (v19)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = type metadata accessor for TaskPriority();
      v23 = *(*(v22 - 8) + 56);
      v23(v9, 1, 1, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v21;
      *(v24 + 40) = 0;
      sub_100080ECC(0, 0, v9, &unk_100087418, v24);

      result = swift_weakLoadStrong();
      if (result)
      {
        sub_100024F5C(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler, v33);

        v23(v9, 1, 1, v22);
        sub_100024F5C(v33, v31);
        v25 = swift_allocObject();
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        v26 = v31[1];
        *(v25 + 32) = v31[0];
        *(v25 + 48) = v26;
        v27 = v29;
        v28 = v30;
        *(v25 + 64) = v32;
        *(v25 + 72) = v27;
        *(v25 + 80) = v28;
        *(v25 + 88) = a3;
        *(v25 + 96) = a4;

        sub_100080ECC(0, 0, v9, &unk_100087428, v25);

        return sub_10000D5CC(v33);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100056A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_100056A7C, 0, 0);
}

uint64_t sub_100056A7C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_100047DB4(v0[3], v0[4], sub_100056B14, 0);
  v2(0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100056B14()
{
  v0 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  return sub_10004E410(0, 0, v3, &unk_100087438, v5);
}

uint64_t sub_100056C34(int a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;

  a7(v10, v12, a6, v13);
}

uint64_t sub_100056CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "calling hmvutil submitTaskRequestForIdentifier()", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  v19 = sub_10004ED44(2, sub_10005F7E8, v18);

  if (v19)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = type metadata accessor for TaskPriority();
      v23 = *(*(v22 - 8) + 56);
      v23(v9, 1, 1, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v21;
      *(v24 + 40) = 0;
      sub_100080ECC(0, 0, v9, &unk_100087400, v24);

      result = swift_weakLoadStrong();
      if (result)
      {
        sub_100024F5C(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler, v33);

        v23(v9, 1, 1, v22);
        sub_100024F5C(v33, v31);
        v25 = swift_allocObject();
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        v26 = v31[1];
        *(v25 + 32) = v31[0];
        *(v25 + 48) = v26;
        v27 = v29;
        v28 = v30;
        *(v25 + 64) = v32;
        *(v25 + 72) = v27;
        *(v25 + 80) = v28;
        *(v25 + 88) = a3;
        *(v25 + 96) = a4;

        sub_100080ECC(0, 0, v9, &unk_100087410, v25);

        return sub_10000D5CC(v33);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000570BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return _swift_task_switch(sub_1000570E4, 0, 0);
}

uint64_t sub_1000570E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[5] = &type metadata for BackgroundSystemTaskRequest;
  v0[6] = &off_1000A24F0;
  v4 = swift_allocObject();
  v0[2] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 16777473;
  *(v4 + 40) = xmmword_1000872F0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;

  sub_10004827C(v0 + 2);
  v5 = v0[10];
  v6 = v0[11];
  sub_10000D330(v0 + 2);
  v5(0);
  v7 = v0[1];

  return v7();
}

uint64_t sub_10005724C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6)
{
  v22 = a3;
  v23 = type metadata accessor for Logger();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v23);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21[1] = a4;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, v22, v17, 2u);
  }

  (*(v11 + 8))(v14, v23);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v19 = sub_10004ED44(a5, a6, v18);

  if (v19)
  {
    return sub_1000529CC(a1, a2);
  }

  return result;
}

uint64_t sub_100057534(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v83 = a4;
  v84 = a5;
  v80 = a3;
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v79 = &v66[-v11];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v76 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v75 = &v66[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v66[-v20];
  v74 = v22;
  __chkstk_darwin(v19);
  v24 = &v66[-v23];
  v25 = type metadata accessor for Logger();
  v81 = *(v25 - 8);
  v82 = v25;
  v26 = *(v81 + 64);
  __chkstk_darwin(v25);
  v28 = &v66[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v29 = v13[2];
  v77 = a1;
  v29(v24, a1, v12);
  v30 = a2;
  v72 = v29;
  v73 = v13 + 2;
  v29(v21, a2, v12);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v78 = v13;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v70 = v6;
    v35 = v34;
    v69 = swift_slowAlloc();
    v85[0] = v69;
    *v35 = 136315650;
    sub_10005E474(&qword_1000AB0D8, &type metadata accessor for UUID);
    v71 = a2;
    v68 = v31;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v67 = v32;
    v39 = v13[1];
    v39(v24, v12);
    v40 = sub_100035120(v36, v38, v85);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v30 = v71;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v39(v21, v12);
    v44 = v83;
    v45 = sub_100035120(v41, v43, v85);
    LOBYTE(v43) = v80;

    *(v35 + 14) = v45;
    *(v35 + 22) = 1024;
    *(v35 + 24) = v43 & 1;
    v46 = v68;
    _os_log_impl(&_mh_execute_header, v68, v67, "calling hmvutil createEncryptionKey(%s, %s, %{BOOL}d)", v35, 0x1Cu);
    swift_arrayDestroy();

    (*(v81 + 8))(v28, v82);
  }

  else
  {

    v47 = v13[1];
    v47(v21, v12);
    v47(v24, v12);
    (*(v81 + 8))(v28, v82);
    v44 = v83;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  *(v48 + 24) = v84;

  v49 = sub_10004ED44(2, sub_10005F7E8, v48);

  if (v49)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v51 = *(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v79, 1, 1, v52);
      v53 = v75;
      v54 = v72;
      v72(v75, v77, v12);
      v55 = v76;
      v54(v76, v30, v12);
      v56 = v78;
      v57 = *(v78 + 80);
      v58 = (v57 + 40) & ~v57;
      v59 = (v74 + v57 + v58) & ~v57;
      v60 = v59 + v74;
      v61 = (v59 + v74) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = 0;
      *(v62 + 3) = 0;
      *(v62 + 4) = v51;
      v63 = v56[4];
      v63(&v62[v58], v53, v12);
      v63(&v62[v59], v55, v12);
      v62[v60] = v80 & 1;
      v64 = &v62[v61];
      v65 = v84;
      *(v64 + 1) = v83;
      *(v64 + 2) = v65;

      sub_100080ECC(0, 0, v79, &unk_1000873E8, v62);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100057BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v20;
  *(v8 + 200) = a7;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 56) = a4;
  v9 = type metadata accessor for LubyRackoffEncryptionKey();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 120) = v12;
  v13 = *(v12 - 8);
  *(v8 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v15 = type metadata accessor for DatabaseConfiguration();
  *(v8 + 144) = v15;
  v16 = *(v15 - 8);
  *(v8 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100057D5C, 0, 0);
}

uint64_t sub_100057D5C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 200);
  v5 = *(v0 + 56);
  v6 = sub_100064E70(v5);
  *(v0 + 168) = v6;
  v7 = sub_10000CED0(&qword_1000AB8B8, &qword_100086D10);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  *v1 = v5;
  v10 = enum case for QueryScope.owned(_:);
  Scope = type metadata accessor for QueryScope();
  (*(*(Scope - 8) + 104))(&v1[v8], v10, Scope);
  *&v1[v9] = v6;
  (*(v2 + 104))(v1, enum case for DatabaseConfiguration.unconfigured(_:), v3);
  v12 = sub_10000CED0(&qword_1000AAFF8, &qword_100085C78);
  v13 = v5;
  v14 = v6;
  v15 = SimpleAsyncCache.__allocating_init()();
  *(v0 + 40) = v12;
  *(v0 + 48) = sub_100011108();
  *(v0 + 16) = v15;
  v16 = type metadata accessor for TagEncryptionKeyController();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  *(v0 + 176) = v19;
  (*(v2 + 32))(v19 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v1, v3);
  sub_1000111BC((v0 + 16), v19 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache);
  v20 = v19 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_qualityOfService;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v19 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_preventZoneCreation) = v4;
  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  *v21 = v0;
  v21[1] = sub_100057F94;
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);

  return sub_100044108(v22, v23, v24, v25);
}

uint64_t sub_100057F94()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_100058208;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v4 = sub_1000580C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000580C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[10];
  v8 = v0[11];
  swift_setDeallocating();
  (*(v4 + 8))(v1 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v3);
  sub_10000D330((v1 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache));
  v10 = *(*v1 + 48);
  v11 = *(*v1 + 52);
  swift_deallocClassInstance();

  (*(v6 + 8))(v5, v7);
  v9(0);
  v12 = v0[20];
  v13 = v0[17];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100058208()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  swift_setDeallocating();
  (*(v4 + 8))(v2 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v3);
  sub_10000D330((v2 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache));
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 52);
  swift_deallocClassInstance();
  swift_errorRetain();
  v6(v1);

  v9 = *(v0 + 160);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000584D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v74 = a3;
  v6 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v68 = &v58[-v8];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v67 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v12);
  v66 = &v58[-v14];
  v15 = __chkstk_darwin(v13);
  v17 = &v58[-v16];
  __chkstk_darwin(v15);
  v19 = &v58[-v18];
  v20 = type metadata accessor for Logger();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = *(v72 + 64);
  __chkstk_darwin(v20);
  v23 = &v58[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v24 = v10[2];
  v63 = a1;
  v24(v19, a1, v9);
  v70 = v17;
  v25 = a2;
  v64 = v24;
  v65 = v10 + 2;
  v24(v17, a2, v9);
  v71 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v69 = v10;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v76[0] = v60;
    *v29 = 136315394;
    sub_10005E474(&qword_1000AB0D8, &type metadata accessor for UUID);
    v61 = v11;
    v59 = v27;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v62 = v25;
    v33 = v10[1];
    v33(v19, v9);
    v34 = sub_100035120(v30, v32, v76);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = v70;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v33(v35, v9);
    v25 = v62;
    v39 = sub_100035120(v36, v38, v76);
    v11 = v61;

    *(v29 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v26, v59, "calling hmvutil deleteEncryptionKey(%s, %s)", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = v10[1];
    v40(v70, v9);
    v40(v19, v9);
  }

  (*(v72 + 8))(v71, v73);
  v41 = swift_allocObject();
  *(v41 + 16) = v74;
  *(v41 + 24) = v75;

  v42 = sub_10004ED44(2, sub_10005F7E8, v41);

  if (v42)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v44 = *(result + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);

      v45 = type metadata accessor for TaskPriority();
      v46 = v68;
      (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
      v47 = v66;
      v48 = v64;
      v64(v66, v63, v9);
      v49 = v67;
      v48(v67, v25, v9);
      v50 = v69;
      v51 = *(v69 + 80);
      v52 = (v51 + 40) & ~v51;
      v53 = (v11 + v51 + v52) & ~v51;
      v54 = swift_allocObject();
      *(v54 + 2) = 0;
      *(v54 + 3) = 0;
      *(v54 + 4) = v44;
      v55 = v50[4];
      v55(&v54[v52], v47, v9);
      v55(&v54[v53], v49, v9);
      v56 = &v54[(v11 + v53 + 7) & 0xFFFFFFFFFFFFFFF8];
      v57 = v75;
      *v56 = v74;
      *(v56 + 1) = v57;

      sub_100080ECC(0, 0, v46, &unk_1000873D8, v54);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100058B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10004FDA0;

  return sub_100065094(a4, a5, a6);
}

uint64_t sub_100058D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a3;
  v43 = a1;
  v7 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v44 = *(v7 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v40 = v13;
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v42 = &v39 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v11;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "calling ensureDigests()", v24, 2u);
    v11 = v39;
  }

  (*(v18 + 8))(v21, v17);
  v25 = swift_allocObject();
  *(v25 + 16) = v47;
  *(v25 + 24) = a4;

  v26 = sub_10004ED44(2, sub_10005F7E8, v25);

  if (v26)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v28 = result;
      v29 = type metadata accessor for TaskPriority();
      v30 = *(*(v29 - 8) + 56);
      v31 = v42;
      v30(v42, 1, 1, v29);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v28;
      *(v32 + 40) = 0;
      sub_100080ECC(0, 0, v31, &unk_1000873B8, v32);

      v30(v31, 1, 1, v29);
      sub_10000D2CC(v5 + 40, v48);
      v33 = v41;
      (*(v11 + 16))(v41, v43, v10);
      sub_100013358(v46, v9, &qword_1000AB0C8, &qword_100085F18);
      v34 = (*(v11 + 80) + 72) & ~*(v11 + 80);
      v35 = (v40 + *(v44 + 80) + v34) & ~*(v44 + 80);
      v36 = (v45 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      sub_1000111BC(v48, v37 + 32);
      (*(v11 + 32))(v37 + v34, v33, v10);
      sub_10005D170(v9, v37 + v35);
      v38 = (v37 + v36);
      *v38 = v47;
      v38[1] = a4;

      sub_100080ECC(0, 0, v31, &unk_1000873C8, v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000592C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1000592F0, 0, 0);
}

uint64_t sub_1000592F0()
{
  v1 = v0[2];
  v2 = v1[4];
  sub_10000D224(v1, v1[3]);
  if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100059468;
    v5 = v0[3];
    v4 = v0[4];

    return sub_1000128C8(v5, v4);
  }

  else
  {
    sub_10005CCD4();
    v7 = swift_allocError();
    *v8 = 0xD000000000000018;
    *(v8 + 8) = 0x80000001000899C0;
    *(v8 + 16) = 0;
    swift_willThrow();
    v10 = v0[5];
    v9 = v0[6];
    swift_errorRetain();
    v10(v7);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100059468()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000595E4;
  }

  else
  {
    v3 = sub_10005957C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005957C()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000595E4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100059878(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a2(v7, a1);
  return sub_10000D620(v7, &qword_1000AADD8, &qword_1000855A8);
}

uint64_t sub_100059968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = *(*(sub_10000CED0(&qword_1000AADD8, &qword_1000855A8) - 8) + 64) + 15;
  v7[4] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v7[5] = v11;
  v12 = *(v11 - 8);
  v7[6] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v7[7] = v14;
  v15 = swift_task_alloc();
  v7[8] = v15;
  *v15 = v7;
  v15[1] = sub_100059AB0;

  return sub_1000134B8(v14, a4, a5);
}

uint64_t sub_100059AB0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100059CD0;
  }

  else
  {
    v3 = sub_100059BC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100059BC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6(v4, 0);
  sub_10000D620(v4, &qword_1000AADD8, &qword_1000855A8);
  (*(v2 + 8))(v1, v3);
  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100059CD0()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 56))(v2, 1, 1, v0[5]);
  swift_errorRetain();
  v3(v2, v1);

  sub_10000D620(v2, &qword_1000AADD8, &qword_1000855A8);
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

void sub_100059E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_100013358(a1, &v16 - v8, &qword_1000AADD8, &qword_1000855A8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v13, v15);
}

uint64_t sub_100059F84()
{
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  return static LoggedObject.logger.getter();
}

uint64_t sub_100059FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10005A018, 0, 0);
}

uint64_t sub_10005A018()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_10005A0A4, a4, 0);
}

uint64_t sub_10005A0A4()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics) = 1;
    v4 = swift_task_alloc();
    *(v0 + 24) = v4;
    *v4 = v0;
    v4[1] = sub_10005A18C;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    return sub_100005E6C(v5, 1);
  }
}

uint64_t sub_10005A18C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10005A280(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_10005A5A0(uint64_t result, uint64_t a2)
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

void sub_10005A750(uint64_t a1, char *a2, void (*a3)(void, void, void), void (**a4)(void, void))
{
  v73 = a2;
  v7 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v71 = &v65 - v9;
  v10 = sub_10000CED0(&qword_1000ABEC8, &qword_100087490);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v72 = &v65 - v12;
  v13 = type metadata accessor for EventWriterScope();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v68 = v17;
  v69 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v74 = type metadata accessor for Logger();
  v20 = *(v74 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v74);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  type metadata accessor for XPCServer();
  v70 = a4;
  _Block_copy(a4);
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v67 = a3;
    v28 = v19;
    v29 = v24;
    v30 = v14;
    v31 = v13;
    v32 = v27;
    *v27 = 134217984;
    *(v27 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v25, v26, "calling createEvents(%ld events)", v32, 0xCu);
    v13 = v31;
    v14 = v30;
    v24 = v29;
    v19 = v28;
    a3 = v67;
  }

  else
  {
  }

  (*(v20 + 8))(v23, v74);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10005F7EC;
  *(v33 + 24) = v24;

  v34 = sub_10004ED44(1, sub_10005F7E8, v33);

  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

  v35 = v72;
  v36 = v73;
  EventWriterScope.init(rawValue:)();
  if ((*(v14 + 48))(v35, 1, v13) == 1)
  {
    sub_10000D620(v35, &qword_1000ABEC8, &qword_100087490);
    *&v75[0] = 0;
    *(&v75[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v75[0] = 0x2064696C61766E49;
    *(&v75[0] + 1) = 0xEF203A65706F6373;
    v76 = v36;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38 = v75[0];
    sub_10005CCD4();
    swift_allocError();
    *v39 = v38;
    *(v39 + 16) = 2;
    v40 = _convertErrorToNSError(_:)();
    (v70)[2](v70, v40);

LABEL_15:

    return;
  }

  v41 = *(v14 + 32);
  v72 = (v14 + 32);
  v67 = v41;
  v41(v19, v35, v13);
  Strong = swift_weakLoadStrong();
  v73 = v19;
  v74 = v13;
  if (Strong)
  {
    v43 = Strong;
    v66 = type metadata accessor for TaskPriority();
    v44 = *(v66 - 8);
    v65 = *(v44 + 56);
    v70 = (v44 + 56);
    v45 = v71;
    v65(v71, 1, 1, v66);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v43;
    *(v46 + 40) = 0;
    sub_100080ECC(0, 0, v45, &unk_100087568, v46);

    v47 = *(a3 + 2);
    v48 = *(a3 + 3);
    v49 = a3;
    ObjectType = swift_getObjectType();
    v51 = *(v48 + 160);
    swift_unknownObjectRetain();
    v52 = v51(ObjectType, v48);
    v54 = v53;
    swift_unknownObjectRelease();
    if (v54)
    {
      v55 = v52;
    }

    else
    {
      v55 = 0x436E776F6E6B6E75;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xED0000746E65696CLL;
    }

    type metadata accessor for EventUploadRequestLogEvent();
    sub_10005F7F0(v55, v56, *(a1 + 16), 0);

    v57 = v49[15];
    v65(v45, 1, 1, v66);
    sub_10000D2CC((v49 + 5), v75);
    v58 = v69;
    v60 = v73;
    v59 = v74;
    (*(v14 + 16))(v69, v73, v74);
    v61 = (*(v14 + 80) + 88) & ~*(v14 + 80);
    v62 = (v68 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v63[2] = 0;
    v63[3] = 0;
    v63[4] = a1;
    sub_1000111BC(v75, (v63 + 5));
    v63[10] = v57;
    v67(v63 + v61, v58, v59);
    v64 = (v63 + v62);
    *v64 = sub_10005F7EC;
    v64[1] = v24;

    sub_100080ECC(0, 0, v71, &unk_100087578, v63);

    (*(v14 + 8))(v60, v59);
    goto LABEL_15;
  }

  _Block_release(v70);
  __break(1u);
}

void sub_10005AEF8(uint64_t a1, void (*a2)(void, void, void), int a3, int a4, int a5, void *a6, void (**a7)(void, void))
{
  v91 = a6;
  v80 = a5;
  v89 = a4;
  v90 = a3;
  v84 = a2;
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v83 = &v79 - v11;
  v12 = sub_10000CED0(&qword_1000ABEC8, &qword_100087490);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v79 - v14;
  v87 = type metadata accessor for EventWriterScope();
  v85 = *(v87 - 8);
  v16 = *(v85 + 64);
  v17 = __chkstk_darwin(v87);
  v79 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v79 - v18;
  v93 = type metadata accessor for Logger();
  v19 = *(v93 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v93);
  v82 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v79 - v24;
  __chkstk_darwin(v23);
  v27 = &v79 - v26;
  v92 = swift_allocObject();
  *(v92 + 16) = a7;
  type metadata accessor for XPCServer();
  v88 = a7;
  v28 = a7;
  v29 = a1;
  _Block_copy(v28);
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v81 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = v29;
    v35 = v33;
    *v33 = 134217984;
    *(v33 + 4) = *(v34 + 16);

    _os_log_impl(&_mh_execute_header, v30, v31, "calling hmvutil createEvents(%ld events)", v35, 0xCu);
  }

  else
  {
  }

  v36 = *(v19 + 8);
  v36(v27, v93);
  v37 = swift_allocObject();
  v38 = v92;
  *(v37 + 16) = sub_10005F7EC;
  *(v37 + 24) = v38;

  v39 = sub_10004ED44(2, sub_10005F7E8, v37);

  if ((v39 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v90 & 1) != 0 && (v89)
  {
    static LoggedObject.logger.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Incompatible argument flags uploadOnly and saveOnly cannot be reconciled, declining to create events", v42, 2u);
    }

    v36(v25, v93);
    v43 = 0x8000000100089A00;
    sub_10005CCD4();
    swift_allocError();
    v45 = 0xD00000000000002ELL;
LABEL_14:
    *v44 = v45;
    *(v44 + 8) = v43;
    *(v44 + 16) = 0;
    v53 = _convertErrorToNSError(_:)();
    (v88)[2](v88, v53);

LABEL_19:

    return;
  }

  v46 = v84;
  EventWriterScope.init(rawValue:)();
  v47 = v85;
  v48 = v87;
  if ((*(v85 + 48))(v15, 1, v87) == 1)
  {
    sub_10000D620(v15, &qword_1000ABEC8, &qword_100087490);
    v49 = v82;
    static LoggedObject.logger.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invalid scope value: %ld", v52, 0xCu);
    }

    v36(v49, v93);
    v43 = 0x80000001000899E0;
    sub_10005CCD4();
    swift_allocError();
    v45 = 0xD000000000000013;
    goto LABEL_14;
  }

  v54 = *(v47 + 32);
  v93 = v47 + 32;
  v84 = v54;
  v54(v86, v15, v48);
  v55 = v91;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v57 = v47;
    v58 = Strong;
    v59 = type metadata accessor for TaskPriority();
    v60 = *(v59 - 8);
    v82 = *(v60 + 56);
    v88 = (v60 + 56);
    v61 = v83;
    (v82)(v83, 1, 1, v59);
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v58;
    *(v62 + 40) = 0;
    sub_100080ECC(0, 0, v61, &unk_1000874B0, v62);

    v64 = v55[2];
    v63 = v55[3];
    ObjectType = swift_getObjectType();
    v66 = *(v63 + 160);
    swift_unknownObjectRetain();
    v67 = v66(ObjectType, v63);
    v69 = v68;
    swift_unknownObjectRelease();
    if (!v69)
    {
      v67 = 0x436E776F6E6B6E75;
      v69 = 0xED0000746E65696CLL;
    }

    type metadata accessor for EventUploadRequestLogEvent();
    v70 = v81;
    sub_10005F7F0(v67, v69, *(v81 + 16), 0);

    v71 = v55[15];
    (v82)(v61, 1, 1, v59);
    sub_10000D2CC((v55 + 5), v94);
    v72 = v79;
    v73 = v87;
    (*(v57 + 16))(v79, v86, v87);
    v74 = (*(v57 + 80) + 88) & ~*(v57 + 80);
    v75 = swift_allocObject();
    v75[2] = 0;
    v75[3] = 0;
    v75[4] = v70;
    sub_1000111BC(v94, (v75 + 5));
    v75[10] = v71;
    v84(v75 + v74, v72, v73);
    v76 = v75 + v74 + v16;
    *v76 = v90 & 1;
    v76[1] = v89 & 1;
    v76[2] = v80 & 1;
    v77 = (v75 + ((v74 + v16 + 10) & 0xFFFFFFFFFFFFFFF8));
    v78 = v92;
    *v77 = sub_10005F7EC;
    v77[1] = v78;

    sub_100080ECC(0, 0, v83, &unk_1000874C0, v75);

    (*(v57 + 8))(v86, v73);
    goto LABEL_19;
  }

  _Block_release(v88);
  __break(1u);
}

void sub_10005B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, void *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v97 = a8;
  v81 = a6;
  v82 = a7;
  v80 = a5;
  v91 = a4;
  v95 = a3;
  v76 = a2;
  v75 = a1;
  v90 = type metadata accessor for UUID();
  v79 = *(v90 - 8);
  v9 = *(v79 + 64);
  __chkstk_darwin(v90);
  v77 = v10;
  v89 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Date();
  v78 = *(v87 - 8);
  v11 = *(v78 + 64);
  __chkstk_darwin(v87);
  v74 = v12;
  v86 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v88 = &v74 - v15;
  v16 = sub_10000CED0(&qword_1000ABEC8, &qword_100087490);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v74 - v18;
  v20 = type metadata accessor for EventWriterScope();
  v93 = *(v20 - 8);
  v94 = v20;
  v21 = *(v93 + 64);
  v22 = __chkstk_darwin(v20);
  v85 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v92 = &v74 - v23;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v83 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v74 - v29;
  v96 = swift_allocObject();
  *(v96 + 16) = a9;
  type metadata accessor for XPCServer();
  v84 = a9;
  _Block_copy(a9);
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v31, v32, "calling createFakeEvents(%ld events)", v33, 0xCu);
  }

  v34 = *(v25 + 8);
  v34(v30, v24);
  v35 = swift_allocObject();
  v36 = v96;
  *(v35 + 16) = sub_10005F7EC;
  *(v35 + 24) = v36;

  v37 = sub_10004ED44(2, sub_10005F7E8, v35);

  if ((v37 & 1) == 0)
  {
    goto LABEL_12;
  }

  EventWriterScope.init(rawValue:)();
  v39 = v93;
  v38 = v94;
  if ((*(v93 + 48))(v19, 1, v94) == 1)
  {
    sub_10000D620(v19, &qword_1000ABEC8, &qword_100087490);
    v40 = v83;
    static LoggedObject.logger.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v41, v42, "Invalid scope value: %ld", v43, 0xCu);
    }

    v34(v40, v24);
    sub_10005CCD4();
    swift_allocError();
    *v44 = 0xD000000000000013;
    *(v44 + 8) = 0x80000001000899E0;
    *(v44 + 16) = 0;
    v45 = _convertErrorToNSError(_:)();
    (*(v84 + 2))(v84, v45);

LABEL_12:

    return;
  }

  v46 = *(v39 + 32);
  v91 = v39 + 32;
  v83 = v46;
  (v46)(v92, v19, v38);
  v47 = v97;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    v50 = type metadata accessor for TaskPriority();
    v84 = *(*(v50 - 8) + 56);
    v51 = v88;
    v84(v88, 1, 1, v50);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    *(v52 + 32) = v49;
    *(v52 + 40) = 1;
    sub_100080ECC(0, 0, v51, &unk_100087498, v52);

    v54 = v47[2];
    v53 = v47[3];
    ObjectType = swift_getObjectType();
    v56 = *(v53 + 160);
    swift_unknownObjectRetain();
    v57 = v56(ObjectType, v53);
    v59 = v58;
    swift_unknownObjectRelease();
    if (!v59)
    {
      v57 = 0x436E776F6E6B6E75;
      v59 = 0xED0000746E65696CLL;
    }

    type metadata accessor for EventUploadRequestLogEvent();
    sub_10005F7F0(v57, v59, v95, 1);

    v97 = v47[15];
    v84(v51, 1, 1, v50);
    v60 = v78;
    (*(v78 + 16))(v86, v75, v87);
    v61 = v79;
    (*(v79 + 16))(v89, v76, v90);
    v62 = v93;
    (*(v93 + 16))(v85, v92, v94);
    v63 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v64 = (v74 + *(v61 + 80) + v63) & ~*(v61 + 80);
    v65 = (v77 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (*(v62 + 80) + v66 + 8) & ~*(v62 + 80);
    v68 = v67 + v21;
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    *(v69 + 24) = 0;
    (*(v60 + 32))(v69 + v63, v86, v87);
    (*(v61 + 32))(v69 + v64, v89, v90);
    v70 = v94;
    *(v69 + v65) = v95;
    *(v69 + v66) = v97;
    (v83)(v69 + v67, v85, v70);
    v71 = (v69 + v68);
    *v71 = v80 & 1;
    v71[1] = v81 & 1;
    v71[2] = v82 & 1;
    v72 = (v69 + ((v68 + 10) & 0xFFFFFFFFFFFFFFF8));
    v73 = v96;
    *v72 = sub_10005F7EC;
    v72[1] = v73;

    sub_100080ECC(0, 0, v88, &unk_1000874A8, v69);

    (*(v93 + 8))(v92, v70);
    goto LABEL_12;
  }

  _Block_release(v84);
  __break(1u);
}

void sub_10005C1F0(int a1, uint64_t a2, void (**a3)(void, void, void))
{
  v79 = a1;
  v5 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v76 = &v70 - v10;
  v11 = __chkstk_darwin(v9);
  v72 = &v70 - v12;
  __chkstk_darwin(v11);
  v73 = &v70 - v13;
  v14 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v70 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v71 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v74 = &v70 - v24;
  __chkstk_darwin(v23);
  v26 = &v70 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  type metadata accessor for XPCServer();
  v78 = a3;
  _Block_copy(a3);
  v77 = sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v79 & 1;
    _os_log_impl(&_mh_execute_header, v28, v29, "calling collectDiagnostics(%{BOOL}d)", v30, 8u);
  }

  v31 = *(v19 + 8);
  v31(v26, v18);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10005CBC8;
  *(v32 + 24) = v27;

  v33 = sub_10004ED44(2, sub_10005CC08, v32);

  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

  v70 = v27;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = type metadata accessor for TaskPriority();
    v37 = *(*(v36 - 8) + 56);
    v37(v17, 1, 1, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v35;
    *(v38 + 40) = 0;
    sub_100080ECC(0, 0, v17, &unk_100087380, v38);

    sub_10000D2CC(a2 + 80, v81);
    sub_10000CED0(&qword_1000ABEA8, &qword_100087388);
    type metadata accessor for CoreDataDatabase();
    if (swift_dynamicCast())
    {
      v39 = [*(v80 + 16) persistentStoreCoordinator];
      if (v39)
      {
        v40 = v39;
        v37(v17, 1, 1, v36);
        v41 = swift_allocObject();
        v42 = v79 & 1;
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 32) = v42;
        *(v41 + 40) = v40;
        *(v41 + 48) = sub_10005CBC8;
        *(v41 + 56) = v70;

        sub_100080ECC(0, 0, v17, &unk_100087398, v41);

LABEL_20:

        return;
      }

      v57 = v71;
      static LoggedObject.logger.getter();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "CoreDataDatabase has no coordinator", v60, 2u);
      }

      v31(v57, v18);
      v61 = type metadata accessor for URL();
      v62 = *(v61 - 8);
      v63 = v73;
      (*(v62 + 56))(v73, 1, 1, v61);
      sub_10005CCD4();
      swift_allocError();
      *v64 = 0xD000000000000023;
      *(v64 + 8) = 0x8000000100089870;
      *(v64 + 16) = 0;
      v65 = v72;
      sub_100013358(v63, v72, &qword_1000AADD8, &qword_1000855A8);
      v67 = 0;
      if ((*(v62 + 48))(v65, 1, v61) != 1)
      {
        URL._bridgeToObjectiveC()(v66);
        v67 = v68;
        (*(v62 + 8))(v65, v61);
      }

      v69 = _convertErrorToNSError(_:)();
      (v78)[2](v78, v67, v69);

      v56 = v63;
    }

    else
    {
      v43 = v74;
      static LoggedObject.logger.getter();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Database is not a CoreDataDatabase", v46, 2u);
      }

      v31(v43, v18);
      v47 = type metadata accessor for URL();
      v48 = *(v47 - 8);
      v49 = v76;
      (*(v48 + 56))(v76, 1, 1, v47);
      sub_10005CCD4();
      swift_allocError();
      *v50 = 0xD000000000000022;
      *(v50 + 8) = 0x8000000100089840;
      *(v50 + 16) = 0;
      v51 = v75;
      sub_100013358(v49, v75, &qword_1000AADD8, &qword_1000855A8);
      v53 = 0;
      if ((*(v48 + 48))(v51, 1, v47) != 1)
      {
        URL._bridgeToObjectiveC()(v52);
        v53 = v54;
        (*(v48 + 8))(v51, v47);
      }

      v55 = _convertErrorToNSError(_:)();
      (v78)[2](v78, v53, v55);

      v56 = v49;
    }

    sub_10000D620(v56, &qword_1000AADD8, &qword_1000855A8);
    goto LABEL_20;
  }

  _Block_release(v78);
  __break(1u);
}

uint64_t sub_10005CB90()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CBD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CC10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_10005A080(a1, v4, v5, v6, v7);
}

unint64_t sub_10005CCD4()
{
  result = qword_1000ABEB0;
  if (!qword_1000ABEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABEB0);
  }

  return result;
}

uint64_t sub_10005CD28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005CD70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_100059968(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10005CE48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005CE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100059FF4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_10005CF58()
{
  result = qword_1000AADD0;
  if (!qword_1000AADD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AADD0);
  }

  return result;
}

uint64_t sub_10005CFAC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10000CED0(&qword_1000AB0C8, &qword_100085F18) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v8, 1, v11))
  {
    (*(v12 + 8))(v0 + v8, v11);
  }

  v13 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16, v3 | v7 | 7);
}

uint64_t sub_10005D170(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D1E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10000CED0(&qword_1000AB0C8, &qword_100085F18) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001DBDC;

  return sub_1000592C8(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_10005D380()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10005D48C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001DBDC;

  return sub_100058B34(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t sub_10005D5E0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 16);

  return _swift_deallocObject(v0, v7 + 24, v3 | 7);
}

uint64_t sub_10005D6E8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = v8 + v7;
  v10 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v9);
  v14 = v1[4];
  v16 = *(v1 + v10 + 8);
  v15 = *(v1 + v10 + 16);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10001DBDC;

  return sub_100057BD0(a1, v11, v12, v14, v1 + v6, v1 + v8, v13, v16);
}

uint64_t sub_10005D844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10005D86C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_10000D330(v0 + 7);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005D8BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100081664(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_10005D994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_1000570BC(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10005DA6C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_10005DAA8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000D330(v0 + 4);
  v2 = v0[10];

  v3 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10005DAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_100056A54(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10005DBD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DC08()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D130;

  return sub_100034FA8();
}

uint64_t sub_10005DCB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005DCF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100056570(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005DDBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005DE0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100055E4C(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_10005DEE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_10005DF18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000D330(v0 + 4);
  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005DF60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_100055640(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_10005E024()
{
  v20 = type metadata accessor for Date();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v18 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v19 = type metadata accessor for UUID();
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v6 = (v18 + v3 + v5) & ~v5;
  v7 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for EventWriterScope();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = v2 | v5 | v10;
  v13 = (*(v9 + 64) + v11 + 10) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v18, v20);
  (*(v4 + 8))(v0 + v6, v19);
  v15 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);
  v16 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16, v12 | 7);
}

uint64_t sub_10005E234(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = v5;
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for EventWriterScope() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  v14 = (v13 + 10) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = *(v1 + v10);
  v24 = *(v1 + v9);
  v16 = (v1 + v13);
  LOBYTE(v5) = *v16;
  LOBYTE(v9) = v16[1];
  v17 = v16[2];
  v19 = *(v1 + v14);
  v18 = *(v1 + v14 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_10001DBDC;

  return sub_100054834(a1, v22, v15, v1 + v25, v1 + v8, v24, v23, v1 + v12);
}

uint64_t sub_10005E474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005E4BC()
{
  v1 = type metadata accessor for EventWriterScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  sub_10000D330(v0 + 5);
  v8 = v0[10];

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005E5B0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for EventWriterScope() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 10) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[3];
  v19 = v1[2];
  v8 = v1[4];
  v9 = v1[10];
  v10 = v1 + v6;
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = *(v1 + v7);
  v15 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10001DBDC;

  return sub_100053D2C(a1, v19, v18, v8, (v1 + 5), v9, v1 + v5, v11);
}

uint64_t sub_10005E71C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000D330(v0 + 4);
  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005E76C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001DBDC;

  return sub_100053BB8(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_10005E844(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_100053648(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

uint64_t sub_10005E928(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, 0, a1);
}

uint64_t sub_10005E95C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005E9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_1000530BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10005EA78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_10000D330((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005EB5C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001DBDC;

  return sub_1000523E8(a1, v6, v7, v1 + 32, v1 + v5, v9, v10);
}

uint64_t sub_10005EC98()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005ECEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10000D330(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  sub_10000D330(v0 + 12);
  v4 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10005ED4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001DBDC;

  return sub_10005159C(a1, v4, v5, v1 + 32, v6, v7, v8, v1 + 96);
}

uint64_t sub_10005EE38(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000D130;

  return sub_100017CD8(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10005EF18()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v10 | 7);
}

uint64_t sub_10005F098(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v9);
  v13 = *(v1 + v10);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v17 = *(v1 + v11);
  v16 = *(v1 + v11 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10001DBDC;

  return sub_10005055C(a1, v14, v15, v1 + v5, v1 + v8, v12, v13, v17);
}

uint64_t sub_10005F254()
{
  v1 = type metadata accessor for EventWriterScope();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  sub_10000D330(v0 + 5);
  v8 = v0[10];

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005F348(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventWriterScope() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[10];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001DBDC;

  return sub_10004FCC8(a1, v7, v8, v9, (v1 + 5), v10, v1 + v6, v12);
}

uint64_t sub_10005F49C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10005F4DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000D330(v0 + 6);
  v3 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10005F52C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001DBDC;

  return sub_10004F964(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

void *sub_10005F608(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_10005F654(uint64_t a1, unsigned int a2)
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

uint64_t sub_10005F69C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10005F7F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v5);
  v16 = &v15[OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_clientName];
  *v16 = a1;
  v16[1] = a2;
  *&v15[OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_numEventsToUpload] = a3;
  v15[OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_attributedToFakeData] = a4;
  v41.receiver = v15;
  v41.super_class = v5;

  v17 = objc_msgSendSuper2(&v41, "init");
  type metadata accessor for MetricsManager();
  static MetricsManager.sharedInstance.getter();
  v18 = v17;
  MetricsManager.submitLogEvent(_:error:)();

  sub_10005FE8C();
  static LoggedObject.logger.getter();
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v20, v21))
  {

    return (*(v11 + 8))(v14, v10);
  }

  v22 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v40 = v37;
  v38 = v22;
  *v22 = 136315138;
  v23 = sub_10005FB60();
  v24 = *(v23 + 16);
  if (!v24)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  HIDWORD(v32) = v21;
  v33 = v19;
  v34 = v11;
  v35 = v10;
  v25 = sub_100032ABC(v24, 0);
  v36 = sub_100033338(&v39, v25 + 4, v24, v23);

  sub_1000123C4();
  if (v36 == v24)
  {
    v11 = v34;
    v10 = v35;
    v19 = v33;
    LOBYTE(v21) = BYTE4(v32);
LABEL_7:
    v39 = v25;
    sub_100011900(&v39);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v26 = Array.description.getter();
    v28 = v27;

    v29 = sub_100035120(v26, v28, &v40);

    v30 = v38;
    *(v38 + 1) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Submitted EventUploadRequestLogEvent: %s", v30, 0xCu);
    sub_10000D330(v37);

    return (*(v11 + 8))(v14, v10);
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_10005FB60()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085D10;
  *(inited + 32) = 0x65757165526D756ELL;
  *(inited + 40) = 0xEB00000000737473;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = 0x614E746E65696C63;
  *(inited + 64) = 0xEA0000000000656DLL;
  v2 = *(v0 + OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_clientName);
  v3 = *(v0 + OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_clientName + 8);
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithString:v5];

  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000100089AF0;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_numEventsToUpload)];
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000100088B40;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + OBJC_IVAR____TtC11homeeventsd26EventUploadRequestLogEvent_attributedToFakeData)];
  v7 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_10005FE8C()
{
  result = qword_1000ABF28;
  if (!qword_1000ABF28)
  {
    type metadata accessor for EventUploadRequestLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABF28);
  }

  return result;
}

uint64_t sub_10005FEE0()
{
  type metadata accessor for XPCServer();
  sub_10000E874();
  return static LoggedObject.logger.getter();
}

uint64_t sub_10005FF20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 129) = a5;
  *(v5 + 128) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = type metadata accessor for Logger();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100060004, 0, 0);
}

uint64_t sub_100060004()
{
  if (*(v0 + 128) == 1)
  {
    v1 = *(v0 + 72);
    type metadata accessor for XPCServer();
    sub_10000E874();
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Asked to upload only, skipping local database save", v4, 2u);
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 24);

    (*(v7 + 8))(v5, v6);

    return _swift_task_switch(sub_1000601B0, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_100060660;
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 16);

    return sub_10002869C(v12, v10);
  }
}

uint64_t sub_1000601B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + 208);
  *(v3 + 80) = v4;
  if (v4)
  {

    v4 = sub_10006022C;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10006022C()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_100036514(sub_100060A88, v4, v3);

  sub_10000CED0(&qword_1000ABF30, &qword_100087728);
  v6 = (sub_10000CED0(&qword_1000ABF38, &qword_100087F40) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100085330;
  v10 = v9 + v8;
  v11 = v6[14];
  v12 = type metadata accessor for EventWriterScope();
  (*(*(v12 - 8) + 16))(v10, v2, v12);
  *(v10 + v11) = v5;
  v13 = sub_1000809B8(v9);
  v0[11] = v13;
  swift_setDeallocating();
  sub_100060AA8(v10);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_100060434;

  return sub_10006C0E8(v13);
}

uint64_t sub_100060434()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1000605D0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100060550;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100060550()
{
  v1 = v0[10];

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000605D0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100060660()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_1000607BC, 0, 0);
  }
}

uint64_t sub_1000607BC()
{
  v1 = *(v0 + 129);
  type metadata accessor for XPCServer();
  sub_10000E874();
  if (v1 == 1)
  {
    v2 = *(v0 + 64);
    static LoggedObject.logger.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Asked to save only, skipping cloud upload request", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 56);
    static LoggedObject.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Requesting background upload of events to CloudKit database", v18, 2u);
    }

    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    v21 = *(v0 + 40);
    v22 = *(v0 + 24);

    (*(v20 + 8))(v19, v21);

    return _swift_task_switch(sub_1000609E8, v22, 0);
  }
}

uint64_t sub_1000609E8()
{
  v1 = v0[15];
  v2 = v0[3];
  sub_100028B58(0, 1);
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100060AA8(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000ABF38, &qword_100087F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100060B20()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000133C0((v0 + 2), v14);
  sub_10000D224(v14, v14[3]);
  v8 = dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter();
  sub_10000D330(v14);
  if (v8)
  {
    os_unfair_lock_lock((v1 + 96));
    sub_100061450((v1 + 104), v1);
    os_unfair_lock_unlock((v1 + 96));
  }

  else
  {
    sub_1000630B4(&qword_1000ABCA0, v9, type metadata accessor for EventDigestController);
    static LoggedObject.logger.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Refusing to start as feature flag is disabled", v12, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100060D54()
{
  sub_1000133C0(v0[7] + 16, (v0 + 2));
  v1 = v0[6];
  sub_10000D224(v0 + 2, v0[5]);
  v2 = dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter();
  sub_10000D330(v0 + 2);
  if (v2)
  {
    v3 = v0[7];
    os_unfair_lock_lock((v3 + 96));
    v4 = *(v3 + 104);
    v0[8] = v4;

    os_unfair_lock_unlock((v3 + 96));
    if (v4)
    {
      v5 = async function pointer to Task.value.getter[1];
      v6 = swift_task_alloc();
      v0[9] = v6;
      v7 = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
      *v6 = v0;
      v6[1] = sub_100061000;

      return Task.value.getter(v0 + 11, v4, &type metadata for Bool, v7, &protocol self-conformance witness table for Error);
    }

    v8 = type metadata accessor for HomeKitEventsError();
    sub_1000630B4(&qword_1000ABA30, 255, &type metadata accessor for HomeKitEventsError);
    v9 = swift_allocError();
    v11 = v12;
    strcpy(v12, "Never started");
    *(v12 + 14) = -4864;
  }

  else
  {
    v8 = type metadata accessor for HomeKitEventsError();
    sub_1000630B4(&qword_1000ABA30, 255, &type metadata accessor for HomeKitEventsError);
    v9 = swift_allocError();
    v11 = v10;
    *v10 = 0xD000000000000018;
    v10[1] = 0x8000000100089BD0;
  }

  (*(*(v8 - 8) + 104))(v11, enum case for HomeKitEventsError.unexpected(_:), v8);
  v13 = v0[1];

  return v13(v9, 1);
}

uint64_t sub_100061000()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10006117C;
  }

  else
  {
    v3 = sub_100061114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100061114()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3(v2, 0);
}

uint64_t sub_10006117C()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3(v1, 1);
}

uint64_t sub_1000611F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10001DA7C(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D620(v11, &qword_1000AAD30, &qword_100085540);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100061450(uint64_t *a1, uint64_t a2)
{
  v5 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1000630B4(&qword_1000ABCA0, v13, type metadata accessor for EventDigestController);
    static LoggedObject.logger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v22[1] = v2;
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Starting", v18, 2u);
    }

    (*(v10 + 8))(v15, v9);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a2;

    v21 = sub_1000611F8(0, 0, v8, &unk_100087838, v20);
    result = sub_10000D620(v8, &qword_1000AAD30, &qword_100085540);
    *a1 = v21;
  }

  return result;
}

uint64_t sub_1000616FC()
{
  sub_10001341C(v0 + 16);
  sub_10000D330((v0 + 56));
  sub_100063084(v0 + 104);

  return swift_deallocClassInstance();
}

char *sub_100061768()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000CED0(&qword_1000ABFF0, &qword_100087788);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1000617A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100061800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100061870(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100061904;

  return sub_100061A78();
}

uint64_t sub_100061904(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100061A54, 0, 0);
  }
}

uint64_t sub_100061A78()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100061BB4, 0, 0);
}

uint64_t sub_100061BB4(uint64_t a1, uint64_t a2)
{
  v3 = v2[13];
  v4 = v2[3];
  v2[14] = sub_1000630B4(&qword_1000ABCA0, a2, type metadata accessor for EventDigestController);
  static LoggedObject.logger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Running", v7, 2u);
  }

  v9 = v2[12];
  v8 = v2[13];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[3];

  v13 = *(v11 + 8);
  v2[15] = v13;
  v13(v8, v10);
  static LoggedObject.logger.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Preparing", v16, 2u);
  }

  v17 = v2[12];
  v18 = v2[4];
  v19 = v2[5];
  v20 = v2[2];

  v13(v17, v18);
  v21 = *sub_10000D224((v20 + 56), *(v20 + 80));
  v22 = swift_task_alloc();
  v2[16] = v22;
  *v22 = v2;
  v22[1] = sub_100061DFC;

  return sub_10000EB14();
}

uint64_t sub_100061DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[12];
    v5 = v2[13];
    v8 = v2[10];
    v7 = v2[11];
    v10 = v2[8];
    v9 = v2[9];
    v13 = v2 + 6;
    v11 = v2[6];
    v12 = v13[1];

    v14 = *(v4 + 8);

    return v14(0);
  }

  else
  {

    return _swift_task_switch(sub_100061FA0, 0, 0);
  }
}

uint64_t sub_100061FA0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[3];
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Creating", v6, 2u);
  }

  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  v7(v8, v9);
  sub_10000D224((v11 + 56), *(v11 + 80));
  v12 = _s15DefaultDelegateCMa(0);
  v0[17] = v12;
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_10006219C;

  return (sub_10002EE24)(v12, &off_1000A2F40);
}

uint64_t sub_10006219C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_100062DBC;
  }

  else
  {
    v5 = sub_1000622B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000622B4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);
  if (*(v0 + 200) == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 24);
    static LoggedObject.logger.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Publishing", v7, 2u);
    }

    v8 = *(v0 + 120);
    v9 = *(v0 + 80);
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    v12 = *(v0 + 16);

    v8(v9, v10);
    sub_10000D224((v12 + 56), *(v12 + 80));
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_1000625D4;
    v14 = *(v0 + 136);

    return (sub_100034CDC)(v14, &off_1000A2F40);
  }

  else
  {
    v16 = *(v0 + 72);
    v17 = *(v0 + 24);
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cleaning up", v20, 2u);
    }

    v21 = *(v0 + 120);
    v22 = *(v0 + 72);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 16);

    v21(v22, v23);
    v26 = *sub_10000D224((v25 + 56), *(v25 + 80));
    v27 = swift_task_alloc();
    *(v0 + 176) = v27;
    *v27 = v0;
    v27[1] = sub_100062844;

    return sub_100082738();
  }
}

uint64_t sub_1000625D4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100062F20;
  }

  else
  {
    v3 = sub_1000626E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000626E8()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[3];
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up", v6, 2u);
  }

  v7 = v0[15];
  v8 = v0[9];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  v7(v8, v9);
  v12 = *sub_10000D224((v11 + 56), *(v11 + 80));
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_100062844;

  return sub_100082738();
}

uint64_t sub_100062844()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_100062940, 0, 0);
}

uint64_t sub_100062940()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished with result: %{BOOL}d", v7, 8u);
  }

  v8 = *(v0 + 120);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 56);
  v21 = *(v0 + 48);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);

  v8(v13, v15);

  v16 = *(v0 + 8);
  v17 = *(v0 + 200);

  return v16(v17);
}

uint64_t sub_100062AD0()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return _swift_task_switch(sub_100062BCC, 0, 0);
}

uint64_t sub_100062BCC()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[3];
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished with error: %@", v8, 0xCu);
    sub_10000D620(v9, &unk_1000AB7D0, &qword_100085510);
  }

  v11 = v0[23];
  v12 = v0[15];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];

  v12(v13, v15);
  swift_willThrow();
  v16 = v0[23];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[8];
  v21 = v0[9];
  v24 = v0[6];
  v23 = v0[7];

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_100062DBC()
{
  v0[23] = v0[19];
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[3];
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up after error", v6, 2u);
  }

  v7 = v0[15];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  v7(v8, v9);
  v12 = *sub_10000D224((v11 + 56), *(v11 + 80));
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_100062AD0;

  return sub_100082738();
}

uint64_t sub_100062F20()
{
  v0[23] = v0[21];
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[3];
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up after error", v6, 2u);
  }

  v7 = v0[15];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  v7(v8, v9);
  v12 = *sub_10000D224((v11 + 56), *(v11 + 80));
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_100062AD0;

  return sub_100082738();
}

uint64_t sub_1000630B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000630FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006313C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D130;

  return sub_100061870(a1);
}

void sub_1000631F0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_10000CED0(&qword_1000ABFF8, &qword_100087868);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CED0(&qword_1000ABFF8, &qword_100087868);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100063294(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_10000CED0(&qword_1000ABFF8, &qword_100087868);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100063360, 0, 0);
}

uint64_t sub_100063360()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 22;
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v12 = v1[25];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100063524;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10000CF2C(v1 + 14);
  type metadata accessor for CKAccountStatus(0);
  v1[29] = v10;
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000631F0;
  v1[13] = &unk_1000A3FD8;
  [v12 accountStatusWithCompletionHandler:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100063524()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_100063854;
  }

  else
  {
    v3 = sub_100063634;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100063634()
{
  v1 = v0[22];
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = v0[28];

        v3 = v0[1];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_9:
    v4 = v0[29];
    _StringGuts.grow(_:)(25);
    v0[20] = 0;
    v0[21] = 0xE000000000000000;
    v5._object = 0x8000000100089C30;
    v5._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v5);
    v0[24] = v1;
    _print_unlocked<A, B>(_:_:)();
    v6 = v0[20];
    v7 = v0[21];
LABEL_13:
    sub_1000638E0();
    swift_allocError();
    *v12 = v6;
    v12[1] = v7;
    goto LABEL_14;
  }

  switch(v1)
  {
    case 2:
      sub_1000638E0();
      swift_allocError();
      *v8 = xmmword_100087850;
      break;
    case 3:
      sub_1000638E0();
      swift_allocError();
      *v9 = 0;
      v9[1] = 0;
      break;
    case 4:
      goto LABEL_9;
    default:
LABEL_12:
      v10 = v0[29];
      _StringGuts.grow(_:)(28);
      v0[18] = 0;
      v0[19] = 0xE000000000000000;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      v11._object = 0x8000000100089C10;
      String.append(_:)(v11);
      v0[23] = v1;
      _print_unlocked<A, B>(_:_:)();
      v6 = v0[18];
      v7 = v0[19];
      goto LABEL_13;
  }

LABEL_14:
  swift_willThrow();
  v13 = v0[28];

  v3 = v0[1];
LABEL_15:

  return v3();
}

uint64_t sub_100063854()
{
  v1 = v0[30];
  swift_willThrow();
  v2 = v0[30];
  v3 = v0[28];

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000638E0()
{
  result = qword_1000AC000;
  if (!qword_1000AC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC000);
  }

  return result;
}

id sub_100063934()
{
  v3 = 0;
  if ([v0 setTaskExpiredWithRetryAfter:&v3 error:?])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000639DC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10004CB28;
    v7[3] = &unk_1000A4038;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  [v4 setExpirationHandler:v5];
  _Block_release(v5);
  return sub_10003FB64(a1);
}

uint64_t sub_100063AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for EventRecord.DecodedEvent();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100063C34, 0, 0);
}

uint64_t sub_100063C34()
{
  v1 = sub_100066850(*(v0 + 16), *(v0 + 24));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 56);
    v5 = v1;
    sub_10003E718(0, v3, 0);
    v23 = type metadata accessor for SomeEvent();
    v6 = *(v23 - 8);
    v22 = *(v6 + 16);
    v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v21 = *(v6 + 72);
    v20 = enum case for EventRecord.DecodedEvent.someEvent(_:);
    do
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 48);
      v22(v8, v7, v23);
      (*(v4 + 104))(v8, v20, v9);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10003E718(v10 > 1, v11 + 1, 1);
      }

      *(v0 + 112) = _swiftEmptyArrayStorage;
      v12 = *(v0 + 64);
      v13 = *(v0 + 48);
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v7 += v21;
      --v3;
    }

    while (v3);

    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_100063ED0;
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);

    return sub_10002869C(_swiftEmptyArrayStorage, v15);
  }

  else
  {

    v17 = *(v0 + 88);
    v18 = *(v0 + 64);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100063ED0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 64);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100064048, 0, 0);
  }
}

uint64_t sub_100064048()
{
  v1 = v0[11];
  type metadata accessor for XPCServer();
  sub_10000E874();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requesting background upload of events to CloudKit database", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[4];

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_100064170, v8, 0);
}

uint64_t sub_100064170()
{
  v1 = v0[13];
  v2 = v0[4];
  sub_100028B58(0, 1);
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100064208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[37] = a2;
  v5 = sub_10000CED0(&qword_1000AC008, &qword_100087908);
  v4[40] = v5;
  v6 = *(v5 - 8);
  v4[41] = v6;
  v7 = *(v6 + 64) + 15;
  v4[42] = swift_task_alloc();
  v8 = type metadata accessor for RecordType();
  v4[43] = v8;
  v9 = *(v8 - 8);
  v4[44] = v9;
  v10 = *(v9 + 64) + 15;
  v4[45] = swift_task_alloc();
  v11 = sub_10000CED0(&qword_1000AB800, &qword_100086C38);
  v4[46] = v11;
  v12 = *(v11 - 8);
  v4[47] = v12;
  v13 = *(v12 + 64) + 15;
  v4[48] = swift_task_alloc();

  return _swift_task_switch(sub_10006439C, 0, 0);
}

uint64_t sub_10006439C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 18;
  v5 = v0 + 34;
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[46];
  v11 = v1[37];
  v12 = v1[38];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100064570;
  swift_continuation_init();
  v1[25] = v8;
  v9 = sub_10000CF2C(v1 + 22);
  sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
  v1[49] = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v7, v8);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_100034C2C;
  v1[21] = &unk_1000A40E0;
  [v11 fetchRecordWithID:v12 completionHandler:v4];
  (*(v6 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100064570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_100064BF8;
  }

  else
  {
    v3 = sub_100064680;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100064680()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = v0[34];
  v5 = CKRecord.recordType.getter();
  v7 = v6;

  static EncryptionKeyRecord.recordType.getter();
  v8 = RecordType.rawValue.getter();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (v5 == v8 && v7 == v10)
  {
    swift_bridgeObjectRelease_n();
LABEL_8:
    v13 = v0[49];
    v14 = v0[41];
    v15 = v0[42];
    v16 = v0[40];
    v29 = v0[37];
    v30 = v0[38];

    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_100064A64;
    swift_continuation_init();
    v0[33] = v16;
    v17 = sub_10000CF2C(v0 + 30);
    sub_10000D544(0, &qword_1000AB8F0, CKRecordID_ptr);
    CheckedContinuation.init(continuation:function:)();
    (*(v14 + 32))(v17, v15, v16);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100064DC0;
    v0[29] = &unk_1000A4108;
    [v29 deleteRecordWithID:v30 completionHandler:v0 + 26];
    (*(v14 + 8))(v17, v16);

    return _swift_continuation_await(v0 + 10);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_8;
  }

  v18 = v0[39];
  _StringGuts.grow(_:)(38);

  type metadata accessor for UUID();
  sub_10006569C(&qword_1000AB0D8, &type metadata accessor for UUID);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._object = 0x8000000100089C50;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = v7;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 34;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  sub_1000656E4();
  swift_allocError();
  *v23 = 0x2064726F636552;
  *(v23 + 8) = 0xE700000000000000;
  *(v23 + 16) = 2;
  swift_willThrow();
  v24 = v0[48];
  v25 = v0[45];
  v26 = v0[42];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100064A64()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_100064D34;
  }

  else
  {
    v3 = sub_100064B74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100064B74()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100064BF8()
{
  v1 = v0[50];
  swift_willThrow();
  _s3__C4CodeOMa_0(0);
  v0[35] = 11;
  swift_errorRetain();
  sub_10006569C(&qword_1000AAE90, _s3__C4CodeOMa_0);
  v2 = static _ErrorCodeProtocol.~= infix(_:_:)();

  v3 = v0[50];
  if (v2)
  {
    v4 = v0[50];

    v5 = v0[48];
    v6 = v0[45];
    v7 = v0[42];
  }

  else
  {
    v9 = v0[48];
    v10 = v0[45];
    v11 = v0[42];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100064D34()
{
  v1 = v0[51];
  swift_willThrow();
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[42];

  v6 = v0[1];

  return v6();
}

void sub_100064DC0(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AC008, &qword_100087908);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AC008, &qword_100087908);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100064E70(uint64_t a1)
{
  v2 = [objc_allocWithZone(CKOperationGroup) init];
  v19[2] = 0;
  v19[3] = 0xE000000000000000;
  v19[0] = 47;
  v19[1] = 0xE100000000000000;
  v18[2] = v19;
  v3 = sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v18, 0xD000000000000033, 0x8000000100089CA0, "ID8@NSError16");
  if (!v3[2])
  {

    __break(1u);
    goto LABEL_6;
  }

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];

  v8 = static String._fromSubstring(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v19[0] = &type metadata for HMVCommandHandlers;
  sub_10000CED0(&qword_1000AC018, &qword_100087910);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14 = String._bridgeToObjectiveC()();

  [v2 setName:v14];

  [v2 setExpectedSendSize:1];
  result = [v2 defaultConfiguration];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = result;
  [result setContainer:a1];

  result = [v2 defaultConfiguration];
  if (result)
  {
    v17 = result;
    [result setQualityOfService:25];

    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100065094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Configuration.TargetCloudKitZone();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100065158, 0, 0);
}

uint64_t sub_100065158()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v23 = v0[4];
  v4 = v0[2];
  v0[8] = [v4 privateCloudDatabase];
  v5 = sub_100064E70(v4);
  v0[9] = v5;
  [v5 setExpectedReceiveSize:1];
  sub_10000D544(0, &qword_1000AB8F0, CKRecordID_ptr);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
  type metadata accessor for Configuration();
  (*(v2 + 104))(v1, enum case for Configuration.TargetCloudKitZone.default(_:), v3);
  v9 = static Configuration.zoneName(forHomeIdentifier:target:)();
  v11 = v10;
  (*(v2 + 8))(v1, v3);
  v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12._object = v13;
  v14._countAndFlagsBits = v9;
  v14._object = v11;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17 = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
  v0[10] = v17;
  v18 = swift_task_alloc();
  v0[11] = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v23;
  v19 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
  v20 = v5;
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = sub_100065390;

  return CKDatabase.configuredWith<A>(configuration:group:body:)();
}