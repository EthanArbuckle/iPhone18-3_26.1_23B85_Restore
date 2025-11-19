uint64_t sub_1000BA29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B6C6C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1000BA2E4@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1000BA1AC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000BA35C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for URLRequest() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000B9DC0(a1, v6, a2);
}

void *sub_1000BA418(void *result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000BA430(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1000BA430(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {
    v8 = a1;

    return sub_100062FBC(a2, a3);
  }
}

void *sub_1000BA484(void *result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000BA49C(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1000BA49C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    return sub_100014A2C(a2, a3);
  }
}

void sub_1000BA4F0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000BA500(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1000BA558(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4 & 1;
  return v5(v8);
}

uint64_t sub_1000BA59C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

unint64_t sub_1000BA5D4()
{
  result = qword_100218A88;
  if (!qword_100218A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagPathComponent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TagPathComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1000BA728()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_1000BA7AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000BA7AC()
{
  if (!qword_100218AF8)
  {
    sub_1000BA804();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100218AF8);
    }
  }
}

unint64_t sub_1000BA804()
{
  result = qword_100218B00;
  if (!qword_100218B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100218B00);
  }

  return result;
}

uint64_t sub_1000BA848()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10000DE78();
  }

  return v5 & 1;
}

uint64_t sub_1000BA8C0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64757469676E6F6CLL;
  }

  else
  {
    v3 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (a2)
  {
    v5 = 0x64757469676E6F6CLL;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000DE78();
  }

  return v8 & 1;
}

uint64_t sub_1000BA97C(char a1, char a2)
{
  v3 = PegasusClientName.rawValue.getter(a1);
  v5 = v4;
  if (v3 == PegasusClientName.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000DE78();
  }

  return v8 & 1;
}

uint64_t sub_1000BA9F4(char a1, char a2)
{
  if (qword_10019D7A8[a1] == qword_10019D7A8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000BAA5C(unsigned __int8 a1, char a2)
{
  v2 = 1852141679;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1852141679;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6465736F6C63;
      break;
    case 2:
      v5 = 0x69737365636F7270;
      v3 = 0xEA0000000000676ELL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x646564616F6C7075;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x6465736F6C63;
      break;
    case 2:
      v2 = 0x69737365636F7270;
      v6 = 0xEA0000000000676ELL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x646564616F6C7075;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000DE78();
  }

  return v8 & 1;
}

void *sub_1000BAB98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v33 = _swiftEmptyArrayStorage;
    sub_1000EC9A4();
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 64);
    do
    {
      v26 = v1;
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      v31 = &type metadata for AppDistEntry;
      v32 = &off_1001F77C0;
      v10 = swift_allocObject();
      v30[0] = v10;
      v10[2] = v5;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = v9;
      v33 = v2;
      v12 = v2[2];
      v11 = v2[3];

      v13 = &type metadata for AppDistEntry;
      if (v12 >= v11 >> 1)
      {
        sub_1000EC9A4();
        v13 = v31;
        v2 = v33;
      }

      v4 += 5;
      v14 = sub_100026EEC(v30, v13);
      v15 = *(v13[-1].Description + 8);
      __chkstk_darwin(v14);
      v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17);
      v19 = *v17;
      v24 = *(v17 + 1);
      v25 = v19;
      v20 = *(v17 + 4);
      v28 = &type metadata for AppDistEntry;
      v29 = &off_1001F77C0;
      v21 = swift_allocObject();
      *&v27 = v21;
      v22 = v24;
      *(v21 + 16) = v25;
      *(v21 + 32) = v22;
      *(v21 + 48) = v20;
      v2[2] = v12 + 1;
      sub_100008C84(&v27, &v2[5 * v12 + 4]);
      sub_100007378(v30);
      v1 = v26 - 1;
    }

    while (v26 != 1);
  }

  return v2;
}

uint64_t sub_1000BADDC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  v5 = sub_10004229C(a1);
  v6 = sub_10004229C(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000BC3D4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000BAE90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000BC358(result, 1, sub_10006CE60);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Void __swiftcall _CPSearchResultForFeedback.redactSensitive()()
{
  v1 = [v0 type];
  if (v1 != 1)
  {
    v2 = sub_1000066E8(v1, "setUserInput:");
    v3 = sub_1000066E8(v2, "setCompletedQuery:");
    v4 = sub_1000066E8(v3, "setIntendedQuery:");
    sub_1000066E8(v4, "setPunchout:");
    sub_1000BB05C(_CPCardSectionForFeedback.redactSensitive());
  }
}

Swift::Void __swiftcall _CPSearchResultForFeedback.redactUnused()()
{
  if ([v0 type] != 1)
  {
    sub_1000BB05C(_CPCardSectionForFeedback.redactUnused());
  }
}

void sub_1000BB05C(void (*a1)(void))
{
  v7 = v1;
  v8 = [v1 card];
  if (v8 && (v9 = sub_1000BC534(v8, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr)) != 0)
  {
    v10 = v9;
    sub_10004229C(v9);
    sub_10000EBCC();
    while (1)
    {
      if (v2 == v3)
      {

        goto LABEL_12;
      }

      if (v4)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_38;
        }

        v11 = *(v10 + 8 * v3 + 32);
      }

      v12 = v11;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      a1();

      ++v3;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
LABEL_12:
    v13 = [v7 inlineCard];
    if (v13)
    {
      v14 = sub_1000BC534(v13, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
      if (v14)
      {
        v15 = v14;
        sub_10004229C(v14);
        sub_10000EBCC();
        while (v2 != v3)
        {
          if (v4)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= *(v5 + 16))
            {
              goto LABEL_40;
            }

            v16 = *(v15 + 8 * v3 + 32);
          }

          v17 = v16;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_39;
          }

          a1();

          ++v3;
        }
      }
    }

    v18 = [v7 compactCard];
    if (v18)
    {
      v19 = sub_1000BC534(v18, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
      if (v19)
      {
        v20 = v19;
        v21 = sub_10004229C(v19);
        for (i = 0; v21 != i; ++i)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v23 = *(v20 + 8 * i + 32);
          }

          v24 = v23;
          if (__OFADD__(i, 1))
          {
            goto LABEL_41;
          }

          a1();
        }
      }
    }
  }
}

Swift::Void __swiftcall _CPCardSectionForFeedback.redactSensitive()()
{
  sub_1000066E8(v0, "setActionDestination:");
  v6 = sub_1000BC4A8(v1, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
  if (v6)
  {
    v7 = v6;
    sub_10004229C(v6);
    sub_10000C86C();
    while (v2 != v3)
    {
      if (v4)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v7 + 8 * v3 + 32);
      }

      v9 = v8;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      _CPCardSectionForFeedback.redactSensitive()();

      ++v3;
    }
  }
}

Swift::Void __swiftcall _CPCardSectionForFeedback.redactUnused()()
{
  v5 = sub_1000BC4A8(v0, &selRef_cardSections, &qword_100218B90, _CPCardSectionForFeedback_ptr);
  if (v5)
  {
    v6 = v5;
    sub_10004229C(v5);
    sub_10000C86C();
    while (v1 != v2)
    {
      if (v3)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v6 + 8 * v2 + 32);
      }

      v8 = v7;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      _CPCardSectionForFeedback.redactUnused()();

      ++v2;
    }
  }
}

Swift::Void __swiftcall _CPCardSectionEngagementFeedback.redactSensitive()()
{
  v1 = [v0 destination];
  if (v1)
  {
    v2 = v1;
    sub_1000BC5AC(_swiftEmptyArrayStorage, v1);
  }
}

Swift::Void __swiftcall _CPCardSectionEngagementFeedback.redactUnused()()
{
  v1 = [v0 destination];
}

void sub_1000BB58C(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    [v4 *a2];
  }
}

Swift::Void __swiftcall _CPStartNetworkSearchFeedback.redactSensitive()()
{
  v1 = v0;
  v2 = sub_1000BC618(v0);
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = sub_100005B74(v4, v5);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v3 + 24);
      v10 = sub_100046184(&qword_1002184F8, &qword_10019D190);
      v18 = sub_1000119C0(v10, v11, v12, v13, v14, v15, v16, v17, v61, v3);
      sub_10000AAC4(v18, v19, v20, v21, v22, v23, v24, v25, v62, v65);
      v26 = *(*(v3 + 56) + 16 * v8 + 8);
      sub_10000BEC0();
      _NativeDictionary._delete(at:)();
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = sub_10000B0A0();
    [v30 v31];
  }

  else
  {
    v27 = sub_10000B0A0();
    [v27 v28];
  }

  v32 = sub_1000BC618(v1);
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = sub_100005B74(v34, v35);
    if (v37)
    {
      v38 = v36;
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v33 + 24);
      v40 = sub_100046184(&qword_1002184F8, &qword_10019D190);
      v48 = sub_1000119C0(v40, v41, v42, v43, v44, v45, v46, v47, v61, v33);
      sub_10000AAC4(v48, v49, v50, v51, v52, v53, v54, v55, v63, v66);
      v56 = *(*(v33 + 56) + 16 * v38 + 8);
      sub_10000BEC0();
      _NativeDictionary._delete(at:)();
    }

    v64 = Dictionary._bridgeToObjectiveC()().super.isa;

    v59 = sub_10000B0A0();
    [v59 v60];
  }

  else
  {
    v57 = sub_10000B0A0();

    [v57 v58];
  }
}

unint64_t sub_1000BB858()
{
  v0 = sub_100008010();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_1000042D0();

  return sub_1000BBA5C(v1, v2);
}

unint64_t sub_1000BB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  return sub_1000BBB30(a1, a2, a3, a4, v10);
}

unint64_t sub_1000BB930()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000B8E4(&qword_100217B48, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v2 = sub_10000C9E4();

  return sub_1000BBC2C(v2, v3);
}

unint64_t sub_1000BB9E0()
{
  v0 = sub_100008010();
  NSObject._rawHashValue(seed:)(v0);
  v1 = sub_1000042D0();

  return sub_1000BBD60(v1, v2);
}

unint64_t sub_1000BBA18(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000BBE38(a1, v4);
}

unint64_t sub_1000BBA5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100046184(&qword_100214E68, &qword_100198F88);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BBB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1000BBC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_1000BCC74(*(v2 + 48) + *(v5 + 72) * i, v8);
    v11 = static UUID.== infix(_:_:)();
    sub_1000BCCD8(v8);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BBD60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100005180(0, &qword_100219380, SFTopic_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BBE38(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1000BC358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1000BC3D4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    sub_10000994C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000BC4A8(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_100005180(0, a3, a4);
  sub_10000C9E4();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_1000BC534(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_100005180(0, a3, a4);
  sub_10000C9E4();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void sub_1000BC5AC(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setUrls:isa];
}

uint64_t sub_1000BC618(void *a1)
{
  v1 = [a1 headers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000BC67C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10004229C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100046184(&qword_100214E68, &qword_100198F88);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000BCD34(&qword_100218B78, &qword_100214E70, &unk_100198F90);
        for (i = 0; i != v7; ++i)
        {
          sub_100046184(&qword_100214E70, &unk_100198F90);
          v9 = sub_1000BCB04(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BC7FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10004229C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100005180(0, &qword_100218B30, _CPSearchResultForFeedback_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000BCD34(&qword_100218B40, &qword_100218B38, &qword_10019D198);
        for (i = 0; i != v7; ++i)
        {
          sub_100046184(&qword_100218B38, &qword_10019D198);
          v9 = sub_1000BCB98(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BC980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10004229C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000BCD34(&qword_100218B70, &qword_100218B68, &qword_10019D3B0);
        for (i = 0; i != v7; ++i)
        {
          sub_100046184(&qword_100218B68, &qword_10019D3B0);
          v9 = sub_1000BCB98(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000BCB04(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1000A526C(a3);
  sub_100106BF8(a2);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_1000BCB90;
}

uint64_t (*sub_1000BCB98(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_10000E150(a1, a2, a3);
  sub_1000A526C(v7);
  v8 = sub_10000AE88();
  sub_100106BF8(v8);
  if (v6)
  {
    v9 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v9;
  return sub_1000BCD8C;
}

unint64_t sub_1000BCC0C()
{
  result = qword_1002183C0;
  if (!qword_1002183C0)
  {
    sub_100005180(255, &qword_100219380, SFTopic_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002183C0);
  }

  return result;
}

uint64_t sub_1000BCC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCCD8(uint64_t a1)
{
  v2 = type metadata accessor for CancellableStoreKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BCD34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

double sub_1000BCDCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005B74(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100009848(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1000BCE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1000BCE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005B74(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for Date();
    sub_1000036B8(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for Date();
    v12 = a4;
    v13 = 1;
  }

  return sub_1000051C0(v12, v13, 1, v14);
}

uint64_t sub_1000BCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1000BCF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_1000BCFE8()
{
  sub_1000055CC();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v1[4] = v2;
  v1[5] = &_swiftEmptyDictionarySingleton;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

void sub_1000BD064()
{
  v1 = v0;
  v16 = _swiftEmptyArrayStorage;
  v2 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v2);
  sub_1000BD1B4(v0, &v16);
  os_unfair_lock_unlock(v2);

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v16;
  if (Strong)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = 0;
  v8 = v4[2];
  for (i = v4 + 5; ; i += 2)
  {
    if (v8 == v7)
    {

      sub_10000B218(v1 + 16);
      v14 = *(v1 + 32);

      v15 = *(v1 + 40);

      sub_10000AAF4();
      return;
    }

    if (v7 >= v4[2])
    {
      break;
    }

    ++v7;
    v10 = *(i - 1);
    v11 = *i;
    v12 = swift_getObjectType();
    v13 = *(v11 + 72);
    swift_unknownObjectRetain();
    v13(v12, v11);
    swift_unknownObjectRelease();
  }

  __break(1u);
}

uint64_t sub_1000BD1B4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v34 = v3;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v7)) | (v11 << 6);
        v14 = (*(v3 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(v3 + 56) + 8 * v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = *(v17 + 24);
          ObjectType = swift_getObjectType();
          v22 = *(v20 + 64);

          v22(ObjectType, v20);
          v23 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = *(v23 + 16);

            sub_10006CEE0();
            v31 = *a2;
            *a2 = v32;

            v23 = *a2;
          }

          v25 = *(v23 + 16);
          if (v25 >= *(v23 + 24) >> 1)
          {
            sub_10006CEE0();
            v23 = v33;
            *a2 = v33;
          }

          *(v23 + 16) = v25 + 1;
          v26 = *a2 + 16 * v25;
          *(v26 + 32) = v19;
          *(v26 + 40) = v20;

          v3 = v34;
        }

        else
        {
          sub_100005180(0, &qword_100214810, OS_os_log_ptr);

          v27 = static OS_os_log.default.getter();
          static os_log_type_t.error.getter();
          sub_100046184(&unk_100217040, &qword_1001989F0);
          v28 = v15;
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_100197F20;
          *(v29 + 56) = &type metadata for String;
          *(v29 + 64) = sub_10000512C();
          *(v29 + 32) = v16;
          *(v29 + 40) = v28;

          os_log(_:dso:log:type:_:)();
        }

        v7 &= v7 - 1;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BD498()
{
  sub_1000BD064();

  return _swift_deallocClassInstance(v0, 48, 7);
}

_OWORD *sub_1000BD4F0()
{
  sub_10000AE9C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10000432C(v8, v6);
  v12 = sub_100005B74(v10, v11);
  sub_100005F80(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_1002166A0, &unk_10019D8D0);
  if (sub_10000433C())
  {
    v15 = *v0;
    sub_100005B74(v7, v5);
    sub_100006AD8();
    if (!v17)
    {
      goto LABEL_14;
    }

    v2 = v16;
  }

  v18 = *v3;
  if (v1)
  {
    sub_100007378((v18[7] + 32 * v2));
    sub_100007CB4();

    return sub_100028734(v19, v20);
  }

  else
  {
    sub_1000BE134(v2, v7, v5, v9, v18);
    sub_100007CB4();
  }
}

id sub_1000BD5FC(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1000059B8(a1, a2);
  v6 = sub_1000BB858();
  sub_100005F80(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_100046184(&qword_100214E68, &qword_100198F88);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  sub_100046184(&qword_100214E60, &qword_100198F80);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v3))
  {
    v13 = *v3;
    sub_1000BB858();
    sub_10000AAE4();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  v16 = *v5;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = v2;
  }

  else
  {
    sub_1000BE1A0(v11, v20, v2, v16);

    return v20;
  }
}

uint64_t sub_1000BD710()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_100005B74(v6, v4);
  sub_100005F80(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_100046184(&qword_1002184F8, &qword_10019D190);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v12))
  {
    goto LABEL_5;
  }

  v20 = *v1;
  v21 = sub_100005B74(v7, v5);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v1;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = v11;
    v24[1] = v9;
    sub_100005460();
  }

  else
  {
    sub_1000BE1E4(v18, v7, v5, v11, v9, v23);
    sub_100005460();
  }
}

void sub_1000BD840(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100005B74(a1, a2);
  sub_100005F80(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  sub_100046184(&qword_100218E50, &unk_10019D910);
  if (sub_10000E164())
  {
    v16 = *v4;
    sub_100005B74(a1, a2);
    sub_10000AAE4();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  if (v15)
  {
    *(*(*v4 + 56) + 8 * v14) = a3;
  }

  else
  {
    v19 = sub_100009958();
    sub_1000BE230(v19, v20, a2, v21, a3);
  }
}

void sub_1000BD944()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_10000432C(v12, v10);
  v18 = sub_1000BB890(v14, v15, v16, v17);
  sub_100005F80(v18, v19);
  if (v22)
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v20;
  v24 = v21;
  sub_100046184(&qword_100218E48, &qword_10019D908);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v0))
  {
    goto LABEL_5;
  }

  v25 = *v0;
  v26 = sub_100009958();
  v28 = sub_1000BB890(v26, v27, v7, v5);
  if ((v24 & 1) != (v29 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v23 = v28;
LABEL_5:
  v30 = *v1;
  if (v24)
  {
    v31 = v30[7];
    v32 = *(v31 + 8 * v23);
    *(v31 + 8 * v23) = v13;
    sub_100005460();
  }

  else
  {
    sub_1000BE278(v23, v11, v9, v7, v5, v13, v30);

    sub_100005460();
  }
}

uint64_t sub_1000BDA84()
{
  sub_10000AE9C();
  v5 = sub_1000039C8(v2, v3, v4);
  sub_100005F80(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_100218E40, &qword_10019D900);
  v8 = sub_10000433C();
  if (v8)
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_100008A14(v8, v9, v10, v11, *v0);
    sub_100007CB4();
  }

  else
  {
    v15 = sub_100008478();
    sub_100027630(v15, v16, v17, v18, v19);
    sub_100007CB4();
  }
}

void sub_1000BDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for CancellableStoreKey();
  v31 = sub_1000036B8(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v20;
  v37 = sub_1000BB930();
  sub_100005F80(v37, v38);
  if (v41)
  {
    __break(1u);
    goto LABEL_11;
  }

  v42 = v39;
  v43 = v40;
  sub_100046184(&qword_100218238, &qword_10019C650);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v25 & 1, v36))
  {
    goto LABEL_5;
  }

  v44 = *v23;
  v45 = sub_1000BB930();
  if ((v43 & 1) != (v46 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v42 = v45;
LABEL_5:
  v47 = *v23;
  if (v43)
  {
    sub_10000C9F0();
    sub_100005460();
  }

  else
  {
    sub_1000BCC74(v27, v35);
    sub_1000BE2C4(v42, v35, v29, v47);
    sub_100005460();
  }
}

id sub_1000BDC98(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_1000059B8(a1, a2);
  v6 = sub_1000BB9E0();
  sub_100005F80(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_14:
    sub_100005180(0, &qword_100219380, SFTopic_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  sub_100046184(&qword_100218B50, &qword_10019D3A0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v3))
  {
    v13 = *v3;
    sub_1000BB9E0();
    sub_10000AAE4();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  v16 = *v5;
  if (v12)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for TopicCacheEntry() - 8) + 72) * v11;

    return sub_1000BE420(v2, v18);
  }

  else
  {
    sub_1000BE378(v11, v20, v2, v16);

    return v20;
  }
}

unint64_t sub_1000BDDE0()
{
  sub_10000AE9C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = sub_1000BBA18(v2);
  sub_100005F80(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_100046184(&qword_100218548, &unk_10019D8E0);
  if (sub_10000E164())
  {
    v14 = *v1;
    sub_1000BBA18(v3);
    sub_10000AAE4();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  if (v13)
  {
    v17 = *(*v1 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v5;
    sub_100007CB4();
  }

  else
  {
    sub_100009958();
    sub_100007CB4();

    return sub_1000BE1A0(v21, v22, v23, v24);
  }
}

void sub_1000BDEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for SessionType();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v20;
  v32 = sub_10000F794();
  sub_100005F80(v32, v33);
  if (v36)
  {
    __break(1u);
    goto LABEL_11;
  }

  v37 = v34;
  v38 = v35;
  sub_100046184(&qword_100218B60, &qword_10019D3A8);
  if (!sub_10000433C())
  {
    goto LABEL_5;
  }

  v39 = *v23;
  v40 = sub_10000F794();
  if ((v38 & 1) != (v41 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v37 = v40;
LABEL_5:
  v42 = *v23;
  if (v38)
  {
    sub_10000C9F0();
    sub_100005460();
  }

  else
  {
    v44 = *(v27 + 16);
    v45 = sub_100009958();
    v46(v45);
    sub_100023CB0(v37, v30, v25, v42);
    sub_100005460();
  }
}

void sub_1000BE078()
{
  sub_10000AE9C();
  v7 = sub_1000039C8(v4, v5, v6);
  sub_100005F80(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100006700();
  sub_100046184(&qword_100218E38, &qword_10019D8C8);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_100007CB4();
  }

  else
  {
    v12 = sub_100008478();
    sub_100027630(v12, v13, v14, v15, v16);
    sub_100007CB4();
  }
}

_OWORD *sub_1000BE134(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100028734(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1000BE1A0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1000BE1E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1000BE230(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000BE278(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_1000BE2C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CancellableStoreKey();
  result = sub_1000BE484(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for CancellableStoreKey);
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

uint64_t sub_1000BE378(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for TopicCacheEntry();
  result = sub_1000BE484(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for TopicCacheEntry);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1000BE420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicCacheEntry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000036B8(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000BE4E4()
{
  sub_10000AE9C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = (*(v0 + 56))(v6, v0);
  v9 = v8;
  v10 = *(*(v3 + 32) + 16);
  os_unfair_lock_lock(v10);
  sub_10000ECB8(v3, v7, v9, v5, v1);

  os_unfair_lock_unlock(v10);
  sub_100007CB4();

  return sub_1000BE59C(v11, v12, v13, v14);
}

uint64_t sub_1000BE59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000BE7B4(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_1000BEDC0(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1000BEE64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BE7B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BEE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BE7A0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000BEED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000BEDC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1000BEF0C()
{
  result = qword_100218E58;
  if (!qword_100218E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218E58);
  }

  return result;
}

unint64_t sub_1000BEF64()
{
  result = qword_100218E60;
  if (!qword_100218E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218E60);
  }

  return result;
}

void sub_1000BEFB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

id sub_1000BF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultProvider];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000D50C;
  v12[3] = &unk_1001FAF98;
  v9 = _Block_copy(v12);

  v10 = [v8 addStatusUpdateHandlerForEnvironment:a1 queue:a2 block:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1000BF120(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() "defaultProvider")];

  return swift_unknownObjectRelease();
}

uint64_t sub_1000BF1AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000BF1D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000BF214(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1000BF264(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = sub_100003650(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_1000039F8();
  if ((a2 & 1) != 0 || a1 - 21 <= 0xFFFFFFFFFFFFFFEBLL)
  {
    a1 = sub_1000B608C(0x14uLL) + 1;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else if (!a4)
  {
    goto LABEL_8;
  }

  UUID.init(uuidString:)();
  if (sub_100008D0C(v4, 1, v8) != 1)
  {
    sub_1000BF9D0(v4);
    return a1;
  }

  sub_1000BF9D0(v4);
LABEL_8:
  UUID.init()();
  UUID.uuidString.getter();
  (*(v11 + 8))(v15, v8);
  return a1;
}

uint64_t sub_1000BF404(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3158628 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5555656369766564 && a2 == 0xEA00000000004449)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000BF4D4(char a1)
{
  if (a1)
  {
    return 0x5555656369766564;
  }

  else
  {
    return 3158628;
  }
}

uint64_t sub_1000BF508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000BF544(void *a1)
{
  v4 = sub_100046184(&qword_100218F28, &qword_10019DFD8);
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000039F8();
  v10 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_1000BF97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v2, v4);
}

uint64_t sub_1000BF6A8(uint64_t *a1)
{
  v4 = sub_100046184(&qword_100218F18, &qword_10019DFD0);
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000039F8();
  v10 = a1[3];
  sub_100007534(a1, v10);
  sub_1000BF97C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v2, v4);
  }

  sub_100007378(a1);
  return v10;
}

uint64_t sub_1000BF848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BF404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BF870@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroPrimitiveSchema.int.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000BF898(uint64_t a1)
{
  v2 = sub_1000BF97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BF8D4(uint64_t a1)
{
  v2 = sub_1000BF97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF910@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BF6A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000BF940(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_1000BF544(a1);
}

unint64_t sub_1000BF97C()
{
  result = qword_100218F20;
  if (!qword_100218F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F20);
  }

  return result;
}

uint64_t sub_1000BF9D0(uint64_t a1)
{
  v2 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DevicePersistentData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000BFB18()
{
  result = qword_100218F30;
  if (!qword_100218F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F30);
  }

  return result;
}

unint64_t sub_1000BFB70()
{
  result = qword_100218F38;
  if (!qword_100218F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F38);
  }

  return result;
}

unint64_t sub_1000BFBC8()
{
  result = qword_100218F40;
  if (!qword_100218F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F40);
  }

  return result;
}

uint64_t sub_1000BFC1C()
{
  v1 = v0;
  v2 = type metadata accessor for URLError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - v9;
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  [v1 code];
  URLError.Code.init(rawValue:)();
  (*(v3 + 16))(v10, v12, v2);
  static URLError.Code.cancelled.getter();
  sub_1000C00A0();
  v13 = sub_100003A08();
  v14 = *(v3 + 8);
  v14(v7, v2);
  if (v13)
  {
    v15 = sub_100007CC8();
    (v14)(v15);
    v16 = sub_1000041F8();
    (v14)(v16);
    return 59;
  }

  else
  {
    static URLError.Code.badURL.getter();
    sub_100003A08();
    v18 = sub_100005F94();
    (v14)(v18);
    static URLError.Code.timedOut.getter();
    sub_100003A08();
    v19 = sub_100005F94();
    (v14)(v19);
    static URLError.Code.unsupportedURL.getter();
    sub_100003A08();
    v20 = sub_100005F94();
    (v14)(v20);
    static URLError.Code.cannotFindHost.getter();
    sub_100003A08();
    v21 = sub_100005F94();
    (v14)(v21);
    static URLError.Code.cannotConnectToHost.getter();
    sub_100003A08();
    v22 = sub_100005F94();
    (v14)(v22);
    static URLError.Code.networkConnectionLost.getter();
    sub_100003A08();
    v23 = sub_100005F94();
    (v14)(v23);
    static URLError.Code.dnsLookupFailed.getter();
    sub_100003A08();
    v24 = sub_100005F94();
    (v14)(v24);
    static URLError.Code.httpTooManyRedirects.getter();
    sub_100003A08();
    v25 = sub_100005F94();
    (v14)(v25);
    static URLError.Code.resourceUnavailable.getter();
    sub_100003A08();
    v26 = sub_100005F94();
    (v14)(v26);
    static URLError.Code.notConnectedToInternet.getter();
    sub_100003A08();
    v27 = sub_100005F94();
    (v14)(v27);
    static URLError.Code.redirectToNonExistentLocation.getter();
    v28 = sub_100003A08();
    v14(v7, v2);
    v29 = sub_100007CC8();
    (v14)(v29);
    v30 = sub_1000041F8();
    (v14)(v30);
    if (v28)
    {
      return 69;
    }

    else
    {
      return 22;
    }
  }
}

unint64_t sub_1000C00A0()
{
  result = qword_100218F48;
  if (!qword_100218F48)
  {
    type metadata accessor for URLError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218F48);
  }

  return result;
}

uint64_t sub_1000C0138(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100046184(&qword_1002193D0, &qword_10019E3B0);
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9 - 8);
  v13 = &v45 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v52 = a1;
  v53 = v15;
  v50 = v5 + 16;
  v51 = v5;
  v47 = a2;
  v48 = (v5 + 32);
  v49 = v8;
  v46 = v13;
  while (v53 != v14)
  {
    v16 = *(v51 + 72);
    v17 = v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v54 = v14;
    v18 = v4;
    (*(v51 + 16))(v8, v17 + v16 * v14, v4);
    v19 = Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.fullHash.getter();
    v21 = v20;
    v22 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *a2;
    v24 = v55;
    v25 = sub_100005B74(v19, v21);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v30 = v25;
    v31 = v26;
    sub_100046184(&qword_1002193D8, &qword_10019E3B8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29))
    {
      v32 = sub_100005B74(v19, v21);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_15;
      }

      v30 = v32;
    }

    v34 = v55;
    if (v31)
    {
      v35 = v30 * v16;
      v36 = *v48;
      v37 = v55[7] + v30 * v16;
      v38 = v46;
      v4 = v18;
      (*v48)(v46, v37, v18);
      v8 = v49;
      v36(v34[7] + v35, v49, v18);
      sub_1000051C0(v38, 0, 1, v18);
    }

    else
    {
      v55[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v34[6] + 16 * v30);
      *v39 = v19;
      v39[1] = v21;
      v40 = v34[7] + v30 * v16;
      v8 = v49;
      v4 = v18;
      (*v48)(v40, v49, v18);
      v41 = v34[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_14;
      }

      v34[2] = v43;
      v38 = v46;
      sub_1000051C0(v46, 1, 1, v18);
    }

    v44 = v47;
    *v47 = v34;
    a2 = v44;

    result = sub_10000B298(v38, &qword_1002193D0, &qword_10019E3B0);
    v14 = v54 + 1;
  }

  return result;
}

uint64_t sub_1000C04A0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return sub_1000051C0(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return sub_1000051C0(v15, v14, 1, v5);
}

uint64_t sub_1000C065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for URLQueryItem();
  v5 = v4;
  if (v3)
  {
    sub_10000690C(v4);
    v7 = *(v6 + 16);
    v8 = *(v6 + 80);
    v9 = sub_100012634();
    v10(v9);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return sub_1000051C0(a2, v11, 1, v5);
}

double sub_1000C06FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100009848(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1000C071C()
{
  sub_100005478();
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  v4 = sub_100005490(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000407C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_1000E26B8();
  v11 = type metadata accessor for URL();
  v12 = sub_100003650(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  sub_1000068C0();
  v17 = type metadata accessor for Client();
  v18 = sub_100003650(v17);
  v78 = v19;
  v79 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10000407C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = *(v0 + 56);

  static Client.parsecd.getter();
  v29 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v29);
  v30 = sub_100004A34(v28, 8, v27, 0, 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000E28B8(qword_100216C08);
LABEL_19:

    goto LABEL_20;
  }

  v32 = Strong;
  sub_100006AE8();
  v35 = sub_10000BB00(v33, v34);
  if (v35)
  {
    v36 = v35;
    v77 = v32;
    v37 = [v35 searchURL];

    if (v37)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    sub_1000051C0(v9, v38, 1, v11);
    sub_1000A4E88(v9, v2, &qword_100218230, &unk_100199A00);
    v42 = sub_1000E2528();
    sub_10000C944(v42, v43, v11);
    if (!v44)
    {
      (*(v14 + 32))(v1, v2, v11);
      sub_1000068B4();
      v76 = swift_allocObject();
      *(v76 + 16) = 0;
      v74 = sub_10008596C();
      static Client.parsecd.getter();
      sub_100006AE8();
      v57 = sub_10000BB00(v55, v56);
      v75 = v14;
      if (v57)
      {
        v58 = v57;
        v73 = [v57 assumesHTTP3Capable];
      }

      else
      {
        v73 = 0;
      }

      sub_1000068B4();
      v59 = swift_allocObject();
      swift_weakInit();
      sub_100006634();
      v60 = swift_allocObject();
      v61 = v76;
      *(v60 + 16) = v59;
      *(v60 + 24) = v61;
      sub_1000068B4();
      v62 = swift_allocObject();
      swift_weakInit();
      sub_100015B68();
      v63 = swift_allocObject();
      v63[2] = v30;
      v63[3] = v62;
      v63[4] = v61;
      swift_retain_n();

      v64 = sub_10000BA90();
      v65 = v74;
      sub_1000B6F4C(v64, v66, v73, v67, v60, v68, v63);

      (*(v78 + 8))(v24, v79);

      sub_1000C4490();

      swift_unknownObjectRelease();
      v69 = *(v75 + 8);
      v70 = sub_10000CC98();
      v71(v70);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1000E23AC();
    sub_1000051C0(v39, v40, v41, v11);
  }

  sub_10000B298(v2, &qword_100218230, &unk_100199A00);
  if (qword_100214058 != -1)
  {
    sub_10000670C();
  }

  v45 = type metadata accessor for Logger();
  sub_100006674(v45, qword_100232978);
  v46 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v47 = sub_1000E2170();
  if (os_log_type_enabled(v47, v48))
  {
    sub_1000E2130();
    v49 = swift_slowAlloc();
    sub_1000A5288(v49);
    sub_1000E2148();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    sub_1000037A4();
  }

  sub_1000E28B8(qword_100216C08);

  swift_unknownObjectRelease();
LABEL_20:
  sub_100005460();
}

uint64_t sub_1000C0C4C()
{
  v2 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v2);
  v4 = *(v3 + 64);
  sub_100003760();
  __chkstk_darwin(v5);
  sub_1000E20C8();
  v6 = type metadata accessor for UserAgent();
  v7 = sub_100003650(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100003664();
  sub_100006EBC();
  sub_10000848C();
  sub_10001672C(v12, v13);
  v14 = sub_1000B1FC4();
  sub_10000C944(v14, v15, v6);
  if (v16)
  {
    return sub_10000B298(v1, &qword_100217480, &unk_100198F70);
  }

  v18 = *(v9 + 32);
  sub_1000E2810();
  v19();
  sub_10000FFB0();
  v22 = sub_10000BB00(v20, v21);
  if (!v22 || (v23 = v22, v24 = [v22 parsecEnabled], v23, v24))
  {
    v25 = *(v0 + 64);
    swift_unknownObjectRetain();
    sub_1000E6178();
    swift_unknownObjectRelease();
  }

  v26 = *(v9 + 8);
  v27 = sub_100005854();
  return v28(v27);
}

uint64_t sub_1000C0DD0()
{
  sub_100007B50();
  *(v1 + 200) = v0;
  v2 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 208) = swift_task_alloc();
  sub_1000E21E8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C0E60()
{
  v2 = v0[25];
  v1 = v0[26];
  sub_10000848C();
  sub_10001672C(v3, v4);
  type metadata accessor for UserAgent();
  v5 = sub_100009940();
  LODWORD(v2) = sub_100008D0C(v5, v6, v7);
  sub_10000B298(v1, &qword_100217480, &unk_100198F70);
  if (v2 == 1)
  {
    v8 = 0xEC000000746E6567;
    v9 = 0x4172657355206F6ELL;
LABEL_12:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000E2D30();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    v25 = sub_10000AEB0(inited, xmmword_100197F20);
    v25[4].n128_u64[1] = &type metadata for String;
    v25[3].n128_u64[0] = v9;
    v25[3].n128_u64[1] = v8;
    v26 = Dictionary.init(dictionaryLiteral:)();
    v27 = objc_allocWithZone(NSError);
    v28 = sub_100007CD4();
    sub_1000B184C(v28, v29, 1, v26);
    swift_willThrow();
    v30 = v0[26];

    sub_1000098BC();

    return v31();
  }

  v10 = v0[25];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {
    v8 = 0xEB00000000796C62;
    v9 = 0x6D65737341206F6ELL;
    goto LABEL_12;
  }

  if (qword_100214090 != -1)
  {
    sub_1000042B0();
  }

  v12 = type metadata accessor for Logger();
  v0[28] = sub_10000964C(v12, qword_100232A20);
  v13 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v14 = sub_1000E2170();
  if (os_log_type_enabled(v14, v15))
  {
    sub_1000E2130();
    v16 = swift_slowAlloc();
    sub_1000A5288(v16);
    sub_1000E2148();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    sub_1000037A4();
  }

  v0[29] = sub_1000158AC();
  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_1000C111C;

  return sub_1000FF394();
}

uint64_t sub_1000C111C()
{
  v2 = *v1;
  sub_1000E2708();
  *v4 = v3;
  v3[22] = v1;
  v3[23] = v5;
  v3[24] = v0;
  v6 = *(v2 + 240);
  *v4 = *v1;
  v3[31] = v0;

  v7 = *(v2 + 232);
  swift_unknownObjectRelease();
  sub_1000E21E8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000C124C()
{
  v2 = v1[28];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1000E2130();
    v5 = swift_slowAlloc();
    sub_10000594C(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Bag fetch completed, returning value to parsec_tool client", v0, 2u);
    sub_1000037A4();
  }

  v6 = v1[23];
  v8 = v1[26];
  v7 = v1[27];
  v9 = v1[25];

  sub_1000C4490();
  swift_unknownObjectRelease();

  v10 = v1[1];

  return v10(v6);
}

uint64_t sub_1000C1340()
{
  sub_100007B50();
  v1 = v0[27];
  swift_unknownObjectRelease();
  v2 = v0[31];
  v3 = v0[26];

  sub_1000098BC();

  return v4();
}

uint64_t sub_1000C13A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  v6 = __chkstk_darwin(v4);
  v61 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - v9;
  __chkstk_darwin(v8);
  v60 = &v43 - v11;
  v54 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section();
  v50 = *(v54 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v54);
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v14 = sub_10000D57C(a1);
  v58 = a2;
  v15 = *(Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.getter() + 16);

  if (v14 && v14 == v15)
  {
    v17 = 0;
    v49 = v45 & 0xC000000000000001;
    v44 = v45 & 0xFFFFFFFFFFFFFF8;
    v43 = v45 + 32;
    v48 = v50 + 16;
    v66 = v65 + 16;
    v64 = (v65 + 8);
    v59 = (v65 + 32);
    v46 = (v50 + 8);
    v47 = v14;
    while (v17 != v14)
    {
      if (v49)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v44 + 16))
        {
          goto LABEL_39;
        }

        v18 = *(v43 + 8 * v17);
      }

      v19 = v18;
      v52 = [v18 topic];

      result = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.getter();
      if (v17 >= *(result + 16))
      {
        goto LABEL_38;
      }

      v20 = result + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v21 = *(v50 + 72);
      v51 = v17;
      (*(v50 + 16))(v53, v20 + v21 * v17, v54);

      result = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.resultIdentifiers.getter();
      v57 = *(result + 16);
      if (v57)
      {
        v22 = 0;
        v56 = result + 32;
        v23 = _swiftEmptyArrayStorage;
        v55 = result;
LABEL_12:
        if (v22 >= *(result + 16))
        {
LABEL_36:
          __break(1u);
          break;
        }

        v24 = (v56 + 16 * v22);
        v26 = *v24;
        v25 = v24[1];
        v62 = v22 + 1;
        v63 = v23;
        v68 = v25;

        result = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.results.getter();
        v27 = result;
        v28 = 0;
        v67 = *(result + 16);
        while (1)
        {
          if (v67 == v28)
          {

            v23 = v63;
            goto LABEL_30;
          }

          if (v28 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v29 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v30 = *(v65 + 72);
          v31 = *(v65 + 16);
          v31(v10, v27 + v29 + v30 * v28, v4);
          if (Apple_Parsec_Spotlight_V1alpha_Result.identifier.getter() == v26 && v32 == v68)
          {

            goto LABEL_25;
          }

          v34 = v26;
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            break;
          }

          result = (*v64)(v10, v4);
          ++v28;
          v26 = v34;
        }

LABEL_25:

        v36 = v60;
        v37 = *v59;
        (*v59)(v60, v10, v4);
        v31(v61, v36, v4);
        v23 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006CE60(0, v23[2] + 1, 1, v23);
          v23 = v40;
        }

        v39 = v23[2];
        v38 = v23[3];
        if (v39 >= v38 >> 1)
        {
          sub_10006CE60(v38 > 1, v39 + 1, 1, v23);
          v23 = v41;
        }

        (*v64)(v60, v4);
        v23[2] = v39 + 1;
        v37(v23 + v29 + v39 * v30, v61, v4);
LABEL_30:
        v22 = v62;
        result = v55;
        if (v62 != v57)
        {
          goto LABEL_12;
        }
      }

      else
      {

        v23 = _swiftEmptyArrayStorage;
      }

      v42 = v52;
      v17 = v51 + 1;
      sub_1000A5CD8(v52, v23);

      result = (*v46)(v53, v54);
      v14 = v47;
      if (v17 == v47)
      {
        return result;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C1968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section();
  v86 = *(v5 - 8);
  v6 = *(v86 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v72 - v10;
  v11 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  v94 = *(v11 - 8);
  v12 = *(v94 + 64);
  v13 = __chkstk_darwin(v11);
  v93 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  v17 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a1;
  v22 = sub_10000D57C(a1);
  if (v22 == *(a2 + 16))
  {
    v73 = v18;
    v74 = v17;
    v92 = v21;
    v85 = v22;
    Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.init()();
    if (v85)
    {
      v23 = 0;
      v89 = *(v94 + 16);
      v83 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v24 = a2 + v83;
      v81 = *(v94 + 72);
      v82 = v87 & 0xC000000000000001;
      v79 = v86 + 32;
      v80 = (v86 + 16);
      v78 = (v94 + 32);
      v77 = (v86 + 8);
      v94 += 16;
      v76 = (v94 - 8);
      v90 = v16;
      v91 = v11;
      v84 = v9;
      do
      {
        v25 = v5;
        v89(v16, v24, v11);
        Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.init()();
        v26 = Apple_Parsec_Spotlight_V1alpha_Result.identifier.getter();
        v28 = v27;
        v29 = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.resultIdentifiers.modify();
        v31 = v30;
        v32 = *v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v31 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = *(v32 + 16);
          sub_10001B77C();
          v32 = v58;
          *v31 = v58;
        }

        v34 = *(v32 + 16);
        if (v34 >= *(v32 + 24) >> 1)
        {
          sub_10001B77C();
          v32 = v59;
          *v31 = v59;
        }

        *(v32 + 16) = v34 + 1;
        v35 = v32 + 16 * v34;
        *(v35 + 32) = v26;
        *(v35 + 40) = v28;
        v29(v95, 0);
        if (v82)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v36 = *(v87 + 8 * v23 + 32);
        }

        v37 = v36;
        v5 = v25;
        v38 = v88;
        v39 = [v36 contextId];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.contextID.setter();
        v40 = v84;
        (*v80)(v84, v38, v5);
        v41 = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.sections.modify();
        v43 = v42;
        v44 = *v42;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v44;
        if ((v45 & 1) == 0)
        {
          sub_10006CEA0(0, *(v44 + 16) + 1, 1, v44);
          v44 = v60;
          *v43 = v60;
        }

        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_10006CEA0(v46 > 1, v47 + 1, 1, v44);
          v44 = v61;
          *v43 = v61;
        }

        *(v44 + 16) = v47 + 1;
        (*(v86 + 32))(v44 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v47, v40, v5);
        v41(v95, 0);
        v89(v93, v90, v91);
        v48 = Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.results.modify();
        v50 = v49;
        v51 = *v49;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *v50 = v51;
        if ((v52 & 1) == 0)
        {
          sub_10006CE60(0, *(v51 + 16) + 1, 1, v51);
          v51 = v62;
          *v50 = v62;
        }

        v54 = *(v51 + 16);
        v53 = *(v51 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_10006CE60(v53 > 1, v54 + 1, 1, v51);
          v51 = v63;
          *v50 = v63;
        }

        ++v23;
        *(v51 + 16) = v54 + 1;
        v55 = v81;
        v56 = v51 + v83 + v54 * v81;
        v11 = v91;
        (*v78)(v56, v93, v91);
        v48(v95, 0);
        (*v77)(v38, v5);
        v16 = v90;
        (*v76)(v90, v11);
        v24 += v55;
      }

      while (v85 != v23);
    }

    v70 = v75;
    v71 = v74;
    (*(v73 + 32))(v75, v92, v74);
    return sub_1000051C0(v70, 0, 1, v71);
  }

  else
  {
    v64 = v75;
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000964C(v65, qword_100232A08);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "TopicContextss and results should have the same count.", v68, 2u);
    }

    return sub_1000051C0(v64, 1, 1, v17);
  }
}

uint64_t sub_1000C2118(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchTimeInterval();
  sub_100057FF8(v5, a2);
  v6 = sub_100007CC8();
  *sub_10000964C(v6, v7) = a3;
  sub_10000690C(v5);
  v9 = *(v8 + 104);

  return v9();
}

uint64_t sub_1000C21A4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, id))
{
  if ((a2 & 1) == 0)
  {
    sub_1000E28A0(&qword_100232BD8);
    if (v7)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    result = a3(v14, a1, 0);
    v16 = qword_100216C08;
    v17 = 2;
    goto LABEL_15;
  }

  sub_1000E28A0(&qword_100232BD8);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10001343C(a1);
  a3(v8, 0, v9);

  if (*(v3 + qword_100232BD0))
  {
    v10 = *(v3 + qword_100232BD0);

    sub_1000CEEF8(a1);
  }

  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  if (sub_1000E2DAC())
  {
    v11 = qword_100216C08;
    if (v23)
    {
      if (v23 == 1)
      {
        v12 = 20;
      }

      else
      {
        v12 = 21;
      }
    }

    else
    {
      v12 = 19;
    }

    goto LABEL_23;
  }

  swift_errorRetain();
  if (!sub_1000E2DAC())
  {

    v16 = qword_100216C08;
    v17 = 24;
LABEL_15:
    *(v3 + v16) = v17;
    return result;
  }

  if (v23 != 1)
  {
    v21 = sub_10000BE80();
    sub_1000BA4F0(v21, v22, 0);
    v11 = qword_100216C08;
    v12 = 23;
LABEL_23:
    *(v3 + v11) = v12;
  }

  v18 = sub_1000BFC1C();
  v19 = sub_10000BE80();
  sub_1000BA4F0(v19, v20, 1);
  *(v3 + qword_100216C08) = v18;
}

void sub_1000C2374(void *a1)
{
  sub_1000E2A9C(OBJC_IVAR____TtC7parsecd11ClientState__bag);
  sub_1000FED08();

  sub_1000C23D8();
}

void sub_1000C23D8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd11ClientState_pegasusProxyLocker) + 16);
  os_unfair_lock_lock(v1);
  sub_1000C35CC();

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000C2424(uint64_t a1)
{
  sub_1000E2A9C(OBJC_IVAR____TtC7parsecd11ClientState__client);
  sub_1000FEC80();

  v2 = type metadata accessor for Client();
  v3 = sub_1000036B8(v2);
  v5 = *(v4 + 8);

  return v5(a1, v3);
}

void sub_1000C249C()
{
  sub_100005478();
  v4 = v1;
  v6 = v5;
  v7 = type metadata accessor for UserAgent();
  v8 = sub_100003650(v7);
  v103 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100004370();
  v94 = v12;
  v13 = sub_100046184(&qword_100217480, &unk_100198F70);
  v14 = sub_100005490(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100003838();
  v97 = v17;
  sub_100007F80();
  __chkstk_darwin(v18);
  sub_1000E26C8();
  v19 = sub_100046184(&qword_1002190D0, &qword_10019E230);
  sub_100005490(v19);
  v21 = *(v20 + 64);
  sub_100003760();
  __chkstk_darwin(v22);
  sub_1000E2CB4();
  v23 = type metadata accessor for Client();
  v24 = sub_100003650(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_100003838();
  v101 = v29;
  sub_100007F80();
  v31 = __chkstk_darwin(v30);
  v33 = &v93 - v32;
  __chkstk_darwin(v31);
  sub_1000E26B8();
  sub_1000E2A9C(OBJC_IVAR____TtC7parsecd11ClientState__userAgent);
  sub_1000FED50();

  v102 = v6;
  v34 = sub_100007700();
  sub_10000EFEC(v34, v35, &qword_100217480, &unk_100198F70);
  v36 = sub_1000B1FC4();
  sub_10000C944(v36, v37, v7);
  v98 = v7;
  if (v38)
  {
    sub_10000B298(v2, &qword_100217480, &unk_100198F70);
    sub_1000E23AC();
    sub_1000051C0(v39, v40, v41, v23);
    static Client.unknown.getter();
    v42 = sub_100009940();
    sub_10000C944(v42, v43, v23);
    v50 = v23;
    if (!v38)
    {
      sub_10000B298(v0, &qword_1002190D0, &qword_10019E230);
    }
  }

  else
  {
    UserAgent.client.getter();
    (*(v103 + 8))(v2, v7);
    sub_10000BB90();
    sub_1000051C0(v44, v45, v46, v23);
    v47 = *(v26 + 32);
    v48 = sub_1000E2840();
    v49(v48);
    v50 = v23;
  }

  if (qword_1002140A8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100006674(v51, qword_100232A68);
  v99 = *(v26 + 16);
  v100 = v26 + 16;
  v99(v33, v3, v50);

  v52 = Logger.logObject.getter();
  v53 = v3;
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v54))
  {
    v0 = sub_10001BCD4();
    v93 = sub_100018FF4();
    v105[0] = v93;
    *v0 = 136446466;
    Client.type.getter();
    v104 = ClientType.rawValue.getter();
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v53;
    v96 = v50;
    v56 = sub_1000E25EC();
    v57(v56);
    v58 = sub_10000AE18();
    sub_100009684(v58, v59, v60);
    sub_1000E24A8();

    *(v0 + 4) = v55;
    *(v0 + 12) = 2080;
    type metadata accessor for SessionType();
    sub_10000F574();
    sub_10000BA9C(v61, v62);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = sub_100009684(v63, v64, v105);

    *(v0 + 14) = v65;
    v53 = v95;
    v66 = v54;
    v67 = v96;
    _os_log_impl(&_mh_execute_header, v52, v66, "userAgent changed to %{public}s for session %s", v0, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    v68 = v103;
  }

  else
  {

    v69 = sub_1000E25EC();
    v70(v69);
    v68 = v103;
    v67 = v50;
  }

  sub_1000119E0();
  v71 = v101;
  sub_10001672C(v72, v73);
  Client.type.getter();
  v74 = sub_1000E2D24();
  (v33)(v74, v67);
  Client.type.getter();
  sub_10000835C();
  ClientType.rawValue.getter();
  sub_100006B00();
  if (v0 != ClientType.rawValue.getter())
  {
    sub_1000C2B78(v105);
    v75 = OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    sub_100005D5C();
    sub_1000E0670(v105, v4 + v75, &qword_100218208, &qword_10019C620);
    swift_endAccess();
  }

  v99(v71, v53, v67);
  sub_1000C2424(v71);
  sub_100006AE8();
  v78 = sub_10000BB00(v76, v77);
  if (v78)
  {
    v79 = v78;
    sub_10000848C();
    v80 = v97;
    sub_10001672C(v81, v82);
    v83 = sub_1000B1FC4();
    v84 = v98;
    if (sub_100008D0C(v83, v85, v98))
    {
      sub_10000B298(v80, &qword_100217480, &unk_100198F70);
      v86 = 0;
      v87 = 0;
    }

    else
    {
      sub_1000E2270();
      v95 = v53;
      v88 = v94;
      sub_10000DC50();
      v89();
      sub_10000B298(v80, &qword_100217480, &unk_100198F70);
      v86 = UserAgent.fullString.getter();
      v87 = v90;
      v53 = v95;
      (*(v68 + 8))(v88, v84);
    }

    objc_allocWithZone(PARBag);
    v91 = v79;
    v92 = sub_100015C68(v91, v86, v87);
    sub_1000C2374(v92);
  }

  sub_10000B298(v102, &qword_100217480, &unk_100198F70);
  (v33)(v53, v67);
  sub_100005460();
}

double sub_1000C2B78@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Client();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100046184(&qword_100217480, &unk_100198F70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for UserAgent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__userAgent, sub_10000F8D8);
  if (sub_100008D0C(v10, 1, v11) == 1)
  {
    sub_10000B298(v10, &qword_100217480, &unk_100198F70);
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000964C(v16, qword_100232AF8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "ClientState configured with nil useragent", v19, 2u);
    }

    goto LABEL_13;
  }

  (*(v12 + 32))(v15, v10, v11);
  UserAgent.client.getter();
  v20 = Client.type.getter();
  (*(v3 + 8))(v6, v2);
  if (v20 == 1)
  {
    v21 = type metadata accessor for SafariEngagedSuggestionController();
    swift_allocObject();

    v22 = sub_1000B203C();
    goto LABEL_11;
  }

  if (v20 == 2)
  {
    v21 = type metadata accessor for SpotlightEngagedSuggestionController();
    swift_allocObject();

    v22 = sub_1000662C0();
LABEL_11:
    *(a1 + 24) = v21;
    *(a1 + 32) = &off_1001F6A40;
    *a1 = v22;
    (*(v12 + 8))(v15, v11);
    return result;
  }

  (*(v12 + 8))(v15, v11);
LABEL_13:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1000C2F10()
{
  sub_100005478();
  v2 = v0;
  v56 = v3;
  v57 = v4;
  v6 = v5;
  v58 = v7;
  v8 = sub_100046184(&qword_1002190E0, &qword_10019E238);
  sub_100005490(v8);
  v10 = *(v9 + 64);
  sub_100003760();
  __chkstk_darwin(v11);
  sub_10000A964();
  v12 = type metadata accessor for SessionType();
  v13 = sub_100003650(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100004370();
  v59 = v18;
  v19 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v19);
  v21 = *(v20 + 64);
  sub_100003760();
  __chkstk_darwin(v22);
  sub_100007884();
  v23 = type metadata accessor for Client();
  v24 = sub_100005490(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100003664();
  sub_100006EBC();
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC7parsecd11ClientState__bag;
  sub_100046184(&qword_1002190E8, &qword_10019E240);
  sub_100006634();
  swift_allocObject();
  v28 = sub_10000899C();
  *(v0 + v27) = sub_1000A5270(v28);
  v29 = OBJC_IVAR____TtC7parsecd11ClientState__client;
  static Client.unknown.getter();
  v30 = sub_100046184(&qword_1002190F0, &qword_10019E248);
  sub_1000E2424(v30);
  sub_1000054F4();
  *(v0 + v29) = sub_100099470();
  v31 = OBJC_IVAR____TtC7parsecd11ClientState__userAgent;
  type metadata accessor for UserAgent();
  sub_1000E23AC();
  sub_1000051C0(v32, v33, v34, v35);
  v36 = sub_100046184(&qword_1002190F8, &qword_10019E250);
  sub_1000E2424(v36);
  *(v0 + v31) = sub_100099400();
  type metadata accessor for Date();
  sub_1000E23AC();
  sub_1000051C0(v37, v38, v39, v40);
  v41 = OBJC_IVAR____TtC7parsecd11ClientState__configuration;
  sub_100046184(&unk_100219100, &qword_10019E258);
  sub_100006634();
  swift_allocObject();
  v42 = sub_10000899C();
  *(v0 + v41) = sub_10010CFAC(v42);
  v43 = v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
  *(v43 + 4) = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_safariAssistantProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_lookupSearchProxy) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_safariSearchProxy) = 0;
  v44 = OBJC_IVAR____TtC7parsecd11ClientState_pegasusProxyLocker;
  type metadata accessor for Locker();
  sub_1000068B4();
  v45 = swift_allocObject();
  v46 = swift_slowAlloc();
  *(v45 + 16) = v46;
  *v46 = 0;
  *(v2 + v44) = v45;
  v2[3] = v57;
  swift_unknownObjectWeakAssign();
  v2[7] = sub_100004950();
  type metadata accessor for ClientSessionManager();
  swift_allocObject();
  sub_10000AB28();
  swift_unknownObjectRetain();

  sub_1000DFCA0();
  v2[8] = v47;
  v2[9] = &off_1001FC490;
  v2[5] = v58;
  v2[6] = v6;

  v2[4] = dispatch_semaphore_create(0);
  v48 = sub_1000E2C9C();
  sub_10000EFEC(v48, v49, &qword_1002190E0, &qword_10019E238);
  v50 = sub_1000E25C8();
  sub_10000C944(v50, v51, v12);
  if (v52)
  {
    v55 = v59;
    sub_10000AE18();
    SessionType.init(withClientIdentifier:)();
    v53 = sub_1000E25C8();
    sub_10000C944(v53, v54, v12);
    if (!v52)
    {
      sub_10000B298(v1, &qword_1002190E0, &qword_10019E238);
    }
  }

  else
  {

    v55 = v59;
    (*(v15 + 32))(v59, v1, v12);
  }

  (*(v15 + 32))(v2 + OBJC_IVAR____TtC7parsecd11ClientState_sessionType, v55, v12);
  sub_1000C23D8();
  swift_unknownObjectRelease();
  sub_10000B298(v56, &qword_1002190E0, &qword_10019E238);
  sub_100005460();
}

uint64_t sub_1000C336C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = [objc_opt_self() defaultCenter];
    [v1 removeObserver:v0];
    swift_unknownObjectRelease();
  }

  sub_10000B218(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC7parsecd11ClientState_sessionType;
  v6 = type metadata accessor for SessionType();
  sub_10000374C(v6);
  (*(v7 + 8))(v0 + v5);
  v8 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState__bag);

  v9 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState__client);

  v10 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState__userAgent);

  sub_10000B298(v0 + OBJC_IVAR____TtC7parsecd11ClientState_lastNetworkRequest, &qword_100217050, &qword_100199180);
  v11 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState__configuration);

  sub_10000B298(v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController, &qword_100218208, &qword_10019C620);
  v12 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy);

  v13 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy);

  v14 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_safariAssistantProxy);

  v15 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_lookupSearchProxy);

  v16 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_safariSearchProxy);

  v17 = *(v0 + OBJC_IVAR____TtC7parsecd11ClientState_pegasusProxyLocker);

  return v0;
}

uint64_t sub_1000C3520()
{
  sub_1000C336C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ClientState()
{
  result = qword_100218F88;
  if (!qword_100218F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C35CC()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for Client();
  v3 = sub_100003650(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v9 = Strong;
  sub_100006AE8();
  v12 = sub_10000BB00(v10, v11);
  if (v12)
  {
    v13 = v12;
    goto LABEL_5;
  }

  LOBYTE(v0) = v9;
  sub_1000158AC();
  v14 = sub_10000899C();
  sub_100015914(v14, 0);
  v13 = sub_100016D34();
  swift_unknownObjectRelease();
  if (v13)
  {
LABEL_5:
    sub_1000CFC9C(v13);
    if (v15 >> 60 == 15)
    {

      goto LABEL_7;
    }

    sub_1000119E0();
    sub_10001672C(v21, v22);
    v23 = Client.type.getter();
    v24 = *(v5 + 8);
    v25 = sub_100004170();
    v26(v25);
    switch(v23)
    {
      case 4:
        v45 = sub_100008380();
        sub_100014924(v45, v46);
        sub_10008596C();
        sub_10000899C();
        v47 = type metadata accessor for PegasusProxyForLookupSearch();
        sub_1000E2424(v47);
        v48 = sub_100008380();
        sub_100014924(v48, v49);
        sub_10000FE98();
        v50 = PegasusProxyForLookupSearch.init(bagData:urlSession:)();
        sub_10000F814(v50);
        sub_10008596C();
        sub_10000899C();
        v51 = type metadata accessor for PegasusProxyForEngagement();
        sub_1000E2424(v51);
        sub_10000FE98();
        break;
      case 2:
        v38 = sub_100008380();
        sub_100014924(v38, v39);
        sub_10008596C();
        sub_10000899C();
        v40 = type metadata accessor for PegasusProxyForSpotlightZKW();
        sub_1000E2424(v40);
        v41 = sub_100008380();
        sub_100014924(v41, v42);
        sub_10000FE98();
        v43 = PegasusProxyForSpotlightZKW.init(bagData:urlSession:)();
        sub_10000F814(v43);
        sub_10008596C();
        sub_10000899C();
        v44 = type metadata accessor for PegasusProxyForEngagement();
        sub_1000E2424(v44);
        sub_10000FE98();
        break;
      case 1:
        v27 = sub_100008380();
        sub_100062FBC(v27, v28);
        v29 = sub_100008380();
        sub_100014924(v29, v30);
        sub_10008596C();
        sub_10000899C();
        v31 = type metadata accessor for PegasusProxyForSafariAssistant();
        sub_1000E2424(v31);
        v32 = sub_100008380();
        sub_100014924(v32, v33);
        sub_10000FE98();
        v34 = PegasusProxyForSafariAssistant.init(bagData:urlSession:)();
        sub_10000F814(v34);
        sub_10008596C();
        sub_10000899C();
        v35 = type metadata accessor for PegasusProxyForSafariSearch();
        sub_1000E2424(v35);
        sub_10000FE98();
        v36 = PegasusProxyForSafariSearch.init(bagData:urlSession:)();
        sub_10000F814(v36);
        sub_10008596C();
        sub_10000899C();
        v37 = type metadata accessor for PegasusProxyForEngagement();
        sub_1000E2424(v37);
        sub_10000FE98();
        break;
      default:

        v56 = sub_100008380();
        sub_100014A2C(v56, v57);
        swift_unknownObjectRelease();
        goto LABEL_22;
    }

    v52 = PegasusProxyForEngagement.init(bagData:urlSession:client:)();

    v53 = sub_100008380();
    sub_100014A2C(v53, v54);
    swift_unknownObjectRelease();
    v55 = *&v1[OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy];
    *&v1[OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy] = v52;

LABEL_22:
    sub_100005460();
    return;
  }

LABEL_7:
  if (qword_100214058 != -1)
  {
    sub_10000670C();
  }

  v16 = type metadata accessor for Logger();
  sub_100006674(v16, qword_100232978);
  v58 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_1000098B0();
  if (os_log_type_enabled(v58, v17))
  {
    sub_1000E2130();
    v18 = swift_slowAlloc();
    sub_10000594C(v18);
    _os_log_impl(&_mh_execute_header, v58, v0, "couldn't initialize Pegasus Proxy, missing bag data", v1, 2u);
    sub_1000037A4();
  }

  swift_unknownObjectRelease();
  sub_100005460();
}

Swift::Int sub_1000C399C()
{
  v2 = v0;
  sub_10000899C();
  v3 = type metadata accessor for UserAgent();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  sub_1000068C0();
  v9 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v9);
  v11 = *(v10 + 64);
  sub_100003760();
  __chkstk_darwin(v12);
  sub_1000E2354();
  v13 = sub_1000A4804(v0);
  if (!v13)
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_7;
  }

  v14 = v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v14, &v33);

  sub_10003430C(&v32);
  if (!*(&v34 + 1))
  {
LABEL_7:
    sub_10000B298(&v33, &qword_1002181D0, &qword_100198E00);
    goto LABEL_10;
  }

  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if (swift_dynamicCast())
  {
    v15 = v32;
    sub_10000848C();
    sub_10001672C(v16, v17);
    v18 = sub_1000E25BC();
    if (sub_100008D0C(v18, v19, v3))
    {
      sub_10000B298(v1, &qword_100217480, &unk_100198F70);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      sub_1000E2270();
      v22 = sub_10000CC98();
      v23(v22);
      sub_10000B298(v1, &qword_100217480, &unk_100198F70);
      v20 = UserAgent.fullString.getter();
      v21 = v24;
      v25 = *(v6 + 8);
      v26 = sub_10000F18C();
      v27(v26);
    }

    objc_allocWithZone(PARBag);
    v28 = v15;
    v29 = sub_100015C68(v28, v20, v21);
    sub_1000C2374(v29);
  }

LABEL_10:
  v30 = v2[4];
  return OS_dispatch_semaphore.signal()();
}

void sub_1000C3C70()
{
  v0 = type metadata accessor for SessionType();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000504A0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1000C3DA0()
{
  result = qword_1002190A0;
  if (!qword_1002190A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002190A0);
  }

  return result;
}

uint64_t sub_1000C3DF4(uint64_t a1)
{
  result = sub_10000BA9C(&unk_1002190C0, type metadata accessor for ClientState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C3E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100046184(&qword_100217480, &unk_100198F70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25[-v6];
  v8 = type metadata accessor for UserAgent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = sub_1000C4190();
  swift_beginAccess();
  v16 = *(a3 + 16);
  *(a3 + 16) = v15;

  swift_beginAccess();
  v17 = *(a3 + 16);
  if (v17)
  {
    sub_100089408(0, 0xE000000000000000, v17, &selRef_setInput_);
  }

  swift_beginAccess();
  v18 = *(a3 + 16);
  if (v18)
  {
    [v18 setTriggerEvent:19];
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  if (v19)
  {
    [v19 setEndpoint:12];
  }

  swift_beginAccess();
  v20 = *(a3 + 16);
  if (!v20)
  {
  }

  v21 = objc_allocWithZone(_CPFeedbackPayload);
  v22 = v20;
  v23 = [v21 initWithCodable:v22];
  [v23 setQueryId:0];
  if (!v23)
  {
  }

  v24 = *(v14 + 64);
  swift_unknownObjectRetain();
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__userAgent, sub_10000F8D8);
  if (sub_100008D0C(v7, 1, v8) == 1)
  {
    parsecdUserAgent.getter();
    if (sub_100008D0C(v7, 1, v8) != 1)
    {
      sub_10000B298(v7, &qword_100217480, &unk_100198F70);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  sub_100014D74();

  swift_unknownObjectRelease();
  return (*(v9 + 8))(v12, v8);
}

id sub_1000C4190()
{
  v1 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v1);
  v3 = *(v2 + 64);
  sub_100003760();
  __chkstk_darwin(v4);
  sub_1000068C0();
  v5 = [objc_opt_self() startSearchFeedbackWithUUID];
  URLRequest.url.getter();
  v6 = type metadata accessor for URL();
  v7 = sub_1000B1FC4();
  sub_10000C944(v7, v8, v6);
  if (v9)
  {
    sub_10000B298(v0, &qword_100218230, &unk_100199A00);
    v10 = 0;
  }

  else
  {
    v10 = URL.absoluteString.getter();
    sub_10000690C(v6);
    v12 = *(v11 + 8);
    v13 = sub_10000CC98();
    v14(v13);
    sub_1000E263C();
    String._bridgeToObjectiveC()();
    sub_1000189B0();
  }

  v15 = sub_100012634();
  [v15 v16];

  v17 = URLRequest.allHTTPHeaderFields.getter();
  v18 = v17;
  if (v17)
  {
    sub_1000CF1C0(v17);

    Dictionary._bridgeToObjectiveC()();
    sub_1000054F4();
  }

  v19 = sub_100012634();
  [v19 v20];

  return v5;
}

uint64_t sub_1000C4334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&qword_100219128, &qword_10019E278);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16[-v9];
  *(a2 + qword_100216C08) = 4;
  sub_10000D684();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(a4 + 16);
    if (v13)
    {
      v14 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
      sub_1000051C0(v10, 1, 1, v14);
      v15 = v13;
      sub_1000DED90(v15, v10, 0, 0, a1, 0, v12);

      return sub_10000B298(v10, &qword_100219128, &qword_10019E278);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000C4490()
{
  v2 = sub_100007CD4();
  v4 = sub_100046184(v2, v3);
  sub_100005490(v4);
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  sub_1000068C0();
  Date.init()();
  type metadata accessor for Date();
  sub_10000BB90();
  sub_1000051C0(v8, v9, v10, v11);
  v12 = OBJC_IVAR____TtC7parsecd11ClientState_lastNetworkRequest;
  sub_100005D5C();
  sub_1000E0670(v1, v0 + v12, &qword_100217050, &qword_100199180);
  return swift_endAccess();
}

BOOL sub_1000C4558()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 objectForKey:@"download_resources"];

  v2 = v1 == 0;
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    memset(v4, 0, sizeof(v4));
  }

  sub_10000B298(v4, &qword_1002181D0, &qword_100198E00);
  return v2;
}

id sub_1000C4640(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1002140E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000964C(v10, qword_100232B10);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134349571;
    *(v14 + 4) = a4;
    *(v14 + 12) = 2050;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2117;
    *(v14 + 24) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "queryId:%{public}llu requestId: %{public}llu response: %{sensitive}@", v14, 0x20u);
    sub_10000B298(v15, &unk_100214C70, &qword_10019B4D0);
  }

  v17 = v11;
  sub_100062FBC(a2, a3);
  return v17;
}

uint64_t sub_1000C47D8(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 statusCode];
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    sub_100003898();
    v6 = Data.count.getter();
  }

  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100232B10);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = sub_1000E2170();
  if (os_log_type_enabled(v10, v11))
  {
    sub_10000F554();
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "response statusCode: %ld", v12, 0xCu);
    sub_1000037A4();
  }

  if (v5 != 200 || a3 >> 60 == 15)
  {
    if (v5 == 200)
    {
      v14 = 0;
    }

    else
    {
      v14 = v6;
    }

    sub_1000E1004();
    sub_10001AC40();
    swift_allocError();
    *v15 = v5;
    *(v15 + 8) = v14;
    *(v15 + 16) = v5 == 200;
    swift_willThrow();
  }

  else
  {
    v16 = sub_100003898();
    sub_100062FBC(v16, v17);
    v18 = a1;
  }

  return sub_100008380();
}

uint64_t sub_1000C497C(void *a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  sub_1000E281C();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15[0] = 0;
  v8 = [v3 JSONObjectWithData:isa options:0 error:v15];

  if (!v8)
  {
    v11 = v15[0];
    sub_1000E24A8();
    _convertNSErrorToError(_:)();

LABEL_6:
    swift_willThrow();
    return sub_100003898();
  }

  v9 = v15[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100046184(&qword_100215398, &qword_1001996A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000E1004();
    sub_10001AC40();
    v12 = swift_allocError();
    sub_1000E2D3C(v12, v13);
    goto LABEL_6;
  }

  v10 = a1;
  sub_100014924(a2, a3);
  return sub_100003898();
}

uint64_t sub_1000C4AF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a2;
  v6 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode();
  v7 = sub_100003650(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100003664();
  sub_10000A964();
  v10 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v11 = sub_100003650(v10);
  v64 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100003664();
  v17 = (v16 - v15);
  sub_1000C06FC(a5, &v69);
  if (!v70)
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
    goto LABEL_6;
  }

  sub_100005180(0, &unk_100219310, NSDictionary_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_1000E1004();
    sub_10001AC40();
    v19 = swift_allocError();
    sub_1000E2D3C(v19, v20);
    swift_willThrow();
    return sub_100005FBC();
  }

  Apple_Parsec_Search_V2_SearchResponse.init()();
  v18 = [v68 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (!v21)
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
    goto LABEL_18;
  }

  if (!sub_10000FE38())
  {
LABEL_18:
    v28 = sub_1000E26F8();
    v29(v28);
    v27 = v17;
    Apple_Parsec_Search_V2_SearchResponse.status.setter();
    goto LABEL_19;
  }

  v22 = v66 == 19279 && v67 == 0xE200000000000000;
  if (!v22 && (sub_1000E29A0() & 1) == 0)
  {
    v54 = v66 == 0x524F525245 && v67 == 0xE500000000000000;
    if (v54 || (sub_1000E29A0() & 1) != 0)
    {

      v23 = &enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusError(_:);
      goto LABEL_16;
    }

    if (v66 == 0x4C555345525F4F4ELL && v67 == 0xEA00000000005354)
    {

LABEL_78:
      v57 = sub_1000E26F8();
      v58(v57);
      Apple_Parsec_Search_V2_SearchResponse.status.setter();
      if (qword_1002140E0 != -1)
      {
        sub_10000435C();
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000964C(v59, qword_100232B10);
      v27 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      v61 = sub_1000E2170();
      if (os_log_type_enabled(v61, v62))
      {
        sub_1000E2130();
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v27, v60, "Response status: No results", v63, 2u);
        sub_1000E20B8();
      }

      goto LABEL_19;
    }

    v56 = sub_1000E29A0();

    if (v56)
    {
      goto LABEL_78;
    }

    goto LABEL_18;
  }

  v23 = &enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusOk(_:);
LABEL_16:
  v24 = *v23;
  v25 = sub_1000E26F8();
  v26(v25);
  v27 = v17;
  Apple_Parsec_Search_V2_SearchResponse.status.setter();
LABEL_19:
  v30 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v31 = sub_1000385D0(v30);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v32)
  {
    if (sub_10000FE38())
    {
      v27 = v17;
      Apple_Parsec_Search_V2_SearchResponse.query.setter();
    }
  }

  else
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
  }

  v33 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v34 = sub_1000385D0(v33);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v35)
  {
    if (sub_10000FE38())
    {
      v27 = v17;
      Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.setter();
    }
  }

  else
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
  }

  v36 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v37 = sub_1000385D0(v36);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v38)
  {
    if (sub_10000FE38())
    {
      v27 = Data.init(base64Encoded:options:)();
      v40 = v39;

      if (v40 >> 60 != 15)
      {
        sub_1000385F0();
        v27 = v17;
        Apple_Parsec_Search_V2_SearchResponse.feedback.setter();
      }
    }
  }

  else
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
  }

  sub_1000066DC();
  v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v42 = sub_1000385D0(v41);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v43)
  {
    if (sub_10000FE38())
    {
      v27 = v17;
      Apple_Parsec_Search_V2_SearchResponse.partialClientAddress.setter();
    }
  }

  else
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
  }

  v44 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v45 = sub_1000385D0(v44);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v46)
  {
    if (sub_10000FE38())
    {
      v27 = v17;
      Apple_Parsec_Search_V2_SearchResponse.millisecondDuration.setter();
    }
  }

  else
  {
    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
  }

  sub_1000066DC();
  v47 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v48 = sub_1000385D0(v47);
  sub_10000AB28();
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1000E2A0C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000E2454();
  }

  sub_1000E20DC();
  if (v49)
  {
    if (sub_10000FE38())
    {
      Apple_Parsec_Search_V2_SearchResponse.completionScore.setter();
    }
  }

  else
  {

    sub_10000B298(&v69, &qword_1002181D0, &qword_100198E00);
  }

  (*(v64 + 32))(a1, v17, v10);
  v50 = v71;
  v51 = sub_100003898();
  sub_100014924(v51, v52);
  return sub_100005FBC();
}

id sub_1000C5328(char *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v56 = a2;
  v57 = a5;
  v55 = a1;
  v15 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v50 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URLRequest();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = *(v47 + 64);
  __chkstk_darwin(v19);
  v49 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v42 - v28;
  v52 = a6;
  v53 = a7;
  if (String.count.getter() < 1)
  {
    (*(v16 + 16))(v55, v57, v15);
  }

  else
  {
    v45 = v15;
    v46 = a4;
    v54 = a3;
    v30 = v57;
    Apple_Parsec_Search_V2_SearchResponse.status.getter();
    (*(v23 + 104))(v27, enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusError(_:), v22);
    sub_10000BA9C(&qword_100219308, &type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *(v23 + 8);
    v32(v27, v22);
    v32(v29, v22);
    if (v31)
    {
      (*(v16 + 16))(v55, v30, v45);
      a4 = v46;
    }

    else
    {
      v43 = a9;
      v44 = a11;
      type metadata accessor for CachedResultSet(0);
      v33 = v49;
      (*(v47 + 16))(v49, v51, v48);
      v34 = *(v16 + 16);
      v35 = v50;
      v36 = v45;
      v34(v50, v30, v45);
      v37 = v53;

      v38 = v54;
      a4 = v46;
      sub_100014924(v54, v46);
      sub_100109364(v52, v37, v33, v35, v43, a10, v38, a4);
      v39 = *(v44 + 64);
      if (*(v39 + 32))
      {
        v40 = *(v39 + 32);

        sub_1000F0CB4();
      }

      v34(v55, v57, v36);
    }

    a3 = v54;
  }

  sub_100014924(a3, a4);
  return v56;
}

id sub_1000C574C(char *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v28 = a8;
  v29 = a6;
  v30 = a1;
  v26 = a5;
  v27 = a9;
  v14 = sub_100046184(&qword_100219128, &qword_10019E278);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v19 = *(*(v18 - 8) + 16);
  v19(v17, a5, v18);
  sub_1000051C0(v17, 0, 1, v18);
  v20 = Data.count.getter();
  v21 = a2;
  v22 = [a2 statusCode];
  swift_getObjectType();
  sub_1000DF4E4(a7, v17, v20, v22, v28, v27, v29);
  sub_10000B298(v17, &qword_100219128, &qword_10019E278);
  v19(v30, v26, v18);
  v23 = v21;
  sub_100014924(a3, a4);
  return v23;
}

uint64_t sub_1000C58F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v20 = a1;
  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  if (swift_dynamicCast() && !v19)
  {
    v6 = v17;

    swift_errorRetain();
    goto LABEL_9;
  }

  v20 = v5;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (v19 == 1)
    {

      v6 = 0;
      v5 = v17;
      goto LABEL_9;
    }

    sub_1000BA4F0(v17, v18, 0);
  }

  v5 = _convertErrorToNSError(_:)();
  v6 = 0;
LABEL_9:
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 134218754;
    *(v9 + 4) = v6;
    *(v9 + 12) = 2050;
    *(v9 + 14) = a3;
    *(v9 + 22) = 2050;
    *(v9 + 24) = a4;
    *(v9 + 32) = 2082;
    v20 = v5;
    swift_errorRetain();
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v17);

    *(v9 + 34) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "failed with HTTP status code %ld performing query %{public}llu requestId: %{public}llu error %{public}s", v9, 0x2Au);
    sub_100007378(v10);
  }

  v14 = _convertErrorToNSError(_:)();
  sub_1000C5BC0();

  v17 = v5;
  LOBYTE(v18) = 1;
  sub_100046184(&qword_1002192A8, &qword_10019E320);
  return Just.init(_:)();
}

void sub_1000C5BC0()
{
  sub_100005478();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v55 = v8;
  v56 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_100046184(&qword_100219128, &qword_10019E278);
  sub_100005490(v14);
  v16 = *(v15 + 64);
  sub_100003760();
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v20);
  v22 = *(v21 + 64);
  sub_100003760();
  __chkstk_darwin(v23);
  sub_10000A964();
  v24 = type metadata accessor for UserAgent();
  v25 = sub_100003650(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100003664();
  sub_1000068C0();
  if (v13)
  {
    v53 = v7;
    v54 = v5;
    v30 = objc_allocWithZone(_CPErrorFeedback);
    v51 = v13;
    v31 = sub_1000892A0(v13);
    v32 = v3;
    v33 = *(v3 + 64);
    v34 = objc_allocWithZone(_CPFeedbackPayload);
    sub_1000E2534();
    swift_unknownObjectRetain();
    v35 = [v7 initWithCodable:v31];
    v52 = v11;
    [v35 setQueryId:v11];
    sub_10000848C();
    sub_10001672C(v36, v37);
    v38 = sub_1000E25C8();
    sub_10000C944(v38, v39, v24);
    if (v40)
    {
      parsecdUserAgent.getter();
      v41 = sub_1000E25C8();
      sub_10000C944(v41, v42, v24);
      if (!v40)
      {
        sub_10000B298(v2, &qword_100217480, &unk_100198F70);
      }
    }

    else
    {
      (*(v27 + 32))(v1, v2, v24);
    }

    sub_100003898();
    sub_100014D74();

    swift_unknownObjectRelease();
    v43 = *(v27 + 8);
    v44 = sub_1000E2804();
    v45(v44);
    type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
    sub_1000E23AC();
    sub_1000051C0(v46, v47, v48, v49);
    v50 = v55;
    swift_getObjectType();
    sub_1000DF4E4(v50, v19, v56, v53, v54, v52, v32);

    sub_10000B298(v19, &qword_100219128, &qword_10019E278);
  }

  sub_100005460();
}

id sub_1000C5E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(PARReply) init];
  [a5 scale];
  [v9 setScale:?];
  if ([a5 verboseReply])
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    [v9 setHttpRequest:isa];

    [v9 setHttpResponse:a1];
  }

  sub_1000CFCF8(a2, a3, v9);
  return v9;
}

void sub_1000C5F54()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v53 = v4;
  v5 = sub_100046184(&qword_100217B90, &unk_10019E900);
  sub_100005490(v5);
  v7 = *(v6 + 64);
  sub_100003760();
  __chkstk_darwin(v8);
  sub_10000BBD0();
  v50 = v9;
  sub_1000058D8();
  v10 = type metadata accessor for Trialpb_TrialExperiment();
  v11 = sub_100003650(v10);
  v51 = v12;
  v52 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100004370();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = sub_10000F830();
  sub_1000BBE98(v15, v17);

  v19 = sub_1000E2614();
  v18(v19);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = sub_10000F830();
  sub_1000BBE98(v20, v22);

  v24 = sub_1000E2614();
  v23(v24);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = sub_10000F830();
  sub_1000BBE98(v25, v27);

  v29 = sub_1000E2614();
  v28(v29);
  if (v3 && v1)
  {
    v30 = v3;
    if ([v30 sessionExperimentMetadataEnabled] && (sub_1000CFB78(v53, &selRef_clientShortName), v31))
    {
      sub_100066648(v1, v50);

      v32 = sub_10000F268();
      sub_10000C944(v32, v33, v52);
      if (v34)
      {

        sub_10000B298(v50, &qword_100217B90, &unk_10019E900);
      }

      else
      {
        (*(v51 + 32))();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000E2D30();
        v54 = v30;
        Trialpb_TrialExperiment.treatmentID.getter();
        v35 = sub_10000F830();
        v37 = v36;
        v38 = *v36;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1000E2740(*v37);
        *v37 = v55;

        v39 = sub_1000E2614();
        v35(v39);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000E2D30();
        Trialpb_TrialExperiment.experimentID.getter();
        sub_10000F830();
        sub_1000E2CC0();
        v41 = *v40;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1000E2740(&__CFConstantStringClassReference);
        @"X-Apple-Trial-Experiment-Id".isa = v55;

        v42 = sub_1000E2614();
        v35(v42);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000E2D30();
        Trialpb_TrialExperiment.experimentNamespace.getter();
        sub_1000E2C54();
        v43 = sub_10000F830();
        v45 = v44;
        v46 = *v44;
        swift_isUniquelyReferenced_nonNull_native();
        v56 = *v45;
        sub_100006B0C();
        sub_1000BD710();
        *v45 = v56;

        v47 = sub_1000E2614();
        v43(v47);

        v48 = sub_1000E2478();
        v49(v48);
      }
    }

    else
    {
    }
  }

  sub_100005460();
}

void sub_1000C6338(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(_CPSkipSearchFeedback);

  v12 = sub_1000CEF48(4, a2, a3);
  v9 = *(v4 + 64);
  swift_unknownObjectRetain();
  v10 = [a1 queryId];
  v11 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v12];
  [v11 setQueryId:v10];
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_1000E28B8(qword_100216C08);
}

void sub_1000C6448(void *a1, void *a2, int *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (**a8)(void, void, void, void))
{
  v106 = a6;
  v108 = a4;
  v107 = a3;
  v117 = a2;
  v120 = a1;
  v128 = type metadata accessor for URLRequest();
  v119 = *(v128 - 8);
  v11 = *(v119 + 64);
  __chkstk_darwin(v128);
  v118 = v12;
  v126 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v127 = &v95 - v15;
  v110 = type metadata accessor for SessionTokens(0);
  v16 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v129 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest();
  v125 = *(v133 - 8);
  v18 = *(v125 + 64);
  v19 = __chkstk_darwin(v133);
  v122 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v20;
  __chkstk_darwin(v19);
  v124 = &v95 - v21;
  v22 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v123 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UserAgent();
  v104 = *(v105 - 8);
  v26 = *(v104 + 64);
  __chkstk_darwin(v105);
  v102 = v27;
  v103 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for NetworkFeedbackGenerator();
  v116 = *(v132 - 8);
  v28 = *(v116 + 64);
  v29 = __chkstk_darwin(v132);
  v121 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v30;
  __chkstk_darwin(v29);
  v131 = &v95 - v31;
  v32 = type metadata accessor for PegasusContext(0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v114 = *(Context - 8);
  v115 = Context;
  v37 = *(v114 + 64);
  __chkstk_darwin(Context);
  v39 = (&v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext();
  v111 = *(v113 - 8);
  v40 = *(v111 + 64);
  __chkstk_darwin(v113);
  v130 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100046184(&qword_1002192E0, &unk_10019BE40);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v95 - v44;
  v46 = swift_allocObject();
  *(v46 + 16) = a8;
  v47 = a7;
  v48 = *(a7 + OBJC_IVAR____TtC7parsecd11ClientState_safariSearchProxy);
  if (v48)
  {
    v97 = v46;
    v98 = v23;
    v99 = v22;
    v100 = a5;
    v101 = a8;
    _Block_copy(a8);

    v49 = v120;
    sub_100092740(v49, v45);
    [v49 triggerEvent];
    sub_1000CFB78(v49, &selRef_previouslyEngagedQuery);
    v120 = v45;
    v50 = v48;
    dispatch thunk of PegasusProxyForSafariSearch.createSafariQueryContext(previousQuery:suggestQuery:localCompletions:)();
    v51 = v47;

    v52 = v107;
    sub_100017190(v35);
    sub_1000F5048(1, v52, v108, v39);
    sub_10001C254();
    [v49 scale];
    Apple_Parsec_Search_PegasusQueryContext.uiScale.setter();
    sub_1000CFB78(v49, &selRef_keyboardInputMode);
    Apple_Parsec_Search_PegasusQueryContext.keyboardIme.setter();
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = v104;
    v55 = v103;
    v56 = v105;
    (*(v104 + 16))(v103, v106, v105);
    v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v49;
    *(v58 + 24) = v53;
    (*(v54 + 32))(v58 + v57, v55, v56);
    v59 = v49;
    NetworkFeedbackGenerator.init(isBodyDataRedacted:consumer:)();
    v60 = [v59 queryCommand];
    v61 = v39;
    if (v60)
    {
      v62 = v60;
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (v63)
      {
        v64 = &selRef_tokenString;
LABEL_10:
        v65 = sub_1000CFB78(v63, v64);
        v67 = v66;

        if (v67)
        {
          v68 = v65;
        }

        else
        {
          v68 = 0;
        }

        if (!v67)
        {
          v67 = 0xE000000000000000;
        }

        goto LABEL_18;
      }

      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (v63)
      {
        v64 = &selRef_searchString;
        goto LABEL_10;
      }
    }

    v69 = [v59 queryString];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v70;

LABEL_18:
    v107 = v68;
    v108 = v67;
    Apple_Parsec_Search_PegasusSearchQuery.init()();

    Apple_Parsec_Search_PegasusSearchQuery.query.setter();
    v71 = v124;
    v96 = v50;
    dispatch thunk of PegasusProxyForSafariSearch.createRequest(_:context:safariContext:)();
    v72 = *(v51 + 64);
    swift_unknownObjectRetain();
    v73 = v129;
    sub_1000E75A0();
    swift_unknownObjectRelease();
    v74 = sub_10000BB00(&OBJC_IVAR____TtC7parsecd11ClientState__bag, sub_10000BB3C);
    v75 = *&v73[*(v110 + 24)];
    sub_1000C5F54();

    v76 = v127;
    static TaskPriority.userInitiated.getter();
    v77 = type metadata accessor for TaskPriority();
    sub_1000051C0(v76, 0, 1, v77);
    v78 = v59;
    v106 = v59;
    v79 = v125;
    (*(v125 + 16))(v122, v71, v133);
    v80 = v116;
    (*(v116 + 16))(v121, v131, v132);
    v81 = v119;
    (*(v119 + 16))(v126, v117, v128);
    v82 = (*(v79 + 80) + 64) & ~*(v79 + 80);
    v83 = (v112 + *(v80 + 80) + v82) & ~*(v80 + 80);
    v84 = (v109 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = v51;
    v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = *(v81 + 80);
    v117 = v61;
    v87 = (v86 + v85 + 16) & ~v86;
    v118 = (v118 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    *(v88 + 2) = 0;
    *(v88 + 3) = 0;
    v89 = v107;
    *(v88 + 4) = v78;
    *(v88 + 5) = v89;
    v90 = v96;
    *(v88 + 6) = v108;
    *(v88 + 7) = v90;
    (*(v79 + 32))(&v88[v82], v122, v133);
    (*(v80 + 32))(&v88[v83], v121, v132);
    *&v88[v84] = v100;
    v91 = &v88[v85];
    v92 = v97;
    *v91 = sub_1000E1FD4;
    *(v91 + 1) = v92;
    (*(v81 + 32))(&v88[v87], v126, v128);
    *&v88[v118] = v112;

    v93 = v106;

    v94 = v127;
    sub_1000FE178(0, 0, v127, &unk_10019E338, v88);

    sub_10000B298(v94, &unk_10021A820, &qword_1001992D0);
    (*(v125 + 8))(v124, v133);
    (*(v98 + 8))(v123, v99);
    (*(v80 + 8))(v131, v132);
    (*(v114 + 8))(v117, v115);
    (*(v111 + 8))(v130, v113);
    sub_10000B298(v120, &qword_1002192E0, &unk_10019BE40);
    sub_10001C254();

    _Block_release(v101);
    return;
  }

  _Block_copy(a8);
  (a8)[2](a8, [v120 queryId], 0, 0);
  *(a5 + qword_100216C08) = 42;
  sub_10000D684();

  _Block_release(a8);
}

uint64_t sub_1000C7160()
{
  [v0 nwActivityLabel];
  v1 = nw_activity_create();
  if ([v0 nwActivity])
  {
    sub_1000041F8();
    nw_activity_set_parent_activity();
    swift_unknownObjectRelease();
  }

  nw_activity_activate();
  return v1;
}

uint64_t sub_1000C71D8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t sub_1000C721C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_1000C7264@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t sub_1000C72AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(a3 + *(v10 + 64), v6, v7, v8, v9);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v12;
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1000C733C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(a3 + *(v10 + 64), v7, v8, v9, a1 + *(v10 + 64));
  if (!v3)
  {
    *a3 = result;
    a3[1] = v12;
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1000C73D0@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(v7, v8, v9, &a1[*(v10 + 64)]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v12 & 1;
  }

  return result;
}

id sub_1000C7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v4 = *a1;
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v2;
    *(a2 + 8) = 0;
    return v2;
  }
}

uint64_t sub_1000C74E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100046184(&qword_100219300, &qword_10019E340);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v50 - v27;
  v58 = a2;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v29 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v28, 1, v29) != 1)
  {
    v50 = a4;
    sub_10000EFEC(v28, v26, &unk_1002191A0, &unk_10019A830);
    v30 = *(v29 - 8);
    v31 = (*(v30 + 88))(v26, v29);
    if (v31 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {
      result = [v58 triggerEvent];
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.init(rawValue:)();
      if (sub_100008D0C(v16, 1, v17) == 1)
      {
        (*(v18 + 104))(v21, enum case for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.unknown(_:), v17);
        if (sub_100008D0C(v16, 1, v17) != 1)
        {
          sub_10000B298(v16, &qword_100219300, &qword_10019E340);
        }
      }

      else
      {
        (*(v18 + 32))(v21, v16, v17);
      }

      v34 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.setter();
      v34(v59, 0);
      v35 = v58;
      v36 = [v58 triggerEvent];
      v37 = &enum case for Apple_Parsec_Feedback_V2_SearchType.committed(_:);
      if (v36 != 23)
      {
        v37 = &enum case for Apple_Parsec_Feedback_V2_SearchType.asYouType(_:);
      }

      (*(v52 + 104))(v51, *v37, v53);
      v38 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v38(v59, 0);
      v39 = [v35 queryString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.input.setter();
      v40(v59, 0);
      (*(v54 + 104))(v56, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v55);
      v41 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v41(v59, 0);
    }

    else if (v31 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v54 + 104))(v56, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v55);
      v33 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v33(v59, 0);
    }

    (*(v30 + 8))(v26, v29);
  }

  sub_10000B298(v28, &unk_1002191A0, &unk_10019A830);
  v42 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v43 = Message.serializedData(partial:)();
  v45 = v44;
  (*(*(v42 - 8) + 8))(a1, v42);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v47 = *(Strong + 64);
    v48 = objc_allocWithZone(_CPFeedbackPayload);
    swift_unknownObjectRetain();
    sub_100014924(v43, v45);
    v49 = sub_1000149C0(v43, v45);
    sub_100014D74();

    swift_unknownObjectRelease();
  }

  return sub_100014A40(v43, v45);
}

uint64_t sub_1000C7C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v28;
  *(v8 + 144) = v29;
  *(v8 + 120) = v27;
  *(v8 + 104) = v26;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for BinaryEncodingError();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v12 = type metadata accessor for Apple_Parsec_Search_StatusCode();
  *(v8 + 184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v8 + 208) = v15;
  v16 = *(v15 - 8);
  *(v8 + 216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v18 = type metadata accessor for URLRequest();
  *(v8 + 232) = v18;
  v19 = *(v18 - 8);
  *(v8 + 240) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v21 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
  *(v8 + 256) = v21;
  v22 = *(v21 - 8);
  *(v8 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1000C7E9C, 0, 0);
}

uint64_t sub_1000C7E9C()
{
  sub_1000E2870();
  if (qword_100214058 != -1)
  {
    sub_10000670C();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = type metadata accessor for Logger();
  sub_100006674(v3, qword_100232978);
  v4 = v2;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = sub_10001BCD4();
    sub_100007B80();
    *v10 = 134349315;
    *(v10 + 4) = [v9 queryId];

    *(v10 + 12) = 2085;
    v11 = sub_100008380();
    *(v10 + 14) = sub_100009684(v11, v12, v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "performing safari search over gRPC qid: %{public}llu query: %{sensitive}s", v10, 0x16u);
    sub_1000E2DFC();
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {
  }

  v14 = *(v0 + 104);
  v15 = type metadata accessor for NetworkFeedbackGenerator();
  *(v0 + 40) = v15;
  *(v0 + 48) = &protocol witness table for NetworkFeedbackGenerator;
  sub_1000205C4((v0 + 16));
  sub_10000690C(v15);
  (*(v16 + 16))();
  sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForSafariSearch.send(_:observer:));
  v24 = v17;
  swift_task_alloc();
  sub_1000E2608();
  *(v0 + 288) = v18;
  *v18 = v19;
  v18[1] = sub_1000C80B8;
  v20 = *(v0 + 280);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);

  return v24(v20, v21, v0 + 16);
}

uint64_t sub_1000C80B8()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_1000E2708();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_100005898();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (!v0)
  {
    sub_10000B298(v3 + 16, &qword_100219160, &qword_10019E298);
  }

  sub_1000E21E8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C81C8()
{
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = [objc_allocWithZone(PARReply) init];
  sub_10000BA9C(&qword_1002192F0, &type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);
  sub_1000E27F8();
  v8 = Message.serializedData(partial:)();
  if (v4)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));

    sub_1000E2D6C();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    if (sub_1000E28E8())
    {
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      sub_1000E2C14();

      v12 = sub_1000E2460(v2);
      v13(v12, v11, v6);
      *(v5 + qword_100216C08) = 18;
      sub_10000D684();
      [v1 queryId];
      sub_10000DC38();
      sub_10000BA9C(v14, v15);
      sub_10001AC40();
      v16 = swift_allocError();
      sub_1000E2230();
      sub_1000E25B0();
      v17();
      sub_10001343C(v16);

      sub_1000E2858();
      v3();

      (*(v2 + 8))(v10, v6);
      v18 = *(v0 + 56);
    }

    else
    {
      v35 = *(v0 + 120);
      v34 = *(v0 + 128);
      v36 = *(v0 + 112);
      v37 = *(v0 + 56);
      v38 = *(v0 + 64);

      *(v36 + qword_100216C08) = 48;
      sub_10000D684();
      [v38 queryId];
      sub_1000054F4();
      swift_errorRetain();
      sub_10001343C(v4);
      sub_1000E2864();

      sub_1000E2C28();
      v35();
    }
  }

  else
  {
    v19 = v8;
    v20 = v9;
    v21 = sub_1000235CC(v8, v9);
    v76 = *(v0 + 280);
    if (v21)
    {
      v71 = *(v0 + 264);
      v73 = *(v0 + 256);
      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v24 = *(v0 + 184);
      v68 = *(v0 + 120);
      v70 = *(v0 + 128);
      v25 = *(v0 + 64);
      *(*(v0 + 112) + qword_100216C08) = 20;
      sub_10000D684();
      v67 = [v25 queryId];
      Apple_Parsec_Safari_V1alpha_SafariSearchResponse.status.getter();
      v26 = Apple_Parsec_Search_StatusCode.rawValue.getter();
      (*(v23 + 8))(v22, v24);
      sub_1000E1004();
      sub_10001AC40();
      v27 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = 0;
      *(v28 + 16) = 1;
      v29 = sub_10001343C(v27);

      v68(v67, 0, v29);

      v30 = sub_100008380();
      sub_100014A40(v30, v31);
      v32 = sub_1000E2478();
      v33(v32);
    }

    else
    {
      v39 = *(v0 + 264);
      v40 = *(v0 + 248);
      v65 = *(v0 + 272);
      v66 = *(v0 + 256);
      v41 = *(v0 + 240);
      v42 = *(v0 + 216);
      v43 = *(v0 + 224);
      v69 = *(v0 + 208);
      v44 = *(v0 + 136);
      v63 = *(v0 + 232);
      v64 = *(v0 + 80);
      v72 = *(v0 + 72);
      v74 = *(v0 + 144);
      v45 = sub_100008380();
      sub_1000CFCF8(v45, v46, v7);
      type metadata accessor for CachedResultSet(0);
      (*(v41 + 16))(v40, v44, v63);
      (*(v39 + 16))(v65, v76, v66);

      UUID.init()();
      v47 = UUID.uuidString.getter();
      v49 = v48;
      (*(v42 + 8))(v43, v69);
      v50 = sub_100008380();
      sub_100014924(v50, v51);
      sub_1001093AC(v72, v64, v40, v65, v47, v49, v19, v20);
      v52 = *(v74 + 64);
      if (*(v52 + 32))
      {
        v53 = *(v52 + 32);

        sub_1000F0CB4();
      }

      v54 = *(v0 + 264);
      v75 = *(v0 + 256);
      v77 = *(v0 + 280);
      v56 = *(v0 + 120);
      v55 = *(v0 + 128);
      v57 = *(v0 + 112);
      [*(v0 + 64) queryId];
      v58 = v7;
      sub_1000E2158();
      v56();

      *(v57 + qword_100216C08) = 2;
      sub_10000D684();

      v59 = sub_100008380();
      sub_100014A40(v59, v60);
      (*(v54 + 8))(v77, v75);
    }
  }

  sub_1000E2964();

  sub_1000098BC();

  return v61();
}

uint64_t sub_1000C8728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000E2D50();
  sub_1000E2870();
  sub_10000B298((v13 + 2), &qword_100219160, &qword_10019E298);
  v18 = v13[37];
  sub_1000E2A3C();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  sub_100007CC8();
  if (swift_dynamicCast())
  {
    v19 = v13[21];
    v20 = v13[22];
    sub_1000E2C14();

    sub_1000E2888();
    v21(v19, v20, v14);
    *(v12 + qword_100216C08) = 18;
    sub_10000D684();
    [v15 queryId];
    sub_10000DC38();
    sub_10000BA9C(v22, v23);
    sub_10001AC40();
    v24 = swift_allocError();
    sub_1000E2230();
    sub_10000BA3C();
    v25();
    sub_10001343C(v24);

    sub_1000E2858();
    v17();

    v26 = *(v16 + 8);
    v27 = sub_10000F520();
    v28(v27);
    v29 = v13[7];
  }

  else
  {
    v31 = v13[15];
    v30 = v13[16];
    v32 = v13[14];
    v33 = v13[7];
    v34 = v13[8];

    *(v32 + qword_100216C08) = 48;
    sub_10000D684();
    [v34 queryId];
    sub_10000835C();
    swift_errorRetain();
    sub_10001343C(v18);
    sub_1000E2534();

    sub_1000E2C28();
    v31();
  }

  sub_1000E2964();

  sub_1000098BC();
  sub_1000E27AC();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1000C8960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, id))
{
  sub_1000C21A4(*a1, *(a1 + 8), a5);
  sub_10000D684();
  sub_100005854();
  return sub_1000CAC14();
}

uint64_t sub_1000C89B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v45 = a5;
  v43 = a3;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v39 - v21;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v23 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v22, 1, v23) != 1)
  {
    v39 = v8;
    v40 = v11;
    sub_10000EFEC(v22, v20, &unk_1002191A0, &unk_10019A830);
    v24 = *(v23 - 8);
    v25 = (*(v24 + 88))(v20, v23);
    if (v25 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {

      v26 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.input.setter();
      v26(v46, 0);
      (*(v42 + 104))(v15, enum case for Apple_Parsec_Feedback_V2_SearchType.committed(_:), v12);
      v27 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v27(v46, 0);
      (*(v44 + 104))(v40, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecCard(_:), v39);
      v28 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v28(v46, 0);
    }

    else if (v25 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v44 + 104))(v40, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecCard(_:), v39);
      v29 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v29(v46, 0);
    }

    (*(v24 + 8))(v20, v23);
  }

  sub_10000B298(v22, &unk_1002191A0, &unk_10019A830);
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v31 = Message.serializedData(partial:)();
  v33 = v32;
  (*(*(v30 - 8) + 8))(a1, v30);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = *(Strong + 64);
    v36 = objc_allocWithZone(_CPFeedbackPayload);
    swift_unknownObjectRetain();
    sub_100014924(v31, v33);
    v37 = sub_1000149C0(v31, v33);
    sub_100014D74();

    swift_unknownObjectRelease();
  }

  return sub_100014A40(v31, v33);
}

void sub_1000C8F10(_BYTE *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, void *a5)
{
  if ((*a1 & 1) == 0)
  {
    *(a2 + qword_100216C08) = 24;
    if (qword_100214060 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000964C(v7, qword_100232990);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = String.init<A>(describing:)();
      v14 = a3;
      v15 = sub_100009684(v12, v13, &v16);

      *(v10 + 4) = v15;
      a3 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Engagement Search: publisher failure, error: %s. Returning an empty response", v10, 0xCu);
      sub_100007378(v11);
    }

    a3([a5 queryId], 0, 0);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100099FA4();
    swift_unknownObjectRelease();
  }

  sub_10000D684();
}

void sub_1000C910C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void (*a6)(id, void, id), uint64_t a7, void *a8)
{
  v40 = a6;
  v41 = a8;
  v39 = a7;
  v38 = a5;
  v42 = a4;
  v43 = a2;
  v44 = a3;
  v9 = type metadata accessor for PegasusProxyForEngagement.Error();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100046184(&qword_100219180, &qword_10019E2B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  sub_10000EFEC(a1, &v36 - v20, &qword_100219180, &qword_10019E2B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v37;
    (*(v37 + 32))(v12, v21, v9);
    v23 = v41;
    *(v42 + qword_100216C08) = 48;
    v24 = [v23 queryId];
    sub_10000BA9C(&qword_100219188, &type metadata accessor for PegasusProxyForEngagement.Error);
    v25 = swift_allocError();
    (*(v22 + 16))(v26, v12, v9);
    v27 = sub_10001343C(v25);

    v40(v24, 0, v27);

    (*(v22 + 8))(v12, v9);
  }

  else
  {
    v28 = v40;
    v37 = v14;
    (*(v14 + 32))(v17, v21, v13);
    *(v42 + qword_100216C08) = 2;
    v29 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&unk_100219190, &type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);
    v30 = Message.serializedData(partial:)();
    v32 = v31;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A40(v30, v32);
    [v29 setData:isa];

    [v29 setReplyType:v38];
    v34 = [v41 queryId];
    v35 = v29;
    v28(v34, v29, 0);

    (*(v37 + 8))(v17, v13);
  }

  sub_1000CC4C8();
}

uint64_t sub_1000C9544(void *a1, uint64_t a2, void *a3)
{
  result = sub_1000C497C(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1000C9570(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000C4AF8(a1, a2, a3, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1000C95EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v61 = a5;
  v56 = a3;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupSelectionType();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v57 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  __chkstk_darwin(v11);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v49 - v27;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v29 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v28, 1, v29) != 1)
  {
    sub_10000EFEC(v28, v26, &unk_1002191A0, &unk_10019A830);
    v30 = *(v29 - 8);
    v31 = (*(v30 + 88))(v26, v29);
    if (v31 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {

      v51 = v30;
      v32 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      v50 = a2;
      v33 = v32;
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.input.setter();
      v33(v62, 0);
      (*(v53 + 104))(v21, enum case for Apple_Parsec_Feedback_V2_SearchType.committed(_:), v18);
      v34 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v34(v62, 0);
      (*(v54 + 104))(v17, enum case for Apple_Parsec_Feedback_V2_TriggerSearchRequestEvent.lookup(_:), v55);
      v35 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.setter();
      v35(v62, 0);
      (*(v58 + 104))(v60, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v59);
      v36 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v36(v62, 0);
      v37 = [v50 lookupSelectionType];
      sub_100066F1C(v37, v57);
      v38 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.lookupSelectionType.setter();
      v30 = v51;
      v38(v62, 0);
    }

    else if (v31 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v58 + 104))(v60, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v59);
      v39 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v39(v62, 0);
    }

    (*(v30 + 8))(v26, v29);
  }

  sub_10000B298(v28, &unk_1002191A0, &unk_10019A830);
  v40 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v41 = Message.serializedData(partial:)();
  v43 = v42;
  (*(*(v40 - 8) + 8))(a1, v40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = *(Strong + 64);
    v46 = objc_allocWithZone(_CPFeedbackPayload);
    swift_unknownObjectRetain();
    sub_100014924(v41, v43);
    v47 = sub_1000149C0(v41, v43);
    sub_100014D74();

    swift_unknownObjectRelease();
  }

  return sub_100014A40(v41, v43);
}

uint64_t sub_1000C9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v32;
  *(v8 + 144) = v33;
  *(v8 + 120) = v31;
  *(v8 + 104) = v30;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for BinaryEncodingError();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v12 = type metadata accessor for Apple_Parsec_Search_StatusCode();
  *(v8 + 184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v15 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse();
  *(v8 + 208) = v15;
  v16 = *(v15 - 8);
  *(v8 + 216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v18 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchRequest();
  *(v8 + 232) = v18;
  v19 = *(v18 - 8);
  *(v8 + 240) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v21 = type metadata accessor for JSONEncodingOptions();
  *(v8 + 256) = v21;
  v22 = *(v21 - 8);
  *(v8 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v24 = *(*(type metadata accessor for PegasusContext(0) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  *(v8 + 288) = Context;
  v26 = *(Context - 8);
  *(v8 + 296) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1000C9FA8, 0, 0);
}

void sub_1000C9FA8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_100017190(*(v0 + 280));
  sub_1000F5048(0x17, v5, v6, v1);
  sub_100005FA4();
  sub_10001C254();
  JSONEncodingOptions.init()();
  sub_10000BA9C(&qword_1002181F8, &type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  v7 = Message.jsonString(options:)();
  (*(v4 + 8))(*(v0 + 272), *(v0 + 256));
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    swift_once();
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  v10 = type metadata accessor for Logger();
  sub_100006674(v10, qword_100232B10);
  v11 = v9;

  v12 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_1000E2AB4())
  {
    v13 = *(v0 + 96);
    v42 = *(v0 + 104);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = sub_1000E2648();
    sub_100018FF4();
    *v16 = 134349827;
    *(v16 + 4) = [v15 queryId];

    *(v16 + 12) = 2085;
    v17 = sub_100008A40();
    *(v16 + 14) = sub_100009684(v17, v18, v19);
    *(v16 + 22) = 2085;
    v20 = sub_100096024();
    sub_100009684(v20, v21, v22);
    sub_1000E2534();

    *(v16 + 24) = v7;
    *(v16 + 32) = 2050;
    *(v16 + 34) = v42;
    sub_1000E21AC();
    _os_log_impl(v23, v24, v25, v26, v16, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000E20B8();
  }

  else
  {
  }

  v27 = *(v0 + 304);
  v28 = *(v0 + 248);
  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  dispatch thunk of PegasusProxyForLookupSearch.createRequest(_:context:)();
  v33 = type metadata accessor for NetworkFeedbackGenerator();
  *(v0 + 40) = v33;
  *(v0 + 48) = &protocol witness table for NetworkFeedbackGenerator;
  sub_1000205C4((v0 + 16));
  sub_10000690C(v33);
  (*(v34 + 16))();
  sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForLookupSearch.send(_:observer:));
  swift_task_alloc();
  sub_1000E2608();
  *(v0 + 312) = v35;
  *v35 = v36;
  v35[1] = sub_1000CA2FC;
  v37 = *(v0 + 248);
  v38 = *(v0 + 224);
  v39 = *(v0 + 112);
  sub_1000E2790();

  __asm { BR              X3 }
}

uint64_t sub_1000CA2FC()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_1000E2708();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  sub_100005898();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    sub_10000B298(v3 + 16, &qword_100219160, &qword_10019E298);
  }

  sub_1000E21E8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000CA40C()
{
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[26];
  v4 = [objc_allocWithZone(PARReply) init];
  sub_10000BA9C(&qword_100219330, &type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResponse);
  sub_1000E27F8();
  v5 = Message.serializedData(partial:)();
  if (v1)
  {
    v7 = v0[37];
    v77 = v0[38];
    v8 = v0[36];
    v9 = v0[30];
    v10 = v0[31];
    v11 = v4;
    v13 = v0[28];
    v12 = v0[29];
    v15 = v0[26];
    v14 = v0[27];

    v16 = *(v14 + 8);
    v17 = sub_1000E2318();
    v18(v17);
    v20 = *(v9 + 8);
    v19 = v9 + 8;
    v21 = sub_100005CC0();
    v22(v21);
    v24 = *(v7 + 8);
    v23 = v7 + 8;
    v24(v77, v8);
    sub_1000E2D6C();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    if (sub_1000E28E8())
    {
      v25 = v0[21];
      v26 = v0[22];
      sub_100037BE0();

      v27 = sub_1000E2460(v13);
      v28(v27, v26, v19);
      *(v23 + qword_100216C08) = 18;
      [v12 queryId];
      sub_10000DC38();
      sub_10000BA9C(v29, v30);
      sub_10001AC40();
      v31 = swift_allocError();
      sub_1000E2BA0(v31, v32);
      sub_1000E25B0();
      v33();
      sub_10001343C(v26);
      sub_1000E227C();

      sub_1000E2858();
      v15();

      (*(v13 + 8))(v25, v19);
      v34 = v0[7];
    }

    else
    {
      v53 = v0[17];
      v52 = v0[18];
      v54 = v0[16];
      v55 = v0[10];
      v56 = v0[7];

      sub_1000E2BD8(qword_100216C08);
      [v55 queryId];
      sub_1000E24B4();
      swift_errorRetain();
      sub_10001343C(v1);
      sub_1000E2864();

      sub_1000E2C28();
      v53();
    }
  }

  else
  {
    v35 = sub_1000235CC(v5, v6);
    v36 = v0[37];
    v76 = v0[36];
    v78 = v0[38];
    v37 = v0[30];
    v74 = v0[29];
    v75 = v0[31];
    v38 = v0[27];
    v72 = v0[28];
    v73 = v0[26];
    if (v35)
    {
      v39 = v0[24];
      v40 = v0[25];
      v70 = v4;
      v41 = v0[23];
      v68 = v0[17];
      v69 = v0[18];
      v42 = v0[10];
      *(v0[16] + qword_100216C08) = 20;
      [v42 queryId];
      Apple_Parsec_Lookup_V1alpha_LookupSearchResponse.status.getter();
      v43 = Apple_Parsec_Search_StatusCode.rawValue.getter();
      v44 = *(v39 + 8);
      v45 = sub_100005CC0();
      v46(v45);
      sub_1000E1004();
      sub_10001AC40();
      v47 = swift_allocError();
      *v48 = v43;
      *(v48 + 8) = 0;
      *(v48 + 16) = 1;
      sub_10001343C(v47);
      sub_1000E227C();

      sub_1000E2858();
      v49();
      v50 = sub_100008A40();
      sub_100014A40(v50, v51);
    }

    else
    {
      v57 = v0[18];
      v71 = v0[17];
      v58 = v0[16];
      v59 = v0[10];
      v60 = sub_100008A40();
      sub_1000CFCF8(v60, v61, v4);
      [v59 queryId];
      v62 = v4;
      v63 = sub_1000E227C();
      v71(v63);

      *(v58 + qword_100216C08) = 2;
      sub_10000D684();
      v64 = sub_100008A40();
      sub_100014A40(v64, v65);
    }

    (*(v38 + 8))(v72, v73);
    (*(v37 + 8))(v75, v74);
    (*(v36 + 8))(v78, v76);
  }

  sub_1000E2768();

  sub_1000098BC();

  return v66();
}

uint64_t sub_1000CA89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000E2D50();
  sub_1000E2870();
  v18 = v12[37];
  v17 = v12[38];
  v19 = v12[36];
  (*(v12[30] + 8))(v12[31], v12[29]);
  v20 = *(v18 + 8);
  v21 = sub_10000672C();
  v22(v21);
  sub_10000B298((v12 + 2), &qword_100219160, &qword_10019E298);
  v23 = v12[40];
  sub_1000E2A3C();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  sub_100007CC8();
  if (swift_dynamicCast())
  {
    v24 = v12[21];
    v25 = v12[22];
    sub_100037BE0();

    v26 = *(v14 + 32);
    v27 = sub_1000E2C9C();
    v28(v27);
    *(v16 + qword_100216C08) = 18;
    [v13 queryId];
    sub_10000DC38();
    sub_10000BA9C(v29, v30);
    sub_10001AC40();
    v31 = swift_allocError();
    sub_1000E2BA0(v31, v32);
    sub_10000BA3C();
    v33();
    sub_10001343C(v25);
    sub_1000E227C();

    sub_1000E2858();
    v15();

    v34 = *(v14 + 8);
    v35 = sub_10000F520();
    v36(v35);
    v37 = v12[7];
  }

  else
  {
    v39 = v12[17];
    v38 = v12[18];
    v40 = v12[16];
    v41 = v12[10];
    v42 = v12[7];

    sub_1000E2BD8(qword_100216C08);
    [v41 queryId];
    swift_errorRetain();
    sub_10001343C(v23);
    sub_1000E2534();

    sub_1000E2C28();
    v39();
  }

  sub_1000E2768();

  sub_1000098BC();
  sub_1000E27AC();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1000CAAF8(void *a1, uint64_t a2, unint64_t a3)
{
  result = sub_1000C47D8(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

id sub_1000CAB20(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  sub_100014924(a3, a4);
  Apple_Parsec_Search_V2_SearchResponse.init()();
  return v6;
}

uint64_t sub_1000CAB88@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_100046184(&qword_100219240, &unk_10019E310);
  result = a2(a3 + *(v9 + 64), v6, v7, v8);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v11;
    a3[2] = v12;
  }

  return result;
}

uint64_t sub_1000CAC14()
{
  sub_100004384();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000835C();
    sub_100099FA4();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000CAC6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy;
  v5 = *(a1 + OBJC_IVAR____TtC7parsecd11ClientState_zkwProxy);
  if (v5 || (sub_1000C35CC(), (v5 = *(a1 + v4)) != 0))
  {
    *a2 = v5;
  }

  else
  {
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000964C(v6, qword_100232A08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing zkw proxy, bailing", v9, 2u);
    }

    *a2 = 0;
  }
}

uint64_t sub_1000CAD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100046184(&qword_100219340, &qword_10019E360);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_18;
  }

  sub_10008461C(&v30);
  swift_unknownObjectRelease();
  if (!*(&v31 + 1))
  {
LABEL_18:
    sub_10000B298(&v30, &qword_100219370, &qword_10019BA90);
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000964C(v25, qword_100232A08);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Topic results cache is disabled", v28, 2u);
    }

    v29 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
    return sub_1000051C0(a2, 1, 1, v29);
  }

  sub_100008C84(&v30, v33);
  v8 = sub_10000D57C(a1);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = v8;
  *&v30 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 topic];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(v30 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v12);
    v9 = v30;
LABEL_11:
    v17 = sub_100007534(v33, v33[3]);
    if (v9 >> 62)
    {
      sub_100005180(0, &qword_100219380, SFTopic_ptr);

      v18 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100005180(0, &qword_100219380, SFTopic_ptr);
      v18 = v9;
    }

    v19 = *v17;
    v20 = *(v19[2] + 16);

    os_unfair_lock_lock(v20);
    sub_1000A6118(v19, v18, &v30);
    os_unfair_lock_unlock(v20);
    swift_bridgeObjectRelease_n();

    if (v30)
    {
      sub_1000C1968(a1, v30, v7);

      v21 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
      if (sub_100008D0C(v7, 1, v21) != 1)
      {
        (*(*(v21 - 8) + 32))(a2, v7, v21);
        v23 = a2;
        v24 = 0;
        v22 = v21;
        goto LABEL_24;
      }

      sub_10000B298(v7, &qword_100219340, &qword_10019E360);
    }

    v22 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
    v23 = a2;
    v24 = 1;
LABEL_24:
    sub_1000051C0(v23, v24, 1, v22);
    return sub_100007378(v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CB1B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38[2] = a4;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndpointType();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100046184(&unk_1002191A0, &unk_10019A830);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v38 - v21;
  [a2 queryId];
  Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter();
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v23 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  if (sub_100008D0C(v22, 1, v23) != 1)
  {
    v38[1] = a3;
    sub_10000EFEC(v22, v20, &unk_1002191A0, &unk_10019A830);
    v24 = *(v23 - 8);
    v25 = (*(v24 + 88))(v20, v23);
    if (v25 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.startNetworkSearchFeedback(_:))
    {
      (*(v12 + 104))(v15, enum case for Apple_Parsec_Feedback_V2_SearchType.zeroKeyword(_:), v11);
      v26 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter();
      v26(v41, 0);
      (*(v39 + 104))(v10, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecZeroKeywordSuggest(_:), v40);
      v27 = Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter();
      v27(v41, 0);
    }

    else if (v25 == enum case for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.endNetworkSearchFeedback(_:))
    {
      (*(v39 + 104))(v10, enum case for Apple_Parsec_Feedback_V2_EndpointType.parsecSearch(_:), v40);
      v28 = Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify();
      Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter();
      v28(v41, 0);
    }

    (*(v24 + 8))(v20, v23);
  }

  sub_10000B298(v22, &unk_1002191A0, &unk_10019A830);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  if (!Strong)
  {
    return (*(*(v30 - 8) + 8))(a1, v30);
  }

  sub_10000BA9C(&qword_100215358, &type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  v31 = Message.serializedData(partial:)();
  v33 = v32;
  (*(*(v30 - 8) + 8))(a1, v30);
  v34 = *(Strong + 64);
  v35 = objc_allocWithZone(_CPFeedbackPayload);
  swift_unknownObjectRetain();
  sub_100014924(v31, v33);
  v36 = sub_1000149C0(v31, v33);
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_100014A40(v31, v33);
}

void sub_1000CB6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_100214088 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000964C(v8, qword_100232A08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "ZKW: Received response after timeout, attempting to add response to topic cache", v11, 2u);
  }

  if (*(a2 + 88) != 1)
  {
    goto LABEL_11;
  }

  sub_10008461C(&v23);
  if (!v24)
  {
    sub_10000B298(&v23, &qword_100219370, &qword_10019BA90);
LABEL_11:

    swift_unknownObjectRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109376;
      *(v21 + 4) = *(a2 + 88);

      *(v21 + 8) = 1024;
      sub_10008461C(v25);
      v22 = v26 != 0;
      sub_10000B298(v25, &qword_100219370, &qword_10019BA90);
      *(v21 + 10) = v22;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v19, v20, "ZKW: Failed to add to the cache. Span is done: %{BOOL}d. Cache is enabled %{BOOL}d", v21, 0xEu);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  sub_100008C84(&v23, v25);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "ZKW: Populating cache with response received after timeout", v14, 2u);
  }

  v15 = sub_100007534(v25, v26);
  v16 = [a5 queryTopicContexts];
  sub_100005180(0, &qword_100219348, PARQueryTopicContext_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *v15;
  sub_1000C13A4(v17, a1);

  sub_100007378(v25);
}

void sub_1000CB9E0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, id), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v55 = a7;
  v50 = a5;
  v51 = a6;
  v52 = a4;
  v53 = a3;
  v10 = type metadata accessor for PegasusProxyForSpotlightZKW.Error();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - v17;
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = sub_100046184(&qword_100219378, &qword_10019E370);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v45 - v23;
  sub_10000EFEC(a1, &v45 - v23, &qword_100219378, &qword_10019E370);
  if (sub_100008D0C(v24, 1, v10) == 1)
  {
    sub_10000B298(v24, &qword_100219378, &qword_10019E370);
  }

  else
  {
    (*(v11 + 32))(v20, v24, v10);
    (*(v11 + 104))(v18, enum case for PegasusProxyForSpotlightZKW.Error.timedOut(_:), v10);
    v25 = static PegasusProxyForSpotlightZKW.Error.== infix(_:_:)();
    v26 = *(v11 + 8);
    v26(v18, v10);
    if (v25)
    {
      v27 = 27;
    }

    else
    {
      v27 = 24;
    }

    *(a2 + qword_100216C08) = v27;
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v49 = a2;
    v28 = type metadata accessor for Logger();
    sub_10000964C(v28, qword_100232A08);
    v29 = *(v11 + 16);
    v29(v15, v20, v10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v48 = v11 + 8;
      v33 = v32;
      v34 = swift_slowAlloc();
      v47 = v26;
      v35 = v34;
      v56[0] = v34;
      *v33 = 136315138;
      v29(v18, v15, v10);
      v36 = String.init<A>(describing:)();
      v46 = v29;
      v38 = v37;
      v47(v15, v10);
      v39 = sub_100009684(v36, v38, v56);

      *(v33 + 4) = v39;
      v40 = v46;
      _os_log_impl(&_mh_execute_header, v30, v31, "ZKW: publisher failure, error: %s. Returning an empty response", v33, 0xCu);
      sub_100007378(v35);
      v26 = v47;
    }

    else
    {

      v26(v15, v10);
      v40 = v29;
    }

    v41 = [v50 queryId];
    sub_10000BA9C(&qword_100219368, &type metadata accessor for PegasusProxyForSpotlightZKW.Error);
    v42 = swift_allocError();
    v40(v43, v20, v10);
    v44 = sub_10001343C(v42);

    v53(v41, v51, v44);

    v26(v20, v10);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100099FA4();
    swift_unknownObjectRelease();
  }

  sub_10000D684();
}

void sub_1000CBEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, id), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a8;
  v53 = a7;
  v54 = a5;
  v55 = a6;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v11 = type metadata accessor for PegasusProxyForSpotlightZKW.Error();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100046184(&qword_100219360, &qword_10019E368);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v49 - v22;
  sub_10000EFEC(a1, &v49 - v22, &qword_100219360, &qword_10019E368);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v23, v11);
    *(v58 + qword_100216C08) = 48;
    v24 = [v53 queryId];
    sub_10000BA9C(&qword_100219368, &type metadata accessor for PegasusProxyForSpotlightZKW.Error);
    v25 = swift_allocError();
    (*(v12 + 16))(v26, v15, v11);
    v27 = sub_10001343C(v25);

    v54(v24, a10, v27);

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v28 = v53;
    v29 = v51;
    (*(v51 + 32))(v19, v23, v16);
    *(v58 + qword_100216C08) = 2;
    v30 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&qword_100219358, &type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse);
    v31 = Message.serializedData(partial:)();
    v49 = v19;
    v50 = v16;
    v32 = v31;
    v34 = v33;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A40(v32, v34);
    [v30 setData:{isa, v49}];

    v36 = v28;
    v37 = [v28 queryId];
    v38 = v30;
    v54(v37, v30, 0);

    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000964C(v39, qword_100232A08);
    swift_unknownObjectRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      sub_10008461C(v59);
      v43 = v60 != 0;
      sub_10000B298(v59, &qword_100219370, &qword_10019BA90);
      *(v42 + 4) = v43;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v40, v41, "ZKW: Attempting to add to cache. Cache is on: %{BOOL}d", v42, 8u);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    sub_10008461C(v59);
    if (v60)
    {
      v44 = sub_100007534(v59, v60);
      v45 = [v36 queryTopicContexts];
      sub_100005180(0, &qword_100219348, PARQueryTopicContext_ptr);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = *v44;
      v48 = v49;
      sub_1000C13A4(v46, v49);

      (*(v29 + 8))(v48, v50);
      sub_100007378(v59);
    }

    else
    {
      (*(v29 + 8))(v49, v50);

      sub_10000B298(v59, &qword_100219370, &qword_10019BA90);
    }
  }

  sub_1000CC4C8();
}

void sub_1000CC4C8()
{
  sub_100004384();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100099FA4();
    swift_unknownObjectRelease();
  }

  sub_10000D684();
}

uint64_t sub_1000CC53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v30;
  *(v8 + 56) = v29;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for ProxyError();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = *(*(sub_100046184(&qword_100219388, &qword_10019E388) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v13 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail();
  *(v8 + 112) = v13;
  v14 = *(v13 - 8);
  *(v8 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v16 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse();
  *(v8 + 136) = v16;
  v17 = *(v16 - 8);
  *(v8 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v19 = sub_100046184(&qword_100219390, &qword_10019E390);
  *(v8 + 160) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v21 = *(*(type metadata accessor for PegasusContext(0) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v22 = *(*(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext() - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v23 = *(*(sub_100046184(&qword_100219398, &qword_10019E398) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v24 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest();
  *(v8 + 208) = v24;
  v25 = *(v24 - 8);
  *(v8 + 216) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1000CC83C, 0, 0);
}

void sub_1000CC83C()
{
  if (qword_100214058 != -1)
  {
    sub_10000670C();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100006674(v2, qword_100232978);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_1000E2AB4())
  {
    v5 = v0[2];
    v6 = sub_10001BCD4();
    sub_100018FF4();
    *v6 = 136643075;
    v7 = [v5 urlString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000E2CC0();

    v8 = sub_1000E2318();
    v11 = sub_100009684(v8, v9, v10);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2085;
    v12 = [v5 urlVariants];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100004170();
    Array.description.getter();

    v13 = sub_100005CC0();
    v16 = sub_100009684(v13, v14, v15);

    *(v6 + 14) = v16;
    sub_1000E21AC();
    _os_log_impl(v17, v18, v19, v20, v6, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();
  }

  v22 = v0[25];
  v21 = v0[26];
  v23 = v0[2];
  v24 = [v23 urlString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = [v23 localeString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000059E8();
  dispatch thunk of PegasusProxyForSafariAssistant.createPrefetchRequest(url:localeString:)();

  v26 = sub_10000F268();
  sub_10000C944(v26, v27, v21);
  if (!v28)
  {
    v34 = v0[28];
    v35 = v0[25];
    v36 = v0[26];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[7];
    v40 = v0[8];
    v41 = sub_1000E2460(v0[27]);
    v42(v41);
    sub_100017190(v38);
    sub_1000E2A78();
    sub_100005FA4();
    sub_10001C254();
    Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.queryContext.setter();
    sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForSafariAssistant.prefetch(searchRequest:));
    swift_task_alloc();
    sub_1000E2608();
    v0[29] = v43;
    *v43 = v44;
    v43[1] = sub_1000CCC0C;
    v45 = v0[28];
    v46 = v0[22];
    v47 = v0[3];
    sub_1000E2790();

    __asm { BR              X2 }
  }

  v29 = v0[5];
  v30 = v0[6];
  v31 = v0[4];
  sub_10000B298(v0[25], &qword_100219398, &qword_10019E398);
  *(v31 + qword_100216C08) = 17;
  sub_1000E21E8();
  v29();
  sub_1000E24D8();

  sub_1000098BC();
  sub_1000E2790();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000CCC0C()
{
  sub_100007B50();
  sub_10000A9A4();
  v2 = *(v1 + 232);
  v3 = *v0;
  sub_100005898();
  *v4 = v3;

  sub_1000E21E8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CCCF4()
{
  v1 = v0[20];
  sub_10000EFEC(v0[22], v0[21], &qword_100219390, &qword_10019E390);
  sub_10000672C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0 + 12;
    v2 = v0[12];
    v4 = v0[21];
    v6 = v0 + 11;
    v5 = v0[11];
    v8 = v0 + 10;
    v7 = v0[10];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    v12 = sub_1000E2460(v5);
    v13(v12);
    sub_1000E2BD8(qword_100216C08);
    sub_100012FF8();
    sub_10000BA9C(v14, v15);
    sub_10000C9E4();
    sub_10001AC40();
    v16 = swift_allocError();
    (*(v5 + 16))(v17, v2, v7);
    sub_10001343C(v16);
    sub_1000E2D24();

    v18 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    v10(v18);
  }

  else
  {
    v3 = v0 + 19;
    v19 = v0[19];
    v20 = v0[28];
    v21 = v0[13];
    v22 = v0[14];
    v23 = v0[4];
    v24 = v0[2];
    (*(v0[18] + 32))(v19, v0[21], v0[17]);
    v78 = qword_100216C08;
    v80 = v23;
    *(v23 + qword_100216C08) = 2;
    v25 = [v24 urlString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000E2CC0();

    v26 = [v24 urlVariants];
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = sub_1000E2318();
    sub_1000CD214(v28, v29, v27, v20, v19, v30, v31, v32, v78, v80, (v0 + 17), (v0 + 18), v85, v86, v87, v88, v89, v90, v91, v92);

    v33 = sub_100009940();
    sub_10000C944(v33, v34, v22);
    if (v35)
    {
      v36 = v0[27];
      v84 = v0[28];
      v37 = v0[26];
      v38 = v0[22];
      v40 = v0[18];
      v39 = v0[19];
      v41 = v0[17];
      v42 = v0[5];
      v43 = v0[6];
      v44 = v0[2];
      sub_10000B298(v0[13], &qword_100219388, &qword_10019E388);
      *(v81 + v79) = 15;
      [v44 queryId];
      sub_1000E21E8();
      v42();
      v45 = *(v40 + 8);
      v46 = sub_100005CC0();
      v47(v46);
      sub_10000B298(v38, &qword_100219390, &qword_10019E390);
      (*(v36 + 8))(v84, v37);
      goto LABEL_7;
    }

    v48 = v0[19];
    v49 = v0[16];
    v50 = v0[17];
    v51 = v0[14];
    v52 = v0[15];
    v53 = v0[13];
    v54 = sub_1000E2460(v52);
    v55(v54);
    sub_100046184(&qword_1002193A8, &qword_10019E3A0);
    v56 = *(v52 + 72);
    v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    *(swift_allocObject() + 16) = xmmword_100197F20;
    v58 = *(v52 + 16);
    sub_1000E25B0();
    v59();
    Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.hashBuckets.setter();
    (*(v52 + 8))(v49, v51);
    v60 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&unk_1002193B0, &type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);
    sub_1000E27F8();
    Message.serializedData(partial:)();
    sub_1000E2C54();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v62 = sub_100006B0C();
    sub_100014A40(v62, v63);
    v8 = v82;
    v6 = v83;
    v65 = v0[5];
    v64 = v0[6];
    v66 = v0[2];
    [v60 setData:isa];

    [v66 queryId];
    v67 = v60;
    sub_1000E2864();
    sub_1000E2158();
    v65();
  }

  v69 = v0[27];
  v68 = v0[28];
  v70 = v0[26];
  v71 = v0[22];
  v72 = v0[4];
  (*(*v6 + 8))(*v3, *v8);
  sub_10000D684();
  sub_10000B298(v71, &qword_100219390, &qword_10019E390);
  v73 = *(v69 + 8);
  v74 = sub_100007CD4();
  v75(v74);
LABEL_7:
  sub_1000E24D8();

  sub_1000098BC();

  return v76();
}

void sub_1000CD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v188 = v25;
  v184 = v26;
  v182 = v27;
  v183 = v28;
  v29 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail();
  v30 = sub_10000DE94(v29, v204);
  v185 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_100004370();
  sub_10000549C(v34);
  v35 = type metadata accessor for SHA256();
  v36 = sub_10000DE94(v35, &a17);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v39);
  sub_100009934();
  sub_1000058D8();
  v40 = type metadata accessor for SHA256Digest();
  v41 = sub_10000DE94(v40, &a15);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v44);
  sub_100009934();
  sub_10000549C(v45);
  v197 = type metadata accessor for String.Encoding();
  v46 = sub_100003650(v197);
  v192 = v47;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  sub_100004370();
  v196 = v50;
  sub_1000058D8();
  v194 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest();
  v51 = sub_100003650(v194);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  sub_100003664();
  v58 = v57 - v56;
  v59 = sub_100046184(&qword_100219388, &qword_10019E388);
  sub_100005490(v59);
  v61 = *(v60 + 64);
  sub_100003760();
  __chkstk_darwin(v62);
  sub_1000E2354();
  v63 = type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail();
  v64 = sub_100003650(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  __chkstk_darwin(v64);
  sub_100003664();
  v71 = v70 - v69;
  v72 = Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.hashBuckets.getter();
  v201[1] = v24;
  sub_1000C04A0(sub_1000E1DE0, v72, countAndFlagsBits);

  v73 = sub_1000E25BC();
  if (sub_100008D0C(v73, v74, v63) != 1)
  {
    v179 = v66;
    v87 = *(v66 + 32);
    v181 = v71;
    v88 = sub_100037EB4();
    v180 = v63;
    v89(v88);
    if (qword_100214058 != -1)
    {
      sub_10000670C();
    }

    v90 = type metadata accessor for Logger();
    sub_100006674(v90, qword_100232978);
    v91 = *(v53 + 16);
    v92 = sub_1000E2BF0();
    v93(v92);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    v96 = v188;
    if (os_log_type_enabled(v94, v95))
    {
      sub_10000F554();
      swift_slowAlloc();
      v204[0] = sub_10000EC04();
      *countAndFlagsBits = 136642819;
      v97 = Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.hashPrefix.getter();
      (*(v53 + 8))(v58, v194);
      v98 = sub_10000672C();
      sub_100009684(v98, v99, v100);
      sub_10000835C();

      *(countAndFlagsBits + 4) = v97;
      _os_log_impl(&_mh_execute_header, v94, v95, "HashDetail.prefixHash: %{sensitive}s", countAndFlagsBits, 0xCu);
      sub_1000E2DFC();
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      v101 = *(v53 + 8);
      v102 = sub_1000E2840();
      v103(v102);
    }

    v200 = &_swiftEmptyDictionarySingleton;
    v63 = v71;
    v104 = Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.getter();
    sub_1000C0138(v104, &v200);

    v105 = sub_1000E29F4();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      sub_10000F554();
      countAndFlagsBits = swift_slowAlloc();
      *countAndFlagsBits = 134217984;
      swift_beginAccess();
      v107 = Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.getter();
      swift_endAccess();
      v63 = *(v107 + 16);

      *(countAndFlagsBits + 4) = v63;
      _os_log_impl(&_mh_execute_header, v105, v106, "HashDetail.fullHash count: %ld", countAndFlagsBits, 0xCu);
      sub_1000037A4();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = *(v188 + 16);
      sub_10001B77C();
      v96 = v177;
    }

    sub_1000E258C();
    v108 = *(v96 + 16);
    v195 = v108 + 1;
    if (v108 >= *(v96 + 24) >> 1)
    {
      sub_10001B77C();
      v96 = v178;
    }

    v109 = 0;
    *(v96 + 16) = v195;
    v110 = v96 + 16 * v108;
    *(v110 + 32) = v182;
    *(v110 + 40) = v184;
    v193 = (v192 + 8);
    v111 = (v96 + 40);
    v189 = v96;
    while (v109 < *(v96 + 16))
    {
      v112 = *(v111 - 1);
      countAndFlagsBits = *v111;

      static String.Encoding.utf8.getter();
      v199 = v112;
      v113 = String.data(using:allowLossyConversion:)();
      v115 = v114;
      v191 = *v193;
      (*v193)(v196, v197);
      if (v115 >> 60 == 15)
      {

        v116 = sub_1000E29F4();
        v117 = static os_log_type_t.error.getter();

        if (sub_1000E27E0())
        {
          sub_10000F554();
          v113 = swift_slowAlloc();
          v115 = countAndFlagsBits;
          countAndFlagsBits = sub_100007B80();
          v204[0] = countAndFlagsBits;
          *v113 = 136642819;
          v63 = sub_100009684(v199, v115, v204);

          *(v113 + 4) = v63;
          sub_1000E258C();
          _os_log_impl(&_mh_execute_header, v116, v117, "Could not sha256Base64Encode url %{sensitive}s", v113, 0xCu);
          sub_1000E2E30();
          sub_1000037A4();

          sub_1000037A4();
        }

        else
        {
        }
      }

      else
      {
        sub_1000E21F4();
        sub_10000BA9C(&qword_100214E80, v118);
        sub_1000E25D4();
        dispatch thunk of HashFunction.init()();
        v190 = countAndFlagsBits;
        switch(v115 >> 62)
        {
          case 1uLL:
            v96 = v113 >> 32;
            if (v113 >> 32 < v113)
            {
              goto LABEL_56;
            }

            v63 = v113;

            countAndFlagsBits = __DataStorage._bytes.getter();
            if (countAndFlagsBits && __OFSUB__(v113, __DataStorage._offset.getter()))
            {
              goto LABEL_59;
            }

            v63 = v96 - v113;
            goto LABEL_38;
          case 2uLL:
            v96 = *(v113 + 16);
            v63 = *(v113 + 24);

            countAndFlagsBits = __DataStorage._bytes.getter();
            if (!countAndFlagsBits)
            {
              goto LABEL_29;
            }

            v119 = __DataStorage._offset.getter();
            if (__OFSUB__(v96, v119))
            {
              goto LABEL_58;
            }

            countAndFlagsBits += v96 - v119;
LABEL_29:
            v120 = __OFSUB__(v63, v96);
            v63 -= v96;
            if (v120)
            {
              goto LABEL_57;
            }

LABEL_38:
            __DataStorage._length.getter();
            sub_1000E258C();
LABEL_39:
            dispatch thunk of HashFunction.update(bufferPointer:)();
            v121 = sub_1000E2804();
            sub_100014A2C(v121, v122);
            sub_1000E2490(&a14);
            sub_1000E25D4();
            dispatch thunk of HashFunction.finalize()();
            sub_100012FEC(&a13);
            v123 = sub_1000E263C();
            v124(v123);
            v206 = v187;
            v207 = sub_10000BA9C(&qword_1002193C0, &type metadata accessor for SHA256Digest);
            sub_1000205C4(v204);
            sub_100012FEC(&a12);
            v125();
            sub_100007534(v204, v206);
            dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
            sub_100012FEC(&a11);
            v126(v96);
            v127 = v202;
            v128 = v203;
            sub_100007378(v204);
            countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
            sub_100014A40(v127, v128);
            v129 = sub_1000E2804();
            sub_100014A2C(v129, v130);
            v113 = v200;
            if (v200[2])
            {
              v131 = sub_100096024();
              v133 = sub_100005B74(v131, v132);
              if (v134)
              {
                v198 = *(v185 + 16);
                v198(v186, *(v113 + 56) + *(v185 + 72) * v133);
                sub_1000E2194();

                Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.matchedURLVariant.setter();
                sub_100046184(&qword_1002193C8, &qword_10019E3A8);
                v139 = (*(v185 + 80) + 32) & ~*(v185 + 80);
                v140 = swift_allocObject();
                *(v140 + 16) = xmmword_100197F20;
                (v198)(v140 + v139);
                sub_1000E2574(&v204[1]);
                sub_100005D5C();
                Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.setter();
                swift_endAccess();

                v141 = sub_1000E29F4();
                v142 = static os_log_type_t.default.getter();

                if (sub_1000E2AB4())
                {
                  v143 = sub_10001BCD4();
                  v204[0] = sub_100018FF4();
                  *v143 = 136643075;
                  v144 = sub_100009684(v199, v190, v204);

                  *(v143 + 4) = v144;
                  *(v143 + 12) = 2085;
                  v145 = sub_100096024();
                  sub_100009684(v145, v146, v147);
                  sub_1000E2534();

                  *(v143 + 14) = countAndFlagsBits;
                  sub_1000E21AC();
                  _os_log_impl(v148, v149, v150, v151, v143, 0x16u);
                  swift_arrayDestroy();
                  sub_1000037A4();

                  sub_1000037A4();
                }

                else
                {
                }

                (*(v185 + 8))();
                sub_1000E220C(v201);
                (*(v172 + 16))(v183, v139, v180);
                sub_10000BB90();
                sub_1000051C0(v173, v174, v175, v180);

                (*(v142 + 8))(v139, v180);
                goto LABEL_54;
              }
            }

            v96 = v189;
            break;
          case 3uLL:
            memset(v204, 0, 14);
            goto LABEL_39;
          default:
            v204[0] = v113;
            LOWORD(v204[1]) = v115;
            BYTE2(v204[1]) = BYTE2(v115);
            BYTE3(v204[1]) = BYTE3(v115);
            BYTE4(v204[1]) = BYTE4(v115);
            BYTE5(v204[1]) = BYTE5(v115);
            goto LABEL_39;
        }
      }

      ++v109;
      v111 += 2;
      if (v195 == v109)
      {

        v135 = sub_1000E29F4();
        v136 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v135, v136))
        {
          sub_10001BCD4();
          v204[0] = sub_1000E23D0();
          *v113 = 136643075;
          v137 = sub_1000E2218(&v205);
          *(v113 + 4) = sub_100009684(v137, v184, v138);
          *(v113 + 12) = 2085;
          static String.Encoding.utf8.getter();
          String.data(using:allowLossyConversion:)();
          sub_1000E2CC0();
          v191(v196, v197);
          if (v115 >> 60 != 15)
          {
            sub_1000E21F4();
            sub_10000BA9C(v152, v153);
            sub_1000E23A0(&v203);
            dispatch thunk of HashFunction.init()();
            v154 = sub_1000E2318();
            sub_100014924(v154, v155);
            v156 = sub_1000E2318();
            sub_1000CF128(v156, v157);
            v158 = sub_1000E2318();
            sub_100014A2C(v158, v159);
            sub_1000E220C(&v202);
            dispatch thunk of HashFunction.finalize()();
            sub_100012FEC(&a13);
            v160(v196);
            sub_1000F7D88(0);
            Data.base64EncodedString(options:)(0);
            v161 = sub_1000E2BFC();
            sub_100014A40(v161, v162);
            v163 = sub_1000E2318();
            sub_100014A2C(v163, v164);
          }

          sub_1000E2CE4();
          v165 = sub_100007CC8();
          v168 = sub_100009684(v165, v166, v167);

          *(v113 + 14) = v168;
          _os_log_impl(&_mh_execute_header, v135, v136, "No matching HashDetail for url %{sensitive}s, full hash: %{sensitive}s", v113, 0x16u);
          swift_arrayDestroy();
          sub_1000037A4();

          sub_1000037A4();
        }

        else
        {

          sub_1000E2CE4();
        }

        sub_1000E23AC();
        sub_1000051C0(v169, v170, v171, v111);

        (*(v179 + 8))(v181, v111);
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_10000B298(countAndFlagsBits, &qword_100219388, &qword_10019E388);
  if (qword_100214058 != -1)
  {
LABEL_60:
    sub_10000670C();
  }

  v75 = type metadata accessor for Logger();
  sub_100006674(v75, qword_100232978);
  sub_1000E2448(&v207);

  v76 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_1000E27E0())
  {
    sub_10000F554();
    v77 = swift_slowAlloc();
    v78 = sub_100007B80();
    v204[0] = v78;
    *v77 = 136642819;
    *(v77 + 4) = sub_100009684(v182, countAndFlagsBits, v204);
    sub_10001BD10();
    _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
    sub_100007378(v78);
    sub_1000037A4();

    sub_1000037A4();
  }

  sub_1000E217C();
  sub_1000E23AC();
  sub_1000051C0(v84, v85, v86, v63);
LABEL_54:
  sub_100005460();
}

uint64_t sub_1000CE350()
{
  v0 = Apple_Parsec_Sba_V1_HashBucketDetail.hashPrefix.getter();
  v2 = v1;
  if (v0 == Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.hashPrefix.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000CE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v25;
  v8[8] = v26;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for ProxyError();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v15 = sub_100046184(&qword_1002193E0, &qword_10019E3D0);
  v8[15] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v17 = *(*(type metadata accessor for PegasusContext(0) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v18 = *(*(type metadata accessor for Apple_Parsec_Search_PegasusQueryContext() - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v19 = *(*(sub_100046184(&qword_1002193E8, &qword_10019E3D8) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v20 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest();
  v8[21] = v20;
  v21 = *(v20 - 8);
  v8[22] = v21;
  v22 = *(v21 + 64) + 15;
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE64C, 0, 0);
}

uint64_t sub_1000CE64C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 16);
  v4 = [*(v0 + 24) urlString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100005CC0();
  dispatch thunk of PegasusProxyForSafariAssistant.createSummarizeRequest(urlString:)();

  v5 = sub_10000F268();
  sub_10000C944(v5, v6, v1);
  if (v7)
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    sub_10000B298(*(v0 + 160), &qword_1002193E8, &qword_10019E3D8);
    *(v10 + qword_100216C08) = 17;
    sub_10000D684();
    [v11 queryId];
    sub_1000E21E8();
    v9();
    sub_1000E2718();

    sub_1000098BC();

    return v12();
  }

  else
  {
    v14 = *(v0 + 184);
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    v21 = sub_1000E2460(*(v0 + 176));
    v22(v21);
    sub_100017190(v18);
    sub_1000E2A78();
    sub_100005FA4();
    sub_10001C254();
    Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.queryContext.setter();
    sub_1000E22D8(&async function pointer to dispatch thunk of PegasusProxyForSafariAssistant.summarize(searchRequest:));
    v29 = v23;
    swift_task_alloc();
    sub_1000E2608();
    *(v0 + 192) = v24;
    *v24 = v25;
    v24[1] = sub_1000CE868;
    v26 = *(v0 + 184);
    v27 = *(v0 + 136);
    v28 = *(v0 + 16);

    return v29(v27, v26);
  }
}

uint64_t sub_1000CE868()
{
  sub_100007B50();
  sub_10000A9A4();
  v2 = *(v1 + 192);
  v3 = *v0;
  sub_100005898();
  *v4 = v3;

  sub_1000E21E8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000CE950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000E2D50();
  sub_1000E2870();
  v13 = v12[15];
  sub_10000EFEC(v12[17], v12[16], &qword_1002193E0, &qword_10019E3D0);
  sub_10000672C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v12 + 11;
    v14 = v12[11];
    v16 = v12 + 10;
    v17 = v12[10];
    v19 = v12 + 9;
    v18 = v12[9];
    v21 = v12[5];
    v20 = v12[6];
    v22 = v12[4];
    v23 = sub_1000E2460(v17);
    v24(v23);
    sub_1000E2BD8(qword_100216C08);
    sub_100012FF8();
    sub_10000BA9C(v25, v26);
    sub_10000C9E4();
    sub_10001AC40();
    v27 = swift_allocError();
    (*(v17 + 16))(v28, v14, v18);
    sub_10001343C(v27);
    sub_1000E2D24();

    v29 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    v21(v29);
  }

  else
  {
    v15 = v12 + 14;
    v16 = v12 + 13;
    v19 = v12 + 12;
    v30 = v12[4];
    (*(v12[13] + 32))(v12[14], v12[16], v12[12]);
    *(v30 + qword_100216C08) = 2;
    v31 = [objc_allocWithZone(PARReply) init];
    sub_10000BA9C(&unk_1002193F0, &type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);
    sub_1000E27F8();
    Message.serializedData(partial:)();
    sub_1000E2C54();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v33 = sub_100006B0C();
    sub_100014A40(v33, v34);
    v36 = v12[5];
    v35 = v12[6];
    v37 = v12[3];
    [v31 setData:isa];

    [v37 queryId];
    v38 = v31;
    sub_1000E2864();
    sub_1000E2158();
    v36();
  }

  v40 = v12[22];
  v39 = v12[23];
  v41 = v12[21];
  v42 = v12[17];
  v43 = v12[4];
  (*(*v16 + 8))(*v15, *v19);
  sub_10000D684();
  sub_10000B298(v42, &qword_1002193E0, &qword_10019E3D0);
  v44 = *(v40 + 8);
  v45 = sub_100007CD4();
  v46(v45);
  sub_1000E2718();

  sub_1000098BC();
  sub_1000E27AC();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1000CEC4C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000CECA0(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1000CECA0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 response];
  if (v3)
  {
    v4 = sub_1000CFD50(v3);
  }

  else
  {
    v4 = 0;
  }

  if (qword_100214058 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000964C(v5, qword_100232978);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136642819;
    sub_100046184(&qword_100219140, &qword_10019E280);
    v10 = Optional.debugDescription.getter();
    v12 = sub_100009684(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "response headers: %{sensitive}s", v8, 0xCu);
    sub_100007378(v9);
  }

  if (v4 && (v13 = sub_1000BCF98(0x656764652D78, 0xE600000000000000, v4), , v13))
  {
    v17 = v13;
    sub_100046184(&unk_100219130, &qword_100199320);
    sub_1000E1CB8(qword_100214FD8, &unk_100219130, &qword_100199320);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    *a2 = v14;
    a2[1] = v16;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t sub_1000CEEF8(uint64_t a1)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  swift_errorRetain();
}

id sub_1000CEF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTriggerEvent:a1 input:v5];

  return v6;
}

id sub_1000CEFBC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a6)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  if (a8)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (!a10)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_9;
    }

LABEL_11:
    v20.super.isa = 0;
    goto LABEL_12;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a11)
  {
    goto LABEL_11;
  }

LABEL_9:
  v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_12:
  v21 = [v11 initWithStartSearch:a1 responseSize:a2 statusCode:a3 parsecStatus:v17 parsecDuration:v18 fbq:v19 partialClientIp:a4 networkTimingData:v20.super.isa];
  swift_unknownObjectRelease();

  return v21;
}

uint64_t sub_1000CF128(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_10;
      }

      result = result;
      v4 = v5;
      goto LABEL_8;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_8:
      result = sub_1000CF97C(result, v4);
      if (v2)
      {
        goto LABEL_9;
      }

      return result;
    case 3uLL:
      _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      goto LABEL_4;
    default:
LABEL_4:
      result = sub_1000CF8A8();
      if (v2)
      {
LABEL_9:

        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1000CF1C0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1000CF5E8(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1000934E4(0, v4, v5);
  v6 = sub_1000CF324(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}