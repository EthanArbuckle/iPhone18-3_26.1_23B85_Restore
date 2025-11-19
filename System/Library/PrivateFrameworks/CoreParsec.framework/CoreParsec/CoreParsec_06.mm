unint64_t sub_10008C5AC()
{
  result = qword_100217810;
  if (!qword_100217810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100217810);
  }

  return result;
}

uint64_t sub_10008C5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3);
  v4 = *(a2 + 104);
  if (!v4)
  {
    v5 = sub_10008C6D4();
    v6 = *(a2 + 104);
    *(a2 + 104) = v5;
    *(a2 + 112) = v7;
    swift_unknownObjectRelease();
    v4 = *(a2 + 104);
  }

  v8 = *(a2 + 112);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v3);

  return v4;
}

void sub_10008C66C(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_10008C6D4()
{
  type metadata accessor for EngagedCompletionSQLCache(0);

  return sub_1000590BC();
}

uint64_t sub_10008C86C(uint64_t a1)
{
  v2 = sub_100046184(&unk_100214C70, &qword_10019B4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C8D8()
{
  sub_100050134(v2);
  if (v3)
  {
    v0 = *sub_100007534(v2, v3);

    sub_100007378(v2);
  }

  else
  {
    sub_10000B240(v2, &qword_100217B88, &unk_10019BE50);
    return Dictionary.init(dictionaryLiteral:)();
  }

  return v0;
}

void sub_10008C96C()
{
  sub_100005478();
  v2 = v1;
  v3 = type metadata accessor for Trialpb_TrialExperiment();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000407C();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = v27 - v14;
  __chkstk_darwin(v13);
  sub_100096040();
  v16 = 0;
  v28 = v2;
  v18 = *(v2 + 56);
  v17 = v2 + 56;
  v19 = *(v17 - 24);
  sub_100004154();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v27[1] = v6 + 32;
  v27[2] = v6 + 16;
  v27[0] = v6 + 8;
  if ((v21 & v20) != 0)
  {
    do
    {
      v25 = v16;
LABEL_7:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v6 + 16))(v0, *(v28 + 48) + *(v6 + 72) * (v26 | (v25 << 6)), v3);
      (*(v6 + 32))(v11, v0, v3);
      sub_100008380();
      sub_100093548();
      (*(v6 + 8))(v15, v3);
    }

    while (v22);
  }

  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      sub_100005460();
      return;
    }

    v22 = *(v17 + 8 * v25);
    ++v16;
    if (v22)
    {
      v16 = v25;
      goto LABEL_7;
    }
  }

  __break(1u);
}

Swift::Int Endianness.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void sub_10008CB88()
{
  sub_100006A3C();
  v33 = v2;
  v34 = v0;
  v30 = v3;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v32 = v9;
  v10 = type metadata accessor for URL();
  v11 = sub_100003650(v10);
  v35 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000407C();
  sub_10000C9A4();
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v19 = v8[2];
  v18 = v8[3];
  sub_100017D30(v19, v18, v6, &v27 - v16);
  if (!v1)
  {
    v27 = v18;
    v28 = v19;
    v29 = v8;
    v20 = v32;
    type metadata accessor for ParsecURLRequestBuilder();
    (*(v35 + 16))(v0, v17, v10);
    v21 = sub_100018084(v0);

    sub_100018560();

    sub_10008CE88();
    sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
    Dictionary.init(dictionaryLiteral:)();
    sub_1000960D4();
    sub_1000185A8();

    sub_1000192B0();
    v22 = v29;
    sub_100019AEC(v21, v29[6], v29[7]);
    sub_10001A134(v21, v22[4], v22[5]);
    v23 = v22[8];
    v24 = v22[9];
    v25 = v22[10];
    sub_100096098();
    sub_10001A184(v21, v28, v27);
    sub_10008D514();
    v26 = UserAgent.fullString.getter();
    sub_10008D584(v21, v26);

    sub_10001A220(v20);
    URLRequest.cachePolicy.setter();

    (*(v35 + 8))(v17, v10);
  }

  sub_100007FD4();
}

uint64_t sub_10008CE88()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    sub_100084494();
    sub_100007534(v7, v7[3]);
    dispatch thunk of NetworkAuthTokenProviding.encryptedToken.getter();
    v3 = sub_10000DE18();
    sub_100019B38(v3, v4);

    swift_unknownObjectRelease();
    return sub_100007378(v7);
  }

  else
  {
    sub_100095CCC();
    sub_100004248();
    *v6 = 0;
    return swift_willThrow();
  }
}

void sub_10008CF5C()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for String.Encoding();
  v11 = sub_100005490(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100003664();
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (!v1)
  {
    goto LABEL_19;
  }

  v15 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v15 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_19:

    goto LABEL_49;
  }

  v71 = v3;
  v72 = v1;
  sub_10000527C();

  if ((StringProtocol.contains<A>(_:)() & 1) == 0 || (v71 = v3, v72 = v1, (StringProtocol.contains<A>(_:)() & 1) == 0))
  {
    if (v5)
    {
      v71 = v3;
      v72 = v1;

      v16._countAndFlagsBits = 45;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17._countAndFlagsBits = v7;
      v17._object = v5;
      String.append(_:)(v17);
    }
  }

  v18 = v14[2];
  v19 = v14 + 5;
  if (v18)
  {
    while (1)
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      v71 = v21;
      v72 = v20;

      if (StringProtocol.contains<A>(_:)())
      {
        break;
      }

      v19 += 2;
      if (!--v18)
      {
        goto LABEL_15;
      }
    }

    v27 = 0;
    v28 = v14[2];
    v29 = v14 + 5;
    v30 = _swiftEmptyArrayStorage;
LABEL_21:
    v31 = &v29[2 * v27];
    while (v28 != v27)
    {
      if (v27 >= v14[2])
      {
        __break(1u);
        sub_100004228();
        v60 = type metadata accessor for Logger();
        sub_10000964C(v60, qword_100232A98);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          *swift_slowAlloc() = 0;
          sub_10000554C(&_mh_execute_header, v63, v64, "Error encoding preferred languages");
          sub_1000036D4();
        }

        goto LABEL_58;
      }

      v32 = *(v31 - 1);
      v33 = *v31;
      if (v32 != v21 || v33 != v20)
      {
        v35 = *(v31 - 1);
        v36 = *v31;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          v71 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = v30[2];
            sub_1000EC984();
            v30 = v71;
          }

          v29 = v14 + 5;
          v39 = v30[2];
          v38 = v30[3];
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            sub_1000066A8(v38);
            v43 = v42;
            v70 = v44;
            sub_1000EC984();
            v40 = v43;
            v39 = v70;
            v29 = v14 + 5;
            v30 = v71;
          }

          ++v27;
          v30[2] = v40;
          v41 = &v30[2 * v39];
          v41[4] = v32;
          v41[5] = v33;
          goto LABEL_21;
        }
      }

      v31 += 2;
      ++v27;
    }

    v45 = v30[2];
    if (!swift_isUniquelyReferenced_nonNull_native() || v45 >= v30[3] >> 1)
    {
      sub_10001B77C();
      v30 = v46;
    }

    v47 = sub_100096080();
    sub_100095110(v47, v48, v49, v21, v20);
    v14 = v30;
  }

  else
  {
LABEL_15:
    v22 = v14[2];

    if (!swift_isUniquelyReferenced_nonNull_native() || v22 >= v14[3] >> 1)
    {
      sub_10001B77C();
      v14 = v23;
    }

    v24 = sub_100096080();
    sub_100095110(v24, v25, v26, v3, v1);
  }

  if (v14[2] < 4uLL)
  {
    goto LABEL_48;
  }

  v50 = sub_1000F0800(0, 3, v14);
  v52 = v51;
  v54 = v53;
  v56 = v55;

  if ((v56 & 1) == 0)
  {
LABEL_41:
    sub_1000ED09C(v50, v52, v54, v56);
    v14 = v57;

    swift_unknownObjectRelease();
    goto LABEL_49;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v58 = swift_dynamicCastClass();
  if (!v58)
  {
    swift_unknownObjectRelease();
    v58 = _swiftEmptyArrayStorage;
  }

  v59 = v58[2];

  if (__OFSUB__(v56 >> 1, v54))
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v59 != (v56 >> 1) - v54)
  {
LABEL_61:
    swift_unknownObjectRelease_n();
    goto LABEL_41;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_48:

LABEL_49:
  if (v14[2])
  {
    v73 = sub_100046184(&unk_100219130, &qword_100199320);
    v71 = v14;
    static JSONSerializationUtil.data(withJSONObject:options:)(&v71, 0);
    sub_100007378(&v71);
    static String.Encoding.utf8.getter();
    sub_100008380();
    String.init(data:encoding:)();
    if (v65)
    {
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10011567C(v66, v67);
    }

    v68 = sub_100008380();
    sub_100014A40(v68, v69);
  }

  else
  {
  }

LABEL_58:
  sub_100005460();
}

uint64_t sub_10008D514()
{
  if (qword_100214168 != -1)
  {
    result = swift_once();
  }

  if (byte_100232C58 == 1)
  {
    v1 = v0[36];
    v2 = v0[37];
    return sub_100019B38(v0[8], v0[9]);
  }

  return result;
}

void sub_10008D584(uint64_t a1, uint64_t a2)
{
  if (a2 || (sub_100012628(), !v2))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v3, v4);
    }
  }
}

void sub_10008D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v26);
  v28 = *(v27 + 64);
  sub_100003760();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v32 = type metadata accessor for URL();
  v33 = sub_100003650(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_10000407C();
  sub_1000250FC();
  __chkstk_darwin(v38);
  sub_100096040();
  sub_100013354(v25, &selRef_replaySearchURL);
  if (v39)
  {
    URL.init(string:)();

    if (sub_100008D0C(v31, 1, v32) != 1)
    {
      v42 = *(v35 + 32);
      v43 = sub_100005994();
      v44(v43);
      (*(v35 + 16))(v21, v20, v32);
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      sub_100095A58(v25);
      URLRequest.allHTTPHeaderFields.setter();
      (*(v35 + 8))(v20, v32);
      goto LABEL_6;
    }

    sub_10000B240(v31, &qword_100218230, &unk_100199A00);
  }

  sub_100095D20();
  v40 = sub_100004248();
  sub_100095FA8(v40, v41);
LABEL_6:
  sub_100007FD4();
}

void sub_10008E4C4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = [objc_opt_self() defaultCenter];
    [v0 postNotificationName:@"com.apple.parsecd.performedSearch" object:0];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10008E564()
{
  v1 = v0[36];
  v2 = v0[37];
  return sub_100019B38(v0[72], v0[73]);
}

void sub_10008E598(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = sub_100005490(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  if (*(a2 + 16))
  {
    v13[3] = sub_100046184(&qword_100217B98, &unk_10019BE60);
    v13[0] = a2;

    static JSONSerializationUtil.data(withJSONObject:options:)(v13, 0);
    sub_10000CEBC();
    sub_100007378(v13);
    static String.Encoding.utf8.getter();
    sub_10000CC98();
    String.init(data:encoding:)();
    v8 = v7;
    v9 = sub_10000CC98();
    sub_100014A40(v9, v10);
    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v11, v12);
    }
  }
}

uint64_t sub_10008E6C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for PegasusContext(0) + 116));
  sub_100019B38(*(v2 + 752), *(v2 + 760));
}

void sub_10008E750()
{
  sub_100005478();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100046184(&qword_100217B90, &unk_10019E900);
  sub_100005490(v8);
  v10 = *(v9 + 64);
  sub_100003760();
  __chkstk_darwin(v11);
  sub_100023F20();
  v12 = type metadata accessor for Trialpb_TrialExperiment();
  v13 = sub_100003650(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100003664();
  sub_10000FEE8();
  if (![v5 sessionExperimentMetadataEnabled])
  {
    goto LABEL_10;
  }

  sub_1000CFA5C(v7);
  if (!v18)
  {
    goto LABEL_10;
  }

  if (!v3)
  {

    sub_1000051C0(v0, 1, 1, v12);
    goto LABEL_9;
  }

  sub_100066648(v3, v0);

  if (sub_100008D0C(v0, 1, v12) == 1)
  {
LABEL_9:
    sub_10000B240(v0, &qword_100217B90, &unk_10019E900);
    goto LABEL_10;
  }

  (*(v15 + 32))(v1, v0, v12);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BF7C();
  Trialpb_TrialExperiment.treatmentID.getter();
  v19 = sub_10000DE18();
  sub_10011567C(v19, v20);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BF7C();
  Trialpb_TrialExperiment.experimentID.getter();
  v21 = sub_10000DE18();
  sub_10011567C(v21, v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BF7C();
  Trialpb_TrialExperiment.experimentNamespace.getter();
  v23 = sub_10000DE18();
  sub_10011567C(v23, v24);

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100019B38(v25, v26);

  sub_100013354(v7, &selRef_treatmentId);
  if (v27)
  {

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100019B38(v28, v29);
  }

  (*(v15 + 8))(v1, v12);
LABEL_10:
  sub_100005460();
}

uint64_t sub_10008EA00()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002044C(v5);
    sub_100007534(v5, v5[3]);
    sub_100008380();
    sub_100020624();
    v4 = v3;
    sub_100007378(v5);
    if (v4)
    {
      sub_100019B38(*(v1 + 896), *(v1 + 904));
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10008EAA8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000CB70();
    if (v1)
    {
      sub_1000960F4();
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10011567C(v2, v3);
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10008EB7C()
{
  sub_100005478();
  v1 = v0;

  v2._countAndFlagsBits = sub_10000F18C();
  v3.value = PegasusClientName.init(rawValue:)(v2).value;
  if (v3.value > parsecd_PegasusClientName_Lookup || ((1 << v3.value) & 0x16) == 0)
  {
    sub_100005460();
  }

  else
  {
    v5 = *(v1 + 216);
    v6 = sub_10008C8D8();
    v7 = 0;
    v8 = *(v6 + 64);
    v9 = *(v6 + 32);
    sub_100004154();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) == 0)
    {
      goto LABEL_7;
    }

    do
    {
      v15 = v7;
LABEL_11:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(v6 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v6 + 56) + v17);
      v22 = *v21;
      v23 = v21[1];

      sub_10011567C(v19, v20);
    }

    while (v12);
    while (1)
    {
LABEL_7:
      v15 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v14)
      {
        break;
      }

      v12 = *(v6 + 64 + 8 * v15);
      ++v7;
      if (v12)
      {
        v7 = v15;
        goto LABEL_11;
      }
    }

    sub_100005460();
  }
}

void sub_10008ECD8()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v54 = v7;
  v8 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v8);
  v10 = *(v9 + 64);
  sub_100003760();
  __chkstk_darwin(v11);
  v13 = v52 - v12;
  v14 = type metadata accessor for Date();
  v15 = sub_100003650(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000407C();
  sub_10000BA2C();
  v21 = __chkstk_darwin(v20);
  v23 = v52 - v22;
  v24 = __chkstk_darwin(v21);
  v53 = v52 - v25;
  __chkstk_darwin(v24);
  v26 = v4 == 0x697261666173 && v2 == 0xE600000000000000;
  if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((sub_100095FD0(), v4 == v28) ? (v29 = v2 == v27) : (v29 = 0), v29 || (sub_100019030(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {
    v30 = type metadata accessor for PegasusContext(0);
    v31 = (v6 + *(v30 + 80));
    v32 = v31[1];
    if (v32)
    {
      v52[0] = v0;
      v52[1] = v23;
      v33 = *v31;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v6;
      v37 = v36;
      v55 = v33;
      v56 = v32;

      String.init<A>(_:)();
      sub_1000385B8();
      sub_10011567C(v34, v37);
      v6 = v35;

      v0 = v52[0];
    }

    static Date.now.getter();
    v38 = v53;
    static Date.- infix(_:_:)();
    static Date.- infix(_:_:)();
    sub_10002DF94(v6 + *(v30 + 60), v13);
    if (sub_100008D0C(v13, 1, v14) == 1)
    {
      v39 = *(v17 + 8);
      v40 = sub_100096024();
      v39(v40);
      (v39)(v38, v14);
      v41 = sub_100005854();
      v39(v41);
      sub_10000B240(v13, &qword_100217050, &qword_100199180);
    }

    else
    {
      (*(v17 + 32))(v0, v13, v14);
      sub_10000CC98();
      if (static Date.< infix(_:_:)() & 1) != 0 || (sub_10000BE44(), (static Date.< infix(_:_:)()) || (sub_10000F18C(), (static Date.< infix(_:_:)()))
      {
        v42 = *(v17 + 8);
        v43 = sub_100003674();
        v42(v43);
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10011567C(v44, v45);

        v46 = sub_100096024();
        v42(v46);
        (v42)(v38, v14);
        v47 = sub_100005854();
        v42(v47);
      }

      else
      {
        v48 = *(v17 + 8);
        v49 = sub_100003674();
        v48(v49);
        v50 = sub_100096024();
        v48(v50);
        (v48)(v38, v14);
        v51 = sub_100005854();
        v48(v51);
      }
    }
  }

  sub_100005460();
}

void sub_10008F108()
{
  sub_100007FB8();
  if (v1 || (sub_100012628(), !v2))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      v3 = *(v0 + 336);
      v4 = *(v0 + 344);
      sub_100007C28();
      sub_100019B38(v5, v6);
    }
  }
}

void sub_10008F150(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    if (*(a2 + 56))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4)
    {
      v5 = *(a2 + 56);
      if ((sub_10000AA6C() & 1) == 0)
      {
        sub_100095FEC(*(v2 + 528), *(v2 + 536));
      }
    }
  }
}

void sub_10008F1AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (*(a2 + 16))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4)
    {
      v5 = *(a2 + 16);
      if ((sub_10000AA6C() & 1) == 0)
      {
        sub_100095FEC(*(v2 + 800), *(v2 + 808));
      }
    }
  }
}

void sub_10008F208(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 120);
  if (v3)
  {
    if (*(a2 + 112))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4)
    {
      v5 = *(a2 + 112);
      if ((sub_10000AA6C() & 1) == 0)
      {
        sub_100095FEC(*(v2 + 384), *(v2 + 392));
      }
    }
  }
}

uint64_t sub_10008F260(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    v4 = v2[36];
    v5 = v2[37];
    return sub_100019B38(v2[32], v2[33]);
  }

  return result;
}

void sub_10008F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 || a3 != 0xE000000000000000)
  {
    sub_100008380();
    if ((sub_1000089A8() & 1) == 0)
    {
      sub_100019B38(v4[86], v4[87]);
    }
  }

  if (a4 || (sub_100012628(), !v6))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      v7 = v4[88];
      v8 = v4[89];
      sub_10000E138();
      sub_100019B38(v9, v10);
    }
  }
}

void sub_10008F338()
{
  sub_100005478();
  v3 = v2;
  v4 = sub_100046184(&qword_1002192E0, &unk_10019BE40);
  sub_100005490(v4);
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  sub_100023F20();
  v8 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo();
  v9 = sub_100003650(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100003664();
  sub_10000FEE8();
  if (!swift_unknownObjectWeakLoadStrong() || (v14 = [objc_opt_self() standardUserDefaults], v15 = String._bridgeToObjectiveC()(), v16 = objc_msgSend(v14, "BOOLForKey:", v15), v14, v15, swift_unknownObjectRelease(), (v16 & 1) == 0))
  {
    sub_100092740(v3, v0);
    if (sub_100008D0C(v0, 1, v8) == 1)
    {
      sub_10000B240(v0, &qword_1002192E0, &unk_10019BE40);
    }

    else
    {
      (*(v11 + 32))(v1, v0, v8);
      Apple_Parsec_Search_LocalCompletionInfo.completions.getter();
      v17 = sub_1000041F8();
      sub_100046184(v17, v18);
      sub_10000F218();
      sub_100095D74(v19, &unk_100219130, &qword_100199320);
      sub_10001BE24();

      Apple_Parsec_Search_LocalCompletionInfo.origins.getter();
      sub_10001BE24();

      Apple_Parsec_Search_LocalCompletionInfo.scores.getter();
      sub_10001BE24();

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100019B38(v20, v21);

      sub_100019B38(v0[92], v0[93]);

      sub_100019B38(v0[90], v0[91]);

      (*(v11 + 8))(v1, v8);
    }
  }

  sub_100005460();
}

uint64_t sub_10008F61C()
{
  sub_10000AA8C();
  result = type metadata accessor for PegasusContext(0);
  v2 = (v0 + *(result + 88));
  v3 = v2[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v2;
    switch(v3 >> 62)
    {
      case 1uLL:
        v5 = v4;
        v6 = v4 >> 32;
        goto LABEL_8;
      case 2uLL:
        v5 = *(v4 + 16);
        v6 = *(v4 + 24);
LABEL_8:
        if (v5 == v6)
        {
          return result;
        }

        v7 = sub_100005854();
        sub_100062FBC(v7, v8);
LABEL_10:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000CEBC();
        Data.base64EncodedString(options:)(0);
        v9 = sub_10000CC98();
        sub_10011567C(v9, v10);

LABEL_11:
        v11 = sub_100005854();

        result = sub_100014A2C(v11, v12);
        break;
      case 3uLL:
        goto LABEL_11;
      default:
        if ((v3 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_10008F730()
{
  sub_10000AA8C();
  result = type metadata accessor for PegasusContext(0);
  v2 = (v0 + *(result + 108));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v6, v7);
    }
  }

  return result;
}

uint64_t sub_10008F7C8()
{
  result = sub_100014C44();
  v3 = (v1 + *(result + 108));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return sub_100019B38(*(v0 + 272), *(v0 + 280));
    }
  }

  return result;
}

uint64_t sub_10008F824()
{
  result = sub_100014C44();
  v3 = (v1 + *(result + 68));
  v4 = v3[1];
  if (v4)
  {
    if (*v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 == 0xE000000000000000;
    }

    if (!v5)
    {
      sub_10000F18C();
      result = sub_1000089A8();
      if ((result & 1) == 0)
      {
        return sub_1000126B0(*(v0 + 128), *(v0 + 136));
      }
    }
  }

  return result;
}

uint64_t sub_10008F888()
{
  result = sub_100014C44();
  v3 = (v1 + *(result + 72));
  v4 = v3[1];
  if (v4)
  {
    if (*v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 == 0xE000000000000000;
    }

    if (!v5)
    {
      sub_10000F18C();
      result = sub_1000089A8();
      if ((result & 1) == 0)
      {
        return sub_1000126B0(*(v0 + 32), *(v0 + 40));
      }
    }
  }

  return result;
}

uint64_t sub_10008F8EC()
{
  result = sub_100014C44();
  if (*(v1 + *(result + 140)) != 6)
  {
    v3 = *(v0 + 768);
    v4 = *(v0 + 776);
    dispatch thunk of CustomStringConvertible.description.getter();
    v5 = sub_100005978();
    sub_100019B38(v5, v6);
  }

  return result;
}

uint64_t sub_10008F96C()
{
  v1 = v0[98];
  v2 = v0[99];
  return sub_100019B38(v0[4], v0[5]);
}

uint64_t sub_10008F9A0()
{
  result = sub_100014C44();
  v3 = *(v1 + *(result + 124));
  v4 = *(v1 + *(result + 128));
  if (v4 != 2)
  {
    v3 |= v4;
  }

  if (v3)
  {
    v5 = v0[62];
    v6 = v0[63];
    return sub_100019B38(v0[60], v0[61]);
  }

  return result;
}

void sub_10008F9F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    if (*(a2 + 32))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4)
    {
      v5 = *(a2 + 32);
      if ((sub_10000AA6C() & 1) == 0)
      {
        sub_100095FEC(*(v2 + 176), *(v2 + 184));
      }
    }
  }
}

void sub_10008FA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    v3 = !*(a2 + 96) && v2 == 0xE000000000000000;
    if (!v3 && (sub_100006A18() & 1) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v4, v5);
    }
  }
}

uint64_t sub_10008FAD8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.description.getter();
  v0 = sub_100005978();
  sub_10011567C(v0, v1);
}

uint64_t sub_10008FB4C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000CEBC();
  dispatch thunk of CustomStringConvertible.description.getter();
  v0 = sub_10000CC98();
  sub_10011567C(v0, v1);
}

void sub_10008FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  sub_10000AA8C();
  v14 = v4;
  v5 = sub_100095BA4(v14);
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for PegasusContext(0);
    v8 = (v3 + *(v7 + 104));
    v9 = v8[1];
    if (v9)
    {
      v15[0] = *v8;
      v15[1] = v9;
      __chkstk_darwin(v7);
      v13[2] = v15;
      v10 = sub_100093434(sub_10003377C, v13, v6);

      if (v10)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10011567C(v11, v12);
      }

      return;
    }
  }
}

void sub_10008FD14(float a1)
{
  if (a1 > 0.0)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    Float.description.getter();
    sub_1000385B8();
    sub_10011567C(v2, v4);
  }
}

void sub_10008FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3 == 0x6867696C746F7073 && a4 == 0xE900000000000074;
    if (v6 || (sub_100019030(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v7 = type metadata accessor for PegasusContext(0);
      v8 = (a2 + *(v7 + 132));
      v9 = v8[1];
      if (v9)
      {
        if (*v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 == 0xE000000000000000;
        }

        if (!v10)
        {
          v11 = v7;
          sub_100008380();
          if ((sub_1000089A8() & 1) == 0)
          {
            sub_100019B38(v4[12], v4[13]);
            v12 = *(a2 + *(v11 + 136));
            if (v12 != 2 && (v12 & 1) != 0)
            {
              v13 = v4[36];
              v14 = v4[37];
              sub_100019B38(v4[14], v4[15]);
            }
          }
        }
      }
    }
  }
}

id sub_10008FE88(int a1, id a2)
{
  result = [a2 exp];
  if (result)
  {
    v4 = *(v2 + 880);
    v5 = *(v2 + 888);
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_10000CC98();
    sub_1000126B0(v6, v7);
  }

  return result;
}

uint64_t sub_10008FF18(uint64_t a1, void *a2)
{
  result = sub_1000A4718(a2);
  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E138();
    sub_10011567C(v4, v5);
  }

  return result;
}

void sub_100090884()
{
  sub_100006A3C();
  v4 = v0;
  v68 = v5;
  v71 = v6;
  v8 = v7;
  v72 = v9;
  v70 = v10;
  v11 = type metadata accessor for PegasusContext(0);
  v12 = sub_1000036B8(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  v67 = (v16 - v15);
  sub_1000058D8();
  v17 = type metadata accessor for URL();
  v18 = sub_100003650(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000407C();
  sub_1000250FC();
  __chkstk_darwin(v23);
  sub_10000C9A4();
  __chkstk_darwin(v24);
  sub_100096040();
  v69 = v8;
  v25 = [v8 searchURL];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v20 + 32);
    sub_1000960E8();
    v28();
    sub_10008E4C4();
    type metadata accessor for ParsecURLRequestBuilder();
    (*(v20 + 16))(v3, v2, v17);
    v29 = sub_100018084(v3);
    if (v1)
    {
      v30 = *(v20 + 8);
      v31 = sub_100023F30();
      v32(v31);
    }

    else
    {
      v35 = v29;
      v66 = v20;
      v36 = v0[18];
      v37 = v4[19];
      v38 = [v72 queryString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100115440(v36, v37);

      v39 = sub_1000F39B4(v72);
      sub_1000184C0(v39);

      sub_1000192B0();
      sub_10008CE88();
      sub_100013354(v69, &selRef_clientName);
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      Dictionary.init(dictionaryLiteral:)();
      sub_100003674();
      sub_1000185A8();

      v40 = v68;
      sub_10001A184(v35, *(v68 + *(v11 + 76)), *(v68 + *(v11 + 76) + 8));
      sub_100019AEC(v35, *v40, v40[1]);
      sub_10001A134(v35, v40[9], v40[10]);
      sub_100017250(v68, v67);
      sub_100013354(v72, &selRef_preferredLanguage);
      v41 = v67[11];
      v42 = v67[16];
      v43 = v67[17];
      sub_10008CF5C();

      sub_1000174A8(v67);
      sub_1000CFAE4(v72);
      sub_100005578();
      sub_10000EBA4();
      sub_10008F108();

      v44 = sub_10001AC1C();
      sub_10008F150(v44, v45);
      sub_10001AC1C();
      sub_10008F61C();
      sub_10001AC1C();
      sub_10008F824();
      sub_10001AC1C();
      sub_10008F888();
      sub_10001AC1C();
      sub_10008F8EC();
      sub_10001AC1C();
      sub_10008F9A0();
      v46 = sub_10001AC1C();
      sub_10008F9F4(v46, v47);
      v48 = sub_10001AC1C();
      sub_10008FA4C(v48, v49);
      v50 = type metadata accessor for SessionTokens(0);
      v51 = *(v71 + *(v50 + 24));
      sub_10008E750();
      sub_10008EAA8();
      v52 = [v72 appBundleId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100019B38(v4[46], v4[47]);

      sub_100013354(v72, &selRef_domain);
      sub_100005578();
      sub_10000EBA4();
      sub_100090F40();

      v53 = [v72 queryContext];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      sub_100090F88(v35, v54, v56);

      sub_100090FF4(v35, [v72 lookupSelectionType]);
      sub_100013354(v69, &selRef_clientName);
      sub_100005578();
      sub_10000EBA4();
      sub_10008EA00();

      v57 = *(v50 + 20);
      sub_10008FAD8();
      sub_10008FB4C();
      sub_100013354(v69, &selRef_userAgent);
      sub_100005578();
      v58 = sub_10000EBA4();
      sub_10008D584(v58, v59);

      v60 = sub_10001AC1C();
      sub_10008FBE0(v60, v61, v69);
      [v72 scale];
      *&v62 = v62;
      sub_10008FD14(*&v62);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100013354(v69, &selRef_clientName);
        sub_100005578();
        sub_10000EBA4();
        sub_10008EB7C();

        swift_unknownObjectRelease();
      }

      sub_10008D514();
      sub_10001A220(v70);
      [v69 timeoutIntervalForRequest];
      URLRequest.timeoutInterval.setter();
      [v69 assumesHTTP3Capable];
      URLRequest.assumesHTTP3Capable.setter();

      v63 = *(v66 + 8);
      v64 = sub_100023F30();
      v65(v64);
    }
  }

  else
  {
    sub_100095CCC();
    v33 = sub_100004248();
    sub_100095FA8(v33, v34);
  }

  sub_100007FD4();
}

void sub_100090F40()
{
  sub_100007FB8();
  if (v1 || (sub_100012628(), !v2))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      v3 = *(v0 + 352);
      v4 = *(v0 + 360);
      sub_100007C28();
      sub_100019B38(v5, v6);
    }
  }
}

uint64_t sub_100090F88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_100092384(a2, a3);
  if (v5)
  {
    sub_1000126B0(*(v3 + 400), *(v3 + 408));
  }

  return result;
}

uint64_t sub_100090FF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 416);
  v4 = *(v2 + 424);
  sub_1000924BC(a2);
  v5 = sub_100005978();
  sub_100019B38(v5, v6);
}

void sub_10009104C()
{
  sub_100006A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for URL();
  v13 = sub_100005490(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100003664();
  sub_100023F20();
  type metadata accessor for ParsecURLRequestBuilder();
  v16 = v7;
  v17 = [v7 cardURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_100018084(v0);
  if (!v1)
  {
    v19 = v18;
    v20 = sub_1000F39B4(v16);
    sub_1000184C0(v20);

    sub_1000192B0();
    sub_10008CE88();
    v21 = type metadata accessor for PegasusContext(0);
    sub_10001A184(v19, *(v9 + *(v21 + 76)), *(v9 + *(v21 + 76) + 8));
    sub_100019AEC(v19, *v9, v9[1]);
    sub_10001A134(v19, v9[9], v9[10]);
    v22 = v9[11];
    v23 = v9[16];
    v24 = v9[17];
    sub_100096098();
    v25 = sub_100005994();
    sub_10008F150(v25, v26);
    sub_100005994();
    sub_10008F61C();
    sub_100005994();
    sub_10008F824();
    sub_100005994();
    sub_10008F888();
    sub_100005994();
    sub_10008F8EC();
    v27 = sub_100005994();
    sub_10008F9F4(v27, v28);
    v29 = sub_100005994();
    sub_10008FA4C(v29, v30);
    v31 = type metadata accessor for SessionTokens(0);
    v32 = *(v3 + *(v31 + 24));
    sub_10008E750();
    sub_10008EAA8();
    v33 = *(v31 + 20);
    sub_10008FAD8();
    sub_10008FB4C();
    sub_100013354(v5, &selRef_userAgent);
    sub_100005578();
    v34 = sub_100009924();
    sub_10008D584(v34, v35);

    v36 = sub_100005994();
    sub_10008FBE0(v36, v37, v5);
    [v16 scale];
    *&v38 = v38;
    sub_10008FD14(*&v38);
    sub_10008D514();
    sub_100013354(v5, &selRef_clientName);
    sub_100005578();
    sub_100009924();
    sub_10008EA00();

    sub_10001A220(v11);
    [v5 timeoutIntervalForRequest];
    URLRequest.timeoutInterval.setter();
    [v5 assumesHTTP3Capable];
    URLRequest.assumesHTTP3Capable.setter();
  }

  sub_100007FD4();
}

void sub_100091304()
{
  sub_100006A3C();
  v108 = v3;
  v109 = v0;
  v106 = v5;
  v107 = v4;
  v7 = v6;
  v9 = v8;
  v105 = v10;
  v11 = type metadata accessor for URLRequest();
  v12 = sub_100003650(v11);
  v97 = v13;
  v98 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  v99 = v17 - v16;
  sub_1000058D8();
  v100 = type metadata accessor for Date();
  v18 = sub_100003650(v100);
  v102 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10000407C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v101 = &v92 - v26;
  sub_1000058D8();
  v104 = type metadata accessor for URL();
  v27 = sub_100003650(v104);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_10000407C();
  sub_1000250FC();
  __chkstk_darwin(v32);
  sub_10000C9A4();
  __chkstk_darwin(v33);
  v103 = &v92 - v34;
  v35 = v9;
  v36 = sub_100013354(v9, &selRef_clientName);
  if (v37)
  {
    v38 = v36 == 1818845549 && v37 == 0xE400000000000000;
    if (v38)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_100091AD4();
    goto LABEL_24;
  }

LABEL_7:
  v40 = [v9 flightURL];
  if (!v40)
  {
    sub_100095CCC();
    v49 = sub_100004248();
    sub_100095FA8(v49, v50);
    goto LABEL_24;
  }

  v41 = v40;
  v96 = v7;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = *(v29 + 32);
  v43 = v103;
  v44 = v104;
  v45 = sub_1000041F8();
  v46(v45);
  v47 = v109;
  sub_10008E4C4();
  type metadata accessor for ParsecURLRequestBuilder();
  (*(v29 + 16))(v2, v43, v44);
  v48 = sub_100018084(v2);
  if (v1)
  {
    (*(v29 + 8))(v43, v44);
    goto LABEL_24;
  }

  v51 = v48;
  v52 = v47[19];
  v93 = v47[18];
  v94 = v52;
  v95 = 0;
  v53 = v108;
  v54 = [v108 flightQuery];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = v51;
  sub_100115440(v93, v94);
  v56 = v53;
  v57 = v109;

  v58 = [v56 date];
  v94 = v29;
  v59 = v43;
  if (!v58)
  {
LABEL_19:
    v69 = sub_1000F39B4(v56);
    sub_1000184C0(v69);

    sub_1000192B0();
    v70 = v55;
    v71 = v95;
    sub_10008CE88();
    if (v71)
    {
      (*(v94 + 8))(v59, v104);
    }

    else
    {
      sub_100013354(v35, &selRef_clientName);
      sub_10009610C();
      v95 = 0;
      v72 = v57;
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000041F8();
      sub_1000185A8();

      v73 = type metadata accessor for PegasusContext(0);
      v74 = v107;
      sub_10001A184(v70, *(v107 + *(v73 + 76)), *(v107 + *(v73 + 76) + 8));
      sub_100019AEC(v70, *v74, v74[1]);
      sub_10001A134(v70, v74[9], v74[10]);
      v75 = v74[11];
      v76 = v74[16];
      v77 = v74[17];
      sub_100096098();
      sub_1000CFAE4(v56);
      sub_100005578();
      sub_100095FC4();
      sub_10008F108();

      sub_100007FC8();
      sub_10008F61C();
      sub_100007FC8();
      sub_10008F824();
      sub_100007FC8();
      sub_10008F888();
      sub_100007FC8();
      sub_10008F8EC();
      sub_100013354(v35, &selRef_clientName);
      sub_100005578();
      sub_100095FC4();
      sub_10008EA00();

      v78 = type metadata accessor for SessionTokens(0);
      v79 = *(v78 + 20);
      v80 = v96;
      sub_10008FAD8();
      sub_10008FB4C();
      sub_100013354(v35, &selRef_userAgent);
      sub_100005578();
      v81 = sub_100095FC4();
      sub_10008D584(v81, v82);

      v83 = sub_100007FC8();
      sub_10008FBE0(v83, v84, v35);
      [v56 scale];
      *&v85 = v85;
      sub_10008FD14(*&v85);
      sub_10008EAA8();
      v86 = *(v80 + *(v78 + 24));
      sub_10008E750();
      sub_10008D514();
      v87 = v72[108];
      v88 = v72[109];
      sub_10011567C(v72[106], v72[107]);
      v89 = [v56 appBundleId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000CEBC();

      sub_100019B38(v72[46], v72[47]);

      v90 = v99;
      v91 = v95;
      sub_10001A220(v99);
      if (!v91)
      {
        [v35 timeoutIntervalForRequest];
        URLRequest.timeoutInterval.setter();
        [v35 assumesHTTP3Capable];
        URLRequest.assumesHTTP3Capable.setter();

        (*(v94 + 8))(v103, v104);
        (*(v97 + 32))(v105, v90, v98);
        goto LABEL_24;
      }

      (*(v94 + 8))(v103, v104);
    }

LABEL_24:
    sub_100007FD4();
    return;
  }

  v60 = v58;
  v61 = v55;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v62 = v100;
  (*(v102 + 32))(v101, v24, v100);
  v63 = v57[68];
  v64 = v57[69];
  Date.timeIntervalSince1970.getter();
  sub_10000ADEC();
  if (!(v66 ^ v67 | v38))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v65 <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  if (v65 < 9.22337204e18)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v64;
    v55 = v61;
    sub_100115440(v63, v68);

    (*(v102 + 8))(v101, v62);
    v57 = v109;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
}

void sub_100091AD4()
{
  sub_100006A3C();
  v77 = v3;
  v78 = v1;
  v4 = v0;
  v71 = v5;
  v72 = v6;
  v8 = v7;
  v73 = v9;
  v10 = type metadata accessor for Date();
  v11 = sub_100003650(v10);
  v74 = v12;
  v75 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000407C();
  sub_10000BA2C();
  __chkstk_darwin(v15);
  v76 = &v67 - v16;
  sub_1000058D8();
  v17 = type metadata accessor for URL();
  v18 = sub_100003650(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000407C();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  sub_10000C9A4();
  __chkstk_darwin(v27);
  v29 = &v67 - v28;
  v30 = [v8 flightURL];
  if (!v30)
  {
    sub_100095CCC();
    v34 = sub_100004248();
    sub_100095FA8(v34, v35);
    goto LABEL_14;
  }

  v31 = v30;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v20 + 32))(v29, v0, v17);
  sub_10008E4C4();
  type metadata accessor for ParsecURLRequestBuilder();
  (*(v20 + 16))(v25, v29, v17);
  v32 = v78;
  v33 = sub_100018084(v25);
  if (v32)
  {
    (*(v20 + 8))(v29, v17);
LABEL_14:
    sub_100007FD4();
    return;
  }

  v36 = v33;
  v67 = v29;
  v68 = v20;
  v38 = v0[18];
  v37 = v4[19];
  v39 = v4;
  v69 = v17;
  v70 = v37;
  v78 = 0;
  v40 = v77;
  v41 = [v77 flightQuery];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100115440(v38, v70);

  v42 = v78;
  v43 = [v40 date];
  v44 = v36;
  if (!v43)
  {
LABEL_11:
    sub_1000192B0();
    sub_10008CE88();
    if (v42)
    {
      (*(v68 + 8))(v67, v69);
    }

    else
    {
      sub_100013354(v8, &selRef_clientName);
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      Dictionary.init(dictionaryLiteral:)();
      sub_100023F30();
      sub_1000185A8();

      v56 = type metadata accessor for PegasusContext(0);
      v57 = v71;
      sub_10001A184(v44, *(v71 + *(v56 + 76)), *(v71 + *(v56 + 76) + 8));
      sub_100019AEC(v44, *v57, v57[1]);
      sub_10001A134(v44, v57[9], v57[10]);
      v58 = v57[11];
      v59 = v57[16];
      v60 = v57[17];
      sub_100096098();
      sub_10008FB4C();
      sub_100013354(v8, &selRef_userAgent);
      sub_100005578();
      v61 = sub_100009924();
      sub_10008D584(v61, v62);

      sub_10008D514();
      v63 = v39[108];
      v64 = v39[109];
      sub_10011567C(v39[106], v39[107]);
      v65 = [v77 appBundleId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000960F4();

      sub_100019B38(v39[46], v39[47]);

      sub_10001A220(v73);
      v66 = v69;
      [v8 timeoutIntervalForRequest];
      URLRequest.timeoutInterval.setter();
      [v8 assumesHTTP3Capable];
      URLRequest.assumesHTTP3Capable.setter();

      (*(v68 + 8))(v67, v66);
    }

    goto LABEL_14;
  }

  v45 = v43;
  v70 = v8;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v74;
  v46 = v75;
  (*(v74 + 32))(v76, v2, v75);
  v48 = v39[68];
  v49 = v39[69];
  Date.timeIntervalSince1970.getter();
  sub_10000ADEC();
  if (!(v52 ^ v53 | v51))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v50 <= -9.22337204e18)
  {
    goto LABEL_15;
  }

  if (v50 < 9.22337204e18)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v54 = sub_10001AC1C();
    sub_100115440(v54, v55);

    (*(v47 + 8))(v76, v46);
    v8 = v70;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

void sub_100092094()
{
  sub_100006A3C();
  v32 = v2;
  v4 = v3;
  v33 = v5;
  v6 = type metadata accessor for Requestor();
  v7 = sub_100003650(v6);
  v35 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100003664();
  v13 = v12 - v11;
  v14 = type metadata accessor for UserAgent();
  v15 = sub_100003650(v14);
  v34 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100003664();
  v21 = v20 - v19;
  v22 = type metadata accessor for URL();
  v23 = sub_100003650(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_100003664();
  sub_10000FEE8();
  type metadata accessor for ParsecURLRequestBuilder();
  (*(v25 + 16))(v1, v4, v22);
  v28 = sub_100018084(v1);
  if (!v0)
  {
    v29 = v28;
    v36 = v14;
    sub_10008CE88();
    (*(v35 + 104))(v13, enum case for Requestor.parsecd(_:), v6);
    UserAgent.init(_:requestor:)();
    v30 = UserAgent.fullString.getter();
    (*(v34 + 8))(v21, v36);
    sub_10008D584(v29, v30);

    if (v32)
    {
      sub_100092338();
    }

    sub_10008D514();
    sub_10001A220(v33);
    v31 = type metadata accessor for URLRequest();
    sub_1000051C0(v33, 0, 1, v31);
  }

  sub_100007FD4();
}

void sub_100092338()
{
  sub_100007FB8();
  if (v1 || (sub_100012628(), !v2))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      v3 = *(v0 + 608);
      v4 = *(v0 + 616);
      sub_100007C28();
      sub_10011567C(v5, v6);
    }
  }
}

uint64_t sub_100092384(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_10000AA8C();
    v3 = objc_opt_self();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 dominantLanguageForString:v4];

    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = v6 == 6581877 && v8 == 0xE300000000000000;
    if (v9 || (sub_10000F18C(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

LABEL_11:
      v10 = String._bridgeToObjectiveC()();
      v13.length = String.UTF16View.count.getter();
      v13.location = 0;
      v11 = CFStringTokenizerCopyBestStringLanguage(v10, v13);

      if (v11)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }
  }

  return sub_10000F18C();
}

uint64_t sub_1000924BC(uint64_t a1)
{
  v2 = 440;
  v3 = 432;
  if (a1 == 1)
  {
    v3 = 464;
    v2 = 472;
  }

  if (a1 == 2)
  {
    v3 = 448;
    v2 = 456;
  }

  v4 = *(v1 + v3);
  v5 = *(v1 + v2);

  return sub_1000041F8();
}

uint64_t sub_10009251C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16) + 1;
  while (--v6)
  {
    if (String.init(cString:)() == v5 && v7 == a2)
    {

LABEL_10:
      v26 = &unk_1001F8DF0;
      v27 = sub_100095C78();
      sub_100008C84(&v25, v28);
      v10 = PARFeatureFlagOverrideDisable;
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      v11 = v10;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        v13 = v29;
        v14 = v30;
        sub_100007534(v28, v29);
        v15 = (*(v14 + 24))(v13, v14);
        if (v16)
        {
          sub_10009522C(v15, v16);
        }

        v17 = v29;
        v18 = v30;
        sub_100007534(v28, v29);
        v19 = (*(v18 + 32))(v17, v18);
        if (!v20)
        {
          return sub_100007378(v28);
        }

LABEL_17:
        sub_1000936D4(&v25, v19, v20);
      }

      else
      {
        v21 = PARFeatureFlagOverrideEnable;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          v23 = v29;
          v24 = v30;
          sub_100007534(v28, v29);
          v19 = (*(v24 + 24))(v23, v24);
          if (v20)
          {
            goto LABEL_17;
          }
        }
      }

      return sub_100007378(v28);
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100092740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo();
  v4 = sub_100003650(v3);
  v127 = v5;
  v128 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v126 = v9 - v8;
  Apple_Parsec_Search_LocalCompletionInfo.init()();
  v144 = _swiftEmptySetSingleton;
  v143 = _swiftEmptyArrayStorage;
  p_ivar_base_size = &UploadStateFileStore.ivar_base_size;
  v136 = a1;
  if (![a1 engagedSuggestion])
  {
    goto LABEL_4;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v11 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    sub_100005854();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_4:
    v12 = [v136 *(p:v126 ivar:? base:?size + 420)];
    if (v12)
    {
      v13 = sub_100095B2C(v12);
      if (v13)
      {
        sub_1000BADC4(v13);
      }
    }

    v14 = sub_100095ABC(v136);
    if (v14)
    {
      sub_1000BADC4(v14);
    }

    v15 = sub_1000CFA68(v136);
    if (v15)
    {
      sub_1000BADC4(v15);
    }

    v16 = v143;
    v17 = sub_10000D57C(v143);
    if (v17)
    {
      v18 = v17;
      if (v17 >= 1)
      {
        v19 = &_swiftEmptyDictionarySingleton;
        v20 = 32;
        v137 = v16;
        while (1)
        {
          p_ivar_base_size = *(v16 + v20);
          v21 = sub_100013354(p_ivar_base_size, &selRef_suggestion);
          if (v22)
          {
            v23 = v21;
            v24 = v22;
            sub_10009311C(p_ivar_base_size);
            if (v26)
            {
              v27 = v25;
              v28 = v26;
              sub_100046184(&unk_100217040, &qword_1001989F0);
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_100197F20;
              [(uint32_t *)p_ivar_base_size score];
              v31 = v30;
              *(v29 + 56) = &type metadata for CGFloat;
              *(v29 + 64) = sub_100095DBC();
              *(v29 + 32) = v31;
              v32 = String.init(format:_:)();
              v140 = v33;

              sub_1000936D4(&v142, v23, v24);

              if (v19[2] && (v34 = sub_100005B74(v23, v24), (v35 & 1) != 0))
              {
                v36 = v34;

                v37 = *(v19[7] + 8 * v36);

                v38 = v19;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = *(v37 + 16);
                  sub_1000040F0();
                  sub_10006CCE4();
                  v37 = v44;
                }

                v40 = *(v37 + 16);
                v39 = *(v37 + 24);
                if (v40 >= v39 >> 1)
                {
                  sub_1000066A8(v39);
                  sub_10006CCE4();
                  v37 = v45;
                }

                *(v37 + 16) = v40 + 1;
                v41 = (v37 + 32 * v40);
                v41[4] = v27;
                v41[5] = v28;
                v41[6] = v32;
                v41[7] = v140;

                v19 = v38;
              }

              else
              {
                sub_100046184(&qword_1002161C0, &qword_10019A670);
                v42 = swift_allocObject();
                *(v42 + 16) = xmmword_100197F20;
                *(v42 + 32) = v27;
                *(v42 + 40) = v28;
                *(v42 + 48) = v32;
                *(v42 + 56) = v140;
                swift_isUniquelyReferenced_nonNull_native();
                v142 = v19;
                sub_100007FC8();
                sub_1000BDA84();

                v19 = v142;
              }

              v16 = v137;
              goto LABEL_27;
            }
          }

LABEL_27:
          v20 += 8;
          if (!--v18)
          {

            v46 = v144;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
LABEL_77:
      sub_100004228();
      goto LABEL_63;
    }

    v19 = &_swiftEmptyDictionarySingleton;
    v46 = _swiftEmptySetSingleton;
LABEL_30:
    if (!v46[2])
    {
      break;
    }

    v48 = v46 + 7;
    v47 = v46[7];
    v49 = *(v46 + 32);
    sub_100004154();
    v52 = v51 & v50;
    v54 = (v53 + 63) >> 6;

    v55 = v52;
    v56 = 0;
    v57 = _swiftEmptyArrayStorage;
    v141 = _swiftEmptyArrayStorage;
    v132 = v46;
    v133 = v19;
    v130 = v54;
    v131 = v46 + 7;
    if (!v52)
    {
      goto LABEL_32;
    }

    do
    {
LABEL_36:
      v138 = v55;
      v135 = v56;
      v58 = (v46[6] + ((v56 << 10) | (16 * __clz(__rbit64(v55)))));
      v60 = *v58;
      v59 = v58[1];
      v61 = v19;
      v62 = v19[2];

      if (!v62 || (v63 = sub_10000F18C(), v65 = sub_100005B74(v63, v64), (v66 & 1) == 0))
      {

        if (qword_1002140B8 != -1)
        {
          sub_100004228();
        }

        v115 = type metadata accessor for Logger();
        sub_10000964C(v115, qword_100232A98);

        v116 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v116, v105))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v142 = v118;
          *v117 = 136315138;
          v119 = sub_10000F18C();
          v122 = sub_100009684(v119, v120, v121);

          *(v117 + 4) = v122;
          _os_log_impl(&_mh_execute_header, v116, v105, "Can't add ECC suggestion to request, no suggestions for: %s", v117, 0xCu);
          sub_100007378(v118);
          sub_1000036D4();
          sub_1000036D4();
        }

        else
        {
        }

        v123 = sub_100096118();
        v124(v123);
        goto LABEL_72;
      }

      v67 = *(v61[7] + 8 * v65);

      v139 = v67;
      v68 = *(v67 + 16);
      v134 = v57;
      if (v68)
      {
        v69 = (v139 + 56);
        p_ivar_base_size = _swiftEmptyArrayStorage;
        v70 = _swiftEmptyArrayStorage;
        do
        {
          v71 = *(v69 - 3);
          v72 = *(v69 - 2);
          v74 = *(v69 - 1);
          v73 = *v69;
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = v70[2];
            sub_1000040F0();
            sub_10001B77C();
            v70 = v82;
          }

          v76 = v70[2];
          v75 = v70[3];
          if (v76 >= v75 >> 1)
          {
            sub_1000066A8(v75);
            sub_10001B77C();
            v70 = v83;
          }

          v70[2] = v76 + 1;
          v77 = &v70[2 * v76];
          v77[4] = v74;
          v77[5] = v73;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = *(p_ivar_base_size + 2);
            sub_1000040F0();
            sub_10001B77C();
            p_ivar_base_size = v85;
          }

          v79 = *(p_ivar_base_size + 2);
          v78 = *(p_ivar_base_size + 3);
          if (v79 >= v78 >> 1)
          {
            sub_1000066A8(v78);
            sub_10001B77C();
            p_ivar_base_size = v86;
          }

          *(p_ivar_base_size + 2) = v79 + 1;
          v80 = &p_ivar_base_size[4 * v79];
          *(v80 + 4) = v71;
          *(v80 + 5) = v72;
          v69 += 4;
          --v68;
        }

        while (v68);
      }

      else
      {
        p_ivar_base_size = _swiftEmptyArrayStorage;
        v70 = _swiftEmptyArrayStorage;
      }

      v142 = p_ivar_base_size;
      sub_100046184(&unk_100219130, &qword_100199320);
      sub_10000F218();
      sub_100095D74(qword_100214FD8, &unk_100219130, &qword_100199320);
      v87 = sub_10009612C();
      v89 = v88;

      v142 = v70;
      sub_10009612C();
      sub_1000960F4();

      v57 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = v134[2];
        sub_1000040F0();
        sub_10001B77C();
        v57 = v98;
      }

      v54 = v130;
      v91 = v57[2];
      v90 = v57[3];
      if (v91 >= v90 >> 1)
      {
        sub_1000066A8(v90);
        sub_10001B77C();
        v57 = v99;
      }

      v57[2] = v91 + 1;
      v92 = &v57[2 * v91];
      v92[4] = v87;
      v92[5] = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = v141[2];
        sub_1000040F0();
        sub_10001B77C();
        v141 = v101;
      }

      v48 = v131;
      v46 = v132;
      v94 = v141[2];
      v93 = v141[3];
      v95 = v138;
      if (v94 >= v93 >> 1)
      {
        sub_1000066A8(v93);
        sub_10001B77C();
        v95 = v138;
        v141 = v102;
      }

      v55 = (v95 - 1) & v95;
      v141[2] = v94 + 1;
      v96 = &v141[2 * v94];
      v96[4] = &v142;
      v96[5] = p_ivar_base_size;
      v19 = v133;
      v56 = v135;
    }

    while (v55);
LABEL_32:
    while (1)
    {
      v11 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v11 >= v54)
      {

        sub_100066404(v46);
        Apple_Parsec_Search_LocalCompletionInfo.completions.setter();
        Apple_Parsec_Search_LocalCompletionInfo.scores.setter();
        Apple_Parsec_Search_LocalCompletionInfo.origins.setter();

        v103 = *(v127 + 32);
        v104 = sub_1000041F8();
        v105 = v128;
        v106(v104);
        v107 = a2;
        v108 = 0;
        return sub_1000051C0(v107, v108, 1, v105);
      }

      v55 = v48[v11];
      ++v56;
      if (v55)
      {
        v56 = v11;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_75:
    sub_1000066A8(v11);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  if (qword_1002140B8 != -1)
  {
    goto LABEL_77;
  }

LABEL_63:
  v109 = type metadata accessor for Logger();
  sub_10000964C(v109, qword_100232A98);
  v110 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v110, v105))
  {
    *swift_slowAlloc() = 0;
    sub_10000554C(&_mh_execute_header, v111, v112, "No ECC suggestions to add to request");
    sub_1000036D4();
  }

  v113 = sub_100096118();
  v114(v113);
LABEL_72:

  v108 = 1;
  v107 = a2;
  return sub_1000051C0(v107, v108, 1, v105);
}

void sub_10009311C(void *a1)
{
  if ([a1 type] == 5)
  {
    sub_100013354(a1, &selRef_topicIdentifier);
    if (!v3)
    {
      if (qword_1002140B8 != -1)
      {
        sub_100004228();
      }

      v4 = type metadata accessor for Logger();
      sub_10000964C(v4, qword_100232A98);
      v1 = a1;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v7 = 136315650;
        v8 = sub_100013354(v1, &selRef_suggestion);
        if (!v9)
        {
LABEL_18:

          __break(1u);
          return;
        }

        v10 = sub_100009684(v8, v9, &v21);

        *(v7 + 4) = v10;
        *(v7 + 12) = 1024;
        v11 = [v1 type];

        *(v7 + 14) = v11;
        *(v7 + 18) = 2080;
        v12 = sub_100013354(v1, &selRef_topicIdentifier);
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v12 = 7104878;
          v14 = 0xE300000000000000;
        }

        v15 = sub_100009684(v12, v14, &v21);

        *(v7 + 20) = v15;
        _os_log_impl(&_mh_execute_header, v5, v6, "Can't extract ECC suggestion and source for %s, invalid type (%d) or topic (%s)", v7, 0x1Cu);
        swift_arrayDestroy();
        sub_1000036D4();
        sub_1000036D4();
      }

      else
      {
      }

      return;
    }
  }

  switch([a1 type])
  {
    case 5u:
      sub_100046184(&unk_100217040, &qword_1001989F0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100197F20;
      v17 = sub_100013354(a1, &selRef_topicIdentifier);
      if (!v18)
      {
        __break(1u);
        goto LABEL_18;
      }

      v19 = v17;
      v20 = v18;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_10000512C();
      *(v16 + 32) = v19;
      *(v16 + 40) = v20;
      String.init(format:_:)();
      break;
    default:
      return;
  }
}

BOOL sub_100093434(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1000934E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10019BC20;
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

void sub_100093548()
{
  sub_100005478();
  v4 = type metadata accessor for Trialpb_TrialExperiment();
  v5 = sub_100003650(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  sub_100096068();
  sub_10000AE70();
  sub_10000B89C(v8, v9);
  sub_100012EFC();
  sub_10000DBC8();
  while (1)
  {
    sub_1000076A8(v10);
    if (v11)
    {
      v15 = *v24;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_10000FF80();
      v17(v16);
      v18 = sub_100096008();
      sub_10009412C(v18, v19, v20);
      v21 = sub_10002DEFC();
      v22(v21);
      goto LABEL_7;
    }

    v12 = sub_10001ADA0();
    v3(v12);
    sub_10000AE70();
    sub_10000B89C(&qword_100217B68, v13);
    sub_1000960B0();
    v14 = sub_100096050();
    v1(v14);
    if (v0)
    {
      break;
    }

    v10 = v2 + 1;
  }

  (v1)(v25, v4);
  v23 = sub_10000FEF4();
  v3(v23);
LABEL_7:
  sub_100005460();
}

BOOL sub_1000936D4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1000943DC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_100093820(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Trialpb_TrialExperiment();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100046184(&qword_100217B70, &unk_10019BE30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1000934E4(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000B89C(&qword_100217B60, &type metadata accessor for Trialpb_TrialExperiment);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100093B78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100046184(&qword_100217B38, &qword_10019BE20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1000934E4(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
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

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100093DD4(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100046184(&qword_100217B58, &qword_10019BE28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1000934E4(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_10000B89C(&qword_100217B48, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10009412C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for Trialpb_TrialExperiment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100093820(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1000948AC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_10000B89C(&qword_100217B60, &type metadata accessor for Trialpb_TrialExperiment);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000B89C(&qword_100217B68, &type metadata accessor for Trialpb_TrialExperiment);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_10009469C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

Swift::Int sub_1000943DC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100093B78(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100094BC4(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100094544();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_100094544()
{
  v1 = v0;
  sub_100046184(&qword_100217B38, &qword_10019BE20);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void sub_10009469C()
{
  sub_100005478();
  v2 = v0;
  v4 = v3(0);
  sub_100003650(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003760();
  __chkstk_darwin(v9);
  sub_10000FEE8();
  v10 = sub_100005994();
  sub_100046184(v10, v11);
  v12 = *v0;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v27 = v2;
    v15 = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || v15 >= v12 + 56 + 8 * v16)
    {
      memmove(v15, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v6 + 72) * (v23 | (v18 << 6));
      (*(v6 + 16))(v1, *(v12 + 48) + v26, v4);
      (*(v6 + 32))(*(v14 + 48) + v26, v1, v4);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v2 = v27;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v14;
    sub_100005460();
  }
}

uint64_t sub_1000948AC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Trialpb_TrialExperiment();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100046184(&qword_100217B70, &unk_10019BE30);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10000B89C(&qword_100217B60, &type metadata accessor for Trialpb_TrialExperiment);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100094BC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100046184(&qword_100217B38, &qword_10019BE20);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
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

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

uint64_t sub_100094DF8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100046184(&qword_100217B58, &qword_10019BE28);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_10000B89C(&qword_100217B48, &type metadata accessor for UUID);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100095110(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_10001B82C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009522C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100094544();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_100095594(v9);
  *v2 = v19;
  return v16;
}

void sub_100095354()
{
  sub_100005478();
  v28 = v1;
  v2 = type metadata accessor for UUID();
  v3 = sub_100003650(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  v10 = v9 - v8;
  v27 = v0;
  v11 = *v0;
  v12 = *(*v0 + 40);
  sub_10000391C();
  sub_10000B89C(v13, v14);
  v15 = sub_100012EFC();
  v16 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v17 = v15 & v16;
    if (((*(v11 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
    {
      v21 = 1;
      v22 = v28;
      goto LABEL_9;
    }

    v18 = *(v5 + 72) * v17;
    (*(v5 + 16))(v10, *(v11 + 48) + v18, v2);
    sub_10000391C();
    sub_10000B89C(&qword_100217B50, v19);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v10, v2);
    if (v20)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v23 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v27;
  v29 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10009469C();
    v25 = v29;
  }

  v26 = *(v25 + 48) + v18;
  v22 = v28;
  (*(v5 + 32))(v28, v26, v2);
  sub_10009574C(v17);
  v21 = 0;
  *v27 = v29;
LABEL_9:
  sub_1000051C0(v22, v21, 1, v2);
  sub_100005460();
}

unint64_t sub_100095594(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10009574C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_10000B89C(&qword_100217B48, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_100095A58(void *a1)
{
  v1 = [a1 replayHeaderItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095ABC(void *a1)
{
  v1 = [a1 localContextualSuggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095B2C(void *a1)
{
  v2 = [a1 duplicateSuggestions];

  if (!v2)
  {
    return 0;
  }

  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095BA4(void *a1)
{
  v1 = [a1 skuUploadWhitelist];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095BFC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t sub_100095C78()
{
  result = qword_100217B40;
  if (!qword_100217B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217B40);
  }

  return result;
}

unint64_t sub_100095CCC()
{
  result = qword_100219210;
  if (!qword_100219210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219210);
  }

  return result;
}

unint64_t sub_100095D20()
{
  result = qword_100217B78;
  if (!qword_100217B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217B78);
  }

  return result;
}

uint64_t sub_100095D74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100095DBC()
{
  result = qword_100217B80;
  if (!qword_100217B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217B80);
  }

  return result;
}

uint64_t sub_100095E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PARNetworkRequestFactory.NetworkRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100095F54()
{
  result = qword_100217BA0;
  if (!qword_100217BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217BA0);
  }

  return result;
}

uint64_t sub_100095FA8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100095FEC(uint64_t a1, uint64_t a2)
{

  return sub_100019B38(a1, a2);
}

uint64_t sub_100096050()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_100096080()
{
  v2 = *(v0 - 152);
  v1 = *(v0 - 144);
  return 0;
}

void sub_100096098()
{

  sub_10008CF5C();
}

uint64_t sub_1000960B0()
{
  v2 = *(v0 - 96);

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_100096100()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_100096118()
{
  result = *(v0 - 256);
  v2 = *(*(v0 - 248) + 8);
  v3 = *(v0 - 240);
  return result;
}

uint64_t sub_10009612C()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10009614C(char a1)
{

  return PegasusClientName.rawValue.getter(a1);
}

uint64_t sub_10009616C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100214158 != -1)
  {
    swift_once();
  }

  AvroArray.init(schema:)();
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v11 = sub_1000669EC();

  sub_1000964D4(v11);
  if (v3)
  {
  }

  else
  {

    if (qword_100214150 != -1)
    {
      swift_once();
    }

    schema = *byte_100217BA8;
    sub_1000967A0(&schema, &v15);
    AvroRecord.init(schema:)(&v16, &schema);
    static AvroValue.string(_:)(a1, a2, v21);

    AvroRecord.set(_:forField:)(v21, 0x6553686372616573, 0xEF64496E6F697373);
    sub_100096480(v21);
    static AvroValue.array(_:)(v17, v18, v19, v20, v22);
    AvroRecord.set(_:forField:)(v22, 0xD000000000000011, 0x80000001001AF490);
    sub_100096480(v22);

    name = v16.schema.name;
    *a3 = v16.schema.type;
    *(a3 + 16) = name;
    v14 = *&v16.schema.fields._rawValue;
    *(a3 + 32) = v16.schema.namespace;
    *(a3 + 48) = v14;
  }

  return result;
}

uint64_t sub_1000963F4()
{
  ByteBuffer.writeBytes(_:)(&off_1001F5B98);
  ByteBuffer.writeBytes(_:)(&off_1001F5BC0);
  v1 = v0[1];
  v12[0] = *v0;
  v12[1] = v1;
  v2 = v0[3];
  v12[2] = v0[2];
  v12[3] = v2;
  static AvroValue.record(_:)(v12, v11);
  ByteBuffer.writeAvroValue(_:)(v11, v3, v4, v5, v6, v7, v8, v9);
  sub_100096480(v11);
  return 0;
}

uint64_t sub_1000964D4(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  do
  {
    if (v3 == v2)
    {
      break;
    }

    v4 = *(type metadata accessor for Trialpb_TrialExperiment() - 8);
    v5 = *(v4 + 80);
    v6 = *(v4 + 72);
    result = sub_100096A1C();
    ++v2;
  }

  while (!v1);
  return result;
}

double sub_100096594()
{
  sub_100046184(&qword_100217C30, &qword_10019BF58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100198F10;
  v1 = *AvroSchema.string.unsafeMutableAddressor();

  *(v0 + 32) = AvroRecordSchema.Field.init(name:type:optional:)(0x6553686372616573, 0xEF64496E6F697373, v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  if (qword_100214158 != -1)
  {
    swift_once();
  }

  v4 = static AvroSchema.array(schema:)();
  *(v0 + 56) = AvroRecordSchema.Field.init(name:type:optional:)(0xD000000000000011, 0x80000001001AF490, v4);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x800000010019BF20;
  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x80000001001AF4B0;
  AvroRecordSchema.init(name:namespace:fields:)(&v10, v7, v8, v0);
  *byte_100217BA8 = v10;
  return *&v10.namespace.value._countAndFlagsBits;
}

uint64_t sub_10009670C()
{
  if (qword_100214160 != -1)
  {
    swift_once();
  }

  v1[0] = *byte_100217BF8;
  v1[1] = *&byte_100217BF8[16];
  v1[2] = *&byte_100217BF8[32];
  v2 = *&byte_100217BF8[48];
  result = static AvroSchema.record(schema:)(v1);
  qword_100217BE0 = 0x7961727261;
  *algn_100217BE8 = 0xE500000000000000;
  qword_100217BF0 = result;
  return result;
}

uint64_t sub_100096850()
{
  sub_100046184(&qword_100217C30, &qword_10019BF58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10019A7F0;
  v1 = AvroSchema.string.unsafeMutableAddressor();
  v2 = *v1;

  *(v0 + 32) = AvroRecordSchema.Field.init(name:type:optional:)(0xD000000000000013, 0x80000001001AF4F0, v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  v5 = *v1;

  *(v0 + 56) = AvroRecordSchema.Field.init(name:type:optional:)(0x656D697265707865, 0xEC0000006449746ELL, v5);
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v1;

  *(v0 + 80) = AvroRecordSchema.Field.init(name:type:optional:)(0x6E656D7461657274, 0xEB00000000644974, v8);
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  v11 = AvroSchema.int.unsafeMutableAddressor();
  v12 = *v11;

  *(v0 + 104) = AvroRecordSchema.Field.init(name:type:optional:)(0x656D796F6C706564, 0xEC0000006449746ELL, v12);
  *(v0 + 112) = v13;
  *(v0 + 120) = v14;
  v15 = *v11;

  result = AvroRecordSchema.Field.init(name:type:optional:)(0xD000000000000014, 0x80000001001AF510, v15);
  *(v0 + 128) = result;
  *(v0 + 136) = v17;
  *(v0 + 144) = v18;
  *&xmmword_100217BF8 = 0x64726F636572;
  *(&xmmword_100217BF8 + 1) = 0xE600000000000000;
  strcpy(&qword_100217C08, "ExperimentInfo");
  unk_100217C17 = -18;
  xmmword_100217C18 = 0uLL;
  qword_100217C28 = v0;
  return result;
}

uint64_t sub_100096A1C()
{
  if (qword_100214160 != -1)
  {
    swift_once();
  }

  schema = *byte_100217BF8;
  sub_1000967A0(&schema, &v9);
  AvroRecord.init(schema:)(&v10, &schema);
  v1 = Trialpb_TrialExperiment.experimentNamespace.getter();
  static AvroValue.string(_:)(v1, v2, v11);

  AvroRecord.set(_:forField:)(v11, 0xD000000000000013, 0x80000001001AF4F0);
  if (v0)
  {
    v9 = v10;
    sub_1000967FC(&v9);
    v3 = v11;
    return sub_100096480(v3);
  }

  sub_100096480(v11);
  v4 = Trialpb_TrialExperiment.experimentID.getter();
  static AvroValue.string(_:)(v4, v5, v12);

  AvroRecord.set(_:forField:)(v12, 0x656D697265707865, 0xEC0000006449746ELL);
  sub_100096480(v12);
  v6 = Trialpb_TrialExperiment.treatmentID.getter();
  static AvroValue.string(_:)(v6, v7, v13);

  AvroRecord.set(_:forField:)(v13, 0x6E656D7461657274, 0xEB00000000644974);
  sub_100096480(v13);
  result = Trialpb_TrialExperiment.deploymentID.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  static AvroValue.int(_:)(v14, result);
  AvroRecord.set(_:forField:)(v14, 0x656D796F6C706564, 0xEC0000006449746ELL);
  sub_100096480(v14);
  result = Trialpb_TrialExperiment.compatibilityVersion.getter();
  if ((result & 0x80000000) == 0)
  {
    static AvroValue.int(_:)(v15, result);
    AvroRecord.set(_:forField:)(v15, 0xD000000000000014, 0x80000001001AF510);
    sub_100096480(v15);
    v17 = v10;
    static AvroValue.record(_:)(&v17.schema.type._countAndFlagsBits, v16);
    sub_1000967FC(&v17);
    AvroArray.append(_:)(v16);
    v3 = v16;
    return sub_100096480(v3);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100096D70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100096DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100096E10()
{
  v1 = objc_autoreleasePoolPush();
  v2 = v0[2];
  v0[2] = 0;

  objc_autoreleasePoolPop(v1);
  v3 = v0[2];

  sub_10000B218((v0 + 3));
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[7];
  swift_unknownObjectRelease();
  v6 = v0[9];
  swift_unknownObjectRelease();
  v7 = v0[11];
  swift_unknownObjectRelease();
  v8 = v0[13];
  swift_unknownObjectRelease();
  v9 = v0[15];
  swift_unknownObjectRelease();
  v10 = v0[17];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100096E94()
{
  sub_100096E10();

  return _swift_deallocClassInstance(v0, 152, 7);
}

void sub_100096EC8()
{
  v1 = v0;
  if (qword_1002140E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232B28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received search performed notification, requesting location if allowed", v5, 2u);
  }

  if (*(v1 + 40))
  {
    v6 = *(v1 + 40);
    swift_unknownObjectRetain();
    sub_100080A24();
    swift_unknownObjectRelease();
  }

  if (*(v1 + 72) && object_getClass(*(v1 + 72)) == _TtC7parsecd13MotionManager)
  {
    swift_unknownObjectRetain();
    sub_1000E5404();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10009716C()
{

  return sub_1000971A4(v0);
}

uint64_t sub_1000971A4(uint64_t a1)
{
  type metadata accessor for Critbit.Node();
  Array.init()();
  if (!a1)
  {
    return sub_1000974C4();
  }

  return a1;
}

uint64_t sub_1000971F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v7 = sub_10009716C();
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
  return result;
}

void sub_10009724C()
{
  v0 = String.utf8CString.getter();
  sub_100097364(1, v0);
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v5)
  {
LABEL_8:
    swift_unknownObjectRelease();
    return;
  }

  v6 = v1;
  v7 = v2;
  sub_1000EC9E4();
  if ((v5 & 0x8000000000000000) == 0)
  {
    while (v7 < v4)
    {
      v8 = *(v6 + v7);
      v9 = _swiftEmptyArrayStorage[2];
      if (v9 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1000EC9E4();
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v8;
      if (v4 == ++v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100097364(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a2 + 16);
  result = sub_10008C560(0, (v3 - result) & ~((v3 - result) >> 63), v3);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = result;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v3 >= v5)
  {
    return a2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000973D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  static String.Encoding.utf8.getter();
  sub_100046184(&qword_100217F20, &qword_1001A5520);
  sub_100097BDC();
  result = String.init<A>(bytes:encoding:)();
  if (v7)
  {
    v8 = a3(result);

    return v8 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000974C4()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1000974EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_100097514()
{
  v0 = sub_1000974EC();

  return _swift_deallocClassInstance(v0, 42, 7);
}

uint64_t sub_10009755C(uint64_t a1)
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

char *sub_100097600()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_100097680()
{
  v0 = sub_100097600();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100097730()
{
  v0 = sub_1000974EC();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100097778()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000977B4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100097808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100097870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  for (i = *v2; ; i = v11)
  {
    v9 = *(i + 16);
    if (!v9)
    {
      break;
    }

    v25 = *(v9 + 24);
    v10 = *(a1 + 16);
    type metadata accessor for Critbit.Node();
    type metadata accessor for Array();

    Array.append(_:)();
    v11 = *(v9 + 16);

    *v2 = v11;
  }

  v12 = *(i + 24);
  if (!v12)
  {
    v23 = *(a1 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v20 = a2;
    v21 = 1;
    return sub_1000051C0(v20, v21, 1, TupleTypeMetadata2);
  }

  v26 = *(v12 + 2);

  static String.Encoding.utf8.getter();
  sub_100046184(&qword_100217F20, &qword_1001A5520);
  sub_100097BDC();
  v24 = String.init<A>(bytes:encoding:)();
  v14 = v13;

  if (v14)
  {
    v16 = *(a1 + 16);
    type metadata accessor for Critbit.Node();
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.popLast()();
    v17 = v26;
    if (!v26)
    {
      v17 = sub_1000974C4();
    }

    *v3 = v17;
    v18 = swift_getTupleTypeMetadata2();
    v19 = *(v18 + 48);
    *a2 = v24;
    a2[1] = v14;
    (*(*(v16 - 8) + 16))(a2 + v19, &v12[*(*v12 + 96)], v16);

    v20 = a2;
    v21 = 0;
    TupleTypeMetadata2 = v18;
    return sub_1000051C0(v20, v21, 1, TupleTypeMetadata2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100097B44(uint64_t a1)
{

  return a1;
}

uint64_t sub_100097B7C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_100097B44(v4);
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return result;
}

unint64_t sub_100097BDC()
{
  result = qword_100217F28[0];
  if (!qword_100217F28[0])
  {
    sub_1000461CC(&qword_100217F20, &qword_1001A5520);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100217F28);
  }

  return result;
}

BOOL sub_100097C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!a1)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(a1 + 24);

      v17 = sub_1000973D8(v14, v15, a4);

      return v17 & 1;
    }

    return 1;
  }

  v6 = *(v5 + 16);
  v7 = *(a1 + 16);

  v9 = sub_100005ECC(v8);

  if (v9)
  {
    v10 = *(v5 + 24);

    v12 = sub_100005ECC(v11);

    return (v12 & 1) != 0;
  }

  return 0;
}

uint64_t sub_100097D44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100097D80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100097DC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Void __swiftcall NSFileManager.createRequiredCacheSubdirectories()()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000407C();
  v4 = v2 - v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v39 - v7;
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = type metadata accessor for URL();
  v12 = sub_100003650(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_10000407C();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v39 - v22;
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (sub_100008D0C(v10, 1, v11) == 1)
  {
    sub_1000982A0(v10);
    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v26 = type metadata accessor for Logger();
    sub_100006674(v26, qword_100232D18);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (sub_100007670(v28))
    {
      v29 = sub_100006640();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "unable to obtain cache assets directory", v29, 2u);
      sub_1000036D4();
    }
  }

  else
  {
    (*(v14 + 32))(v25, v10, v11);
    NSFileManager.createRequiredCohortsSubdirectories(cachesURL:)();
    (*(v14 + 8))(v25, v11);
  }

  NSFileManager.parsecdCustomFBDirectoryURL.getter();
  if (sub_100008D0C(v8, 1, v11) == 1)
  {
    sub_1000982A0(v8);
    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v30 = type metadata accessor for Logger();
    sub_100006674(v30, qword_100232D18);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (sub_100007670(v32))
    {
      v33 = sub_100006640();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "unable to obtain cache custom feedback directory", v33, 2u);
      sub_1000036D4();
    }
  }

  else
  {
    (*(v14 + 32))(v23, v8, v11);
    sub_100098A30();
    NSFileManager.createRequiredFLSubdirectories()();
    (*(v14 + 8))(v23, v11);
  }

  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v4, 1, v11) == 1)
  {
    sub_1000982A0(v4);
    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v34 = type metadata accessor for Logger();
    sub_100006674(v34, qword_100232D18);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      *sub_100006640() = 0;
      sub_10000554C(&_mh_execute_header, v37, v38, "unable to obtain cache session feedback directory");
      sub_1000036D4();
    }
  }

  else
  {
    (*(v14 + 32))(v19, v4, v11);
    _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0();
    (*(v14 + 8))(v19, v11);
  }
}

uint64_t sub_1000982A0(uint64_t a1)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0()
{
  v1 = v0;
  URL.path.getter();
  sub_100046184(qword_100217FB0, &unk_10019C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 64) = &type metadata for Int;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v25 = NSFilePosixPermissions;
  sub_100007FEC();
  Dictionary.init(dictionaryLiteral:)();
  sub_100007FEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();

  v26 = 0;
  v5 = [v0 setAttributes:isa ofItemAtPath:v4 error:&v26];

  if (v5)
  {
    v6 = v26;
  }

  else
  {
    v8 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  URL._bridgeToObjectiveC()(v7);
  v10 = v9;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_100197F20;
  *(v11 + 64) = &type metadata for Int;
  *(v11 + 32) = v25;
  *(v11 + 40) = 448;
  sub_100007FEC();
  v12 = Dictionary.init(dictionaryLiteral:)();
  v26 = 0;
  v13 = sub_100098EC0(v10, 1, v12, &v26, v1);

  v14 = v26;
  if (v13)
  {

    v15 = v14;
  }

  else
  {
    v16 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v17 = type metadata accessor for Logger();
    sub_100006674(v17, qword_100232D18);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_100009684(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error making parsecd caches subdir: %s", v20, 0xCu);
      sub_100007378(v21);
      sub_1000036D4();
      sub_1000036D4();
    }

    else
    {
    }
  }
}

uint64_t NSFileManager.createRequiredCohortsSubdirectories(cachesURL:)()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = sub_100003650(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  v10 = v9 - v8;
  URL.appendingPathComponent(_:isDirectory:)();
  _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0();
  sub_100046184(qword_100217FB0, &unk_10019C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v12;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v13 = NSFileProtectionKey;
  v14 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  sub_100007FEC();
  Dictionary.init(dictionaryLiteral:)();
  sub_100007FEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  v30 = 0;
  v17 = [v1 setAttributes:isa ofItemAtPath:v16 error:&v30];

  if (v17)
  {
    v18 = *(v5 + 8);
    v19 = v30;
    return v18(v10, v2);
  }

  else
  {
    v21 = v30;
    sub_1000058BC();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v22 = type metadata accessor for Logger();
    sub_100006674(v22, qword_100232D18);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_100009684(v27, v28, &v30);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "error setting protection key: %s", v25, 0xCu);
      sub_100007378(v26);
      sub_1000036D4();
      sub_1000036D4();
    }

    else
    {
    }

    return (*(v5 + 8))(v10, v2);
  }
}

uint64_t sub_100098A30()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static _CPKnownFeedbackType.allCustomFeedbackDirectories.getter();
  v6 = v5[2];
  if (v6)
  {
    v7 = (v1 + 8);
    v8 = v5 + 5;
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      URL.appendingPathComponent(_:isDirectory:)();

      _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0();
      (*v7)(v4, v0);
      v8 += 2;
      --v6;
    }

    while (v6);
  }
}

Swift::Void __swiftcall NSFileManager.createRequiredFLSubdirectories()()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for URL();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v12 = v11 - v10;
  NSFileManager.feedbackLoggerCacheDirectoryURL.getter(v3);
  if (sub_100008D0C(v3, 1, v4) == 1)
  {
    sub_1000982A0(v3);
  }

  else
  {
    (*(v7 + 32))(v12, v3, v4);
    _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0();
    (*(v7 + 8))(v12, v4);
  }
}

id NSFileManager.saveInCache(file:from:)()
{
  v1 = v0;
  NSFileManager.validateCacheSubdirectories()();
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 fileExistsAtPath:v2];

  URL._bridgeToObjectiveC()(v4);
  if (v3)
  {
    v7 = v5;
    URL._bridgeToObjectiveC()(v6);
    v9 = v8;
    v15 = 0;
    v10 = [v1 replaceItemAtURL:v7 withItemAtURL:v8 backupItemName:0 options:1 resultingItemURL:0 error:&v15];
  }

  else
  {
    v11 = v5;
    URL._bridgeToObjectiveC()(v6);
    v9 = v12;
    v15 = 0;
    v10 = [v1 moveItemAtURL:v11 toURL:v12 error:&v15];
  }

  if (v10)
  {
    return v15;
  }

  v14 = v15;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_100098E68()
{
  result = qword_1002147B0;
  if (!qword_1002147B0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002147B0);
  }

  return result;
}

id sub_100098EC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:isa error:a4];

  return v10;
}

uint64_t sub_100098FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt);
}

uint64_t sub_10009904C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for UInt);
}

uint64_t sub_1000990B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt);
}

uint64_t sub_100099128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt);
}

BOOL sub_100099198@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098FCC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009920C()
{
  v0 = sub_1000FC0D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

_BYTE *sub_100099280(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_100099334(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000993B0(char a1)
{
  type metadata accessor for Lock();
  sub_1000068B4();
  swift_allocObject();
  *(v1 + 16) = Lock.init()();
  *(v1 + 24) = a1;
  return v1;
}

void *sub_100099400()
{
  sub_1000A52C4();
  sub_1000068B4();
  swift_allocObject();
  v0[2] = Lock.init()();
  sub_1000A4E88(v1, v0 + *(*v0 + 96), &qword_100217480, &unk_100198F70);
  return v0;
}

char *sub_100099470()
{
  sub_1000A52C4();
  sub_1000068B4();
  swift_allocObject();
  *(v0 + 2) = Lock.init()();
  v2 = *(*v0 + 96);
  v3 = type metadata accessor for Client();
  sub_1000036B8(v3);
  (*(v4 + 32))(&v0[v2], v1);
  return v0;
}

uint64_t sub_1000994F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection__lastState);

  v3 = sub_10000FB34(v2);

  return v3;
}

void sub_10009953C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1002140C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000964C(v10, qword_100232AB0);
    v11 = a2;
    v12 = v9;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v15 = 136315394;
      (*(v4 + 16))(v7, v12 + OBJC_IVAR____TtC7parsecd16ClientConnection_connectionID, v3);
      sub_1000075C4(&unk_1002181A0, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v4 + 8))(v7, v3);
      v19 = sub_100009684(v16, v18, &v22);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1024;
      LODWORD(v19) = [v11 processIdentifier];

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "timing out idle xpc transaction: %s from %d", v15, 0x12u);
      sub_100007378(v21);
    }

    else
    {
    }

    sub_100099818();
  }
}

void sub_100099818()
{
  sub_100005478();
  v3 = v0;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v47 = v11 - v10;
  sub_1000058D8();
  v48 = type metadata accessor for DispatchQoS();
  v12 = sub_100003650(v48);
  v46 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  sub_10000FEE8();
  v16 = type metadata accessor for DispatchTimeInterval();
  v17 = sub_100003650(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100003664();
  sub_100007884();
  v22 = type metadata accessor for DispatchTime();
  v23 = sub_100003650(v22);
  v45 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_10000407C();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v32 = &v42 - v31;
  if ((*(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_isActiveListener) & 1) == 0 && sub_1000101C8(*(*(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen) + 16), *(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen)))
  {
    v43 = v7;
    v44 = v4;
    v33 = sub_1000994F8();
    if (v33)
    {
      v34 = *(v33 + 64);
      if (*(v34 + 32))
      {
        v35 = *(v34 + 32);

        sub_1000F0A9C();
      }
    }

    v42 = *(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_backgroundQueue);
    static DispatchTime.now()();
    *v2 = 60;
    (*(v19 + 104))(v2, enum case for DispatchTimeInterval.seconds(_:), v16);
    + infix(_:_:)();
    (*(v19 + 8))(v2, v16);
    v45 = *(v45 + 8);
    (v45)(v29, v22);
    sub_1000068B4();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50[4] = sub_1000A4260;
    v50[5] = v36;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 1107296256;
    v50[2] = sub_10000D50C;
    v50[3] = &unk_1001F9EB8;
    v37 = _Block_copy(v50);

    static DispatchQoS.unspecified.getter();
    v49 = &_swiftEmptyArrayStorage;
    sub_10000EBB4();
    sub_1000075C4(v38, v39);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    v40 = v47;
    v41 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v37);
    (*(v43 + 8))(v40, v41);
    (*(v46 + 8))(v1, v48);
    (v45)(v32, v22);
  }

  sub_100005460();
}

id sub_100099C7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC7parsecd16ClientConnection_timer];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if (sub_1000101C8(*(*&v1[OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen] + 16), *&v1[OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen]))
  {
    v4 = sub_1000994F8();
    if (v4)
    {
      v5 = *(v4 + 64);
      if (*(v5 + 32))
      {
        v6 = *(v5 + 32);

        sub_1000F0A9C();
      }
    }
  }

  sub_100016BF0(0);
  sub_100099D60();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_100099D60()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_cancellableLock) + 16);
  os_unfair_lock_lock(v1);
  sub_10009A170(v0);

  os_unfair_lock_unlock(v1);
}

void sub_100099EF4()
{
  sub_100007A1C();
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_cancellableLock) + 16);
  os_unfair_lock_lock(v1);
  v2 = OBJC_IVAR____TtC7parsecd16ClientConnection_cancellables;
  swift_beginAccess();

  v3 = *(v0 + v2);
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + v2);
  v4 = sub_10000F18C();
  sub_1000BDB4C(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, vars0, vars8);
  *(v0 + v2) = v13;
  swift_endAccess();
  os_unfair_lock_unlock(v1);
}

uint64_t sub_100099FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_cancellableLock);
  sub_1000E5C60(sub_1000A4ED4);
}

uint64_t sub_100099FFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7parsecd16ClientConnection_cancellables;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = sub_1000BB930();
  v7 = 0;
  if (v8)
  {
    v9 = v6;
    v10 = *(a1 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + v4);
    v12 = v16[3];
    sub_100046184(&qword_100218238, &qword_10019C650);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = v16[6];
    v14 = type metadata accessor for CancellableStoreKey();
    sub_10001E64C(v13 + *(*(v14 - 8) + 72) * v9, type metadata accessor for CancellableStoreKey);
    v7 = *(v16[7] + 8 * v9);
    type metadata accessor for AnyCancellable();
    sub_1000075C4(&qword_100218180, type metadata accessor for CancellableStoreKey);
    _NativeDictionary._delete(at:)();
    *(a1 + v4) = v16;
  }

  *a2 = v7;
  return swift_endAccess();
}

uint64_t sub_10009A170(uint64_t a1)
{
  v2 = sub_100046184(&qword_100218248, &unk_10019C680);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = OBJC_IVAR____TtC7parsecd16ClientConnection_cancellables;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v10; result = sub_10000B240(v5, &qword_100218248, &unk_10019C680))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v7 + 48);
    v18 = type metadata accessor for CancellableStoreKey();
    sub_1000A5150(v17 + *(*(v18 - 8) + 72) * v16, v5);
    *&v5[*(v2 + 48)] = *(*(v7 + 56) + 8 * v16);

    AnyCancellable.cancel()();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10009A33C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_100042344(*(*(Strong + OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen) + 16)))
    {
      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000964C(v2, qword_100232AB0);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Timed out client reconnected, leaving connection intact.", v5, 2u);
      }
    }

    else
    {
      v6 = *&v1[OBJC_IVAR____TtC7parsecd16ClientConnection_transaction];

      sub_10000B6E0();

      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000964C(v7, qword_100232AB0);
      v3 = v1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        *(v10 + 4) = [*(&v3->isa + OBJC_IVAR____TtC7parsecd16ClientConnection_connection) processIdentifier];

        _os_log_impl(&_mh_execute_header, v8, v9, "Invalidating inactive connection from pid %d", v10, 8u);
      }

      else
      {

        v8 = v3;
      }

      [*(&v3->isa + OBJC_IVAR____TtC7parsecd16ClientConnection_connection) invalidate];
    }
  }
}

void sub_10009A594()
{
  v2 = v0;
  sub_10000899C();
  v3 = type metadata accessor for UserAgent();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v11 = v10 - v9;
  v12 = sub_100046184(&qword_100217480, &unk_100198F70);
  v13 = sub_100005490(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000FEE8();
  if (v0[OBJC_IVAR____TtC7parsecd16ClientConnection_parClientRequiresStateChangeNotifications] != 1)
  {
    return;
  }

  v16 = sub_1000A4804(v0);
  if (!v16)
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_9;
  }

  v17 = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v17, &v32);

  sub_10003430C(&v31);
  if (!*(&v33 + 1))
  {
LABEL_9:
    v19 = &qword_1002181D0;
    v20 = &qword_100198E00;
    v21 = &v32;
    goto LABEL_10;
  }

  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v18 = v31;
  if (!sub_1000994F8())
  {

    return;
  }

  sub_10001184C();
  if (sub_100008D0C(v1, 1, v3))
  {

    v19 = &qword_100217480;
    v20 = &unk_100198F70;
    v21 = v1;
LABEL_10:
    sub_10000B240(v21, v19, v20);
    return;
  }

  (*(v6 + 16))(v11, v1, v3);
  sub_10000B240(v1, &qword_100217480, &unk_100198F70);
  v22 = UserAgent.fullString.getter();
  v24 = v23;
  v25 = *(v6 + 8);
  v26 = sub_10000F18C();
  v27(v26);
  objc_allocWithZone(PARBag);
  v28 = v18;
  v29 = sub_100015C68(v28, v22, v24);
  v30 = *&v2[OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject];
  if (v30)
  {
    [v30 bagDidLoad:v29 error:0];
  }

  else
  {
  }
}

void sub_10009A8EC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_parClientRequiresStateChangeNotifications) != 1)
  {
    return;
  }

  v2 = sub_1000A4804(a1);
  if (!v2)
  {
    v17 = 0u;
    v18 = 0u;
    goto LABEL_14;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v3, &v17);

  sub_10003430C(v16);
  if (!*(&v18 + 1))
  {
LABEL_14:
    sub_10000B240(&v17, &qword_1002181D0, &qword_100198E00);
    return;
  }

  if (sub_1000A5330())
  {
    v5 = v16[0];
    v4 = v16[1];
    v6 = *(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject);
    if (v6)
    {
      sub_100005854();
      v7 = String._bridgeToObjectiveC()();
      [v6 didDownloadResource:v7];
    }

    if (v5 == 0xD00000000000001BLL && 0x80000001001AFAF0 == v4)
    {

LABEL_17:
      sub_100005180(0, &qword_100217408, NSXPCConnection_ptr);
      v10 = sub_10000CC24(0xD000000000000014, 0x80000001001AE470, 0);
      v11 = objc_allocWithZone(type metadata accessor for FlusherClient());
      v12 = FlusherClient.init(connection:)(v10);
      v13 = *((swift_isaMask & *v12) + 0x78);
      v14 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      v15(v14);

      return;
    }

    sub_100005854();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_17;
    }
  }
}

void sub_10009AB58(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_parClientRequiresStateChangeNotifications) != 1)
  {
    return;
  }

  v3 = sub_1000A4804(a1);
  if (!v3)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_8;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v4, &v7);

  sub_10003430C(&v6);
  if (!*(&v8 + 1))
  {
LABEL_8:
    sub_10000B240(&v7, &qword_1002181D0, &qword_100198E00);
    return;
  }

  if (sub_1000A5330())
  {
    v5 = *(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject);
    if (v5)
    {
      String._bridgeToObjectiveC()();
      sub_100007818();

      [v5 didDeleteResource:v2];
    }

    else
    {
    }
  }
}

void sub_10009ACEC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  v6 = *(*(BagTask - 8) + 64);
  __chkstk_darwin(BagTask);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100046184(&qword_100217480, &unk_100198F70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for UserAgent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  _Block_copy(a3);
  v19 = sub_10000B730(a1, 1);
  if (v19 >= 2)
  {
    sub_10001184C();
    if (sub_100008D0C(v12, 1, v13) == 1)
    {
      sub_100016250(v19);
      sub_10000B240(v12, &qword_100217480, &unk_100198F70);
      goto LABEL_5;
    }

    (*(v14 + 32))(v17, v12, v13);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      (*(v14 + 16))(v8 + *(BagTask + 20), v17, v13);
      *v8 = v19;
      v20 = (v8 + *(BagTask + 24));
      *v20 = sub_100013438;
      v20[1] = v18;

      sub_10009AFDC();
      sub_10001E64C(v8, type metadata accessor for ForceFetchBagTask);
      (*(v14 + 8))(v17, v13);
      goto LABEL_6;
    }

    (*(v14 + 8))(v17, v13);
  }

  sub_100016250(v19);
LABEL_5:
  a3[2](a3, 0, 0);
LABEL_6:

  _Block_release(a3);
}

uint64_t sub_10009AFDC()
{
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  v2 = *(BagTask - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(BagTask - 8);
  v4 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_1000051C0(v7, 1, 1, v8);
  sub_1000A5150(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1000A4EFC(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1000A38EC(0, 0, v7, &unk_10019C660, v10);
}

uint64_t sub_10009B1FC(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_1000158AC();
  v3 = sub_10000899C();
  sub_100015914(v3, 0);
  v4 = sub_100016D34();
  swift_unknownObjectRelease();
  if (v4)
  {
    if ([v4 engagementCardGrpcDisabled])
    {
      goto LABEL_16;
    }

    v5 = [a1 queryCommand];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = v5;
    objc_opt_self();
    sub_1000042D0();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 drilldownMetadata];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 jsonData];
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_self();
      sub_1000042D0();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 card];
        if (v17)
        {
          v18 = v17;
          v9 = [v17 drilldownMetadata];

          if (v9)
          {
            v10 = [v9 jsonData];
LABEL_8:
            v11 = v10;

            if (v11)
            {
              v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v14 = v13;

              sub_100014A40(v12, v14);
              return 1;
            }
          }
        }
      }
    }

LABEL_16:
  }

  return 0;
}

void sub_10009B394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    _convertErrorToNSError(_:)();
  }

  v5 = *(a4 + 16);
  v6 = sub_10000BE80();
  v9 = v7;
  v8(v6);
}

void sub_10009B410()
{
  sub_100005478();
  v2 = v1;
  v48 = v3;
  v49 = v4;
  v50 = type metadata accessor for SessionLookupKey();
  v5 = sub_1000036B8(v50);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v10 = v9 - v8;
  v11 = type metadata accessor for Requestor();
  v12 = sub_100003650(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  sub_10000FEE8();
  v17 = type metadata accessor for Client();
  v18 = sub_100005490(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100003664();
  v21 = type metadata accessor for UserAgent();
  v22 = sub_100003650(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100003664();
  v29 = v28 - v27;

  Client.init(_:)();
  (*(v14 + 104))(v0, enum case for Requestor.parsecd(_:), v11);
  UserAgent.init(_:requestor:)();
  if (swift_unknownObjectWeakLoadStrong() && ((*(v24 + 16))(v10, v29, v21), swift_storeEnumTagMultiPayload(), sub_100086FBC(v10), sub_1000A527C(), swift_unknownObjectRelease(), sub_10001E64C(v10, type metadata accessor for SessionLookupKey), v2))
  {
    v30 = objc_allocWithZone(_CPFeedbackPayload);
    sub_100014924(v48, v49);
    v31 = sub_1000149C0(v48, v49);
    if (v31)
    {
      v32 = v31;
      sub_10000BE80();
      sub_100014D74();

LABEL_15:
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (qword_1002140A0 != -1)
    {
      sub_100003878();
    }

    v41 = type metadata accessor for Logger();
    sub_100006674(v41, qword_100232A50);

    v34 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v42))
    {

      goto LABEL_15;
    }

    v43 = sub_100007800();
    v52 = sub_100007B80();
    *(v43 + 4) = sub_1000A5350(4.8149e-34);
    sub_1000A5304();
    _os_log_impl(v44, v45, v46, v47, v43, 0xCu);
    sub_100007378(v52);
    sub_1000036D4();
    sub_1000036D4();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002140C0 != -1)
    {
      sub_1000037E4();
    }

    v33 = type metadata accessor for Logger();
    sub_100006674(v33, qword_100232AB0);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_100007800();
      v51 = sub_100007B80();
      *(v36 + 4) = sub_1000A5350(4.8149e-34);
      sub_1000A5304();
      _os_log_impl(v37, v38, v39, v40, v36, 0xCu);
      sub_100007378(v51);
      sub_1000036D4();
      sub_1000036D4();
    }
  }

LABEL_16:
  (*(v24 + 8))(v29, v21);
  sub_100005460();
}

uint64_t sub_10009B930(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
  result = sub_10000BBB4();
  if (*(v3 + 24))
  {
    sub_1000092B4(v3, v7);
    v5 = v8;
    v6 = v9;
    sub_100007534(v7, v8);
    (*(v6 + 72))(a1, v5, v6);
    return sub_100007378(v7);
  }

  return result;
}

void sub_10009B9C8(void (*a1)(void))
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1002140A0 != -1)
    {
      sub_100003878();
    }

    v6 = type metadata accessor for Logger();
    sub_100006674(v6, qword_100232A50);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (sub_100007670(v8))
    {
      v9 = sub_100006640();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "registering new receiving listener", v9, 2u);
      sub_1000036D4();
    }

    *(v2 + OBJC_IVAR____TtC7parsecd16ClientConnection_isActiveListener) = 1;
    v10 = *(v5 + 32);
    *(v5 + 32) = *(v2 + OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (a1)
    {
      v11 = sub_10002D450();
      (a1)(v11);
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000960F4();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    v13 = sub_10001197C(inited, xmmword_100197F20);
    v13[2].n128_u64[0] = v14;
    v13[2].n128_u64[1] = v15;
    sub_1000066DC();
    *(v16 + 72) = &type metadata for String;
    sub_10000FF10(v16, v17);
    Dictionary.init(dictionaryLiteral:)();
    v18 = objc_allocWithZone(NSError);
    v19 = sub_100005584();
    v21 = sub_1000A5370(v19, v20, 99);
    if (qword_1002140A0 != -1)
    {
      sub_100003878();
    }

    v22 = type metadata accessor for Logger();
    sub_100006674(v22, qword_100232A50);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (sub_100007670(v24))
    {
      v25 = sub_100006640();
      *v25 = 0;
      sub_1000A5304();
      _os_log_impl(v26, v27, v28, v29, v25, 2u);
      sub_1000036D4();
    }

    if (a1)
    {
      sub_10001343C(v21);
      a1();
    }

    else
    {
    }
  }
}

void sub_10009BD00(uint64_t a1, uint64_t a2)
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

void sub_10009BD64(void (*a1)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100086E8C();
    if (a1)
    {
      v2 = sub_10002D450();
      (a1)(v2);
    }

    swift_unknownObjectRelease();
  }

  else if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000960F4();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    v4 = sub_10001197C(inited, xmmword_100197F20);
    v4[2].n128_u64[0] = v5;
    v4[2].n128_u64[1] = v6;
    sub_1000066DC();
    *(v7 + 72) = &type metadata for String;
    sub_10000FF10(v7, v8);
    Dictionary.init(dictionaryLiteral:)();
    v9 = objc_allocWithZone(NSError);
    v10 = sub_100005584();
    v12 = sub_1000A5370(v10, v11, 99);
    a1();
  }
}

uint64_t sub_10009BF60()
{
  v2 = v0;
  v3 = type metadata accessor for Client();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  sub_10000FEE8();
  result = sub_1000994F8();
  if (result)
  {
    sub_10001186C();
    v10 = Client.type.getter();
    (*(v6 + 8))(v1, v3);
    ClientType.rawValue.getter();
    sub_10000899C();
    if (v10 == ClientType.rawValue.getter())
    {
    }

    sub_1000C0C4C();
    if (*(v2 + OBJC_IVAR____TtC7parsecd16ClientConnection_isActiveListener) != 1)
    {
    }

    else
    {
      if (qword_1002140A0 != -1)
      {
        sub_100003878();
      }

      v11 = type metadata accessor for Logger();
      sub_100006674(v11, qword_100232A50);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (sub_100007670(v13))
      {
        v14 = sub_100006640();
        sub_1000A5288(v14);
        sub_100023F3C();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        sub_10000B084();
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v21 = *(Strong + 32);
        *(Strong + 32) = 0;
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10009C124(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *(*(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_clientStateManager) + 32);
    os_unfair_lock_lock(v3 + 6);
    sub_10010D1AC();
    os_unfair_lock_unlock(v3 + 6);
    v2();
  }

  return result;
}

void sub_10009C28C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100046184(&qword_1002184F0, &unk_10019C640);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10009C310(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = [objc_allocWithZone(NSDictionary) init];
    sub_10001F928();
    sub_1000ABD54();
    v5 = v4;
    swift_unknownObjectRelease();
    if (a3)
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      (a3)(v5, 0, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000960F4();
    v6 = objc_allocWithZone(NSError);
    v7 = sub_100005584();
    sub_1000B184C(v7, v8, 500, 0);
    v9 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    v11 = v10;
    a3(v9);
  }
}

void sub_10009C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v7.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7.super.isa);
}

uint64_t sub_10009C66C(uint64_t a1, void (*a2)(void *, id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = [objc_opt_self() defaultManager];
    v5 = sub_1000B241C(a1);
    v6 = 0;
    swift_unknownObjectRelease();

    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = objc_allocWithZone(NSError);
  v10 = sub_10000BE80();
  v6 = sub_1000B184C(v10, v11, 500, 0);
  swift_willThrow();
  v5 = 0;
  if (a2)
  {
LABEL_3:
    v7 = sub_10001343C(v6);
    a2(v5, v7);
  }

LABEL_4:
}

uint64_t sub_10009C868()
{
  sub_100007A1C();
  result = sub_1000994F8();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    sub_10000BBB4();
    if (*(v1 + 24))
    {
      sub_1000092B4(v1, v6);
      sub_100007534(v6, v6[3]);
      sub_1000385C4();
      v3 = *(v2 + 40);
      v4 = sub_10000F18C();
      v5(v4);

      return sub_100007378(v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10009CA5C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100007A1C();
  result = sub_1000994F8();
  if (result)
  {
    v5 = result + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    sub_10000BBB4();
    if (*(v5 + 24))
    {
      sub_1000092B4(v5, v10);
      v6 = v10[4];
      sub_100007534(v10, v10[3]);
      if (a3)
      {
        [a3 intValue];
      }

      v7 = *(v6 + 64);
      v8 = sub_10000F18C();
      v9(v8);

      return sub_100007378(v10);
    }

    else
    {
    }
  }

  return result;
}

void sub_10009CBF8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000964C(v1, qword_100232A08);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_100009684(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "ECC: Failed to add engagedResult %s", v4, 0xCu);
      sub_100007378(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_10009CDAC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_10009D04C(a2, &v22);
  if (v23)
  {
    v21 = a4;
    sub_100008C84(&v22, v24);
    v8 = _swiftEmptyArrayStorage;
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = v9 + 5;
    *&v22 = _swiftEmptyArrayStorage;
    v11 = v9[2];

LABEL_6:
    v13 = v10;
    while (v11)
    {
      if (!v9[2])
      {
        __break(1u);
        return result;
      }

      sub_10000CCA4(v13);
      v14 = sub_1000A52A0();
      sub_100014924(v14, v15);
      sub_1000A52A0();
      result = PAREngagedResult.init(encoded:)();
      v13 = v4;
      if (result)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16 >> 1)
        {
          sub_1000066A8(v16);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v22;
        v10 = v9 + 5;
        goto LABEL_6;
      }
    }

    if (sub_10000D57C(v8))
    {
      v17 = v25;
      v18 = v26;
      sub_100007534(v24, v25);
      sub_1000385C4();
      (*(v19 + 48))(v8, a3, v21, v17, v18);
    }

    else
    {

      if (a3)
      {
        (a3)(0);
      }
    }

    return sub_100007378(v24);
  }

  else
  {
    result = sub_10000B240(&v22, &qword_100218208, &qword_10019C620);
    if (a3)
    {
      sub_1000A453C();
      sub_100004248();
      *v20 = 1;
      a3();
    }
  }

  return result;
}

double sub_10009D04C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_10000B730(a1, 1);
  v4 = v3;
  if (v3 >= 2)
  {
    v5 = OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    swift_beginAccess();
    sub_10000EFEC(v4 + v5, &v11, &qword_100218208, &qword_10019C620);
    sub_100016250(v4);
    if (v12)
    {
      sub_100008C84(&v11, a2);
      return result;
    }

    sub_10000B240(&v11, &qword_100218208, &qword_10019C620);
  }

  else
  {
    sub_100016250(v3);
  }

  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100232AB0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "State is not ready", v10, 2u);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_10009D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return sub_100006A70();
}

void sub_10009D2D0()
{
  v1 = v0;
  v2 = *(v0 + 128);
  sub_10009D04C(*(v0 + 120), v0 + 56);
  if (*(v0 + 80))
  {
    sub_100008C84((v0 + 56), v0 + 16);
    if (qword_1002140C0 != -1)
    {
      sub_1000037E4();
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232AB0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (sub_100007670(v5))
    {
      v6 = *(v0 + 112);
      v7 = sub_100007800();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      sub_100023F3C();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_10000B084();
    }

    v13 = *(v0 + 112);

    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    sub_100007534((v0 + 16), v14);
    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      v16 = (*(v15 + 24))(*(v0 + 96), *(v0 + 104), *(v0 + 112), v14, v15);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (sub_100007670(v18))
      {
        v19 = sub_100007800();
        *v19 = 134217984;
        *(v19 + 4) = sub_10000D57C(v16);
        sub_100023F3C();
        _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
        sub_10000B084();
      }

      v25 = sub_10000D57C(v16);
      if (!v25)
      {

        v28 = _swiftEmptyArrayStorage;
LABEL_21:
        sub_100007378((v1 + 16));
        goto LABEL_22;
      }

      v26 = v25;
      sub_1000A52E0();
      if ((v26 & 0x8000000000000000) == 0)
      {
        v40 = v1;
        v27 = 0;
        v28 = v41;
        v29 = v16 & 0xC000000000000001;
        v30 = v16;
        do
        {
          if (v29)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v16 + 8 * v27 + 32);
          }

          v32 = v31;
          v33 = PAREngagedResult.encoded()();
          v35 = v34;

          v37 = v41[2];
          v36 = v41[3];
          if (v37 >= v36 >> 1)
          {
            sub_1000066A8(v36);
            sub_1000ECA64();
          }

          ++v27;
          v41[2] = v37 + 1;
          v38 = &v41[2 * v37];
          v38[4] = v33;
          v38[5] = v35;
          v16 = v30;
        }

        while (v26 != v27);

        v1 = v40;
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  sub_10000B240(v0 + 56, &qword_100218208, &qword_10019C620);
  v28 = 0;
LABEL_22:
  v39 = *(v1 + 8);

  v39(v28);
}

uint64_t sub_10009D658(int a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[5] = v10;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_10009D74C;

  return sub_10009D2B4(v9, v11, a2, v12);
}

uint64_t sub_10009D74C()
{
  sub_100008964();
  v2 = v1;
  sub_10000A9A4();
  v4 = v3;
  v5 = v3[6];
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[3];
  v9 = v3[2];
  v10 = *v0;
  sub_100005898();
  *v11 = v10;

  if (v7)
  {
    if (v2)
    {
      Array._bridgeToObjectiveC()();
      sub_100007818();
    }

    else
    {
      v6 = 0;
    }

    v12 = v4[4];
    v13 = v12[2];
    v14 = sub_10000BE80();
    v15(v14);
    _Block_release(v12);
  }

  else
  {
  }

  sub_1000098BC();

  return v16();
}

uint64_t sub_10009D8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_1000051C0(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10019C588;
  v10[5] = v9;
  sub_1000A3DA8(0, 0, v7, &unk_10019C598, v10);
}

void sub_10009DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_10009D04C(a4, &v27);
  if (v28)
  {
    sub_100008C84(&v27, v29);
    v9 = v30;
    v10 = v31;
    sub_100007534(v29, v30);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v11 = (*(v10 + 32))(a1, a2, a3, v9, v10);
      v12 = v11;
      if (a5)
      {
        v13 = sub_10000D57C(v11);
        if (v13)
        {
          v14 = v13;
          v26 = a5;
          sub_1000A52E0();
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = 0;
            v16 = v27;
            do
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v17 = *(v12 + 8 * v15 + 32);
              }

              v18 = v17;
              v19 = PAREngagedResult.encoded()();
              v21 = v20;

              *&v27 = v16;
              v23 = *(v16 + 16);
              v22 = *(v16 + 24);
              if (v23 >= v22 >> 1)
              {
                sub_1000066A8(v22);
                sub_1000ECA64();
                v16 = v27;
              }

              ++v15;
              *(v16 + 16) = v23 + 1;
              v24 = v16 + 16 * v23;
              *(v24 + 32) = v19;
              *(v24 + 40) = v21;
            }

            while (v14 != v15);

            v26(v16);
            goto LABEL_18;
          }

LABEL_21:
          __break(1u);
          return;
        }

        a5(_swiftEmptyArrayStorage);
      }

LABEL_18:

      sub_100007378(v29);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10000B240(&v27, &qword_100218208, &qword_10019C620);
  if (a5)
  {
    v25 = sub_10002D450();
    a5(v25);
  }
}

void sub_10009DCE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10009DD50(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_10009D04C(a2, &v31);
  if (v32)
  {
    v30 = a4;
    sub_100008C84(&v31, v33);
    v8 = _swiftEmptyArrayStorage;
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = v9 + 5;
    *&v31 = _swiftEmptyArrayStorage;
    v11 = v9[2];

LABEL_6:
    v12 = v10;
    while (v11)
    {
      if (!v9[2])
      {
        __break(1u);
        return;
      }

      sub_10000CCA4(v12);
      v13 = sub_1000A52A0();
      sub_100014924(v13, v14);
      sub_1000A52A0();
      v15 = PAREngagedResult.init(encoded:)();
      v12 = v4;
      if (v15)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16 >> 1)
        {
          sub_1000066A8(v16);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v31;
        v10 = v9 + 5;
        goto LABEL_6;
      }
    }

    if (sub_10000D57C(v8))
    {
      v17 = v34;
      v18 = v35;
      sub_100007534(v33, v34);
      sub_1000385C4();
      (*(v19 + 56))(v8, a3, v30, v17, v18);
    }

    else
    {

      if (a3)
      {
        (a3)(0);
      }
    }

    sub_100007378(v33);
  }

  else
  {
    sub_10000B240(&v31, &qword_100218208, &qword_10019C620);
    if (a3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000960F4();
      sub_100046184(&qword_1002147F0, &qword_1001989D0);
      inited = swift_initStackObject();
      v21 = sub_10001197C(inited, xmmword_100197F20);
      v21[2].n128_u64[0] = v22;
      v21[2].n128_u64[1] = v23;
      sub_1000066DC();
      *(v24 + 72) = &type metadata for String;
      sub_10000FF10(v24, v25);
      Dictionary.init(dictionaryLiteral:)();
      v26 = objc_allocWithZone(NSError);
      v27 = sub_100005584();
      v29 = sub_1000A5370(v27, v28, 500);
      a3();
    }
  }
}

uint64_t sub_10009E0B8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_1000833FC();
    result = swift_unknownObjectRelease();
    if (v1)
    {
      v2 = sub_100005854();
      sub_10005AEE4(v2, v3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10009E1BC(void (*a1)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1)
    {
      sub_1000158AC();
      v3 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      sub_100015914(v3, v4);
      v5 = sub_100016D34();
      swift_unknownObjectRelease();
      if (v5 && (v6 = [v5 resources], v5, v6))
      {
        v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v7 = 0;
      }

      a1(v7);
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else if (a1)
  {
    v8 = sub_10002D450();
    return (a1)(v8);
  }

  return result;
}

void sub_10009E3B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10009E430(uint64_t a1, void (**a2)(void, void))
{
  v3 = type metadata accessor for SessionType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = [objc_opt_self() standardUserDefaults];
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v15 = v14;
    (*(v9 + 8))(v12, v8);
    v16 = String._bridgeToObjectiveC()();
    [v13 setDouble:v16 forKey:v15];

    (*(v4 + 104))(v7, enum case for SessionType.safari(_:), v3);
    sub_100007608();
    sub_10010DE04();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v7, v3);
    sub_100086F30(v28);
    v17 = v29;
    v18 = v30;
    sub_100007534(v28, v29);
    (*(v18 + 16))(v17, v18);
    sub_100007378(v28);
    a2[2](a2, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0x796C626D65737361;
    *(inited + 56) = 0xEF6C696E20736920;
    v23 = Dictionary.init(dictionaryLiteral:)();
    v24 = objc_allocWithZone(NSError);
    v25 = sub_1000B184C(v19, v21, 500, v23);
    v26 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v26);
  }

  _Block_release(a2);
}

uint64_t sub_10009E828()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10009E91C(uint64_t *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void *))
{
  v76 = a4;
  v7 = type metadata accessor for PegasusContext(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v73 = *(Context - 8);
  v74 = Context;
  v11 = *(v73 + 64);
  __chkstk_darwin(Context);
  v72 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000964C(v13, qword_100232AB0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = ClientType.rawValue.getter();
    *(v16 + 12) = 2048;
    *(v16 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received QueryContext request for %lu, proxy: %lu", v16, 0x16u);
  }

  v17 = ClientType.rawValue.getter();
  v18 = ClientType.rawValue.getter();
  v75 = a2;
  if (v17 == v18 && swift_unknownObjectWeakLoadStrong())
  {
    sub_100037BF4();
    v19 = sub_10007FA24();
    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = objc_opt_self();
      v21 = @"com.apple.parsecd.contextCacheUpdate";
      v22 = [v20 defaultCenter];
      type metadata accessor for NotificationBarrier();
      swift_allocObject();
      v23 = sub_100046750(v21, v22, sub_10009F490, 0);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v23 = 0;
LABEL_11:
  v24 = a3 + OBJC_IVAR____TtC7parsecd16ClientConnection_assembly;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v25 = [objc_opt_self() defaultCenter];
    [v25 postNotificationName:@"com.apple.parsecd.performedSearch" object:0];
  }

  v26 = *(a3 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 valueForEntitlement:v27];

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  v81 = v79;
  v82 = v80;
  if (!*(&v80 + 1))
  {
    sub_10000B240(&v81, &qword_1002181D0, &qword_100198E00);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
LABEL_37:

      sub_1000A453C();
      swift_allocError();
      *v45 = 2;
      v46 = _convertErrorToNSError(_:)();
      v47 = v76;
      v76[2](v76, 0, v46);

      goto LABEL_38;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Found no suitable value for application identifier entitlement", v34, 2u);
LABEL_35:

    goto LABEL_37;
  }

  v29 = v78;
  v70 = v77;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v26 valueForEntitlement:v30];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  v81 = v79;
  v82 = v80;
  if (!*(&v80 + 1))
  {
    sub_10000B240(&v81, &qword_1002181D0, &qword_100198E00);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v77 & 1) == 0)
  {
LABEL_32:

    v32 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v81 = v41;
      *v40 = 136315138;
      v44 = sub_100009684(v70, v29, &v81);

      *(v40 + 4) = v44;
      v43 = "QueryContext Request denied for unauthorized client %s: missing context entitlement";
      goto LABEL_34;
    }

LABEL_36:

    goto LABEL_37;
  }

  v35 = sub_1000639A0(v70, v29);
  v37 = v36;

  if ((v37 & 1) != 0 || (v38 = ClientType.rawValue.getter(), v38 == ClientType.rawValue.getter()))
  {

    v32 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v81 = v41;
      *v40 = 136315138;
      v42 = sub_100009684(v70, v29, &v81);

      *(v40 + 4) = v42;
      v43 = "Request for QueryContext denied for unrecognized client: %s";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v32, v39, v43, v40, 0xCu);
      sub_100007378(v41);

      goto LABEL_35;
    }

    goto LABEL_36;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    v50 = *(v24 + 8);
    if (v23)
    {

      sub_1000467F4(100);
    }

    v51 = ClientType.rawValue.getter();
    if (v51 == ClientType.rawValue.getter())
    {
      v52 = a1;
    }

    else
    {
      v52 = v35;
    }

    v53 = v71;
    sub_100017190(v71);
    v54 = v72;
    sub_1000F5048(v52, v49, v50, v72);
    sub_10001E64C(v53, type metadata accessor for PegasusContext);
    sub_1000075C4(&qword_1002181F8, &type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    v55 = v74;
    v61 = Message.serializedData(partial:)();
    v63 = v62;
    (*(v73 + 8))(v54, v55);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v81 = v67;
      *v66 = 136315138;
      v68 = sub_100009684(v70, v29, &v81);

      *(v66 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v64, v65, "Sending QueryContext data to %s", v66, 0xCu);
      sub_100007378(v67);
    }

    else
    {
    }

    sub_100014924(v61, v63);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v47 = v76;
    (v76)[2](v76, isa, 0);

    sub_100014A40(v61, v63);
    sub_100014A40(v61, v63);
    swift_unknownObjectRelease();
  }

  else
  {

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Couldn't retain assembly", v58, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v59 = 1;
    v60 = _convertErrorToNSError(_:)();
    v47 = v76;
    v76[2](v76, 0, v60);
  }

LABEL_38:
  _Block_release(v47);
}

BOOL sub_10009F490()
{
  v0 = sub_100046184(&qword_100218200, &qword_10019C618);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for ContextUpdate(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
    v19 = 0u;
    v20 = 0u;
    goto LABEL_6;
  }

  v12 = v11;
  v17[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[2] = v13;
  AnyHashable.init<A>(_:)();
  sub_100034150(v12, &v19);

  sub_10003430C(v18);
  if (!*(&v20 + 1))
  {
LABEL_6:
    sub_10000B240(&v19, &qword_1002181D0, &qword_100198E00);
    sub_1000051C0(v3, 1, 1, v4);
    goto LABEL_7;
  }

  v14 = swift_dynamicCast();
  sub_1000051C0(v3, v14 ^ 1u, 1, v4);
  if (sub_100008D0C(v3, 1, v4) == 1)
  {
LABEL_7:
    sub_10000B240(v3, &qword_100218200, &qword_10019C618);
    return 0;
  }

  sub_1000A4EFC(v3, v10);
  sub_1000A4EFC(v10, v8);
  v15 = swift_getEnumCaseMultiPayload() == 2;
  sub_10001E64C(v8, type metadata accessor for ContextUpdate);
  return v15;
}

void sub_10009F76C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_10009F804(uint64_t a1, void (**a2)(void, void, void))
{
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  _Block_copy(a2);
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received request for Bag data", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v32;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v33;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10000B240(&v36, &qword_1002181D0, &qword_100198E00);
    v12 = 0;
    v13 = 0;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 valueForEntitlement:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_10000B240(&v36, &qword_1002181D0, &qword_100198E00);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v32 & 1) == 0)
  {
LABEL_25:

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v34 = v21;
      *v20 = 136315138;
      *&v36 = v12;
      *(&v36 + 1) = v13;
      sub_100046184(&qword_1002181F0, &qword_10019C610);
      v22 = String.init<A>(describing:)();
      v24 = sub_100009684(v22, v23, &v34);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Bag Data Request denied for unauthorized client %s: missing context entitlement", v20, 0xCu);
      sub_100007378(v21);
    }

    else
    {
    }

    sub_1000A453C();
    swift_allocError();
    v26 = 2;
LABEL_29:
    *v25 = v26;
    v27 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v27);

    goto LABEL_30;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Couldn't retain assembly", v30, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    v26 = 1;
    goto LABEL_29;
  }

  sub_1000158AC();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000A4870;
  *(v16 + 24) = v31;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000A4870;
  *(v17 + 24) = v31;
  swift_retain_n();
  sub_1000FF76C(0, sub_1000A4878, v16, sub_1000A4880, v17);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_30:

  _Block_release(a2);
}

uint64_t sub_10009FD98(void *a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = sub_1000CFC9C(a1);
  if (v4 >> 60 == 15)
  {
    if (qword_1002140C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232AB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Couldn't construct bag data", v8, 2u);
    }

    sub_1000A453C();
    v9 = swift_allocError();
    *v10 = 3;
    a2(0, 0xF000000000000000, v9);
  }

  else
  {
    v12 = v3;
    v13 = v4;
    if (qword_1002140C0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000964C(v14, qword_100232AB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Sending Bag data", v17, 2u);
    }

    sub_100062FBC(v12, v13);
    a2(v12, v13, 0);
    sub_100014A2C(v12, v13);

    return sub_100014A2C(v12, v13);
  }
}

uint64_t sub_1000A0000(uint64_t a1, void (*a2)(void, unint64_t, uint64_t))
{
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000964C(v3, qword_100232AB0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100009684(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to vend bag: %s", v6, 0xCu);
    sub_100007378(v7);
  }

  sub_1000A453C();
  v11 = swift_allocError();
  *v12 = 1;
  a2(0, 0xF000000000000000, v11);
}

void sub_1000A01D8(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received request for Device Setup State", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v36;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v37;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10000B240(&v40, &qword_1002181D0, &qword_100198E00);
    v12 = 0;
    v13 = 0;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 valueForEntitlement:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_10000B240(&v40, &qword_1002181D0, &qword_100198E00);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v36 & 1) == 0)
  {
LABEL_30:

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v38 = v26;
      *v25 = 136315138;
      *&v40 = v12;
      *(&v40 + 1) = v13;
      sub_100046184(&qword_1002181F0, &qword_10019C610);
      v27 = String.init<A>(describing:)();
      v29 = sub_100009684(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Request for device setup state denied for unauthorized client %s: missing context entitlement", v25, 0xCu);
      sub_100007378(v26);
    }

    else
    {
    }

    sub_1000A453C();
    swift_allocError();
    v31 = 2;
LABEL_34:
    *v30 = v31;
    v32 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v32);

    goto LABEL_35;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Device setup state failed on assembly access", v35, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    v31 = 1;
    goto LABEL_34;
  }

  v17 = *(Strong + 296);
  v18 = sub_10001710C();
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v18 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Sending Device Setup State: %{BOOL}d", v22, 8u);
  }

  a2[2](a2, v19, 0);
  swift_unknownObjectRelease();
LABEL_35:
  _Block_release(a2);
}

void sub_1000A0758(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

uint64_t sub_1000A07CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_10000B240(v31, &qword_1002181D0, &qword_100198E00);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100214128 != -1)
    {
      sub_10000DBF4();
    }

    v21 = type metadata accessor for Logger();
    sub_100006674(v21, qword_100232B98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100006640();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found no suitable value for application identifier entitlement", v24, 2u);
      sub_1000036D4();
    }

    return 0;
  }

  v4 = sub_100005854();
  sub_1000639A0(v4, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v25 = ClientType.rawValue.getter();
    if (v25 == ClientType.rawValue.getter() || (v26 = ClientType.rawValue.getter(), v26 == ClientType.rawValue.getter()))
    {

      return 1;
    }
  }

  if (qword_100214128 != -1)
  {
    sub_10000DBF4();
  }

  v8 = type metadata accessor for Logger();
  sub_100006674(v8, qword_100232B98);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100007800();
    v12 = sub_100007B80();
    *&v31[0] = v12;
    *v11 = 136315138;
    v13 = sub_100005854();
    sub_100009684(v13, v14, v15);
    sub_100007818();

    *(v11 + 4) = v28;
    sub_100023F3C();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_100007378(v12);
    sub_1000036D4();
    sub_10000B084();
  }

  else
  {
  }

  return 0;
}

void sub_1000A0AB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v11 = type metadata accessor for Client();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = sub_100004950();
    Client.init(_:)();
    v16 = type metadata accessor for ResourceAccessSpan();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_100004A34(v15, 600, v14, 0, 1);
    if (sub_1000A07CC())
    {
      sub_10008493C();
      v20 = *sub_100007534(v30, v30[3]);
      sub_10007768C(a1, a2, a3, a4);
      *(v19 + qword_100216C08) = 117;
      sub_10000D684();
      a6[2](a6, 0);
      swift_unknownObjectRelease();

      sub_100007378(v30);
    }

    else
    {
      *(v19 + qword_100216C08) = 43;
      sub_10000D684();
      sub_1000A453C();
      swift_allocError();
      *v27 = 2;
      v28 = _convertErrorToNSError(_:)();
      (a6)[2](a6, v28);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000964C(v21, qword_100232B98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "APNS subscription failed on assembly access", v24, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v25 = 1;
    v26 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v26);
  }

  _Block_release(a6);
}

void sub_1000A0FD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v11 = type metadata accessor for Client();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = sub_100004950();
    Client.init(_:)();
    v16 = type metadata accessor for ResourceAccessSpan();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_100004A34(v15, 601, v14, 0, 1);
    sub_10008493C();
    v20 = *sub_100007534(v28, v28[3]);
    sub_100078294(a1, a2, a3, a4);
    a6[2](a6, 0);
    *(v19 + qword_100216C08) = 118;
    sub_10000D684();
    swift_unknownObjectRelease();

    sub_100007378(v28);
    _Block_release(a6);
  }

  else
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000964C(v21, qword_100232B98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "APNS unsubscribe failed on assembly access", v24, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v25 = 1;
    v26 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v26);

    _Block_release(a6);
  }
}

void sub_1000A1334(uint64_t a1, unint64_t a2, const void *a3, unint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v103 = a6;
  v10 = sub_100046184(&qword_1002181C0, &qword_10019C5F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v98 = &v91 - v12;
  v13 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v99 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BinaryDecodingOptions();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100046184(&qword_1002181C8, &unk_10019C600);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v91 - v21;
  v100 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  v102 = *(v100 - 8);
  v23 = *(v102 + 64);
  __chkstk_darwin(v100);
  v101 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Client();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000964C(v42, qword_100232B98);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v103;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "APNS subscription failed on assembly access", v47, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v48 = 1;
    v49 = _convertErrorToNSError(_:)();
    (v46)[2](v46, 0, v49);

    v50 = v46;

    goto LABEL_16;
  }

  v96 = v14;
  v97 = v13;
  v30 = Strong;
  v31 = sub_100004950();
  Client.init(_:)();
  v32 = type metadata accessor for ResourceAccessSpan();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_100004A34(v31, 602, v28, 0, 1);
  if ((sub_1000A07CC() & 1) == 0)
  {
    *(v35 + qword_100216C08) = 43;
    sub_10000D684();
    sub_1000A453C();
    swift_allocError();
    *v51 = 2;
    v52 = _convertErrorToNSError(_:)();
    v53 = v103;
    (v103)[2](v103, 0, v52);

    swift_unknownObjectRelease();

LABEL_23:
    v50 = v53;
LABEL_16:
    _Block_release(v50);
    return;
  }

  v95 = v30;
  sub_10008493C();
  v36 = *sub_100007534(v110, v110[3]);
  v37 = sub_1000784B0();
  if (!v37)
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000964C(v54, qword_100232B98);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *&v106[0] = swift_slowAlloc();
      *v57 = 136315394;
      *(v57 + 4) = sub_100009684(a1, a2, v106);
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_100009684(a3, a4, v106);
      _os_log_impl(&_mh_execute_header, v55, v56, "Did not get message for %s - %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000A453C();
    swift_allocError();
    *v58 = 4;
    v59 = _convertErrorToNSError(_:)();
    v53 = v103;
    (v103)[2](v103, 0, v59);

    *(v35 + qword_100216C08) = 119;
    sub_10000D684();

    swift_unknownObjectRelease();
    sub_100007378(v110);
    goto LABEL_23;
  }

  v104 = 0x64616F6C796170;
  v105 = 0xE700000000000000;
  v38 = v37;
  AnyHashable.init<A>(_:)();
  v39 = sub_1000A4804(v38);
  if (!v39)
  {
    _Block_release(v103);
    __break(1u);
LABEL_40:
    _Block_release(a3);
    __break(1u);
    goto LABEL_41;
  }

  sub_100034150(v39, &v108);

  sub_10003430C(v106);
  a3 = v103;
  if (!v109)
  {

    sub_10000B240(&v108, &qword_1002181D0, &qword_100198E00);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

LABEL_26:
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000964C(v63, qword_100232B98);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "failed to create FlightStatusUpdate from APNs push", v66, 2u);
    }

    *(v35 + qword_100216C08) = 114;
    sub_10000D684();
    sub_1000A453C();
    swift_allocError();
    *v67 = 5;
    v68 = _convertErrorToNSError(_:)();
    (*(a3 + 2))(a3, 0, v68);
    swift_unknownObjectRelease();

LABEL_31:
    sub_100007378(v110);
    v50 = a3;
    goto LABEL_16;
  }

  v40 = Data.init(base64Encoded:options:)();
  if (v41 >> 60 == 15)
  {

    goto LABEL_9;
  }

  v60 = v40;
  v61 = v41;
  *&v108 = v40;
  *(&v108 + 1) = v41;
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  sub_100014924(v40, v41);
  BinaryDecodingOptions.init()();
  sub_1000075C4(&qword_1002181D8, &type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);
  v62 = v100;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v93 = v60;
  v92 = v61;
  v94 = v35;
  sub_1000051C0(v22, 0, 1, v62);
  (*(v102 + 32))(v101, v22, v62);
  v69 = v99;
  Apple_Parsec_Type_Aps_Messsage_PushMessage.init()();
  sub_1000A4724(v38, &selRef_topic);
  if (!v70)
  {
    goto LABEL_40;
  }

  v71 = v62;
  Apple_Parsec_Type_Aps_Messsage_PushMessage.topic.setter();
  sub_100013354(v38, &selRef_channelID);
  if (v72)
  {

    Apple_Parsec_Type_Aps_Messsage_PushMessage.channel.setter();
    v73 = v98;
    (*(v102 + 16))(v98, v101, v62);
    v74 = enum case for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload.flightStatusUpdate(_:);
    v75 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload();
    (*(*(v75 - 8) + 104))(v73, v74, v75);
    sub_1000051C0(v73, 0, 1, v75);
    Apple_Parsec_Type_Aps_Messsage_PushMessage.payload.setter();
    sub_1000075C4(&unk_1002181E0, &type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage);
    v76 = Message.serializedData(partial:)();
    v78 = v77;
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000964C(v79, qword_100232B98);
    sub_100014924(v76, v78);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    sub_100014A40(v76, v78);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v106[0] = v83;
      *v82 = 136642819;
      sub_100014924(v76, v78);
      v84 = v38;
      v85 = Data.description.getter();
      v87 = v86;
      sub_100014A40(v76, v78);
      v88 = sub_100009684(v85, v87, v106);

      *(v82 + 4) = v88;
      v38 = v84;
      v71 = v100;
      v69 = v99;
      _os_log_impl(&_mh_execute_header, v80, v81, "forwarding push message to client %{sensitive}s", v82, 0xCu);
      sub_100007378(v83);
    }

    v89 = v93;
    sub_100014924(v76, v78);
    isa = Data._bridgeToObjectiveC()().super.isa;
    (*(a3 + 2))(a3, isa, 0);

    sub_100014A40(v76, v78);
    sub_1000A22E0();
    swift_unknownObjectRelease();

    sub_100014A40(v76, v78);
    sub_100014A2C(v89, v92);

    (*(v96 + 8))(v69, v97);
    (*(v102 + 8))(v101, v71);
    goto LABEL_31;
  }

LABEL_41:
  _Block_release(a3);
  __break(1u);
}