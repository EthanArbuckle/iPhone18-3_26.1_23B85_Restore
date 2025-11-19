uint64_t sub_100065390()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100065538;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1000654B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000654B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100065538()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

uint64_t sub_1000655D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000D130;

  return sub_100064208(a1, a2, v7, v6);
}

uint64_t sub_10006569C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000656E4()
{
  result = qword_1000AC010;
  if (!qword_1000AC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC010);
  }

  return result;
}

id sub_100065740()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (&v15 - v6);
  URL._bridgeToObjectiveC()(v6);
  v9 = v8;
  v15 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v8 error:&v15];

  if (v1)
  {
    return v15;
  }

  v11 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_100036300();
  v12 = static _ErrorCodeProtocol.~= infix(_:_:)();

  v13 = *(v3 + 8);
  v13(v7, v2);
  if (v12)
  {
  }

  swift_errorRetain();
  static CocoaError.fileReadNoSuchFile.getter();
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (v13)(v7, v2);
  if (v14)
  {
  }

  return result;
}

uint64_t sub_10006593C(uint64_t a1, unint64_t a2)
{
  sub_10003F994(a1, a2);
  v4 = sub_1000659E4(a1, a2)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_1000659A8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1000659E4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10000D37C(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100035560(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_10000D37C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100065B60(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_100065D0C(uint64_t *a1, void *a2)
{
  v81 = a2;
  v82 = a1;
  v2 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  v4 = __chkstk_darwin(v2);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v69 - v7;
  __chkstk_darwin(v6);
  v76 = &v69 - v8;
  v9 = type metadata accessor for Logger();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  v11 = __chkstk_darwin(v9);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v69 - v14;
  __chkstk_darwin(v13);
  v72 = &v69 - v15;
  v16 = type metadata accessor for SomeAccessoryEvent();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v70 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v69 - v22;
  __chkstk_darwin(v21);
  v25 = &v69 - v24;
  v26 = type metadata accessor for SomeEvent();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v69 - v32;
  v34 = *(v27 + 16);
  v34(&v69 - v32, v82, v26);
  v35 = (*(v27 + 88))(v33, v26);
  if (v35 == enum case for SomeEvent.accessory(_:))
  {
    (*(v27 + 96))(v33, v26);
    (*(v17 + 32))(v25, v33, v16);
    v36 = *(v17 + 16);
    v36(v23, v25, v16);
    v37 = (*(v17 + 88))(v23, v16);
    if (v37 == enum case for SomeAccessoryEvent.contactSensor(_:) || v37 == enum case for SomeAccessoryEvent.door(_:) || v37 == enum case for SomeAccessoryEvent.garageDoor(_:) || v37 == enum case for SomeAccessoryEvent.lock(_:) || v37 == enum case for SomeAccessoryEvent.securitySystem(_:) || v37 == enum case for SomeAccessoryEvent.smokeDetector(_:))
    {
      goto LABEL_12;
    }

    if (v37 != enum case for SomeAccessoryEvent.thermostatAutomation(_:) && v37 != enum case for SomeAccessoryEvent.thermostatAutomationFailure(_:) && v37 != enum case for SomeAccessoryEvent.thermostatReducedEnergyAutomation(_:))
    {
      if (v37 == enum case for SomeAccessoryEvent.window(_:))
      {
LABEL_12:
        v38 = *(v17 + 8);
        v38(v25, v16);
        v38(v23, v16);
        return 1;
      }

      v83 = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v83 = 0xD000000000000011;
      v84 = 0x8000000100089D10;
      v36(v70, v25, v16);
      v68._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v68);

      goto LABEL_34;
    }

    v49 = *(v17 + 8);
    v49(v23, v16);
    v50 = v81[4];
    sub_10000D224(v81, v81[3]);
    if (dispatch thunk of FeaturesDataSource.isHomeActivityStateEnabled.getter())
    {
      v49(v25, v16);
      return 1;
    }

    type metadata accessor for XPCServer();
    sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer);
    v62 = v72;
    static LoggedObject.logger.getter();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Dropping event because HomeActivityState feature flag is not enabled", v65, 2u);
    }

    (*(v79 + 8))(v62, v80);
    v49(v25, v16);
  }

  else if (v35 == enum case for SomeEvent.homeActivityState(_:))
  {
    v40 = v81[4];
    sub_10000D224(v81, v81[3]);
    if (dispatch thunk of FeaturesDataSource.isHomeActivityStateEnabled.getter())
    {
      (*(v27 + 8))(v33, v26);
      return 1;
    }

    type metadata accessor for XPCServer();
    sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer);
    v45 = v73;
    static LoggedObject.logger.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Dropping event because HomeActivityState feature flag is not enabled", v48, 2u);
    }

    (*(v79 + 8))(v45, v80);
    (*(v27 + 8))(v33, v26);
  }

  else
  {
    if (v35 != enum case for SomeEvent.energyKit(_:))
    {
      v83 = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v83 = 0xD000000000000011;
      v84 = 0x8000000100089D10;
      v34(v31, v82, v26);
      v67._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v67);

LABEL_34:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    (*(v27 + 96))(v33, v26);
    v42 = v76;
    v41 = v77;
    v43 = v78;
    (*(v77 + 32))(v76, v33, v78);
    v44 = v81[4];
    sub_10000D224(v81, v81[3]);
    if (dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter())
    {
      (*(v41 + 8))(v42, v43);
      return 1;
    }

    type metadata accessor for XPCServer();
    sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer);
    v51 = v75;
    static LoggedObject.logger.getter();
    v52 = *(v41 + 16);
    v53 = v74;
    v52(v74, v42, v43);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v82;
      *v56 = 136315138;
      v52(v71, v53, v43);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      v60 = *(v41 + 8);
      v60(v53, v43);
      v61 = sub_100035120(v57, v59, &v83);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Dropping event because ActivityHistory2025 feature flag is not enabled: %s", v56, 0xCu);
      sub_10000D330(v82);

      (*(v79 + 8))(v75, v80);
      v60(v42, v43);
    }

    else
    {

      v66 = *(v41 + 8);
      v66(v53, v43);
      (*(v79 + 8))(v51, v80);
      v66(v42, v43);
    }
  }

  return 0;
}

uint64_t sub_100066850(uint64_t a1, void *a2)
{
  v118 = a2;
  v4 = type metadata accessor for SomeEvent();
  v112 = *(v4 - 8);
  v5 = *(v112 + 64);
  v6 = __chkstk_darwin(v4);
  v117 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v120 = &v107 - v9;
  __chkstk_darwin(v8);
  v124 = (&v107 - v10);
  v131 = type metadata accessor for Logger();
  v11 = *(v131 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v131);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v114 = &v107 - v17;
  v18 = __chkstk_darwin(v16);
  v111 = &v107 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v107 - v21;
  __chkstk_darwin(v20);
  v24 = &v107 - v23;
  v25 = type metadata accessor for XPCServer();
  v128 = sub_1000677FC(&qword_1000AAFD8, type metadata accessor for XPCServer);
  v129 = v25;
  static LoggedObject.logger.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v125 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v26, v27, "Creating %ld events", v29, 0xCu);
    v22 = v125;
  }

  else
  {
  }

  v31 = *(v11 + 8);
  v30 = v11 + 8;
  v127 = v31;
  v31(v24, v131);
  v32 = *(a1 + 16);
  v121 = sub_100022830(0, v32, 0, _swiftEmptyArrayStorage);
  if (!v32)
  {
    return v121;
  }

  v108 = v15;
  v122 = (v112 + 32);
  v115 = (v112 + 8);
  v110 = (v112 + 16);
  v34 = (a1 + 40);
  *&v33 = 136315138;
  v113 = v33;
  *&v33 = 136446210;
  v109 = v33;
  v35 = v2;
  v116 = v30;
  v36 = v120;
  v123 = v4;
  while (1)
  {
    v126 = v32;
    v37 = *(v34 - 1);
    v38 = *v34;
    sub_10003F994(v37, *v34);
    static LoggedObject.logger.getter();
    sub_10003F994(v37, v38);
    v39 = v22;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    sub_10000D37C(v37, v38);
    v42 = os_log_type_enabled(v40, v41);
    v130 = v38;
    v132 = v37;
    if (!v42)
    {

      v127(v39, v131);
      goto LABEL_19;
    }

    v43 = v35;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v140 = v45;
    *v44 = v113;
    sub_10003F994(v37, v38);
    v46 = sub_100065B60(v37, v38);
    v119 = v43;
    if (v47)
    {
      goto LABEL_17;
    }

    DynamicType = v37;
    v137 = v38;
    sub_10003F994(v37, v38);
    sub_10000CED0(&qword_1000AC028, &qword_100087918);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      sub_10000D620(&v133, &qword_1000AC030, &qword_100087920);
LABEL_16:
      v37 = v132;
      v38 = v130;
      v46 = sub_10006593C(v132, v130);
LABEL_17:
      v50 = v46;
      v49 = v47;
      sub_10000D37C(v37, v38);
      goto LABEL_18;
    }

    sub_1000111BC(&v133, &v138);
    sub_10000D224(&v138, v139);
    if ((dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter() & 1) == 0)
    {
      sub_10000D330(&v138);
      goto LABEL_16;
    }

    sub_10000D37C(v132, v130);
    sub_10000D224(&v138, v139);
    v48 = v119;
    dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
    v119 = v48;
    v49 = *(&v133 + 1);
    v50 = v133;
    sub_10000D330(&v138);
LABEL_18:
    v51 = sub_100035120(v50, v49, &v140);

    *(v44 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v40, v41, "Attempting to decode event: '%s'", v44, 0xCu);
    sub_10000D330(v45);

    v127(v125, v131);
    v38 = v130;
    v37 = v132;
    v35 = v119;
    v36 = v120;
LABEL_19:
    v52 = v124;
    v53 = type metadata accessor for JSONDecoder();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000677FC(&qword_1000AC020, &type metadata accessor for SomeEvent);
    v56 = v123;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v35)
    {
      break;
    }

    v57 = *v122;
    (*v122)(v52, v36, v56);
    if (sub_100065D0C(v52, v118))
    {
      v119 = v57;
      SomeEvent.anyEvent.getter();
      v58 = v111;
      static LoggedObject.logger.getter();
      sub_10000D2CC(&v138, &v133);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v140 = v62;
        *v61 = v109;
        sub_10000D224(&v133, *(&v134 + 1));
        DynamicType = swift_getDynamicType();
        v137 = v135;
        sub_10000CED0(&qword_1000AC038, &qword_100087928);
        v63 = String.init<A>(describing:)();
        v65 = v64;
        sub_10000D330(&v133);
        v66 = sub_100035120(v63, v65, &v140);

        *(v61 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v59, v60, "Successfully created %{public}s event", v61, 0xCu);
        sub_10000D330(v62);
      }

      else
      {

        sub_10000D330(&v133);
      }

      v127(v58, v131);
      v67 = v114;
      static LoggedObject.logger.getter();
      sub_10000D2CC(&v138, &v133);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        DynamicType = v71;
        *v70 = v113;
        v72 = *(&v134 + 1);
        v73 = sub_10000D224(&v133, *(&v134 + 1));
        v74 = *(*(v72 - 8) + 64);
        __chkstk_darwin(v73);
        (*(v76 + 16))(&v107 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
        v77 = String.init<A>(describing:)();
        v79 = v78;
        v35 = 0;
        sub_10000D330(&v133);
        v80 = sub_100035120(v77, v79, &DynamicType);

        *(v70 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v68, v69, "%s", v70, 0xCu);
        sub_10000D330(v71);

        v127(v114, v131);
      }

      else
      {

        v127(v67, v131);
        sub_10000D330(&v133);
      }

      v81 = v130;
      v82 = v123;
      v83 = v124;
      v84 = v121;
      (*v110)(v117, v124, v123);
      v86 = v84[2];
      v85 = v84[3];
      if (v86 >= v85 >> 1)
      {
        v84 = sub_100022830(v85 > 1, v86 + 1, 1, v84);
      }

      sub_10000D37C(v132, v81);
      sub_10000D330(&v138);
      v87 = v112;
      (*(v112 + 8))(v83, v82);
      v84[2] = v86 + 1;
      v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v121 = v84;
      v119((v84 + v88 + *(v87 + 72) * v86), v117, v82);
      v36 = v120;
    }

    else
    {
      (*v115)(v52, v56);
      sub_10000D37C(v37, v38);
    }

    v34 += 2;
    v22 = v125;
    v32 = v126 - 1;
    if (v126 == 1)
    {
      return v121;
    }
  }

  v90 = v108;
  static LoggedObject.logger.getter();
  sub_10003F994(v37, v38);
  swift_errorRetain();
  v91 = v37;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  sub_10000D37C(v91, v38);
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v140 = v129;
    *v94 = 138543618;
    swift_errorRetain();
    v96 = _swift_stdlib_bridgeErrorToNSError();
    *(v94 + 4) = v96;
    *v95 = v96;
    *(v94 + 12) = 2080;
    sub_10003F994(v91, v38);
    v97 = sub_100065B60(v91, v38);
    if (v98)
    {
      v99 = v97;
      v100 = v98;
      v101 = v91;
      v102 = v38;
      sub_10000D37C(v101, v38);
      goto LABEL_41;
    }

    v128 = 0;
    DynamicType = v91;
    v137 = v38;
    v103 = v91;
    v102 = v38;
    sub_10003F994(v103, v38);
    sub_10000CED0(&qword_1000AC028, &qword_100087918);
    if (swift_dynamicCast())
    {
      sub_1000111BC(&v133, &v138);
      sub_10000D224(&v138, v139);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_10000D37C(v132, v38);
        sub_10000D224(&v138, v139);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v100 = *(&v133 + 1);
        v99 = v133;
        sub_10000D330(&v138);
        goto LABEL_41;
      }

      v119 = v35;
      sub_10000D330(&v138);
    }

    else
    {
      v119 = v35;
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      sub_10000D620(&v133, &qword_1000AC030, &qword_100087920);
    }

    v104 = v132;
    v99 = sub_10006593C(v132, v38);
    v100 = v105;
    sub_10000D37C(v104, v38);
LABEL_41:
    v106 = sub_100035120(v99, v100, &v140);

    *(v94 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v92, v93, "Failed to decode event: %{public}@, '%s'", v94, 0x16u);
    sub_10000D620(v95, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v129);

    v127(v108, v131);
  }

  else
  {
    v102 = v38;

    v127(v90, v131);
  }

  swift_willThrow();
  return sub_10000D37C(v132, v102);
}

uint64_t sub_1000677FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100067844(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006791C, 0, 0);
}

uint64_t sub_10006791C()
{
  v1 = v0[9];
  v0[10] = sub_10006A274();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching all record zones", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v0[11] = v9;
  v9(v5, v6);
  v10 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
  v11 = swift_task_alloc();
  v0[12] = v11;
  v12 = sub_10000CED0(&qword_1000AC058, &qword_100087988);
  *v11 = v0;
  v11[1] = sub_100067ABC;
  v13 = v0[3];

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, 0, v8, &unk_100087980, 0, v12);
}

uint64_t sub_100067ABC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100067EB8;
  }

  else
  {
    v3 = sub_100067BD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100067BD0()
{
  v30 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  static LoggedObject.logger.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v3 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v4, v5, "Found %ld zone(s)", v6, 0xCu);
  }

  else
  {
  }

  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 48) + 8;
  (*(v0 + 88))(*(v0 + 64), *(v0 + 40));
  static LoggedObject.logger.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 88);
  v15 = *(v0 + 56);
  v16 = *(v0 + 40);
  if (v13)
  {
    v28 = *(v0 + 88);
    v17 = swift_slowAlloc();
    v27 = v16;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    sub_10000D544(0, &qword_1000ABA00, CKRecordZone_ptr);
    v19 = Array.description.getter();
    v21 = sub_100035120(v19, v20, &v29);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v17, 0xCu);
    sub_10000D330(v18);

    v28(v15, v27);
  }

  else
  {

    v14(v15, v16);
  }

  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  v24 = *(v0 + 56);

  v25 = *(v0 + 8);

  return v25(v3);
}

uint64_t sub_100067EB8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100067F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100067FF4, 0, 0);
}

uint64_t sub_100067FF4()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[2];
  sub_10006A274();
  static LoggedObject.logger.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v12 = Array.description.getter();
    v14 = sub_100035120(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting zone(s) %s", v10, 0xCu);
    sub_10000D330(v11);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];
  v18 = swift_task_alloc();
  v0[8] = v18;
  v18[2] = v15;
  v18[3] = v16;
  v18[4] = v17;
  v19 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_100068230;
  v21 = v0[3];

  return CKDatabase.configuredWith<A>(configuration:group:body:)();
}

uint64_t sub_100068230()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10006A520;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10006A524;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100068410, 0, 0);
}

uint64_t sub_100068410()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[2];
  sub_10006A274();
  static LoggedObject.logger.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v12 = Array.description.getter();
    v14 = sub_100035120(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ensuring zone(s) exist %s", v10, 0xCu);
    sub_10000D330(v11);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[4];
  v16 = v0[2];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *(v17 + 16) = v16;
  v18 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_100068648;
  v20 = v0[3];

  return CKDatabase.configuredWith<A>(configuration:group:body:)();
}

uint64_t sub_100068648()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1000687C8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100068764;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100068764()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000687C8()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

void sub_100068834(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v21[2] = 0;
  v21[3] = 0xE000000000000000;
  v21[0] = 47;
  v21[1] = 0xE100000000000000;
  v20[2] = v21;
  v6 = sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v20, 0xD00000000000001BLL, 0x8000000100089D50, "v24@?0@NSArray8@NSError16");
  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
    v9 = v6[6];
    v10 = v6[7];

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v21[0] = &type metadata for ZoneUtils;
    sub_10000CED0(&qword_1000AC068, &qword_100087998);
    v16._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v16);

    v17 = String._bridgeToObjectiveC()();

    [v5 setName:v17];

    [v5 setExpectedSendSize:1];
    v18 = [objc_allocWithZone(CKOperationConfiguration) init];
    v19 = [a2 container];
    [v18 setContainer:v19];

    [v18 setQualityOfService:a3];
    [v5 setDefaultConfiguration:v18];
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_100068A54(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = sub_10000CED0(&qword_1000AC060, &qword_100087990);
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100068B7C, 0, 0);
}

uint64_t sub_100068B7C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v11 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100068D48;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10000CF2C(v1 + 14);
  sub_10000CED0(&qword_1000AC058, &qword_100087988);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100069074;
  v1[13] = &unk_1000A4130;
  [v11 fetchAllRecordZonesWithCompletionHandler:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100068D48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_100068ED0;
  }

  else
  {
    v3 = sub_100068E58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100068E58()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  **(v0 + 152) = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100068ED0()
{
  v1 = v0[27];
  v2 = v0[23];
  swift_willThrow();
  sub_10006A274();
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch all record zones: %{public}@", v6, 0xCu);
    sub_10000F32C(v7);
  }

  v9 = v0[26];
  v10 = v0[27];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v14 = v0[1];
  v15 = v0[27];

  return v14();
}

void sub_100069074(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_10000CED0(&qword_1000AC060, &qword_100087990);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000D544(0, &qword_1000ABA00, CKRecordZone_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000CED0(&qword_1000AC060, &qword_100087990);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10006913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for Logger();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100069208, 0, 0);
}

uint64_t sub_100069208()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v14 = v0[3];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      return CKDatabase.modifyRecordZones(saving:deleting:)(v3, v4);
    }

    v5 = 0;
    v6 = v0[3] + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = v0[3];
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v6 + 8 * v5);
      }

      v9 = v8;
      ++v5;
      [objc_allocWithZone(CKRecordZone) initWithZoneID:v8];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v5);
  }

  v0[8] = _swiftEmptyArrayStorage;
  v11 = async function pointer to CKDatabase.modifyRecordZones(saving:deleting:)[1];
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1000693B8;
  v13 = v0[2];
  v4 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage;

  return CKDatabase.modifyRecordZones(saving:deleting:)(v3, v4);
}

uint64_t sub_1000693B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[8];

  if (v1)
  {
    v8 = sub_1000697A8;
  }

  else
  {

    v4[11] = a1;
    v8 = sub_100069514;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100069514()
{
  v23 = v0;
  v1 = v0[10];
  v2 = sub_10006996C(v0[11], sub_10003FCD0);

  v3 = v0[7];
  if (*(v2 + 16))
  {
    sub_10006A274();
    static LoggedObject.logger.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    if (v6)
    {
      v21 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136446210;
      sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
      sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
      sub_10006A3E0();
      v12 = Dictionary.description.getter();
      v14 = sub_100035120(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Zone addition(s) failed: %{public}s", v10, 0xCu);
      sub_10000D330(v11);

      (*(v8 + 8))(v21, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    v18 = v0[6];
    v17 = v0[7];
    sub_10006A38C();
    swift_allocError();
    *v19 = v2;
    *(v19 + 8) = 2;
    swift_willThrow();

    v16 = v0[1];
  }

  else
  {
    v15 = v0[6];

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_1000697A8()
{
  v1 = v0[10];
  v2 = v0[6];
  sub_10006A274();
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "CloudKit add zone failed: %{public}@", v6, 0xCu);
    sub_10000F32C(v7);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];

  (*(v10 + 8))(v9, v11);
  v12 = v0[10];
  v13 = v0[6];
  v14 = v0[7];
  sub_10006A38C();
  swift_allocError();
  *v15 = v12;
  *(v15 + 8) = 0;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10006996C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(a1 + 56) + 16 * v14;
        if (*(v15 + 8) == 1)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v32 = v4;
      v34 = a2;
      v17 = *(*(a1 + 48) + 8 * v14);
      v18 = *v15;
      v19 = *(&_swiftEmptyDictionarySingleton + 2);
      v33 = *v15;
      if (*(&_swiftEmptyDictionarySingleton + 3) <= v19)
      {
        v21 = v17;
        v34(v18, 1);
        sub_10007E070(v19 + 1, 1);
      }

      else
      {
        v20 = v17;
        v34(v18, 1);
      }

      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptyDictionarySingleton + 5));
      v22 = &_swiftEmptyDictionarySingleton + 64;
      v23 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8)) == 0)
      {
        break;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v27 = v33;
      a2 = v34;
LABEL_24:
      *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
      *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v26) = v17;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v26) = v27;
      ++*(&_swiftEmptyDictionarySingleton + 2);
      v4 = v32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v28 = 0;
    v29 = (63 - v23) >> 6;
    v27 = v33;
    a2 = v34;
    while (++v25 != v29 || (v28 & 1) == 0)
    {
      v30 = v25 == v29;
      if (v25 == v29)
      {
        v25 = 0;
      }

      v28 |= v30;
      v31 = *&v22[8 * v25];
      if (v31 != -1)
      {
        v26 = __clz(__rbit64(~v31)) + (v25 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= v10)
      {

        return &_swiftEmptyDictionarySingleton;
      }

      v9 = *(v6 + 8 * v16);
      ++v12;
      if (v9)
      {
        v12 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100069BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v10 = async function pointer to CKDatabase.modifyRecordZones(saving:deleting:)[1];
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_100069CE0;

  return CKDatabase.modifyRecordZones(saving:deleting:)(_swiftEmptyArrayStorage, a5);
}

uint64_t sub_100069CE0(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 48);
  v7 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v8 = sub_10006A0B0;
  }

  else
  {
    *(v5 + 64) = a2;

    v8 = sub_100069E1C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100069E1C()
{
  v23 = v0;
  v1 = v0[7];
  v2 = sub_10006996C(v0[8], sub_10004A354);

  v3 = v0[5];
  if (*(v2 + 16))
  {
    sub_10006A274();
    static LoggedObject.logger.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    if (v6)
    {
      v21 = v0[5];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136446210;
      sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
      sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
      sub_10006A3E0();
      v12 = Dictionary.description.getter();
      v14 = sub_100035120(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Zone deletion(s) failed: %{public}s", v10, 0xCu);
      sub_10000D330(v11);

      (*(v8 + 8))(v21, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    v18 = v0[4];
    v17 = v0[5];
    sub_10006A38C();
    swift_allocError();
    *v19 = v2;
    *(v19 + 8) = 2;
    swift_willThrow();

    v16 = v0[1];
  }

  else
  {
    v15 = v0[4];

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_10006A0B0()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_10006A274();
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "CloudKit delete failed: %{public}@", v6, 0xCu);
    sub_10000F32C(v7);
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  (*(v10 + 8))(v9, v11);
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  sub_10006A38C();
  swift_allocError();
  *v15 = v12;
  *(v15 + 8) = 0;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

unint64_t sub_10006A274()
{
  result = qword_1000AC040;
  if (!qword_1000AC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC040);
  }

  return result;
}

uint64_t sub_10006A2C8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001DBDC;

  return sub_100069BC8(a1, a2, v6, v7, v8);
}

unint64_t sub_10006A38C()
{
  result = qword_1000AC048;
  if (!qword_1000AC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC048);
  }

  return result;
}

unint64_t sub_10006A3E0()
{
  result = qword_1000AC050;
  if (!qword_1000AC050)
  {
    sub_10000D544(255, &qword_1000AC3A0, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC050);
  }

  return result;
}

uint64_t sub_10006A460(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D130;

  return sub_10006913C(a1, a2, v6);
}

uint64_t sub_10006A528()
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

  return _swift_task_switch(sub_10006A61C, 0, 0);
}

uint64_t sub_10006A61C()
{
  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[7];
    v3 = v0[3];
    sub_100072428(&qword_1000AB008, v1, type metadata accessor for EventUploader);
    static LoggedObject.logger.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Canceled before fetching pending events", v6, 2u);
    }

    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];

    (*(v9 + 8))(v7, v8);
    type metadata accessor for CancellationError();
    sub_100072428(&qword_1000AC180, 255, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v11 = v0[6];
    v10 = v0[7];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[2];
    v15 = sub_10000D224(v14 + 7, v14[10]);
    v16 = v14[21];
    v17 = *v15;
    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = sub_10006A86C;

    return sub_100075500(v16);
  }
}

uint64_t sub_10006A86C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v7 = *(v3 + 48);
    v6 = *(v3 + 56);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_10006A9C4, 0, 0);
  }
}

uint64_t sub_10006A9C4()
{
  if (!sub_100079B78(v0[9]))
  {
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];

    v14 = v0[1];
LABEL_11:

    return v14();
  }

  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[9];
    v3 = v0[6];
    v4 = v0[3];
    sub_100072428(&qword_1000AB008, v1, type metadata accessor for EventUploader);
    static LoggedObject.logger.getter();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[9];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = sub_100079B78(v8);

      *(v9 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "Canceled before uploading %ld pending event(s)", v9, 0xCu);
    }

    else
    {
      v19 = v0[9];
      swift_bridgeObjectRelease_n();
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
    type metadata accessor for CancellationError();
    sub_100072428(&qword_1000AC180, 255, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v21 = v0[6];
    v20 = v0[7];

    v14 = v0[1];
    goto LABEL_11;
  }

  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_10006AC7C;
  v16 = v0[9];
  v17 = v0[2];

  return sub_10006C0E8(v16);
}

uint64_t sub_10006AC7C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10006AFE8;
  }

  else
  {
    v3 = sub_10006AD90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006AD90()
{
  v1 = v0[9];

  if (static Task<>.isCancelled.getter())
  {
    v3 = v0[7];
    v4 = v0[3];
    sub_100072428(&qword_1000AB008, v2, type metadata accessor for EventUploader);
    static LoggedObject.logger.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Canceled before fetching pending events", v7, 2u);
    }

    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];

    (*(v10 + 8))(v8, v9);
    type metadata accessor for CancellationError();
    sub_100072428(&qword_1000AC180, 255, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v12 = v0[6];
    v11 = v0[7];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[2];
    v16 = sub_10000D224(v15 + 7, v15[10]);
    v17 = v15[21];
    v18 = *v16;
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = sub_10006A86C;

    return sub_100075500(v17);
  }
}

uint64_t sub_10006AFE8()
{
  v1 = v0[9];

  v2 = v0[11];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006B05C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for EventWriterScope();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006B1A4, 0, 0);
}

uint64_t sub_10006B1A4(uint64_t a1, uint64_t a2)
{
  v39 = v2;
  v3 = v2[11];
  v5 = v2[7];
  v4 = v2[8];
  v6 = v2[5];
  v7 = v2[6];
  v9 = v2[2];
  v8 = v2[3];
  sub_100072428(&qword_1000AB008, a2, type metadata accessor for EventUploader);
  static LoggedObject.logger.getter();
  (*(v5 + 16))(v4, v8, v7);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v2[10];
  v13 = v2[11];
  v15 = v2[8];
  v16 = v2[9];
  v18 = v2[6];
  v17 = v2[7];
  v19 = v2[2];
  if (v12)
  {
    v37 = v2[9];
    v20 = swift_slowAlloc();
    v36 = v11;
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 134218242;
    *(v20 + 4) = *(v19 + 16);

    *(v20 + 12) = 2082;
    sub_100072428(&qword_1000AC150, 255, &type metadata accessor for EventWriterScope);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v13;
    v24 = v23;
    (*(v17 + 8))(v15, v18);
    v25 = sub_100035120(v22, v24, &v38);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v36, "Saving %ld event(s) to %{public}s scope", v20, 0x16u);
    sub_10000D330(v21);

    (*(v14 + 8))(v35, v37);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v14 + 8))(v13, v16);
  }

  v27 = v2[4];
  v26 = v2[5];
  v28 = v2[2];
  v29 = v2[3];
  v30 = swift_task_alloc();
  v30[2] = v27;
  v30[3] = v29;
  v30[4] = v26;
  v31 = sub_10006B628(sub_100072470, v30, v28);
  v2[12] = v31;

  v32 = *sub_10000D224((v27 + 56), *(v27 + 80));
  v33 = swift_task_alloc();
  v2[13] = v33;
  *v33 = v2;
  v33[1] = sub_10006B4D8;

  return sub_10007428C(v31);
}

uint64_t sub_10006B4D8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 64);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

void *sub_10006B628(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CED0(&qword_1000AB918, &qword_100086D98);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PendingEventData();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v31 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = *(type metadata accessor for EventRecord.DecodedEvent() - 8);
  v26 = v11;
  v18 = (v11 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v17 + 72);
  v20 = _swiftEmptyArrayStorage;
  v27 = v10;
  v28 = a1;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_10000D620(v9, &qword_1000AB918, &qword_100086D98);
    }

    else
    {
      v21 = v29;
      sub_10003FB74(v9, v29);
      sub_10003FB74(v21, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000226FC(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1000226FC(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_10003FB74(v31, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
      v10 = v27;
      a1 = v28;
    }

    v19 += v30;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_10006B90C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v59 = a3;
  v60 = type metadata accessor for Logger();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v60);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v11 = type metadata accessor for PendingEventData();
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  v13 = __chkstk_darwin(v11);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v56 = &v52 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v52 - v18;
  __chkstk_darwin(v17);
  v21 = &v52 - v20;
  sub_10006C3F8(a2, *(a1 + 160), &v52 - v20);
  v55 = sub_100072428(&qword_1000AB008, v22, type metadata accessor for EventUploader);
  static LoggedObject.logger.getter();
  sub_100037660(v21, v19);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v58 = v11;
  v54 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63 = v52;
    *v26 = 136446466;
    v62 = v11;
    sub_10000CED0(&qword_1000AC188, &qword_100087AE8);
    v27 = String.init<A>(describing:)();
    v29 = sub_100035120(v27, v28, &v63);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    type metadata accessor for UUID();
    sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1000376C4(v19);
    v33 = sub_100035120(v30, v32, &v63);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Created %{public}s with identifier %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v34 = v54;
  }

  else
  {

    sub_1000376C4(v19);
    v34 = v5;
  }

  v35 = *(v34 + 8);
  v36 = v60;
  v35(v10, v60);
  v37 = v61;
  static LoggedObject.logger.getter();
  v38 = v56;
  sub_100037660(v21, v56);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63 = v42;
    *v41 = 136315138;
    sub_100037660(v38, v53);
    v43 = v58;
    v44 = String.init<A>(describing:)();
    v45 = v38;
    v46 = v44;
    v48 = v47;
    sub_1000376C4(v45);
    v49 = sub_100035120(v46, v48, &v63);

    *(v41 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s", v41, 0xCu);
    sub_10000D330(v42);

    v35(v61, v60);
  }

  else
  {

    sub_1000376C4(v38);
    v35(v37, v36);
    v43 = v58;
  }

  v50 = v59;
  sub_10003FB74(v21, v59);
  return (*(v57 + 56))(v50, 0, 1, v43);
}

void sub_10006BEB0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v23[3] = 0xE000000000000000;
  v23[0] = 47;
  v23[1] = 0xE100000000000000;
  v23[2] = 0;
  v22[2] = v23;
  v8 = sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v22, 0xD00000000000001FLL, 0x8000000100089E00, "coalescingWindowSeconds");
  if (v8[2])
  {
    v9 = v8[4];
    v10 = v8[5];
    v11 = v8[6];
    v12 = v8[7];

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 46;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v23[0] = a4;
    swift_getMetatypeMetadata();
    v18._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v18);

    v19 = String._bridgeToObjectiveC()();

    [v7 setName:v19];

    [v7 setQuantity:a2];
    [v7 setExpectedSendSize:sub_10003EB04(a2)];
    v20 = [v7 defaultConfiguration];
    if (v20)
    {
      v21 = v20;
      [v20 setContainer:*(a3 + 96)];
      [v21 setQualityOfService:17];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10006C0E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10006C1D0, 0, 0);
}

uint64_t sub_10006C1D0()
{
  if (sub_100079B78(v0[2]))
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[8] = v3;
    *(v3 + 16) = *(v0 + 1);
    *(v3 + 32) = v2;
    v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_100068648;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    v6 = v0[7];
    v7 = v0[4];
    sub_100072428(&qword_1000AB008, v1, type metadata accessor for EventUploader);
    static LoggedObject.logger.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No events to upload", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);
    v15 = v0[7];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10006C3F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a1;
  v66 = a3;
  v4 = type metadata accessor for EventRecord.DataType();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  __chkstk_darwin(v4);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for EventWriterScope();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v68);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v60 - v15;
  v16 = type metadata accessor for EventRecord.EncodedEvent();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v60 - v22;
  v75 = type metadata accessor for UUID();
  v65 = *(v75 - 8);
  v24 = *(v65 + 64);
  __chkstk_darwin(v75);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  static EventRecord.encodeEvent(_:)();
  v27 = *(v17 + 32);
  v67 = v16;
  v27(v23, v21, v16);
  v64 = EventRecord.DecodedEvent.tags.getter();
  EventRecord.DecodedEvent.anyEvent.getter();
  sub_10000D224(&v77, v79);
  if (a2 < 1)
  {
    dispatch thunk of EventProtocol.date.getter();
    v31 = v73;
    goto LABEL_8;
  }

  dispatch thunk of EventProtocol.date.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v29 = v28;
  v30 = v28;
  v31 = v73;
  (*(v73 + 8))(v14, v74);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v29 / a2 * a2) >> 64 != (v29 / a2 * a2) >> 63)
  {
LABEL_16:
    __break(1u);
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v80 = v77;
    v81 = v78;
    v51._object = 0x8000000100089E50;
    v51._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v51);
    EventRecord.DecodedEvent.anyEvent.getter();
    v52 = v79;
    v53 = sub_10000D224(&v77, v79);
    v54 = *(*(v52 - 8) + 64);
    __chkstk_darwin(v53);
    (*(v56 + 16))(&v60 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v57);

    sub_10000D330(&v77);
    v58._countAndFlagsBits = 0xD000000000000014;
    v58._object = 0x8000000100089E70;
    String.append(_:)(v58);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    goto LABEL_18;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
LABEL_8:
  v32 = v63;
  v33 = v68;
  (*(v7 + 16))(v63, v69, v68);
  v34 = (*(v7 + 88))(v32, v33);
  v62 = v17;
  if (v34 == enum case for EventWriterScope.owned(_:))
  {
    v35 = v26;
    v36 = v23;
    LODWORD(v73) = 0;
LABEL_12:
    v37 = v65;
    v38 = *(v65 + 16);
    v39 = v66;
    v61 = v35;
    v38(v66, v35, v75);
    sub_10000D224(&v77, v79);
    v40 = type metadata accessor for PendingEventData();
    v41 = v39 + v40[5];
    dispatch thunk of EventProtocol.homeIdentifier.getter();
    v42 = v76;
    v43 = v74;
    (*(v31 + 16))(v39 + v40[6], v76, v74);
    v44 = v70;
    EventRecord.EncodedEvent.type.getter();
    v45 = EventRecord.DataType.rawValue.getter();
    (*(v71 + 8))(v44, v72);
    v46 = EventRecord.EncodedEvent.data.getter();
    v48 = v47;
    (*(v31 + 8))(v42, v43);
    (*(v62 + 8))(v36, v67);
    (*(v37 + 8))(v61, v75);
    *(v39 + v40[7]) = v45;
    v49 = (v39 + v40[8]);
    *v49 = v46;
    v49[1] = v48;
    *(v39 + v40[9]) = v64;
    *(v39 + v40[10]) = v73;
    return sub_10000D330(&v77);
  }

  if (v34 == enum case for EventWriterScope.shared(_:))
  {
    v35 = v26;
    v36 = v23;
    LODWORD(v73) = 1;
    goto LABEL_12;
  }

  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v80 = 0xD000000000000013;
  v81 = 0x8000000100089E90;
  sub_100072428(&qword_1000AC150, 255, &type metadata accessor for EventWriterScope);
  v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v59);

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10006CC7C()
{
  sub_10000D330((v0 + 16));
  sub_10000D330((v0 + 56));

  sub_10000D330((v0 + 104));
  v1 = *(v0 + 152);
  sub_10003FB64(*(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_10006CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = type metadata accessor for EventWriterScope();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v13 = *(*(sub_10000CED0(&qword_1000AC140, &unk_100087CE0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10006CEB8, 0, 0);
}

uint64_t sub_10006CEB8()
{
  v85 = v0;
  v1 = v0;
  v70 = v0 + 2;
  v2 = v0[19];
  v3 = v0[10];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[10] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v69 = (63 - v8) >> 6;
  v80 = (v2 + 16);
  v82 = (v2 + 32);
  v76 = v0[19];
  v81 = (v2 + 8);
  v74 = (v0[16] + 8);
  v75 = v0[10];

  v11 = 0;
  v77 = v5;
  v79 = v0;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v14 = v11;
LABEL_16:
      v17 = v1[22];
      v18 = v1[23];
      v19 = v1[18];
      v20 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v21 = v20 | (v14 << 6);
      (*(v76 + 16))(v17, *(v75 + 48) + *(v76 + 72) * v21, v19);
      v22 = *(*(v75 + 56) + 8 * v21);
      v23 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      v24 = *(v23 + 48);
      v1 = v79;
      (*(v76 + 32))(v18, v17, v19);
      *(v18 + v24) = v22;
      (*(*(v23 - 8) + 56))(v18, 0, 1, v23);

LABEL_17:
      v25 = v1[24];
      sub_1000723C0(v1[23], v25, &qword_1000AC140, &unk_100087CE0);
      v26 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
      {
        v66 = v1[10];

        v67 = swift_task_alloc();
        v1[25] = v67;
        *v67 = v1;
        v67[1] = sub_10006D704;
        v68 = v1[9];

        return sub_100020618(0, 0);
      }

      v27 = v1[18];
      v28 = *(v1[24] + *(v26 + 48));
      (*v82)(v1[21]);
      v30 = v1[21];
      if (*(v28 + 16))
      {
        break;
      }

      (*v81)(v1[21], v1[18]);

      v5 = v77;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v83 = v28;
    v31 = v1[20];
    v33 = v1[17];
    v32 = v1[18];
    v34 = v1[12];
    sub_100072428(&qword_1000AB008, v29, type metadata accessor for EventUploader);
    static LoggedObject.logger.getter();
    (*v80)(v31, v30, v32);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v1[20];
    v39 = v1[17];
    v40 = v1[18];
    v41 = v1[15];
    if (v37)
    {
      v73 = v1[17];
      v42 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v84 = v72;
      *v42 = 134218242;
      *(v42 + 4) = *(v83 + 16);

      *(v42 + 12) = 2080;
      sub_100072428(&qword_1000AC150, 255, &type metadata accessor for EventWriterScope);
      v71 = v41;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v36;
      v46 = v45;
      v78 = *v81;
      (*v81)(v38, v40);
      v47 = sub_100035120(v43, v46, &v84);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v35, v44, "Uploading %ld event(s) to %s scope", v42, 0x16u);
      sub_10000D330(v72);

      (*v74)(v73, v71);
    }

    else
    {

      v78 = *v81;
      (*v81)(v38, v40);
      (*v74)(v39, v41);
    }

    v49 = v1[13];
    v48 = v1[14];
    v50 = v1[11];
    v51 = type metadata accessor for TaskPriority();
    v52 = *(v51 - 8);
    (*(v52 + 56))(v48, 1, 1, v51);
    v53 = swift_allocObject();
    v54 = v1;
    v53[2] = 0;
    v55 = v53 + 2;
    v53[3] = 0;
    v53[4] = v50;
    v53[5] = v83;
    sub_100013358(v48, v49, &qword_1000AAD30, &qword_100085540);
    LODWORD(v49) = (*(v52 + 48))(v49, 1, v51);

    v56 = v54[13];
    if (v49 == 1)
    {
      sub_10000D620(v54[13], &qword_1000AAD30, &qword_100085540);
      if (*v55)
      {
        goto LABEL_24;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v52 + 8))(v56, v51);
      if (*v55)
      {
LABEL_24:
        v57 = v53[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v58 = dispatch thunk of Actor.unownedExecutor.getter();
        v60 = v59;
        swift_unknownObjectRelease();
        goto LABEL_27;
      }
    }

    v58 = 0;
    v60 = 0;
LABEL_27:
    v1 = v79;
    v61 = *v79[9];

    if (v60 | v58)
    {
      v62 = v70;
      *v70 = 0;
      v70[1] = 0;
      v79[4] = v58;
      v79[5] = v60;
    }

    else
    {
      v62 = 0;
    }

    v63 = v79[21];
    v64 = v79[18];
    v65 = v79[14];
    v79[6] = 1;
    v79[7] = v62;
    v79[8] = v61;
    swift_task_create();

    sub_10000D620(v65, &qword_1000AAD30, &qword_100085540);
    result = (v78)(v63, v64);
    v5 = v77;
  }

  while (v9);
LABEL_6:
  if (v69 <= v11 + 1)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v69;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v69)
    {
      v15 = v1[23];
      v16 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
      v9 = 0;
      v11 = v13;
      goto LABEL_17;
    }

    v9 = *(v5 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006D704()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 160);
  v7 = *(*v0 + 136);
  v8 = *(*v0 + 112);
  v9 = *(*v0 + 104);
  v12 = *v0;

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_10006D8F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000D130;

  return sub_10006CCF8(a1, a2, v6, v7, v8);
}

uint64_t sub_10006D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000D130;

  return sub_10006DA58(a5);
}

uint64_t sub_10006DA58(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v3 = sub_10000CED0(&qword_1000AC158, &qword_100087AB8);
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v7 = *(v6 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = type metadata accessor for EventRecord.DataType();
  v2[23] = v8;
  v9 = *(v8 - 8);
  v2[24] = v9;
  v10 = *(v9 + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_10000CED0(&qword_1000AC160, &qword_100087AC0);
  v2[26] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = *(*(sub_10000CED0(&qword_1000AB8F8, &qword_100086D78) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v14 = type metadata accessor for PendingEventData();
  v2[31] = v14;
  v15 = *(v14 - 8);
  v2[32] = v15;
  v16 = *(v15 + 64) + 15;
  v2[33] = swift_task_alloc();
  v17 = *(*(sub_10000CED0(&qword_1000AB918, &qword_100086D98) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v18 = *(*(sub_10000CED0(&qword_1000AC168, &qword_100087AC8) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v19 = sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  v2[39] = v19;
  v20 = *(v19 - 8);
  v2[40] = v20;
  v21 = *(v20 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v22 = type metadata accessor for Logger();
  v2[46] = v22;
  v23 = *(v22 - 8);
  v2[47] = v23;
  v24 = *(v23 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_10006DECC, 0, 0);
}

void *sub_10006DECC(uint64_t a1, uint64_t a2)
{
  v177 = v2;
  v3 = *(*(v2 + 96) + 16);
  *(v2 + 456) = v3;
  *(v2 + 464) = sub_100072428(&qword_1000AB008, a2, type metadata accessor for EventUploader);
  v4 = *(v2 + 112);
  if (v3)
  {
    v5 = *(v2 + 448);
    v6 = *(v2 + 112);
    static LoggedObject.logger.getter();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v2 + 96);
    v155 = v3;
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v3;

      _os_log_impl(&_mh_execute_header, v7, v8, "Uploading %ld event(s)", v11, 0xCu);
    }

    else
    {
    }

    v34 = *(v2 + 440);
    v33 = *(v2 + 448);
    v35 = *(v2 + 368);
    v36 = *(v2 + 376);
    v37 = *(v2 + 112);
    v38 = *(v2 + 96);
    v39 = *(v36 + 8);
    *(v2 + 472) = v39;
    *(v2 + 480) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v33, v35);
    static LoggedObject.logger.getter();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v2 + 440);
    v44 = *(v2 + 368);
    if (v42)
    {
      v45 = *(v2 + 248);
      v46 = *(v2 + 96);
      v174 = v39;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v176[0] = v48;
      *v47 = 136315138;
      v49 = Array.description.getter();
      v51 = sub_100035120(v49, v50, v176);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s", v47, 0xCu);
      sub_10000D330(v48);

      v174(v43, v44);
    }

    else
    {

      v39(v43, v44);
    }

    v52 = *(v2 + 104);
    v53 = v52[18];
    v54 = v155;
    if (v53)
    {
      v55 = v52[19];

      v53(v155);
      sub_10003FB64(v53);
    }

    else
    {
      v56 = *(v2 + 112);
      v57 = [objc_allocWithZone(CKOperationGroup) init];
      v176[0] = v57;
      sub_10006BEB0(v176, v155, v52, v56);
      *(v2 + 40) = &type metadata for EventRecordUploader;
      *(v2 + 48) = &off_1000A2BF8;
      v58 = swift_allocObject();
      *(v2 + 16) = v58;
      sub_10000D2CC((v52 + 2), v58 + 16);
      sub_10000D2CC((v52 + 13), v58 + 80);
      v59 = v52[21];
      *(v58 + 56) = v57;
      *(v58 + 64) = 1;
      *(v58 + 72) = v59;
    }

    v60 = *(v2 + 320);
    v61 = *(v2 + 256);
    v152 = *(v2 + 208);
    v154 = *(v2 + 248);
    v62 = *(v2 + 192);
    v63 = *(v2 + 136);
    v64 = *(v2 + 144);
    v65 = *(v2 + 96);
    sub_100072428(&unk_1000AC310, 255, &type metadata accessor for UUID);

    result = Set.init(minimumCapacity:)();
    v164 = (v61 + 56);
    v176[0] = result;
    v66 = (v61 + 48);
    v150 = (v62 + 104);
    v148 = enum case for EventRecord.DataType.fakeEvent(_:);
    v146 = (v62 + 56);
    v142 = v61;
    v144 = (v62 + 48);
    v133 = (v62 + 32);
    v67 = (v62 + 8);
    v68 = 0;
    v140 = v67;
    v168 = (v64 + 56);
    v134 = (v64 + 16);
    v162 = (v60 + 56);
    v170 = v64 + 48;
    v172 = (v60 + 48);
    v166 = (v64 + 32);
    v158 = (v64 + 8);
    v160 = (v61 + 48);
    v69 = v155 == 0;
LABEL_19:
    if (v69)
    {
      __break(1u);
    }

    else
    {
      result = sub_100037660(*(v2 + 96) + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v68, *(v2 + 280));
      v72 = __OFADD__(v68, 1);
      v73 = v68 + 1;
      if (!v72)
      {
        v175 = v73;
        for (i = 0; ; i = 1)
        {
          v76 = *(v2 + 272);
          v75 = *(v2 + 280);
          v77 = *(v2 + 248);
          v78 = 1;
          (*v164)(v75, i, 1, v77);
          sub_1000723C0(v75, v76, &qword_1000AB918, &qword_100086D98);
          if ((*v66)(v76, 1, v77) == 1)
          {
            goto LABEL_34;
          }

          v79 = *(v2 + 264);
          v81 = *(v2 + 232);
          v80 = *(v2 + 240);
          v82 = *(v2 + 216);
          v83 = *(v2 + 184);
          sub_10003FB74(*(v2 + 272), v79);
          v84 = *(v79 + *(v154 + 28));
          EventRecord.DataType.init(rawValue:)();
          (*v150)(v81, v148, v83);
          (*v146)(v81, 0, 1, v83);
          v85 = *(v152 + 48);
          sub_100013358(v80, v82, &qword_1000AB8F8, &qword_100086D78);
          sub_100013358(v81, v82 + v85, &qword_1000AB8F8, &qword_100086D78);
          v86 = *v144;
          v87 = (*v144)(v82, 1, v83);
          v88 = *(v2 + 184);
          if (v87 == 1)
          {
            v89 = *(v2 + 240);
            sub_10000D620(*(v2 + 232), &qword_1000AB8F8, &qword_100086D78);
            sub_10000D620(v89, &qword_1000AB8F8, &qword_100086D78);
            if (v86(v82 + v85, 1, v88) == 1)
            {
              sub_10000D620(*(v2 + 216), &qword_1000AB8F8, &qword_100086D78);
              v54 = v155;
LABEL_31:
              (*v134)(*(v2 + 296), *(v2 + 264), *(v2 + 136));
              v95 = 0;
              goto LABEL_33;
            }
          }

          else
          {
            sub_100013358(*(v2 + 216), *(v2 + 224), &qword_1000AB8F8, &qword_100086D78);
            v90 = v86(v82 + v85, 1, v88);
            v91 = *(v2 + 232);
            v92 = *(v2 + 240);
            v93 = *(v2 + 224);
            if (v90 != 1)
            {
              v138 = *(v2 + 216);
              v96 = *(v2 + 200);
              v97 = *(v2 + 184);
              (*v133)(v96, v82 + v85, v97);
              sub_100072428(&qword_1000AC178, 255, &type metadata accessor for EventRecord.DataType);
              v136 = dispatch thunk of static Equatable.== infix(_:_:)();
              v98 = *v140;
              v99 = v96;
              v54 = v155;
              (*v140)(v99, v97);
              sub_10000D620(v91, &qword_1000AB8F8, &qword_100086D78);
              sub_10000D620(v92, &qword_1000AB8F8, &qword_100086D78);
              v98(v93, v97);
              sub_10000D620(v138, &qword_1000AB8F8, &qword_100086D78);
              if ((v136 & 1) == 0)
              {
                v95 = 1;
                goto LABEL_33;
              }

              goto LABEL_31;
            }

            v94 = *(v2 + 184);
            sub_10000D620(*(v2 + 232), &qword_1000AB8F8, &qword_100086D78);
            sub_10000D620(v92, &qword_1000AB8F8, &qword_100086D78);
            (*v140)(v93, v94);
          }

          sub_10000D620(*(v2 + 216), &qword_1000AC160, &qword_100087AC0);
          v95 = 1;
          v54 = v155;
LABEL_33:
          v100 = *(v2 + 264);
          (*v168)(*(v2 + 296), v95, 1, *(v2 + 136));
          sub_1000376C4(v100);
          v78 = 0;
LABEL_34:
          v101 = *(v2 + 312);
          v102 = *(v2 + 296);
          v103 = *v162;
          (*v162)(v102, v78, 1, v101);
          v104 = *v172;
          if ((*v172)(v102, 1, v101) == 1)
          {
            v105 = *(v2 + 304);
            v106 = *(v2 + 312);
            sub_10000D620(*(v2 + 296), &qword_1000AC168, &qword_100087AC8);
            v103(v105, 1, 1, v106);
          }

          else
          {
            v107 = *(v2 + 352);
            v108 = *(v2 + 136);
            sub_1000723C0(*(v2 + 296), v107, &qword_1000AB6B8, &qword_100086D40);
            v109 = (*v170)(v107, 1, v108);
            v110 = *(v2 + 352);
            if (v109 == 1)
            {
              result = sub_10000D620(v110, &qword_1000AB6B8, &qword_100086D40);
              v68 = v175;
              goto LABEL_18;
            }

            v111 = *(v2 + 304);
            v112 = *(v2 + 312);
            sub_1000723C0(v110, v111, &qword_1000AB6B8, &qword_100086D40);
            v103(v111, 0, 1, v112);
          }

          v113 = *(v2 + 312);
          v114 = *(v2 + 288);
          sub_1000723C0(*(v2 + 304), v114, &qword_1000AC168, &qword_100087AC8);
          if (v104(v114, 1, v113) == 1)
          {
            (*v168)(*(v2 + 360), 1, 1, *(v2 + 136));
            v115 = *v170;
            v68 = v175;
          }

          else
          {
            v116 = *(v2 + 336);
            v117 = *(v2 + 344);
            v118 = *(v2 + 136);
            sub_1000723C0(*(v2 + 288), v117, &qword_1000AB6B8, &qword_100086D40);
            sub_100013358(v117, v116, &qword_1000AB6B8, &qword_100086D40);
            v115 = *v170;
            result = (*v170)(v116, 1, v118);
            if (result == 1)
            {
              goto LABEL_49;
            }

            v119 = *(v2 + 360);
            v120 = *(v2 + 344);
            v121 = *(v2 + 136);
            (*v166)(v119, *(v2 + 336), v121);
            sub_10000D620(v120, &qword_1000AB6B8, &qword_100086D40);
            (*v168)(v119, 0, 1, v121);
            v68 = v175;
          }

          v122 = *(v2 + 360);
          v123 = *(v2 + 136);
          *(v2 + 488) = v115;
          *(v2 + 496) = v170 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          if (v115(v122, 1, v123) == 1)
          {
            v124 = *(v2 + 96);

            v125 = v176[0];
            *(v2 + 504) = v176[0];
            v126 = v125[2];
            *(v2 + 512) = v126;
            v127 = v126 == v54;
            v128 = type metadata accessor for EventUploadSubtaskLogEvent();
            v129 = objc_allocWithZone(v128);
            v130 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
            type metadata accessor for MetricsManager();
            *&v129[v130] = static MetricsManager.sharedInstance.getter();
            v129[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 1;
            *&v129[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = v54;
            v129[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = v127;
            *(v2 + 56) = v129;
            *(v2 + 64) = v128;
            *(v2 + 520) = objc_msgSendSuper2((v2 + 56), "init");
            sub_10000D224((v2 + 16), *(v2 + 40));
            v131 = swift_task_alloc();
            *(v2 + 528) = v131;
            *v131 = v2;
            v131[1] = sub_10006EDD0;
            v132 = *(v2 + 96);

            return sub_1000370C8(v132);
          }

          v71 = *(v2 + 168);
          v70 = *(v2 + 176);
          (*v166)(v71, v122, v123);
          sub_10002F2E4(v70, v71);
          result = (*v158)(v70, v123);
LABEL_18:
          v66 = v160;
          v69 = v68 >= v54;
          if (v68 != v54)
          {
            goto LABEL_19;
          }

          v175 = v54;
        }
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
    v12 = *(v2 + 408);
    v13 = *(v2 + 112);
    static LoggedObject.logger.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v2 + 408);
    v18 = *(v2 + 368);
    v19 = *(v2 + 376);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No events to upload", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
    v22 = *(v2 + 440);
    v21 = *(v2 + 448);
    v24 = *(v2 + 424);
    v23 = *(v2 + 432);
    v26 = *(v2 + 408);
    v25 = *(v2 + 416);
    v28 = *(v2 + 392);
    v27 = *(v2 + 400);
    v29 = *(v2 + 384);
    v30 = *(v2 + 360);
    v135 = *(v2 + 352);
    v137 = *(v2 + 344);
    v139 = *(v2 + 336);
    v141 = *(v2 + 328);
    v143 = *(v2 + 304);
    v145 = *(v2 + 296);
    v147 = *(v2 + 288);
    v149 = *(v2 + 280);
    v151 = *(v2 + 272);
    v153 = *(v2 + 264);
    v156 = *(v2 + 240);
    v157 = *(v2 + 232);
    v159 = *(v2 + 224);
    v161 = *(v2 + 216);
    v163 = *(v2 + 200);
    v165 = *(v2 + 176);
    v167 = *(v2 + 168);
    v169 = *(v2 + 160);
    v171 = *(v2 + 152);
    v173 = *(v2 + 128);

    v31 = *(v2 + 8);

    return v31();
  }

  return result;
}

uint64_t sub_10006EDD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v7 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = v1;

  if (v1)
  {
    v5 = sub_10006F2FC;
  }

  else
  {
    v5 = sub_10006EEE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006EEE8()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 112);
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Upload operation completed successfully", v6, 2u);
  }

  v7 = *(v0 + 536);
  v8 = *(v0 + 520);
  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v11 = *(v0 + 432);
  v12 = *(v0 + 368);
  v49 = *(v0 + 144);
  v47 = *(v0 + 120);

  v10(v11, v12);
  sub_100031AD8();
  *(v0 + 88) = &_swiftEmptyDictionarySingleton;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v45 = v7 + 64;
  v13 = -1;
  v14 = -1 << *(v7 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v7 + 64);
  v16 = (63 - v14) >> 6;
  v48 = v7;

  v18 = 0;
  v50 = _swiftEmptyArrayStorage;
  v46 = v16;
LABEL_6:
  v19 = v18;
  while (1)
  {
    *(v0 + 552) = v50;
    if (!v15)
    {
      break;
    }

    v18 = v19;
LABEL_12:
    v53 = *(v0 + 496);
    v51 = *(v0 + 504);
    v52 = *(v0 + 488);
    v20 = *(v0 + 328);
    v21 = *(v0 + 136);
    v22 = *(v0 + 128);
    v23 = *(v0 + 112);
    v24 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v25 = v24 | (v18 << 6);
    v26 = *(v49 + 72);
    (*(*(v0 + 144) + 16))(v22, *(v48 + 48) + v26 * v25, v21);
    v27 = *(*(v48 + 56) + 8 * v25);
    *(v22 + *(v47 + 48)) = v27;
    swift_errorRetain();
    sub_100070384(v22, v27, v51, (v0 + 88), v0 + 72, v23, v20);
    sub_10000D620(v22, &qword_1000AC158, &qword_100087AB8);
    if (v52(v20, 1, v21) != 1)
    {
      v28 = *(v0 + 152);
      v29 = *(v0 + 160);
      v30 = *(v0 + 136);
      v31 = *(*(v0 + 144) + 32);
      v31(v29, *(v0 + 328), v30);
      v31(v28, v29, v30);
      v16 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100022858(0, v50[2] + 1, 1, v50);
      }

      v33 = v50[2];
      v32 = v50[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v37 = sub_100022858(v32 > 1, v33 + 1, 1, v50);
        v34 = v33 + 1;
        v50 = v37;
      }

      v35 = *(v0 + 152);
      v36 = *(v0 + 136);
      v50[2] = v34;
      result = (v31)(v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v33 * v26, v35, v36);
      goto LABEL_6;
    }

    result = sub_10000D620(*(v0 + 328), &qword_1000AB6B8, &qword_100086D40);
    v19 = v18;
    v16 = v46;
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v45 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  v38 = *(v0 + 536);
  v39 = *(v0 + 504);
  v40 = *(v0 + 512);
  v41 = *(v0 + 456);

  v42 = swift_task_alloc();
  *(v0 + 560) = v42;
  *v42 = v0;
  v42[1] = sub_10006F858;
  v43 = v40 == v41;
  v44 = *(v0 + 104);

  return sub_100071684(v50, v43);
}

uint64_t sub_10006F2FC()
{
  v1 = v0[68];
  v2 = v0[65];
  sub_100031DC0();
  v3 = sub_100072224(v1);
  if (!(v4 >> 62))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v4;
  v7 = v5;
  v74 = v3;
  if (v4 >> 62 != 1)
  {
    v23 = v0[68];
    v24 = v0[63];
    v25 = v0[58];
    v13 = v0 + 48;
    v26 = v0[48];
    v27 = v0[14];

    static LoggedObject.logger.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v73 = v7;
      v18 = 12;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 258;
      v21 = "Upload operation failed with non-recoverable error: %{public}@";
      goto LABEL_9;
    }

LABEL_13:
    v33 = *v13;
    goto LABEL_14;
  }

  v8 = v3;
  v9 = v0[63];

  v10 = v0[68];
  v11 = v0[58];
  v12 = v0[14];
  if ((v6 & 1) == 0)
  {
    v13 = v0 + 50;
    v31 = v0[50];
    v32 = v0[14];
    static LoggedObject.logger.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v73 = v7;
      v18 = 22;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 134349314;
      *(v19 + 4) = v8;
      v71 = "Upload operation failed with recoverable error that includes suggested retry time of %{public}f seconds: %{public}@";
      v28 = 14;
      v29 = 13;
      v30 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v13 = v0 + 49;
  v14 = v0[49];
  v15 = v0[14];
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_13;
  }

  v73 = v7;
  v18 = 12;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  *v19 = 258;
  v21 = "Upload operation failed with recoverable error that did not include a retry time suggestion: %{public}@";
LABEL_9:
  v71 = v21;
  v28 = 4;
  v29 = 3;
  v30 = 2;
LABEL_12:
  v33 = *v13;
  v34 = v0[68];
  *(v19 + v30) = 66;
  *(v19 + v29) = 8;
  swift_errorRetain();
  v35 = _swift_stdlib_bridgeErrorToNSError();
  *(v19 + v28) = v35;
  *v20 = v35;
  _os_log_impl(&_mh_execute_header, v16, v17, v71, v19, v18);
  sub_10000D620(v20, &unk_1000AB7D0, &qword_100085510);

  v7 = v73;
LABEL_14:
  v36 = v0[68];
  v37 = v0[65];
  v39 = v0[59];
  v38 = v0[60];
  v40 = v0[46];

  v39(v33, v40);
  sub_10007236C();
  swift_allocError();
  *v41 = v74;
  v41[1] = v6;
  v41[2] = v7;
  swift_willThrow();

  v43 = v0[55];
  v42 = v0[56];
  v45 = v0[53];
  v44 = v0[54];
  v47 = v0[51];
  v46 = v0[52];
  v49 = v0[49];
  v48 = v0[50];
  v50 = v0[48];
  v52 = v0[45];
  v53 = v0[44];
  v54 = v0[43];
  v55 = v0[42];
  v56 = v0[41];
  v57 = v0[38];
  v58 = v0[37];
  v59 = v0[36];
  v60 = v0[35];
  v61 = v0[34];
  v62 = v0[33];
  v63 = v0[30];
  v64 = v0[29];
  v65 = v0[28];
  v66 = v0[27];
  v67 = v0[25];
  v68 = v0[22];
  v69 = v0[21];
  v70 = v0[20];
  v72 = v0[19];
  v75 = v0[16];
  sub_10000D330(v0 + 2);

  v51 = v0[1];

  return v51();
}

uint64_t sub_10006F858()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  v5 = *(v2 + 552);

  if (v0)
  {
    v6 = sub_10006FE84;
  }

  else
  {
    v6 = sub_10006F98C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006F98C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 464);
  v3 = *(v0 + 112);
  if (*(v1 + 16))
  {
    v4 = *(v0 + 424);
    static LoggedObject.logger.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Some events failed to upload", v7, 2u);
    }

    v8 = *(v0 + 520);
    v10 = *(v0 + 472);
    v9 = *(v0 + 480);
    v11 = *(v0 + 424);
    v12 = *(v0 + 368);

    v10(v11, v12);
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    sub_10007236C();
    swift_allocError();
    *v15 = v13;
    v15[1] = v14;
    v15[2] = v1;
    swift_willThrow();

    v16 = *(v0 + 440);
    v17 = *(v0 + 448);
    v18 = *(v0 + 424);
    v19 = *(v0 + 432);
    v21 = *(v0 + 408);
    v20 = *(v0 + 416);
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);
    v24 = *(v0 + 384);
    v46 = *(v0 + 360);
    v47 = *(v0 + 352);
    v48 = *(v0 + 344);
    v49 = *(v0 + 336);
    v51 = *(v0 + 328);
    v53 = *(v0 + 304);
    v55 = *(v0 + 296);
    v57 = *(v0 + 288);
    v59 = *(v0 + 280);
    v61 = *(v0 + 272);
    v63 = *(v0 + 264);
    v65 = *(v0 + 240);
    v67 = *(v0 + 232);
    v69 = *(v0 + 224);
    v71 = *(v0 + 216);
    v73 = *(v0 + 200);
    v75 = *(v0 + 176);
    v77 = *(v0 + 168);
    v79 = *(v0 + 160);
    v81 = *(v0 + 152);
    v83 = *(v0 + 128);
    sub_10000D330((v0 + 16));

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 416);
    v27 = *(v0 + 112);
    static LoggedObject.logger.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "All events uploaded successfully", v30, 2u);
    }

    v32 = *(v0 + 472);
    v31 = *(v0 + 480);
    v33 = *(v0 + 416);
    v34 = *(v0 + 368);

    v32(v33, v34);

    sub_10000D330((v0 + 16));
    v36 = *(v0 + 440);
    v35 = *(v0 + 448);
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    v42 = *(v0 + 392);
    v41 = *(v0 + 400);
    v43 = *(v0 + 384);
    v44 = *(v0 + 360);
    v50 = *(v0 + 352);
    v52 = *(v0 + 344);
    v54 = *(v0 + 336);
    v56 = *(v0 + 328);
    v58 = *(v0 + 304);
    v60 = *(v0 + 296);
    v62 = *(v0 + 288);
    v64 = *(v0 + 280);
    v66 = *(v0 + 272);
    v68 = *(v0 + 264);
    v70 = *(v0 + 240);
    v72 = *(v0 + 232);
    v74 = *(v0 + 224);
    v76 = *(v0 + 216);
    v78 = *(v0 + 200);
    v80 = *(v0 + 176);
    v82 = *(v0 + 168);
    v84 = *(v0 + 160);
    v85 = *(v0 + 152);
    v86 = *(v0 + 128);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_10006FE84()
{
  v1 = *(v0 + 568);

  v2 = *(v0 + 88);
  v3 = *(v0 + 464);
  v4 = *(v0 + 112);
  if (*(v2 + 16))
  {
    v5 = *(v0 + 424);
    static LoggedObject.logger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Some events failed to upload", v8, 2u);
    }

    v9 = *(v0 + 520);
    v11 = *(v0 + 472);
    v10 = *(v0 + 480);
    v12 = *(v0 + 424);
    v13 = *(v0 + 368);

    v11(v12, v13);
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    sub_10007236C();
    swift_allocError();
    *v16 = v14;
    v16[1] = v15;
    v16[2] = v2;
    swift_willThrow();

    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v19 = *(v0 + 424);
    v20 = *(v0 + 432);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v24 = *(v0 + 392);
    v23 = *(v0 + 400);
    v25 = *(v0 + 384);
    v47 = *(v0 + 360);
    v48 = *(v0 + 352);
    v49 = *(v0 + 344);
    v50 = *(v0 + 336);
    v52 = *(v0 + 328);
    v54 = *(v0 + 304);
    v56 = *(v0 + 296);
    v58 = *(v0 + 288);
    v60 = *(v0 + 280);
    v62 = *(v0 + 272);
    v64 = *(v0 + 264);
    v66 = *(v0 + 240);
    v68 = *(v0 + 232);
    v70 = *(v0 + 224);
    v72 = *(v0 + 216);
    v74 = *(v0 + 200);
    v76 = *(v0 + 176);
    v78 = *(v0 + 168);
    v80 = *(v0 + 160);
    v82 = *(v0 + 152);
    v84 = *(v0 + 128);
    sub_10000D330((v0 + 16));

    v26 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 416);
    v28 = *(v0 + 112);
    static LoggedObject.logger.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "All events uploaded successfully", v31, 2u);
    }

    v33 = *(v0 + 472);
    v32 = *(v0 + 480);
    v34 = *(v0 + 416);
    v35 = *(v0 + 368);

    v33(v34, v35);

    sub_10000D330((v0 + 16));
    v37 = *(v0 + 440);
    v36 = *(v0 + 448);
    v39 = *(v0 + 424);
    v38 = *(v0 + 432);
    v41 = *(v0 + 408);
    v40 = *(v0 + 416);
    v43 = *(v0 + 392);
    v42 = *(v0 + 400);
    v44 = *(v0 + 384);
    v45 = *(v0 + 360);
    v51 = *(v0 + 352);
    v53 = *(v0 + 344);
    v55 = *(v0 + 336);
    v57 = *(v0 + 328);
    v59 = *(v0 + 304);
    v61 = *(v0 + 296);
    v63 = *(v0 + 288);
    v65 = *(v0 + 280);
    v67 = *(v0 + 272);
    v69 = *(v0 + 264);
    v71 = *(v0 + 240);
    v73 = *(v0 + 232);
    v75 = *(v0 + 224);
    v77 = *(v0 + 216);
    v79 = *(v0 + 200);
    v81 = *(v0 + 176);
    v83 = *(v0 + 168);
    v85 = *(v0 + 160);
    v86 = *(v0 + 152);
    v87 = *(v0 + 128);

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_100070384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v137 = a5;
  v145 = a7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v142 = (&v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v19 = &v134 - v18;
  v20 = __chkstk_darwin(v17);
  v136 = &v134 - v21;
  v22 = __chkstk_darwin(v20);
  v139 = &v134 - v23;
  __chkstk_darwin(v22);
  v25 = &v134 - v24;
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v143 = v26;
  v144 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v141 = (&v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v134 = &v134 - v32;
  v33 = __chkstk_darwin(v31);
  v135 = &v134 - v34;
  v35 = __chkstk_darwin(v33);
  v140 = &v134 - v36;
  __chkstk_darwin(v35);
  v38 = &v134 - v37;
  v39 = sub_100071468(a1, a3);
  if (!a2)
  {
    type metadata accessor for CloudUploadResultLogEvent();
    sub_100011750(v39 & 1);
    sub_100072428(&qword_1000AB008, v69, type metadata accessor for EventUploader);
    static LoggedObject.logger.getter();
    v70 = *(v13 + 16);
    v140 = a1;
    v70(v25, a1, v12);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    v73 = v13;
    if (os_log_type_enabled(v71, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v146 = v73;
      v147 = v75;
      v152[0] = v75;
      *v74 = 136446210;
      sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v70;
      v79 = v78;
      (*(v146 + 8))(v25, v12);
      v80 = sub_100035120(v76, v79, v152);
      v70 = v77;

      *(v74 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v71, v72, "Event %{public}s uploaded successfully", v74, 0xCu);
      sub_10000D330(v147);
      v73 = v146;
    }

    else
    {

      (*(v13 + 8))(v25, v12);
    }

    (*(v144 + 8))(v38, v143);
    v95 = v145;
    v44 = v12;
    v70(v145, v140, v12);
    goto LABEL_23;
  }

  v138 = a6;
  v146 = v13;
  v147 = v12;
  type metadata accessor for CloudUploadResultLogEvent();
  swift_errorRetain();
  sub_100011760(a2, v39 & 1);
  if (*(*a4 + 16) < 5uLL)
  {
    swift_errorRetain();
    v40 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152[0] = *a4;
    *a4 = 0x8000000000000000;
    sub_10007E85C(a2, a1, isUniquelyReferenced_nonNull_native);
    *a4 = v152[0];
  }

  v152[0] = a2;
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  type metadata accessor for CKError(0);
  v42 = swift_dynamicCast();
  v44 = v147;
  v45 = v142;
  if (!v42)
  {
    sub_100072428(&qword_1000AB008, v43, type metadata accessor for EventUploader);
    v81 = v141;
    static LoggedObject.logger.getter();
    v73 = v146;
    v82 = *(v146 + 16);
    v139 = ((v146 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v82(v45, a1, v44);
    swift_errorRetain();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v138 = a2;
      v140 = a1;
      v87 = v86;
      v88 = swift_slowAlloc();
      v152[0] = v88;
      *v85 = 136446466;
      sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v82;
      v92 = v91;
      (*(v146 + 8))(v45, v147);
      v93 = sub_100035120(v89, v92, v152);
      v82 = v90;

      *(v85 + 4) = v93;
      *(v85 + 12) = 2114;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v94;
      *v87 = v94;
      _os_log_impl(&_mh_execute_header, v83, v84, "Unhandled error for event %{public}s: %{public}@", v85, 0x16u);
      sub_10000D620(v87, &unk_1000AB7D0, &qword_100085510);
      a1 = v140;

      sub_10000D330(v88);
      v73 = v146;

      v44 = v147;
    }

    else
    {

      (*(v73 + 8))(v45, v44);
    }

    (*(v144 + 8))(v81, v143);
    v95 = v145;
    v82(v145, a1, v44);
    goto LABEL_23;
  }

  v46 = v19;
  v47 = v151;
  v48 = COERCE_DOUBLE(related decl 'e' for CKErrorCode.retryAfterSeconds.getter());
  v49 = v146;
  if ((v50 & 1) == 0)
  {
    v51 = v48;
    v52 = v137;
    v53 = *v137;
    if (*(v137 + 8))
    {
      v53 = 0.0;
    }

    if (v53 >= v48)
    {
      v51 = v53;
    }

    *v137 = v51;
    *(v52 + 8) = 0;
  }

  v152[0] = v47;
  sub_100072428(&qword_1000AAEA8, 255, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if ((v151 > 0x24 || ((1 << v151) & 0x1400C046DALL) == 0) && v151 != 111 && v151 != 115)
  {
    v152[0] = v47;
    _BridgedStoredNSError.code.getter();
    if (v151 == 26 || v151 == 28)
    {
      sub_100072428(&qword_1000AB008, v98, type metadata accessor for EventUploader);
      v99 = v135;
      static LoggedObject.logger.getter();
      v100 = *(v49 + 16);
      v101 = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v140 = a1;
      v142 = v100;
      (v100)(v136, a1, v44);
      v102 = v99;
      v103 = v44;
      v104 = v47;
      v105 = Logger.logObject.getter();
      v106 = v49;
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v107))
      {
        v108 = swift_slowAlloc();
        v139 = v101;
        v109 = v108;
        v110 = swift_slowAlloc();
        v151 = v104;
        v152[0] = v110;
        *v109 = 134218242;
        _BridgedStoredNSError.code.getter();
        *(v109 + 4) = v150;

        *(v109 + 12) = 2082;
        sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID);
        v111 = v136;
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        v114 = v113;
        (*(v146 + 8))(v111, v103);
        v115 = sub_100035120(v112, v114, v152);

        *(v109 + 14) = v115;
        _os_log_impl(&_mh_execute_header, v105, v107, "Zone does not exist (%ld), dropping event %{public}s", v109, 0x16u);
        sub_10000D330(v110);

        (*(v144 + 8))(v135, v143);
        v95 = v145;
        v73 = v146;
        v44 = v103;
      }

      else
      {

        (*(v106 + 8))(v136, v103);
        (*(v144 + 8))(v102, v143);
        v95 = v145;
        v44 = v103;
        v73 = v106;
      }

      (v142)(v95, v140, v44);
    }

    else
    {
      sub_100072428(&qword_1000AB008, v98, type metadata accessor for EventUploader);
      v116 = v134;
      static LoggedObject.logger.getter();
      v117 = *(v49 + 16);
      v139 = ((v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v142 = v117;
      (v117)(v46, a1, v44);
      v118 = v47;
      v119 = v116;
      v120 = v46;
      v121 = v118;
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v140 = a1;
        v126 = v125;
        v141 = swift_slowAlloc();
        v149 = v121;
        v150 = v141;
        *v124 = 134218498;
        _BridgedStoredNSError.code.getter();
        *(v124 + 4) = v148;

        *(v124 + 12) = 2082;
        sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID);
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        v129 = v128;
        v130 = v146;
        (*(v146 + 8))(v120, v147);
        v131 = sub_100035120(v127, v129, &v150);

        *(v124 + 14) = v131;
        *(v124 + 22) = 2114;
        v132 = v121;
        v133 = _swift_stdlib_bridgeErrorToNSError();
        *(v124 + 24) = v133;
        *v126 = v133;
        _os_log_impl(&_mh_execute_header, v122, v123, "Unhandled CloudKit error code (%ld), dropping event %{public}s: %{public}@", v124, 0x20u);
        sub_10000D620(v126, &unk_1000AB7D0, &qword_100085510);
        a1 = v140;

        sub_10000D330(v141);

        v44 = v147;

        (*(v144 + 8))(v134, v143);
        v95 = v145;
        v73 = v130;
      }

      else
      {

        v73 = v146;
        (*(v146 + 8))(v120, v44);
        (*(v144 + 8))(v119, v143);
        v95 = v145;
      }

      (v142)(v145, a1, v44);
    }

LABEL_23:
    v96 = 0;
    return (*(v73 + 56))(v95, v96, 1, v44);
  }

  sub_100072428(&qword_1000AB008, v54, type metadata accessor for EventUploader);
  v55 = v140;
  static LoggedObject.logger.getter();
  v56 = v139;
  (*(v49 + 16))(v139, a1, v44);
  v57 = v47;
  v58 = Logger.logObject.getter();
  v59 = v49;
  v60 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v58, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v152[0] = v142;
    *v61 = 136446466;
    sub_100072428(&qword_1000AB0D8, 255, &type metadata accessor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    (*(v59 + 8))(v56, v147);
    v66 = sub_100035120(v63, v65, v152);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2114;
    v67 = v57;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 14) = v68;
    *v62 = v68;
    _os_log_impl(&_mh_execute_header, v58, v60, "Error indicates retry may succeed, holding on to event %{public}s: %{public}@", v61, 0x16u);
    sub_10000D620(v62, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v142);

    v44 = v147;
  }

  else
  {

    (*(v59 + 8))(v56, v44);
  }

  (*(v144 + 8))(v55, v143);
  v96 = 1;
  v95 = v145;
  v73 = v59;
  return (*(v73 + 56))(v95, v96, 1, v44);
}

uint64_t sub_100071468(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100072428(&unk_1000AC310, 255, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v19 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v18 = ~v10;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(a2 + 48) + v14 * v11, v3);
      sub_100072428(&qword_1000AB730, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v11 = (v11 + 1) & v18;
    }

    while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100071684(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = *v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1000717A0, 0, 0);
}

uint64_t sub_1000717A0(uint64_t a1, uint64_t a2)
{
  v58 = v2;
  v3 = *(*(v2 + 32) + 16);
  *(v2 + 112) = v3;
  *(v2 + 120) = sub_100072428(&qword_1000AB008, a2, type metadata accessor for EventUploader);
  v4 = *(v2 + 48);
  if (v3)
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 48);
    static LoggedObject.logger.getter();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v2 + 32);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v3;

      _os_log_impl(&_mh_execute_header, v7, v8, "Deleting %ld record identifier(s) for successful uploads from the local database", v11, 0xCu);
    }

    else
    {
      v28 = *(v2 + 32);
    }

    v30 = *(v2 + 88);
    v29 = *(v2 + 96);
    v31 = *(v2 + 56);
    v32 = *(v2 + 64);
    v33 = *(v2 + 48);
    v34 = *(v2 + 32);
    v35 = *(v32 + 8);
    *(v2 + 128) = v35;
    *(v2 + 136) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v29, v31);
    static LoggedObject.logger.getter();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v2 + 88);
    v40 = *(v2 + 56);
    if (v38)
    {
      v55 = v35;
      v41 = *(v2 + 32);
      v42 = swift_slowAlloc();
      v56 = v3;
      v57 = swift_slowAlloc();
      v43 = v57;
      *v42 = 136315138;
      type metadata accessor for UUID();
      v44 = Array.description.getter();
      v46 = sub_100035120(v44, v45, &v57);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s", v42, 0xCu);
      sub_10000D330(v43);
      v3 = v56;

      v55(v39, v40);
    }

    else
    {

      v35(v39, v40);
    }

    v47 = *(v2 + 40);
    v48 = *(v2 + 168);
    v49 = type metadata accessor for EventUploadSubtaskLogEvent();
    v50 = objc_allocWithZone(v49);
    v51 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
    type metadata accessor for MetricsManager();
    *&v50[v51] = static MetricsManager.sharedInstance.getter();
    v50[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 2;
    *&v50[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = v3;
    v50[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = v48;
    *(v2 + 16) = v50;
    *(v2 + 24) = v49;
    *(v2 + 144) = objc_msgSendSuper2((v2 + 16), "init");
    v52 = *sub_10000D224((v47 + 56), *(v47 + 80));
    v53 = swift_task_alloc();
    *(v2 + 152) = v53;
    *v53 = v2;
    v53[1] = sub_100071C64;
    v54 = *(v2 + 32);

    return sub_1000769B8(v54);
  }

  else
  {
    v12 = *(v2 + 104);
    v13 = *(v2 + 48);
    static LoggedObject.logger.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v2 + 104);
    v18 = *(v2 + 56);
    v19 = *(v2 + 64);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No record identifiers for successful uploads to delete", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
    v22 = *(v2 + 96);
    v21 = *(v2 + 104);
    v24 = *(v2 + 80);
    v23 = *(v2 + 88);
    v25 = *(v2 + 72);

    v26 = *(v2 + 8);

    return v26();
  }
}

uint64_t sub_100071C64()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100071EEC;
  }

  else
  {
    v3 = sub_100071D78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100071D78()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  static LoggedObject.logger.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully deleted %ld record identifier(s)", v9, 0xCu);
  }

  else
  {
    v10 = *(v0 + 32);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  (*(v0 + 128))(*(v0 + 80), *(v0 + 56));
  sub_100031AD8();

  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 72);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100071EEC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v0[6];
  sub_100031DC0();
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete record identifier(s): %{public}@", v9, 0xCu);
    sub_10000D620(v10, &unk_1000AB7D0, &qword_100085510);
  }

  v12 = v0[20];
  v13 = v6;
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[16];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v25 = v0[10];
  v20 = v0[9];
  v21 = v0[7];

  v16(v20, v21);
  swift_willThrow();

  v22 = v0[1];
  v23 = v0[20];

  return v22();
}

uint64_t sub_1000720D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007211C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_10006D9BC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000721DC()
{
  sub_10000D330((v0 + 16));

  sub_10000D330((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100072224(uint64_t a1)
{
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = related decl 'e' for CKErrorCode.retryAfterSeconds.getter();
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  sub_100072428(&qword_1000AAEA8, 255, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if ((v5 > 0x24 || ((1 << v5) & 0x1400C046DALL) == 0) && v5 != 111 && v5 != 115)
  {

LABEL_10:
    swift_errorRetain();
    return a1;
  }

  return 0;
}

unint64_t sub_10007236C()
{
  result = qword_1000AC170;
  if (!qword_1000AC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC170);
  }

  return result;
}

uint64_t sub_1000723C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CED0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100072428(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 sub_10007249C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000724B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100072500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007257C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100072664, 0, 0);
}

uint64_t sub_100072664()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = sub_1000791D8;
  v8[3] = v7;
  v8[4] = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v2 + 104);

  v10(v1, v9, v4);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v6;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1000727EC;
  v13 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_10007931C, v8, &type metadata for Int);
}

uint64_t sub_1000727EC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[9];
    (*(v3[6] + 8))(v3[7], v3[5]);

    return _swift_task_switch(sub_1000729A0, 0, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];
    v8 = v3[6];
    v7 = v3[7];
    v9 = v3[5];

    (*(v8 + 8))(v7, v9);
    v10 = v3[2];

    v11 = v3[1];

    return v11(v10);
  }
}

uint64_t sub_1000729A0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

id sub_100072A0C(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  if (!v3)
  {
    return [a3 reset];
  }

  [a3 reset];
  return swift_willThrow();
}

uint64_t sub_100072A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100072BC0, 0, 0);
}

uint64_t sub_100072BC0()
{
  v40 = v0;
  v1 = *(v0[6] + 16);
  v2 = [v1 persistentStoreCoordinator];
  v0[14] = v2;
  if (v2)
  {
    v4 = v2;
    v5 = v0[12];
    v37 = v0[11];
    v38 = v0[13];
    v6 = v0[6];
    v8 = v0[4];
    v7 = v0[5];
    v36 = v0[7];
    v9 = v0[2];
    v10 = v0[3];
    v11 = swift_allocObject();
    v0[15] = v11;
    v11[2] = v4;
    v11[3] = v9;
    v11[4] = v10;
    v11[5] = v8;
    v11[6] = v7;
    v11[7] = v6;
    v11[8] = v36;
    v12 = swift_allocObject();
    v0[16] = v12;
    v12[2] = sub_100079ABC;
    v12[3] = v11;
    v12[4] = v1;
    v13 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v14 = *(v5 + 104);
    v15 = v4;

    v14(v38, v13, v37);
    v16 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v1;
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_100072F2C;
    v18 = v0[13];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_100079B60, v12, &type metadata for () + 8);
  }

  else
  {
    v19 = v0[10];
    v20 = v0[7];
    v21 = v0[3];
    sub_1000793B4(&qword_1000AC238, v3, type metadata accessor for CoreDataDatabase);
    static LoggedObject.logger.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[9];
    v25 = v0[10];
    v27 = v0[8];
    if (v24)
    {
      v29 = v0[2];
      v28 = v0[3];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100035120(v29, v28, &v39);
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not set metadata '%{public}s' without coordinator", v30, 0xCu);
      sub_10000D330(v31);
    }

    (*(v26 + 8))(v25, v27);
    v32 = v0[13];
    v33 = v0[10];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_100072F2C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v6 = sub_100073130;
  }

  else
  {
    v7 = v2[15];
    v9 = v2[12];
    v8 = v2[13];
    v10 = v2[11];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1000730B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000730B8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100073130()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

void sub_1000731B8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v75 = a2;
  v10 = type metadata accessor for Logger();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v67 - v16;
  v18 = __chkstk_darwin(v15);
  v73 = &v67 - v19;
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v22 = [a1 persistentStores];
  sub_10000D544(0, &qword_1000AB420, NSPersistentStore_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v24 = *(v23 + 32);
      }

      v25 = v24;

      v70 = sub_1000793B4(&qword_1000AC238, v26, type metadata accessor for CoreDataDatabase);
      static LoggedObject.logger.getter();

      v27 = Logger.logObject.getter();
      v28 = a5;
      v29 = v21;
      v30 = static os_log_type_t.default.getter();

      v31 = os_log_type_enabled(v27, v30);
      v72 = a3;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v69 = v25;
        v33 = v32;
        v68 = swift_slowAlloc();
        *&v80[0] = v68;
        *v33 = 136446466;
        *(v33 + 4) = sub_100035120(v75, a3, v80);
        *(v33 + 12) = 2080;
        v71 = v29;
        v34 = a4;
        *&v82 = a4;
        *(&v82 + 1) = v28;

        sub_10000CED0(&qword_1000AC298, &qword_100087CB8);
        v35 = String.init<A>(describing:)();
        v37 = sub_100035120(v35, v36, v80);

        *(v33 + 14) = v37;
        v38 = v76;
        _os_log_impl(&_mh_execute_header, v27, v30, "Setting metadata: '%{public}s' = %s", v33, 0x16u);
        swift_arrayDestroy();

        v25 = v69;

        v39 = v71;
        v71 = *(v38 + 8);
        v71(v39, v77);
        if (v28)
        {
LABEL_8:
          v40 = &type metadata for String;
          v41 = v28;
          goto LABEL_11;
        }
      }

      else
      {

        v71 = *(v76 + 8);
        v71(v29, v77);
        v34 = a4;
        if (v28)
        {
          goto LABEL_8;
        }
      }

      v34 = 0;
      v41 = 0;
      v40 = 0;
      v83 = 0;
LABEL_11:
      *&v82 = v34;
      *(&v82 + 1) = v41;
      v84 = v40;

      v42 = [v25 metadata];
      if (!v42)
      {
        __break(1u);
        return;
      }

      v43 = v42;
      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = v44;
      if (v28)
      {
        sub_10004DBDC(&v82, v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v44;
        sub_10007EBF4(v80, v75, v72, isUniquelyReferenced_nonNull_native);
        if (v79)
        {
LABEL_14:
          v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          goto LABEL_17;
        }
      }

      else
      {
        sub_10000D620(&v82, &qword_1000ABEB8, &qword_1000873A0);
        sub_1000791F4(v75, v72, v80);
        sub_10000D620(v80, &qword_1000ABEB8, &qword_1000873A0);
        if (v81)
        {
          goto LABEL_14;
        }
      }

      v46.super.isa = 0;
LABEL_17:
      [v25 setMetadata:v46.super.isa];

      v47 = *(v74 + 16);
      *&v82 = 0;
      if ([v47 save:&v82])
      {
        v48 = v82;
        v49 = v73;
        static LoggedObject.logger.getter();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Successfully set metadata", v52, 2u);
        }

        v71(v49, v77);
      }

      else
      {
        v53 = v82;
        v54 = _convertNSErrorToError(_:)();

        swift_willThrow();
        static LoggedObject.logger.getter();
        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        v78 = v54;

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = v25;
          v59 = swift_slowAlloc();
          *v57 = 138543362;
          swift_errorRetain();
          v60 = _swift_stdlib_bridgeErrorToNSError();
          *(v57 + 4) = v60;
          *v59 = v60;
          _os_log_impl(&_mh_execute_header, v55, v56, "Failed to save metadata changes: %{public}@", v57, 0xCu);
          sub_10000D620(v59, &unk_1000AB7D0, &qword_100085510);
          v25 = v58;
        }

        v71(v14, v77);
        swift_willThrow();
      }

      return;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_1000793B4(&qword_1000AC238, v61, type metadata accessor for CoreDataDatabase);
  static LoggedObject.logger.getter();

  v62 = a3;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v82 = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_100035120(v75, v62, &v82);
    _os_log_impl(&_mh_execute_header, v63, v64, "Could not set metadata '%{public}s' without persistent store", v65, 0xCu);
    sub_10000D330(v66);
  }

  (*(v76 + 8))(v17, v77);
}

uint64_t sub_100073A78(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  v4 = type metadata accessor for Logger();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100073B7C, 0, 0);
}

id sub_100073B7C()
{
  v69 = v0;
  v1 = [*(v0[12] + 16) persistentStoreCoordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 persistentStores];
    sub_10000D544(0, &qword_1000AB420, NSPersistentStore_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_4:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(v5 + 32);
        }

        v8 = v7;

        result = [v8 metadata];
        if (result)
        {
          v9 = result;
          v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v10 + 16) && (v11 = sub_10007B4E8(v0[10], v0[11]), (v12 & 1) != 0))
          {
            sub_10000CFA0(*(v10 + 56) + 32 * v11, (v0 + 2));

            v13 = swift_dynamicCast();
            v15 = v0[8];
            if (v13)
            {
              v16 = v0[8];
            }

            else
            {
              v16 = 0;
            }

            if (v13)
            {
              v17 = v0[9];
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {

            v16 = 0;
            v17 = 0;
          }

          v31 = v0[18];
          v32 = v0[13];
          v33 = v0[11];
          sub_1000793B4(&qword_1000AC238, v14, type metadata accessor for CoreDataDatabase);
          static LoggedObject.logger.getter();

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();

          v36 = os_log_type_enabled(v34, v35);
          v37 = v0[18];
          v39 = v0[14];
          v38 = v0[15];
          if (v36)
          {
            v65 = v0[14];
            v66 = v3;
            v41 = v0[10];
            v40 = v0[11];
            v64 = v8;
            v42 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v42 = 136446466;
            *(v42 + 4) = sub_100035120(v41, v40, &v68);
            *(v42 + 12) = 2080;
            v0[6] = v16;
            v0[7] = v17;

            sub_10000CED0(&qword_1000AC298, &qword_100087CB8);
            v43 = String.init<A>(describing:)();
            v45 = sub_100035120(v43, v44, &v68);

            *(v42 + 14) = v45;
            _os_log_impl(&_mh_execute_header, v34, v35, "Got metadata value for '%{public}s': %s", v42, 0x16u);
            swift_arrayDestroy();

            (*(v38 + 8))(v37, v65);
          }

          else
          {

            (*(v38 + 8))(v37, v39);
          }

          goto LABEL_29;
        }

LABEL_34:
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v46 = v0[17];
    v47 = v0[13];
    v48 = v0[11];

    sub_1000793B4(&qword_1000AC238, v49, type metadata accessor for CoreDataDatabase);
    static LoggedObject.logger.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[17];
    v55 = v0[14];
    v54 = v0[15];
    if (v52)
    {
      v67 = v3;
      v57 = v0[10];
      v56 = v0[11];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v68 = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_100035120(v57, v56, &v68);
      _os_log_impl(&_mh_execute_header, v50, v51, "Could not get metadata '%{public}s' without persistent store", v58, 0xCu);
      sub_10000D330(v59);
    }

    else
    {
    }

    (*(v54 + 8))(v53, v55);
  }

  else
  {
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[11];
    sub_1000793B4(&qword_1000AC238, v2, type metadata accessor for CoreDataDatabase);
    static LoggedObject.logger.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    if (v23)
    {
      v28 = v0[10];
      v27 = v0[11];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100035120(v28, v27, &v68);
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not get metadata '%{public}s' without coordinator", v29, 0xCu);
      sub_10000D330(v30);
    }

    (*(v25 + 8))(v24, v26);
  }

  v16 = 0;
  v17 = 0;
LABEL_29:
  v61 = v0[17];
  v60 = v0[18];
  v62 = v0[16];

  v63 = v0[1];

  return v63(v16, v17);
}

uint64_t sub_100074230()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10007428C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000743DC, 0, 0);
}

uint64_t sub_1000743DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[2] + 16);
  sub_1000793B4(&qword_1000AC238, a2, type metadata accessor for CoreDataDatabase);
  v4 = v2[4];
  if (v3)
  {
    v5 = v2[11];
    v6 = v2[4];
    static LoggedObject.logger.getter();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v2[2];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v3;

      _os_log_impl(&_mh_execute_header, v7, v8, "Saving %ld event(s)", v11, 0xCu);
    }

    else
    {
      v26 = v2[2];
    }

    v27 = v2[6];
    v40 = v2[7];
    v28 = v2[4];
    v29 = v2[5];
    v31 = v2[2];
    v30 = v2[3];
    (*(v2[9] + 8))(v2[11], v2[8]);
    v32 = *(v30 + 16);
    v33 = swift_allocObject();
    v2[12] = v33;
    v33[2] = v31;
    v33[3] = v30;
    v33[4] = v28;
    v34 = swift_allocObject();
    v2[13] = v34;
    v34[2] = sub_100079A4C;
    v34[3] = v33;
    v34[4] = v32;
    v35 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v36 = *(v27 + 104);

    v36(v40, v35, v29);
    v37 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v32;
    v38 = swift_task_alloc();
    v2[14] = v38;
    *v38 = v2;
    v38[1] = sub_10007477C;
    v39 = v2[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v38, v39, sub_100079B60, v34, &type metadata for () + 8);
  }

  else
  {
    v12 = v2[10];
    v13 = v2[4];
    static LoggedObject.logger.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v2[9];
    v17 = v2[10];
    v19 = v2[8];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No events to save", v20, 2u);
    }

    (*(v18 + 8))(v17, v19);
    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[7];

    v24 = v2[1];

    return v24();
  }
}

uint64_t sub_10007477C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  if (v0)
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v6 = sub_100074980;
  }

  else
  {
    v7 = v2[12];
    v9 = v2[6];
    v8 = v2[7];
    v10 = v2[5];

    (*(v9 + 8))(v8, v10);
    v6 = sub_100074908;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100074908()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100074980()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_100074A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  v103 = type metadata accessor for Date();
  v106 = *(v103 - 8);
  v5 = *(v106 + 64);
  __chkstk_darwin(v103);
  v102 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UUID();
  v105 = *(v101 - 8);
  v7 = *(v105 + 64);
  v8 = __chkstk_darwin(v101);
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v108 = &v83 - v10;
  v99 = type metadata accessor for PendingEventData();
  v11 = *(v99 - 1);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v99);
  v100 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v83 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v85 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v83 = &v83 - v23;
  v24 = __chkstk_darwin(v22);
  v90 = &v83 - v25;
  __chkstk_darwin(v24);
  v27 = &v83 - v26;
  v91 = sub_1000793B4(&qword_1000AC238, v28, type metadata accessor for CoreDataDatabase);
  v86 = a3;
  static LoggedObject.logger.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Creating pending events from event data", v31, 2u);
  }

  v32 = *(v18 + 8);
  v88 = v17;
  v87 = v18 + 8;
  v84 = v32;
  v32(v27, v17);
  v33 = *(a1 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    v109 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v35 = *(v89 + 16);
    v36 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v96 = (v105 + 16);
    v97 = v35;
    v94 = (v106 + 8);
    v95 = (v106 + 16);
    v92 = *(v11 + 72);
    v93 = (v105 + 8);
    v38 = v101;
    v37 = v102;
    v39 = v107;
    v40 = v16;
    v41 = v100;
    v42 = v103;
    v98 = v40;
    while (1)
    {
      v106 = v36;
      v107 = v33;
      sub_100037660(v36, v40);
      sub_100037660(v40, v41);
      v47 = *v96;
      (*v96)(v108, v41, v38);
      v48 = v99;
      v49 = v99[8];
      v50 = v38;
      v52 = *(v41 + v49);
      v51 = *(v41 + v49 + 8);
      v104 = *(v41 + v99[7]);
      v105 = v51;
      v47(v39, v41 + v99[5], v50);
      v53 = v37;
      (*v95)(v37, v41 + v48[6], v42);
      v54 = v48[10];
      v55 = *(v41 + v48[9]);
      v56 = *(v41 + v54);
      v57 = objc_allocWithZone(type metadata accessor for PendingUploadEvent());

      v58 = [v57 initWithContext:v97];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v58 setIdentifier:isa];

      [v58 setType:v104];
      v60 = Data._bridgeToObjectiveC()().super.isa;
      [v58 setData:v60];

      v61 = UUID._bridgeToObjectiveC()().super.isa;
      [v58 setHomeIdentifier:v61];

      v62 = Date._bridgeToObjectiveC()().super.isa;
      [v58 setDate:v62];

      sub_100082EE4(v55);
      v63 = String._bridgeToObjectiveC()();
      [v58 willChangeValueForKey:v63];

      if (v56 > 1)
      {
        break;
      }

      v42 = v103;
      v41 = v100;
      v38 = v101;
      v43 = Int16._bridgeToObjectiveC()().super.super.isa;
      [v58 setPrimitiveDatabase:v43];

      v44 = String._bridgeToObjectiveC()();
      [v58 didChangeValueForKey:v44];

      (*v94)(v53, v42);
      v45 = *v93;
      (*v93)(v39, v38);
      v45(v108, v38);
      v40 = v98;
      sub_1000376C4(v98);
      sub_1000376C4(v41);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v46 = v109[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v36 = v106 + v92;
      v33 = v107 - 1;
      v37 = v102;
      if (v107 == 1)
      {
        v34 = v109;
        goto LABEL_9;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_9:
    static LoggedObject.logger.getter();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v88;
    v68 = v84;
    if (v66)
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      if (v34 >> 62)
      {
        v70 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v70 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v69 + 4) = v70;

      _os_log_impl(&_mh_execute_header, v64, v65, "Saving %ld pending event(s)", v69, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v68(v90, v67);
    v71 = *(v89 + 16);
    v109 = 0;
    if ([v71 save:&v109])
    {
      v72 = v109;
      static LoggedObject.logger.getter();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Successfully saved pending events", v75, 2u);
      }

      return (v68)(v83, v67);
    }

    else
    {
      v77 = v109;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static LoggedObject.logger.getter();
      swift_errorRetain();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138543362;
        swift_errorRetain();
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v80 + 4) = v82;
        *v81 = v82;
        _os_log_impl(&_mh_execute_header, v78, v79, "Failed to save pending events: %{public}@", v80, 0xCu);
        sub_10000D620(v81, &unk_1000AB7D0, &qword_100085510);
      }

      v68(v85, v67);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100075500(uint64_t a1)
{
  *(v2 + 16) = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000755BC;

  return sub_1000757D4(a1);
}

uint64_t sub_1000755BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_10007570C, 0, 0);
  }
}

uint64_t sub_10007570C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_100079454(v1, sub_10007944C, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1000757D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075918, 0, 0);
}

uint64_t sub_100075918(uint64_t a1, uint64_t a2)
{
  v3 = v2[11];
  v4 = v2[5];
  sub_1000793B4(&qword_1000AC238, a2, type metadata accessor for CoreDataDatabase);
  static LoggedObject.logger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v2[3];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching pending events (limit = %ld)", v8, 0xCu);
  }

  v10 = v2[10];
  v9 = v2[11];
  v11 = v2[9];
  v24 = v2[8];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2[3];

  (*(v10 + 8))(v9, v11);
  v17 = *(v14 + 16);
  v18 = swift_allocObject();
  v2[12] = v18;
  v18[2] = v16;
  v18[3] = v14;
  v18[4] = v15;
  (*(v13 + 104))(v24, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v12);
  v19 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v20 = swift_task_alloc();
  v2[13] = v20;
  v21 = sub_10000CED0(&qword_1000AC288, &qword_100087C90);
  *v20 = v2;
  v20[1] = sub_100075B58;
  v22 = v2[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2 + 2, v22, sub_1000799D0, v18, v21);
}

uint64_t sub_100075B58()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_100075D64;
  }

  else
  {
    v7 = sub_100075CEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100075CEC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100075D64()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

BOOL sub_100075DD4(uint64_t a1)
{
  v2 = type metadata accessor for PendingEventData();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(v2 + 40));
  if (v15 == 2)
  {
    sub_1000793B4(&qword_1000AC238, v12, type metadata accessor for CoreDataDatabase);
    static LoggedObject.logger.getter();
    sub_100037660(a1, v8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v9;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_100037660(v8, v6);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_1000376C4(v8);
      v24 = sub_100035120(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Dropping event with unknown target database: %s", v19, 0xCu);
      sub_10000D330(v20);

      (*(v10 + 8))(v14, v26);
    }

    else
    {

      sub_1000376C4(v8);
      (*(v10 + 8))(v14, v9);
    }
  }

  return v15 != 2;
}

void sub_100076090(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  v90 = a1;
  v82 = a4;
  v6 = type metadata accessor for PendingEventData();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v81 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v89 = &v80 - v19;
  __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v85 = sub_1000793B4(&qword_1000AC238, v22, type metadata accessor for CoreDataDatabase);
  v86 = a3;
  static LoggedObject.logger.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Beginning fetch", v25, 2u);
  }

  v27 = *(v11 + 8);
  v26 = v11 + 8;
  v84 = v10;
  v87 = v27;
  v88 = v26;
  v27(v21, v10);
  v28 = type metadata accessor for PendingUploadEvent();
  v94 = v28;
  sub_10000CED0(&qword_1000AC290, &qword_100087C98);
  if ((String.init<A>(describing:)() != 0xD000000000000012 || 0x800000010008A000 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v30 = objc_allocWithZone(NSFetchRequest);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 initWithEntityName:v31];

  v33 = v32;
  [v32 setReturnsObjectsAsFaults:0];
  [v32 setFetchLimit:v90];
  if ((*(a2 + 32) & 1) == 0)
  {
    [v32 setFetchBatchSize:*(a2 + 24)];
  }

  v34 = *(a2 + 16);
  v83 = v33;
  v35 = v91;
  v36 = NSManagedObjectContext.fetch<A>(_:)();
  if (v35)
  {
    static LoggedObject.logger.getter();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v84;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to fetch pending events: %{public}@", v41, 0xCu);
      sub_10000D620(v42, &unk_1000AB7D0, &qword_100085510);
    }

    v87(v15, v40);
    swift_willThrow();

    return;
  }

  v26 = v36;
  v80 = 0;
  v44 = v89;
  static LoggedObject.logger.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();
  v47 = os_log_type_enabled(v45, v46);
  v28 = v84;
  if (v47)
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Fetch completed successfully", v48, 2u);
  }

  v87(v44, v28);
  if (v26 >> 62)
  {
LABEL_29:
    v49 = _CocoaArrayWrapper.endIndex.getter();
    if (v49)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v49 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
LABEL_16:
    v94 = &_swiftEmptyArrayStorage;
    sub_10003E6F8(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v51 = v94;
    v52 = v26;
    v89 = (v26 & 0xC000000000000001);
    v90 = v49;
    v91 = v26;
    do
    {
      if (v89)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v53 = *(v52 + 8 * v50 + 32);
      }

      v54 = v53;
      v55 = [v53 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = [v54 homeIdentifier];
      v57 = v93;
      v58 = &v9[v93[5]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = [v54 date];
      v60 = &v9[v57[6]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = [v54 type];
      v62 = [v54 data];
      v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = String._bridgeToObjectiveC()();
      [v54 willAccessValueForKey:v66];

      v67 = [v54 primitiveUnencryptedTags];
      if (v67)
      {
        v68 = v67;
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v69 = &_swiftEmptyArrayStorage;
      }

      v70 = String._bridgeToObjectiveC()();
      [v54 didAccessValueForKey:v70];

      LOBYTE(v70) = sub_100082E00();
      v71 = v93;
      *&v9[v93[7]] = v61;
      v72 = &v9[v71[8]];
      *v72 = v63;
      v72[1] = v65;
      *&v9[v71[9]] = v69;
      v9[v71[10]] = v70;
      v94 = v51;
      v74 = v51[2];
      v73 = v51[3];
      if (v74 >= v73 >> 1)
      {
        sub_10003E6F8(v73 > 1, v74 + 1, 1);
        v51 = v94;
      }

      ++v50;
      v51[2] = v74 + 1;
      sub_10003FB74(v9, v51 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v74);
      v52 = v91;
    }

    while (v90 != v50);

    v28 = v84;
    goto LABEL_31;
  }

LABEL_30:

  v51 = &_swiftEmptyArrayStorage;
LABEL_31:
  v75 = v81;
  static LoggedObject.logger.getter();

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 134217984;
    *(v78 + 4) = v51[2];

    _os_log_impl(&_mh_execute_header, v76, v77, "Fetched %ld pending event(s)", v78, 0xCu);
  }

  else
  {
  }

  v79 = v82;

  v87(v75, v28);
  *v79 = v51;
}

uint64_t sub_1000769B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100076AFC, 0, 0);
}

uint64_t sub_100076AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 16))
  {
    v4 = v2[9];
    v29 = v2[10];
    v5 = v2[8];
    v7 = v2[3];
    v6 = v2[4];
    v8 = *(v7 + 16);
    v9 = swift_allocObject();
    v2[11] = v9;
    v9[2] = v3;
    v9[3] = v7;
    v9[4] = v6;
    v10 = swift_allocObject();
    v2[12] = v10;
    v10[2] = sub_1000793FC;
    v10[3] = v9;
    v10[4] = v8;
    v11 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v12 = *(v4 + 104);

    v12(v29, v11, v5);
    v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

    v8;
    v14 = swift_task_alloc();
    v2[13] = v14;
    *v14 = v2;
    v14[1] = sub_100076DD0;
    v15 = v2[10];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, sub_10007941C, v10, &type metadata for () + 8);
  }

  else
  {
    v16 = v2[7];
    v17 = v2[4];
    sub_1000793B4(&qword_1000AC238, a2, type metadata accessor for CoreDataDatabase);
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v2[6];
    v21 = v2[7];
    v23 = v2[5];
    if (v20)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No identifiers to delete", v24, 2u);
    }

    (*(v22 + 8))(v21, v23);
    v25 = v2[10];
    v26 = v2[7];

    v27 = v2[1];

    return v27();
  }
}

uint64_t sub_100076DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v6 = sub_100076FC8;
  }

  else
  {
    v8 = v2[10];
    v7 = v2[11];
    v11 = v2 + 8;
    v9 = v2[8];
    v10 = v11[1];

    (*(v10 + 8))(v8, v9);
    v6 = sub_100076F58;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100076F58()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100076FC8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

void sub_100077040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = type metadata accessor for Logger();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  v7 = __chkstk_darwin(v5);
  v38 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v36 - v9;
  type metadata accessor for PendingUploadEvent();
  v11 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_10000D544(0, &qword_1000AC258, NSPredicate_ptr);
  sub_10000CED0(&qword_1000AC260, &qword_100087C58);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100085330;
  *(v12 + 56) = sub_10000CED0(&qword_1000AC278, &qword_100087C70);
  *(v12 + 64) = sub_100031A38(&qword_1000AC280, &qword_1000AC278, &qword_100087C70);
  *(v12 + 32) = a1;

  v13 = NSPredicate.init(format:_:)();
  v37 = v11;
  [v11 setPredicate:v13];

  sub_1000793B4(&qword_1000AC238, v14, type metadata accessor for CoreDataDatabase);
  v36[1] = a3;
  static LoggedObject.logger.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 134218242;
    *(v17 + 4) = *(a1 + 16);

    *(v17 + 12) = 2080;
    type metadata accessor for UUID();
    v19 = Array.description.getter();
    v21 = sub_100035120(v19, v20, &v42);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Deleting %ld identifier(s): %s", v17, 0x16u);
    sub_10000D330(v18);
  }

  else
  {
  }

  v22 = v41;
  v23 = *(v40 + 8);
  v23(v10, v41);
  v24 = v38;
  static LoggedObject.logger.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = v24;
    v29 = swift_slowAlloc();
    v42 = v29;
    *v27 = 136315138;
    type metadata accessor for UUID();
    v30 = Array.description.getter();
    v32 = sub_100035120(v30, v31, &v42);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s", v27, 0xCu);
    sub_10000D330(v29);

    v33 = v41;
    v34 = v28;
  }

  else
  {

    v34 = v24;
    v33 = v22;
  }

  v23(v34, v33);
  v35 = v37;
  sub_1000774F4(v37);
}

NSObject *sub_1000774F4(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v61 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v61 - v13;
  __chkstk_darwin(v12);
  v16 = &v61 - v15;
  v17 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:a1];
  [v17 setResultType:2];
  v18 = v1[2];
  *&v65 = 0;
  v19 = [v18 executeRequest:v17 error:&v65];
  v20 = v65;
  if (v19)
  {
    v21 = v19;
    *(&v68 + 1) = sub_10000D544(0, &qword_1000AC240, NSPersistentStoreResult_ptr);
    *&v67 = v21;
    sub_10004DBDC(&v67, v69);
    sub_10000CFA0(v69, &v67);
    sub_10000D544(0, &qword_1000AC248, NSBatchDeleteResult_ptr);
    v22 = v20;
    if (swift_dynamicCast())
    {
      v24 = v65;
      if ([v65 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      v67 = v65;
      v68 = v66;
      if (*(&v66 + 1))
      {
        sub_10000D544(0, &qword_1000AADD0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v47 = v64;
          sub_1000793B4(&qword_1000AC238, v46, type metadata accessor for CoreDataDatabase);
          static LoggedObject.logger.getter();
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Batch delete succeeded", v50, 2u);
          }

          (*(v62 + 8))(v16, v63);
          v27 = [v47 integerValue];

          sub_10000D330(v69);
          return v27;
        }
      }

      else
      {
        sub_10000D620(&v67, &qword_1000ABEB8, &qword_1000873A0);
      }

      sub_1000793B4(&qword_1000AC238, v46, type metadata accessor for CoreDataDatabase);
      static LoggedObject.logger.getter();
      v51 = v24;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v65 = v55;
        *v54 = 136446210;
        if ([v51 result])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v67 = 0u;
          v68 = 0u;
        }

        sub_10000CED0(&qword_1000ABEB8, &qword_1000873A0);
        v56 = String.init<A>(describing:)();
        v58 = sub_100035120(v56, v57, &v65);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Expected number as result, got %{public}s", v54, 0xCu);
        sub_10000D330(v55);
      }

      (*(v62 + 8))(v14, v63);
      v27 = 0x8000000100089F30;
      sub_10007933C();
      swift_allocError();
      *v59 = 0xD000000000000020;
      v59[1] = 0x8000000100089F30;
      swift_willThrow();
    }

    else
    {
      sub_1000793B4(&qword_1000AC238, v23, type metadata accessor for CoreDataDatabase);
      static LoggedObject.logger.getter();
      sub_10000CFA0(v69, &v67);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v65 = v35;
        *v34 = 136446210;
        v36 = *(&v68 + 1);
        v37 = sub_10000D224(&v67, *(&v68 + 1));
        v38 = *(*(v36 - 8) + 64);
        __chkstk_darwin(v37);
        (*(v40 + 16))(&v61 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
        v41 = String.init<A>(describing:)();
        v43 = v42;
        sub_10000D330(&v67);
        v44 = sub_100035120(v41, v43, &v65);

        *(v34 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v32, v33, "Unexpected result type for batch delete: %{public}s", v34, 0xCu);
        sub_10000D330(v35);

        (*(v62 + 8))(v11, v63);
      }

      else
      {

        (*(v62 + 8))(v11, v63);
        sub_10000D330(&v67);
      }

      v27 = 0x8000000100089F00;
      sub_10007933C();
      swift_allocError();
      *v45 = 0xD000000000000027;
      v45[1] = 0x8000000100089F00;
      swift_willThrow();
    }

    sub_10000D330(v69);
    return v27;
  }

  v25 = v65;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_1000793B4(&qword_1000AC238, v26, type metadata accessor for CoreDataDatabase);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Batch delete failed to execute: %{public}@", v29, 0xCu);
    sub_10000D620(v30, &unk_1000AB7D0, &qword_100085510);
  }

  (*(v62 + 8))(v8, v63);
  swift_willThrow();

  return v27;
}

uint64_t sub_100077E7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100077F64, 0, 0);
}

uint64_t sub_100077F64()
{
  v1 = v0[7];
  v15 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v2;
  v8 = swift_allocObject();
  v0[10] = v8;
  v8[2] = sub_100079394;
  v8[3] = v7;
  v8[4] = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v3);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v6;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1000780FC;
  v13 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100079B48, v8, &type metadata for Int);
}

uint64_t sub_1000780FC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[10];
    (*(v3[7] + 8))(v3[8], v3[6]);

    return _swift_task_switch(sub_1000782B0, 0, 0);
  }

  else
  {
    v6 = v3[9];
    v5 = v3[10];
    v8 = v3[7];
    v7 = v3[8];
    v9 = v3[6];

    (*(v8 + 8))(v7, v9);
    v10 = v3[2];

    v11 = v3[1];

    return v11(v10);
  }
}

uint64_t sub_1000782B0()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

void sub_10007831C(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject **a3@<X8>)
{
  v25 = a2;
  v22 = a3;
  v4 = type metadata accessor for Logger();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PendingUploadEvent();
  v8 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_10000D544(0, &qword_1000AC258, NSPredicate_ptr);
  sub_10000CED0(&qword_1000AC260, &qword_100087C58);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100085330;
  *(v9 + 56) = sub_10000CED0(&qword_1000AC268, &qword_100087C60);
  *(v9 + 64) = sub_100031A38(&qword_1000AC270, &qword_1000AC268, &qword_100087C60);
  *(v9 + 32) = a1;

  v10 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v10];

  sub_1000793B4(&qword_1000AC238, v11, type metadata accessor for CoreDataDatabase);
  static LoggedObject.logger.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    sub_1000793B4(&unk_1000AC310, 255, &type metadata accessor for UUID);
    v16 = Set.description.getter();
    v18 = sub_100035120(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Deleting events for homes %s", v14, 0xCu);
    sub_10000D330(v15);
  }

  (*(v23 + 8))(v7, v24);
  v19 = v26;
  v20 = sub_1000774F4(v8);

  if (!v19)
  {
    *v22 = v20;
  }
}

void sub_100078694(NSObject **a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PendingUploadEvent();
  v9 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_1000793B4(&qword_1000AC238, v10, type metadata accessor for CoreDataDatabase);
  static LoggedObject.logger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = v4;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Executing batch delete to clear the database", v13, 2u);
    v2 = v1;
    v4 = v16;
  }

  (*(v5 + 8))(v8, v4);
  v14 = sub_1000774F4(v9);

  if (!v2)
  {
    *a1 = v14;
  }
}

uint64_t sub_100078894()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10007897C, 0, 0);
}

uint64_t sub_10007897C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  v0[9] = v8;
  v8[2] = sub_1000799F0;
  v8[3] = v7;
  v8[4] = v6;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v2 + 104);

  v10(v1, v9, v4);
  v11 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v6;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100078B04;
  v13 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100079B48, v8, &type metadata for Int);
}

uint64_t sub_100078B04()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[9];
    (*(v3[6] + 8))(v3[7], v3[5]);

    return _swift_task_switch(sub_100079B28, 0, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];
    v8 = v3[6];
    v7 = v3[7];
    v9 = v3[5];

    (*(v8 + 8))(v7, v9);
    v10 = v3[2];

    v11 = v3[1];

    return v11(v10);
  }
}

uint64_t sub_100078CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = type metadata accessor for Logger();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v38 = &v37 - v12;
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  sub_1000793B4(&qword_1000AC238, v15, type metadata accessor for CoreDataDatabase);
  static LoggedObject.logger.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = a2;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fetching pending event count", v18, 2u);
  }

  v40 = *(v6 + 8);
  v41 = v6 + 8;
  v40(v14, v42);
  v19 = *(a1 + 16);
  v43 = type metadata accessor for PendingUploadEvent();
  sub_10000CED0(&qword_1000AC290, &qword_100087C98);
  if (String.init<A>(describing:)() == 0xD000000000000012 && 0x800000010008A000 == v20 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v22 = objc_allocWithZone(NSFetchRequest);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 initWithEntityName:v23];

    v25 = v39;
    v26 = NSManagedObjectContext.count<A>(for:)();
    if (v25)
    {

      static LoggedObject.logger.getter();
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138543362;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch pending event count: %{public}@", v29, 0xCu);
        sub_10000D620(v30, &unk_1000AB7D0, &qword_100085510);
      }

      v40(v10, v42);
      return swift_willThrow();
    }

    else
    {
      v32 = v26;

      v33 = v38;
      static LoggedObject.logger.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v34, v35, "Fetched pending event count: %ld", v36, 0xCu);
      }

      result = (v40)(v33, v42);
      *a3 = v32;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000791A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000791D8(NSObject **a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100078694(a1);
}

double sub_1000791F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10007B4E8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000802BC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10004DBDC((*(v12 + 56) + 32 * v9), a3);
    sub_10005A5A0(v9, v12);
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

id sub_100079298@<X0>(void (*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  a1(&v7);
  if (v3)
  {
    [a2 reset];
    return swift_willThrow();
  }

  else
  {
    result = [a2 reset];
    *a3 = v7;
  }

  return result;
}

unint64_t sub_10007933C()
{
  result = qword_1000AC250;
  if (!qword_1000AC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC250);
  }

  return result;
}

uint64_t sub_1000793B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_100079454(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v67 = type metadata accessor for EventWriterScope();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v67);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for PendingEventData();
  v7 = *(v65 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v65);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v66 = &v53 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v53 - v14;
  __chkstk_darwin(v13);
  v64 = &v53 - v16;
  v73 = &_swiftEmptyDictionarySingleton;
  v72 = a1;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v58 = enum case for EventWriterScope.shared(_:);
    v61 = (v4 + 104);
    v60 = enum case for EventWriterScope.owned(_:);
    v56 = (v4 + 8);
    v57 = v4 + 32;
    v69 = &_swiftEmptyDictionarySingleton;
    v55 = xmmword_100085330;
    v62 = v4;
    while (1)
    {
      for (i = v18; ; ++i)
      {
        if (i >= v17)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_32:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v21 = *(v7 + 72);
        sub_100037660(v72 + v20 + v21 * i, v15);
        v18 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_28;
        }

        if (v70(v15))
        {
          break;
        }

        sub_1000376C4(v15);
        if (v18 == v17)
        {
          return v69;
        }
      }

      v22 = v64;
      sub_10003FB74(v15, v64);
      v23 = v22;
      v24 = v66;
      sub_10003FB74(v23, v66);
      v25 = v60;
      if (*(v24 + *(v65 + 40)))
      {
        v25 = v58;
        if (*(v24 + *(v65 + 40)) != 1)
        {
          goto LABEL_31;
        }
      }

      v26 = v68;
      (*v61)(v68, v25, v67);
      v27 = v26;
      v28 = v69;
      v30 = sub_10007B5A4(v27);
      v31 = v28[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      v34 = v62;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_29;
      }

      if (v28[3] >= v33)
      {
        goto LABEL_15;
      }

      LODWORD(v59) = v29;
      sub_10007BD1C(v33, 1);
      v69 = v73;
      v35 = sub_10007B5A4(v68);
      v36 = v29 & 1;
      LOBYTE(v29) = v59;
      if ((v59 & 1) != v36)
      {
        goto LABEL_32;
      }

      v30 = v35;
LABEL_15:
      v59 = v30;
      if ((v29 & 1) == 0)
      {
        sub_10000CED0(&qword_1000AB460, &qword_1000866B8);
        v44 = swift_allocObject();
        *(v44 + 16) = v55;
        sub_10003FB74(v66, v44 + v20);
        v45 = v59;
        v46 = v68;
        v47 = v69;
        v69[(v59 >> 6) + 8] |= 1 << v59;
        (*(v34 + 32))(v47[6] + *(v34 + 72) * v45, v46, v67);
        *(v47[7] + 8 * v45) = v44;
        v48 = v47[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (!v49)
        {
          v47[2] = v50;
          if (v18 != v17)
          {
            continue;
          }

          return v69;
        }

        goto LABEL_30;
      }

      (*v56)(v68, v67);
      v37 = v69[7];
      sub_10003FB74(v66, v63);
      v38 = v59;
      v39 = *(v37 + 8 * v59);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v38) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_1000226FC(0, v39[2] + 1, 1, v39);
        *(v37 + 8 * v59) = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v54 = v42 + 1;
        v51 = sub_1000226FC(v41 > 1, v42 + 1, 1, v39);
        v43 = v54;
        v39 = v51;
        *(v37 + 8 * v59) = v51;
      }

      v39[2] = v43;
      sub_10003FB74(v63, v39 + v20 + v42 * v21);
      if (v18 == v17)
      {
        return v69;
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100079998()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079A0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079A6C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100079AE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079B78(uint64_t a1)
{
  v47 = type metadata accessor for EventWriterScope();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v47);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000CED0(&qword_1000AC140, &unk_100087CE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = *(a1 + 64);
  v37 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v36 = (v13 + 63) >> 6;
  v38 = v2 + 32;
  v39 = v2 + 16;
  v43 = v2;
  v44 = a1;
  v45 = (v2 + 8);

  v17 = 0;
  v18 = 0;
  v40 = v11;
  v41 = v9;
  if (v15)
  {
    while (1)
    {
      v46 = v17;
      v19 = v18;
LABEL_13:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v25 = v43;
      v24 = v44;
      v26 = v42;
      v27 = v47;
      (*(v43 + 16))(v42, *(v44 + 48) + *(v43 + 72) * v23, v47);
      v28 = *(*(v24 + 56) + 8 * v23);
      v29 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v9 = v41;
      v31(v41, v26, v27);
      *&v9[v30] = v28;
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);

      v21 = v19;
      v11 = v40;
      v17 = v46;
LABEL_14:
      sub_100079F40(v9, v11);
      v32 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
      if ((*(*(v32 - 8) + 48))(v11, 1, v32) == 1)
      {
        break;
      }

      v33 = *(*&v11[*(v32 + 48)] + 16);

      v34 = __OFADD__(v17, v33);
      v17 += v33;
      if (v34)
      {
        goto LABEL_21;
      }

      result = (*v45)(v11, v47);
      v18 = v21;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return v17;
  }

  else
  {
LABEL_5:
    if (v36 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v36;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v36)
      {
        v35 = sub_10000CED0(&qword_1000AC148, &qword_100087A98);
        (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
        v15 = 0;
        goto LABEL_14;
      }

      v15 = *(v37 + 8 * v19);
      ++v18;
      if (v15)
      {
        v46 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_100079F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AC140, &unk_100087CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079FC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646572;
  v3 = 0x6F72724574696177;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6870724F74696177;
    }

    else
    {
      v5 = 0x6363755374696177;
    }

    if (v4 == 2)
    {
      v6 = 0xEC00000064656E61;
    }

    else
    {
      v6 = 0xED00006465646565;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6566654474696177;
    }

    else
    {
      v5 = 0x6F72724574696177;
    }

    if (v4)
    {
      v6 = 0xEC00000064657272;
    }

    else
    {
      v6 = 0xEB00000000646572;
    }
  }

  v7 = 0x6870724F74696177;
  if (a2 == 2)
  {
    v8 = 0xEC00000064656E61;
  }

  else
  {
    v7 = 0x6363755374696177;
    v8 = 0xED00006465646565;
  }

  if (a2)
  {
    v3 = 0x6566654474696177;
    v2 = 0xEC00000064657272;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10007A13C(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome] = a1;
  v9 = *&v2[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_metricsManager];
  MetricsManager.submitLogEvent(_:error:)();
  sub_100080DD4(&qword_1000AC390, v10, type metadata accessor for EventUploadScheduledWaitLogEvent);
  static LoggedObject.logger.getter();
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_7;
  }

  v14 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v31 = v29;
  *v14 = 136446210;
  v15 = sub_10007AB68();
  v16 = *(v15 + 16);
  if (!v16)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v24 = v14;
  v25 = v13;
  v26 = v5;
  v27 = v4;
  v17 = sub_100032ABC(v16, 0);
  v28 = sub_100033338(&v30, v17 + 4, v16, v15);

  sub_1000123C4();
  if (v28 == v16)
  {
    v5 = v26;
    v4 = v27;
    LOBYTE(v13) = v25;
    v14 = v24;
LABEL_6:
    v30 = v17;
    sub_100011900(&v30);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v18 = Array.description.getter();
    v20 = v19;

    v21 = sub_100035120(v18, v20, &v31);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Submitted EventUploadScheduledWaitLogEvent: %{public}s", v14, 0xCu);
    sub_10000D330(v29);

LABEL_7:

    return (*(v5 + 8))(v8, v4);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10007A464()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome] = 0;
  v7 = *&v0[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_metricsManager];
  MetricsManager.submitLogEvent(_:error:)();
  sub_100080DD4(&qword_1000AC390, v8, type metadata accessor for EventUploadScheduledWaitLogEvent);
  static LoggedObject.logger.getter();
  v9 = v1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_7;
  }

  v12 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v33 = v31;
  *v12 = 136446466;
  v13 = sub_10007AB68();
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v24 = v11;
  v25 = v10;
  v26 = v6;
  v27 = v3;
  v28 = v2;
  v15 = sub_100032ABC(v14, 0);
  v29 = sub_100033338(&v32, v15 + 4, v14, v13);

  sub_1000123C4();
  if (v29 == v14)
  {
    v3 = v27;
    v2 = v28;
    v10 = v25;
    v6 = v26;
    LOBYTE(v11) = v24;
LABEL_6:
    v32 = v15;
    sub_100011900(&v32);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_100035120(v16, v18, &v33);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    v21 = v30;
    *v30 = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Submitted EventUploadScheduledWaitLogEvent: %{public}s, with error: %{public}@", v12, 0x16u);
    sub_10000D620(v21, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v31);

LABEL_7:

    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

Swift::Int sub_10007A804()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007A8E4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10007A9B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007AA8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100080D88(*a1);
  *a2 = result;
  return result;
}

void sub_10007AABC(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646572;
  v3 = 0x6F72724574696177;
  v4 = 0x6870724F74696177;
  v5 = 0xED00006465646565;
  if (*v1 == 2)
  {
    v5 = 0xEC00000064656E61;
  }

  else
  {
    v4 = 0x6363755374696177;
  }

  if (*v1)
  {
    v3 = 0x6566654474696177;
    v2 = 0xEC00000064657272;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10007AB68()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085330;
  *(inited + 32) = 0x73746961576D756ELL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v2 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000D620(inited + 32, &qword_1000AB3B0, &qword_100086230);
  v3 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  v4 = v0[OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome];
  if (v4 <= 1)
  {
    v30 = v0;
    v31 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  }

  else if (v4 == 2)
  {
    v30 = v0;
    v31 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  }

  else
  {
    v5 = v0;
    if (v4 != 3)
    {
      p_name = (&XPCServer.Listener + 24);
      goto LABEL_26;
    }

    v30 = v0;
    v31 = OBJC_IVAR____TtC11homeeventsd32EventUploadScheduledWaitLogEvent_outcome;
  }

  v6 = objc_allocWithZone(NSString);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v8, 0x6374754F74696177, 0xEF65707954656D6FLL, isUniquelyReferenced_nonNull_native);
  if (v4 > 1)
  {
    p_name = (&XPCServer.Listener + 24);
LABEL_12:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v12 & 1;
    goto LABEL_13;
  }

  if (v4)
  {
    p_name = &XPCServer.Listener.name;
    goto LABEL_12;
  }

  v10 = 1;
  p_name = (&XPCServer.Listener + 24);
LABEL_13:
  v13 = [objc_allocWithZone(NSNumber) p_name[347]];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v13, 0x73746961576D756ELL, 0xEF6465726F727245, v14);
  if (v4 <= 1 && v4)
  {

    v15 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = v16 & 1;
  }

  v17 = [objc_allocWithZone(NSNumber) p_name[347]];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v17, 0xD000000000000010, 0x800000010008A0D0, v18);
  if (v4 == 2)
  {

    v19 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v20 & 1;
  }

  v21 = [objc_allocWithZone(NSNumber) p_name[347]];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v21, 0xD000000000000010, 0x800000010008A0F0, v22);
  if (v4 <= 1)
  {
    v5 = v30;
LABEL_24:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v23 & 1;
    goto LABEL_25;
  }

  v5 = v30;
  if (v4 == 2)
  {
    goto LABEL_24;
  }

  v24 = 1;
LABEL_25:
  v25 = [objc_allocWithZone(NSNumber) p_name[347]];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v25, 0xD000000000000011, 0x800000010008A110, v26);
  v3 = v31;
LABEL_26:
  if ([v5 durationMilliseconds] >= 1 && ((1 << *(v5 + v3)) & 0xB) != 0)
  {
    v27 = [objc_allocWithZone(NSNumber) p_name[347]];
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v27, 0xD000000000000014, 0x80000001000892C0, v28);
  }

  return v2;
}

unint64_t sub_10007B42C()
{
  result = qword_1000AC2D8;
  if (!qword_1000AC2D8)
  {
    sub_100003988(&qword_1000AC2E0, qword_100087DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC2D8);
  }

  return result;
}

unint64_t sub_10007B494()
{
  result = qword_1000AC2E8;
  if (!qword_1000AC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC2E8);
  }

  return result;
}

unint64_t sub_10007B4E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10007B8B8(a1, a2, v6);
}

unint64_t sub_10007B560(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10007B970(a1, v4);
}

unint64_t sub_10007B5A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for EventWriterScope();
  sub_100080DD4(&qword_1000AC370, 255, &type metadata accessor for EventWriterScope);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007BAA4(a1, v5, &type metadata accessor for EventWriterScope, &qword_1000AC378, &type metadata accessor for EventWriterScope, &protocol conformance descriptor for EventWriterScope);
}

unint64_t sub_10007B67C(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10007BA38(a1, v4);
}

unint64_t sub_10007B6C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007BAA4(a1, v5, &type metadata accessor for UUID, &qword_1000AB730, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10007B79C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10007BC48(a1, v4);
}

unint64_t sub_10007B7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Configuration.TargetCloudKitZone();
  sub_100080DD4(&qword_1000AB740, 255, &type metadata accessor for Configuration.TargetCloudKitZone);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007BAA4(a1, v5, &type metadata accessor for Configuration.TargetCloudKitZone, &qword_1000AC340, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
}

unint64_t sub_10007B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10007B970(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100080E1C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100080E78(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10007BA38(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10007BAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100080DD4(v24, 255, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10007BC48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
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

uint64_t sub_10007BD1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventWriterScope();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000CED0(&qword_1000AC368, &qword_100087F30);
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
      sub_100080DD4(&qword_1000AC370, 255, &type metadata accessor for EventWriterScope);
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

uint64_t sub_10007C0FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AC3B8, &qword_100087F68);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10007C370(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AC2F8, &qword_100087EE0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10007C614(uint64_t a1, int a2)
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

  sub_10000CED0(&qword_1000AC308, &qword_100087EF0);
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
        swift_errorRetain();
      }

      v29 = *(v14 + 40);
      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID);
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

uint64_t sub_10007C9F4(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = type metadata accessor for UUID();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10000CED0(&qword_1000AC398, &qword_100087F48);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
        v29 = v26;
      }

      result = NSObject._rawHashValue(seed:)(*(v12 + 40));
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10007CD40(uint64_t a1, int a2)
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

  sub_10000CED0(&qword_1000AC328, &qword_100087F00);
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
        swift_errorRetain();
      }

      v29 = *(v14 + 40);
      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID);
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

uint64_t sub_10007D120(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CED0(&unk_1000AC330, &qword_100087F08);
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

uint64_t sub_10007D3DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000CED0(&qword_1000AC350, &qword_100087F18);
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
      sub_100080DD4(&qword_1000AB740, 255, &type metadata accessor for Configuration.TargetCloudKitZone);
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

uint64_t sub_10007D7D0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_10000CED0(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_10007DBB0(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for LubyRackoffEncryptionKey();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10000CED0(&qword_1000AC358, &qword_100087F20);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_100080DD4(&unk_1000AC310, 255, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_10007E070(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AC300, &qword_100087EE8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_errorRetain();
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10007E2E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CED0(&qword_1000AC3B0, &unk_100087F58);
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
        sub_10004DBDC(v25, v37);
      }

      else
      {
        sub_10000CFA0(v25, v37);
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
      result = sub_10004DBDC(v37, (*(v8 + 56) + 32 * v16));
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

unint64_t sub_10007E598(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10007B67C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10007C0FC(v14, a3 & 1);
      v18 = *v4;
      result = sub_10007B67C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10007EEB0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_10007E6E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007B4E8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10007C370(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10007B4E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10007F00C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10007E85C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10007B6C4(a2);
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
      sub_10007F178();
      goto LABEL_7;
    }

    sub_10007C614(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10007B6C4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10007ED44(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
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

uint64_t sub_10007EA28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10007B6C4(a2);
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
      sub_10007F664();
      goto LABEL_7;
    }

    sub_10007CD40(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10007B6C4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10007ED44(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
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

_OWORD *sub_10007EBF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007B4E8(a2, a3);
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
      sub_1000802BC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10007E2E0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10007B4E8(a2, a3);
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
    sub_10000D330(v23);

    return sub_10004DBDC(a1, v23);
  }

  else
  {
    sub_10007EE44(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10007ED44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_10007EDFC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_10007EE44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004DBDC(a4, (a5[7] + 32 * a1));
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

void *sub_10007EEB0()
{
  v1 = v0;
  sub_10000CED0(&qword_1000AC3B8, &qword_100087F68);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

id sub_10007F00C()
{
  v1 = v0;
  sub_10000CED0(&qword_1000AC2F8, &qword_100087EE0);
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

        result = v20;
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

char *sub_10007F178()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC308, &qword_100087EF0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_errorRetain();
        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

id sub_10007F3F8()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC398, &qword_100087F48);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
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

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

char *sub_10007F664()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC328, &qword_100087F00);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_errorRetain();
        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_10007F8E4()
{
  v1 = v0;
  sub_10000CED0(&unk_1000AC330, &qword_100087F08);
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

char *sub_10007FA68()
{
  v1 = v0;
  v32 = type metadata accessor for Configuration.TargetCloudKitZone();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC350, &qword_100087F18);
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

void *sub_10007FCF0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_10007FF68()
{
  v1 = v0;
  v43 = type metadata accessor for LubyRackoffEncryptionKey();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CED0(&qword_1000AC358, &qword_100087F20);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1000802BC()
{
  v1 = v0;
  sub_10000CED0(&qword_1000AC3B0, &unk_100087F58);
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
        sub_10000CFA0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10004DBDC(v25, (*(v4 + 56) + v22));
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

unint64_t sub_100080460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CED0(&qword_1000AC3B0, &unk_100087F58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013358(v4, &v13, &unk_1000AC3D0, &unk_100087F80);
      v5 = v13;
      v6 = v14;
      result = sub_10007B4E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004DBDC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100080590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CED0(&unk_1000AC3C0, &unk_100087F70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013358(v4, v13, &qword_1000AAD90, &qword_100085580);
      result = sub_10007B560(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10004DBDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1000806CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CED0(&qword_1000AC2F8, &qword_100087EE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10007B4E8(v5, v6);
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

unint64_t sub_1000807D0(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AC3A8, &qword_100087F50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000CED0(&qword_1000AC308, &qword_100087EF0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100013358(v10, v6, &qword_1000AC3A8, &qword_100087F50);
      result = sub_10007B6C4(v6);
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

unint64_t sub_1000809B8(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000ABF38, &qword_100087F40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000CED0(&qword_1000AC368, &qword_100087F30);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100013358(v10, v6, &qword_1000ABF38, &qword_100087F40);
      result = sub_10007B5A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EventWriterScope();
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

unint64_t sub_100080BA0(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AC320, &qword_100087EF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000CED0(&qword_1000AC328, &qword_100087F00);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100013358(v10, v6, &qword_1000AC320, &qword_100087EF8);
      result = sub_10007B6C4(v6);
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

unint64_t sub_100080D88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A1C70, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100080DD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100080ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001DA7C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100021CAC(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

      sub_100021CAC(a3);

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

  sub_100021CAC(a3);
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

uint64_t sub_10008118C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return sub_10000649C();
}

id sub_10008135C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountChangedListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000813C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100081404()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000D130;

  return sub_10008118C();
}

uint64_t sub_1000814B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001DBDC;

  return sub_100022048(a1, v5);
}

uint64_t sub_100081570()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000815A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D130;

  return sub_100022048(a1, v5);
}

uint64_t sub_100081664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Logger();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100081734, 0, 0);
}

uint64_t sub_100081734()
{
  v1 = v0[9];
  v0[10] = type metadata accessor for XPCServer();
  v0[11] = sub_10000E874();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Resetting configuration", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[12] = v9;
  v9(v5, v6);

  return _swift_task_switch(sub_100081868, v8, 0);
}

uint64_t sub_100081868()
{
  v1 = v0[2];
  sub_100009388();
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10008196C;
  v3 = v0[5];

  return sub_10001C164(0, 1, v3);
}

uint64_t sub_10008196C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100081B9C;
  }

  else
  {
    v3 = sub_100081A80;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100081A80()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  (*(v0 + 24))(0);
  static LoggedObject.logger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Restarting", v7, 2u);
  }

  v8 = *(v0 + 96);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  v12 = *(v0 + 16);

  v8(v9, v11);

  sub_1000095B0();
}

void sub_100081B9C()
{
  v1 = *(v0 + 120);

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  (*(v0 + 24))(0);
  static LoggedObject.logger.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Restarting", v8, 2u);
  }

  v9 = *(v0 + 96);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = *(v0 + 16);

  v9(v10, v12);

  sub_1000095B0();
}

uint64_t sub_100081CC0()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[3];
  v4 = v0[4];
  swift_errorRetain();
  v5(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100081D68(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PendingEventData();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v41 - v13;
  v14 = &_swiftEmptyDictionarySingleton;
  v53 = &_swiftEmptyDictionarySingleton;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v45 = *(v12 + 80);
  v16 = v3;
  v17 = *(v12 + 72);
  v18 = a1 + ((v45 + 32) & ~v45);
  v50 = (v45 + 32) & ~v45;
  v51 = (v16 + 16);
  v43 = (v16 + 8);
  v44 = v16 + 32;
  v42 = xmmword_100085330;
  v46 = v11;
  v47 = v16;
  v48 = v2;
  v49 = v17;
  while (1)
  {
    v21 = v52;
    sub_100037660(v18, v52);
    (*v51)(v6, v21, v2);
    v23 = sub_10007B6C4(v6);
    v24 = v14[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v14[3] < v26)
    {
      sub_10007E05C(v26, 1);
      v14 = v53;
      v28 = sub_10007B6C4(v6);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      (*v43)(v6, v2);
      v30 = v14[7];
      sub_10003FB74(v52, v11);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1000226FC(0, v31[2] + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1000226FC(v33 > 1, v34 + 1, 1, v31);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v2 = v48;
      v19 = v49;
      v20 = v31 + v50 + v34 * v49;
      v11 = v46;
      sub_10003FB74(v46, v20);
    }

    else
    {
      sub_10000CED0(&qword_1000AB460, &qword_1000866B8);
      v35 = v50;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_10003FB74(v52, v36 + v35);
      v14[(v23 >> 6) + 8] |= 1 << v23;
      (*(v47 + 32))(v14[6] + *(v47 + 72) * v23, v6, v2);
      *(v14[7] + 8 * v23) = v36;
      v37 = v14[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v14[2] = v39;
      v19 = v49;
    }

    v18 += v19;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100082138(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PendingEventData();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100082254, 0, 0);
}

uint64_t sub_100082254()
{
  v1 = *sub_10000D224(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000822F4;

  return sub_1000757D4(0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_1000822F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[5];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[11] = a1;

    return _swift_task_switch(sub_100082458, 0, 0);
  }
}

uint64_t sub_100082458()
{
  v1 = v0[10];
  v2 = v0[7];
  v35 = v0[3];
  v36 = v0[4];
  v3 = sub_100081D68(v0[11]);

  sub_10000CED0(&qword_1000AC410, &qword_100087FE8);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v8 = v3 + 64;
  v7 = *(v3 + 64);
  v37 = v2;
  v38 = v3;
  v9 = 1 << *(v3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v33 = (v2 + 32);
  v34 = result + 64;
  if ((v10 & v7) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v6 << 6);
      v17 = *(v37 + 72) * v16;
      result = (*(v37 + 16))(v0[8], *(v38 + 48) + v17, v0[6]);
      v18 = *(*(v38 + 56) + 8 * v16);
      if (*(v18 + 16) != 1)
      {
        break;
      }

      v39 = v0[6];
      v40 = v0[8];
      v19 = v5;
      v20 = v0[5];
      sub_100037660(v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v20);
      sub_10000CED0(&qword_1000AB7F8, &qword_100086C18);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100085F30;
      v22 = *(v20 + *(v35 + 28));
      *(v21 + 56) = &type metadata for Int64;
      *(v21 + 32) = v22;
      v23 = (v20 + *(v35 + 32));
      v24 = *v23;
      v25 = v23[1];
      *(v21 + 88) = &type metadata for Data;
      *(v21 + 64) = v24;
      *(v21 + 72) = v25;
      sub_10003F994(v24, v25);
      v26 = v20;
      v5 = v19;
      sub_1000376C4(v26);
      *(v34 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = (*v33)(v19[6] + v17, v40, v39);
      *(v19[7] + 8 * v16) = v21;
      v27 = v19[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_19;
      }

      v19[2] = v29;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_5:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v6 >= v12)
      {
        break;
      }

      v15 = *(v8 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    v30 = v0[8];
    v31 = v0[5];

    v32 = v0[1];

    return v32(v5);
  }

  return result;
}

uint64_t sub_100082738()
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
  v5 = type metadata accessor for URL();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000828A0, v0, 0);
}

uint64_t sub_1000828A0()
{
  v42 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  v7 = v0[3];
  v8 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v9 = v6 + *(_s15DefaultDelegateC13ConfigurationVMa(0) + 28) + v8;
  URL.deletingLastPathComponent()();
  sub_10000F2E8(&qword_1000AAFE0);
  sub_10000F2E8(&qword_1000AAFE8);
  static LoggedObject<>.logger.getter();
  (*(v3 + 16))(v2, v1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  v17 = v0[4];
  v18 = v0[5];
  if (v12)
  {
    v19 = swift_slowAlloc();
    v40 = v16;
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315138;
    v38 = v11;
    v21 = URL.path.getter();
    v39 = v17;
    v23 = v22;
    v24 = v15;
    v25 = *(v14 + 8);
    v25(v13, v24);
    v26 = sub_100035120(v21, v23, &v41);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v10, v38, "Removing '%s'", v19, 0xCu);
    sub_10000D330(v20);

    (*(v18 + 8))(v40, v39);
  }

  else
  {

    v27 = v15;
    v25 = *(v14 + 8);
    v25(v13, v27);
    (*(v18 + 8))(v16, v17);
  }

  v28 = v0[12];
  v29 = [objc_opt_self() defaultManager];
  sub_100065740();
  v30 = v0[9] + 8;
  v25(v0[12], v0[8]);

  v32 = v0[11];
  v31 = v0[12];
  v33 = v0[10];
  v35 = v0[6];
  v34 = v0[7];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100082E00()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveDatabase];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 shortValue];

    if (v4 + 1 <= 2)
    {
      v5 = 0x10002u >> (8 * (v4 + 1));
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = String._bridgeToObjectiveC()();
  [v0 didAccessValueForKey:v6];

  return v5;
}

void sub_100082EE4(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 willChangeValueForKey:v3];

  if (*(a1 + 16))
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  [v1 setPrimitiveUnencryptedTags:v4.super.isa];

  v5 = String._bridgeToObjectiveC()();
  [v1 didChangeValueForKey:v5];
}

id sub_100083038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingUploadEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}