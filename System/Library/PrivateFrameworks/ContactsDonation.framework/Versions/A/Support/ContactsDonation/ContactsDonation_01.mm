uint64_t sub_100016A94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100016B20(v3);
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

char *sub_100016B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&unk_1000458B0, &unk_100030900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100016C4C(uint64_t a1)
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

      sub_100015798(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100016CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_1000457A8, "W");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016D60()
{
  result = qword_1000458D0;
  if (!qword_1000458D0)
  {
    type metadata accessor for PersonNameComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000458D0);
  }

  return result;
}

uint64_t sub_100016DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_1000457A8, "W");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016E28()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AllContactsInBatches(0);
  v8 = v0 + v7[5];
  v9 = *v8;
  if (*v8)
  {
    v11 = *(v8 + 8);
    v10 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    v9 = sub_1000182A0();
    v10 = 0;
    v13 = *(v9 + 2);
    v11 = (v9 + 32);
    *v8 = v9;
    *(v8 + 8) = v9 + 32;
    v12 = (2 * v13) | 1;
    *(v8 + 16) = 0;
    *(v8 + 24) = v12;
  }

  if (v10 == v12 >> 1)
  {
    return 0;
  }

  if (v10 < (v12 >> 1))
  {
    v54 = v2;
    v55 = v6;
    v52 = v1;
    v15 = *(v0 + v7[7]);
    v1 = sub_1000186B0(v15, v9, v11, v10, v12);
    v53 = v16;
    v56 = v17;
    v6 = v18;
    *v8 = sub_100018728(v15, v9, v11, v10, v12);
    *(v8 + 8) = v19;
    *(v8 + 16) = v20;
    *(v8 + 24) = v21;
    v22 = qword_1000446D8;
    swift_unknownObjectRetain_n();
    if (v22 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_9:
  v23 = objc_allocWithZone(CNContactFetchRequest);
  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v23 initWithKeysToFetch:isa];

  v26 = v6;
  if ((v6 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v27 = v55;
LABEL_11:
    sub_1000188C8(v1, v53, v56, v26);
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  v27 = v55;
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = v28[2];

  if (__OFSUB__(v26 >> 1, v56))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v29 != (v26 >> 1) - v56)
  {
LABEL_31:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v30 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_17;
  }

LABEL_18:
  v31 = objc_opt_self();
  v32 = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v31 predicateForContactsWithIdentifiers:v32];

  [v25 setPredicate:v33];
  v34 = objc_autoreleasePoolPush();
  v35 = *(v0 + v7[6]);
  v58 = 0;
  v36 = [v35 executeFetchRequest:v25 error:&v58];
  if (v36)
  {
    v37 = v36;
    v38 = v58;
    v39 = [v37 value];

    v58 = v39;
    sub_100003760(&qword_1000458F0, &qword_100030938);
    if (swift_dynamicCast())
    {
      v14 = v57;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v55 = v34;
    v40 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v41 = v54;
    v42 = v52;
    (*(v54 + 16))(v27, v0, v52);
    swift_unknownObjectRetain();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      LODWORD(v53) = v44;
      v45 = v26;
      v46 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v58 = v51;
      *v46 = 134218242;
      if (__OFSUB__(v45 >> 1, v56))
      {
        __break(1u);
      }

      *(v46 + 4) = (v45 >> 1) - v56;
      swift_unknownObjectRelease();
      *(v46 + 12) = 2080;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      v49 = sub_10001DC5C(v47, v48, &v58);

      *(v46 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v43, v53, "failed to fetch batch of %ld: %s", v46, 0x16u);
      sub_100003850(v51);

      (*(v54 + 8))(v27, v42);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v41 + 8))(v27, v42);
    }

    v14 = 0;
    v34 = v55;
  }

  objc_autoreleasePoolPop(v34);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_100017428()
{
  v1 = sub_100003760(&qword_100044F50, &qword_100030240);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for AddressBookDetails(0) + 112);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v0 + v6, 1, v7);
  result = 0;
  if (v10 != 1)
  {
    sub_100018138(v0 + v6, v5);
    result = v9(v5, 1, v7);
    if (result == 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    v14 = v12;
    result = (*(v8 + 8))(v5, v7);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        if (!__OFSUB__(0, v13))
        {
          return -v13 / 86400;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000175F0()
{
  v1 = sub_100003760(&qword_100044F50, &qword_100030240);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for AddressBookDetails(0) + 116);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v0 + v6, 1, v7);
  result = 0;
  if (v10 != 1)
  {
    sub_100018138(v0 + v6, v5);
    result = v9(v5, 1, v7);
    if (result == 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    v14 = v12;
    result = (*(v8 + 8))(v5, v7);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        if (!__OFSUB__(0, v13))
        {
          return -v13 / 86400;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000177B8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v92 = *(v3 - 8);
  v4 = *(v92 + 64);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v85 - v10;
  v12 = sub_100003760(&qword_100044F50, &qword_100030240);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v85 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v85 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v89 = &v85 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v91 = &v85 - v31;
  __chkstk_darwin(v30, v32);
  v34 = (&v85 - v33);
  v35 = type metadata accessor for AddressBookDetails(0);
  v93 = v35;
  v37 = *(v35 + 20);
  v38 = *(v1 + v37);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    goto LABEL_63;
  }

  v88 = v21;
  *(v1 + v37) = v40;
  if (qword_1000446B0 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    __chkstk_darwin(v35, v36);
    *(&v85 - 2) = a1;
    result = sub_10000A7AC(sub_1000197DC, (&v85 - 4), v41);
    if (result)
    {
      goto LABEL_8;
    }

    v44 = v93[6];
    v45 = *(v1 + v44);
    v39 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v39)
    {
      break;
    }

    *(v1 + v44) = v46;
    result = type metadata accessor for ContactDetails();
    if (*(a1 + *(result + 36)) == 1)
    {
      v47 = v93[7];
      v48 = *(v1 + v47);
      v39 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v39)
      {
        goto LABEL_67;
      }

      *(v1 + v47) = v49;
    }

LABEL_8:
    if (qword_1000446B8 != -1)
    {
      result = swift_once();
    }

    __chkstk_darwin(result, v43);
    *(&v85 - 2) = a1;
    result = sub_10000A7AC(sub_1000180FC, (&v85 - 4), v50);
    if (result)
    {
      v51 = v93[8];
      v52 = *(v1 + v51);
      v39 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v39)
      {
        goto LABEL_66;
      }

      *(v1 + v51) = v53;
    }

    v90 = v25;
    v86 = v17;
    v87 = v8;
    v54 = type metadata accessor for ContactDetails();
    v25 = *(v54 + 96);
    sub_100018138(a1 + v25, v34);
    v55 = *(v92 + 48);
    v56 = v55(v34, 1, v3);
    sub_1000181A8(v34);
    if (v56 == 1)
    {
      goto LABEL_20;
    }

    v85 = v54;
    v57 = v91;
    sub_100018138(a1 + v25, v91);
    result = v55(v57, 1, v3);
    if (result == 1)
    {
      goto LABEL_68;
    }

    v58 = v89;
    sub_100018138(v1 + v93[28], v89);
    if (v55(v58, 1, v3) == 1)
    {
      static Date.distantFuture.getter();
      if (v55(v58, 1, v3) != 1)
      {
        sub_1000181A8(v58);
      }
    }

    else
    {
      (*(v92 + 32))(v11, v58, v3);
    }

    v59 = v91;
    v60 = static Date.< infix(_:_:)();
    v61 = v11;
    v11 = *(v92 + 8);
    (v11)(v61, v3);
    (v11)(v59, v3);
    v54 = v85;
    if (v60)
    {
LABEL_20:
      sub_100018210(a1 + v25, v1 + v93[28]);
    }

    v62 = *(v54 + 100);
    v17 = v90;
    sub_100018138(a1 + v62, v90);
    v63 = v55(v17, 1, v3);
    result = sub_1000181A8(v17);
    if (v63 != 1)
    {
      v64 = v88;
      sub_100018138(a1 + v62, v88);
      result = v55(v64, 1, v3);
      if (result == 1)
      {
        goto LABEL_69;
      }

      v17 = v93[29];
      v65 = v86;
      sub_100018138(v1 + v17, v86);
      v66 = v55(v65, 1, v3);
      v25 = v87;
      if (v66 == 1)
      {
        static Date.distantPast.getter();
        if (v55(v65, 1, v3) != 1)
        {
          sub_1000181A8(v65);
        }
      }

      else
      {
        (*(v92 + 32))(v87, v65, v3);
      }

      v67 = v64;
      v68 = static Date.> infix(_:_:)();
      v11 = (v92 + 8);
      v69 = *(v92 + 8);
      v69(v25, v3);
      result = (v69)(v67, v3);
      if (v68)
      {
        result = sub_100018210(a1 + v62, v1 + v17);
      }
    }

    if (qword_1000446C0 != -1)
    {
      result = swift_once();
    }

    v34 = *(qword_100046260 + 16);
    if (v34)
    {
      v8 = (qword_100046260 + 56);
      v17 = v94;
      do
      {
        v3 = *(v8 - 2);
        v70 = *(v8 - 1);
        v71 = *v8;

        swift_getAtKeyPath();
        if (v94[0] == 1)
        {
          v72 = swift_modifyAtWritableKeyPath();
          if (__OFADD__(*v73, 1))
          {
            goto LABEL_60;
          }

          ++*v73;
          v72(v94, 0);
        }

        v8 += 32;
        v34 = (v34 - 1);
      }

      while (v34);
    }

    if (qword_1000446D0 != -1)
    {
      result = swift_once();
    }

    v74 = *(qword_100046270 + 16);
    if (v74)
    {
      v34 = (qword_100046270 + 40);
      v8 = v94;
      do
      {
        v75 = *(v34 - 1);
        v3 = *v34;

        swift_getAtKeyPath();
        if (v94[0] == 1)
        {
          v76 = swift_modifyAtWritableKeyPath();
          if (__OFADD__(*v77, 1))
          {
            goto LABEL_61;
          }

          ++*v77;
          v76(v94, 0);
        }

        v34 += 2;
        --v74;
      }

      while (v74);
    }

    if (qword_1000446C8 != -1)
    {
      result = swift_once();
    }

    v34 = *(qword_100046268 + 16);
    if (!v34)
    {
      return result;
    }

    v8 = (qword_100046268 + 56);
    v17 = v94;
    while (1)
    {
      v81 = *(v8 - 2);
      v3 = *(v8 - 1);
      v82 = *v8;

      swift_getAtKeyPath();
      v25 = *v94;
      result = swift_modifyAtWritableKeyPath();
      if (__OFADD__(*v83, v25))
      {
        break;
      }

      *v83 += v25;
      if (v83[1] < v25)
      {
        v83[1] = v25;
      }

      if (v25 < 1)
      {
        v79 = v83[3];
        v78 = v83 + 3;
        v80 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v84 = v83[2];
        v78 = v83 + 2;
        v80 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          __break(1u);
          return result;
        }
      }

      *v78 = v80;
      (result)(v94, 0);

      v8 += 32;
      v34 = (v34 - 1);
      if (!v34)
      {
        return result;
      }
    }

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
    v35 = swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1000180FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  swift_getAtKeyPath();
  return v5;
}

uint64_t sub_100018138(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000181A8(uint64_t a1)
{
  v2 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018210(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_1000182A0()
{
  v1 = *(v0 + *(type metadata accessor for AllContactsInBatches(0) + 24));
  sub_100003760(&unk_100045620, &unk_100030750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100030440;
  *(v2 + 32) = CNContactIdentifierKey;
  v3 = objc_allocWithZone(CNContactFetchRequest);
  v4 = CNContactIdentifierKey;
  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 initWithKeysToFetch:isa];

  v33 = 0;
  v7 = [v1 executeFetchRequest:v6 error:&v33];

  if (v7)
  {
    v8 = v33;
    v9 = [v7 value];

    v34 = v9;
    sub_100003760(&qword_1000458F0, &qword_100030938);
    swift_dynamicCast();
    v10 = v33;
    if (v33 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      v13 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v17 = [v14 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10002642C(0, *(v13 + 2) + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          v13 = sub_10002642C((v21 > 1), v22 + 1, 1, v13);
        }

        *(v13 + 2) = v22 + 1;
        v23 = &v13[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        ++v12;
        if (v16 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_23:
  }

  else
  {
    v24 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_10001DC5C(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "failed to fetch contact identifiers: %s", v27, 0xCu);
      sub_100003850(v28);
    }

    return _swiftEmptyArrayStorage;
  }

  return v13;
}

unint64_t sub_1000186B0(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_100018728(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000187B0()
{
  v1 = sub_100019044(v0);
  sub_10001971C(v0);
  return v1;
}

uint64_t sub_1000187E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    sub_100018FE0(v3, v4);
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3 - 1;
    while (1)
    {
      v9 = sub_100016E28();
      if (!v9)
      {
        break;
      }

      *(a2 + 8 * v7) = v9;
      if (v8 == v7)
      {
        goto LABEL_12;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000188A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016E28();
  *a1 = result;
  return result;
}

void sub_1000188C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100003760(&qword_100044CC0, &unk_100030940);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1000189B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003760(&qword_100044F50, &qword_100030240);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 112);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100018AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003760(&qword_100044F50, &qword_100030240);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 112);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100018BCC()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_10000702C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100018CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
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

uint64_t sub_100018D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
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

void sub_100018E30()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_100018ED4();
    if (v1 <= 0x3F)
    {
      sub_100018F38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100018ED4()
{
  if (!qword_100045A58)
  {
    sub_1000039EC(&qword_100045A60, "*W");
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100045A58);
    }
  }
}

unint64_t sub_100018F38()
{
  result = qword_100045A68;
  if (!qword_100045A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045A68);
  }

  return result;
}

unint64_t sub_100018F88()
{
  result = qword_100045AA0;
  if (!qword_100045AA0)
  {
    type metadata accessor for AllContactsInBatches(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AA0);
  }

  return result;
}

uint64_t sub_100018FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllContactsInBatches(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100019044(uint64_t a1)
{
  v2 = type metadata accessor for AllContactsInBatches(0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019778(a1, v6);
  v7 = 0;
  v66 = 0;
  v8 = &v6[v2[5]];
  v9 = _swiftEmptyArrayStorage;
  v67 = &_swiftEmptyArrayStorage[4];
  *&v10 = 134218242;
  v64 = v10;
  v63 = v2;
  v65 = v6;
  v11 = *v8;
  if (!*v8)
  {
    goto LABEL_3;
  }

LABEL_2:
  v13 = *(v8 + 1);
  v12 = *(v8 + 2);
  for (i = *(v8 + 3); ; *(v8 + 3) = i)
  {
    v15 = i >> 1;
    if (v12 == i >> 1)
    {
      break;
    }

    if (v12 >= (i >> 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v16 = *&v6[v2[7]];
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v17 = v15 - v12;
    if (__OFSUB__(v15, v12))
    {
      goto LABEL_64;
    }

    v70 = v9;
    v18 = i >> 1;
    if (v17 >= v16)
    {
      v18 = v12 + v16;
      if (__OFADD__(v12, v16))
      {
        goto LABEL_71;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_65;
    }

    if (v15 < v18)
    {
      goto LABEL_66;
    }

    if (v18 < 0)
    {
      goto LABEL_67;
    }

    if (v17 >= v16)
    {
      v19 = __OFADD__(v12, v16);
      v20 = v12 + v16;
      if (v19)
      {
        goto LABEL_72;
      }

      if (v15 < v20)
      {
        goto LABEL_70;
      }

      v15 = v20;
    }

    if (v15 < v12)
    {
      goto LABEL_68;
    }

    v69 = v7;
    *v8 = v11;
    *(v8 + 1) = v13;
    *(v8 + 2) = v15;
    *(v8 + 3) = i;
    v21 = qword_1000446D8;
    swift_unknownObjectRetain_n();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = objc_allocWithZone(CNContactFetchRequest);
    sub_100003760(&qword_100044FD0, &qword_100030260);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v71 = [v22 initWithKeysToFetch:isa];

    if ((i & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_23:
      sub_1000188C8(v11, v13, v12, i & 1 | (2 * v18));
      goto LABEL_30;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = _swiftEmptyArrayStorage;
    }

    v25 = v24[2];

    if (__OFSUB__(v18, v12))
    {
      goto LABEL_73;
    }

    if (v25 != v18 - v12)
    {
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }

LABEL_30:
    swift_unknownObjectRelease();
    v26 = objc_opt_self();
    v27 = Array._bridgeToObjectiveC()().super.isa;

    v28 = [v26 predicateForContactsWithIdentifiers:v27];

    v29 = v71;
    [v71 setPredicate:v28];

    v68 = objc_autoreleasePoolPush();
    v30 = *&v6[v2[6]];
    v73 = 0;
    v31 = [v30 executeFetchRequest:v29 error:&v73];
    if (v31)
    {
      v32 = v31;
      v33 = v73;
      v34 = [v32 value];

      v73 = v34;
      sub_100003760(&qword_1000458F0, &qword_100030938);
      v35 = swift_dynamicCast();
      v7 = v69;
      v9 = v70;
      if (v35)
      {
        v36 = v72;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v37 = v73;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v66 = 0;
      swift_unknownObjectRetain();
      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v73 = v41;
        *v40 = v64;
        if (__OFSUB__(v18, v12))
        {
          goto LABEL_75;
        }

        v42 = v41;
        *(v40 + 4) = v18 - v12;
        swift_unknownObjectRelease();
        *(v40 + 12) = 2080;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = sub_10001DC5C(v43, v44, &v73);

        *(v40 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "failed to fetch batch of %ld: %s", v40, 0x16u);
        sub_100003850(v42);

        v36 = 0;
        v2 = v63;
      }

      else
      {

        swift_unknownObjectRelease();
        v36 = 0;
      }

      v6 = v65;
      v7 = v69;
      v9 = v70;
      v29 = v71;
    }

    objc_autoreleasePoolPop(v68);

    swift_unknownObjectRelease_n();
    if (!v36)
    {
      break;
    }

    if (v7)
    {
      v46 = v67;
      v19 = __OFSUB__(v7--, 1);
      if (v19)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v47 = v9[3];
      if (((v47 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_74;
      }

      v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
      if (v48 <= 1)
      {
        v49 = 1;
      }

      else
      {
        v49 = v48;
      }

      sub_100003760(&qword_100045AA8, &qword_100030A28);
      v50 = swift_allocObject();
      v51 = j__malloc_size(v50);
      v52 = v51 - 32;
      if (v51 < 32)
      {
        v52 = v51 - 25;
      }

      v53 = v52 >> 3;
      v50[2] = v49;
      v50[3] = 2 * (v52 >> 3);
      v54 = (v50 + 4);
      v55 = v9[3] >> 1;
      if (v9[2])
      {
        v56 = v9 + 4;
        if (v50 != v9 || v54 >= v56 + 8 * v55)
        {
          memmove(v50 + 4, v56, 8 * v55);
        }

        v9[2] = 0;
      }

      v46 = (v54 + 8 * v55);
      v57 = (v53 & 0x7FFFFFFFFFFFFFFFLL) - v55;

      v9 = v50;
      v19 = __OFSUB__(v57, 1);
      v7 = v57 - 1;
      if (v19)
      {
        goto LABEL_69;
      }
    }

    *v46 = v36;
    v67 = v46 + 1;
    v11 = *v8;
    if (*v8)
    {
      goto LABEL_2;
    }

LABEL_3:
    v11 = sub_1000182A0();
    v12 = 0;
    v13 = (v11 + 32);
    i = (2 * *(v11 + 2)) | 1;
    *v8 = v11;
    *(v8 + 1) = v11 + 32;
    *(v8 + 2) = 0;
  }

  sub_10001971C(v6);
  v58 = v9[3];
  if (v58 >= 2)
  {
    v59 = v58 >> 1;
    v19 = __OFSUB__(v59, v7);
    v60 = v59 - v7;
    if (v19)
    {
      goto LABEL_76;
    }

    v9[2] = v60;
  }

  return v9;
}

uint64_t sub_10001971C(uint64_t a1)
{
  v2 = type metadata accessor for AllContactsInBatches(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllContactsInBatches(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10001980C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019880()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1000198C4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001AD04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000198FC()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100030440;
  *(v0 + 32) = CNContactWallpaperMetadataKey;
  qword_1000462E8 = v0;

  return _objc_retain_x1();
}

id sub_100019964()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD50;
  v1 = CNContactWallpaperMetadataKey;
  v2 = CNContactSharedPhotoDisplayPreferenceKey;
  v5 = CNContactSharedPhotoDisplayPreferenceKey;
  *(v0 + 32) = CNContactWallpaperMetadataKey;
  *(v0 + 40) = v2;
  qword_1000462F0 = v0;
  v3 = v1;

  return v5;
}

double sub_1000199EC()
{
  v1 = sub_10001A564();
  v2 = v1;
  v24 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v22 = v0;
    v23 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v2;
      v11 = [v7 extensionBundleID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v13;

      if (v12 == 0xD000000000000028 && 0x80000001000321C0 == v0)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v24;
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v2 = v10;
      ++v4;
      if (v9 == i)
      {
        v16 = v24;
        v0 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  v18 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v21 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 > 0)
    {
      return v17 / v19;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 > 0)
    {
      return v17 / v19;
    }
  }

  return 0.0;
}

double sub_100019C28()
{
  v1 = sub_10001A564();
  v2 = v1;
  v24 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v22 = v0;
    v23 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v2;
      v11 = [v7 extensionBundleID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v13;

      if (v12 == 0xD00000000000002ELL && 0x8000000100032190 == v0)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v24;
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v2 = v10;
      ++v4;
      if (v9 == i)
      {
        v16 = v24;
        v0 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  v18 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v21 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 > 0)
    {
      return v17 / v19;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 > 0)
    {
      return v17 / v19;
    }
  }

  return 0.0;
}

double sub_100019E64()
{
  v1 = sub_10001A564();
  v2 = v1;
  v24 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v22 = v0;
    v23 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v2;
      v11 = [v7 extensionBundleID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v13;

      if (v12 == 0xD00000000000002CLL && 0x8000000100032160 == v0)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v24;
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v2 = v10;
      ++v4;
      if (v9 == i)
      {
        v16 = v24;
        v0 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  v18 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v21 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 > 0)
    {
      return v17 / v19;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 > 0)
    {
      return v17 / v19;
    }
  }

  return 0.0;
}

double sub_10001A0A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32);
  sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 sharedPhotoDisplayPreference] == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
  }

  v12 = sub_10001A564();
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 <= 0)
  {
    return 0.0;
  }

  else
  {
    return v11 / v13;
  }
}

double sub_10001A2A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32);
  sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 sharedPhotoDisplayPreference] == 1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
  }

  v12 = sub_10001A564();
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 <= 0)
  {
    return 0.0;
  }

  else
  {
    return v11 / v13;
  }
}

uint64_t sub_10001A4B0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___meCardPosterType;
  result = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___meCardPosterType);
  if (result == 5)
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24);
    v5 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32);
    sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider), v4);
    result = (*(v5 + 8))(v4, v5);
    if (result)
    {
      v6 = result;
      v7 = [result wallpaperMetadata];
      v8 = sub_10001AB1C(v7);

      result = v8;
    }

    *(v3 + v1) = result;
  }

  return result;
}

void *sub_10001A564()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  }

  else
  {
    v2 = sub_10001A5CC(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10001A5CC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_100003A34(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_17:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = [v9 wallpaperMetadata];

    ++v8;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v11;
    }
  }

  return _swiftEmptyArrayStorage;
}

id sub_10001A794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterDetails();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PosterDetails()
{
  result = qword_100045AE8;
  if (!qword_100045AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001A8AC()
{
  result = type metadata accessor for Logger();
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

uint64_t getEnumTagSinglePayload for PosterDetails.PosterType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PosterDetails.PosterType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001AAC8()
{
  result = qword_100045AF8;
  if (!qword_100045AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AF8);
  }

  return result;
}

uint64_t sub_10001AB1C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 extensionBundleID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD00000000000002ELL && 0x8000000100032190 == v5)
    {

      return 1;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {

      return 1;
    }

    v8 = [v1 extensionBundleID];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == 0xD000000000000028 && 0x80000001000321C0 == v11)
    {

      return 2;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {

        return 2;
      }

      else
      {
        v13 = [v1 extensionBundleID];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == 0xD00000000000002CLL && 0x8000000100032160 == v16)
        {

          return 3;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_10001AD04(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_10001AE84(void *a1)
{
  v3 = String.lowercased()();
  v4 = OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v28 = v3;
  v27 = &v28;

  v6 = sub_10000A700(sub_100004AE0, v26, v5);

  if (v6)
  {
  }

  else
  {
    swift_beginAccess();
    v7 = *(v1 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v4) = v7;
    v25 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_10002642C(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + v4) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10002642C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    *&v7[16 * v10 + 32] = v3;
    *(v1 + v4) = v7;
    swift_endAccess();
    v11 = String._bridgeToObjectiveC()();
    v12 = objc_allocWithZone(CNLabeledValue);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithLabel:v13 value:v11];

    sub_100003760(&qword_100045B68, &qword_100030B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002FBD0;
    v28._countAndFlagsBits = 0x69724F65756C6176;
    v28._object = 0xEB000000006E6967;
    AnyHashable.init<A>(_:)();
    v16 = [v25 origin];
    v17 = [objc_allocWithZone(CNValueOrigin) initWithDonationOrigin:v16];

    *(inited + 96) = sub_10001BA08();
    *(inited + 72) = v17;
    sub_100028B24(inited);
    swift_setDeallocating();
    sub_10001BA54(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 setStoreInfo:isa];

    v19 = *(v1 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v20 = [v19 emailAddresses];
    sub_100003760(&unk_100045B80, &unk_100030250);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28._countAndFlagsBits = v21;
    v22 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v28._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((v28._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setEmailAddresses:v23];
  }
}

void sub_10001B300(void *a1, id a2)
{
  v5 = [a2 stringValue];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v32 = v6;
  v33 = v8;
  v31 = &v32;

  LOBYTE(v5) = sub_10000A700(sub_100004AC0, v30, v10);

  if (v5)
  {
  }

  else
  {
    swift_beginAccess();
    v11 = *(v2 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v11;
    v29 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10002642C(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + v9) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10002642C((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v6;
    *(v15 + 5) = v8;
    *(v2 + v9) = v11;
    swift_endAccess();
    v16 = objc_allocWithZone(CNLabeledValue);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithLabel:v17 value:a2];

    sub_100003760(&qword_100045B68, &qword_100030B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002FBD0;
    v32 = 0x69724F65756C6176;
    v33 = 0xEB000000006E6967;
    AnyHashable.init<A>(_:)();
    v20 = [v29 origin];
    v21 = [objc_allocWithZone(CNValueOrigin) initWithDonationOrigin:v20];

    *(inited + 96) = sub_10001BA08();
    *(inited + 72) = v21;
    sub_100028B24(inited);
    swift_setDeallocating();
    sub_10001BA54(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 setStoreInfo:isa];

    v23 = *(v2 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v24 = [v23 phoneNumbers];
    sub_100003760(&unk_100045B80, &unk_100030250);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v25;
    v26 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v23 setPhoneNumbers:v27];
  }
}

id sub_10001B978(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10001BA08()
{
  result = qword_100045B70;
  if (!qword_100045B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045B70);
  }

  return result;
}

uint64_t sub_10001BA54(uint64_t a1)
{
  v2 = sub_100003760(&unk_100045FA0, &unk_100030B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001BABC()
{
  PersonNameComponents.namePrefix.getter();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v3 = String._bridgeToObjectiveC()();

    [v2 setNamePrefix:v3];
  }

  PersonNameComponents.givenName.getter();
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v6 = String._bridgeToObjectiveC()();

    [v5 setGivenName:v6];
  }

  PersonNameComponents.middleName.getter();
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v9 = String._bridgeToObjectiveC()();

    [v8 setMiddleName:v9];
  }

  PersonNameComponents.familyName.getter();
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v12 = String._bridgeToObjectiveC()();

    [v11 setFamilyName:v12];
  }

  PersonNameComponents.nameSuffix.getter();
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v15 = String._bridgeToObjectiveC()();

    [v14 setNameSuffix:v15];
  }

  PersonNameComponents.nickname.getter();
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v18 = String._bridgeToObjectiveC()();

    [v17 setNickname:v18];
  }
}

void sub_10001BC8C(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() singleLineStringFromPostalAddress:a2 addCountryName:0];
  if (v5)
  {
    v30 = a1;
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String.lowercased()();

    v8 = OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues;
    v9 = swift_beginAccess();
    v10 = *(v2 + v8);
    v31 = v7;
    __chkstk_darwin(v9, v11);
    v29[2] = &v31;

    LOBYTE(v6) = sub_10000A700(sub_100004AE0, v29, v10);

    if (v6)
    {

      return;
    }

    swift_beginAccess();
    v12 = *(v2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10002642C(0, *(v12 + 2) + 1, 1, v12);
      *(v2 + v8) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10002642C((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    *&v12[16 * v15 + 32] = v7;
    *(v2 + v8) = v12;
    swift_endAccess();
    a1 = v30;
  }

  v16 = objc_allocWithZone(CNLabeledValue);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithLabel:v17 value:a2];

  sub_100003760(&qword_100045B68, &qword_100030B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002FBD0;
  v31._countAndFlagsBits = 0x69724F65756C6176;
  v31._object = 0xEB000000006E6967;
  AnyHashable.init<A>(_:)();
  v20 = [a1 origin];
  v21 = [objc_allocWithZone(CNValueOrigin) initWithDonationOrigin:v20];

  *(inited + 96) = sub_10001BA08();
  *(inited + 72) = v21;
  sub_100028B24(inited);
  swift_setDeallocating();
  sub_10001BA54(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 setStoreInfo:isa];

  v23 = *(v2 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
  v24 = [v23 postalAddresses];
  sub_100003760(&unk_100045B80, &unk_100030250);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v31._countAndFlagsBits = v25;
  v26 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v31._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v28 = *((v31._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setPostalAddresses:v27];
}

uint64_t sub_10001C0B0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_100046308 = result;
  unk_100046310 = v1;
  return result;
}

void sub_10001C0E0(void *a1)
{
  v2 = v1;
  v4 = sub_100003760(&qword_1000457A8, "W");
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v68 - v12;
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v68 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for PersonNameComponents();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  __chkstk_darwin(v21, v24);
  v72 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = _swiftEmptyArrayStorage;
  v26 = [a1 identifier];
  if (!v26)
  {
    __break(1u);
    goto LABEL_39;
  }

  v27 = v26;
  v70 = v13;
  v71 = v9;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v28;

  if (qword_100044720 != -1)
  {
    swift_once();
  }

  v29 = qword_100046338;
  v30 = *(qword_100046338 + 16);
  v31 = v22 + 48;
  v13 = a1;

  v75 = v2;
  if (v30)
  {
    v69 = v22;
    v32 = 0;
    v33 = v29 + 5;
    while (1)
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      v77 = v13;
      v34(&v77);
      LODWORD(v35) = (*v31)(v17, 1, v21);
      sub_100011CE8(v17);
      if (v35 != 1)
      {
        break;
      }

      ++v32;
      v33 += 2;
      if (v30 == v32)
      {
        goto LABEL_10;
      }
    }

    v30 = v32;
LABEL_10:
    v22 = v69;
  }

  v36 = v29[2];
  if (v30 == v36)
  {

    (*(v22 + 7))(v20, 1, 1, v21);

    v30 = v74;
    v37 = (*(v22 + 6))(v20, 1, v21);
    goto LABEL_16;
  }

  if (v30 >= v36)
  {
    __break(1u);
    goto LABEL_35;
  }

  v17 = v22;
  v38 = &v29[2 * v30 + 4];
  v40 = *v38;
  v39 = *(v38 + 8);
  v77 = v13;

  v41 = v70;
  v40(&v77);

  v42 = v71;
  sub_10001CD2C(v41, v71);
  v43 = *v31;
  if ((*v31)(v42, 1, v21) == 1)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  v22 = v17;
  (*(v17 + 4))(v20, v42, v21);
  sub_100011CE8(v41);
  (*(v17 + 7))(v20, 0, 1, v21);

  v30 = v74;
  v37 = v43(v20, 1, v21);
LABEL_16:
  if (v37 != 1)
  {
    v20 = v72;
    (*(v22 + 4))();
    v77 = 0x3A656D616ELL;
    v78 = 0xE500000000000000;
    v31 = v22;
    v44 = v73;
    v45._countAndFlagsBits = v73;
    v45._object = v30;
    String.append(_:)(v45);
    v46 = sub_10001C86C(v77, v78, v44, v30);

    v29 = v46;
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v48 = [objc_opt_self() donationValueWithNameComponents:isa origin:v29];

    v17 = v48;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v31 + 1))(v20, v21);
      goto LABEL_20;
    }

LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_19;
  }

  sub_100011CE8(v20);
LABEL_20:
  if (qword_1000446E0 != -1)
  {
    swift_once();
  }

  v49 = qword_100046280;
  v50 = *(qword_100046280 + 16);
  v17 = v13;

  if (v50)
  {
    v51 = 0;
    v52 = v49 + 5;
    while (1)
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      v76 = v17;
      v53(&v77, &v76);
      v55 = v78;
      sub_10001CD9C(v77, v78);
      if (v55)
      {
        break;
      }

      ++v51;
      v52 += 2;
      if (v50 == v51)
      {
        goto LABEL_28;
      }
    }

    v50 = v51;
  }

LABEL_28:
  v56 = v49[2];
  if (v50 == v56)
  {

    return;
  }

  if (v50 >= v56)
  {
    __break(1u);
    goto LABEL_37;
  }

  v57 = &v49[2 * v50 + 4];
  v59 = *v57;
  v58 = *(v57 + 8);
  v76 = v17;

  v59(&v77, &v76);

  v60 = v78;
  if (v78)
  {
    v61 = v77;

    sub_10001CD9C(v61, v60);

    v77 = 0x3A6C69616D65;
    v78 = 0xE600000000000000;
    v62 = v73;
    v63._countAndFlagsBits = v73;
    v63._object = v30;
    String.append(_:)(v63);
    v64 = sub_10001C86C(v77, v78, v62, v30);

    v49 = v64;
    v65 = String._bridgeToObjectiveC()();

    v66 = String._bridgeToObjectiveC()();

    v67 = [objc_opt_self() donationValueWithEmailAddress:v65 label:v66 origin:v49];

    v50 = v67;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_33:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return;
    }

LABEL_37:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_33;
  }

LABEL_40:

  __break(1u);
}

id sub_10001C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  v5 = sub_100003760(&qword_100044F50, &qword_100030240);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v28 - v12;
  if (qword_100044718 != -1)
  {
    swift_once();
  }

  v29 = qword_100046308;
  v14 = OBJC_IVAR____TtC21contactsdonationagent21AccountPropertyParser_donationDate;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v17(v13, v4 + v14, v15);
  v18 = *(v16 + 56);
  v18(v13, 0, 1, v15);
  v17(v10, v4 + OBJC_IVAR____TtC21contactsdonationagent21AccountPropertyParser_expirationDate, v15);
  v18(v10, 0, 1, v15);
  v29 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = *(v16 + 48);
  isa = 0;
  if (v21(v13, 1, v15) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v13, v15);
  }

  if (v21(v10, 1, v15) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v10, v15);
  }

  v24 = objc_allocWithZone(CNDonationOrigin);
  v25 = v29;
  v26 = [v24 initWithBundleIdentifier:v29 donationIdentifier:v19 clusterIdentifier:v20 donationDate:isa expirationDate:v23];

  return v26;
}

id sub_10001CB68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyParser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountPropertyParser()
{
  result = qword_100045BB8;
  if (!qword_100045BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001CC9C()
{
  result = type metadata accessor for Date();
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

uint64_t sub_10001CD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_1000457A8, "W");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001CD9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_10001CDE0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard;
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10001CE50(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10001E250(v4);
  }

  sub_10001E260(v2);
  return v3;
}

id sub_10001CE50(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store);
  if (qword_100044708 != -1)
  {
    swift_once();
  }

  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v22 = 0;
  v10 = [v8 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v22];

  v11 = v22;
  if (!v10)
  {
    v12 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v3 + 16))(v7, a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger, v2);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10001DC5C(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not fetch Me Card %s", v15, 0xCu);
      sub_100003850(v16);
    }

    else
    {
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return v10;
}

id sub_10001D140()
{
  v1 = (v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___numberOfContacts);
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___numberOfContacts + 8) != 1)
  {
    return *v1;
  }

  result = sub_10001D18C(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_10001D18C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store);
  v23 = 0;
  v9 = [v8 unifiedContactCountWithError:&v23];
  if (v9)
  {
    v10 = v9;
    v11 = v23;
    v12 = [v10 integerValue];
  }

  else
  {
    v13 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v3 + 16))(v7, a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger, v2);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_10001DC5C(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not count contacts. %s", v16, 0xCu);
      sub_100003850(v17);
    }

    else
    {
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  return v12;
}

void *sub_10001D438()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper);
  }

  else
  {
    v2 = sub_10001D4A0(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10001D4A0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store);
  v9 = [objc_opt_self() predicateForContactsWithWallpaperMetadata];
  if (qword_100044710 != -1)
  {
    swift_once();
  }

  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = 0;
  v11 = [v8 unifiedContactsMatchingPredicate:v9 keysToFetch:isa error:&v25];

  v12 = v25;
  if (v11)
  {
    sub_10001E204();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;
  }

  else
  {
    v15 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v3 + 16))(v7, a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger, v2);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_10001DC5C(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not fetch contacts. %s", v18, 0xCu);
      sub_100003850(v19);
    }

    (*(v3 + 8))(v7, v2);

    return _swiftEmptyArrayStorage;
  }

  return v13;
}

uint64_t sub_10001D7D8()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10001E250(*(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard));
  v3 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for PosterDetailsDataProvider()
{
  result = qword_100045C10;
  if (!qword_100045C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D8F8()
{
  result = type metadata accessor for Logger();
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

void *sub_10001DA20()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 wallpaperMetadata];
      if (v7)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001DB7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *sub_10001DBE0()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10001DC0C()
{
  v1 = *(*v0 + 24);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(*v0 + 24);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10001DC5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001DD28(v11, 0, 0, 1, a1, a2);
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
    sub_10000EC48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003850(v11);
  return v7;
}

unint64_t sub_10001DD28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001DE34(a5, a6);
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

void *sub_10001DE34(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001DE80(a1, a2);
  sub_10001DFB0(&off_10003CFE8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10001DE80(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001E09C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001E09C(v10, 0);
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

uint64_t sub_10001DFB0(uint64_t result)
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

  result = sub_10001E110(result, v12, 1, v3);
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

void *sub_10001E09C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003760(&unk_100045E10, &qword_100030C98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001E110(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&unk_100045E10, &qword_100030C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10001E204()
{
  result = qword_100045E08;
  if (!qword_100045E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045E08);
  }

  return result;
}

void sub_10001E250(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10001E260(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10001E270@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003760(&qword_100044F50, &qword_100030240);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_defaults);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v11 = type metadata accessor for Date();
    v12 = swift_dynamicCast();
    v13 = *(v11 - 8);
    (*(v13 + 56))(v7, v12 ^ 1u, 1, v11);
    if ((*(v13 + 48))(v7, 1, v11) != 1)
    {
      return (*(v13 + 32))(a1, v7, v11);
    }
  }

  else
  {
    sub_10000630C(v18, &unk_100045370, &unk_100030510);
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  sub_10000630C(v7, &qword_100044F50, &qword_100030240);
  return static Date.distantPast.getter();
}

id sub_10001E4B0()
{
  v1 = &v0[OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_activityIdentifier];
  *v1 = 0xD00000000000001CLL;
  *(v1 + 1) = 0x8000000100032500;
  v2 = OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger;
  v3 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_defaults;
  *&v0[v4] = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_analyzer] = [objc_allocWithZone(type metadata accessor for CNMetricsAnalyzerEngine()) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AnalysisService();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10001E5DC(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_activityIdentifier);
  v6 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_activityIdentifier + 8);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 os_transactionInhibitorWithLabel:v7];

  [v8 start];
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    sub_10001E6E8();
  }

  else if (!state)
  {
    v10 = xpc_activity_copy_criteria(a1);
    v11 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger);
    if (v10)
    {
      [v11 analysisServiceCriteria:v10];
      swift_unknownObjectRelease();
    }

    else
    {
      [v11 analysisServiceCheckingIn];
    }
  }

  [v8 stop];

  return swift_unknownObjectRelease();
}

uint64_t sub_10001E6E8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v25 - v11;
  __chkstk_darwin(v10, v13);
  v15 = &v25 - v14;
  Date.init()();
  sub_10001E270(v8);
  static Date.+ infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v8, v2);
  v17 = static Date.> infix(_:_:)();
  v16(v12, v2);
  v16(v15, v2);
  if (v17)
  {
    Date.init()();
    v18 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_defaults);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v20 = String._bridgeToObjectiveC()();
    [v18 setObject:isa forKey:v20];

    v16(v15, v2);
    v21 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger);
    [v21 willReportAnalytics];
    sub_10001E960();
    [v21 didReportAnalytics];
  }

  else
  {
    v22 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger);
    sub_10001E270(v15);
    v23 = Date._bridgeToObjectiveC()().super.isa;
    v16(v15, v2);
    [v22 didSkipDuplicateAnalysis:v23];
  }

  return v17 & 1;
}

BOOL sub_10001E960()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_analyzer);
  if (v1)
  {
    v2 = v1;
    isa = CNMetricsAnalyzerEngine.contactsAnalysis()().super.super.isa;
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    [v4 sendDictionary:isa forEvent:v5 andLog:1];

    v6 = CNMetricsAnalyzerEngine.postersAnalysis()().super.super.isa;
    v7 = String._bridgeToObjectiveC()();
    [v4 sendDictionary:v6 forEvent:v7 andLog:1];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger) noAnalyzerAvailable];
  }

  return v1 != 0;
}

id sub_10001EA7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalysisService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001EB44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_10001EB88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002678C(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10002678C((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v23;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10002AA7C(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10002AA7C(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10001EDCC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_10002AA7C(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_10002AA7C(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_10001EFE0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

void sub_10001F18C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001F1F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10001F270(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_10001F368(uint64_t a1, uint64_t a2)
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

void sub_10001F3CC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10001F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10001F4C4(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
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

uint64_t sub_10001F570(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return sub_100003850(v6);
}

void sub_10001F5E0(char *a1)
{
  v47 = *&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  [v47 beginRestorePersistedState];
  v46 = a1;
  v2 = *sub_100003A34(&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence], *&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24]);
  v3 = sub_10000D490();
  v50[0] = 0;
  v4 = [v3 result:v50];

  v5 = v50[0];
  if (!v4)
  {
    v18 = v50[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  v50[0] = 0;
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v6 = v5;
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v7 = v50[0];
  if (v50[0])
  {
    v50[0] = _swiftEmptyArrayStorage;
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_40;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v10 = v46;
    v11 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore;
    v45 = v46;
    if (v9)
    {
      v12 = 0;
      v48 = CNDonationStoreMeCardIdentifier;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v8 + 16))
          {
            goto LABEL_37;
          }

          v13 = *(v7 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }

        v16 = *&v10[v11];
        if ([v16 canHashDonation:v13])
        {
          if (([v16 donatedValueHasBeenConfirmedOrRejected:v14 contactIdentifier:v48] & 1) == 0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v17 = *(v50[0] + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v10 = v46;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_9;
          }
        }

        else
        {
          [v47 foundUnhashableValue:v14];
        }

LABEL_9:
        ++v12;
        if (v15 == v9)
        {
          v19 = v50[0];
          goto LABEL_21;
        }
      }
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_21:

    v20 = *&v45[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_notYetExpired];
    v7 = *&v45[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_notYetExpired + 8];
    v50[0] = _swiftEmptyArrayStorage;
    v21 = (v19 >> 62) & 1;
    if (v19 < 0)
    {
      LODWORD(v21) = 1;
    }

    v44 = v21;
    if (v21 == 1)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22)
      {
LABEL_25:
        v23 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *(v19 + 16))
            {
              goto LABEL_39;
            }

            v24 = *(v19 + 8 * v23 + 32);
          }

          v25 = v24;
          v8 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_38;
          }

          if (v20(v24))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = *(v50[0] + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v23;
        }

        while (v8 != v22);
        v27 = v50[0];
LABEL_43:
        v28 = sub_1000287E8(_swiftEmptyArrayStorage);
        v29 = *&v45[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_indexDonationByIdentifierReduction + 8];
        v49 = *&v45[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_indexDonationByIdentifierReduction];
        if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
        {
          goto LABEL_75;
        }

        for (i = *(v27 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
        {

          if (i)
          {
            v31 = 0;
            v32 = v28;
            while (1)
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v31 >= *(v27 + 16))
                {
                  goto LABEL_72;
                }

                v33 = *(v27 + 8 * v31 + 32);
              }

              v34 = v33;
              v35 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                break;
              }

              v28 = v49(v32, v33);

              ++v31;
              v32 = v28;
              if (v35 == i)
              {
                goto LABEL_55;
              }
            }

            __break(1u);
LABEL_72:
            __break(1u);
          }

          else
          {
LABEL_55:

            v36 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
            swift_beginAccess();
            v37 = *&v45[v36];
            *&v45[v36] = v28;

            v38 = *&v45[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_readyForRenewal];
            v27 = *&v45[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_readyForRenewal + 8];
            if (v44)
            {
              v39 = _CocoaArrayWrapper.endIndex.getter();
              if (!v39)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v39 = *(v19 + 16);
              if (!v39)
              {
LABEL_69:

                sub_100022BA4(_swiftEmptyArrayStorage);

                sub_100021D54();
                [v47 endRestorePersistedState];
                return;
              }
            }

            v28 = 0;
            while (1)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v28 >= *(v19 + 16))
                {
                  goto LABEL_74;
                }

                v40 = *(v19 + 8 * v28 + 32);
              }

              v41 = v40;
              v42 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v38(v40))
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v43 = _swiftEmptyArrayStorage[2];
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v28;
              if (v42 == v39)
              {
                goto LABEL_69;
              }
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          ;
        }
      }
    }

    else
    {
      v22 = *(v19 + 16);
      if (v22)
      {
        goto LABEL_25;
      }
    }

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }
}

BOOL sub_10001FBD0(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 origin];
  v8 = [v7 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.timeIntervalSinceNow.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  return v10 > 0.0;
}

BOOL sub_10001FCF8(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 origin];
  v8 = [v7 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.timeIntervalSinceNow.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  return v10 < 604800.0;
}

uint64_t sub_10001FE2C(uint64_t a1, void *a2)
{

  v4 = [a2 origin];
  v5 = [v4 donationIdentifier];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100027748(v9, v6, v8, isUniquelyReferenced_nonNull_native);

  return a1;
}

uint64_t sub_10001FEF0()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup] = 1;
  v2 = *&v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_preferencesMonitor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = (v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress);
  v5 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress);
  v6 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress + 8);
  *v4 = sub_10002B200;
  v4[1] = v3;
  v7 = v1;
  sub_10000F288(v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = (v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable);
  v10 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable);
  v11 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable + 8);
  *v9 = sub_10002B208;
  v9[1] = v8;
  v12 = v7;
  sub_10000F288(v10);
  sub_10000ECD0();
  v13 = sub_100003A34(&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider], *&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider + 24]);
  v14 = &v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_environment];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *v13;
  v17 = *sub_100003A34(v14, *(v14 + 3));

  sub_100028658(v17, sub_10002B248, v15, v16);

  v18 = *&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v24[4] = sub_10002B250;
  v24[5] = v19;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_10002B9B4;
  v24[3] = &unk_10003E930;
  v20 = _Block_copy(v24);
  v21 = v12;

  v22 = [v18 performWriterBlock:v20];
  _Block_release(v20);
  return swift_unknownObjectRelease();
}

uint64_t sub_100020144()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    aBlock[4] = sub_10002B2D4;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B9B4;
    aBlock[3] = &unk_10003E980;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    v6 = [v1 performWriterBlock:v4];
    _Block_release(v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100020274(char a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v10[4] = sub_10002B360;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002B9B4;
  v10[3] = &unk_10003EAC0;
  v6 = _Block_copy(v10);
  v7 = a2;

  v8 = [v4 performWriterBlock:v6];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

id sub_100020374(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100021FB0((a3 & 1) == 0);
  if ((*(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup) & 1) == 0)
  {
    v5 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter);
    v6 = CNDonationStoreMeCardValuesDidChangeNotification;

    return [v5 postNotificationName:v6 object:0];
  }

  return result;
}

uint64_t sub_1000203F0(char a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v10[4] = sub_10002B314;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002B9B4;
  v10[3] = &unk_10003E9D0;
  v6 = _Block_copy(v10);
  v7 = a2;

  v8 = [v4 performWriterBlock:v6];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

id sub_1000204F0(uint64_t a1, char a2, char *a3)
{
  if (a2)
  {
    return sub_1000221A0();
  }

  v5 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v10[4] = sub_10002B320;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002B9B4;
  v10[3] = &unk_10003EA20;
  v7 = _Block_copy(v10);
  v8 = a3;

  v9 = [v5 performWriterBlock:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_1000205F4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(a1, v14);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v15)
  {
    a2();
  }

  else
  {
    a2();
    sub_100022BA4(a5);
  }

  v18 = *(a4 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  [v18 agentDidHandleRequest:a6];
  v19 = Date.init()();
  __chkstk_darwin(v19, v20);
  *&v25[-16] = v17;

  v21 = sub_10001EFE0(sub_10002B6C4, &v25[-32], a5);
  v22 = v21;
  if (v21 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v18 preExpiredDonations:isa];

    sub_100022BA4(v22);
  }

LABEL_7:

  return (*(v12 + 8))(v17, v11);
}

BOOL sub_100020804(id *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 origin];
  v9 = [v8 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = Date.compare(_:)();
  (*(v3 + 8))(v7, v2);
  return v10 == -1;
}

unint64_t sub_100020B0C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    if (result >> 62)
    {
      v18 = result;
      v19 = a3;
      v20 = a2;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v20;
      a3 = v19;
      v22 = v21;
      result = v18;
      if (v22 <= 0)
      {
        return result;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (!*(result + 16))
    {
      return result;
    }

    goto LABEL_11;
  }

  if (result || a2 != 0xE000000000000000)
  {
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v9;
    a3 = v10;
    v12 = v11;
    result = v8;
    if ((v12 & 1) == 0)
    {
LABEL_11:
      sub_100020D84(result, a2, a3);
      sub_100021D54();
      v13 = *&v5[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
      v14 = swift_allocObject();
      v14[2] = v5;
      v14[3] = a4;
      v14[4] = a5;
      v23[4] = sub_10002B114;
      v23[5] = v14;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_10002B9B4;
      v23[3] = &unk_10003E778;
      v15 = _Block_copy(v23);
      v16 = v5;

      v17 = [v13 performReaderBlock:v15];
      _Block_release(v15);
      result = swift_unknownObjectRelease();
      if ((v16[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup] & 1) == 0)
      {
        return [*&v16[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter] postNotificationName:CNDonationStoreMeCardValuesDidChangeNotification object:0];
      }
    }
  }

  return result;
}

void sub_100020D10(uint64_t a1, uint64_t a2)
{
  sub_100021D54();
  if ((*(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup) & 1) == 0)
  {
    v3 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter);
    v4 = CNDonationStoreMeCardValuesDidChangeNotification;

    [v3 postNotificationName:v4 object:0];
  }
}

unint64_t sub_100020D84(unint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = *(result + 16);
      if (v6)
      {
        v7 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
        v8 = (result + 40);
        do
        {
          v11 = *(v8 - 1);
          v10 = *v8;
          swift_beginAccess();
          v12 = *(v4 + v7);

          v13 = sub_100026A0C(v11, v10);
          if (v14)
          {
            v15 = v13;
            v16 = *(v4 + v7);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v18 = *(v4 + v7);
            *(v4 + v7) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100027A28();
            }

            v9 = *(*(v18 + 48) + 16 * v15 + 8);

            sub_100027434(v15, v18);
            *(v4 + v7) = v18;
          }

          swift_endAccess();

          v8 += 2;
          --v6;
        }

        while (v6);
      }

      return result;
    }

    v34 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
    swift_beginAccess();
    v19 = *(v4 + v34);
    sub_10002B0DC(v5, a2, 2u);

    v37 = sub_100029780(v36, v5, a2);
    sub_10002AFF0(v5, a2, 2u);

    v38 = sub_10001EB88(v37);

    v39 = v38[2];
    if (!v39)
    {
    }

    v40 = 0;
    v5 = (v38 + 5);
    while (v40 < v38[2])
    {
      v19 = *(v5 - 8);
      v42 = *v5;
      swift_beginAccess();
      v43 = *(v4 + v34);

      v44 = sub_100026A0C(v19, v42);
      if (v45)
      {
        v19 = v44;
        v46 = *(v4 + v34);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v4 + v34);
        *(v4 + v34) = 0x8000000000000000;
        if (!v47)
        {
          sub_100027A28();
        }

        v41 = *(*(v48 + 48) + 16 * v19 + 8);

        sub_100027434(v19, v48);
        *(v4 + v34) = v48;
      }

      ++v40;
      swift_endAccess();

      v5 += 16;
      if (v39 == v40)
      {
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
    v19 = result & 0xFFFFFFFFFFFFFF8;
    if (!(result >> 62))
    {
      v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:
  v21 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore;
  v78 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger;
  v22 = v4;
  v23 = v22;
  if (v20)
  {
    v24 = 0;
    v80 = v5 & 0xC000000000000001;
    v76 = v22;
    v77 = CNDonationStoreMeCardIdentifier;
    while (1)
    {
      if (v80)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v19 + 16))
        {
          goto LABEL_60;
        }

        v25 = *(v5 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_59;
      }

      v28 = *(v4 + v21);
      if ([v28 canHashDonation:v25])
      {
        if (([v28 donatedValueHasBeenConfirmedOrRejected:v26 contactIdentifier:v77] & 1) == 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v29 = v21;
          v30 = v20;
          v31 = v19;
          v32 = v5;
          v33 = v82[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v32;
          v19 = v31;
          v20 = v30;
          v21 = v29;
          v23 = v76;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_16;
        }
      }

      else
      {
        [*(v4 + v78) foundUnhashableValue:v26];
      }

LABEL_16:
      ++v24;
      if (v27 == v20)
      {
        v49 = v82;
        goto LABEL_36;
      }
    }
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_36:

  v50 = v49;
  if ((v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
  {
    v75 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v49;
    v4 = v75;
    if (v75)
    {
      goto LABEL_39;
    }

LABEL_65:
  }

  v4 = *(v49 + 16);
  if (!v4)
  {
    goto LABEL_65;
  }

LABEL_39:
  if (v4 >= 1)
  {
    v19 = 0;
    v51 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
    v79 = v50;
    v81 = v50 & 0xC000000000000001;
    while (1)
    {
      if (v81)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v50 + 8 * v19 + 32);
      }

      v55 = v54;
      v56 = [v54 origin];
      v5 = [v56 donationIdentifier];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      swift_beginAccess();
      v60 = v55;
      v61 = *&v23[v51];
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v63 = *&v23[v51];
      *&v23[v51] = 0x8000000000000000;
      v64 = sub_100026A0C(v57, v59);
      v66 = v63[2];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        goto LABEL_61;
      }

      v5 = v65;
      if (v63[3] < v69)
      {
        break;
      }

      if (v62)
      {
        goto LABEL_51;
      }

      v74 = v64;
      sub_100027A28();
      v64 = v74;
      if ((v5 & 1) == 0)
      {
LABEL_52:
        v63[(v64 >> 6) + 8] |= 1 << v64;
        v71 = (v63[6] + 16 * v64);
        *v71 = v57;
        v71[1] = v59;
        *(v63[7] + 8 * v64) = v60;
        v72 = v63[2];
        v68 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v68)
        {
          goto LABEL_62;
        }

        v63[2] = v73;
        goto LABEL_42;
      }

LABEL_41:
      v52 = v63[7];
      v53 = *(v52 + 8 * v64);
      *(v52 + 8 * v64) = v60;

LABEL_42:
      ++v19;
      *&v23[v51] = v63;
      swift_endAccess();

      v50 = v79;
      if (v4 == v19)
      {
      }
    }

    sub_100026EE8(v69, v62);
    v64 = sub_100026A0C(v57, v59);
    if ((v5 & 1) != (v70 & 1))
    {
      goto LABEL_69;
    }

LABEL_51:
    if ((v5 & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000213D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v8 = *&a2[v7];
  v9 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_diskScheduler];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v8;
  v10[4] = a3;
  v10[5] = a4;
  aBlock[4] = sub_10002B168;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001EB44;
  aBlock[3] = &unk_10003E7C8;
  v11 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();
  v12 = a2;

  [v9 performBlock:v11];
  _Block_release(v11);
}

void sub_10002150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003A34((a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence), *(a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24));
  v9 = *(a2 + 16);
  if (!v9)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v19 = a4;
  v10 = sub_100026704(v9, 0);
  v11 = sub_100027E5C(&aBlock, v10 + 4, v9, a2);

  sub_100016CE4();
  if (v11 == v9)
  {
    a4 = v19;
LABEL_5:
    v12 = *v8;
    v13 = sub_10000E250(v10);

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v24 = sub_10002B1AC;
    v25 = v14;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10002B9B4;
    v23 = &unk_10003E818;
    v15 = _Block_copy(&aBlock);

    v16 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler);
    [v13 addSuccessBlock:v15 scheduler:v16];
    _Block_release(v15);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v24 = sub_10002B1D8;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10002177C;
    v23 = &unk_10003E868;
    v18 = _Block_copy(&aBlock);

    [v13 addFailureBlock:v18 scheduler:v16];
    _Block_release(v18);

    return;
  }

  __break(1u);
}

void sub_100021784(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1000217F0(void *a1, void (*a2)(void))
{
  if ([a1 isLeft])
  {
    v4 = [a1 left];
  }

  else
  {
    v4 = [a1 right];
  }

  a2();
}

void sub_1000219FC(void (*a1)(id))
{
  v2 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() eitherWithRight:v2];

    a1(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100021AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact);
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v5 = v3;
}

id sub_100021B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v18 = a5;
  v12 = sub_100026704(v11, 0);
  v13 = sub_100027E5C(aBlock, v12 + 4, v11, v10);

  result = sub_100016CE4();
  if (v13 == v11)
  {
    a5 = v18;
LABEL_5:
    v15 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler);
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = v12;
    aBlock[4] = sub_10002B468;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EB44;
    aBlock[3] = &unk_10003EBD8;
    v17 = _Block_copy(aBlock);

    [v15 performBlock:v17];
    _Block_release(v17);
    return [*(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger) agentDidHandleRequest:a5];
  }

  __break(1u);
  return result;
}

void sub_100021D54()
{
  v1 = v0;
  v2 = sub_100003760(&qword_1000457A8, "W");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v23 = v1;
  v10 = sub_100026704(v9, 0);
  v11 = sub_100027E5C(&v25, v10 + 4, v9, v8);

  sub_100016CE4();
  if (v11 == v9)
  {
    v1 = v23;
    v12 = v10;
LABEL_5:
    v13 = (v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider);
    v14 = *sub_100003A34((v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider), *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider + 24));
    v15 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedName;
    swift_beginAccess();
    sub_100011DB8(v14 + v15, v6, &qword_1000457A8, "W");
    v16 = *(*sub_100003A34(v13, v13[3]) + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedEmailAddresses);
    v17 = type metadata accessor for ContactRebuilder();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations] = v12;
    sub_100011DB8(v6, &v18[OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_curatedName], &qword_1000457A8, "W");
    *&v18[OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_curatedEmailAddresses] = v16;
    v24.receiver = v18;
    v24.super_class = v17;

    v19 = objc_msgSendSuper2(&v24, "init");
    sub_10000630C(v6, &qword_1000457A8, "W");
    sub_100010290();
    sub_100010DA0();
    v20 = sub_100010F5C();

    v21 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact);
    *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact) = v20;

    return;
  }

  __break(1u);
}

id sub_100021FB0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  if ((a1 & 1) == 0)
  {
    result = [v3 featureWillDisable];
    v5 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState;
    v6 = 1;
LABEL_8:
    *(v1 + v5) = v6;
    return result;
  }

  result = [v3 featureWillEnable];
  v5 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState;
  if (*(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) != 1)
  {
    v6 = 3;
    goto LABEL_8;
  }

  *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) = 2;

  return sub_1000221A0();
}

id sub_10002203C(uint64_t a1, char *a2)
{
  v3 = sub_1000287E8(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v5 = *&a2[v4];
  *&a2[v4] = v3;

  sub_100021D54();
  v6 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = nullsub_1;
  v7[4] = 0;
  aBlock[4] = sub_10002B900;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B9B4;
  aBlock[3] = &unk_10003EA70;
  v8 = _Block_copy(aBlock);
  v9 = a2;

  v10 = [v6 performReaderBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
  return [*&v9[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] featureDidDisable];
}

id sub_1000221A0()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] == 2)
  {
    v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] = 3;
    v2 = swift_allocObject();
    *(v2 + 16) = _swiftEmptyArrayStorage;
    v3 = (v2 + 16);
    [*&v1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] willDiscoverExtensions];
    v4 = [objc_opt_self() currentExtensionsObservable];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    v43 = sub_10002B0B0;
    v44 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_10001F570;
    v42 = &unk_10003E688;
    v7 = _Block_copy(&aBlock);
    v8 = v1;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v43 = sub_10002B0B8;
    v44 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_10001EB44;
    v42 = &unk_10003E6D8;
    v10 = _Block_copy(&aBlock);
    v11 = v8;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v43 = sub_10002B0D4;
    v44 = v12;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_10002177C;
    v42 = &unk_10003E728;
    v13 = _Block_copy(&aBlock);
    v14 = v11;

    v15 = [v5 observerWithResultBlock:v7 completionBlock:v10 failureBlock:v13];
    _Block_release(v13);
    _Block_release(v10);
    _Block_release(v7);
    v16 = [v4 subscribe:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = type metadata accessor for AccountsDonationSolicitor();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC21contactsdonationagent25AccountsDonationSolicitor_agent] = v14;
    v39.receiver = v18;
    v39.super_class = v17;
    v19 = v14;
    v20 = objc_msgSendSuper2(&v39, "init");
    swift_beginAccess();
    v21 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_100026538(0, v21[2] + 1, 1, v21);
      *v3 = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_100026538((v23 > 1), v24 + 1, 1, v21);
    }

    v42 = v17;
    v43 = &off_10003D918;
    *&aBlock = v20;
    v21[2] = v24 + 1;
    sub_100003B50(&aBlock, &v21[5 * v24 + 4]);
    *v3 = v21;
    swift_endAccess();
    v25 = type metadata accessor for SIMCardDonationSolicitor();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC21contactsdonationagent24SIMCardDonationSolicitor_agent] = v19;
    v38.receiver = v26;
    v38.super_class = v25;
    v27 = v19;
    v28 = objc_msgSendSuper2(&v38, "init");
    swift_beginAccess();
    v29 = *v3;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_100026538(0, v29[2] + 1, 1, v29);
      *v3 = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v29 = sub_100026538((v31 > 1), v32 + 1, 1, v29);
    }

    v42 = v25;
    v43 = &off_10003D908;
    *&aBlock = v28;
    v29[2] = v33;
    v34 = (v29 + 4);
    sub_100003B50(&aBlock, &v29[5 * v32 + 4]);
    *v3 = v29;
    swift_endAccess();

    do
    {
      sub_100003B68(v34, &aBlock);
      v35 = v42;
      v36 = v43;
      sub_100003A34(&aBlock, v42);
      (v36[1])(1, v35, v36);
      sub_100003850(&aBlock);
      v34 += 40;
      --v33;
    }

    while (v33);
  }

  return [*&v1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] featureDidEnable];
}

void sub_1000226F4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000EC48(a1, &v16);
  sub_1000038E8(0, &unk_100045F90, CNDDonorExtension_ptr);
  if (swift_dynamicCast())
  {
    v6 = v19;
    v7 = type metadata accessor for ExtensionDonationSolicitor();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC21contactsdonationagent26ExtensionDonationSolicitor_donor] = v6;
    v20.receiver = v8;
    v20.super_class = v7;
    v9 = v6;
    v10 = objc_msgSendSuper2(&v20, "init");
    swift_beginAccess();
    v11 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100026538(0, v11[2] + 1, 1, v11);
      *(a3 + 16) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100026538((v13 > 1), v14 + 1, 1, v11);
    }

    v17 = v7;
    v18 = &off_10003D928;
    *&v16 = v10;
    v11[2] = v14 + 1;
    sub_100003B50(&v16, &v11[5 * v14 + 4]);
    *(a3 + 16) = v11;
    swift_endAccess();
  }

  else
  {
    v15 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
    sub_100003A34(a1, a1[3]);
    [v15 didDiscoverUnexpectedExtensionType:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
  }
}

void sub_1000228C4(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) = 2;
  v2 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v3 = _convertErrorToNSError(_:)();
  [v2 didFailToDiscoverExtensions:v3];
}

void sub_100022934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(a2 + v6) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v43 = *(a2 + v6);

  v15 = 0;
  v40 = a2;
  v41 = v9;
  v39 = v6;
  while (v13)
  {
    v18 = a4;
LABEL_13:
    v20 = __clz(__rbit64(v13)) | (v15 << 6);
    v21 = (*(v43 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v43 + 56) + 8 * v20);

    v17 = v24;
    v25 = [v17 origin];
    v26 = [v25 bundleIdentifier];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v27 == a3;
    a4 = v18;
    v30 = v30 && v29 == v18;
    if (v30)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    v44 = v17;
    swift_beginAccess();
    v32 = *(v40 + v39);
    v33 = sub_100026A0C(v23, v22);
    v35 = v34;

    if (v35)
    {
      v36 = *(v40 + v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v40 + v39);
      *(v40 + v39) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100027A28();
      }

      v16 = *(*(v38 + 48) + 16 * v33 + 8);

      sub_100027434(v33, v38);
      *(v40 + v39) = v38;
    }

    swift_endAccess();
    v17 = v44;
LABEL_6:
    v13 &= v13 - 1;

    v9 = v41;
  }

  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return;
    }

    v13 = *(v9 + 8 * v19);
    ++v15;
    if (v13)
    {
      v18 = a4;
      v15 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100022BA4(unint64_t a1)
{
  v33 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_26:
    v21 = a1;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v21;
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v30 = a1 & 0xC000000000000001;
      v28 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_internalBundleIdentifiers;
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      v3 = a1 + 32;
      do
      {
        while (1)
        {
          if (v30)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *(v29 + 16))
            {
              goto LABEL_25;
            }

            a1 = *(v3 + 8 * v2);
          }

          v5 = a1;
          if (__OFADD__(v2++, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v7 = *&v31[v28];
          v8 = [a1 origin];
          v9 = [v8 bundleIdentifier];

          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          if (*(v7 + 16))
          {
            v13 = *(v7 + 40);
            Hasher.init(_seed:)();
            String.hash(into:)();
            v14 = Hasher._finalize()();
            v15 = -1 << *(v7 + 32);
            v16 = v14 & ~v15;
            if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
            {
              break;
            }
          }

LABEL_4:

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = *(v33 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = specialized ContiguousArray._endMutation()();
          if (v2 == v1)
          {
            goto LABEL_22;
          }
        }

        v17 = ~v15;
        while (1)
        {
          v18 = (*(v7 + 48) + 16 * v16);
          v19 = *v18 == v10 && v18[1] == v12;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      while (v2 != v1);
LABEL_22:
      v20 = v33;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v20 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if ((v20 & 0x4000000000000000) != 0)
  {
LABEL_31:
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_32;
    }

LABEL_30:
    v22 = [objc_msgSend(objc_opt_self() "defaultProvider")];
    swift_unknownObjectRelease();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v31;
    aBlock[4] = sub_10002AF18;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EB44;
    aBlock[3] = &unk_10003E480;
    v24 = _Block_copy(aBlock);
    v25 = v31;

    v26 = [v22 afterDelay:v24 performBlock:2.0];
    _Block_release(v24);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (*(v20 + 16) > 0)
  {
    goto LABEL_30;
  }

LABEL_32:
}

void sub_100022F60(unint64_t a1, char *a2)
{
  v32 = [objc_allocWithZone(CNDDonorLoader) init];
  v3 = sub_100008F0C(a1);
  v4 = 0;
  v5 = *(v3 + 64);
  v28 = v3 + 64;
  v31 = v3;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v29 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger;
  if ((v7 & v5) != 0)
  {
    do
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      v13 = (*(v31 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v31 + 56) + 8 * v12);
      v17 = *&a2[v29];
      sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;
      v19 = String._bridgeToObjectiveC()();
      [v17 willRenewValues:isa withDonor:v19];

      v20 = String._bridgeToObjectiveC()();

      v21 = [v32 donorWithIdentifier:v20];

      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = v16;
      v37 = sub_10002AF38;
      v38 = v22;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_1000029C4;
      v36 = &unk_10003E4D0;
      v23 = _Block_copy(&aBlock);
      v24 = a2;

      [v21 addSuccessBlock:v23];
      _Block_release(v23);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v37 = sub_10002AF40;
      v38 = v25;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_10002177C;
      v36 = &unk_10003E520;
      v26 = _Block_copy(&aBlock);
      v27 = v24;

      [v21 addFailureBlock:v26];
      _Block_release(v26);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v28 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_100023290(uint64_t a1, char *a2, unint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    if (a3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
      if (result)
      {
LABEL_4:
        if (v8 < 1)
        {
          __break(1u);
        }

        else
        {
          v9 = 0;
          do
          {
            if ((a3 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v10 = *(a3 + 8 * v9 + 32);
            }

            v11 = v10;
            ++v9;
            v12 = swift_allocObject();
            *(v12 + 16) = a2;
            *(v12 + 24) = v11;
            aBlock[4] = sub_10002AFE4;
            aBlock[5] = v12;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000239C8;
            aBlock[3] = &unk_10003E570;
            v13 = _Block_copy(aBlock);
            v14 = a2;
            v15 = v11;

            [v7 renewExpirationDateForDonatedValue:v15 acknowledgementHandler:v13];
            _Block_release(v13);
          }

          while (v8 != v9);
          return swift_unknownObjectRelease();
        }

        return result;
      }
    }

    else
    {
      v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v16 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];

    return [v16 couldNotRenewBecauseNotADonorExtension:a1];
  }
}

void sub_1000234D4(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = sub_100003760(&qword_100044F50, &qword_100030240);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &aBlock - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011DB8(a1, v12, &qword_100044F50, &qword_100030240);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000630C(v12, &qword_100044F50, &qword_100030240);
    if (a2)
    {
      v19 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
      swift_errorRetain();
      v20 = _convertErrorToNSError(_:)();
      [v19 couldNotRenewBecauseDonorError:v20];
    }

    else
    {
      v40 = [NSError errorWithDomain:CNDonationErrorDomain code:2 userInfo:0];
      if (v40)
      {
        v41 = v40;
        v42 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
        v43 = _convertErrorToNSError(_:)();
        [v42 couldNotRenewBecauseDonorError:v43];
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v21 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v21 didRenewValue:a4 untilDate:isa];

    Date.timeIntervalSinceNow.getter();
    if (v23 <= 0.0)
    {
      sub_100003760(&qword_100044CC0, &unk_100030940);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10002FBD0;
      v31 = [a4 origin];
      v32 = [v31 donationIdentifier];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      *(v30 + 32) = v33;
      *(v30 + 40) = v35;
      v27 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
      v36 = swift_allocObject();
      *(v36 + 16) = a3;
      *(v36 + 24) = v30;
      *(v36 + 32) = 0;
      *(v36 + 40) = 1;
      *(v36 + 48) = nullsub_1;
      *(v36 + 56) = 0;
      v48 = sub_10002B00C;
      v49 = v36;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v29 = &unk_10003E5C0;
    }

    else
    {
      sub_100003760(&unk_100045620, &unk_100030750);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100030440;
      v25 = Date._bridgeToObjectiveC()().super.isa;
      v26 = [a4 copyWithNewExpirationDate:v25];

      *(v24 + 32) = v26;
      v27 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
      v28 = swift_allocObject();
      *(v28 + 16) = a3;
      *(v28 + 24) = v24;
      *(v28 + 32) = 0;
      *(v28 + 40) = 0;
      *(v28 + 48) = nullsub_1;
      *(v28 + 56) = 0;
      v48 = sub_10002B9B8;
      v49 = v28;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v29 = &unk_10003E610;
    }

    v46 = sub_10002B9B4;
    v47 = v29;
    v37 = _Block_copy(&aBlock);
    v38 = a3;

    v39 = [v27 performWriterBlock:{v37, aBlock, v45}];
    _Block_release(v37);
    swift_unknownObjectRelease();
    (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_1000239C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100003760(&qword_100044F50, &qword_100030240);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_10000630C(v10, &qword_100044F50, &qword_100030240);
}

uint64_t sub_100023B80()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger) willLoadExtensionVersions];
  v2 = *sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence), *(v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24));
  v3 = sub_10000D904();
  v12[0] = 0;
  v4 = [v3 result:v12];

  v5 = v12[0];
  if (v4)
  {
    v12[0] = 0;
    v6 = v5;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    v7 = v12[0];
    if (!v12[0])
    {
      v7 = sub_1000288EC(_swiftEmptyArrayStorage);
    }

    v8 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions;
    swift_beginAccess();
    v9 = *(v1 + v8);
    *(v1 + v8) = v7;
  }

  else
  {
    v11 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100023CDC()
{
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) != 1)
  {
    v1 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions;
    swift_beginAccess();
    v2 = *(v0 + v1);
    if (!v2)
    {
      sub_100023B80();
      v2 = *(v0 + v1);
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    v3 = qword_100044718;

    if (v3 == -1)
    {
      if (*(v2 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_once();
      if (*(v2 + 16))
      {
LABEL_6:
        v4 = sub_100026A0C(qword_100046308, unk_100046310);
        if (v5)
        {
          v6 = *(*(v2 + 56) + 8 * v4);

          if (v6 >= 3)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }

LABEL_11:
    sub_10002444C();
LABEL_12:
    sub_100003760(&unk_100044F20, &unk_10002FCB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10002FBD0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0xD00000000000001ALL;
    *(v7 + 40) = 0x8000000100032730;
    print(_:separator:terminator:)();

    v8 = [objc_opt_self() currentExtensionsObservable];
    v9 = objc_opt_self();
    v23 = sub_100024100;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10001F570;
    v22 = &unk_10003E390;
    v10 = _Block_copy(&aBlock);
    v23 = sub_1000241F8;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10001EB44;
    v22 = &unk_10003E3B8;
    v11 = _Block_copy(&aBlock);
    v23 = sub_100024294;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10002177C;
    v22 = &unk_10003E3E0;
    v12 = _Block_copy(&aBlock);
    v13 = [v9 observerWithResultBlock:v10 completionBlock:v11 failureBlock:v12];
    _Block_release(v12);
    _Block_release(v11);
    _Block_release(v10);
    v14 = [v8 subscribe:v13];
    swift_unknownObjectRelease();
    v15 = [objc_opt_self() mainThreadScheduler];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v23 = sub_10002AEF8;
    v24 = v16;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10001EB44;
    v22 = &unk_10003E430;
    v17 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v18 = [v15 afterDelay:v17 performBlock:10000.0];
    _Block_release(v17);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100024100()
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;
  _StringGuts.grow(_:)(25);
  v1._object = 0x80000001000327B0;
  v1._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

uint64_t sub_1000241F8()
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x8000000100032790;
  print(_:separator:terminator:)();
}

uint64_t sub_100024294()
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;
  _StringGuts.grow(_:)(20);
  v1._object = 0x8000000100032770;
  v1._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v1);
  sub_100003760(&qword_100045F70, &qword_100030DB0);
  _print_unlocked<A, B>(_:_:)();
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

id sub_10002439C(void *a1)
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002FBD0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x8000000100032750;
  print(_:separator:terminator:)();

  return [a1 cancel];
}

void sub_10002444C()
{
  if (qword_100044718 != -1)
  {
    swift_once();
  }

  v1 = qword_100046308;
  v2 = unk_100046310;
  v3 = *&v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v2;
  aBlock[4] = sub_10002AEB4;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B9B4;
  aBlock[3] = &unk_10003E368;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  v7 = [v3 performWriterBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
  v8 = [objc_opt_self() defaultStore];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v8 accounts];
  if (!v10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v10;
  aBlock[0] = 0;
  sub_1000038E8(0, &qword_100044C78, ACAccount_ptr);
  static Array._forceBridgeFromObjectiveC(_:result:)();
  v12 = aBlock[0];
  if (!aBlock[0])
  {
LABEL_23:
    __break(1u);
    return;
  }

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    sub_10002479C(0, v15);
  }

LABEL_15:

  v18 = sub_100023B1C();
  if (*v17)
  {
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v19;
    *v19 = 0x8000000000000000;
    sub_1000275E4(3, v1, v2, isUniquelyReferenced_nonNull_native);
    v21 = *v19;
    *v19 = v26;
  }

  (v18)(aBlock, 0);
  [*&v6[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] willSaveExtensionVersions];
  v22 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions;
  swift_beginAccess();
  if (*&v6[v22])
  {
    v23 = *sub_100003A34(&v6[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence], *&v6[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24]);

    v25 = sub_10000E62C(v24);
  }
}

void sub_10002479C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountDonationReceiver);
  if (!v6)
  {
    swift_unknownObjectRetain();
    v6 = v3;
  }

  v7 = type metadata accessor for AccountChangeAnalyzer();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_identifiersToRemove] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_activeRatherThanEnabledDataClasses] = &off_10003D010;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_dataClassBlacklist] = &off_10003D040;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_oldAccount] = a1;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_newAccount] = a2;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_store] = v6;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_logger] = 0;
  v35.receiver = v8;
  v35.super_class = v7;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v35, "init");
  sub_100003C18();
  sub_1000040F0();
  sub_100004318();
  v12 = *&v11[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations];
  v13 = OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_identifiersToRemove;
  swift_beginAccess();
  v14 = *&v11[v13];
  if (!(v12 >> 62))
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = &unk_100045000;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_14:

    v21 = *(v14 + 16);
    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_15:
    v22 = *(v3 + v16[477]);
    v23 = (v14 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;

      v26 = String._bridgeToObjectiveC()();

      [v22 removing:v26];

      v23 += 2;
      --v21;
    }

    while (v21);
    goto LABEL_17;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v16 = &unk_100045000;
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v15 < 1)
  {
    __break(1u);
    return;
  }

  v33 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountLogger);
  swift_bridgeObjectRetain_n();

  for (i = 0; i != v15; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v12 + 8 * i + 32);
    }

    v20 = v19;
    [v17 donating:{v19, v33}];
  }

  swift_bridgeObjectRelease_n();
  v3 = v33;
  v16 = &unk_100045000;
  v21 = *(v14 + 16);
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_17:

  sub_100004694();
  if (*(*&v11[v13] + 16))
  {
    v27 = *&v11[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_store];
    if (v27)
    {
      v28 = *&v11[v13];

      isa = Array._bridgeToObjectiveC()().super.isa;

      v30 = swift_allocObject();
      *(v30 + 16) = v11;
      aBlock[4] = sub_10002AE90;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001F1F8;
      aBlock[3] = &unk_10003E318;
      v31 = _Block_copy(aBlock);
      v32 = v11;

      [v27 removeDonatedMeCardValuesForIdentifiers:isa completionHandler:v31];
      _Block_release(v31);

      v11 = isa;
    }
  }
}

uint64_t sub_100024BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  v10 = String._bridgeToObjectiveC()();
  [v9 willRejectDonationIdentifier:v10];

  v11 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v17[4] = sub_10002AB0C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002B9B4;
  v17[3] = &unk_10003E160;
  v13 = _Block_copy(v17);
  v14 = v4;

  v15 = [v11 performWriterBlock:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

void sub_100024D48(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v9 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for CNDonationValue.Value(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v19 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v65 = &v62 - v21;
  v22 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v23 = *&a2[v22];
  if (!*(v23 + 16))
  {
    goto LABEL_7;
  }

  v24 = *&a2[v22];

  v63 = a4;
  v64 = a3;
  v25 = sub_100026A0C(a3, a4);
  if ((v26 & 1) == 0)
  {

    a4 = v63;
    a3 = v64;
LABEL_7:
    v50 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
    v51 = String._bridgeToObjectiveC()();
    [v50 couldNotRejectUnknownDonationIdentifier:v51];

    v52 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
    v53 = swift_allocObject();
    v53[2] = a2;
    v53[3] = a3;
    v54 = v66;
    v55 = v67;
    v53[4] = a4;
    v53[5] = v54;
    v53[6] = v55;
    v73 = sub_10002AB3C;
    v74 = v53;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_10001EB44;
    v72 = &unk_10003E1B0;
    v56 = _Block_copy(&aBlock);
    v57 = a2;

    [v52 performBlock:v56];
    _Block_release(v56);
    return;
  }

  v27 = *(*(v23 + 56) + 8 * v25);

  v28 = _s11ValueCasterCMa(0);
  v29 = objc_allocWithZone(v28);
  (*(v15 + 56))(v29 + OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value, 1, 1, v14);
  v68.receiver = v29;
  v68.super_class = v28;
  v30 = objc_msgSendSuper2(&v68, "init");
  v62 = v27;
  [v27 acceptDonationValueVisitor:v30];
  v31 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_100011DB8(v30 + v31, v13, &qword_100045200, &qword_1000303D0);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v65;
    sub_1000080C0(v13, v65);
    sub_10000844C(v32, v19);
    v33 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v34 = swift_allocObject();
    sub_1000080C0(v19, v34 + v33);
    v35 = swift_allocObject();
    v36 = v63;
    v37 = v64;
    v35[2] = a2;
    v35[3] = v37;
    v39 = v66;
    v38 = v67;
    v35[4] = v36;
    v35[5] = v39;
    v35[6] = v38;
    v40 = *&a2[v22];
    v41 = v36;
    v42 = a2;

    sub_10002A6C0(v43, sub_10002ACE4);
    v45 = v44;

    if (*(v45 + 16))
    {
      v46 = sub_10001EB88(v45);
      v47 = sub_10001EDCC(v45);

      v48 = swift_allocObject();
      v48[2] = v42;
      v48[3] = v47;
      v48[4] = sub_10002ADB4;
      v48[5] = v35;
      v49 = v42;

      sub_100020B0C(v46, 0, 1, sub_10002B844, v48);
    }

    else
    {

      v58 = *&v42[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
      v59 = swift_allocObject();
      v59[2] = 1;
      v59[3] = v42;
      v59[4] = v37;
      v59[5] = v41;
      v59[6] = v39;
      v59[7] = v38;
      v73 = sub_10002ADE0;
      v74 = v59;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_10001EB44;
      v72 = &unk_10003E250;
      v60 = _Block_copy(&aBlock);
      v61 = v42;

      [v58 performBlock:v60];

      _Block_release(v60);
    }

    sub_1000084B0(v65);
  }
}

uint64_t sub_100025340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_100003760(&qword_100045200, &qword_1000303D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for CNDonationValue.Value(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s11ValueCasterCMa(0);
  v18 = objc_allocWithZone(v17);
  (*(v12 + 56))(v18 + OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value, 1, 1, v11);
  v24.receiver = v18;
  v24.super_class = v17;
  v19 = objc_msgSendSuper2(&v24, "init");
  [a3 acceptDonationValueVisitor:v19];
  v20 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_100011DB8(v19 + v20, v10, &qword_100045200, &qword_1000303D0);

  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000080C0(v10, v16);
    v22 = _sSo15CNDonationValueC21contactsdonationagentE0B0O2eeoiySbAE_AEtFZ_0(v16, a4);
    sub_1000084B0(v16);
    return v22 & 1;
  }

  return result;
}

void sub_100025578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  v10 = String._bridgeToObjectiveC()();
  [v9 willRejectClusterIdentifier:v10];

  if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    v24 = sub_1000263B8;
    v25 = v12;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10001EB44;
    v23 = &unk_10003DF30;
    v13 = _Block_copy(&v20);
    v14 = v4;

    [v11 performBlock:v13];
    _Block_release(v13);
  }

  else
  {
    v15 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = a4;
    v24 = sub_100026388;
    v25 = v16;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10002B9B4;
    v23 = &unk_10003DEE0;
    v17 = _Block_copy(&v20);
    v18 = v4;

    v19 = [v15 performWriterBlock:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000257CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v6 = String._bridgeToObjectiveC()();
  [v5 couldNotRejectUnknownClusterIdentifier:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 didRejectClusterIdentifier:v7];

  return a4(0);
}

uint64_t sub_100025870(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;
  v12 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v13 = *&a2[v12];
  swift_bridgeObjectRetain_n();

  v14 = a2;

  v16 = sub_10002A840(v15, a3, a4);

  if (*(v16 + 16))
  {
    v17 = sub_10001EB88(v16);
    v18 = sub_10001EDCC(v16);

    v19 = swift_allocObject();
    v19[2] = v14;
    v19[3] = v18;
    v19[4] = sub_1000263C8;
    v19[5] = v11;
    v20 = v14;

    sub_100020B0C(v17, 0, 1, sub_10002AA48, v19);
  }

  else
  {

    v21 = *&v14[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
    v22 = swift_allocObject();
    v22[2] = 1;
    v22[3] = v14;
    v22[4] = a3;
    v22[5] = a4;
    v22[6] = a5;
    v22[7] = a6;
    v26[4] = sub_10002AA2C;
    v26[5] = v22;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_10001EB44;
    v26[3] = &unk_10003DFA8;
    v23 = _Block_copy(v26);

    v24 = v14;

    [v21 performBlock:v23];
    _Block_release(v23);
  }
}

void sub_100025AE8(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v20[4] = a8;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10001EB44;
  v20[3] = a9;
  v18 = _Block_copy(v20);
  sub_10002AAFC(a1);
  v19 = a2;

  [v16 performBlock:v18];
  _Block_release(v18);
}

uint64_t sub_100025C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, SEL *a7, SEL *a8, SEL *a9)
{
  if (a1)
  {
    v11 = a1;
    if (a1 != 1)
    {
      v15 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
      v17 = String._bridgeToObjectiveC()();
      v14 = _convertErrorToNSError(_:)();
      [v15 *a7];

      goto LABEL_7;
    }

    v12 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
    v13 = String._bridgeToObjectiveC()();
    [v12 *a9];
  }

  else
  {
    v12 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  }

  v14 = String._bridgeToObjectiveC()();
  [v12 *a8];
  v11 = 0;
LABEL_7:

  return a5(v11);
}

uint64_t sub_100025D50(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_100025E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore);
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = CNDonationStoreMeCardIdentifier;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v13[4] = sub_10002AA54;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10001F18C;
  v13[3] = &unk_10003E020;
  v11 = _Block_copy(v13);
  v12 = v9;

  [v7 rejectDonatedValues:isa contactIdentifier:v12 completionHandler:v11];
  _Block_release(v11);
}

id sub_100025FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DonationAgent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for DonationAgent.FeatureState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DonationAgent.FeatureState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100026330()
{
  result = qword_100045F50;
  if (!qword_100045F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F50);
  }

  return result;
}

uint64_t sub_1000263A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10002642C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&qword_100044CC0, &unk_100030940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100026538(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003760(&qword_100045F80, &qword_100030DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003760(&qword_100045F88, &unk_100030DC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100026680(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003760(&qword_100044CC0, &unk_100030940);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100026704(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003760(&unk_100045620, &unk_100030750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_10002678C(char *a1, int64_t a2, char a3)
{
  result = sub_1000267CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000267AC(void *a1, int64_t a2, char a3)
{
  result = sub_1000268D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000267CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&qword_100044CC0, &unk_100030940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000268D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003760(&qword_100045FC0, &qword_100030DE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003760(&qword_100045FC8, &qword_100030DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100026A0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100026AC8(a1, a2, v6);
}

unint64_t sub_100026A84(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100026B80(a1, v4);
}

unint64_t sub_100026AC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100026B80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002B6E4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002B740(v8);
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

uint64_t sub_100026C48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003760(&unk_100045F60, &qword_100030DA8);
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

uint64_t sub_100026EE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003760(&qword_100045F58, &unk_100030D98);
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

uint64_t sub_10002718C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003760(&qword_100045F78, &qword_100030DB8);
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

uint64_t sub_100027434(uint64_t result, uint64_t a2)
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

unint64_t sub_1000275E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100026A0C(a2, a3);
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
      sub_100026C48(v16, a4 & 1);
      v20 = *v5;
      result = sub_100026A0C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000278C0();
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

uint64_t sub_100027748(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100026A0C(a2, a3);
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
      sub_100026EE8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100026A0C(a2, a3);
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
      sub_100027A28();
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

void *sub_1000278C0()
{
  v1 = v0;
  sub_100003760(&unk_100045F60, &qword_100030DA8);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_100027A28()
{
  v1 = v0;
  sub_100003760(&qword_100045F58, &unk_100030D98);
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

void *sub_100027B94()
{
  v1 = v0;
  sub_100003760(&qword_100045F78, &qword_100030DB8);
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

void *sub_100027D04(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_100027E5C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100027FB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v38 = a4;
  v39 = a3;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v40 = a5;

  v17 = 0;
  v18 = 0;
  while (2)
  {
    v37 = v17;
    while (1)
    {
      if (!v14)
      {
        v20 = v18;
        while (1)
        {
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_22;
          }

          v21 = *(v10 + 8 * v18);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v41 = (v21 - 1) & v21;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_12:
      v22 = v19 | (v18 << 6);
      v23 = *(*(v39 + 48) + 16 * v22 + 8);
      v24 = v22;
      v25 = *(*(v39 + 56) + 8 * v22);

      v26 = v25;
      v27 = [v26 origin];
      v28 = [v27 clusterIdentifier];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (v29 == v38 && v31 == v40)
      {
        break;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v41;
      if (v33)
      {
        goto LABEL_19;
      }
    }

    v14 = v41;
LABEL_19:
    *(a1 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v17 = v37 + 1;
    if (!__OFADD__(v37, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  v34 = sub_100028418(a1, a2, v37, v39);

  return v34;
}