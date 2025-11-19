uint64_t sub_10021F9FC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10021B99C(result);

  return sub_10021F8F0(v4, v2, 0);
}

Swift::Int sub_10021FAD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100521B10, &unk_100450000);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10021FC48()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  sub_10020D8BC(v1, v2, v3, v4, v5);
}

unint64_t sub_10021FC78()
{
  result = qword_100529BB0;
  if (!qword_100529BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100529BB0);
  }

  return result;
}

unint64_t sub_10021FD28()
{
  result = qword_100529BB8[0];
  if (!qword_100529BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100529BB8);
  }

  return result;
}

unint64_t sub_10021FD7C()
{
  result = qword_1005222E0;
  if (!qword_1005222E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222E0);
  }

  return result;
}

unint64_t sub_10021FDF4()
{
  result = qword_1005222F0;
  if (!qword_1005222F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222F0);
  }

  return result;
}

unint64_t sub_10021FE4C()
{
  result = qword_1005222F8;
  if (!qword_1005222F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222F8);
  }

  return result;
}

unint64_t sub_10021FEA4()
{
  result = qword_100522300;
  if (!qword_100522300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522300);
  }

  return result;
}

unint64_t sub_10021FEFC()
{
  result = qword_100522308;
  if (!qword_100522308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522308);
  }

  return result;
}

unint64_t sub_10021FF54()
{
  result = qword_100522310;
  if (!qword_100522310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522310);
  }

  return result;
}

unint64_t sub_10021FFB0()
{
  result = qword_100522320;
  if (!qword_100522320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522320);
  }

  return result;
}

uint64_t type metadata accessor for PresenceDataSource()
{
  result = qword_10052A550;
  if (!qword_10052A550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100220324()
{
  sub_100220450(319, &qword_100522808, &qword_100522810, &unk_10044FBE8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100220450(319, &qword_100522818, &unk_100522820, &qword_10044EA80);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100220450(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1001C2EC8(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteControlActivity.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RemoteControlActivity.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100220598()
{
  result = qword_10052A660[0];
  if (!qword_10052A660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052A660);
  }

  return result;
}

unint64_t sub_1002205F0()
{
  result = qword_10052A870[0];
  if (!qword_10052A870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052A870);
  }

  return result;
}

unint64_t sub_100220648()
{
  result = qword_10052A980;
  if (!qword_10052A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052A980);
  }

  return result;
}

unint64_t sub_1002206A0()
{
  result = qword_10052A988[0];
  if (!qword_10052A988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052A988);
  }

  return result;
}

unint64_t sub_1002206F8()
{
  result = qword_10052AA10;
  if (!qword_10052AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052AA10);
  }

  return result;
}

unint64_t sub_100220750()
{
  result = qword_10052AA18[0];
  if (!qword_10052AA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052AA18);
  }

  return result;
}

uint64_t sub_1002207A4(uint64_t a1)
{
  v35 = a1;
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
  {
    sub_10021DECC();
    v32 = swift_allocError();
    *v33 = 5;
    sub_100204BF8(v32);
  }

  if (qword_100529B70 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100529B78);
  v17 = v1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}@] Leader should not receive session end messages.", v20, 0xCu);
    sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);
  }

  v24 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
  v23 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v2;
  (*(v3 + 16))(&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v2);
  v28 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = v26;
  (*(v3 + 32))(&v29[v28], &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v30 = &v29[(v4 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v24;
  *(v30 + 1) = v23;

  sub_1001BF864(0, 0, v8, &unk_100450160, v29);
}

void sub_100220C10(uint64_t *a1)
{
  v2 = v1;
  v115 = a1;
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  v111 = v3;
  v112 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v110 = &v107[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v10 = &v107[-v9];
  __chkstk_darwin(v8);
  v12 = &v107[-v11];
  v13 = type metadata accessor for Participants();
  v113 = *(v13 - 8);
  v114 = v13;
  v14 = *(v113 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v107[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v107[-v19];
  __chkstk_darwin(v18);
  v22 = &v107[-v21];
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v107[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] != 1)
  {
    if (qword_100529B70 == -1)
    {
LABEL_7:
      v36 = type metadata accessor for Logger();
      sub_100015AFC(v36, qword_100529B78);
      v37 = v2;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "[%{public}@] Participant should not receive transport migration messages.", v40, 0xCu);
        sub_1000038A4(v41, &qword_100521870, &unk_10044EA70);
      }

      return;
    }

LABEL_32:
    swift_once();
    goto LABEL_7;
  }

  if (v2[OBJC_IVAR___MRDFastSyncGroupSession_hasEncounteredLowPowerError] == 1)
  {
    v31 = MRDFastSyncGroupSessionState.rawValue.getter(0xD000000000000024, 0x800000010043BC30, v30);
    v33 = sub_10036E884(v31, v32);

    static Participants.only(_:)();
    v34 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
    if (v34)
    {
      v35 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];

      sub_10020CF20(7u, v33, v22, v34, 0, 0);

      (*(v113 + 8))(v22, v114);
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  v43 = v115;
  v44 = Participant.handle.getter();
  v46 = v45;
  v47 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  if (*(*&v2[v47] + 16))
  {
    v48 = *&v2[v47];

    sub_10000698C(v44, v46);
    v50 = v49;

    if (v50)
    {
      v51 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];
      swift_getKeyPath();
      swift_getKeyPath();
      v52 = v51;
      static Published.subscript.getter();

      v53 = v116;
      v54 = Participant.handle.getter();
      v56 = sub_1001BD5E8(v54, v55, v53);

      if ((v56 & 1) == 0)
      {
        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_100015AFC(v75, qword_100529B78);
        v77 = v111;
        v76 = v112;
        (*(v112 + 16))(v12, v43, v111);
        v78 = v2;

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v109 = v82;
          v110 = swift_slowAlloc();
          v116 = v110;
          *v81 = 138543874;
          *(v81 + 4) = v78;
          *v82 = v78;
          *(v81 + 12) = 2080;
          sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant);
          v83 = v78;
          v108 = v80;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          (*(v76 + 8))(v12, v77);
          v87 = sub_10002C9C8(v84, v86, &v116);

          *(v81 + 14) = v87;
          *(v81 + 22) = 2082;
          v88 = Set.description.getter();
          v90 = sub_10002C9C8(v88, v89, &v116);

          *(v81 + 24) = v90;
          _os_log_impl(&_mh_execute_header, v79, v108, "[%{public}@] Could not find: %s in present handles: %{public}s. Cannot continue transport migration.", v81, 0x20u);
          sub_1000038A4(v109, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        else
        {

          (*(v76 + 8))(v12, v77);
        }

        v92 = MRDFastSyncGroupSessionState.rawValue.getter(0xD000000000000021, 0x800000010043BC00, v91);
        v94 = sub_10036E884(v92, v93);

        static Participants.only(_:)();
        v95 = *&v78[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
        if (v95)
        {
          v96 = *&v78[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];

          sub_10020CF20(7u, v94, v17, v95, 0, 0);

          (*(v113 + 8))(v17, v114);
          return;
        }

        goto LABEL_35;
      }

      v57 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
      v58 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (v58)
      {
        v59 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];

        v60 = Participant.handle.getter();
        (*(*v58 + 368))(1, v60, v61);

        v97 = *&v2[v57];
        if (v97)
        {
          v98 = *&v2[v57];

          v99 = Participant.handle.getter();
          (*(*v97 + 392))(1, v99, v100);

          v102 = MRDFastSyncGroupSessionState.rawValue.getter(0, 0, v101);
          v104 = sub_10036E884(v102, v103);

          static Participants.only(_:)();
          v105 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
          if (v105)
          {
            v106 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];

            sub_10020CF20(7u, v104, v20, v105, 0, 0);

            (*(v113 + 8))(v20, v114);
            return;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100015AFC(v62, qword_100529B78);
  v64 = v111;
  v63 = v112;
  (*(v112 + 16))(v10, v43, v111);
  v65 = v2;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = v115;
    *v68 = 138543618;
    *(v68 + 4) = v65;
    *v69 = v65;
    *(v68 + 12) = 2080;
    sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant);
    v70 = v65;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    (*(v63 + 8))(v10, v64);
    v74 = sub_10002C9C8(v71, v73, &v116);

    *(v68 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v66, v67, "[%{public}@] Ignoring transport migration message from unmapped participant %s.", v68, 0x16u);
    sub_1000038A4(v69, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v115);
  }

  else
  {

    (*(v63 + 8))(v10, v64);
  }
}

void sub_100221AB4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v4 - 8);
  v5 = *(v111 + 64);
  __chkstk_darwin(v4);
  v109 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchQoS();
  v108 = *(v110 - 8);
  v7 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Participant();
  v9 = *(v112 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v112);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v103 - v15;
  __chkstk_darwin(v14);
  v106 = &v103 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_12;
  }

  v25 = Participant.handle.getter();
  v27 = v26;
  v28 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v29 = *&v2[v28];
  if (*(v29 + 16))
  {
    v105 = v4;
    v30 = v9;

    v31 = sub_10000698C(v25, v27);
    v33 = v32;

    if (v33)
    {
      v34 = (*(v29 + 56) + 16 * v31);
      v35 = *v34;
      v36 = v34[1];

      v37 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
      swift_beginAccess();
      v38 = *&v2[v37];

      v39 = sub_1001BD5E8(v35, v36, v38);

      if (v39)
      {
        v40 = v30;

        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100015AFC(v41, qword_100529B78);
        v42 = *(v30 + 16);
        v43 = v112;
        v42(v16, a1, v112);
        v44 = v2;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v47 = 138543874;
          *(v47 + 4) = v44;
          *v48 = v44;
          *(v47 + 12) = 2080;
          v49 = v44;
          *(v47 + 14) = sub_10002C9C8(0xD00000000000002CLL, 0x800000010043BC60, aBlock);
          *(v47 + 22) = 2082;
          v50 = Participant.handle.getter();
          v52 = v51;
          (*(v40 + 8))(v16, v43);
          v53 = sub_10002C9C8(v50, v52, aBlock);

          *(v47 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}@] %s guest cannot request to remove all participants: %{public}s", v47, 0x20u);
          sub_1000038A4(v48, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();

LABEL_14:

          return;
        }

        (*(v40 + 8))(v16, v43);
        return;
      }

      v64 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
      swift_beginAccess();
      v65 = *&v2[v64];
      if (*(v65 + 16))
      {
        v66 = *&v2[v64];

        v67 = sub_10000698C(v35, v36);
        if (v68)
        {
          v69 = (*(v65 + 56) + 16 * v67);
          v70 = *v69;
          v39 = v69[1];
          v64 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
          swift_beginAccess();
          v71 = *&v2[v64];
          if (*(v71 + 16))
          {
            v72 = *&v2[v64];

            v73 = sub_10000698C(v70, v39);
            v64 = v74;

            if (v64)
            {
              v75 = *(*(v71 + 56) + 8 * v73);

              v76 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
              v77 = String._bridgeToObjectiveC()();

              v39 = [v76 initWithIdentifier:v77 identity:v75 connected:1 guest:0];

              v64 = v112;
              if (qword_100529B70 == -1)
              {
LABEL_21:
                v78 = type metadata accessor for Logger();
                sub_100015AFC(v78, qword_100529B78);
                v79 = v30;
                v80 = *(v30 + 16);
                v81 = v106;
                v80(v106, a1, v64);
                v82 = v2;
                v83 = Logger.logObject.getter();
                v84 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v83, v84))
                {
                  v85 = swift_slowAlloc();
                  v86 = swift_slowAlloc();
                  v104 = v39;
                  v87 = v64;
                  v88 = v86;
                  v103 = swift_slowAlloc();
                  aBlock[0] = v103;
                  *v85 = 138543874;
                  *(v85 + 4) = v82;
                  *v88 = v82;
                  *(v85 + 12) = 2080;
                  v89 = v82;
                  *(v85 + 14) = sub_10002C9C8(0xD00000000000002CLL, 0x800000010043BC60, aBlock);
                  *(v85 + 22) = 2082;
                  v90 = Participant.handle.getter();
                  v92 = v91;
                  v93 = v87;
                  v39 = v104;
                  (*(v79 + 8))(v81, v93);
                  v94 = sub_10002C9C8(v90, v92, aBlock);

                  *(v85 + 24) = v94;
                  _os_log_impl(&_mh_execute_header, v83, v84, "[%{public}@] %s from: %{public}s", v85, 0x20u);
                  sub_1000038A4(v88, &qword_100521870, &unk_10044EA70);

                  swift_arrayDestroy();
                }

                else
                {

                  (*(v79 + 8))(v81, v64);
                }

                v95 = v105;
                v96 = *&v82[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
                v97 = swift_allocObject();
                *(v97 + 16) = v82;
                *(v97 + 24) = v39;
                aBlock[4] = sub_100224734;
                aBlock[5] = v97;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100003D98;
                aBlock[3] = &unk_1004C3CD8;
                v98 = _Block_copy(aBlock);
                v99 = v82;
                v100 = v39;
                v101 = v107;
                static DispatchQoS.unspecified.getter();
                v113 = _swiftEmptyArrayStorage;
                sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
                sub_1001BC5A8(&unk_100522280, &unk_10044F590);
                sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
                v102 = v109;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v98);

                (*(v111 + 8))(v102, v95);
                (*(v108 + 8))(v101, v110);

                return;
              }

LABEL_32:
              swift_once();
              goto LABEL_21;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_30;
    }

    v9 = v30;
  }

  else
  {
  }

  v16 = v112;
  if (qword_100529B70 != -1)
  {
    goto LABEL_27;
  }

LABEL_12:
  v54 = type metadata accessor for Logger();
  sub_100015AFC(v54, qword_100529B78);
  (*(v9 + 16))(v13, a1, v16);
  v55 = v2;
  v45 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    aBlock[0] = v111;
    *v57 = 138543874;
    *(v57 + 4) = v55;
    *v58 = v55;
    *(v57 + 12) = 2080;
    v59 = v55;
    *(v57 + 14) = sub_10002C9C8(0xD00000000000002CLL, 0x800000010043BC60, aBlock);
    *(v57 + 22) = 2082;
    v60 = Participant.handle.getter();
    v62 = v61;
    (*(v9 + 8))(v13, v16);
    v63 = sub_10002C9C8(v60, v62, aBlock);

    *(v57 + 24) = v63;
    _os_log_impl(&_mh_execute_header, v45, v56, "[%{public}@] %s message received from unknown handle: %{public}s", v57, 0x20u);
    sub_1000038A4(v58, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    goto LABEL_14;
  }

  (*(v9 + 8))(v13, v16);
}

uint64_t sub_1002227D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v29 = v11 | (v5 << 6);
      v15 = *(*(a3 + 48) + 16 * v14 + 8);
      v16 = (*(a3 + 56) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(a4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(a4 + 32);
      v22 = v20 & ~v21;
      if ((*(v32 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a4 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v18;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v32 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_10021B650(v28, a2, v30, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_10021B650(v28, a2, v30, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100222A00(uint64_t a1, uint64_t a2)
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

      v10 = sub_10021B2E0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1002227D8(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

unint64_t sub_100222BC0()
{
  sub_1001BC5A8(&qword_100522848, &qword_10044FE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 48) = v1;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v2;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 96) = v3;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v4;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 144) = v5;
  v6 = sub_10003D4B4(inited, &qword_100522858, &qword_10044FF50, &qword_100522860, &qword_10044FF58);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522850, &qword_10044FF48);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_100222D2C()
{
  result = qword_100522880;
  if (!qword_100522880)
  {
    sub_100018D7C(255, &qword_100522878, SKPresentDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522880);
  }

  return result;
}

void sub_100222DC0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100222DD0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_100222DE8()
{
  v0 = *(type metadata accessor for Date() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  Date.timeIntervalSinceNow.getter();
  *(inited + 48) = Double._bridgeToObjectiveC()();
  v4 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v4;
}

uint64_t sub_100222EE0(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = sub_1001BC5A8(&unk_100522910, &qword_10045C210);
  return v4(v5, v6, &a1[*(v7 + 48)]);
}

uint64_t sub_100222F5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 11)
  {
    return sub_1001C3FE0(a2, a3);
  }

  return result;
}

uint64_t sub_100222F78(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 11)
  {
    return sub_1001C4034(a2, a3);
  }

  return result;
}

uint64_t sub_100222FAC()
{
  v1 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  sub_1001C4034(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100223090(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for GroupSessionMessenger.MessageContext() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return a1(v3, v6, v4, v5, v7);
}

uint64_t sub_10022312C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_100206E44(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1002231D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1002080B4(v5, v6, v7, v2, v3, v4);
}

void sub_100223280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10021DECC();
    v2 = swift_allocError();
    *v3 = 0;
    sub_100204BF8(v2);
  }
}

void sub_100223324(uint64_t a1, const char *a2, const char *a3)
{
  v4 = *(v3 + 24);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100529B78);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v9 = 136446466;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10002C9C8(v12, v13, &v28);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 0x16u);
      sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v11);
    }

    else
    {
    }
  }

  else
  {
    v17 = *(v3 + 16);
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100015AFC(v18, qword_100529B78);

    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v20 = 136446466;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10002C9C8(v21, v22, &v28);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      sub_100018D7C(0, &qword_100522970, IDSFirewallEntry_ptr);
      v24 = Array.description.getter();
      v26 = sub_10002C9C8(v24, v25, &v28);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, oslog, v19, a3, v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1002236E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F34;

  return sub_100214934(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1002237D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap;
    swift_beginAccess();
    if (*(*&v5[v6] + 16))
    {
      v7 = *&v5[v6];

      sub_10000698C(v2, v3);
      v9 = v8;

      if (v9)
      {
        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100015AFC(v10, qword_100529B78);
        v11 = v5;

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v21[0] = swift_slowAlloc();
          *v14 = 138543874;
          *(v14 + 4) = v11;
          *v19 = v5;
          *(v14 + 12) = 2082;
          v16 = *&v11[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
          v15 = *&v11[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
          v17 = v11;

          v18 = sub_10002C9C8(v16, v15, v21);

          *(v14 + 14) = v18;
          *(v14 + 22) = 2082;
          *(v14 + 24) = sub_10002C9C8(v2, v3, v21);
          _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}@]<%{public}s> Lost handle: %{public}s timed out.", v14, 0x20u);
          sub_1000038A4(v19, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        swift_beginAccess();

        sub_1001EC6DC(0, v2, v3);
        swift_endAccess();
        swift_beginAccess();

        sub_100008318(&v20, v2, v3);
        swift_endAccess();

        sub_1002021D8(0);
      }
    }
  }
}

void sub_100223AE0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *((swift_isaMask & *v2) + 0x2B8);
  v6 = v5();
  if (v6)
  {
    v7 = v6;
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v7 session:v2 didUpdateMembers:isa];
    swift_unknownObjectRelease();
  }

  v9 = v5();
  if (v9)
  {
    v10 = v9;
    sub_100018D7C(0, &qword_1005229A0, off_1004B3098);
    v11 = Array._bridgeToObjectiveC()().super.isa;
    [v10 session:v2 didUpdateParticipants:v11];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100223C50()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_100223CA4(SEL *a1)
{
  v3 = v1;
  v4 = *(v1 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  result = (*((swift_isaMask & *v4) + 0x2B8))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100223D54(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100223D68(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100223D7C()
{
  v2 = *(type metadata accessor for Participant() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F30;

  return sub_1001F97D0(v8, v9, v10, v4, v0 + v3, v6, v7);
}

void sub_100223E94()
{
  v1 = v0;
  v2 = v0[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = *((swift_isaMask & *v2) + 0x2B8);
  v7 = v6();
  if (v7)
  {
    v8 = v7;
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v8 session:v2 didUpdateMembers:isa];
    swift_unknownObjectRelease();
  }

  v10 = v6();
  if (v10)
  {
    v11 = v10;
    sub_100018D7C(0, &qword_1005229A0, off_1004B3098);
    v12 = Array._bridgeToObjectiveC()().super.isa;
    [v11 session:v2 didUpdateParticipants:v12];
    swift_unknownObjectRelease();
  }

  v13 = v6();
  if (v13)
  {
    v14 = v13;
    sub_100018D7C(0, &qword_1005229A0, off_1004B3098);
    v15 = Array._bridgeToObjectiveC()().super.isa;
    [v14 session:v2 didUpdatePendingParticipants:v15];
    swift_unknownObjectRelease();
  }
}

void *sub_10022405C()
{
  v1 = *(v0 + 16);
  result = (*((swift_isaMask & *v1) + 0x2B8))();
  if (result)
  {
    [result sessionDidCompleteIdentityShare:v1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100224144(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100529B78);
    swift_errorRetain();
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v7 = 138543874;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2082;
      v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v11 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v12 = v4;
      *(v7 + 14) = sub_10002C9C8(v10, v11, &v14);
      *(v7 + 22) = 2114;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 24) = v13;
      v8[1] = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> IdentityShareReplyMessage send error %{public}@.", v7, 0x20u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      sub_100026A44(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_100224378()
{
  v2 = *(type metadata accessor for Participant() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F30;

  return sub_1001F97D0(v8, v9, v10, v4, v0 + v3, v6, v7);
}

unint64_t sub_100224490()
{
  result = qword_1005229D0;
  if (!qword_1005229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005229D0);
  }

  return result;
}

unint64_t sub_1002244E4()
{
  result = qword_1005229D8;
  if (!qword_1005229D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005229D8);
  }

  return result;
}

uint64_t sub_100224538()
{
  v1 = type metadata accessor for Participant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10022461C()
{
  v2 = *(type metadata accessor for Participant() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F34;

  return sub_1001FDDD4(v8, v9, v10, v4, v0 + v3, v6, v7);
}

void *sub_100224740(SEL *a1)
{
  v3 = v1;
  v4 = *(v1 + 16);
  v5 = *(v3 + 24);
  result = (*((swift_isaMask & *v4) + 0x2B8))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100224804()
{
  v1 = *(sub_1001BC5A8(&qword_100522920, &qword_100450090) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_100208A64(v2);
}

void sub_100224874()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_100200EC8(v1);
}

uint64_t sub_1002248A4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F30;

  return sub_1001EAD88(v3, v4, v5, v2);
}

uint64_t sub_100224938()
{
  v1 = *(v0 + 16);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529B78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 138543618;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2082;
    v9 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v3;
    *(v6 + 14) = sub_10002C9C8(v9, v10, &v19);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> Timed out waiting for session.", v6, 0x16u);
    sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v8);
  }

  sub_10021DECC();
  v12 = swift_allocError();
  *v13 = 1;
  v19 = sub_1001E6ABC();
  v14 = type metadata accessor for JoinTimingEvents();
  sub_100232B4C(v12, v14, &off_1004C33A8);
  v15 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings];
  *&v3[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings] = v19;

  v16 = swift_allocError();
  *v17 = 1;
  sub_100204BF8(v16);
}

unint64_t sub_100224B88()
{
  result = qword_100522A58;
  if (!qword_100522A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522A58);
  }

  return result;
}

uint64_t sub_100224BDC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_1002053AC(v4, v5, v6, v2, v3);
}

uint64_t sub_100224C80()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001F54B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100224D60()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100204BF8(v1);
}

uint64_t sub_100224D88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_100224DC4(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100224E20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10021DECC();
  swift_allocError();
  *v5 = a1;
  v4();
}

uint64_t sub_100224E8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100224ED4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001F25F0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100224F7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100224FBC(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100225018()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_1001ED8AC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1002250CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10022511C(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_100225174(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001F77EC(a3);
  }
}

void sub_1002251F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001F74C0();
  }
}

unint64_t sub_100225518(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

uint64_t sub_10022554C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000002ELL;
  }

  else
  {
    v4 = 0xD00000000000002FLL;
  }

  if (v3)
  {
    v5 = "GroupSessionParticipant24";
  }

  else
  {
    v5 = "emote.proxyAuthorizationRequest";
  }

  if (*a2)
  {
    v6 = 0xD00000000000002ELL;
  }

  else
  {
    v6 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v7 = "emote.proxyAuthorizationRequest";
  }

  else
  {
    v7 = "GroupSessionParticipant24";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1002255F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x65707954415347;
    }

    if (v2)
    {
      v4 = 0x800000010043C040;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000010043BC90;
  }

  else if (a1 == 3)
  {
    v3 = 0x4474736575716572;
    v4 = 0xEB00000000617461;
  }

  else
  {
    v3 = 0x7461446E656B6F74;
    v4 = 0xE900000000000061;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x65707954415347;
    }

    if (a2)
    {
      v5 = 0x800000010043C040;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000010043BC90;
    if (v3 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000617461;
    if (v3 != 0x4474736575716572)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE900000000000061;
    if (v3 != 0x7461446E656B6F74)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

void sub_1002257C4(unint64_t *a1@<X8>)
{
  v2 = "emote.proxyAuthorizationRequest";
  v3 = 0xD00000000000002ELL;
  if (!*v1)
  {
    v3 = 0xD00000000000002FLL;
    v2 = "GroupSessionParticipant24";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_100225800()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10022587C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002258E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10022595C(unsigned __int8 a1)
{
  v1 = 0x65707954415347;
  v2 = 0xD000000000000011;
  v3 = 0x4474736575716572;
  if (a1 != 3)
  {
    v3 = 0x7461446E656B6F74;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100225A18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100226104(*a1);
  *a2 = result;
  return result;
}

void sub_100225A48(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65707954415347;
  v5 = 0x800000010043BC90;
  v6 = 0xD000000000000011;
  v7 = 0xEB00000000617461;
  v8 = 0x4474736575716572;
  if (v2 != 3)
  {
    v8 = 0x7461446E656B6F74;
    v7 = 0xE900000000000061;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000010043C040;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_100225AFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100225BF4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100225CD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100225DD8(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100225E28(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_100225E5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v3)
  {
    v5 = "r";
  }

  else
  {
    v5 = "proxyAuthorizationRequest";
  }

  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "proxyAuthorizationRequest";
  }

  else
  {
    v7 = "r";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100225F10@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_100225F6C(unint64_t *a1@<X8>)
{
  v2 = "proxyAuthorizationRequest";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "r";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_100225FA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100226024()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10022608C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100226104(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C47A0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100226154()
{
  result = qword_100522AB0;
  if (!qword_100522AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AB0);
  }

  return result;
}

unint64_t sub_1002261AC()
{
  result = qword_100522AB8;
  if (!qword_100522AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AB8);
  }

  return result;
}

unint64_t sub_100226204()
{
  result = qword_100522AC0;
  if (!qword_100522AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionAuthorizationMessageKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GroupSessionAuthorizationMessageKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002263E8()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052AF78);
  sub_100015AFC(v0, qword_10052AF78);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_100226544()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1002265A4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

id sub_1002266A4(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v29 = a4;
  v8 = v4;
  swift_getObjectType();
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = *a1;
  v18 = *(v4 + *a1);
  if (v18)
  {
    v19 = *(v4 + *a1);
  }

  else
  {
    v28[2] = sub_1001E0520();
    v32 = _typeName(_:qualified:)();
    v33 = v20;
    v21._countAndFlagsBits = a2;
    v21._object = a3;
    String.append(_:)(v21);
    v28[0] = v33;
    v28[1] = v32;
    v29 = v29(v22, v23);
    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_1000048A0(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
    sub_100004674(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v30 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
    v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v25 = *(v4 + v17);
    *(v8 + v17) = v24;
    v19 = v24;

    v18 = 0;
  }

  v26 = v18;
  return v19;
}

char *sub_10022699C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener____lazy_storage___messageQueue] = 0;
  *&v0[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener____lazy_storage___serialQueue] = 0;
  v3 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_linkClient;
  *&v1[v3] = [objc_allocWithZone(RPCompanionLinkClient) init];
  *&v1[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_cancellationTimersByRequestID] = &_swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_lock;
  type metadata accessor for Lock();
  *&v1[v4] = sub_10036C394();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for GroupSessionProxyAuthorizationListener();
  v5 = objc_msgSendSuper2(&v15, "init");
  v6 = *&v5[OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_linkClient];
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = ObjectType;
  aBlock[4] = sub_100226BAC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BC53C;
  aBlock[3] = &unk_1004C4A88;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = v6;
  v11 = v9;
  v12 = v10;

  [v12 activateWithCompletion:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();
  return v11;
}

void sub_100226BAC(uint64_t a1)
{
  v2 = v1[4];
  if (a1)
  {
    swift_errorRetain();
    if (qword_10052AF70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_10052AF78);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v6 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v31);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v12;
      *v7 = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to activate rapport listener: %@", v6, 0x16u);
      sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v8);
    }

    else
    {
    }
  }

  else
  {
    v13 = v1[2];
    v14 = v1[3];
    if (qword_10052AF70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_10052AF78);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v22 = sub_10002C9C8(v20, v21, &v31);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Registering rapport events", v18, 0xCu);
      sub_100026A44(v19);
    }

    sub_100225518(0);
    v23 = String._bridgeToObjectiveC()();

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v2;
    v35 = sub_100228BC8;
    v36 = v25;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1002270A0;
    v34 = &unk_1004C4CB8;
    v26 = _Block_copy(&v31);

    [v13 registerEventID:v23 options:0 handler:v26];
    _Block_release(v26);

    sub_100225518(1);
    v27 = String._bridgeToObjectiveC()();

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v2;
    v35 = sub_100228BD4;
    v36 = v29;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1002270A0;
    v34 = &unk_1004C4D08;
    v30 = _Block_copy(&v31);

    [v13 registerEventID:v27 options:0 handler:v30];
    _Block_release(v30);
  }
}

uint64_t sub_1002270A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v6, a3);
}

void sub_100227194(uint64_t a1)
{
  swift_getObjectType();
  v56._countAndFlagsBits = sub_10022595C(0);
  v56._object = v2;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v3 = sub_10001BF64(v63), (v4 & 1) == 0))
  {
    sub_10001BF10(v63);
    return;
  }

  sub_100020E0C(*(a1 + 56) + 32 * v3, v64);
  sub_10001BF10(v63);
  if (swift_dynamicCast())
  {
    v5 = sub_100225DCC(v56);
    if (v5 != 2)
    {
      v6 = v5;
      if (sub_100227A14(v5 & 1, &off_1004C4A38))
      {
        v57 = sub_10022595C(2u);
        v60 = v7;
        AnyHashable.init<A>(_:)();
        if (!*(a1 + 16) || (v8 = sub_10001BF64(v63), (v9 & 1) == 0))
        {
          sub_10001BF10(v63);
          goto LABEL_26;
        }

        sub_100020E0C(*(a1 + 56) + 32 * v8, v64);
        sub_10001BF10(v63);
        if (swift_dynamicCast())
        {
          v11 = v57;
          v10 = v60;
          sub_10022595C(1u);
          AnyHashable.init<A>(_:)();
          if (*(a1 + 16) && (v12 = sub_10001BF64(v63), (v13 & 1) != 0))
          {
            sub_100020E0C(*(a1 + 56) + 32 * v12, v64);
            sub_10001BF10(v63);
            if (swift_dynamicCast())
            {
              v58 = sub_10022595C(3u);
              v61 = v14;
              AnyHashable.init<A>(_:)();
              if (*(a1 + 16) && (v15 = sub_10001BF64(v63), (v16 & 1) != 0))
              {
                sub_100020E0C(*(a1 + 56) + 32 * v15, v64);
                sub_10001BF10(v63);
                if (swift_dynamicCast())
                {
                  v53 = v11;
                  v17 = objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf);
                  sub_1001C3FE0(v58, v61);
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v54 = v58;
                  v55 = v61;
                  sub_1001C4034(v58, v61);
                  v19 = [v17 initWithData:isa];

                  if (v19)
                  {
                    v20 = [v19 identity];
                    v21 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v20];

                    if (v21)
                    {
                      v59 = sub_10022595C(4u);
                      v62 = v22;
                      AnyHashable.init<A>(_:)();
                      if (*(a1 + 16) && (v23 = sub_10001BF64(v63), (v24 & 1) != 0))
                      {
                        sub_100020E0C(*(a1 + 56) + 32 * v23, v64);
                        sub_10001BF10(v63);
                        if (swift_dynamicCast())
                        {
                          v25 = objc_allocWithZone(_MRGroupSessionTokenProtobuf);
                          sub_1001C3FE0(v59, v62);
                          v26 = Data._bridgeToObjectiveC()().super.isa;
                          sub_1001C4034(v59, v62);
                          v27 = [v25 initWithData:v26];

                          v52 = v27;
                          if (v27)
                          {
                            v51 = [objc_allocWithZone(MRGroupSessionToken) initWithProtobuf:v27];
                            v28 = objc_allocWithZone(MRDGroupSessionJoinRequest);
                            v29 = v21;
                            v30 = String._bridgeToObjectiveC()();

                            v31 = Array._bridgeToObjectiveC()().super.isa;
                            v32 = [v28 initWithIdentifier:v30 identity:v29 oobKeys:v31];

                            if (v6)
                            {
                              sub_100228590(v32, v51);
                              sub_1001C4034(v54, v55);

                              sub_1001C4034(v59, v62);
                            }

                            else
                            {
                              sub_100227A98(v32, v53, v10, v51);
                              sub_1001C4034(v54, v55);

                              sub_1001C4034(v59, v62);
                            }
                          }

                          else
                          {

                            if (qword_10052AF70 != -1)
                            {
                              swift_once();
                            }

                            v43 = type metadata accessor for Logger();
                            sub_100015AFC(v43, qword_10052AF78);
                            v44 = Logger.logObject.getter();
                            v45 = static os_log_type_t.error.getter();
                            if (os_log_type_enabled(v44, v45))
                            {
                              v46 = swift_slowAlloc();
                              v47 = swift_slowAlloc();
                              v63[0] = v47;
                              *v46 = 136315138;
                              v48 = _typeName(_:qualified:)();
                              v50 = sub_10002C9C8(v48, v49, v63);

                              *(v46 + 4) = v50;
                              _os_log_impl(&_mh_execute_header, v44, v45, "[%s] Failed to parse join token", v46, 0xCu);
                              sub_100026A44(v47);
                            }

                            sub_1001C4034(v54, v55);

                            sub_1001C4034(v59, v62);
                          }

                          return;
                        }

                        sub_1001C4034(v54, v55);
                      }

                      else
                      {
                        sub_10001BF10(v63);

                        sub_1001C4034(v54, v55);
                      }

                      goto LABEL_26;
                    }
                  }

                  sub_1001C4034(v58, v61);

                  goto LABEL_26;
                }
              }

              else
              {
                sub_10001BF10(v63);
              }
            }
          }

          else
          {
            sub_10001BF10(v63);
          }
        }

LABEL_26:
        if (qword_10052AF70 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100015AFC(v33, qword_10052AF78);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v63[0] = swift_slowAlloc();
          *v36 = 136315394;
          v37 = _typeName(_:qualified:)();
          v39 = sub_10002C9C8(v37, v38, v63);

          *(v36 + 4) = v39;
          *(v36 + 12) = 2080;
          v40 = Dictionary.description.getter();
          v42 = sub_10002C9C8(v40, v41, v63);

          *(v36 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Failed to parse message: %s", v36, 0x16u);
          swift_arrayDestroy();
        }
      }
    }
  }
}

BOOL sub_100227A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_100226204();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_100227A98(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a2;
  v40 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022663C();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a4;
  v46 = sub_100228010;
  v47 = v15;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v37 = &v44;
  v44 = sub_100003D98;
  v45 = &unk_1004C4AD8;
  v16 = _Block_copy(&aBlock);
  v35 = v4;
  v17 = a1;
  v34 = a4;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v38 + 8))(v10, v7);
  (*(v11 + 8))(v14, v36);

  v19 = [v17 identifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = swift_allocObject();
  v25 = v34;
  v24 = v35;
  v23[2] = v35;
  v23[3] = v17;
  v26 = v40;
  v23[4] = v39;
  v23[5] = v26;
  v23[6] = v25;
  v46 = sub_100228154;
  v47 = v23;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100003D98;
  v45 = &unk_1004C4B28;
  v27 = _Block_copy(&aBlock);
  v24;
  v28 = v17;
  v29 = v25;

  v30 = [objc_opt_self() timerWithInterval:0 repeats:v27 block:60.0];
  _Block_release(v27);
  swift_beginAccess();
  sub_1001EC6DC(v30, v20, v22);
  return swift_endAccess();
}

uint64_t sub_100227ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_100227F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionProxyAuthorizationListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100228010()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = (*((swift_isaMask & *v2) + 0x80))();
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v4;
    v11[4] = sub_100228908;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100227ECC;
    v11[3] = &unk_1004C4BC8;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v4;

    [v6 groupSessionProxyAuthorizationListener:v9 didReceiveJoinRequest:v10 withSessionToken:v3 handler:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

uint64_t sub_100228154()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[2];
  return sub_100228590(v1, v2);
}

uint64_t sub_100228180(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005229A8, &unk_1004588B0);
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

id sub_100228424()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005229A8, &unk_1004588B0);
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

uint64_t sub_100228590(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022663C();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_100228860;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C4B78;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  v17 = a1;
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);
}

void *sub_100228860()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = (*((swift_isaMask & *v2) + 0x80))();
  if (result)
  {
    [result groupSessionProxyAuthorizationListener:v2 didCancelJoinRequest:v3 withSessionToken:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100228908()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = sub_100226670();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100228A74;
  *(v6 + 24) = v5;
  v11[4] = sub_10021C408;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001E7220;
  v11[3] = &unk_1004C4C40;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LODWORD(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100228A74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = OBJC_IVAR___MRDGroupSessionProxyAuthorizationListener_cancellationTimersByRequestID;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (v9 = *(v2 + v7), , v10 = sub_10000698C(v4, v6), v12 = v11, , (v12 & 1) != 0))
  {
    v13 = *(*(v8 + 56) + 8 * v10);

    [v13 invalidate];
  }

  else
  {
  }

  v14 = [v1 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  swift_beginAccess();
  sub_1001EC6DC(0, v15, v17);
  return swift_endAccess();
}

void sub_100228BE0(uint64_t a1, uint64_t a2, const char *a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (!a2)
  {
    goto LABEL_12;
  }

  *&v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v31 + 1) = v9;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v10 = sub_10001BF64(v30), (v11 & 1) == 0))
  {
    sub_10001BF10(v30);
LABEL_12:
    v31 = 0u;
    v32 = 0u;
    goto LABEL_13;
  }

  sub_100020E0C(*(a2 + 56) + 32 * v10, &v31);
  sub_10001BF10(v30);
  if (!*(&v32 + 1))
  {
LABEL_13:
    sub_1000038A4(&v31, &qword_100522890, &qword_100450610);
    v13 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v30[0];
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v30[1];
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  if (qword_10052AF70 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_10052AF78);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v18 = 136315650;
    v19 = _typeName(_:qualified:)();
    v21 = sub_10002C9C8(v19, v20, v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (v14)
    {
      v22 = v13;
    }

    else
    {
      v22 = 0x4E574F4E4B4E55;
    }

    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = 0xE700000000000000;
    }

    v24 = sub_10002C9C8(v22, v23, v30);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = Dictionary.description.getter();
    v27 = sub_10002C9C8(v25, v26, v30);

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, a3, v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    sub_100227194(a1);
  }
}

uint64_t sub_100228F40()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052AF98);
  sub_100015AFC(v0, qword_10052AF98);
  v1 = *sub_1001D901C();
  return Logger.init(_:)();
}

id sub_10022914C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_100229424();

  if (v6)
  {
    v7 = [v6 *a3];

    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1002291EC(SEL *a1)
{
  v2 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100229424();

  if (v4)
  {
    v5 = [v4 *a1];

    v3 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_1002292A8()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaActivityManager;
  *&v0[v1] = [objc_opt_self() manager];
  v2 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaBundleManager;
  v3 = sub_1003573A8();
  v4 = *v3;
  *&v0[v2] = *v3;
  v5 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_carSession;
  v6 = objc_allocWithZone(CARSessionStatus);
  v7 = v4;
  *&v0[v5] = [v6 init];
  v8 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_lock;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = sub_10022ACF0(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_cancellables] = v10;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CarPlayRouteRecommendationControllerImpl();
  v11 = objc_msgSendSuper2(&v13, "init");
  [*&v11[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_carSession] addSessionObserver:v11];
  return v11;
}

void *sub_100229424()
{
  v1 = [v0 outputDevices];
  sub_10022AFB4();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 deviceType] == 2)
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_100229550(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_carSession);
  v3 = [v2 currentSession];
  if (v3 && (v3, v4 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor, !*(a1 + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor)))
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_10052AF98);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v22 = sub_10002C9C8(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] CarPlay session started - observing media apps in focus", v18, 0xCu);
      sub_100026A44(v19);
    }

    v23 = [objc_allocWithZone(MRDMediaAppInFocusMonitor) initWithDelegate:a1];
    v5 = *(a1 + v4);
    *(a1 + v4) = v23;
  }

  else
  {
    v5 = [v2 currentSession];
    if (!v5)
    {
      v6 = OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor;
      if (!*(a1 + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_focusMonitor))
      {
        return;
      }

      if (qword_10052AF90 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100015AFC(v7, qword_10052AF98);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v24 = v11;
        *v10 = 136315138;
        v12 = _typeName(_:qualified:)();
        v14 = sub_10002C9C8(v12, v13, &v24);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "[%s] CarPlay session ended - stopping observation", v10, 0xCu);
        sub_100026A44(v11);
      }

      v5 = *(a1 + v6);
      *(a1 + v6) = 0;
    }
  }
}

void sub_100229878()
{
  swift_getObjectType();
  v11 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (v11 && (v10 = v11, v0 = sub_100229424(), v10, v0))
  {
    if ([v0 isCarPlayVideoActive] && (objc_msgSend(v0, "isCarPlayVideoAllowed") & 1) != 0)
    {
      sub_100229A70(0, 0);
    }

    v1 = v10;
  }

  else
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_10052AF98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = sub_10002C9C8(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Attempted to reevaluate state without a valid output context or CarPlay output device", v5, 0xCu);
      sub_100026A44(v6);
    }

    v1 = v11;
  }
}

void sub_100229A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_10052AF90 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100015AFC(v7, qword_10052AF98);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Requesting banner presentation", v10, 0xCu);
    sub_100026A44(v11);
  }

  v15 = *&v3[OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaActivityManager];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = ObjectType;
  v19[4] = sub_10022B000;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100229CA0;
  v19[3] = &unk_1004C4DF8;
  v17 = _Block_copy(v19);
  v18 = v3;
  sub_10021DF20(a1);

  [v15 postCarPlayVideoConnectedBannerRequestWithCompletion:v17];
  _Block_release(v17);
}

void sub_100229CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100229D18()
{
  ObjectType = swift_getObjectType();
  v21 = [objc_opt_self() sharedSystemRemoteDisplayContext];
  if (v21 && (v1 = v21, v2 = sub_100229424(), v1, v2))
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_10052AF98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10002C9C8(v8, v9, aBlock);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Disabling CarPlay Video", v6, 0xCu);
      sub_100026A44(v7);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = ObjectType;
    aBlock[4] = sub_10022A8E4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BC53C;
    aBlock[3] = &unk_1004C4D58;
    v12 = _Block_copy(aBlock);

    [v2 setCarPlayVideoActive:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_10052AF98);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Received request to disconnect from CarPlay video without carPlayOutputDevice. Potentially disconnected from CarPlay while banner was active", v16, 0xCu);
      sub_100026A44(v17);
    }

    else
    {
    }
  }
}

uint64_t sub_10022A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10022A218, 0, 0);
}

uint64_t sub_10022A218()
{
  v12 = v0;
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_mediaBundleManager);
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = sub_1001D37A8(*(v1 + 16), 0);
    v9 = sub_1001D5264(&v11, v4 + 4, v3, v1);

    sub_1001D7000();
    if (v9 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[4] = v4;
  v5 = *((swift_isaMask & *v2) + 0xC0);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10022A3E4;

  return v10(v4);
}

uint64_t sub_10022A3E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v8 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = sub_10022A67C;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_10022A500;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10022A500()
{
  v1 = v0[6];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[6];

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_10:
    v9 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v4)))));
    v4 &= v4 - 1;
    v10 = *((swift_isaMask & *v9) + 0x88);
    v11 = v9;
    LOBYTE(v10) = v10();

    if (v10)
    {
      v12 = v0[6];
      v13 = v0[2];

      sub_100229878();
LABEL_13:
      v15 = v0[6];

      v16 = v0[1];

      v16();
      return;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v14 = v0[6];

      goto LABEL_13;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10022A67C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

id sub_10022A820(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10022A8E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    swift_errorRetain();
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_10052AF98);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v6 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v21);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v12;
      *v7 = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to disable CarPlay video: %@", v6, 0x16u);
      sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_10052AF98);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, oslog, v14, "[%s] Disabled CarPlay Video", v15, 0xCu);
      sub_100026A44(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_10022AC2C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F34;

  return sub_10022A1F8(v4, v5, v6, v2, v3);
}

unint64_t sub_10022ACF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1001BC5A8(&qword_100522C10, &qword_100450558);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_10022AF5C(&qword_100522C18);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10022AF5C(&qword_100522C20);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10022AF5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10022AFB4()
{
  result = qword_100522C28;
  if (!qword_100522C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100522C28);
  }

  return result;
}

void sub_10022B000(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  if (a1 == 1)
  {
    v6 = v1[2];
    if (qword_10052AF90 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_10052AF98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10002C9C8(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Banner tapped - disconnecting CarPlay video.", v10, 0xCu);
      sub_100026A44(v11);
    }

    sub_100229D18();
    if (!v4)
    {
      return;
    }

LABEL_13:
    v4(a1);
    return;
  }

  if (qword_10052AF90 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_10052AF98);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &v23);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Banner dismissed, no action", v18, 0xCu);
    sub_100026A44(v19);
  }

  if (v4)
  {
    goto LABEL_13;
  }
}

uint64_t sub_10022B2B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022B2D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10022B334()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052B038);
  sub_100015AFC(v0, qword_10052B038);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_10022B390()
{
  v1 = OBJC_IVAR____TtC12mediaremoted16HomePodUIManager_currentSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_10022B3D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted16HomePodUIManager_currentSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10022B490()
{
  v1 = OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender;
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender);
  }

  else
  {
    v3 = v0;
    type metadata accessor for GroupSessionProxyAuthorizationSender();
    v2 = sub_1001BFBE8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10022B500(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender);
  *(v1 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender) = a1;
}

uint64_t (*sub_10022B518(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10022B490();
  return sub_10022B560;
}

uint64_t sub_10022B560(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender);
  *(v1 + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender) = v2;
}

void sub_10022B578(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  swift_getObjectType();
  v6 = (*((swift_isaMask & *v2) + 0x60))();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 remoteParticipants];
    sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < 1)
    {
      v18 = [objc_opt_self() currentSettings];
      v19 = [v18 supportGroupSessionHomePodBoop];

      if (v19)
      {
        if (qword_10052B030 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100015AFC(v20, qword_10052B038);
        v21 = a1;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v22, v23))
        {
          osloga = v22;
          v24 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v34 = v31;
          *v24 = 136315394;
          v25 = _typeName(_:qualified:)();
          v27 = sub_10002C9C8(v25, v26, &v34);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2112;
          *(v24 + 14) = v21;
          *v30 = v21;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, osloga, v23, "[%s] Requesting to notify nearby devices for join request: %@", v24, 0x16u);
          sub_1001E4048(v30);

          sub_100026A44(v31);
        }

        else
        {
        }

        v29 = (*((swift_isaMask & *v3) + 0x78))();
        (*(*v29 + 232))(v21, v7);
      }

      a2(1);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_10052B030 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100015AFC(v11, qword_10052B038);
      oslog = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v34 = v14;
        *v13 = 136315138;
        v15 = _typeName(_:qualified:)();
        v17 = sub_10002C9C8(v15, v16, &v34);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, oslog, v12, "[%s] Participants are present in session - Not notifying nearby devices", v13, 0xCu);
        sub_100026A44(v14);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10022BADC(uint64_t a1)
{
  result = (*((swift_isaMask & *v1) + 0x60))();
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() currentSettings];
    v6 = [v5 supportGroupSessionHomePodBoop];

    if (v6)
    {
      v7 = (*((swift_isaMask & *v1) + 0x78))();
      (*(*v7 + 240))(a1, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10022BC80(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a3)
  {
    type metadata accessor for MRGroupSessionError(0);
    v5 = v4;
    v8 = 9;
    v6 = sub_10022C244(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(&v8, 0xD00000000000001FLL, 0x800000010043C4D0, 0, v5, v6);
    v7 = v9;
    a3(v9);
  }
}

void sub_10022BE44(void (*a1)(void *))
{
  if (a1)
  {
    type metadata accessor for MRGroupSessionError(0);
    v3 = v2;
    v6 = 9;
    v4 = sub_10022C244(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(&v6, 0xD00000000000001FLL, 0x800000010043C4D0, 0, v3, v4);
    v5 = v7;
    a1(v7);
  }
}

uint64_t sub_10022C008()
{
  v3 = *((swift_isaMask & *v0) + 0x68);
  v1 = swift_unknownObjectRetain();

  return v3(v1);
}

id sub_10022C1A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodUIManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022C244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022C28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  result = a6();
  if (v6)
  {
    v30 = &_swiftEmptyDictionarySingleton;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (a5)
    {
      v29 = &type metadata for String;
      *&v28 = a4;
      *(&v28 + 1) = a5;
      sub_1001C4088(&v28, v25);

      swift_errorRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10022D818(v25, v11, v13, isUniquelyReferenced_nonNull_native);

      v30 = &_swiftEmptyDictionarySingleton;
    }

    else
    {

      swift_errorRetain();
      sub_10022D30C(v11, v13, &v28);

      sub_100037768(&v28);
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    swift_getErrorValue();
    v18 = v26;
    v19 = v27;
    v29 = v27;
    v20 = sub_1000397B4(&v28);
    (*(*(v19 - 1) + 16))(v20, v18, v19);
    sub_1001C4088(&v28, v25);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818(v25, v15, v17, v21);

    v22 = objc_allocWithZone(NSError);
    v23 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v22 initWithDomain:v23 code:a3 userInfo:isa];

    swift_willThrow();
  }

  return result;
}

id sub_10022C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = &_swiftEmptyDictionarySingleton;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v10;
  v13 = v11;
  if (a5)
  {
    v32 = &type metadata for String;
    *&v31 = a4;
    *(&v31 + 1) = a5;
    sub_1001C4088(&v31, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818(v28, v12, v13, isUniquelyReferenced_nonNull_native);

    v33 = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_10022D30C(v10, v11, &v31);

    sub_100037768(&v31);
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v15;
  v18 = v16;
  if (a6)
  {
    swift_getErrorValue();
    v19 = v29;
    v20 = v30;
    v32 = v30;
    v21 = sub_1000397B4(&v31);
    (*(*(v20 - 1) + 16))(v21, v19, v20);
    sub_1001C4088(&v31, v28);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818(v28, v17, v18, v22);
  }

  else
  {
    sub_10022D30C(v15, v16, &v31);

    sub_100037768(&v31);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = [v23 initWithDomain:v24 code:a3 userInfo:isa];

  return v26;
}

uint64_t sub_10022C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7[29] = a5;
  v7[30] = a6;
  v7[27] = a3;
  v7[28] = a4;
  v7[26] = a2;
  v12 = (a7 + *a7);
  v9 = a7[1];
  v10 = swift_task_alloc();
  v7[31] = v10;
  *v10 = v7;
  v10[1] = sub_10022C874;

  return v12(a1);
}

uint64_t sub_10022C874()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  *(v3 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10022C9A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10022C9A8()
{
  v1 = *(v0 + 240);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = *(v0 + 256);
  if (v1)
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);
    *(v0 + 40) = &type metadata for String;
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    sub_1001C4088((v0 + 16), (v0 + 144));

    swift_errorRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10022D818((v0 + 144), v2, v4, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v10 = *(v0 + 216);

    swift_errorRetain();
    sub_10022D30C(v2, v4, (v0 + 48));

    sub_100037768(v0 + 48);
  }

  v11 = *(v0 + 256);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 208);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  swift_getErrorValue();
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  *(v0 + 104) = v19;
  v20 = sub_1000397B4((v0 + 80));
  (*(*(v19 - 8) + 16))(v20, v18, v19);
  sub_1001C4088((v0 + 80), (v0 + 112));
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_10022D818((v0 + 112), v15, v17, v21);

  v22 = objc_allocWithZone(NSError);
  v23 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 initWithDomain:v23 code:v12 userInfo:isa];

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10022CC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10022D968();
  v11 = (*(a6 + 24))(a5, a6);
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10022C508(v11, v13, v17, a2, a3, a4);
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_10022CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(a8 + 24))(a6, a8);
  v9 = v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10022C28C(v11, v9, v14, a2, a3, sub_10022D9B4);
}

uint64_t sub_10022CEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  return _swift_task_switch(sub_10022CEF4, 0, 0);
}

uint64_t sub_10022CEF4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);
  v3 = (*(v1 + 24))(*(v0 + 72), v1);
  v5 = v4;
  *(v0 + 96) = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v13;
  *(v7 + 32) = v1;
  *(v7 + 40) = v14;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10022D084;
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);

  return sub_10022C76C(v11, v3, v5, v6, v9, v10, &unk_100450630);
}

uint64_t sub_10022D084()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10022D1FC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10022D214(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009F34;

  return v7(a1);
}

double sub_10022D30C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000698C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10022DB84();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1001C4088((*(v12 + 56) + 32 * v9), a3);
    sub_10022D668(v9, v12);
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

uint64_t sub_10022D3B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
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
        sub_1001C4088(v25, v37);
      }

      else
      {
        sub_100020E0C(v25, v37);
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
      result = sub_1001C4088(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10022D668(uint64_t result, uint64_t a2)
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

_OWORD *sub_10022D818(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_10022DB84();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022D3B0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000698C(a2, a3);
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
    sub_100026A44(v23);

    return sub_1001C4088(a1, v23);
  }

  else
  {
    sub_10022DB18(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_10022D968()
{
  result = qword_100522A60;
  if (!qword_100522A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100522A60);
  }

  return result;
}

uint64_t sub_10022D9B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_10022D9DC(uint64_t a1)
{
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F34;

  return sub_10022D214(a1, v5);
}

uint64_t sub_10022DA88(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_10022DB18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1001C4088(a4, (a5[7] + 32 * a1));
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

void *sub_10022DB84()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
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
        sub_100020E0C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1001C4088(v25, (*(v4 + 56) + v22));
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

id sub_10022DD38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022DD2C();
  *a2 = result;
  return result;
}

void sub_10022DD64(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon);
  *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon) = *a1;
  v3 = v2;
}

id sub_10022DDC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022DDB4();
  *a2 = result;
  return result;
}

void sub_10022DDEC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect);
  *(*a2 + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect) = *a1;
  v3 = v2;
}

id sub_10022E0C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_tracked] = 0;
  v4 = &v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_eventName];
  *v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[1] = v5;
  v6 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_propertyMap;
  sub_1001BC5A8(&qword_100522D30, &qword_1004508D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 48) = v8;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v9;
  v10 = sub_10003D4B4(inited, &qword_100522EB8, &qword_100450CB8, &qword_100522EC0, &unk_100450CC0);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522D38, &unk_100450940);
  swift_arrayDestroy();
  *&v1[v6] = v10;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10022E360()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10022E3A8(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_10022E3FC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_10022E478()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(inited + 72) = sub_1001D9C40();
  *(inited + 48) = v5;
  v6 = v5;
  v7 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_10022FD18(inited + 32);
  return v7;
}

uint64_t sub_10022E544()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004508A0;
  *(v2 + 32) = sub_10003D968(&OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request);
  *(v2 + 40) = sub_10022DD2C();
  *(v2 + 48) = sub_10022DDB4();
  return v2;
}

id sub_10022E5B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10003DDE0();
  *a2 = result;
  return result;
}

void sub_10022E5E4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup);
  *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup) = *a1;
  v3 = v2;
}

id sub_10022E640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022E634();
  *a2 = result;
  return result;
}

void sub_10022E66C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation);
  *(*a2 + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation) = *a1;
  v3 = v2;
}

uint64_t sub_10022E91C()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10022E964(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_10022E9B8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10022EA34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *v3;
  v5 = *a3;
  swift_beginAccess();
  v6 = *(v4 + v5);
}

unint64_t sub_10022EA7C()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType;
  swift_beginAccess();
  LOBYTE(v1) = *(v1 + v4);
  type metadata accessor for MRGroupSessionRouteType();
  *(inited + 72) = v5;
  *(inited + 48) = v1;
  v6 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_10022FD18(inited + 32);
  return v6;
}

uint64_t sub_10022EB44()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004508B0;
  *(v2 + 32) = sub_10003DDE0();
  *(v2 + 40) = sub_10022E634();
  return v2;
}

id sub_10022EDD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022EDC8();
  *a2 = result;
  return result;
}

void sub_10022EE00(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext) = *a1;
  v3 = v2;
}

id sub_10022EE5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022EE50();
  *a2 = result;
  return result;
}

void sub_10022EE88(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice) = *a1;
  v3 = v2;
}

id sub_10022EEE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022EED8();
  *a2 = result;
  return result;
}

void sub_10022EF10(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice) = *a1;
  v3 = v2;
}

id sub_10022EF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022EF60();
  *a2 = result;
  return result;
}

void sub_10022EF98(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo) = *a1;
  v3 = v2;
}

id sub_10022EFF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022EFE8();
  *a2 = result;
  return result;
}

void sub_10022F020(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward) = *a1;
  v3 = v2;
}

id sub_10022F07C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022F070();
  *a2 = result;
  return result;
}

void sub_10022F0A8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint) = *a1;
  v3 = v2;
}

id sub_10022F104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_10022F0F8();
  *a2 = result;
  return result;
}

void sub_10022F130(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions);
  *(*a2 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions) = *a1;
  v3 = v2;
}

uint64_t sub_10022F180()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004508C0;
  *(v0 + 32) = sub_10022EDC8();
  *(v0 + 40) = sub_10022EE50();
  *(v0 + 48) = sub_10022EED8();
  *(v0 + 56) = sub_10022EF60();
  *(v0 + 64) = sub_10022EFE8();
  *(v0 + 72) = sub_10022F070();
  *(v0 + 80) = sub_10022F0F8();
  return v0;
}

unint64_t sub_10022F208()
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F530;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000010043C7A0;
  v2 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader;
  swift_beginAccess();
  *(inited + 48) = *(v0 + v2);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x5472657473756C63;
  *(inited + 88) = 0xEB00000000657079;
  v3 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  swift_beginAccess();
  *(inited + 96) = *(v0 + v3);
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 128) = 0x44496C65646F6DLL;
  *(inited + 136) = 0xE700000000000000;
  v4 = (v0 + OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_modelID);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 152) = v5;

  v7 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  return v7;
}

void sub_10022F778(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v8 = a1;
  v9 = a3;
  sub_100232B4C(v9, ObjectType, a4);
}

void sub_10022F804(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = a1;
  sub_10023231C(ObjectType, a3);
}

id sub_10022F8AC(int a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_discoverableGroupLeader] = 0;
  v8 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_clusterType] = 0;
  v9 = &v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_modelID];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_eventName];
  *v10 = 0xD00000000000002CLL;
  v10[1] = 0x800000010043C770;
  v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_tracked] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___sourceOutputContext] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___removeLocalDevice] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___addLocalDevice] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___reloadDeviceInfo] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___originForward] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___findEndpoint] = 0;
  *&v3[OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents____lazy_storage___interruptions] = 0;
  swift_beginAccess();
  *&v3[v8] = a1;
  swift_beginAccess();
  *v9 = a2;
  v9[1] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10022FA6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022FB68()
{
  v1 = *v0;
  v2 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_tracked;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_10022FBB0(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MRDNowPlayingAirPlaySessionEvents_tracked;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_10022FC04())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10022FC74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_10022FD18(uint64_t a1)
{
  v2 = sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10022FD80()
{
  sub_1001BC5A8(&qword_100522E88, &qword_100450B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F550;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x8000000100450A70;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x8000000100450A90;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "addLocalDevice");
  *(inited + 103) = -18;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000100450AC0;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "originForward");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "findEndpoint");
  *(inited + 173) = 0;
  *(inited + 174) = -5120;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0x7075727265746E69;
  *(inited + 192) = 0xE900000000000074;
  v1 = sub_10003D4B4(inited, &qword_100522E98, &qword_100450C90, &qword_100522EA0, &qword_100450C98);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522E90, &qword_100450C88);
  swift_arrayDestroy();
  return v1;
}

id sub_10022FFFC()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 isRemoteControllableApp:v1];

  return v2;
}

uint64_t sub_100230184(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_10003DBB8(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_100230264()
{
  v1 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_errorRetain();
  return v2;
}

uint64_t sub_100230324(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1002303DC()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - v15;
  (*((swift_isaMask & *v0) + 0x80))(v14);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_1000038A4(v18, &qword_1005228D8, &unk_100450060);
    return 0;
  }

  v19 = v7;
  v20 = *(v9 + 32);
  v21 = v20(v16, v19, v8);
  (*((swift_isaMask & *v0) + 0x68))(v21);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v16, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v20(v13, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v13, v8);
  v25(v16, v8);
  return v24;
}

Class sub_100230748()
{
  (*((swift_isaMask & *v0) + 0xB0))();
  if (v1)
  {
    return 0;
  }

  return Double._bridgeToObjectiveC()().super.super.isa;
}

BOOL sub_1002307A8(void *a1)
{
  v3 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - v9;
  (*((swift_isaMask & *v1) + 0x80))(v8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1000038A4(v10, &qword_1005228D8, &unk_100450060);
  if (v13 == 1)
  {
    Date.init()();
    (*(v12 + 56))(v7, 0, 1, v11);
    v14 = OBJC_IVAR___MRDTimingEvent_endDate;
    swift_beginAccess();
    sub_10003DBB8(v7, v1 + v14);
    swift_endAccess();
    if (a1)
    {
      v18[1] = a1;
      swift_errorRetain();
      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      sub_100018D7C(0, &qword_100522A60, NSError_ptr);
      if ((swift_dynamicCast() & 1) != 0 && (v15 = v18[0], v16 = [v18[0] recursiveUnderlyingError], v15, v16))
      {
        a1 = v16;
      }

      else
      {
        swift_errorRetain();
      }
    }

    (*((swift_isaMask & *v1) + 0xA0))(a1);
  }

  return v13 == 1;
}

NSNumber MRDTimingEvents.objC_totalDuration.getter()
{
  sub_100230CF4();

  return Double._bridgeToObjectiveC()();
}

uint64_t sub_100230CF4()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v51 = &v44 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v55 = type metadata accessor for Date();
  v52 = *(v55 - 8);
  v12 = *(v52 + 64);
  v13 = __chkstk_darwin(v55);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((swift_isaMask & *v0) + 0x50);
  v46 = (swift_isaMask & *v0) + 80;
  v16 = v15(v13);
  v17 = v16;
  v47 = v15;
  v48 = v0;
  v50 = v11;
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_32:

    v26 = v50;
    (*(v52 + 56))(v50, 1, 1, v55);
    return sub_1000038A4(v26, &qword_1005228D8, &unk_100450060);
  }

LABEL_31:
  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_3:
  v19 = 0;
  v53 = v17 & 0xC000000000000001;
  v54 = (v52 + 48);
  while (1)
  {
    if (v53)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v23 = *((swift_isaMask & *v20) + 0x68);
    v23();
    v24 = *v54;
    if ((*v54)(v9, 1, v55) != 1)
    {
      break;
    }

    sub_1000038A4(v9, &qword_1005228D8, &unk_100450060);
    ++v19;
    if (v22 == v18)
    {
      goto LABEL_32;
    }
  }

  v25 = sub_1000038A4(v9, &qword_1005228D8, &unk_100450060);
  v26 = v50;
  (v23)(v25);

  v27 = v55;
  if (v24(v26, 1, v55) == 1)
  {
    return sub_1000038A4(v26, &qword_1005228D8, &unk_100450060);
  }

  v28 = (*(v52 + 32))(v49, v26, v27);
  v29 = v47(v28);
  v30 = v29;
  v56 = v29;
  if (v29 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_15:
      v17 = v30 & 0xFFFFFFFFFFFFFF8;
      v9 = &unk_100450060;
      while (!__OFSUB__(v31--, 1))
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v33 = *(v30 + 32 + 8 * v31);
        }

        v34 = v33;
        v35 = v51;
        (*((swift_isaMask & *v33) + 0x80))();

        LODWORD(v34) = v24(v35, 1, v55);
        v36 = sub_1000038A4(v35, &qword_1005228D8, &unk_100450060);
        if (v34 != 1)
        {
          __chkstk_darwin(v36);
          *(&v44 - 2) = &v56;
          v57 = v31;
          sub_100233768(&v57, &v58);
          v37 = v58;
          goto LABEL_36;
        }

        if (!v31)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_28;
    }
  }

LABEL_35:
  v37 = 0;
LABEL_36:

  if (!v37)
  {
    return (*(v52 + 8))(v49, v55);
  }

  v40 = v45;
  (*((swift_isaMask & *v37) + 0x80))(v39);
  v41 = v55;
  result = (v24)(v40, 1, v55);
  if (result == 1)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v42 = v49;
    Date.timeIntervalSince(_:)();

    v43 = *(v52 + 8);
    v43(v42, v41);
    return (v43)(v40, v41);
  }

  return result;
}

uint64_t sub_1002312F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v54 = &v46 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v58 = type metadata accessor for Date();
  v55 = *(v58 - 8);
  v17 = *(v55 + 64);
  __chkstk_darwin(v58);
  v51 = a2;
  v52 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 8);
  v49 = a1;
  v50 = v2;
  v47 = v19;
  v48 = a2 + 8;
  v20 = v19(a1, a2);
  v21 = v20;
  v46 = v9;
  v53 = v16;
  if (!(v20 >> 62))
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_32:

    v30 = v53;
    (*(v55 + 56))(v53, 1, 1, v58);
    return sub_1000038A4(v30, &qword_1005228D8, &unk_100450060);
  }

LABEL_31:
  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_32;
  }

LABEL_3:
  v23 = 0;
  v56 = v21 & 0xC000000000000001;
  v57 = (v55 + 48);
  while (1)
  {
    if (v56)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v24 = *(v21 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v27 = *((swift_isaMask & *v24) + 0x68);
    v27();
    v28 = *v57;
    if ((*v57)(v14, 1, v58) != 1)
    {
      break;
    }

    sub_1000038A4(v14, &qword_1005228D8, &unk_100450060);
    ++v23;
    if (v26 == v22)
    {
      goto LABEL_32;
    }
  }

  v29 = sub_1000038A4(v14, &qword_1005228D8, &unk_100450060);
  v30 = v53;
  (v27)(v29);

  v31 = v58;
  if (v28(v30, 1, v58) == 1)
  {
    return sub_1000038A4(v30, &qword_1005228D8, &unk_100450060);
  }

  (*(v55 + 32))(v52, v30, v31);
  v32 = v47(v49, v51);
  v33 = v32;
  v59 = v32;
  if (v32 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_15:
      v14 = (v33 + 32);
      v34 = v54;
      while (!__OFSUB__(v21--, 1))
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          if (v21 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v36 = *&v14[8 * v21];
        }

        v37 = v36;
        (*((swift_isaMask & *v36) + 0x80))();

        LODWORD(v37) = v28(v34, 1, v58);
        v38 = sub_1000038A4(v34, &qword_1005228D8, &unk_100450060);
        if (v37 != 1)
        {
          __chkstk_darwin(v38);
          *(&v46 - 2) = &v59;
          v60 = v21;
          sub_10023331C(&v60, &v61);
          v39 = v61;
          goto LABEL_36;
        }

        if (!v21)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_28;
    }
  }

LABEL_35:
  v39 = 0;
LABEL_36:
  v41 = v58;

  v43 = v46;
  if (!v39)
  {
    return (*(v55 + 8))(v52, v41);
  }

  (*((swift_isaMask & *v39) + 0x80))(v42);
  result = (v28)(v43, 1, v41);
  if (result == 1)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v44 = v52;
    Date.timeIntervalSince(_:)();

    v45 = *(v55 + 8);
    v45(v44, v41);
    return (v45)(v43, v41);
  }

  return result;
}

uint64_t sub_100231954()
{
  v1 = (*((swift_isaMask & *v0) + 0x50))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = *((swift_isaMask & *v5) + 0x98);
      if (v8())
      {

        v10 = (v8)(v9);

        return v10;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_100231AB8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *((swift_isaMask & *v6) + 0x98);
      if (v9())
      {

        v11 = (v9)(v10);

        return v11;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

unint64_t sub_100231C4C()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  v9 = (*((swift_isaMask & *v0) + 0x50))(v6);
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = [objc_allocWithZone(type metadata accessor for TimingEvent()) init];
  v13 = result;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v14 = *(v10 + 32);
  }

  v15 = v14;
  (*((swift_isaMask & *v14) + 0x68))();

  v16 = OBJC_IVAR___MRDTimingEvent_startDate;
  swift_beginAccess();
  sub_10003DBB8(v8, v13 + v16);
  swift_endAccess();
  result = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v18 = v17;

    (*((swift_isaMask & *v18) + 0x80))(v19);

    v20 = OBJC_IVAR___MRDTimingEvent_endDate;
    swift_beginAccess();
    sub_10003DBB8(v5, v13 + v20);
    swift_endAccess();
    v21 = sub_100231954();
    (*((swift_isaMask & *v13) + 0xA0))(v21);
    return v13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v10 + 8 * result + 32);
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100231F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = (*(a2 + 8))(a1, a2);
  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = [objc_allocWithZone(type metadata accessor for TimingEvent()) init];
  v15 = result;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v16 = *(v12 + 32);
  }

  v17 = v16;
  (*((swift_isaMask & *v16) + 0x68))();

  v18 = OBJC_IVAR___MRDTimingEvent_startDate;
  swift_beginAccess();
  sub_10003DBB8(v10, v15 + v18);
  swift_endAccess();
  result = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v20 = v19;

    (*((swift_isaMask & *v20) + 0x80))(v21);

    v22 = OBJC_IVAR___MRDTimingEvent_endDate;
    swift_beginAccess();
    sub_10003DBB8(v8, v15 + v22);
    swift_endAccess();
    v23 = (*(a2 + 24))(a1, a2);
    (*((swift_isaMask & *v15) + 0xA0))(v23);
    return v15;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v12 + 8 * result + 32);
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

id MRDTimingEvents.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MRDTimingEvents();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100232290(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10023231C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    return;
  }

  (*(a2 + 24))(1, a1, a2);
  v5 = swift_allocObject();
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v55 = *(a2 + 8);
  (*(v55 + 16))(a1);
  *(inited + 48) = Double._bridgeToObjectiveC()();
  v8 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  v59 = v5;
  *(v5 + 16) = v8;
  v56 = a1;
  v60 = a2;
  v9 = (*(a2 + 48))(a1, a2);
  v10 = 0;
  v11 = v9 + 64;
  v61 = v9 + 64;
  v62 = v9;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
LABEL_5:
  v16 = v10;
  if (!v14)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = v17 | (v10 << 6);
    v19 = *(*(v62 + 48) + 8 * v18);
    v20 = (*(v62 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];

    v23 = v2;
    v24 = swift_getAtKeyPath();
    (*((swift_isaMask & *aBlock[0]) + 0xB0))(v24);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      v27.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v59[2];
      v29 = aBlock[0];
      v59[2] = 0x8000000000000000;
      v31 = sub_10000698C(v21, v22);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
LABEL_32:
        __break(1u);
      }

      else
      {
        if (v29[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = v31;
            v47 = v30;
            sub_100233144();
            v30 = v47;
            v31 = v58;
          }
        }

        else
        {
          v57 = v30;
          sub_100232EA0(v34, isUniquelyReferenced_nonNull_native);
          v35 = sub_10000698C(v21, v22);
          v37 = v36 & 1;
          v30 = v57;
          if ((v57 & 1) != v37)
          {
LABEL_34:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);

            *(v14 + 16) = aBlock[0];

            __break(1u);
            return;
          }

          v31 = v35;
        }

        v2 = v23;
        isa = v27.super.super.isa;
        v39 = aBlock[0];
        if (v30)
        {
          v40 = *(aBlock[0] + 7);
          v41 = *(v40 + 8 * v31);
          *(v40 + 8 * v31) = isa;
          v42 = v39;

          v39 = v42;
LABEL_23:
          v11 = v61;
          v59[2] = v39;

          goto LABEL_5;
        }

        *(aBlock[0] + (v31 >> 6) + 8) |= 1 << v31;
        v43 = (v39[6] + 16 * v31);
        *v43 = v21;
        v43[1] = v22;
        *(v39[7] + 8 * v31) = v27;
        v44 = v39[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (!v45)
        {
          v39[2] = v46;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v16 = v10;
    v11 = v61;
  }

  while (v14);
  while (1)
  {
LABEL_7:
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v10);
    ++v16;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v48 = (*(v60 + 56))(v56);
  sub_1002328D8(v48);
  v50 = v49;

  if (!v50)
  {
    v50 = sub_1001D5788(_swiftEmptyArrayStorage);
  }

  v51 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v59[2];
  v59[2] = 0x8000000000000000;
  sub_1002333AC(v50, sub_100233360, 0, v51, aBlock);

  v59[2] = aBlock[0];

  (*(v60 + 40))(v56);
  v52 = String._bridgeToObjectiveC()();

  if ((*(v55 + 24))(v56))
  {
    v53 = _convertErrorToNSError(_:)();
  }

  else
  {
    v53 = 0;
  }

  aBlock[4] = sub_100233634;
  aBlock[5] = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CDC04;
  aBlock[3] = &unk_1004C5090;
  v54 = _Block_copy(aBlock);

  MRAnalyticsSendEvent();
  _Block_release(v54);
}

void sub_1002328D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_100020E0C(*(a1 + 56) + 32 * v14, v28);
    *&v27 = v16;
    *(&v27 + 1) = v17;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v18 = v27;
    sub_1001C4088(v26, v25);
    sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_10000698C(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

void sub_100232B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v6 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v33 = a3;
  v34 = a2;
  v10 = *(a3 + 8);
  v11 = *(v10 + 8);
  v35 = v3;
  v30 = v10 + 8;
  v31 = v10;
  v29 = v11;
  v12 = (v11)(a2);
  v13 = v12;
  v36 = v12;
  if (v12 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    while (!__OFSUB__(i--, 1))
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v16 = *(v13 + 32 + 8 * i);
      }

      v17 = v16;
      (*((swift_isaMask & *v16) + 0x68))();

      v18 = type metadata accessor for Date();
      LODWORD(v17) = (*(*(v18 - 8) + 48))(v9, 1, v18);
      v19 = sub_1000038A4(v9, &qword_1005228D8, &unk_100450060);
      if (v17 != 1)
      {
        __chkstk_darwin(v19);
        *(&v28 - 2) = &v36;
        v37 = i;
        sub_100233768(&v37, &v38);
        v20 = v38;
        goto LABEL_15;
      }

      if (!i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_13:
  v20 = 0;
LABEL_15:
  v21 = v34;

  if (v20)
  {
    goto LABEL_22;
  }

  v22 = v29(v21, v31);
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_29:

    goto LABEL_23;
  }

  v26 = v22;
  v27 = _CocoaArrayWrapper.endIndex.getter();
  v22 = v26;
  if (!v27)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);
LABEL_21:
    v20 = v23;

LABEL_22:
    v24 = *((swift_isaMask & *v20) + 0xC8);
    v25 = v20;
    v24(v32);

LABEL_23:
    sub_10023231C(v21, v33);
    return;
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_100232EA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
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

id sub_100233144()
{
  v1 = v0;
  sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
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

unint64_t sub_1002332B0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id sub_100233360@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1002333AC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_10000698C(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_100233144();
      }
    }

    else
    {
      v31 = v50;
      sub_100232EA0(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_10000698C(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100045960();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100233634()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

void sub_100233674()
{
  sub_100233710();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100233710()
{
  if (!qword_100522F90)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100522F90);
    }
  }
}

uint64_t sub_100233780()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_10052B5C0);
  sub_100015AFC(v0, qword_10052B5C0);
  v1 = *sub_1001D8DD4();
  return Logger.init(_:)();
}

void sub_1002337DC()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044EBC0;
  v1 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
  if (kMRMediaRemoteSystemMediaApplicationDisplayIdentifier)
  {
    v2 = v0;
    v3 = objc_allocWithZone(MRClient);
    v4 = v1;
    v5 = [v3 initWithBundleIdentifier:v4];

    v6 = [objc_allocWithZone(MRPlayerPath) initWithOrigin:0 client:v5 player:0];
    *(v2 + 32) = v6;
    qword_10052B5E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

id SystemGroupSessionTransport.__allocating_init(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id SystemGroupSessionTransport.init(sessionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SystemGroupSessionTransport();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t SystemGroupSessionTransport.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(18);

  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003D726569;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier));
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 60;
}

id SystemGroupSessionTransport.deviceInfo.getter()
{
  v1 = [objc_allocWithZone(MRDeviceInfo) init];
  v2 = [v0 name];
  [v1 setName:v2];

  v3 = *&v0[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier];
  v4 = *&v0[OBJC_IVAR___MRDSystemGroupSessionTransport_sessionIdentifier + 8];
  v5 = String._bridgeToObjectiveC()();
  [v1 setDeviceUID:v5];

  return v1;
}

uint64_t SystemGroupSessionTransport.subscribedPlayerPaths.getter()
{
  if (qword_10052B5D8 != -1)
  {
    swift_once();
  }
}

id SystemGroupSessionTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemGroupSessionTransport();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s12mediaremoted27SystemGroupSessionTransportC16createConnection8userInfoSo016MRExternalDeviceeG0CSgSDys11AnyHashableVypGSg_tF_0()
{
  swift_getObjectType();
  v0 = [objc_opt_self() server];
  v1 = [v0 externalDeviceServer];

  v2 = [v1 remoteControlService];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = [v2 systemGroupSessionService];
  if (!v3)
  {
    v4 = v2;
LABEL_8:

LABEL_9:
    if (qword_10052B5B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_10052B5C0);
    v2 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v35);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v2, v14, "[%s] No active system group session", v15, 0xCu);
      sub_100026A44(v16);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = (*((swift_isaMask & v3->isa) + 0x138))();
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  (*((swift_isaMask & *v5) + 0x80))();
  if (v7)
  {
    v8 = objc_allocWithZone(MRDSystemGroupSessionTransportConnection);
    v9 = v6;
    v10 = String._bridgeToObjectiveC()();

    v11 = [v8 initWithGroupSession:v9 participantIdentifier:v10];

    return v11;
  }

  if (qword_10052B5B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100015AFC(v20, qword_10052B5C0);
  v21 = v6;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v27 = sub_10002C9C8(v25, v26, &v35);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = [v21 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10002C9C8(v29, v31, &v35);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v21;
    *v34 = v6;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s]<%{public}s> Session does not have leader participant: %@", v24, 0x20u);
    sub_1001E4048(v34);

    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_13:

  return 0;
}

unint64_t sub_100234414()
{
  result = qword_100522FF0;
  if (!qword_100522FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100522FF0);
  }

  return result;
}

uint64_t sub_100234460()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t withTimeout<A>(duration:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  sub_1001BC5A8(&qword_100522FF8, &qword_100450DE8);
  inited = swift_initStackObject();
  v6[8] = inited;
  *(inited + 16) = 0;
  sub_1001BC5A8(&qword_100523000, &qword_100450DF0);
  v13 = swift_initStackObject();
  v6[9] = v13;
  *(v13 + 16) = 0;
  sub_1001BC5A8(&qword_100523008, &unk_100450DF8);
  v14 = swift_allocObject();
  v6[10] = v14;
  *(v14 + 16) = 0;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v15 = swift_allocObject();
  v11[11] = v15;
  *(v15 + 16) = 0;
  v16 = swift_task_alloc();
  v11[12] = v16;
  v16[2] = a6;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = v14;
  v16[7] = inited;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = v13;
  v17 = swift_task_alloc();
  v11[13] = v17;
  *(v17 + 16) = inited;
  *(v17 + 24) = v13;
  v18 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:)[1];
  v19 = swift_task_alloc();
  v11[14] = v19;
  *v19 = v11;
  v19[1] = sub_1002346F0;

  return withTaskCancellationHandler<A>(operation:onCancel:)(a1, &unk_100450E10, v16, sub_100235E7C, v17, a6);
}

uint64_t sub_1002346F0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v7 = *(*v0 + 64);
  v12 = *v0;

  swift_setDeallocating();
  v8 = *(v6 + 16);

  swift_setDeallocating();
  v9 = *(v7 + 16);

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1002348B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_1002348EC, 0, 0);
}

uint64_t sub_1002348EC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v12 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v6;
  *(v4 + 56) = v12;
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_100234A10;
  v9 = *(v0 + 88);
  v10 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000018, 0x800000010043CE10, sub_100236050, v4, v9);
}

uint64_t sub_100234A10()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100234B4C, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100234B4C()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_100234BB0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100009F34;

  return sub_1002348B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100234CA0(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a7;
  v57 = a2;
  v59 = a6;
  v60 = a5;
  v58 = a3;
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v61 = a10;
  v13 = type metadata accessor for CheckedContinuation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v46 - v20;
  static Task<>.checkCancellation()();
  v55 = a9;
  v52 = type metadata accessor for TaskPriority();
  v22 = *(v52 - 8);
  v51 = *(v22 + 56);
  v53 = v22 + 56;
  v51(v21, 1, 1, v52);
  v23 = v17;
  v24 = a4;
  v49 = *(v14 + 16);
  v50 = v14 + 16;
  v25 = v21;
  v26 = v23;
  v46 = v23;
  v48 = a1;
  v49();
  v54 = a8;
  v27 = *(v14 + 80);
  v28 = swift_allocObject();
  v29 = v60;
  v30 = v61;
  v31 = v28;
  v28[2] = 0;
  v28[3] = 0;
  v32 = v57;
  v33 = v58;
  v28[4] = v30;
  v28[5] = v32;
  v28[6] = v33;
  v28[7] = v24;
  v47 = v24;
  v28[8] = v29;
  v34 = v13;
  v35 = v29;
  v57 = *(v14 + 32);
  v36 = v26;
  v37 = v34;
  v57(v28 + ((v27 + 72) & ~v27), v36);

  v38 = sub_1001BF864(0, 0, v25, &unk_100450F20, v31);
  v39 = *(v59 + 16);
  *(v59 + 16) = v38;

  v51(v25, 1, 1, v52);
  v40 = v46;
  (v49)(v46, v48, v37);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v42 = v56;
  v41[4] = v61;
  v41[5] = v42;
  v41[6] = v54;
  v41[7] = v38;
  v41[8] = v47;
  v41[9] = v35;
  (v57)(v41 + ((v27 + 80) & ~v27), v40, v37);

  v43 = sub_1001CB290(0, 0, v25, &unk_100450F30, v41);
  v44 = *(v55 + 16);
  *(v55 + 16) = v43;
}

uint64_t sub_100235050(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v19;
  v8[2] = a6;
  v8[3] = a7;
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v10 = type metadata accessor for CheckedContinuation();
  v8[6] = v10;
  v11 = *(v10 - 8);
  v8[7] = v11;
  v8[8] = *(v11 + 64);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v12 = *(v19 - 8);
  v8[11] = v12;
  v8[12] = *(v12 + 64);
  v8[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[14] = v13;
  v17 = (a4 + *a4);
  v14 = a4[1];
  v15 = swift_task_alloc();
  v8[15] = v15;
  *v15 = v8;
  v15[1] = sub_10023525C;

  return v17(v13);
}

uint64_t sub_10023525C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1002355C4;
  }

  else
  {
    v3 = sub_100235370;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100235370()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v24 = v0[3];
  v25 = v0[2];
  v26 = v0[16];
  (*(v7 + 16))(v5, v0[4], v8);
  (*(v4 + 16))(v2, v1, v9);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (v6 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v7 + 32))(v12 + v10, v5, v8);
  (*(v4 + 32))(v12 + v11, v2, v9);
  v13 = swift_task_alloc();
  v13[2] = v24;
  v13[3] = sub_100236A44;
  v13[4] = v12;
  v14 = swift_task_alloc();
  *(v14 + 16) = sub_100236B74;
  *(v14 + 24) = v13;
  os_unfair_lock_lock(v25 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v25 + 4);
  if (v26)
  {
  }

  else
  {
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[5];

    (*(v17 + 8))(v16, v18);
    v20 = v0[13];
    v19 = v0[14];
    v22 = v0[9];
    v21 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1002355C4()
{
  v1 = v0[16];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v20 = v0[2];
  (*(v5 + 16))(v3, v0[4], v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  (*(v5 + 32))(v10 + v8, v3, v4);
  *(v10 + v9) = v1;
  v11 = swift_task_alloc();
  v11[2] = v7;
  v11[3] = sub_100236940;
  v11[4] = v10;
  v12 = swift_task_alloc();
  *(v12 + 16) = sub_100236B74;
  *(v12 + 24) = v11;
  swift_errorRetain();
  os_unfair_lock_lock(v20 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v20 + 4);
  v13 = v0[16];

  v14 = v0[13];
  v15 = v0[14];
  v17 = v0[9];
  v16 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002357B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100235898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v16;
  v8[8] = v17;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v9 = type metadata accessor for CheckedContinuation();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v8[13] = v11;
  v12 = *(v11 - 8);
  v8[14] = v12;
  v13 = *(v12 + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002359F4, 0, 0);
}

uint64_t sub_1002359F4()
{
  v1 = v0[15];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_100235AB4;
  v3 = v0[15];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1002362E4(v5, v4, 0, 0, 1);
}

uint64_t sub_100235AB4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100235E0C;
  }

  else
  {
    v6 = sub_100235C24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100235C24()
{
  v18 = v0[17];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  Task.cancel()();
  (*(v4 + 16))(v1, v5, v3);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  (*(v4 + 32))(v11 + v10, v1, v3);
  v12 = swift_task_alloc();
  v12[2] = v7;
  v12[3] = sub_10023679C;
  v12[4] = v11;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_10023688C;
  *(v13 + 24) = v12;
  os_unfair_lock_lock(v8 + 4);
  sub_100006EA4();
  if (v18)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    v15 = v0[15];
    v16 = v0[12];
    os_unfair_lock_unlock(v8 + 4);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100235E0C()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_100235E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);

    Task.cancel()();
  }

  if (*(v2 + 16))
  {
    v5 = *(v2 + 16);

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  return result;
}

unint64_t sub_100235F40()
{
  result = qword_100523010;
  if (!qword_100523010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523010);
  }

  return result;
}

uint64_t sub_100235FA4(uint64_t a1)
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

uint64_t sub_100236088()
{
  v2 = v0[4];
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v3 = *(type metadata accessor for CheckedContinuation() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100009F34;

  return sub_100235050(v9, v10, v11, v5, v6, v7, v8, v0 + v4);
}

uint64_t sub_1002361B0()
{
  v2 = v1;
  v3 = v0[4];
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0 + ((*(v4 + 80) + 80) & ~*(v4 + 80));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100009F30;

  return sub_100235898(v11, v12, v13, v5, v6, v7, v8, v9);
}

uint64_t sub_1002362E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1002363E4, 0, 0);
}

uint64_t sub_1002363E4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1002368F8(&qword_100523020, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1002368F8(&qword_100523028, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100236574;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100236574()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100236730, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100236730()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_10023679C()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_1002368A4();
  swift_allocError();
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(throwing:)();
}

unint64_t sub_1002368A4()
{
  result = qword_100523018;
  if (!qword_100523018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523018);
  }

  return result;
}

uint64_t sub_1002368F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100236940()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v4 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_errorRetain();
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100236A44()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = *(type metadata accessor for CheckedContinuation() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1002357B0(v0 + v3, v4, v1);
}

uint64_t sub_100236B2C()
{
  v1 = v0[2];
  if ((*(v1 + 16) & 1) == 0)
  {
    v3 = v0[3];
    v2 = v0[4];
    *(v1 + 16) = 1;
    return v3();
  }

  return result;
}

uint64_t sub_100236B8C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;
  static Date.now.getter();
  return v3;
}

uint64_t sub_100236FB8()
{
  v1 = *(v0 + 24);

  sub_100019550(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10023708C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1002370C4();
  return v3;
}

void *sub_1002370C4()
{
  v1 = type metadata accessor for RoutingEventInterval(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;
  static Date.now.getter();
  v0[2] = v4;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = &_swiftEmptyDictionarySingleton;
  static Date.now.getter();
  v7(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_localPlayingWhenPresented) = 2;
  v8 = v0 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 8) = 1790;
  return v0;
}

uint64_t sub_100237204(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v28 - v6;
  (*(*a1 + 256))(v30, v5);
  v33[0] = v30[1];
  v33[1] = v30[2];
  v34 = v31;
  v32 = v30[0];
  sub_1001E6204(&v32);
  if (v34 == 10)
  {
    v8 = swift_projectBox();
    sub_10001D9AC(v8, v7, &qword_100523030, &unk_100450F40);
    v9 = *&v7[*(v3 + 48)];

    v10 = type metadata accessor for RoutingControl();
    (*(*(v10 - 8) + 8))(v7, v10);
    return sub_100238E4C(v33);
  }

  else
  {
    result = sub_100238E4C(v33);
    v12 = *(v1 + 24);
    if (v12)
    {
      swift_beginAccess();
      v13 = *(v1 + 32);
      if (v13 && (v16 = *(v13 + 16), v14 = v13 + 16, (v15 = v16) != 0))
      {
        v17 = (v14 + 16 * v15);
        v18 = *v17;
        v19 = *(*v17[1] + 168);
        swift_retain_n();

        v20 = v19(v29);
        v22 = v21;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28[1] = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20(v29, 0);
      }

      else
      {
        v23 = *(*v12 + 168);

        v24 = v23(v29);
        v26 = v25;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24(v29, 0);
      }
    }
  }

  return result;
}

uint64_t sub_100237544()
{
  v1 = *(**(v0 + 16) + 184);

  v1(v2);
}

void sub_1002375AC()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for RoutingMode.detailed(_:), v5);
  v10 = static RoutingMode.== infix(_:_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    static Date.now.getter();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    v12 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled;
    swift_beginAccess();
    sub_10003DBB8(v4, v0 + v12);
    swift_endAccess();
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v13 = v0;
    v14 = sub_10024C81C();
    v15 = [v14 localActivePlayerIsPlaying];

    *(v13 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_localPlayingWhenPresented) = v15;
  }
}

uint64_t sub_1002377BC(uint64_t a1)
{
  v75 = type metadata accessor for Date();
  v3 = *(v75 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v75);
  v69 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v66 - v11;
  __chkstk_darwin(v10);
  v13 = &v66 - v12;
  v14 = type metadata accessor for HostedRoutingSession(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v66 - v21;
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v25 = type metadata accessor for HostedRoutingItem(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v3;
  v74 = v1;
  v31 = v1 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType;
  if ((~*(v1 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 16) & 0x6FE) == 0)
  {
    v66 = v28;
    v67 = v27;
    v70 = v13;
    v68 = a1;
    result = sub_100032A00();
    v33 = result;
    v34 = *(result + 16);
    if (!v34)
    {
      goto LABEL_7;
    }

    v35 = 0;
    while (1)
    {
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_27;
      }

      v36 = sub_100238F04(v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v35, v22, type metadata accessor for HostedRoutingSession);
      if (sub_100031908(v36))
      {
        break;
      }

      ++v35;
      result = sub_10024889C(v22, type metadata accessor for HostedRoutingSession);
      if (v34 == v35)
      {
        goto LABEL_7;
      }
    }

    sub_100238EA0(v22, v24);
    v64 = sub_10003AC60();
    sub_10024889C(v24, type metadata accessor for HostedRoutingSession);
    if (*(v64 + 16))
    {
      sub_100238F04(v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v30, type metadata accessor for HostedRoutingItem);

      v65 = &v30[*(v67 + 64)];
      v37 = *v65;
      v38 = *(v65 + 1);
      v39 = *(v65 + 8);
      sub_10001DAE0(*v65, v38, v39);
      sub_10024889C(v30, type metadata accessor for HostedRoutingItem);
    }

    else
    {
LABEL_7:

      v37 = 0;
      v38 = 0;
      v39 = 1790;
    }

    v3 = v73;
    v13 = v70;
    v40 = *v31;
    v41 = *(v31 + 8);
    *v31 = v37;
    *(v31 + 8) = v38;
    v42 = *(v31 + 16);
    *(v31 + 16) = v39;
    sub_10003FE48(v40, v41, v42);
  }

  result = sub_1002647C8();
  v43 = result;
  v44 = 0;
  v45 = *(result + 16);
  while (1)
  {
    v46 = v44;
    if (v45 == v44)
    {
LABEL_13:

      v49 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable;
      v50 = v74;
      swift_beginAccess();
      sub_10001D9AC(v50 + v49, v13, &qword_1005228D8, &unk_100450060);
      v51 = v75;
      v70 = *(v3 + 48);
      v52 = (v70)(v13, 1, v75);
      sub_1000038A4(v13, &qword_1005228D8, &unk_100450060);
      if (v52 != 1 || v45 == v46)
      {
        v54 = v71;
        sub_10001D9AC(v50 + v49, v71, &qword_1005228D8, &unk_100450060);
        v55 = (v70)(v54, 1, v51);
        result = sub_1000038A4(v54, &qword_1005228D8, &unk_100450060);
        if (v55 == 1 || v45 != v46)
        {
          return result;
        }

        v56 = v50;
        v57 = v69;
        static Date.now.getter();
        v58 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
        swift_beginAccess();
        v59 = v73;
        v60 = v57;
        v61 = v75;
        (*(v73 + 40))(v56 + v58, v60, v75);
        swift_endAccess();
        v62 = v72;
        (*(v59 + 56))(v72, 1, 1, v61);
        swift_beginAccess();
        v63 = v56 + v49;
      }

      else
      {
        v62 = v72;
        static Date.now.getter();
        (*(v3 + 56))(v62, 0, 1, v51);
        swift_beginAccess();
        v63 = v50 + v49;
      }

      sub_10003DBB8(v62, v63);
      return swift_endAccess();
    }

    if (v44 >= *(v43 + 16))
    {
      break;
    }

    v47 = sub_100238F04(v43 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v44++, v19, type metadata accessor for HostedRoutingSession);
    v48 = sub_100031908(v47);
    result = sub_10024889C(v19, type metadata accessor for HostedRoutingSession);
    if ((v48 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100237E74(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100237F98(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v39[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39[-1] - v10;
  v12 = v2[3];
  if (a1)
  {
    if (v12)
    {
      v13 = sub_100028D40();
      (*(v5 + 16))(v11, v13, v4);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v39[0] = v17;
        *v16 = 136315138;
        v18 = (*(*v2 + 432))();
        v20 = sub_10002C9C8(v18, v19, v39);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%s] updateIsPresentingUI - interval already exists", v16, 0xCu);
        sub_100026A44(v17);
      }

      return (*(v5 + 8))(v11, v4);
    }

    else
    {
      v23 = type metadata accessor for RoutingEventInterval(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      v26 = swift_allocObject();
      v27 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
      *(v26 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;
      static Date.now.getter();
      v29 = v2[3];
      v2[3] = v26;
    }
  }

  else if (v12)
  {
    v2[3] = 0;

    swift_beginAccess();
    v22 = v2[4];
    v2[4] = 0;
  }

  else
  {
    v30 = sub_100028D40();
    (*(v5 + 16))(v9, v30, v4);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v33 = 136315138;
      v35 = (*(*v2 + 432))();
      v37 = sub_10002C9C8(v35, v36, v39);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%s] updateIsPresentingUI - missing event interval", v33, 0xCu);
      sub_100026A44(v34);
    }

    return (*(v5 + 8))(v9, v4);
  }
}