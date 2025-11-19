uint64_t sub_1000CF324(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v32 = result;
  v33 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v35 = v13;
    v17 = *(*(v3 + 56) + 16 * v13 + 8);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v18 == v16)
    {
LABEL_37:
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_16;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v21 == v16)
      {
        goto LABEL_35;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_16;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v24 == v16)
      {
LABEL_35:
        v3 = a3;

        goto LABEL_36;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
LABEL_16:
        v3 = a3;
LABEL_36:

        goto LABEL_37;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v27 == v16)
      {
        goto LABEL_35;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = a3;
      if ((v29 & 1) == 0)
      {
        *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        if (__OFADD__(v33++, 1))
        {
          goto LABEL_40;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1000CF660(v32, a2, v33, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_1000CF5E8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1000CF324(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000CF660(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100046184(&qword_100219148, &qword_10019E288);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
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
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000CF8A8()
{
  type metadata accessor for SHA256();
  sub_10000BA9C(&qword_100214E80, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000CF97C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10000BA9C(&qword_100214E80, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CFA68(void *a1)
{
  v1 = [a1 completionCacheSuggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000CFB08(void *a1)
{
  v2 = [a1 jsonData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000CFB78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
  }

  return sub_1000041F8();
}

void sub_1000CFBD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setInput:v4];
}

void sub_1000CFC28(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a1, a2);
  [a3 setData:isa];
}

uint64_t sub_1000CFC9C(void *a1)
{
  v1 = [a1 bagData];
  if (v1)
  {
    v2 = v1;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
  }

  return sub_1000041F8();
}

void sub_1000CFCF8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setData:isa];
}

uint64_t sub_1000CFD50(void *a1)
{
  v2 = [a1 _allHTTPHeaderFieldsAsArrays];

  if (!v2)
  {
    return 0;
  }

  sub_100046184(&unk_100219130, &qword_100199320);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000CFDD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_unknownObjectRetain();

    v12 = sub_1000E090C(v11, a5, a1, a2, a3, a4);
    v13 = *(a5 + qword_100232BD0);
    *(a5 + qword_100232BD0) = v12;
  }

  return result;
}

void sub_1000CFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for Logger();
  v31 = sub_10000DE94(v30, &v593);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_10000CEDC();
  sub_100007C68(v34);
  v35 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  sub_10000DE94(v35, &v549);
  v533 = v36;
  v38 = *(v37 + 64);
  sub_100003760();
  __chkstk_darwin(v39);
  sub_10000BBD0();
  sub_100007C68(v40);
  v41 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  sub_10000DE94(v41, &v552);
  v536 = v42;
  v44 = *(v43 + 64);
  sub_100003760();
  __chkstk_darwin(v45);
  sub_10000BBD0();
  sub_100007C68(v46);
  v47 = sub_100046184(&qword_1002191C0, &qword_10019E2C8);
  sub_10000DE94(v47, &v555);
  v49 = *(v48 + 64);
  sub_100003760();
  __chkstk_darwin(v50);
  sub_10000BBD0();
  sub_100007C68(v51);
  v52 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v53 = sub_10000DE94(v52, &v560);
  v540 = v54;
  v56 = *(v55 + 64);
  __chkstk_darwin(v53);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v57);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v58);
  sub_100009934();
  sub_100007C68(v59);
  v60 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  v61 = sub_10000DE94(v60, &v576);
  v548 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v65);
  sub_100009934();
  sub_100007C68(v66);
  v67 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  sub_10000DE94(v67, &v569);
  v69 = *(v68 + 64);
  sub_100003760();
  __chkstk_darwin(v70);
  sub_10000BBD0();
  sub_10000549C(v71);
  v72 = type metadata accessor for CancellableStoreKey();
  v73 = sub_1000038C4(v72);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  sub_100009964();
  sub_100007C68(v76);
  sub_1000E2188(&v562);
  __chkstk_darwin(v77);
  sub_100009934();
  sub_100007C68(v78);
  v79 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  sub_100005490(v79);
  v81 = *(v80 + 64);
  sub_100003760();
  __chkstk_darwin(v82);
  sub_10000BBD0();
  sub_10000549C(v83);
  v84 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v85 = sub_10000DE94(v84, &v583);
  v554 = v86;
  v88 = *(v87 + 64);
  __chkstk_darwin(v85);
  sub_100004370();
  sub_10000549C(v89);
  v90 = type metadata accessor for URLRequest();
  v91 = sub_10000DE94(v90, &v585);
  v559 = v92;
  v94 = *(v93 + 64);
  __chkstk_darwin(v91);
  sub_100009964();
  sub_1000076F0(v95);
  __chkstk_darwin(v96);
  sub_100009934();
  sub_1000076F0(v97);
  __chkstk_darwin(v98);
  sub_100009934();
  sub_1000076F0(v99);
  __chkstk_darwin(v100);
  sub_1000E2330();
  __chkstk_darwin(v101);
  sub_100009934();
  sub_1000076F0(v102);
  __chkstk_darwin(v103);
  sub_100009934();
  sub_100007C68(v104);
  sub_1000E2188(&v572);
  __chkstk_darwin(v105);
  sub_100009934();
  v107 = sub_10000549C(v106);
  v108 = type metadata accessor for PegasusContext(v107);
  v109 = sub_100005490(v108);
  v111 = *(v110 + 64);
  __chkstk_darwin(v109);
  sub_100004370();
  v113 = sub_10000549C(v112);
  v114 = type metadata accessor for SessionTokens(v113);
  v115 = sub_100005490(v114);
  v117 = *(v116 + 64);
  __chkstk_darwin(v115);
  sub_100004370();
  sub_100007C68(v118);
  v119 = sub_100046184(&qword_100217480, &unk_100198F70);
  v120 = sub_100005490(v119);
  v122 = *(v121 + 64);
  __chkstk_darwin(v120);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v123);
  sub_1000E26C8();
  v124 = type metadata accessor for UserAgent();
  v125 = sub_10000DE94(v124, &a10);
  v127 = v126;
  v129 = *(v128 + 64);
  __chkstk_darwin(v125);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v130);
  sub_100009934();
  sub_10000549C(v131);
  v132 = type metadata accessor for Client();
  v133 = sub_10000DE94(v132, v580);
  v550 = v134;
  v136 = *(v135 + 64);
  __chkstk_darwin(v133);
  sub_100003664();
  v139 = v138 - v137;
  v140 = sub_100046184(&unk_1002191E8, &qword_10019E2E8);
  sub_100003650(v140);
  v567 = v141;
  v143 = *(v142 + 64);
  sub_100003760();
  __chkstk_darwin(v144);
  sub_1000E2354();
  sub_1000068B4();
  v568 = swift_allocObject();
  *(v568 + 16) = v25;
  _Block_copy(v25);
  v569 = v25;
  _Block_copy(v25);
  v572 = v21;
  Regex.init(_regexString:version:)();
  v145 = [v29 queryString];
  v576 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v147 = v146;

  v148 = v27[7];

  sub_1000119E0();
  v577 = v27;
  sub_10001672C(v149, v150);
  [v29 queryId];
  sub_10000899C();
  v151 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v151);
  v549 = v139;
  v570 = sub_1000E223C(v148, 2, v139);
  v152 = [v29 queryCommand];
  if (v152)
  {
    v153 = v152;
    objc_opt_self();
    sub_1000042D0();
    v154 = swift_dynamicCastObjCClass();
    if (v154)
    {
      v155 = &selRef_tokenString;
    }

    else
    {
      objc_opt_self();
      sub_1000042D0();
      v154 = swift_dynamicCastObjCClass();
      if (!v154)
      {

        goto LABEL_10;
      }

      v155 = &selRef_searchString;
    }

    v576 = sub_1000CFB78(v154, v155);
    v157 = v156;

    if (v157)
    {
      v147 = v157;
    }

    else
    {
      v576 = 0;
      v147 = 0xE000000000000000;
    }
  }

LABEL_10:
  v566 = v127;
  v575 = v147;
  v584 = 0;
  swift_stdlib_random();
  v158 = v584;
  if (qword_100214058 != -1)
  {
    sub_10000670C();
  }

  v159 = sub_10000964C(v571, qword_100232978);
  v160 = v29;
  sub_1000E2BE4();

  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.default.getter();

  v163 = os_log_type_enabled(v161, v162);
  v574 = v140;
  v556 = v158;
  if (v163)
  {
    v139 = v158;
    v164 = v159;
    v165 = swift_slowAlloc();
    v29 = sub_100018FF4();
    v584 = v29;
    *v165 = 136447235;
    v166 = OBJC_IVAR____TtC7parsecd11ClientState_sessionType;
    type metadata accessor for SessionType();
    sub_10000F574();
    sub_10000BA9C(v167, v168);
    sub_1000E2394();
    v170 = v169 + v166;
    v171 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100009684(v171, v172, &v584);
    sub_10000835C();

    *(v165 + 4) = v170;
    *(v165 + 12) = 2050;
    v158 = [v160 queryId];

    *(v165 + 14) = v158;
    *(v165 + 22) = 2050;
    *(v165 + 24) = v139;
    *(v165 + 32) = 2085;
    sub_1000E2218(&a12);

    v173 = sub_1000E2340();
    sub_100009684(v173, 0x802uLL, v174);
    sub_100006B00();

    *(v165 + 34) = v158;
    *(v165 + 42) = 2048;

    String.UTF16View.count.getter();
    sub_100006B00();

    *(v165 + 44) = v158;
    _os_log_impl(&_mh_execute_header, v161, v162, "Session %{public}s performing query %{public}llu requestId: %{public}llu '%{sensitive}s', length: %ld", v165, 0x34u);
    swift_arrayDestroy();
    sub_1000E2BE4();
    sub_1000037A4();

    v159 = v164;
    v140 = v574;
    sub_1000037A4();
  }

  else
  {
  }

  sub_100012714();
  if ((v175 & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    sub_10000AEB0(inited, xmmword_100197F20);
    sub_1000066DC();
    v187[9] = &type metadata for String;
    v187[6] = 0xD000000000000013;
    v187[7] = v188;
    v189 = Dictionary.init(dictionaryLiteral:)();
    v190 = objc_allocWithZone(NSError);
    v191 = sub_100017C80();
    v194 = sub_1000B184C(v191, v192, v193, v189);
    v195 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v196 = sub_1000E2170();
    v198 = os_log_type_enabled(v196, v197);
    v199 = v575;
    v200 = v566;
    if (v198)
    {
      sub_10000F554();
      swift_slowAlloc();
      v201 = sub_10000EC04();
      sub_1000E2BB4(v201);
      *v161 = 136642819;

      v202 = sub_1000E2340();
      v29 = sub_100009684(v202, v199, v203);

      *(v161 + 4) = v29;
      sub_1000E2BE4();
      sub_100023F3C();
      _os_log_impl(v204, v205, v206, v207, v208, 0xCu);
      sub_100007378(v159);
      sub_1000E20B8();

      sub_1000037A4();
    }

    else
    {

      v139 = v576;
    }

    v232 = objc_allocWithZone(_CPSkipSearchFeedback);
    sub_100037ED8();

    v233 = sub_1000CEF48(3, v139, v199);
    v234 = *(v29 + 64);
    swift_unknownObjectRetain();
    v235 = [v160 queryId];
    v236 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v233];
    [v236 setQueryId:v235];
    sub_10000848C();
    sub_1000E2490(&v590);
    sub_10001672C(v237, v238);
    v239 = v573;
    sub_10000C944(v139, 1, v573);
    if (v181)
    {
      v240 = v564;
      parsecdUserAgent.getter();
      sub_10000C944(v139, 1, v239);
      if (!v181)
      {
        sub_10000B298(v139, &qword_100217480, &unk_100198F70);
      }
    }

    else
    {
      sub_1000E2888();
      v240 = v564;
      v241(v564, v139, v239);
    }

    sub_100014D74();

    swift_unknownObjectRelease();
    (*(v200 + 8))(v240, v239);
    [v160 queryId];
    v242 = v194;
    v243 = sub_10001343C(v194);

    if (v243)
    {
      v244 = _convertErrorToNSError(_:)();
    }

    else
    {
      v244 = 0;
    }

    v245 = v570;
    v246 = v569;
    v247 = sub_1000E2080();
    v248(v247);

    *(v245 + qword_100216C08) = 36;
    sub_10000D684();

    sub_1000E2098();
    sub_1000E23B8();
    v249();
    sub_1000E217C();

    _Block_release(v246);
    v231 = v246;
    goto LABEL_46;
  }

  sub_10000848C();
  sub_10001672C(v176, v177);
  v178 = sub_1000B1FC4();
  v179 = v573;
  sub_10000C944(v178, v180, v573);
  if (v181)
  {
    sub_10000B298(v20, &qword_100217480, &unk_100198F70);
    [v160 queryId];
    sub_1000E2364();
    v182 = sub_1000055F0();
    v183(v182);
    sub_100037E98(qword_100216C08);

    v184 = sub_100012F40();
LABEL_42:
    v276 = v140;
LABEL_43:
    v185(v184, v276);
    sub_1000E217C();

    sub_10000F230();
LABEL_44:

LABEL_45:
    _Block_release(v158);
    v231 = v158;
    goto LABEL_46;
  }

  v565 = v160;
  sub_1000E249C(v591);
  v210 = v563;
  (*(v209 + 32))(v563, v20, v179);
  v211 = v576;
  sub_1000E2388();
  v584 = v211;
  v585 = v212;
  v158 = sub_1000E08B8();
  sub_1000E1CB8(&unk_100219200, &unk_1002191E8, &qword_10019E2E8);
  sub_1000E2448(&a9);
  v213 = BidirectionalCollection<>.starts<A>(with:)();
  if (v213)
  {
    v214 = objc_allocWithZone(_CPSkipSearchFeedback);
    sub_1000E230C(&a12);

    sub_1000E2810();
    v218 = sub_1000CEF48(v215, v216, v217);
    sub_1000E2394();
    v220 = *(v219 + 64);
    swift_unknownObjectRetain();
    v221 = sub_1000E2828(&v590);
    v223 = v210;
    v224 = [v221 v222];
    v225 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v218];
    [v225 setQueryId:v224];
    sub_100014D74();
    swift_unknownObjectRelease();

    [&type metadata for Any queryId];
    sub_1000E23C4();
    v227 = *(v226 - 256);
    v228 = sub_10000F250();
    v229(v228);
    sub_100037E98(qword_100216C08);

    (*(v29 + 8))(v223, v179);
    sub_1000E2098();
    sub_1000E23B8();
LABEL_23:
    v230();
    sub_1000E217C();

    sub_10000F230();
LABEL_24:

    _Block_release(v227);
    v231 = v227;
LABEL_46:
    _Block_release(v231);
    sub_100005460();
    return;
  }

  sub_100006AE8();
  v250 = v577;
  v253 = sub_10000BB00(v251, v252);
  if (!v253)
  {
    v267 = sub_1000E2598();
    [v267 v268];
    sub_1000E2364();
    v269 = sub_1000055F0();
    v270(v269);
    sub_100037E98(qword_100216C08);

LABEL_41:
    sub_1000189BC();
    sub_1000E2324();
    v275();
    sub_1000E2098();
    v184 = v161;
    goto LABEL_42;
  }

  v254 = v253;
  v255 = v159;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v271 = sub_1000E2598();
    [v271 v272];
    sub_1000E2364();
    v273 = sub_1000055F0();
    v274(v273);
    sub_100037E98(qword_100216C08);

    goto LABEL_41;
  }

  v257 = Strong;
  v258 = *(v250 + 24);
  if (([v254 isEnabled] & 1) == 0)
  {
    v277 = Logger.logObject.getter();
    v278 = static os_log_type_t.default.getter();
    if (sub_100007BE8(v278))
    {
      sub_1000E2130();
      v279 = swift_slowAlloc();
      sub_10000594C(v279);
      sub_10001BD10();
      _os_log_impl(v280, v281, v282, v283, v284, 2u);
      sub_1000037A4();
    }

    v285 = objc_allocWithZone(_CPSkipSearchFeedback);
    sub_1000E2484(&a12);

    v286 = sub_1000CEF48(2, v576, v255);
    v287 = *(v250 + 64);
    swift_unknownObjectRetain();
    v288 = sub_1000E2828(&v590);
    v290 = [v288 v289];
    v291 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v286];
    [v291 setQueryId:v290];
    sub_100014D74();
    swift_unknownObjectRelease();

    [&type metadata for Any queryId];
    sub_1000E23C4();
    v227 = *(v292 - 256);
    v293 = sub_10000F250();
    v294(v293);
    sub_100037E98(qword_100216C08);

    swift_unknownObjectRelease();

    sub_1000135D0(v591);
    sub_1000E2324();
    v295();
    sub_100012F40();
    sub_1000E23B8();
    v296();
    sub_1000E217C();

    goto LABEL_24;
  }

  v526 = v258;
  v259 = *(v250 + 64);
  swift_unknownObjectRetain();
  sub_1000E75A0();
  swift_unknownObjectRelease();
  v260 = OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
  sub_100004384();
  swift_beginAccess();
  sub_10000EFEC(v250 + v260, &v578, &qword_100218208, &qword_10019C620);
  if (v580[0])
  {
    sub_100008C84(&v578, &v584);
    v261 = v588[0];
    sub_100007534(&v584, v587);
    v262 = *(v261 + 8);
    v263 = v565;
    v264 = sub_100096024();
    v266 = v265(v264);
    sub_100007378(&v584);
  }

  else
  {
    sub_10000B298(&v578, &qword_100218208, &qword_10019C620);
    v266 = _swiftEmptyArrayStorage;
    v263 = v565;
  }

  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v530 = v266;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v263 setCompletionCacheSuggestions:isa];

  v298 = *(v250 + 64);
  swift_unknownObjectRetain();
  v299 = sub_1000E5D20();
  v301 = v300;
  swift_unknownObjectRelease();
  if (v301)
  {
    sub_10000BE80();
    String._bridgeToObjectiveC()();
    sub_1000054F4();
  }

  else
  {
    v299 = 0;
  }

  v302 = v561;
  v303 = sub_1000E2574(&v590);
  [v303 v304];

  v305 = sub_1000E2C90(&v589);
  v307 = [v305 v306];
  v529 = v257;
  if (([v140 pretend] & 1) == 0)
  {
    sub_1000E2218(&a12);

    sub_1000E2834();
    String.UTF16View.count.getter();
    sub_100006B00();

    if (v298 < v307)
    {
      if (!sub_1000CFA68(v140))
      {
        goto LABEL_68;
      }

      v308 = sub_1000CFA68(v140);
      if (!v308)
      {
LABEL_94:
        v524 = sub_1000E230C(v592);
        _Block_release(v524);
        _Block_release(v298);
        __break(1u);
        goto LABEL_95;
      }

      sub_10000D57C(v308);
      sub_100006B00();

      v140 = v565;
      if (v298 <= 0)
      {
LABEL_68:
        v349 = v307;
        sub_1000E2B44();
        v158 = v140;
        v350 = Logger.logObject.getter();
        v351 = static os_log_type_t.debug.getter();
        v352 = sub_1000E2170();
        if (os_log_type_enabled(v352, v353))
        {
          v354 = sub_100007B80();
          v355 = sub_100007B80();
          sub_1000E2BB4(v355);
          *v354 = 134218498;
          sub_1000E2580();
          *(v354 + 4) = [v158 v356];

          *(v354 + 12) = 2080;
          sub_1000E2224(&a12);

          v357 = sub_1000E2340();
          v359 = sub_100009684(v357, v250, v358);

          *(v354 + 14) = v359;
          *(v354 + 22) = 2048;
          *(v354 + 24) = v349;
          _os_log_impl(&_mh_execute_header, v350, v351, "query[%llu] input '%s' less than %ld", v354, 0x20u);
          sub_100007378(v257);
          sub_1000037A4();

          sub_1000037A4();
        }

        else
        {

          v255 = v576;
        }

        v394 = objc_allocWithZone(_CPSkipSearchFeedback);
        sub_1000E2828(&a12);

        v395 = sub_1000CEF48(1, v255, v349);
        sub_1000E2394();
        v397 = *(v396 + 64);
        swift_unknownObjectRetain();
        v398 = sub_1000E26A0();
        v399 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v395];
        [v399 setQueryId:v398];
        sub_100014D74();
        swift_unknownObjectRelease();

        sub_1000E26A0();
        sub_1000E2364();
        v400 = sub_1000055F0();
        v401(v400);
        sub_100037E98(qword_100216C08);

        swift_unknownObjectRelease();

        sub_1000E2B14();
        sub_100003A28();
        sub_1000E21A0();
        sub_10001C254();
        sub_1000189BC();
        sub_1000E2324();
        v402();
        sub_1000E2098();
        sub_1000E23B8();
        v403();
        sub_1000E217C();

        goto LABEL_44;
      }
    }
  }

  v527 = v307;
  sub_100017190(v302);
  type metadata accessor for PARNetworkRequestFactory();
  v309 = sub_1000E2E18();
  v310 = swift_unknownObjectRetain();
  v311 = sub_100017594(v310, v309);
  sub_10000FFB0();
  v314 = sub_10000BB00(v312, v313);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_10000BA48(v588);
    v315 = v311;
    sub_10008D608(v316, v317, v318, v319, v320, v321, v322, v323, v526, v527, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538);
  }

  else
  {
    sub_10000BA48(v588);
    v315 = v311;
    sub_10008D7F0(v302, v140, v564, v562, v556, v314);
  }

  v324 = v559;
  v326 = v559 + 4;
  v325 = v559[4];
  sub_1000E2218(&v586);
  sub_1000E2C6C(&v585);
  v325();
  v327 = sub_1000E2C60(&v590);
  if ([v327 v328])
  {
    sub_1000E2B44();
    sub_1000E2270();
    v329 = v552;
    v330(v552, v315, v314);
    v227 = [objc_allocWithZone(NSHTTPURLResponse) init];
    sub_1000E2568(&v581);
    Apple_Parsec_Search_V2_SearchResponse.init()();
    v331 = [objc_allocWithZone(PARReply) init];
    [0 scale];
    [v331 setScale:?];
    if ([0 verboseReply])
    {
      v332 = URLRequest._bridgeToObjectiveC()().super.isa;
      v333 = sub_100012634();
      [v333 v334];

      [v331 setHttpResponse:v227];
    }

    sub_1000CFCF8(0, 0xC000000000000000, v331);

    sub_100012F20(&v582);
    v335(v326, v555);
    v336 = sub_1000E2598();
    [v336 v337];
    sub_1000E23C4();
    sub_1000E220C(v338);
    (*(v339 + 16))(v227);
    sub_100037E98(qword_100216C08);

    sub_1000E2B2C();

    sub_1000E2B14();
    v340 = v324[1];
    v340(v329, v314);
    v341 = sub_1000E2418();
    (v340)(v341);
    sub_100005FA4();
    sub_1000E2A60();
    sub_100003A28();
    sub_1000E21A0();
    sub_10001C254();
    v342 = sub_10001ADE8();
    v343(v342);
    sub_100012F40();
    goto LABEL_23;
  }

  v560 = v325;
  sub_1000119E0();
  sub_1000E2164(&v578 + 8);
  v344 = v577;
  sub_10001672C(v345, v346);
  Client.type.getter();
  sub_100012F20(&v579);
  v347(v325, v551);
  v158 = ClientType.rawValue.getter();
  if (v158 == ClientType.rawValue.getter())
  {
    v587 = &unk_1001F8E80;
    v588[0] = sub_1000772F0();
    LOBYTE(v584) = 6;
    v348 = isFeatureEnabled(_:)();
    sub_100007378(&v584);
  }

  else
  {
    v348 = 0;
  }

  if (*(*(v344 + 64) + 32))
  {
    sub_1000E2C84();
    (*(v360 + 16))(v547, v558, v314);
    sub_10000BB90();
    sub_1000051C0(v361, v362, v363, v314);

    v364 = sub_1000E2C9C();
    sub_1000F1164(v364, v365);
    sub_100006B00();

    sub_10000B298(v547, &unk_100218500, &qword_10019C7D8);
    if (v158)
    {
      sub_1000E2B44();
      v366 = [objc_allocWithZone(PARReply) init];
      if ((v348 & 1) == 0)
      {
        v367 = sub_1000E2598();
        [v367 v368];
        [v366 setScale:?];
      }

      v369 = OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
      v370 = &v158[v369 + *(type metadata accessor for CachedResultSet.Result(0) + 40)];
      v371 = *v370;
      v372 = *(v370 + 1);
      v373 = sub_1000385F0();
      sub_100014924(v373, v374);
      sub_1000385F0();
      v375 = Data._bridgeToObjectiveC()().super.isa;
      v376 = sub_1000385F0();
      sub_100014A40(v376, v377);
      [v366 setData:v375];

      v378 = sub_1000E2218(&v590);
      [v378 v379];
      sub_1000E23C4();
      v381 = sub_100014C60(v380);
      v382(v381);
      sub_1000E251C();

      sub_1000C6338(v371, v576, v547);

      sub_1000E2B2C();

      sub_1000E2B14();
      sub_100012F20(&v587);
      v383 = sub_1000E2C40();
      v384(v383);
      sub_100005FA4();
      sub_1000E2A60();
      sub_100003A28();
      sub_1000E21A0();
      sub_10001C254();
      sub_1000135D0(v591);
      sub_1000E2324();
      v385();
      sub_100012F40();
      sub_1000E23B8();
      v386();
      sub_1000E217C();

      _Block_release(v372);
      v231 = v372;
      goto LABEL_46;
    }
  }

  if (v348)
  {
    sub_1000E2B44();
    v387 = sub_1000E230C(v592);
    _Block_copy(v387);
    sub_1000E2C6C(&v545);
    sub_1000C6448(v388, v389, v390, v526, v570, v563, v344, v158);
    sub_10008E4C4();
    sub_1000C4490();

    swift_unknownObjectRelease();
    sub_1000E2B14();
    sub_100012F20(&v587);
    v391 = sub_1000E25E0();
    v392(v391);
    sub_100005FA4();
    sub_1000E2A60();
    sub_100003A28();
    sub_1000E21A0();
    sub_10001C254();
    sub_1000189BC();
    sub_1000E2324();
    v393();
    sub_100012F40();
    sub_1000E23B8();
    goto LABEL_43;
  }

  v528 = v326;
  v404 = sub_1000C7160();
  v555 = v404;
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    v404 = swift_once();
  }

  sub_10000BFB8(v404, qword_100232B10);
  v405 = (v559 + 2);
  v406 = v559[2];
  sub_1000E2574(&v571);
  sub_1000E25B0();
  v406();
  sub_1000E25B0();
  v554 = v405;
  v553 = v406;
  v406();
  v565 = 0;
  v407 = Logger.logObject.getter();
  v408 = static os_log_type_t.debug.getter();
  if (sub_100007BE8(v408))
  {
    LODWORD(v552) = 0;
    sub_1000E2648();
    v551 = sub_1000E23D0();
    v584 = v551;
    MEMORY[0] = 134349826;
    v409 = sub_1000E2218(&v590);
    MEMORY[4] = [v409 v410];

    MEMORY[0xC] = 2080;
    v411 = URLRequest.debugDescription.getter();
    v405 = v559[1];
    v412 = sub_100037EB4();
    v405(v412);
    v413 = sub_10000AE18();
    sub_100009684(v413, v414, v415);
    sub_1000E24A8();

    MEMORY[0xE] = v411;
    MEMORY[0x16] = 2080;
    if (!URLRequest.allHTTPHeaderFields.getter())
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    Dictionary.description.getter();

    (v405)(v546, v557);
    v416 = sub_1000E2418();
    sub_100009684(v416, v417, v418);
    sub_100038F24();

    sub_1000E22C8();
    MEMORY[0x22] = v556;
    _os_log_impl(&_mh_execute_header, v407, v552, "performing query %{public}llu request %s header: %s requestId: %{public}llu", 0, 0x2Au);
    sub_1000E2218(v580);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    sub_1000E2BE4();
    sub_1000E2BCC();
  }

  else
  {
    sub_1000E25A4();

    v420 = v559[1];
    v420(v546, v314);
    v421 = sub_100037EB4();
    (v420)(v421);
    sub_1000E2BCC();
  }

  sub_1000E2C60(&v586);
  v298 = sub_1000C4190();
  sub_1000E2224(&a12);

  v422 = sub_1000385F0();
  sub_100089408(v422, v423, v298, v424);
  v425 = sub_1000E2598();
  v427 = [v425 v426];
  if (v427 >> 31)
  {
    __break(1u);
    goto LABEL_94;
  }

  [v298 setTriggerEvent:v427];
  [v298 setEndpoint:6];
  v428 = sub_1000E2448(&v590);
  if ([v428 v429] == 23)
  {
    v430 = 3;
  }

  else
  {
    v430 = 2;
  }

  [v298 setSearchType:{v430, v526}];
  sub_1000E2AE4();
  v431 = v298;
  v552 = v431;
  v432 = sub_1000E2DCC();
  v433 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v431];

  [v433 setQueryId:v432];
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_1000E2AE4();
  sub_1000E2DCC();
  sub_1000E2224(&v584);
  v549 = v255;
  sub_1000E6E68();
  swift_unknownObjectRelease();
  sub_10008596C();
  v434 = sub_1000054F4();
  v435 = sub_1000E294C(v434);
  v437 = v436;

  v438 = v435;

  swift_unknownObjectRetain();
  v547 = v438;
  sub_1000E2C08();
  sub_1000CFDD4(v439, v440, v441, v442, v570);
  swift_unknownObjectRelease();
  UUID.init()();
  v584 = v437;
  v443 = sub_1000E2DCC();
  sub_100006634();
  v444 = swift_allocObject();
  *(v444 + 16) = v443;
  *(v444 + 24) = v433;
  sub_100006634();
  v445 = swift_allocObject();
  *(v445 + 16) = sub_1000E0CD4;
  *(v445 + 24) = v444;
  v446 = sub_100005FBC();
  sub_100046184(v446, v447);
  sub_100046184(&qword_100219220, &qword_10019E2F8);
  sub_10000804C();
  sub_1000E1CB8(v448, v449, &qword_10019E2F0);
  sub_1000E2164(&v547);
  sub_1000E2E4C();
  v550 = v437;

  sub_100006634();
  v450 = swift_allocObject();
  sub_1000E2ACC(v450);
  sub_100046184(&qword_100219230, &qword_10019E300);
  sub_1000E21B8(&v550);
  Publishers.Map.tryMap<A>(_:)();

  sub_100012F20(&v548);
  v451 = sub_10000F18C();
  v452(v451);
  sub_100006634();
  v453 = swift_allocObject();
  sub_1000E2ACC(v453);
  sub_100046184(&qword_100219238, &qword_10019E308);
  sub_1000E2164(&v553);
  Publishers.TryMap.tryMap<A>(_:)();

  v454 = sub_1000135D0(&v551);
  v455(v454, v537);
  sub_100006634();
  v456 = swift_allocObject();
  sub_1000E2ACC(v456);
  v298 = v539;
  v551 = sub_100046184(&qword_100219240, &unk_10019E310);
  Publishers.TryMap.tryMap<A>(_:)();

  sub_100012F20(&v554);
  v457(v433);
  sub_1000E230C(&v546);
  sub_10000B9B8(&v585);
  sub_1000E22F8();
  v458();
  sub_10000F230();

  v546 = sub_1000CFB78(v552, &selRef_uuid);
  if (v459)
  {
    v460 = v459;
    sub_1000E2B44();
    v461 = sub_1000E2574(&v573);
    v462 = v560;
    (v560)(v461, v539, v537);
    sub_1000E2C84();
    v464 = *(v463 + 80);
    v465 = (v464 + 32) & ~v464;
    v466 = (v543 + v465 + 7) & 0xFFFFFFFFFFFFFFF8;
    v467 = swift_allocObject();
    sub_1000E2388();
    *(v468 + 16) = v470;
    *(v468 + 24) = v469;
    (v462)(v468 + v465, v405, v537);
    v471 = (v467 + v466);
    *v471 = v546;
    v471[1] = v460;
    v472 = v577;
    *(v467 + ((v466 + 23) & 0xFFFFFFFFFFFFFFF8)) = v577;
    sub_100006634();
    v473 = swift_allocObject();
    *(v473 + 16) = sub_1000E0D38;
    *(v473 + 24) = v467;

    sub_10000BA48(&v556);
    Publishers.TryMap.tryMap<A>(_:)();

    v546 = *(v540 + 8);
    v546();
    v474 = v552;
    v552 = v474;
    v475 = sub_1000E2C60(&v590);
    v477 = [v475 v476];
    sub_100019024();
    v478 = swift_allocObject();
    v478[2] = v472;
    v478[3] = v474;
    v479 = v547;
    v478[4] = v547;
    v478[5] = v477;
    sub_100006634();
    v480 = swift_allocObject();
    *(v480 + 16) = sub_1000E0D58;
    *(v480 + 24) = v478;

    v576 = v479;
    sub_1000E2164(&v558);
    Publishers.TryMap.tryMap<A>(_:)();

    v481 = v546;
    (v546)(v528);
    sub_1000E2574(&v573);
    sub_1000E2C6C(&v585);
    sub_1000E22F8();
    v482();
    v483 = swift_allocObject();
    *(v483 + 16) = v544;
    (v560)(v483 + ((v464 + 24) & ~v464), v479, v478);
    sub_100006634();
    v484 = swift_allocObject();
    *(v484 + 16) = sub_1000E0D84;
    *(v484 + 24) = v483;
    v485 = v544;
    sub_100046184(&qword_1002192A8, &qword_10019E320);
    sub_1000E249C(&v557);
    Publishers.TryMap.tryMap<A>(_:)();

    (v481)(v472);
    sub_1000E237C();
    Publishers.TryMap.tryMap<A>(_:)();
    sub_100012F20(&v578);
    v548 = v486;
    v565 = v487;
    v488 = sub_1000E2258();
    v489(v488);
    v560 = [v485 queryId];
    sub_1000E2164(&v567);
    v491 = v571;
    (*(v490 + 16))(v542, v549, v571);
    v492 = (v472[80] + 16) & ~v472[80];
    sub_1000E22E8();
    v494 = v493 & 0xFFFFFFFFFFFFFFF8;
    v495 = ((v493 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v496 = (v495 + 15) & 0xFFFFFFFFFFFFFFF8;
    v497 = (v496 + 15) & 0xFFFFFFFFFFFFFFF8;
    v498 = (v497 + 15) & 0xFFFFFFFFFFFFFFF8;
    v499 = swift_allocObject();
    (*(v472 + 4))(v499 + v492, v542, v491);
    *(v499 + v494) = v560;
    *(v499 + v495) = v556;
    v158 = v577;
    *(v499 + v496) = v577;
    v500 = v552;
    *(v499 + v497) = v552;
    *(v499 + v498) = v576;
    sub_100006634();
    v501 = swift_allocObject();
    *(v501 + 16) = sub_1000E0DA4;
    *(v501 + 24) = v499;

    v571 = v500;
    v502 = sub_100005FBC();
    sub_100046184(v502, v503);
    v504 = sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
    sub_100008A24();
    sub_1000E1CB8(v505, v506, &qword_10019E328);
    sub_1000E240C(&v566);
    sub_1000E237C();
    Publisher.catch<A>(_:)();

    sub_1000385F0();
    sub_1000E25A4();
    v507();
    sub_100006634();
    v508 = swift_allocObject();
    sub_1000E2370(v508, &off_1001F9E28);
    swift_unknownObjectWeakInit();
    sub_1000059D0();
    sub_1000E2484(&v577);
    sub_100038A30(&v563);
    sub_1000E06DC(v509, v510);
    sub_1000E210C(&v561);
    v513 = v512 & ~v511;
    v514 = (v541 + v513 + 7) & 0xFFFFFFFFFFFFFFF8;
    v515 = swift_allocObject();
    *(v515 + 16) = v508;
    sub_1000E0734(v504, v515 + v513);
    *(v515 + v514) = v570;
    v516 = (v515 + ((v514 + 15) & 0xFFFFFFFFFFFFFFF8));
    v517 = v568;
    *v516 = sub_1000E1FD4;
    v516[1] = v517;
    sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
    sub_100037ED8();

    Publisher<>.sink(receiveValue:)();
    sub_1000E2864();

    sub_100012F20(&v568);
    v518(v498);
    sub_100099EF4();

    sub_10008E4C4();
    sub_1000C4490();

    swift_unknownObjectRelease();

    sub_1000E2B2C();

    sub_1000E2B14();
    sub_10000AB10();
    sub_10001C254();
    sub_100012F20(&v587);
    v519 = sub_1000E2C40();
    v520(v519);
    sub_100005FA4();
    sub_1000E2A60();
    sub_100003A28();
    sub_1000E21A0();
    sub_10001C254();
    v521 = sub_10001ADE8();
    v522(v521);
    sub_100012F40();
    sub_1000E23B8();
    v523();

    sub_10000F230();

    sub_1000E2364();
    goto LABEL_45;
  }

LABEL_95:
  v525 = sub_1000E230C(v592);
  _Block_release(v525);
  _Block_release(v298);
  __break(1u);
}

void sub_1000D3298()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v306 = type metadata accessor for URLQueryItem();
  v7 = sub_100003650(v306);
  v304 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100004370();
  v305 = v11;
  sub_1000058D8();
  v299 = type metadata accessor for Logger();
  v12 = sub_100003650(v299);
  v284 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10000CEDC();
  v293 = v16;
  v17 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  sub_100003650(v17);
  v275 = v18;
  v20 = *(v19 + 64);
  sub_100003760();
  __chkstk_darwin(v21);
  sub_10000BBD0();
  v22 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  sub_100003650(v22);
  v276 = v23;
  v25 = *(v24 + 64);
  sub_100003760();
  __chkstk_darwin(v26);
  sub_10000BBD0();
  v27 = sub_100046184(&qword_1002191C0, &qword_10019E2C8);
  sub_100003650(v27);
  v277 = v28;
  v30 = *(v29 + 64);
  sub_100003760();
  __chkstk_darwin(v31);
  sub_10000BBD0();
  v32 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v33 = sub_100003650(v32);
  v278 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_100003838();
  sub_100007F80();
  __chkstk_darwin(v37);
  sub_100009934();
  v38 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  v39 = sub_100003650(v38);
  v282 = v40;
  v283 = v39;
  v42 = *(v41 + 64);
  sub_100003760();
  __chkstk_darwin(v43);
  sub_10000BBD0();
  v44 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  v285 = sub_100003650(v44);
  v46 = *(v45 + 64);
  sub_100003760();
  __chkstk_darwin(v47);
  sub_10000BBD0();
  sub_1000058D8();
  v48 = type metadata accessor for CancellableStoreKey();
  v49 = sub_1000038C4(v48);
  v279 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_100009964();
  v280 = v54;
  v281 = v53;
  sub_1000E213C();
  __chkstk_darwin(v55);
  sub_100009934();
  v294 = v56;
  v57 = sub_100046184(&unk_100219320, &unk_1001A06F0);
  v58 = sub_100005490(v57);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  sub_100003838();
  v291 = v61;
  sub_100007F80();
  __chkstk_darwin(v62);
  sub_100005924();
  v289 = v63;
  sub_100007F80();
  __chkstk_darwin(v64);
  sub_100009934();
  v295 = v65;
  v66 = sub_1000058D8();
  v67 = type metadata accessor for SessionTokens(v66);
  v68 = sub_100005490(v67);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  sub_100004370();
  v296 = v71;
  sub_1000058D8();
  v72 = type metadata accessor for URLRequest();
  v73 = sub_100003650(v72);
  v297 = v74;
  v298 = v73;
  v76 = *(v75 + 64);
  __chkstk_darwin(v73);
  sub_100009964();
  v274 = v77;
  sub_1000E213C();
  __chkstk_darwin(v78);
  sub_100009934();
  v288 = v79;
  sub_1000E213C();
  __chkstk_darwin(v80);
  sub_100009934();
  v287 = v81;
  sub_1000E213C();
  __chkstk_darwin(v82);
  sub_100009934();
  v300 = v83;
  __chkstk_darwin(v84);
  sub_100009934();
  v303 = v85;
  v86 = sub_1000058D8();
  v87 = type metadata accessor for PegasusContext(v86);
  v88 = sub_100005490(v87);
  v90 = *(v89 + 64);
  __chkstk_darwin(v88);
  sub_100004370();
  v309 = v91;
  v92 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v92);
  v94 = *(v93 + 64);
  sub_100003760();
  __chkstk_darwin(v95);
  sub_100006EBC();
  v96 = type metadata accessor for UserAgent();
  v97 = sub_100003650(v96);
  v310 = v98;
  v100 = *(v99 + 64);
  __chkstk_darwin(v97);
  sub_100004370();
  v311 = v101;
  sub_1000058D8();
  v102 = type metadata accessor for Client();
  v103 = sub_100005490(v102);
  v105 = *(v104 + 64);
  __chkstk_darwin(v103);
  sub_100003664();
  v108 = v107 - v106;
  v109 = type metadata accessor for URL();
  v110 = sub_100003650(v109);
  v312 = v111;
  v313 = v110;
  v113 = *(v112 + 64);
  __chkstk_darwin(v110);
  sub_100003664();
  v116 = v115 - v114;
  sub_1000068B4();
  v117 = swift_allocObject();
  *(v117 + 16) = v2;
  v314 = v2;
  _Block_copy(v2);
  v118 = [v6 moreResultsURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v119 = *(v4 + 56);

  sub_1000119E0();
  sub_10001672C(v120, v121);
  [v6 queryId];
  sub_10000899C();
  v122 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v122);
  v123 = v119;
  v124 = v96;
  v125 = sub_1000E223C(v123, 6, v108);
  sub_10000848C();
  sub_10001672C(v126, v127);
  v128 = sub_10000F268();
  sub_10000C944(v128, v129, v96);
  if (v203)
  {
    sub_10000B298(v0, &qword_100217480, &unk_100198F70);
    [v6 queryId];
    v130 = v314;
    v131 = sub_10000F250();
    v132(v131);
    *(v125 + qword_100216C08) = 37;
    sub_10000D684();

    (*(v312 + 8))(v116, v313);
LABEL_10:

    v150 = v130;
    goto LABEL_11;
  }

  v290 = v6;
  v272 = v117;
  v273 = v125;
  v286 = v116;
  v133 = *(v310 + 32);
  sub_1000E2504();
  v134();
  sub_100006AE8();
  v137 = sub_10000BB00(v135, v136);
  if (!v137)
  {
    [v6 queryId];
    v130 = v314;
    v143 = sub_10000F250();
    v144(v143);
    sub_1000E2B5C(qword_100216C08);

LABEL_9:
    v147 = *(v310 + 8);
    v148 = sub_10000BA90();
    v149(v148);
    (*(v312 + 8))(v116, v313);
    goto LABEL_10;
  }

  v138 = v137;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [v6 queryId];
    v130 = v314;
    v145 = sub_10000F250();
    v146(v145);
    sub_1000E2B5C(qword_100216C08);

    goto LABEL_9;
  }

  v140 = Strong;
  v141 = Strong;
  sub_100017190(v309);
  sub_1000E29D8();
  type metadata accessor for PARNetworkRequestFactory();
  swift_initStackObject();
  sub_10000BF8C();
  v142 = swift_unknownObjectRetain();
  sub_100017594(v142, v141);
  sub_1000E2AE4();
  sub_1000E75A0();
  swift_unknownObjectRelease();
  (sub_1000904BC)(v309, v6, v138, v296);
  v269 = v138;
  v270 = v124;
  v271 = v140;

  sub_100003A28();
  sub_10001C254();
  v151 = v303;
  v267 = v297[4];
  v267(v303, v300, v298);
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    swift_once();
  }

  v268 = v4;
  sub_100006674(v299, qword_100232B10);
  v152 = v297[2];
  v153 = v287;
  v154 = sub_1000059E8();
  v152(v154);
  v155 = v288;
  v156 = sub_100008A40();
  v266 = v152;
  v152(v156);
  v157 = v290;
  v158 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000098B0();
  v160 = v271;
  v301 = v157;
  if (os_log_type_enabled(v158, v159))
  {
    v161 = sub_1000E2648();
    sub_100018FF4();
    *v161 = 134349826;
    *(v161 + 4) = [v157 queryId];

    *(v161 + 12) = 2080;
    v153 = URLRequest.debugDescription.getter();
    v162 = v297[1];
    v163 = sub_100005FBC();
    v162(v163);
    v164 = sub_1000E2258();
    sub_100009684(v164, v165, v166);
    sub_10000AB28();

    *(v161 + 14) = v287;
    *(v161 + 22) = 2080;
    v167 = URLRequest.allHTTPHeaderFields.getter();
    if (!v167)
    {
      v167 = Dictionary.init(dictionaryLiteral:)();
    }

    v168 = v167;
    Dictionary.description.getter();

    (v162)(v288, v298);
    v169 = sub_10000CC98();
    sub_100009684(v169, v170, v171);
    sub_100038F24();

    *(v161 + 24) = v168;
    *(v161 + 32) = 2050;
    *(v161 + 34) = v315;
    _os_log_impl(&_mh_execute_header, v158, &OBJC_PROTOCOL___NSXPCConnectionDelegate.cb, "performing query %{public}llu request: %s header: %s requestId: %{public}llu", v161, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    v151 = v303;
    v160 = v271;
  }

  else
  {

    v181 = v297[1];
    v182 = sub_10000AB34();
    v181(v182);
    v183 = sub_1000E2418();
    v181(v183);
  }

  v184 = objc_opt_self();
  URL._bridgeToObjectiveC()(v185);
  v187 = v186;
  v188 = [v184 parsec_componentsWithURL:v186 resolvingAgainstBaseURL:0];

  if (v188)
  {
    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v189 = 0;
  }

  else
  {
    v189 = 1;
  }

  v190 = type metadata accessor for URLComponents();
  sub_1000051C0(v289, v189, 1, v190);
  sub_1000A4E88(v289, v295, &unk_100219320, &unk_1001A06F0);
  sub_10000EFEC(v295, v291, &unk_100219320, &unk_1001A06F0);
  v191 = sub_1000E25BC();
  sub_10000C944(v191, v192, v190);
  if (v203)
  {
    sub_10000B298(v291, &unk_100219320, &unk_1001A06F0);
    goto LABEL_43;
  }

  v193 = URLComponents.queryItems.getter();
  sub_10000690C(v190);
  v195 = *(v194 + 8);
  v196 = sub_100003898();
  v197(v196);
  if (!v193)
  {
LABEL_43:
    v207 = sub_1000C4190();
    v208 = [v301 triggerEvent];
    if (v208 >> 31)
    {
      __break(1u);
    }

    else
    {
      [v207 setTriggerEvent:v208];
      v209 = sub_1000E2258();
      sub_100089408(v209, v210, v207, v211);
      [v207 setEndpoint:6];
      v212 = *(v268 + 64);
      swift_unknownObjectRetain();
      v307 = v207;
      v213 = [v301 queryId];
      v214 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v307];

      [v214 setQueryId:v213];
      sub_100014D74();
      swift_unknownObjectRelease();

      sub_1000C7160();
      sub_10008596C();
      v215 = sub_100037ED8();
      v216 = sub_1000E294C(v215);

      v292 = v216;
      swift_unknownObjectRetain();
      v217 = sub_100005FBC();
      sub_1000CFDD4(v217, v218, 0, 0xE000000000000000, v273);

      swift_unknownObjectRelease();
      UUID.init()();
      v219 = [v301 queryId];
      sub_100006634();
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v315;
      sub_100006634();
      v221 = swift_allocObject();
      *(v221 + 16) = sub_1000E201C;
      *(v221 + 24) = v220;
      v222 = sub_10000BE80();
      sub_100046184(v222, v223);
      sub_100046184(&qword_100219220, &qword_10019E2F8);
      sub_10000804C();
      sub_1000E1CB8(v224, v225, &qword_10019E2F0);
      sub_1000E2B8C();
      Publisher.map<A>(_:)();

      sub_100006634();
      v226 = swift_allocObject();
      *(v226 + 16) = sub_1000E1058;
      *(v226 + 24) = v268;

      sub_100046184(&qword_100219230, &qword_10019E300);
      sub_10000BA3C();
      Publishers.Map.tryMap<A>(_:)();

      v227 = *(v275 + 8);
      v228 = sub_1000E2418();
      v229(v228);
      sub_100006634();
      v230 = swift_allocObject();
      *(v230 + 16) = sub_1000E1074;
      *(v230 + 24) = v268;

      sub_100046184(&qword_100219238, &qword_10019E308);
      sub_10000BA3C();
      Publishers.TryMap.tryMap<A>(_:)();

      v231 = *(v276 + 8);
      v232 = sub_100008380();
      v233(v232);
      sub_100006634();
      v234 = swift_allocObject();
      *(v234 + 16) = sub_1000E1090;
      *(v234 + 24) = v268;

      v235 = sub_100046184(&qword_100219240, &unk_10019E310);
      Publishers.TryMap.tryMap<A>(_:)();

      v236 = *(v277 + 8);
      v237 = sub_100004170();
      v238(v237);
      v308 = v307;
      v160 = v301;
      v239 = [v301 queryId];
      sub_100019024();
      v240 = swift_allocObject();
      v240[2] = v268;
      v240[3] = v308;
      v240[4] = v292;
      v240[5] = v239;
      sub_100006634();
      v241 = swift_allocObject();
      *(v241 + 16) = sub_1000E1FF0;
      *(v241 + 24) = v240;
      v291 = v292;

      sub_1000E23EC();
      Publishers.TryMap.tryMap<A>(_:)();

      v155 = v278 + 8;
      v151 = *(v278 + 8);
      v242 = sub_100007700();
      v151(v242);
      (v266)(v274, v303, v298);
      sub_1000E20EC(v297);
      v243 = swift_allocObject();
      *(v243 + 16) = v301;
      v267((v243 + v235), v274, v298);
      sub_100006634();
      v244 = swift_allocObject();
      *(v244 + 16) = sub_1000E1FD0;
      *(v244 + 24) = v243;
      v245 = v301;
      sub_100046184(&qword_1002192A8, &qword_10019E320);
      sub_1000E2504();
      Publishers.TryMap.tryMap<A>(_:)();

      v246 = sub_1000E2258();
      v151(v246);
      v301 = [v245 queryId];
      v247 = qword_100214078;
      v306 = v308;
      if (v247 == -1)
      {
LABEL_45:
        sub_10000964C(v299, qword_1002329D8);
        sub_1000E2D04();
        v248(v293);
        v249 = (*(v284 + 80) + 16) & ~*(v284 + 80);
        sub_10000CCCC();
        v250 = (v160 + 15) & 0xFFFFFFFFFFFFFFF8;
        v251 = swift_allocObject();
        (*(v284 + 32))(v251 + v249, v293, v299);
        *(v151 + v251) = v301;
        *(v251 + v155) = v315;
        *&v160[v251] = v268;
        *(v251 + v250) = v306;
        *(v251 + ((v250 + 15) & 0xFFFFFFFFFFFFFFF8)) = v291;
        sub_100006634();
        v252 = swift_allocObject();
        *(v252 + 16) = sub_1000E2000;
        *(v252 + 24) = v251;
        v302 = v291;

        v253 = sub_10000AE18();
        sub_100046184(v253, v254);
        sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
        sub_100008A24();
        sub_1000E1CB8(v255, v256, &qword_10019E328);
        Publisher.catch<A>(_:)();

        v257 = *(v282 + 8);
        v258 = sub_10000BE80();
        v259(v258);
        sub_100006634();
        v260 = swift_allocObject();
        sub_1000E2370(v260, &off_1001F9E28);
        swift_unknownObjectWeakInit();
        sub_1000059D0();
        sub_1000E06DC(v294, v281);
        sub_1000E20EC(v279);
        v261 = (v280 + v283 + 7) & 0xFFFFFFFFFFFFFFF8;
        v262 = sub_1000E2AFC();
        *(v262 + 16) = v260;
        sub_1000E0734(v281, v262 + v283);
        *(v262 + v261) = v273;
        v263 = (v262 + ((v261 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v263 = sub_1000E1FD4;
        v263[1] = v272;
        sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
        sub_10000BF8C();

        Publisher<>.sink(receiveValue:)();

        v264 = sub_1000E2478();
        v265(v264, v285);
        sub_1000E2258();
        sub_100099EF4();

        sub_1000C4490();

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_10000AB10();
        sub_10001C254();
        sub_10000B298(v295, &unk_100219320, &unk_1001A06F0);
        (v297[1])(v303, v298);
        sub_100005FA4();
        sub_10001C254();
        (*(v310 + 8))(v311, v270);
        (*(v312 + 8))(v286, v313);

        v150 = v314;
        goto LABEL_11;
      }
    }

    swift_once();
    goto LABEL_45;
  }

  v198 = *(v193 + 16);
  if (!v198)
  {

    goto LABEL_43;
  }

  v199 = 0;
  v200 = v193 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
  v155 = v304 + 16;
  v201 = (v304 + 8);
  while (v199 < *(v193 + 16))
  {
    (*(v304 + 16))(v305, v200 + *(v304 + 72) * v199, v306);
    v203 = URLQueryItem.name.getter() == 113 && v202 == 0xE100000000000000;
    if (v203)
    {

LABEL_39:
      v153 = URLQueryItem.value.getter();
      v206 = v205;
      (*v201)(v305, v306);
      if (v206)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }

    v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v204)
    {
      goto LABEL_39;
    }

    (*v201)(v305, v306);
LABEL_40:
    if (v198 == ++v199)
    {
LABEL_46:

      v151 = v303;
      v160 = v271;
      goto LABEL_43;
    }
  }

  __break(1u);
  sub_10000435C();
  swift_once();
  sub_100006674(v299, qword_100232B10);
  v172 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v173 = sub_1000E2170();
  if (os_log_type_enabled(v173, v174))
  {
    sub_1000E2130();
    v175 = swift_slowAlloc();
    sub_1000A5288(v175);
    sub_100023F3C();
    _os_log_impl(v176, v177, v178, v179, v180, 2u);
    sub_1000037A4();
  }

  sub_1000E2B5C(qword_100216C08);
  swift_unknownObjectRelease();

  sub_100005FA4();
  sub_10001C254();
  (*(v310 + 8))(v311, v270);
  (*(v200 + 8))(v286, v153);

  v150 = v199;
LABEL_11:
  _Block_release(v150);
  sub_100005460();
}

void sub_1000D4C84()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v302 = v5;
  v7 = v6;
  v311 = type metadata accessor for Logger();
  v8 = sub_100003650(v311);
  v298 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v297 = v12;
  sub_10000CEDC();
  v305 = v13;
  v14 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  v15 = sub_100003650(v14);
  v280 = v16;
  v281 = v15;
  v18 = *(v17 + 64);
  sub_100003760();
  __chkstk_darwin(v19);
  sub_10000BBD0();
  v279 = v20;
  v21 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  v22 = sub_100003650(v21);
  v283 = v23;
  v284 = v22;
  v25 = *(v24 + 64);
  sub_100003760();
  __chkstk_darwin(v26);
  sub_10000BBD0();
  v282 = v27;
  v28 = sub_100046184(&qword_1002191C0, &qword_10019E2C8);
  v29 = sub_100003650(v28);
  v286 = v30;
  v287 = v29;
  v32 = *(v31 + 64);
  sub_100003760();
  __chkstk_darwin(v33);
  sub_10000BBD0();
  v285 = v34;
  v35 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v36 = sub_100003650(v35);
  v290 = v37;
  v291 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_100003838();
  v288 = v40;
  sub_100007F80();
  __chkstk_darwin(v41);
  sub_100009934();
  v289 = v42;
  v43 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  v44 = sub_100003650(v43);
  v295 = v45;
  v296 = v44;
  v47 = *(v46 + 64);
  sub_100003760();
  __chkstk_darwin(v48);
  sub_10000BBD0();
  v304 = v49;
  v50 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  v51 = sub_100003650(v50);
  v300 = v52;
  v301 = v51;
  v54 = *(v53 + 64);
  sub_100003760();
  __chkstk_darwin(v55);
  sub_10000BBD0();
  v299 = v56;
  sub_1000058D8();
  v57 = type metadata accessor for CancellableStoreKey();
  v58 = sub_1000038C4(v57);
  v292 = v59;
  v61 = *(v60 + 64);
  __chkstk_darwin(v58);
  sub_100009964();
  v293 = v63;
  v294 = v62;
  sub_1000E213C();
  __chkstk_darwin(v64);
  sub_100009934();
  v306 = v65;
  v66 = sub_1000058D8();
  v67 = type metadata accessor for SessionTokens(v66);
  v68 = sub_100005490(v67);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  sub_100003664();
  sub_100007884();
  v71 = type metadata accessor for URLRequest();
  v72 = sub_100003650(v71);
  v308 = v73;
  v309 = v72;
  v75 = *(v74 + 64);
  v76 = __chkstk_darwin(v72);
  v278 = &v265 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  sub_100009934();
  v307 = v77;
  __chkstk_darwin(v78);
  sub_100009934();
  v303 = v79;
  __chkstk_darwin(v80);
  sub_1000E26B8();
  __chkstk_darwin(v81);
  sub_100009934();
  v310 = v82;
  v83 = sub_1000058D8();
  v84 = type metadata accessor for PegasusContext(v83);
  v85 = sub_100005490(v84);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85);
  sub_100004370();
  v314 = v88;
  v89 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v89);
  v91 = *(v90 + 64);
  sub_100003760();
  __chkstk_darwin(v92);
  sub_1000E20C8();
  v315 = type metadata accessor for UserAgent();
  v93 = sub_100003650(v315);
  v312 = v94;
  v96 = *(v95 + 64);
  __chkstk_darwin(v93);
  sub_100004370();
  v313 = v97;
  sub_1000058D8();
  v98 = type metadata accessor for Client();
  v99 = sub_100005490(v98);
  v101 = *(v100 + 64);
  __chkstk_darwin(v99);
  sub_100003664();
  v104 = v103 - v102;
  sub_1000068B4();
  v316 = swift_allocObject();
  v317 = v2;
  *(v316 + 16) = v2;
  v105 = *(v4 + 56);
  _Block_copy(v2);

  sub_1000119E0();
  sub_10001672C(v106, v107);
  [v7 queryId];
  sub_10000899C();
  v108 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v108);
  v109 = v105;
  v110 = v4;
  v111 = sub_1000E223C(v109, 7, v104);
  sub_100012714();
  if ((v112 & 1) == 0 || (sub_100006AE8(), (v115 = sub_10000BB00(v113, v114)) == 0))
  {
    [v7 queryId];
    v122 = v317;
    v125 = sub_10000F250();
    v126(v125);
    sub_1000E27C8(qword_100216C08);

LABEL_7:

    goto LABEL_8;
  }

  v116 = v115;
  sub_10000848C();
  sub_10001672C(v117, v118);
  v119 = sub_1000B1FC4();
  sub_10000C944(v119, v120, v315);
  if (v121)
  {
    sub_10000B298(v0, &qword_100217480, &unk_100198F70);
    [v7 queryId];
    v122 = v317;
    v123 = sub_10000F250();
    v124(v123);
    sub_1000E27C8(qword_100216C08);

LABEL_8:
    v127 = v122;
LABEL_9:
    _Block_release(v127);
    sub_100005460();
    return;
  }

  v276 = v111;
  v277 = v116;
  v128 = v312;
  v129 = *(v312 + 32);
  v130 = sub_1000E2258();
  v131(v130);
  v275 = v110;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    [v7 queryId];
    v122 = v317;
    v154 = sub_10000F250();
    v155(v154);
    sub_1000E2B5C(qword_100216C08);

    v156 = *(v128 + 8);
    v157 = sub_1000E2418();
    v158(v157);
    goto LABEL_7;
  }

  v133 = Strong;
  v134 = Strong;
  sub_100017190(v314);
  sub_1000E29D8();
  v135 = v318;
  if (qword_100214060 != -1)
  {
    sub_1000E2298();
  }

  sub_100006674(v311, qword_100232990);
  v136 = v7;
  v137 = v275;

  v271 = v134;
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.default.getter();

  v140 = os_log_type_enabled(v138, v139);
  v274 = v133;
  if (v140)
  {
    v141 = sub_100007B80();
    v272 = sub_100007B80();
    v318 = v272;
    *v141 = 136446722;
    LODWORD(v270) = v139;
    v142 = type metadata accessor for SessionType();
    v273 = v135;
    v143 = v142;
    sub_10000F574();
    sub_10000BA9C(v144, v145);
    v146 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100009684(v146, v147, &v318);
    sub_10000BE50();

    *(v141 + 4) = v143;
    *(v141 + 12) = 2050;
    v148 = [v136 queryId];

    *(v141 + 14) = v148;
    *(v141 + 22) = 2050;
    v135 = v273;
    *(v141 + 24) = v273;
    sub_1000E2660();
    _os_log_impl(v149, v150, v151, v152, v153, 0x20u);
    v139 = v272;
    sub_100007378(v272);
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {
  }

  type metadata accessor for PARNetworkRequestFactory();
  swift_initStackObject();
  sub_10000AB28();
  v159 = swift_unknownObjectRetain();
  v160 = sub_100017594(v159, v139);
  v161 = *(v137 + 64);
  swift_unknownObjectRetain();
  sub_1000E75A0();
  swift_unknownObjectRelease();
  v162 = v160;
  sub_10009104C();
  v273 = v135;
  v163 = v136;

  sub_100003A28();
  sub_10001C254();
  v165 = v308;
  v164 = v309;
  v166 = *(v308 + 32);
  v167 = v310;
  v168 = sub_1000E2804();
  v269 = v170;
  v270 = v169;
  (v170)(v168);
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    swift_once();
  }

  sub_100006674(v311, qword_100232B10);
  v171 = *(v165 + 16);
  v172 = v303;
  v171(v303, v167, v164);
  v267 = v171;
  v268 = v165 + 16;
  v171(v307, v167, v164);
  v173 = v163;
  v174 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000098B0();
  v176 = os_log_type_enabled(v174, v175);
  v272 = v173;
  if (v176)
  {
    LODWORD(v266) = v162;
    sub_1000E2648();
    v265 = sub_1000E23D0();
    v318 = v265;
    *v167 = 134349826;
    *(v167 + 4) = [v173 queryId];

    *(v167 + 12) = 2080;
    v177 = URLRequest.debugDescription.getter();
    v178 = *(v165 + 8);
    v178(v172, v164);
    v179 = sub_100005FBC();
    sub_100009684(v179, v180, v181);
    sub_100038F24();

    *(v167 + 14) = v177;
    *(v167 + 22) = 2080;
    if (!URLRequest.allHTTPHeaderFields.getter())
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    Dictionary.description.getter();
    sub_1000E2C54();

    v178(v307, v309);
    v182 = sub_100006B0C();
    sub_100009684(v182, v183, v184);
    sub_1000189B0();

    sub_1000E22C8();
    v185 = v273;
    *(v167 + 34) = v273;
    _os_log_impl(&_mh_execute_header, v174, v266, "performing query %{public}llu request: %s header: %s requestId: %{public}llu", v167, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {

    v186 = *(v165 + 8);
    v186(v307, v164);
    v186(v172, v164);
    v185 = v273;
  }

  v187 = sub_1000C4190();
  sub_10007EE08(113, 0xE100000000000000);
  if (v188)
  {
    v189 = String._bridgeToObjectiveC()();
  }

  else
  {
    v189 = 0;
  }

  [v187 setInput:v189];

  v190 = v272;
  v191 = [v272 triggerEvent];
  if (!(v191 >> 31))
  {
    [v187 setTriggerEvent:v191];
    [v187 setEndpoint:11];
    v192 = v275;
    v193 = *(v275 + 64);
    swift_unknownObjectRetain();
    v194 = v187;
    v266 = v194;
    v195 = [v190 queryId];
    v196 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v194];

    [v196 setQueryId:v195];
    sub_100014D74();
    swift_unknownObjectRelease();

    v197 = sub_1000C7160();
    v198 = sub_10008596C();
    v199 = sub_1000E294C(v310);
    v201 = v200;
    v307 = v200;

    v202 = v199;
    swift_unknownObjectRetain();
    v203 = sub_1000E2BF0();
    v303 = v197;
    sub_1000CFDD4(v203, v204, 0, 0xE000000000000000, v276);

    swift_unknownObjectRelease();
    UUID.init()();
    v318 = v201;
    v205 = [v190 queryId];
    sub_100006634();
    v206 = swift_allocObject();
    *(v206 + 16) = v205;
    *(v206 + 24) = v185;
    sub_100006634();
    v207 = swift_allocObject();
    *(v207 + 16) = sub_1000E201C;
    *(v207 + 24) = v206;
    v208 = sub_10000BE80();
    sub_100046184(v208, v209);
    sub_100046184(&qword_100219220, &qword_10019E2F8);
    sub_10000804C();
    sub_1000E1CB8(v210, v211, &qword_10019E2F0);
    sub_1000E2B8C();
    sub_10000DC50();
    Publisher.map<A>(_:)();

    sub_100006634();
    v212 = swift_allocObject();
    *(v212 + 16) = sub_1000E1FA0;
    *(v212 + 24) = v192;

    sub_100046184(&qword_100219230, &qword_10019E300);
    sub_1000E2504();
    Publishers.Map.tryMap<A>(_:)();

    v213 = *(v280 + 8);
    v214 = sub_1000E2258();
    v215(v214);
    sub_100006634();
    v216 = swift_allocObject();
    *(v216 + 16) = sub_1000E1FB8;
    *(v216 + 24) = v192;

    sub_100046184(&qword_100219238, &qword_10019E308);
    v217 = v285;
    sub_1000E2504();
    Publishers.TryMap.tryMap<A>(_:)();

    v218 = *(v283 + 8);
    v219 = sub_100003898();
    v220(v219);
    sub_100006634();
    v221 = swift_allocObject();
    *(v221 + 16) = sub_1000E1FD8;
    *(v221 + 24) = v192;

    v222 = sub_100046184(&qword_100219240, &unk_10019E310);
    v223 = v288;
    sub_10000DC50();
    Publishers.TryMap.tryMap<A>(_:)();

    v224 = v286[1];
    v225 = sub_1000E2418();
    v226(v225);
    v227 = v266;
    v287 = v227;
    v228 = [v272 queryId];
    sub_100019024();
    v229 = swift_allocObject();
    v229[2] = v192;
    v229[3] = v227;
    v229[4] = v202;
    v229[5] = v228;
    sub_100006634();
    v230 = swift_allocObject();
    *(v230 + 16) = sub_1000E1FF0;
    *(v230 + 24) = v229;

    v286 = v202;
    sub_1000E23EC();
    Publishers.TryMap.tryMap<A>(_:)();

    v231 = *(v290 + 8);
    (v231)(v223, v229);
    v232 = v278;
    v233 = v309;
    v267(v278, v310, v309);
    sub_1000E20EC(v308);
    v234 = swift_allocObject();
    v235 = v272;
    *(v234 + 16) = v272;
    v269(v234 + v222, v232, v233);
    sub_100006634();
    v236 = swift_allocObject();
    *(v236 + 16) = sub_1000E1FD0;
    *(v236 + 24) = v234;
    v237 = v235;
    sub_100046184(&qword_1002192A8, &qword_10019E320);
    sub_1000E2504();
    Publishers.TryMap.tryMap<A>(_:)();

    v238 = sub_1000E2258();
    (v231)(v238);
    v291 = [v237 queryId];
    v239 = v298;
    sub_1000E2D04();
    v240 = v311;
    v241(v305, v271, v311);
    v242 = (*(v239 + 80) + 16) & ~*(v239 + 80);
    sub_1000E2288();
    sub_10000CCCC();
    v243 = swift_allocObject();
    (*(v239 + 32))(v243 + v242, v305, v240);
    *(v243 + v217) = v291;
    *(v235 + v243) = v273;
    *&v231[v243] = v275;
    v245 = v286;
    v244 = v287;
    *(v243 + v233) = v287;
    *(v243 + ((v233 + 15) & 0xFFFFFFFFFFFFFFF8)) = v245;
    sub_100006634();
    v246 = swift_allocObject();
    *(v246 + 16) = sub_1000E2000;
    *(v246 + 24) = v243;

    v311 = v244;
    v305 = v245;
    v247 = sub_1000385F0();
    sub_100046184(v247, v248);
    sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
    sub_100008A24();
    sub_1000E1CB8(v249, v250, &qword_10019E328);
    Publisher.catch<A>(_:)();

    v251 = *(v295 + 8);
    v252 = sub_1000385F0();
    v253(v252);
    sub_100006634();
    v254 = swift_allocObject();
    sub_1000E2370(v254, &off_1001F9E28);
    swift_unknownObjectWeakInit();
    sub_1000059D0();
    v255 = v294;
    sub_1000E06DC(v306, v294);
    v256 = (*(v292 + 80) + 24) & ~*(v292 + 80);
    sub_1000E2288();
    v258 = v257 & 0xFFFFFFFFFFFFFFF8;
    v259 = swift_allocObject();
    *(v259 + 16) = v254;
    sub_1000E0734(v255, v259 + v256);
    *(v259 + v217) = v276;
    v260 = (v259 + v258);
    v261 = v316;
    *v260 = sub_1000E1FD4;
    v260[1] = v261;
    sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
    sub_1000054F4();

    v262 = v301;
    Publisher<>.sink(receiveValue:)();

    v263 = sub_1000E2478();
    v264(v263, v262);
    sub_100006B0C();
    sub_100099EF4();

    sub_1000C4490();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_10000AB10();
    sub_10001C254();
    (*(v308 + 8))(v310, v309);
    sub_100005FA4();
    sub_10001C254();
    (*(v312 + 8))(v313, v315);

    v127 = v317;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000D63A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v403[2] = v27;
  sub_1000E21C4();
  v28 = type metadata accessor for Logger();
  v29 = sub_100003650(v28);
  v402 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  v400 = v33;
  sub_10000CEDC();
  sub_100007C68(v34);
  v35 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  sub_10000DE94(v35, &v411);
  v391 = v36;
  v38 = *(v37 + 64);
  sub_100003760();
  __chkstk_darwin(v39);
  sub_10000BBD0();
  sub_100007C68(v40);
  v41 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  sub_10000DE94(v41, &v414);
  v392 = v42;
  v44 = *(v43 + 64);
  sub_100003760();
  __chkstk_darwin(v45);
  sub_10000BBD0();
  sub_100007C68(v46);
  v47 = sub_100046184(&qword_1002191C0, &qword_10019E2C8);
  sub_10000DE94(v47, &v417);
  v393 = v48;
  v50 = *(v49 + 64);
  sub_100003760();
  __chkstk_darwin(v51);
  sub_10000BBD0();
  sub_100007C68(v52);
  v53 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v54 = sub_10000DE94(v53, &v421);
  v395 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v58);
  sub_100009934();
  sub_100007C68(v59);
  v60 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  sub_10000DE94(v60, &v424);
  v398 = v61;
  v63 = *(v62 + 64);
  sub_100003760();
  __chkstk_darwin(v64);
  sub_10000BBD0();
  sub_100007C68(v65);
  v66 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  sub_10000DE94(v66, &v428);
  v403[0] = v67;
  v69 = *(v68 + 64);
  sub_100003760();
  __chkstk_darwin(v70);
  sub_10000BBD0();
  sub_10000549C(v71);
  v72 = type metadata accessor for CancellableStoreKey();
  v73 = sub_1000038C4(v72);
  v396 = v74;
  v76 = *(v75 + 64);
  __chkstk_darwin(v73);
  sub_100009964();
  sub_100007C68(v77);
  sub_1000E2188(v422);
  __chkstk_darwin(v78);
  sub_100009934();
  sub_10000549C(v79);
  v80 = type metadata accessor for URLRequest();
  v81 = sub_10000DE94(v80, &a14);
  v407 = v82;
  v84 = *(v83 + 64);
  __chkstk_darwin(v81);
  sub_100009964();
  sub_1000076F0(v85);
  __chkstk_darwin(v86);
  sub_100009934();
  sub_1000076F0(v87);
  __chkstk_darwin(v88);
  sub_100009934();
  sub_1000076F0(v89);
  __chkstk_darwin(v90);
  sub_100009934();
  sub_100007C68(v91);
  sub_1000E2188(&v407);
  __chkstk_darwin(v92);
  sub_100009934();
  v94 = sub_10000549C(v93);
  v95 = type metadata accessor for PegasusContext(v94);
  v96 = sub_100005490(v95);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  sub_100004370();
  v100 = sub_10000549C(v99);
  v101 = type metadata accessor for SessionTokens(v100);
  v102 = sub_100005490(v101);
  v104 = *(v103 + 64);
  __chkstk_darwin(v102);
  sub_100004370();
  sub_100007C68(v105);
  v106 = sub_100046184(&qword_100217480, &unk_100198F70);
  v107 = sub_100005490(v106);
  v109 = *(v108 + 64);
  __chkstk_darwin(v107);
  sub_100003838();
  v416 = v110;
  sub_100007F80();
  __chkstk_darwin(v111);
  sub_100009934();
  v414 = v112;
  sub_1000058D8();
  v420 = type metadata accessor for UserAgent();
  v113 = sub_100003650(v420);
  v115 = v114;
  v117 = *(v116 + 64);
  __chkstk_darwin(v113);
  sub_100003838();
  v415 = v118;
  sub_100007F80();
  __chkstk_darwin(v119);
  v121 = &v383 - v120;
  v122 = type metadata accessor for Client();
  v123 = sub_100005490(v122);
  v125 = *(v124 + 64);
  __chkstk_darwin(v123);
  sub_100004370();
  v418 = v126;
  sub_1000068B4();
  v127 = swift_allocObject();
  *(v127 + 16) = v24;
  _Block_copy(v24);
  if (qword_100214080 != -1)
  {
    swift_once();
  }

  v409 = v28;
  sub_100006674(v28, qword_1002329F0);
  v128 = v20;

  v417 = v28;
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();

  v131 = os_log_type_enabled(v129, v130);
  p_ivar_base_size = &UploadStateFileStore.ivar_base_size;
  v419 = v24;
  v413 = v121;
  if (v131)
  {
    v133 = sub_10001BCD4();
    v134 = sub_100007B80();
    v422[0] = v134;
    *v133 = 136446466;
    type metadata accessor for SessionType();
    v135 = v115;
    v136 = v127;
    sub_10000F574();
    sub_10000BA9C(v137, v138);
    v139 = dispatch thunk of CustomStringConvertible.description.getter();
    v141 = sub_100009684(v139, v140, v422);

    *(v133 + 4) = v141;
    v127 = v136;
    v115 = v135;
    p_ivar_base_size = (&UploadStateFileStore + 8);
    *(v133 + 12) = 2048;
    v142 = sub_1000E2988();

    *(v133 + 14) = v142;
    _os_log_impl(&_mh_execute_header, v129, v130, "Session %{public}s performing zkw query[%llu]", v133, 0x16u);
    sub_100007378(v134);
    sub_1000E20B8();

    v24 = v419;
    sub_1000037A4();
  }

  else
  {
  }

  v143 = *(v26 + 56);

  sub_1000119E0();
  v144 = v418;
  sub_10001672C(v145, v146);
  sub_1000E2988();
  sub_10000899C();
  v147 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v147);
  v148 = sub_1000E223C(v143, 3, v144);
  sub_100012714();
  if (v149)
  {
    v150 = v128;
    sub_10000848C();
    v151 = v414;
    sub_10001672C(v152, v153);
    v154 = sub_100009940();
    v155 = v420;
    sub_10000C944(v154, v156, v420);
    if (v157)
    {
      sub_10000B298(v151, &qword_100217480, &unk_100198F70);
      sub_1000E2DCC();
      v158 = sub_10000CA04();
      v159(v158);
      sub_1000E27C8(qword_100216C08);
    }

    else
    {
      v174 = v151;
      v175 = v413;
      (*(v115 + 32))(v413, v174, v155);
      sub_100006AE8();
      v178 = sub_10000BB00(v176, v177);
      if (v178)
      {
        v179 = v178;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v181 = Strong;
          v390 = v115;
          v416 = v179;
          v182 = [v179 isEnabled];
          v415 = v181;
          if (v182)
          {
            v418 = v148;
            v414 = v127;
            sub_1000E2AE4();
            sub_1000E75A0();
            swift_unknownObjectRelease();
            sub_100017190(v411);
            v422[0] = 0;
            swift_stdlib_random();
            v183 = v422[0];
            v184 = v150;

            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.default.getter();

            if (sub_1000E27E0())
            {
              v187 = v184;
              v188 = sub_100007B80();
              v422[0] = sub_100007B80();
              *v188 = 136446722;
              v189 = v186;
              type metadata accessor for SessionType();
              v389 = v183;
              sub_10000F574();
              sub_10000BA9C(v190, v191);
              v192 = dispatch thunk of CustomStringConvertible.description.getter();
              v194 = sub_100009684(v192, v193, v422);

              *(v188 + 4) = v194;
              v148 = 2050;
              *(v188 + 12) = 2050;
              v195 = [v187 queryId];

              *(v188 + 14) = v195;
              *(v188 + 22) = 2050;
              v196 = v416;
              v183 = v389;
              *(v188 + 24) = v389;
              _os_log_impl(&_mh_execute_header, v185, v189, "Session %{public}s performing query %{public}llu requestId: %{public}llu", v188, 0x20u);
              sub_1000E2E30();
              sub_1000037A4();

              v184 = v187;
              v197 = v196;
              sub_1000037A4();

              sub_1000E251C();
            }

            else
            {

              sub_1000E251C();
              v197 = v416;
            }

            type metadata accessor for PARNetworkRequestFactory();
            v241 = sub_1000E2E18();
            v242 = swift_unknownObjectRetain();
            v243 = sub_100017594(v242, v241);
            sub_10000BA48(&a11);
            sub_10000DC50();
            sub_10008FF9C();
            v406 = v184;
            v389 = v183;

            sub_1000E21B8(&a13);
            v245 = *(v244 + 32);
            v246 = v410;
            v247 = sub_100005854();
            v248 = v408;
            v405 = v249;
            v387 = v250;
            (v250)(v247);
            if (qword_1002140E0 != -1)
            {
              sub_10000435C();
              swift_once();
            }

            v251 = sub_1000E246C();
            sub_100006674(v251, v252);
            v253 = *(v197 + 2);
            (v253)(v148, v246, v248);
            v386 = v197 + 16;
            v385 = v253;
            (v253)(v404, v246, v248);
            sub_1000E2388();
            v255 = v254;
            v256 = Logger.logObject.getter();
            static os_log_type_t.debug.getter();
            sub_1000098B0();
            v258 = os_log_type_enabled(v256, v257);
            v388 = v26;
            if (v258)
            {
              LODWORD(v384) = v243;
              sub_1000E2648();
              v383 = sub_1000E23D0();
              v422[0] = v383;
              *v253 = 134349826;
              *(v253 + 4) = [v255 queryId];
              v406 = v255;

              *(v253 + 12) = 2080;
              v259 = URLRequest.debugDescription.getter();
              v24 = *(v197 + 1);
              v260 = sub_1000059E8();
              (v24)(v260);
              v261 = sub_1000E263C();
              sub_100009684(v261, v262, v263);
              sub_1000189B0();

              *(v253 + 14) = v259;
              *(v253 + 22) = 2080;
              v264 = v404;
              if (!URLRequest.allHTTPHeaderFields.getter())
              {
                Dictionary.init(dictionaryLiteral:)();
              }

              v265 = v389;
              Dictionary.description.getter();

              (v24)(v264, v408);
              v266 = sub_100005CC0();
              sub_100009684(v266, v267, v268);
              sub_1000E24A8();

              sub_1000E22C8();
              *(v253 + 34) = v265;
              sub_1000E2660();
              _os_log_impl(v269, v270, v271, v272, v273, 0x2Au);
              sub_1000E230C(v403);
              swift_arrayDestroy();
              sub_1000037A4();

              sub_1000037A4();

              v274 = v413;
              v26 = v388;
              v255 = v406;
            }

            else
            {

              v265 = v197 + 8;
              v256 = *(v197 + 1);
              (v256)(v404, v248);
              v285 = sub_1000E25E0();
              (v256)(v285);
              v274 = v413;
            }

            v286 = sub_1000C4190();
            sub_100089408(0, 0xE000000000000000, v286, &selRef_setInput_);
            [v286 setSearchType:1];
            v287 = [v255 triggerEvent];
            if (!(v287 >> 31))
            {
              [v286 setTriggerEvent:v287];
              [v286 setEndpoint:6];
              v288 = *(v26 + 64);
              swift_unknownObjectRetain();
              v289 = v286;
              sub_1000E2580();
              v291 = [v255 v290];
              v292 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v289];
              v406 = v289;

              [v292 setQueryId:v291];
              sub_100014D74();
              swift_unknownObjectRelease();

              v293 = v255;
              v294 = Logger.logObject.getter();
              static os_log_type_t.debug.getter();
              v295 = sub_1000E2170();
              if (os_log_type_enabled(v295, v296))
              {
                sub_10000F554();
                v297 = swift_slowAlloc();
                *v297 = 134217984;
                *(v297 + 4) = sub_1000E26A0();

                sub_1000E21AC();
                _os_log_impl(v298, v299, v300, v301, v297, 0xCu);
                sub_1000037A4();
              }

              else
              {

                v294 = v293;
              }

              v302 = v248;

              v303 = sub_1000C7160();
              v304 = sub_10008596C();
              v305 = sub_1000E294C(v410);
              v307 = v306;

              v383 = v305;

              v404 = v303;
              swift_unknownObjectRetain();
              sub_100005FBC();
              sub_1000E2C08();
              sub_1000CFDD4(v308, v309, v310, v311, v418);
              swift_unknownObjectRelease();
              UUID.init()();
              v422[0] = v307;
              v384 = v307;
              v312 = sub_1000E26A0();
              sub_100006634();
              v313 = swift_allocObject();
              v314 = v389;
              *(v313 + 16) = v312;
              *(v313 + 24) = v314;
              sub_100006634();
              v315 = swift_allocObject();
              *(v315 + 16) = sub_1000E201C;
              *(v315 + 24) = v313;
              v316 = sub_10000DC5C();
              sub_100046184(v316, v317);
              v318 = sub_100046184(&qword_100219220, &qword_10019E2F8);
              sub_10000804C();
              sub_1000E1CB8(v319, v320, &qword_10019E2F0);
              sub_1000E21B8(&v409);
              sub_1000E2E4C();

              sub_100006634();
              v321 = swift_allocObject();
              v322 = v388;
              *(v321 + 16) = sub_1000E1FA0;
              *(v321 + 24) = v322;

              sub_100046184(&qword_100219230, &qword_10019E300);
              sub_1000E2568(&v412);
              sub_1000E237C();
              Publishers.Map.tryMap<A>(_:)();

              v323 = sub_1000135D0(&v410);
              v324(v323, v307);
              sub_100006634();
              v325 = swift_allocObject();
              sub_1000E2ACC(v325);
              sub_100046184(&qword_100219238, &qword_10019E308);
              sub_1000E240C(&v415);
              sub_1000E237C();
              Publishers.TryMap.tryMap<A>(_:)();

              sub_100012F20(&v413);
              v326 = sub_10000BA90();
              v327(v326);
              sub_100006634();
              v328 = swift_allocObject();
              sub_1000E2ACC(v328);
              sub_100046184(&qword_100219240, &unk_10019E310);
              sub_1000E2490(&v418);
              sub_1000E237C();
              Publishers.TryMap.tryMap<A>(_:)();

              sub_100012F20(&v416);
              v329 = sub_1000E2BF0();
              v330(v329);
              sub_1000E2388();
              v332 = v331;
              v394 = v332;
              v333 = [v293 *(v302 + 1880)];
              sub_100019024();
              v334 = swift_allocObject();
              v335 = v322;
              v334[2] = v322;
              v334[3] = v332;
              v336 = v383;
              v334[4] = v383;
              v334[5] = v333;
              sub_100006634();
              v337 = swift_allocObject();
              *(v337 + 16) = sub_1000E1FF0;
              *(v337 + 24) = v334;

              v406 = v336;
              sub_1000E2568(&v419);
              sub_1000E237C();
              Publishers.TryMap.tryMap<A>(_:)();

              v338 = *(v395 + 8);
              v338(v318, v335);
              v339 = sub_1000E2828(&v408);
              v385(v339, v410, v408);
              sub_1000E210C(&a13);
              v340 = swift_allocObject();
              *(v340 + 16) = v293;
              sub_10000BECC();
              v387();
              sub_100006634();
              v341 = swift_allocObject();
              *(v341 + 16) = sub_1000E1FD0;
              *(v341 + 24) = v340;
              v342 = v293;
              sub_100046184(&qword_1002192A8, &qword_10019E320);
              Publishers.TryMap.tryMap<A>(_:)();

              v343 = sub_10000BA90();
              (v338)(v343);
              v405 = [v342 *(v302 + 1880)];
              sub_1000E2568(&v425);
              (*(v344 + 16))(v401, v417, v409);
              v345 = (*(v332 + 80) + 16) & ~*(v332 + 80);
              sub_1000E2288();
              v347 = v346 & 0xFFFFFFFFFFFFFFF8;
              v348 = ((v346 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
              v349 = (v348 + 15) & 0xFFFFFFFFFFFFFFF8;
              v350 = swift_allocObject();
              v351 = v332[4];
              sub_1000E25B0();
              v352();
              sub_10000BECC();
              *(v338 + v350) = v353;
              *(v350 + v347) = v389;
              *(v350 + v348) = v388;
              v354 = v394;
              *(v350 + v349) = v394;
              sub_1000E2388();
              *(v350 + ((v349 + 15) & 0xFFFFFFFFFFFFFFF8)) = v355;
              sub_100006634();
              v356 = swift_allocObject();
              *(v356 + 16) = sub_1000E2000;
              *(v356 + 24) = v350;

              v417 = v354;
              v357 = sub_10000AE18();
              sub_100046184(v357, v358);
              sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
              sub_100008A24();
              sub_1000E1CB8(v359, v360, &qword_10019E328);
              sub_1000E21B8(&v426);
              v361 = v399;
              Publisher.catch<A>(_:)();

              sub_100012F20(&v423);
              v362 = sub_10000BE80();
              v363(v362);
              sub_100006634();
              v364 = swift_allocObject();
              sub_1000E2370(v364, &off_1001F9E28);
              sub_100038A30(&v429);
              swift_unknownObjectWeakInit();
              sub_1000059D0();
              v365 = sub_1000E2484(&a9);
              v366 = v397;
              sub_1000E06DC(v365, v397);
              sub_1000E2C84();
              sub_1000E20EC(v367);
              sub_1000E22E8();
              v369 = v368 & 0xFFFFFFFFFFFFFFF8;
              v370 = ((v368 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
              v371 = sub_1000E2AFC();
              *(v371 + 16) = v364;
              sub_1000E0734(v366, v371 + v361);
              *(v371 + v369) = v418;
              v372 = (v371 + v370);
              v373 = v414;
              *v372 = sub_1000E1FD4;
              v372[1] = v373;
              sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
              sub_10000BF8C();

              v374 = v403[1];
              Publisher<>.sink(receiveValue:)();
              sub_1000E227C();

              v375 = sub_1000135D0(&v427);
              v376(v375, v374);
              sub_1000E2BFC();
              sub_100099EF4();

              sub_10008E4C4();
              sub_1000C4490();

              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1000E2388();

              sub_10000AB10();
              sub_10001C254();
              sub_100012F20(&a13);
              v378(v410, v408);
              sub_100005FA4();
              sub_1000E2264();
              sub_10001C254();
              sub_100003A28();
              sub_1000E2194();
              sub_10001C254();
              sub_100012F20(&v406);
              v379(v413, v420);

              v220 = v419;
              goto LABEL_32;
            }

            __break(1u);
            sub_10000435C();
            swift_once();
            sub_100006674(v265, qword_100232B10);
            swift_errorRetain();
            v275 = Logger.logObject.getter();
            v276 = static os_log_type_t.error.getter();

            if (sub_1000E27E0())
            {
              sub_10000F554();
              swift_slowAlloc();
              v277 = sub_1000E290C();
              *v253 = 138412290;
              v278 = _convertErrorToNSError(_:)();
              *(v253 + 4) = v278;
              *v277 = v278;
              sub_1000E20FC();
              _os_log_impl(v279, v280, v281, v282, v283, 0xCu);
              sub_10000B298(v277, &unk_100214C70, &qword_10019B4D0);
              sub_1000037A4();

              sub_1000037A4();
            }

            [v253 queryId];
            sub_1000E24B4();
            swift_errorRetain();
            sub_10001343C(v256);
            sub_1000054F4();

            if (v276)
            {
              v284 = _convertErrorToNSError(_:)();
            }

            else
            {
              v284 = 0;
            }

            v380 = sub_100023F60();
            v381(v380);

            *(v418 + qword_100216C08) = 25;
            sub_10000D684();
            swift_unknownObjectRelease();

            sub_100005FA4();
            sub_1000E2264();
            sub_10001C254();
            sub_100003A28();
            sub_1000E2194();
            sub_10001C254();
            sub_100012F20(&v406);
            v382(v274, v420);
          }

          else
          {
            v225 = Logger.logObject.getter();
            static os_log_type_t.default.getter();
            v226 = sub_1000E2170();
            if (os_log_type_enabled(v226, v227))
            {
              sub_1000E2130();
              v228 = swift_slowAlloc();
              *v228 = 0;
              sub_1000E21AC();
              _os_log_impl(v229, v230, v231, v232, v228, 2u);
              sub_1000037A4();
            }

            objc_allocWithZone(_CPSkipSearchFeedback);
            v233 = sub_1000CEF48(2, 0, 0xE000000000000000);
            sub_1000E2AE4();
            v234 = v150;
            v235 = [v150 queryId];
            v236 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v233];
            [v236 setQueryId:v235];
            v237 = v413;
            sub_100014D74();
            swift_unknownObjectRelease();

            [v234 queryId];
            v238 = sub_10000CA04();
            v239(v238);
            sub_1000E27C8(qword_100216C08);

            swift_unknownObjectRelease();

            sub_100012F20(&v406);
            v240(v237, v420);
          }
        }

        else
        {
          [v150 queryId];
          v223 = sub_10000CA04();
          v224(v223);
          *(v148 + qword_100216C08) = 39;
          sub_10000D684();

          (*(v115 + 8))(v413, v420);
        }
      }

      else
      {
        [v150 queryId];
        v221 = sub_10000CA04();
        v222(v221);
        sub_1000E27C8(qword_100216C08);

        (*(v115 + 8))(v175, v155);
      }
    }

    v220 = v24;
    goto LABEL_32;
  }

  v418 = v148;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100046184(&qword_1002147F0, &qword_1001989D0);
  inited = swift_initStackObject();
  sub_10000AEB0(inited, xmmword_100197F20);
  sub_1000066DC();
  sub_1000E211C(v161, &type metadata for String, v162);
  v163 = Dictionary.init(dictionaryLiteral:)();
  v164 = objc_allocWithZone(NSError);
  v165 = sub_1000385F0();
  v167 = sub_1000B184C(v165, v166, 1, v163);
  v168 = v128;
  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.error.getter();
  v171 = sub_1000E2170();
  if (os_log_type_enabled(v171, v172))
  {
    sub_10000F554();
    v173 = swift_slowAlloc();
    *v173 = 134217984;
    *(v173 + 4) = sub_1000E2988();

    _os_log_impl(&_mh_execute_header, v169, v170, "Bag fetch failed, can't complete zkw query[%llu]", v173, 0xCu);
    sub_1000E20B8();
  }

  else
  {

    v169 = v168;
  }

  v414 = v127;

  v198 = objc_allocWithZone(_CPSkipSearchFeedback);
  v199 = sub_1000CEF48(3, 0, 0xE000000000000000);
  v200 = *(v26 + 64);
  swift_unknownObjectRetain();
  v201 = p_ivar_base_size;
  v202 = sub_1000E2988();
  v203 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v199];
  [v203 setQueryId:v202];
  sub_10000848C();
  v204 = v416;
  sub_10001672C(v205, v206);
  v207 = v204;
  v208 = sub_1000E2528();
  v209 = v420;
  sub_10000C944(v208, v210, v420);
  if (v157)
  {
    parsecdUserAgent.getter();
    sub_10000C944(v207, 1, v209);
    if (!v157)
    {
      sub_10000B298(v207, &qword_100217480, &unk_100198F70);
    }
  }

  else
  {
    (*(v115 + 32))(v415, v207, v209);
  }

  sub_1000059E8();
  sub_100014D74();

  swift_unknownObjectRelease();
  v211 = *(v115 + 8);
  v212 = sub_1000E2318();
  v213(v212);
  [v168 *(v201 + 235)];
  v214 = v167;
  v215 = sub_10001343C(v167);

  if (v215)
  {
    v216 = _convertErrorToNSError(_:)();
  }

  else
  {
    v216 = 0;
  }

  v217 = v419;
  v218 = sub_1000E2080();
  v219(v218);

  *(v418 + qword_100216C08) = 36;
  sub_10000D684();

  v220 = v217;
LABEL_32:
  _Block_release(v220);
  sub_100005460();
}

void sub_1000D8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for Logger();
  v31 = sub_100003650(v30);
  v461 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_10000CEDC();
  sub_100007C68(v35);
  v36 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  sub_10000DE94(v36, &v472);
  v38 = *(v37 + 64);
  sub_100003760();
  __chkstk_darwin(v39);
  sub_10000BBD0();
  sub_100007C68(v40);
  v41 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  sub_10000DE94(v41, &v475);
  v43 = *(v42 + 64);
  sub_100003760();
  __chkstk_darwin(v44);
  sub_10000BBD0();
  sub_100007C68(v45);
  v46 = sub_100046184(&qword_1002191C0, &qword_10019E2C8);
  sub_10000DE94(v46, &v478);
  v48 = *(v47 + 64);
  sub_100003760();
  __chkstk_darwin(v49);
  sub_10000BBD0();
  sub_100007C68(v50);
  v51 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v52 = sub_10000DE94(v51, &v482);
  v457 = v53;
  v55 = *(v54 + 64);
  __chkstk_darwin(v52);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v56);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v57);
  sub_100009934();
  sub_100007C68(v58);
  v59 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  sub_10000DE94(v59, &v487);
  v61 = *(v60 + 64);
  sub_100003760();
  __chkstk_darwin(v62);
  sub_10000BBD0();
  sub_100007C68(v63);
  v64 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  sub_10000DE94(v64, &v493);
  v66 = *(v65 + 64);
  sub_100003760();
  __chkstk_darwin(v67);
  sub_10000BBD0();
  sub_10000549C(v68);
  v69 = type metadata accessor for CancellableStoreKey();
  v70 = sub_1000038C4(v69);
  v72 = *(v71 + 64);
  __chkstk_darwin(v70);
  sub_100009964();
  sub_100007C68(v73);
  sub_1000E2188(&v484);
  __chkstk_darwin(v74);
  sub_100009934();
  sub_100007C68(v75);
  v76 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v76);
  v78 = *(v77 + 64);
  sub_100003760();
  __chkstk_darwin(v79);
  sub_10000BBD0();
  sub_10000549C(v80);
  v81 = type metadata accessor for NetworkFeedbackGenerator();
  v82 = sub_10000DE94(v81, &v509);
  v469 = v83;
  v85 = *(v84 + 64);
  __chkstk_darwin(v82);
  sub_100009964();
  sub_100007C68(v86);
  sub_1000E2188(&v499);
  __chkstk_darwin(v87);
  sub_100009934();
  sub_10000549C(v88);
  v89 = type metadata accessor for URLRequest();
  v90 = sub_10000DE94(v89, &v510);
  v477 = v91;
  v93 = *(v92 + 64);
  __chkstk_darwin(v90);
  sub_100009964();
  sub_1000076F0(v94);
  __chkstk_darwin(v95);
  sub_100009934();
  sub_1000076F0(v96);
  __chkstk_darwin(v97);
  sub_1000E2330();
  __chkstk_darwin(v98);
  sub_100009934();
  sub_1000076F0(v99);
  __chkstk_darwin(v100);
  sub_100009934();
  sub_100007C68(v101);
  sub_1000E2188(&v502);
  __chkstk_darwin(v102);
  sub_100009934();
  v104 = sub_10000549C(v103);
  v105 = type metadata accessor for PegasusContext(v104);
  v106 = sub_100005490(v105);
  v108 = *(v107 + 64);
  __chkstk_darwin(v106);
  sub_100004370();
  v110 = sub_10000549C(v109);
  v463 = type metadata accessor for SessionTokens(v110);
  v111 = sub_1000036B8(v463);
  v113 = *(v112 + 64);
  __chkstk_darwin(v111);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v114);
  sub_100009934();
  sub_100007C68(v115);
  v116 = sub_100046184(&qword_100217480, &unk_100198F70);
  v117 = sub_100005490(v116);
  v119 = *(v118 + 64);
  __chkstk_darwin(v117);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v120);
  sub_100009934();
  sub_10000549C(v121);
  v500 = type metadata accessor for UserAgent();
  v122 = sub_100003650(v500);
  v497 = v123;
  v125 = *(v124 + 64);
  __chkstk_darwin(v122);
  sub_100009964();
  sub_1000076F0(v126);
  __chkstk_darwin(v127);
  sub_100009934();
  sub_100007C68(v128);
  sub_1000E2188(&v497);
  __chkstk_darwin(v129);
  sub_100009934();
  v131 = v130;
  sub_1000058D8();
  v132 = type metadata accessor for Client();
  v133 = sub_100005490(v132);
  v135 = *(v134 + 64);
  __chkstk_darwin(v133);
  sub_100003664();
  sub_1000E2CB4();
  sub_1000068B4();
  v493 = swift_allocObject();
  *(v493 + 16) = v25;
  _Block_copy(v25);
  v495 = v25;
  _Block_copy(v25);
  v136 = [v29 queryString];
  v499 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = v137;

  v503[0] = 0;
  swift_stdlib_random();
  v492 = v503[0];
  v139 = *(v27 + 7);

  sub_1000119E0();
  sub_10001672C(v140, v141);
  [v29 queryId];
  sub_10000899C();
  v142 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v142);
  v494 = sub_1000E223C(v139, 4, v20);
  if (qword_100214070 != -1)
  {
    swift_once();
  }

  v143 = sub_1000E2C90(&v514);
  sub_100006674(v143, v144);
  v145 = v29;

  v491 = v27;
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.default.getter();

  v148 = os_log_type_enabled(v146, v147);
  v475 = v21;
  v496 = v138;
  v498 = v145;
  if (v148)
  {
    v29 = sub_1000E2648();
    v503[0] = sub_100018FF4();
    *v29 = 136446979;
    type metadata accessor for SessionType();
    v487 = v131;
    sub_10000F574();
    sub_10000BA9C(v149, v150);
    v151 = dispatch thunk of CustomStringConvertible.description.getter();
    v153 = sub_100009684(v151, v152, v503);

    *(v29 + 1) = v153;
    *(v29 + 6) = 2050;
    v154 = [v145 queryId];

    *(v29 + 14) = v154;
    *(v29 + 11) = 2050;
    v155 = v497;
    v156 = v500;
    v131 = v487;
    sub_1000E2394();
    *(v29 + 3) = v157;
    *(v29 + 16) = 2085;
    *(v29 + 34) = sub_100009684(v158, v138, v503);
    _os_log_impl(&_mh_execute_header, v146, v147, "Session %{public}s performing lookup query[%{public}llu] requestId:%{public}llu '%{sensitive}s'", v29, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    v159 = v155;
  }

  else
  {

    v159 = v497;
    v156 = v500;
  }

  sub_100012714();
  if ((v160 & 1) == 0)
  {
    v171 = v159;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000126F0();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    sub_10000AEB0(inited, xmmword_100197F20);
    sub_1000066DC();
    sub_1000E211C(v173, &type metadata for String, v174);
    Dictionary.init(dictionaryLiteral:)();
    v175 = objc_allocWithZone(NSError);
    v176 = sub_100017C80();
    v492 = sub_1000E2DE4(v176, v177, v178);
    sub_1000E2224(&a18);

    sub_1000E2BCC();
    v179 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000E2AB4())
    {
      sub_10000F554();
      swift_slowAlloc();
      v180 = sub_10000EC04();
      sub_1000E2BB4(v180);
      *v29 = 136642819;
      v181 = v499;
      v182 = sub_1000E2258();
      *(v29 + 1) = sub_100009684(v182, v183, v184);
      sub_1000E2148();
      _os_log_impl(v185, v186, v187, v188, v189, 0xCu);
      sub_100007378(&UploadStateFileStore.ivar_base_size);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      v181 = v499;
    }

    v213 = objc_allocWithZone(_CPSkipSearchFeedback);
    v214 = sub_1000CEF48(3, v181, v159);
    v215 = *(v27 + 8);
    swift_unknownObjectRetain();
    v216 = v498;
    v217 = [v498 queryId];
    v218 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v214];
    [v218 setQueryId:v217];
    sub_10000848C();
    sub_1000E249C(&a12);
    sub_10001672C(v219, v220);
    sub_10000C944(v181, 1, v156);
    if (v165)
    {
      sub_1000E2568(&a11);
      parsecdUserAgent.getter();
      sub_10000C944(v181, 1, v156);
      if (!v165)
      {
        sub_10000B298(v181, &qword_100217480, &unk_100198F70);
      }
    }

    else
    {
      sub_1000E2888();
      v27 = v489;
      v221 = sub_100004170();
      v222(v221);
    }

    sub_1000E25E0();
    sub_100014D74();

    swift_unknownObjectRelease();
    (*(v171 + 8))(v27, v156);
    v223 = [v216 queryId];
    v224 = v492;
    v225 = v492;
    v226 = sub_10001343C(v224);

    if (v226)
    {
      v227 = _convertErrorToNSError(_:)();
    }

    else
    {
      v227 = 0;
    }

    sub_1000E249C(&a17);
    (*(v228 + 16))(v181, v223, 0, v227);

    sub_1000E27C8(qword_100216C08);
    sub_1000E246C();

    _Block_release(v181);
    v170 = v181;
    goto LABEL_31;
  }

  sub_10000848C();
  sub_1000E220C(&a10);
  sub_10001672C(v161, v162);
  v163 = sub_10000F268();
  sub_10000C944(v163, v164, v156);
  if (v165)
  {
    sub_1000E2194();

    sub_10000B298(&type metadata for Any, &qword_100217480, &unk_100198F70);
    [v498 queryId];
    sub_1000E2CCC();
    v167 = *(v166 - 256);
    v168 = sub_1000055F0();
    v169(v168);
    sub_1000E24C0(qword_100216C08);
    sub_1000E246C();

LABEL_10:

LABEL_11:
    _Block_release(v167);
    v170 = v167;
LABEL_31:
    _Block_release(v170);
    sub_100005460();
    return;
  }

  v190 = *(v159 + 32);
  v190(v131, &type metadata for Any, v156);
  sub_100006AE8();
  v193 = sub_10000BB00(v191, v192);
  if (!v193)
  {
    sub_1000E2194();

    [v498 queryId];
    sub_1000E2CCC();
    v230 = *(v229 - 256);
    v231 = sub_10000F250();
    v232(v231);
    sub_1000E24C0(qword_100216C08);

    v233 = *(v159 + 8);
    v234 = sub_1000E2840();
    v235(v234);
    sub_1000E246C();

    _Block_release(v230);
    v170 = v230;
    goto LABEL_31;
  }

  v194 = v193;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000E2194();

    [v498 queryId];
    sub_1000E2CCC();
    v167 = *(v236 - 256);
    v237 = sub_1000055F0();
    v238(v237);
    sub_1000E24C0(qword_100216C08);

    (*(v159 + 8))(v131, v500);
    sub_1000E246C();
    goto LABEL_10;
  }

  v196 = Strong;
  v197 = *(v27 + 3);
  if (([v194 isEnabled] & 1) == 0)
  {
    v239 = v194;
    v240 = v131;
    v241 = v159;
    sub_1000E2BCC();
    v242 = Logger.logObject.getter();
    v243 = static os_log_type_t.default.getter();
    if (sub_100007BE8(v243))
    {
      sub_1000E2130();
      v244 = swift_slowAlloc();
      sub_10000594C(v244);
      sub_10001BD10();
      _os_log_impl(v245, v246, v247, v248, v249, 2u);
      sub_1000037A4();
    }

    objc_allocWithZone(_CPSkipSearchFeedback);
    v250 = sub_1000CEF48(2, v499, v496);
    sub_1000E2E64();
    sub_1000E2580();
    v251 = v498;
    v253 = [v498 v252];
    v254 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v250];
    [v254 setQueryId:v253];
    sub_100014D74();
    swift_unknownObjectRelease();

    [v251 *(v27 + 235)];
    sub_1000E2CCC();
    sub_100014C60(v255);
    sub_100004384();
    v256();
    sub_1000E24C0(qword_100216C08);

    swift_unknownObjectRelease();

    (*(v241 + 8))(v240, v500);
    goto LABEL_61;
  }

  v504[0] = &unk_1001F8E80;
  v504[1] = sub_1000772F0();
  LOBYTE(v503[0]) = 3;
  v198 = isFeatureEnabled(_:)();
  sub_100007378(v503);
  if (v198)
  {
    v491 = v197;
    v490 = v196;
    sub_1000E2194();

    if (qword_1002140E0 != -1)
    {
      sub_10000435C();
      v199 = swift_once();
    }

    sub_10000BFB8(v199, qword_100232B10);
    v200 = v498;
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.debug.getter();
    v203 = sub_100007BE8(v202);
    v489 = v194;
    if (v203)
    {
      v204 = v159;
      v205 = sub_10001BCD4();
      *v205 = 134349312;
      *(v205 + 4) = [v200 queryId];

      *(v205 + 12) = 2050;
      sub_1000E2394();
      *(v205 + 14) = v206;
      sub_1000E20FC();
      _os_log_impl(v207, v208, v209, v210, v211, 0x16u);
      v212 = v204;
      sub_1000037A4();
    }

    else
    {
      v212 = v159;

      v201 = v200;
    }

    sub_1000E2E64();
    sub_1000E21B8(&v513);
    sub_1000E75A0();
    swift_unknownObjectRelease();
    sub_100003A28();
    sub_10001C254();
    sub_1000068B4();
    v261 = swift_allocObject();
    v254 = v495;
    *(v261 + 16) = v495;
    v262 = *(v27 + OBJC_IVAR____TtC7parsecd11ClientState_lookupSearchProxy);
    _Block_copy(v254);
    _Block_copy(v254);
    if (v262)
    {

      v263 = [v200 queryString];
      v496 = v261;
      v264 = v263;
      v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v498 = v266;
      v499 = v265;

      sub_1000068B4();
      v267 = swift_allocObject();
      swift_weakInit();
      v488 = v262;
      v268 = v500;
      (*(v212 + 16))(v462, v131);
      v454 = v27;
      v269 = (*(v212 + 80) + 48) & ~*(v212 + 80);
      v270 = sub_1000E29BC();
      v272 = v498;
      v271 = v499;
      v270[2] = v200;
      v270[3] = v271;
      v270[4] = v272;
      v270[5] = v267;
      v190(v270 + v269, v462, v268);
      v273 = v200;
      v487 = v131;
      v274 = v273;

      sub_1000E23A0(&v507);
      NetworkFeedbackGenerator.init(isBodyDataRedacted:consumer:)();
      v275 = *(v454 + 8);
      swift_unknownObjectRetain();
      sub_1000E2164(&v513);
      sub_1000E75A0();
      swift_unknownObjectRelease();
      sub_100006AE8();
      v278 = sub_10000BB00(v276, v277);
      sub_1000E2CF8();
      v280 = *&v200[*(v279 + 24)];
      sub_1000E2224(&a10);
      sub_1000C5F54();

      sub_10000BA48(&v508);
      static TaskPriority.userInitiated.getter();
      type metadata accessor for TaskPriority();
      sub_10000BB90();
      sub_1000051C0(v281, v282, v283, v284);
      sub_1000E21B8(&v501);
      v286 = v480;
      (*(v285 + 16))(v467, v462, v480);
      v287 = (*(v268 + 80) + 88) & ~*(v268 + 80);
      v288 = (v464 + v287 + 7) & 0xFFFFFFFFFFFFFFF8;
      v289 = sub_1000E2AFC();
      *(v289 + 16) = 0;
      *(v289 + 24) = 0;
      sub_1000E251C();
      v290 = v491;
      v291[4] = v462;
      v291[5] = v290;
      v292 = v499;
      v291[6] = v274;
      v291[7] = v292;
      sub_1000E2394();
      *(v293 + 8) = v295;
      *(v293 + 9) = v294;
      *(v293 + 10) = v200;
      (*(v268 + 32))(&v293[v287], v467, v286);
      *(v289 + v288) = v494;
      v296 = (v289 + ((v288 + 15) & 0xFFFFFFFFFFFFFFF8));
      v297 = v496;
      *v296 = sub_1000E1FD4;
      v296[1] = v297;
      v298 = v274;
      swift_unknownObjectRetain();

      _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      sub_10000B9B8(&v508);
      sub_1000FE178(v299, v300, v301, v302, v289);

      v254 = v495;

      v303 = v286;
      v212 = v497;
      sub_10000B298(v303, &unk_10021A820, &qword_1001992D0);
      (*(v268 + 8))(v478, v480);
      sub_100003A28();
      sub_10001C254();
    }

    else
    {
      [v200 queryId];
      v333 = v254[2];
      sub_100004384();
      v334();
      sub_1000E2A24(qword_100216C08);
      sub_1000E251C();
    }

    _Block_release(v254);
    sub_10008E4C4();
    sub_1000C4490();

    swift_unknownObjectRelease();
    sub_10000BECC();

    v336 = *(v212 + 8);
    v337 = sub_10000AB34();
    v338(v337);
LABEL_61:
    sub_1000E246C();

    _Block_release(v254);
    v170 = v254;
    goto LABEL_31;
  }

  v487 = v131;
  sub_1000E2E64();
  sub_1000E220C(&v512);
  sub_1000E75A0();
  swift_unknownObjectRelease();
  sub_1000E249C(&v511);
  sub_100017190(v257);
  type metadata accessor for PARNetworkRequestFactory();
  v258 = sub_1000E2E18();
  v259 = swift_unknownObjectRetain();
  v260 = sub_100017594(v259, v258);
  sub_1000E240C(&v505);
  sub_100090884();
  v489 = v194;

  sub_1000E2490(&v506);
  v305 = *(v304 + 32);
  v306 = v482;
  v307 = v481;
  v480 = v304 + 32;
  v479 = v305;
  v308 = (v305)(v482, v131, v481);
  if (qword_1002140E0 != -1)
  {
    sub_10000435C();
    v308 = swift_once();
  }

  sub_10000BFB8(v308, qword_100232B10);
  v309 = *(v159 + 48);
  v310 = sub_1000E2448(&v495);
  (v309)(v310, v306, v307);
  v311 = sub_1000E2C78();
  v485 = v309;
  (v309)(v311, v306, v307);
  v312 = v498;
  v313 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000098B0();
  v315 = os_log_type_enabled(v313, v314);
  v455 = v27;
  v490 = v196;
  v488 = v159 + 48;
  if (v315)
  {
    LODWORD(v498) = v260;
    sub_1000E2648();
    v478 = sub_1000E23D0();
    v503[0] = v478;
    *v159 = 134349826;
    *(v159 + 4) = [v312 queryId];

    *(v159 + 12) = 2080;
    v316 = URLRequest.debugDescription.getter();
    v317 = *(v159 + 40);
    v317(v194, v307);
    v318 = sub_1000E263C();
    sub_100009684(v318, v319, v320);
    sub_1000189B0();

    *(v159 + 14) = v316;
    *(v159 + 22) = 2080;
    v321 = URLRequest.allHTTPHeaderFields.getter();
    if (!v321)
    {
      v321 = Dictionary.init(dictionaryLiteral:)();
    }

    v260 = v321;
    v196 = Dictionary.description.getter();

    v322 = sub_1000E2C78();
    v317(v322, v481);
    v323 = sub_1000E25E0();
    sub_100009684(v323, v324, v325);
    sub_100037ED8();

    sub_1000E22C8();
    v326 = v492;
    *(v159 + 34) = v492;
    sub_1000E2660();
    _os_log_impl(v327, v328, v329, v330, v331, 0x2Au);
    sub_1000E2218(&v507);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    sub_1000E251C();
    p_ivar_base_size = (&UploadStateFileStore + 8);
  }

  else
  {

    v313 = *(v159 + 40);
    v352 = sub_1000E2C78();
    (v313)(v352, v307);
    (v313)(v194, v307);
    p_ivar_base_size = &UploadStateFileStore.ivar_base_size;
    v326 = v492;
  }

  sub_1000C4190();
  v353 = sub_1000E24A8();
  sub_1000CFBD0(v353, v496, v260);
  [v260 setTriggerEvent:11];
  [v260 setEndpoint:6];
  v354 = [v312 lookupSelectionType];
  if (v354 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    sub_10000435C();
    v339 = v159;
    v452 = swift_once();
    sub_10000BFB8(v452, qword_100232B10);
    swift_errorRetain();
    v340 = Logger.logObject.getter();
    v341 = static os_log_type_t.error.getter();

    if (sub_1000E27E0())
    {
      sub_10000F554();
      swift_slowAlloc();
      v342 = v326;
      v343 = p_ivar_base_size;
      v344 = sub_1000E290C();
      *v159 = 138412290;
      v345 = _convertErrorToNSError(_:)();
      *(v159 + 4) = v345;
      *v344 = v345;
      sub_1000E20FC();
      _os_log_impl(v346, v347, v348, v349, v350, 0xCu);
      sub_10000B298(v344, &unk_100214C70, &qword_10019B4D0);
      p_ivar_base_size = v343;
      v326 = v342;
      sub_1000037A4();

      sub_1000037A4();
    }

    [v498 queryId];
    sub_1000E24B4();
    swift_errorRetain();
    sub_10001343C(v313);
    sub_1000054F4();

    if (v341)
    {
      v351 = _convertErrorToNSError(_:)();
    }

    else
    {
      v351 = 0;
    }

    v450 = v495;
    sub_1000E2230();
    sub_1000E2158();
    v451();

    sub_1000E2A24(qword_100216C08);
    swift_unknownObjectRelease();

    sub_100005FA4();
    sub_1000E217C();
    sub_10001C254();
    sub_100003A28();
    sub_10001C254();
    (*(v339 + 8))(v487, v326);
    sub_1000E246C();

    _Block_release(v450);
    v170 = v450;
    goto LABEL_31;
  }

  if (v354 > 0x7FFFFFFF)
  {
    goto LABEL_65;
  }

  [v260 setLookupSelectionType:v354];
  v355 = *(v27 + 8);
  swift_unknownObjectRetain();
  v356 = v260;
  v357 = [v312 p_ivar_base_size[235]];
  v358 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v356];
  v478 = v356;

  [v358 setQueryId:v357];
  sub_100014D74();
  swift_unknownObjectRelease();

  sub_1000E2E64();
  [v312 p_ivar_base_size[235]];
  sub_10000B9B8(&a13);
  sub_1000E6E68();
  swift_unknownObjectRelease();
  v498 = v312;
  sub_1000E2224(&a18);

  v359 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (sub_1000E27E0())
  {
    v360 = sub_10001BCD4();
    v361 = sub_100007B80();
    sub_1000E2BB4(v361);
    *v360 = 134218242;
    v362 = v498;
    *(v360 + 4) = [v498 p_ivar_base_size[235]];

    *(v360 + 12) = 2080;
    *(v360 + 14) = sub_100009684(v499, v358, v503);
    sub_10001BD10();
    _os_log_impl(v363, v364, v365, v366, v367, 0x16u);
    sub_100007378(v196);
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {
  }

  v368 = v474;
  v369 = p_ivar_base_size;
  v370 = v498;
  v371 = sub_1000C7160();
  UUID.init()();
  v372 = v196;
  sub_10008596C();
  v373 = sub_1000054F4();
  v374 = sub_1000E294C(v373);
  v376 = v375;

  v377 = v374;
  sub_1000E2D24();

  swift_unknownObjectRetain();
  v468 = v368;
  sub_1000E2C08();
  sub_1000CFDD4(v378, v379, v380, v381, v494);
  v475 = v371;
  swift_unknownObjectRelease();
  v503[0] = v376;
  v382 = [v370 v369[235]];
  sub_100006634();
  v383 = swift_allocObject();
  *(v383 + 16) = v382;
  *(v383 + 24) = v326;
  sub_100006634();
  v384 = swift_allocObject();
  *(v384 + 16) = sub_1000E201C;
  *(v384 + 24) = v383;
  v385 = sub_10000DC5C();
  sub_100046184(v385, v386);
  sub_100046184(&qword_100219220, &qword_10019E2F8);
  sub_10000804C();
  sub_1000E1CB8(v387, v388, &qword_10019E2F0);
  sub_1000E249C(&v470);
  sub_1000E2E4C();
  v469 = v376;

  sub_100006634();
  v389 = swift_allocObject();
  *(v389 + 16) = sub_1000E1FA0;
  *(v389 + 24) = v455;

  sub_100046184(&qword_100219230, &qword_10019E300);
  sub_1000E21B8(&v473);
  sub_1000E237C();
  Publishers.Map.tryMap<A>(_:)();

  sub_100012F20(&v471);
  v390 = sub_1000E2258();
  v391(v390);
  sub_100006634();
  v392 = swift_allocObject();
  *(v392 + 16) = sub_1000E1FB8;
  *(v392 + 24) = v455;

  sub_100046184(&qword_100219238, &qword_10019E308);
  sub_1000E249C(&v476);
  sub_1000E237C();
  Publishers.TryMap.tryMap<A>(_:)();

  v393 = sub_1000135D0(&v474);
  v394(v393, v371);
  sub_100006634();
  v395 = swift_allocObject();
  *(v395 + 16) = sub_1000E1FD8;
  *(v395 + 24) = v455;

  v476 = sub_100046184(&qword_100219240, &unk_10019E310);
  Publishers.TryMap.tryMap<A>(_:)();

  sub_100012F20(&v477);
  v396 = sub_1000E2418();
  v397(v396);
  sub_1000E2448(&v469);
  v398 = v481;
  sub_1000E2BC0();
  v485();
  v465 = sub_1000CFB78(v478, &selRef_uuid);
  if (v399)
  {
    v400 = v399;
    v401 = sub_1000E2224(v503);
    v402 = v479;
    (v479)(v401, v456, v398);
    v403 = v402;
    v404 = *(v477 + 80);
    v405 = (v404 + 32) & ~v404;
    sub_1000E2894();
    v407 = (v406 + v405 + 7) & 0xFFFFFFFFFFFFFFF8;
    v408 = swift_allocObject();
    v409 = v398;
    v410 = v408;
    v411 = v496;
    *(v408 + 16) = v499;
    *(v408 + 24) = v411;
    (v403)(v408 + v405, v371, v409);
    v412 = (v410 + v407);
    *v412 = v465;
    v412[1] = v400;
    *(v410 + ((v407 + 23) & 0xFFFFFFFFFFFFFFF8)) = v455;
    sub_100006634();
    v413 = swift_allocObject();
    *(v413 + 16) = sub_1000E1FF4;
    *(v413 + 24) = v410;

    sub_1000E220C(&v479);
    Publishers.TryMap.tryMap<A>(_:)();

    v466 = *(v457 + 8);
    v414 = sub_10000DC5C();
    v415(v414);
    v416 = v478;
    v496 = v416;
    v417 = v498;
    v418 = [v498 queryId];
    sub_100019024();
    v419 = swift_allocObject();
    v419[2] = v455;
    v419[3] = v416;
    v419[4] = v468;
    v419[5] = v418;
    sub_100006634();
    v420 = swift_allocObject();
    *(v420 + 16) = sub_1000E1FF0;
    *(v420 + 24) = v419;

    v499 = v468;
    sub_1000E21B8(&v480);
    v421 = v407;
    Publishers.TryMap.tryMap<A>(_:)();

    v466(v407);
    sub_1000E2BC0();
    v485();
    v422 = (v404 + 24) & ~v404;
    sub_1000E2894();
    v423 = swift_allocObject();
    sub_1000E2D10(v423);
    sub_1000E25A4();
    v479();
    sub_100006634();
    v424 = swift_allocObject();
    *(v424 + 16) = sub_1000E1FD0;
    *(v424 + 24) = v421;
    v425 = v417;
    sub_100046184(&qword_1002192A8, &qword_10019E320);
    Publishers.TryMap.tryMap<A>(_:)();

    v466(v419);
    v498 = [v425 queryId];
    sub_1000E2270();
    v426 = v486;
    v427(v460, v491, v486);
    v428 = (*(v461 + 80) + 16) & ~*(v461 + 80);
    sub_1000E2540();
    sub_10000CCCC();
    v429 = swift_allocObject();
    (*(v461 + 32))(v429 + v428, v460, v426);
    *(v429 + v422) = v498;
    sub_1000E2394();
    *(v429 + v424) = v430;
    *(v429 + v458) = v455;
    sub_1000E2C34();
    *(v466 + v429) = v460;
    *(v429 + v404) = v499;
    sub_100006634();
    v431 = swift_allocObject();
    *(v431 + 16) = sub_1000E2000;
    *(v431 + 24) = v429;

    v498 = v460;
    v432 = sub_1000E263C();
    sub_100046184(v432, v433);
    sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
    sub_100008A24();
    sub_1000E1CB8(v434, v435, &qword_10019E328);
    sub_1000E21B8(&v491);
    sub_1000E22B8();
    Publisher.catch<A>(_:)();

    sub_100012F20(&v486);
    v436 = sub_10000672C();
    v437(v436);
    sub_100006634();
    v438 = swift_allocObject();
    sub_1000E2370(v438, &off_1001F9E28);
    sub_100038A30(&v494);
    swift_unknownObjectWeakInit();
    sub_1000059D0();
    v439 = sub_1000E2484(v504);
    sub_1000E06DC(v439, v459);
    sub_1000E210C(&v483);
    v442 = v441 & ~v440;
    sub_1000E2540();
    v443 = sub_1000E2AFC();
    *(v443 + 16) = v438;
    sub_1000E0734(v459, v443 + v442);
    *(v443 + v422) = v494;
    v444 = (v443 + v431);
    v445 = v493;
    *v444 = sub_1000E1FD4;
    v444[1] = v445;
    sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
    sub_10000BF8C();

    sub_10000B9B8(&v493);
    Publisher<>.sink(receiveValue:)();
    sub_1000E227C();

    v446 = sub_1000135D0(&v492);
    v447(v446, v422);
    sub_1000E2BFC();
    sub_100099EF4();

    sub_10008E4C4();
    sub_1000C4490();

    sub_1000E2C78();
    swift_unknownObjectRelease();

    sub_10000F230();
    swift_unknownObjectRelease();

    sub_10000BECC();

    sub_10000AB10();
    sub_10001C254();
    sub_100012F20(&v506);
    v449(v482, v481);
    sub_100005FA4();
    sub_1000E217C();
    sub_10001C254();
    sub_100003A28();
    sub_10001C254();
    (*(v497 + 8))(v487, v500);

    v167 = v495;
    goto LABEL_11;
  }

  v453 = sub_1000E230C(&a17);
  _Block_release(v453);
  _Block_release(v368);
  __break(1u);
}

void sub_1000DB07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for Logger();
  v30 = sub_100003650(v29);
  v327 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_10000CEDC();
  sub_100007C68(v34);
  v35 = sub_100046184(&qword_1002191B0, &qword_10019E2B8);
  sub_10000DE94(v35, &v338);
  v37 = *(v36 + 64);
  sub_100003760();
  __chkstk_darwin(v38);
  sub_10000BBD0();
  sub_100007C68(v39);
  v40 = sub_100046184(&qword_1002191B8, &qword_10019E2C0);
  sub_10000DE94(v40, &v341);
  v42 = *(v41 + 64);
  sub_100003760();
  __chkstk_darwin(v43);
  sub_10000BBD0();
  sub_100007C68(v44);
  v45 = sub_100046184(&qword_1002191C8, &qword_10019E2D0);
  v46 = sub_10000DE94(v45, &v345);
  v323 = v47;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v50);
  sub_100009934();
  sub_100007C68(v51);
  v52 = sub_100046184(&qword_1002191D0, &qword_10019E2D8);
  sub_10000DE94(v52, &v351);
  v54 = *(v53 + 64);
  sub_100003760();
  __chkstk_darwin(v55);
  sub_10000BBD0();
  sub_100007C68(v56);
  v57 = sub_100046184(&unk_1002191D8, &qword_10019E2E0);
  sub_10000DE94(v57, &v354);
  v59 = *(v58 + 64);
  sub_100003760();
  __chkstk_darwin(v60);
  sub_10000BBD0();
  sub_10000549C(v61);
  v62 = type metadata accessor for CancellableStoreKey();
  v63 = sub_1000038C4(v62);
  v324 = v64;
  v66 = *(v65 + 64);
  __chkstk_darwin(v63);
  sub_100009964();
  sub_100007C68(v67);
  sub_1000E2188(&v347);
  __chkstk_darwin(v68);
  sub_100009934();
  sub_10000549C(v69);
  v70 = type metadata accessor for URLRequest();
  v71 = sub_10000DE94(v70, &v359);
  v334 = v72;
  v74 = *(v73 + 64);
  __chkstk_darwin(v71);
  sub_100009964();
  sub_1000076F0(v75);
  __chkstk_darwin(v76);
  sub_100009934();
  sub_1000076F0(v77);
  __chkstk_darwin(v78);
  sub_100009934();
  sub_1000076F0(v79);
  __chkstk_darwin(v80);
  sub_100009934();
  sub_100007C68(v81);
  sub_1000E2188(&v335);
  __chkstk_darwin(v82);
  sub_100009934();
  v84 = sub_10000549C(v83);
  v85 = type metadata accessor for PegasusContext(v84);
  v86 = sub_100005490(v85);
  v88 = *(v87 + 64);
  __chkstk_darwin(v86);
  sub_100003664();
  sub_1000068C0();
  v89 = type metadata accessor for SessionTokens(0);
  v90 = sub_100005490(v89);
  v92 = *(v91 + 64);
  __chkstk_darwin(v90);
  sub_100004370();
  sub_100007C68(v93);
  v94 = sub_100046184(&qword_100217480, &unk_100198F70);
  v95 = sub_100005490(v94);
  v97 = *(v96 + 64);
  __chkstk_darwin(v95);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v98);
  sub_100009934();
  sub_10000549C(v99);
  v100 = type metadata accessor for UserAgent();
  v101 = sub_100003650(v100);
  v347 = v102;
  v348 = v101;
  v104 = *(v103 + 64);
  __chkstk_darwin(v101);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v105);
  sub_100009934();
  v107 = v106;
  sub_1000058D8();
  v108 = type metadata accessor for Client();
  v109 = sub_100005490(v108);
  v111 = *(v110 + 64);
  __chkstk_darwin(v109);
  sub_100003664();
  v114 = v113 - v112;
  sub_1000068B4();
  v342 = swift_allocObject();
  *(v342 + 16) = v24;
  _Block_copy(v24);
  v115 = [v28 flightQuery];
  v346 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;

  sub_1000E29D8();
  v345 = v359;
  v118 = *(v26 + 56);

  sub_1000119E0();
  sub_10001672C(v119, v120);
  [v28 queryId];
  sub_10000899C();
  v121 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v121);
  v343 = sub_1000E223C(v118, 5, v114);
  if (qword_100214068 != -1)
  {
    swift_once();
  }

  v122 = sub_1000E2C90(&v360);
  sub_100006674(v122, v123);
  v124 = v28;

  v339 = v26;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();

  v127 = os_log_type_enabled(v125, v126);
  v344 = v24;
  v341 = v117;
  v349 = v124;
  if (v127)
  {
    v128 = sub_1000E2648();
    v333 = v20;
    v336 = v107;
    v129 = v128;
    v130 = v124;
    v359 = sub_100018FF4();
    *v129 = 136446979;
    v20 = &type metadata for Any;
    type metadata accessor for SessionType();
    sub_10000F574();
    sub_10000BA9C(v131, v132);
    v133 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = sub_100009684(v133, v134, &v359);

    *(v129 + 4) = v135;
    *(v129 + 12) = 2048;
    v136 = [v130 queryId];

    *(v129 + 14) = v136;
    *(v129 + 22) = 2050;
    v137 = v346;
    *(v129 + 24) = v345;
    *(v129 + 32) = 2085;
    *(v129 + 34) = sub_100009684(v137, v117, &v359);
    _os_log_impl(&_mh_execute_header, v125, v126, "Session %{public}s performing flight query[%llu] requestId: %{public}llu '%{sensitive}s'", v129, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    v24 = v344;
    v107 = v336;
    sub_1000E2CD8();
    sub_1000037A4();
  }

  else
  {
  }

  v138 = v347;
  v139 = v348;
  sub_100012714();
  sub_1000E258C();
  if (v140)
  {
    sub_10000848C();
    sub_10001672C(v141, v142);
    v143 = sub_1000E25C8();
    sub_10000C944(v143, v144, v139);
    if (v145)
    {
      sub_1000E2194();

      sub_10000B298(v125, &qword_100217480, &unk_100198F70);
      [v349 queryId];
      v146 = sub_10000CA04();
      v147(v146);
      sub_1000E28D0(qword_100216C08);
    }

    else
    {
      v166 = *(v138 + 32);
      v167 = sub_100006B0C();
      v168(v167);
      sub_100006AE8();
      v171 = sub_10000BB00(v169, v170);
      if (v171)
      {
        v172 = v171;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v174 = Strong;
          v175 = [v172 isEnabled];
          v338 = v172;
          v340 = v174;
          if (v175)
          {
            v336 = v107;
            v176 = *(v26 + 64);
            swift_unknownObjectRetain();
            sub_1000E21B8(&a12);
            sub_1000E75A0();
            swift_unknownObjectRelease();
            sub_100017190(v20);
            type metadata accessor for PARNetworkRequestFactory();
            sub_1000E2E18();
            sub_100006B00();
            v177 = swift_unknownObjectRetain();
            sub_100017594(v177, v174);
            sub_10000BA48(&v358);
            v178 = v349;
            sub_100091304();
            v321 = v26;
            v333 = v20;

            sub_1000E2164(&a10);
            v220 = *(v219 + 32);
            v221 = sub_100005854();
            v222 = v331;
            v330 = v223;
            v320 = v224;
            v224(v221);
            v225 = sub_1000C7160();
            v337 = v225;
            if (qword_1002140E0 != -1)
            {
              sub_10000435C();
              v225 = swift_once();
            }

            sub_10000BFB8(v225, qword_100232B10);
            v226 = v20[2];
            sub_1000E2574(&v334);
            sub_10000BA3C();
            v226();
            sub_10000BA3C();
            v319 = v226;
            v226();
            v227 = v178;
            v228 = Logger.logObject.getter();
            static os_log_type_t.debug.getter();
            sub_1000098B0();
            if (os_log_type_enabled(v228, v229))
            {
              LODWORD(v349) = v178;
              v230 = sub_1000E2648();
              v231 = sub_100018FF4();
              v359 = v231;
              *v230 = 134349826;
              *(v230 + 4) = [v227 queryId];

              *(v230 + 12) = 2080;
              v232 = URLRequest.description.getter();
              v233 = v222;
              v234 = *(v334 + 8);
              v234(v139, v233);
              v235 = sub_10000AE18();
              sub_100009684(v235, v236, v237);
              sub_1000E24A8();

              *(v230 + 14) = v232;
              *(v230 + 22) = 2080;
              if (!URLRequest.allHTTPHeaderFields.getter())
              {
                Dictionary.init(dictionaryLiteral:)();
              }

              Dictionary.description.getter();

              v234(v328, v331);
              v238 = sub_1000E2BFC();
              v241 = sub_100009684(v238, v239, v240);

              *(v230 + 24) = v241;
              *(v230 + 32) = 2050;
              *(v230 + 34) = v345;
              _os_log_impl(&_mh_execute_header, v228, v349, "performing query %{public}llu request %s header: %s requestId: %{public}llu", v230, 0x2Au);
              sub_1000E2218(&v329);
              swift_arrayDestroy();
              sub_1000037A4();

              sub_1000E20B8();
            }

            else
            {

              v242 = *(v334 + 8);
              v242(v328, v331);
              v243 = sub_100037EB4();
              (v242)(v243);
            }

            v244 = sub_1000C4190();
            v245 = v341;
            sub_1000CFBD0(v346, v341, v244);
            [v244 setTriggerEvent:20];
            [v244 setEndpoint:13];
            v246 = *(v321 + 64);
            swift_unknownObjectRetain();
            v247 = v244;
            v248 = sub_1000E2988();
            v249 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v247];
            v349 = v247;

            [v249 setQueryId:v248];
            sub_1000059E8();
            sub_100014D74();
            swift_unknownObjectRelease();

            v250 = *(v321 + 64);
            swift_unknownObjectRetain();
            sub_1000E2988();
            sub_1000E2C6C(&a16);
            sub_1000E6E68();
            swift_unknownObjectRelease();
            v251 = v227;

            v252 = Logger.logObject.getter();
            v253 = static os_log_type_t.debug.getter();

            if (sub_1000E27E0())
            {
              v254 = sub_10001BCD4();
              v255 = sub_100007B80();
              v359 = v255;
              *v254 = 134218242;
              *(v254 + 4) = [v251 queryId];

              *(v254 + 12) = 2080;
              v256 = sub_100009684(v346, v245, &v359);

              *(v254 + 14) = v256;
              sub_1000E2510();
              _os_log_impl(&_mh_execute_header, v252, v253, "Dispatching network request for (id, query): (%llu, %s)", v254, 0x16u);
              sub_100007378(v255);
              sub_1000037A4();

              sub_1000037A4();
            }

            else
            {

              sub_1000E2510();
            }

            UUID.init()();
            v257 = v340;
            sub_10008596C();
            v258 = sub_100038F24();
            v259 = sub_1000E294C(v258);
            v261 = v260;

            v262 = v259;
            sub_1000E2534();

            sub_1000E2218(&a14);
            swift_unknownObjectRetain();
            sub_10000BB84();
            sub_1000E2C08();
            sub_1000CFDD4(v263, v264, v265, v266, v343);
            swift_unknownObjectRelease();
            v359 = v261;
            v346 = v261;
            v267 = [v251 queryId];
            sub_100006634();
            v268 = swift_allocObject();
            v269 = v345;
            *(v268 + 16) = v267;
            *(v268 + 24) = v269;
            sub_100006634();
            v270 = swift_allocObject();
            *(v270 + 16) = sub_1000E201C;
            *(v270 + 24) = v268;
            v271 = sub_10000AE18();
            sub_100046184(v271, v272);
            v273 = sub_100046184(&qword_100219220, &qword_10019E2F8);
            sub_10000804C();
            sub_1000E1CB8(v274, v275, &qword_10019E2F0);
            sub_1000E23A0(&v336);
            sub_1000E2E4C();

            sub_100006634();
            v276 = swift_allocObject();
            *(v276 + 16) = sub_1000E1FA0;
            *(v276 + 24) = v321;

            sub_100046184(&qword_100219230, &qword_10019E300);
            sub_1000E240C(&v339);
            Publishers.Map.tryMap<A>(_:)();

            sub_100012F20(&v337);
            v277 = sub_1000E25D4();
            v278(v277);
            sub_100006634();
            v279 = swift_allocObject();
            *(v279 + 16) = sub_1000E1594;
            *(v279 + 24) = v321;

            sub_100046184(&qword_100219240, &unk_10019E310);
            sub_1000E2490(&v342);
            sub_1000E22B8();
            Publishers.TryMap.tryMap<A>(_:)();

            sub_100012F20(&v340);
            v280 = sub_1000E2840();
            v281(v280);
            v282 = v349;
            v341 = v282;
            v283 = sub_1000E2224(&v356);
            v285 = [v283 v284];
            sub_100019024();
            v286 = swift_allocObject();
            v286[2] = v321;
            v286[3] = v282;
            v286[4] = v259;
            v286[5] = v285;
            sub_100006634();
            v287 = swift_allocObject();
            *(v287 + 16) = sub_1000E1FF0;
            *(v287 + 24) = v286;

            v349 = v259;
            sub_1000E23A0(&v343);
            sub_1000E22B8();
            Publishers.TryMap.tryMap<A>(_:)();

            v288 = *(v323 + 8);
            v288(v273, v282);
            v289 = v331;
            (v319)(v322, v335, v331);
            sub_1000E2BC0();
            sub_1000E20EC(v290);
            v291 = sub_1000E29BC();
            v292 = sub_1000E2D10(v291);
            v320(v292);
            sub_100006634();
            v293 = swift_allocObject();
            *(v293 + 16) = sub_1000E1FD0;
            *(v293 + 24) = v273;
            v294 = &UploadStateFileStore.ivar_base_size;
            sub_100046184(&qword_1002192A8, &qword_10019E320);
            Publishers.TryMap.tryMap<A>(_:)();

            v295 = sub_1000E25D4();
            (v288)(v295);
            v330 = [(uint32_t *)v294 queryId];
            sub_1000E2270();
            v296 = v332;
            v297(v326, v339, v332);
            v298 = (*(v327 + 80) + 16) & ~*(v327 + 80);
            sub_1000E2288();
            sub_10000CCCC();
            v299 = swift_allocObject();
            (*(v327 + 32))(v299 + v298, v326, v296);
            *(v299 + v293) = v330;
            *(v288 + v299) = v345;
            *(v299 + v289) = v321;
            sub_1000E2C34();
            *(v299 + v273) = v326;
            *(v299 + ((v273 + 15) & 0xFFFFFFFFFFFFFFF8)) = v349;
            sub_100006634();
            v300 = swift_allocObject();
            *(v300 + 16) = sub_1000E2000;
            *(v300 + 24) = v299;

            v345 = v326;
            v301 = sub_1000E263C();
            sub_100046184(v301, v302);
            sub_10000E184(&qword_1002192B8, &qword_1002191D0, &qword_10019E2D8);
            sub_100008A24();
            sub_1000E1CB8(v303, v304, &qword_10019E328);
            sub_1000E2490(&v352);
            sub_1000E22B8();
            Publisher.catch<A>(_:)();

            sub_100012F20(&v350);
            v305 = sub_10000672C();
            v306(v305);
            sub_100006634();
            v307 = swift_allocObject();
            sub_1000E2370(v307, &off_1001F9E28);
            sub_100038A30(&v355);
            swift_unknownObjectWeakInit();
            sub_1000059D0();
            v308 = sub_1000E2828(&v357);
            sub_1000E06DC(v308, v325);
            sub_1000E20EC(v324);
            sub_1000E22E8();
            v310 = v309 & 0xFFFFFFFFFFFFFFF8;
            v311 = ((v309 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v312 = sub_1000E2AFC();
            *(v312 + 16) = v307;
            sub_1000E0734(v325, v312 + v298);
            v313 = v342;
            *(v312 + v310) = v343;
            v314 = (v312 + v311);
            *v314 = sub_1000E1FD4;
            v314[1] = v313;
            sub_10000EBE0(&qword_1002192C8, &unk_1002191D8, &qword_10019E2E0);
            sub_10000835C();

            Publisher<>.sink(receiveValue:)();
            sub_1000E227C();

            sub_100012F20(&v353);
            v315(v273);
            sub_100099EF4();

            sub_10008E4C4();
            sub_1000C4490();

            swift_unknownObjectRelease();

            sub_1000E2264();
            swift_unknownObjectRelease();

            sub_1000E287C();
            sub_10000AB10();
            sub_10001C254();
            sub_100012F20(&a10);
            v317 = sub_1000E2CA8();
            v318(v317, v331);
            sub_100005FA4();
            sub_10001C254();
            sub_100003A28();
            sub_10000F230();
            sub_10001C254();
            (*(v347 + 8))(v336, v348);

            v196 = v344;
            goto LABEL_32;
          }

          v201 = sub_1000E29F4();
          v202 = static os_log_type_t.default.getter();
          if (sub_100007BE8(v202))
          {
            sub_1000E2130();
            v203 = swift_slowAlloc();
            sub_10000594C(v203);
            sub_10001BD10();
            _os_log_impl(v204, v205, v206, v207, v208, 2u);
            sub_1000037A4();
          }

          v209 = objc_allocWithZone(_CPSkipSearchFeedback);
          v210 = sub_1000CEF48(2, v346, v341);
          v211 = *(v26 + 64);
          swift_unknownObjectRetain();
          v212 = v349;
          v213 = [v349 queryId];
          v214 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v210];
          [v214 setQueryId:v213];
          sub_10000CC98();
          sub_100014D74();
          swift_unknownObjectRelease();

          [v212 queryId];
          v215 = sub_10000CA04();
          v216(v215);
          sub_1000E28D0(qword_100216C08);

          sub_1000E2264();
          swift_unknownObjectRelease();

          sub_1000E287C();
        }

        else
        {
          sub_1000E2194();

          [v349 queryId];
          v199 = sub_10000CA04();
          v200(v199);
          sub_1000E28D0(qword_100216C08);
        }

        sub_1000E243C();
        v218(v107, v139);
      }

      else
      {
        sub_1000E2194();

        [v349 queryId];
        v197 = sub_10000CA04();
        v198(v197);
        sub_1000E28D0(qword_100216C08);

        (*(v138 + 8))(v107, v139);
      }
    }

    v196 = v24;
    goto LABEL_32;
  }

  v148 = v138;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000126F0();
  sub_100046184(&qword_1002147F0, &qword_1001989D0);
  inited = swift_initStackObject();
  sub_10000AEB0(inited, xmmword_100197F20);
  sub_1000066DC();
  sub_1000E211C(v150, &type metadata for String, v151);
  v152 = Dictionary.init(dictionaryLiteral:)();
  v153 = objc_allocWithZone(NSError);
  v154 = sub_100017C80();
  v157 = sub_1000B184C(v154, v155, v156, v152);
  sub_1000E2448(&a18);

  v158 = sub_1000E29F4();
  v159 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v158, v159))
  {
    sub_10000F554();
    v160 = swift_slowAlloc();
    v359 = sub_100007B80();
    *v160 = 136642819;
    v161 = v346;
    v162 = sub_10000AB34();
    *(v160 + 4) = sub_100009684(v162, v163, v164);
    _os_log_impl(&_mh_execute_header, v158, v159, "Bag fetch failed, can't complete query: %{sensitive}s", v160, 0xCu);
    sub_1000E2DFC();
    v139 = v348;
    sub_1000037A4();

    sub_1000037A4();

    p_ivar_base_size = (&UploadStateFileStore + 8);
  }

  else
  {

    p_ivar_base_size = &UploadStateFileStore.ivar_base_size;
    v161 = v346;
  }

  v179 = objc_allocWithZone(_CPSkipSearchFeedback);
  v180 = sub_1000CEF48(3, v161, v107);
  v181 = *(v26 + 64);
  swift_unknownObjectRetain();
  v182 = [v349 *(p_ivar_base_size + 235)];
  v183 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v180];
  [v183 setQueryId:v182];
  sub_10000848C();
  sub_1000E240C(&a15);
  sub_10001672C(v184, v185);
  v186 = sub_1000E2528();
  sub_10000C944(v186, v187, v139);
  if (v145)
  {
    sub_1000E220C(&a14);
    parsecdUserAgent.getter();
    v188 = sub_1000E2528();
    sub_10000C944(v188, v189, v139);
    if (!v145)
    {
      sub_10000B298(v161, &qword_100217480, &unk_100198F70);
    }
  }

  else
  {
    v26 = v337;
    (*(v148 + 32))(v337, v161, v139);
  }

  sub_100014D74();

  swift_unknownObjectRelease();
  (*(v148 + 8))(v26, v139);
  [v349 *(p_ivar_base_size + 235)];
  v190 = v157;
  v191 = sub_10001343C(v157);

  if (v191)
  {
    v192 = _convertErrorToNSError(_:)();
  }

  else
  {
    v192 = 0;
  }

  v193 = v344;
  v194 = sub_1000E2080();
  v195(v194);

  sub_1000E28D0(qword_100216C08);

  v196 = v193;
LABEL_32:
  _Block_release(v196);
  sub_100005460();
}

void sub_1000DD0B0()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v7);
  v9 = *(v8 + 64);
  sub_100003760();
  __chkstk_darwin(v10);
  sub_1000E20C8();
  v11 = type metadata accessor for Client();
  v12 = sub_100005490(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  sub_1000068B4();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  v16 = *(v4 + 56);
  _Block_copy(v2);

  sub_1000119E0();
  sub_10001672C(v17, v18);
  v19 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v19);
  v20 = sub_1000E24A8();
  v21 = sub_1000E2D8C(v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = *(v4 + OBJC_IVAR____TtC7parsecd11ClientState_safariAssistantProxy);
    if (!v24)
    {
      v47 = v2[2];
      sub_100004384();
      v48();
      sub_1000E2B74(qword_100216C08);

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v50 = *(v4 + 24);
    v51 = v6;
    v25 = qword_100214058;

    if (v25 != -1)
    {
      sub_10000670C();
    }

    v26 = type metadata accessor for Logger();
    sub_100006674(v26, qword_100232978);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      sub_10000F554();
      v49 = swift_slowAlloc();
      v52 = sub_100007B80();
      *v49 = 136446210;
      v29 = type metadata accessor for SessionType();
      sub_10000F574();
      sub_10000BA9C(v30, v31);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100009684(v32, v33, &v52);
      sub_10000BE50();

      *(v49 + 4) = v29;
      sub_1000E2928(&_mh_execute_header, v34, v35, "Session %{public}s performing safari summarization prefetch");
      sub_1000E2E30();
      sub_1000037A4();

      sub_1000037A4();
    }

    static TaskPriority.userInitiated.getter();
    type metadata accessor for TaskPriority();
    sub_10000BB90();
    sub_1000051C0(v36, v37, v38, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v51;
    v40[5] = v24;
    v40[6] = v21;
    v40[7] = sub_1000E1FD4;
    v40[8] = v15;
    v40[9] = v23;
    v40[10] = v50;
    v40[11] = v4;

    v41 = v51;

    swift_unknownObjectRetain();
    v42 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    sub_1000FE178(v42, v43, v0, v44, v40);
    sub_10000BF8C();

    swift_unknownObjectRelease();

    sub_10000B298(v0, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    [v6 queryId];
    v45 = sub_1000055F0();
    v46(v45);
    sub_1000E2B74(qword_100216C08);
  }

LABEL_11:
  _Block_release(v2);
  sub_100005460();
}

void sub_1000DD48C()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v7);
  v9 = *(v8 + 64);
  sub_100003760();
  __chkstk_darwin(v10);
  sub_1000E20C8();
  v11 = type metadata accessor for Client();
  v12 = sub_100005490(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  sub_1000068B4();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  v16 = *(v4 + 56);
  _Block_copy(v2);

  sub_1000119E0();
  sub_10001672C(v17, v18);
  v19 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v19);
  v20 = sub_1000189B0();
  v21 = sub_1000E2D8C(v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = *(v4 + OBJC_IVAR____TtC7parsecd11ClientState_safariAssistantProxy);
    if (!v24)
    {
      v47 = v2[2];
      sub_100004384();
      v48();
      sub_1000E27C8(qword_100216C08);

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v50 = *(v4 + 24);
    v51 = v6;
    v25 = qword_100214058;

    if (v25 != -1)
    {
      sub_10000670C();
    }

    v26 = type metadata accessor for Logger();
    sub_100006674(v26, qword_100232978);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      sub_10000F554();
      v49 = swift_slowAlloc();
      v52 = sub_100007B80();
      *v49 = 136446210;
      v29 = type metadata accessor for SessionType();
      sub_10000F574();
      sub_10000BA9C(v30, v31);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100009684(v32, v33, &v52);
      sub_10000BE50();

      *(v49 + 4) = v29;
      sub_1000E2928(&_mh_execute_header, v34, v35, "Session %{public}s performing safari summarization summarize");
      sub_1000E2E30();
      sub_1000037A4();

      sub_1000037A4();
    }

    static TaskPriority.high.getter();
    type metadata accessor for TaskPriority();
    sub_10000BB90();
    sub_1000051C0(v36, v37, v38, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v24;
    v40[5] = v51;
    v40[6] = v21;
    v40[7] = sub_1000E1FD4;
    v40[8] = v15;
    v40[9] = v23;
    v40[10] = v50;

    v41 = v51;

    swift_unknownObjectRetain();
    v42 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    sub_1000FE178(v42, v43, v0, v44, v40);
    sub_100037ED8();

    swift_unknownObjectRelease();

    sub_10000B298(v0, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    [v6 queryId];
    v45 = sub_1000055F0();
    v46(v45);
    sub_1000E27C8(qword_100216C08);
  }

LABEL_11:
  _Block_release(v2);
  sub_100005460();
}

void sub_1000DD860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v298 = v29;
  v276 = type metadata accessor for SessionTokens(0);
  v30 = sub_1000036B8(v276);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_100004370();
  sub_10000549C(v33);
  v34 = type metadata accessor for NetworkFeedbackGenerator();
  v35 = sub_10000DE94(v34, &a11);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_100004370();
  sub_10000549C(v38);
  v39 = type metadata accessor for CancellableStoreKey();
  v40 = sub_1000038C4(v39);
  v277 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_100009964();
  sub_100007C68(v44);
  sub_1000E2188(v301);
  __chkstk_darwin(v45);
  sub_100009934();
  sub_10000549C(v46);
  v47 = type metadata accessor for JSONDecodingOptions();
  v48 = sub_100005490(v47);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_100004370();
  sub_100007C68(v51);
  v52 = sub_100046184(&qword_100219150, &qword_10019E290);
  sub_100005490(v52);
  v54 = *(v53 + 64);
  sub_100003760();
  __chkstk_darwin(v55);
  sub_10000BBD0();
  sub_10000549C(v56);
  v57 = type metadata accessor for Searchfoundation_DrillDownMetadata();
  v58 = sub_10000DE94(v57, &a16);
  v281 = v59;
  v61 = *(v60 + 64);
  __chkstk_darwin(v58);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v62);
  sub_100009934();
  v63 = sub_1000058D8();
  v64 = type metadata accessor for PegasusContext(v63);
  v65 = sub_100005490(v64);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  sub_100004370();
  v286 = v68;
  sub_1000058D8();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v70 = sub_100005490(Context);
  v72 = *(v71 + 64);
  __chkstk_darwin(v70);
  sub_100004370();
  sub_10000549C(v73);
  v74 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest();
  v75 = sub_100003650(v74);
  v288 = v76;
  v289 = v75;
  v78 = *(v77 + 64);
  __chkstk_darwin(v75);
  sub_100004370();
  v291 = v79;
  v80 = sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100005490(v80);
  v82 = *(v81 + 64);
  sub_100003760();
  __chkstk_darwin(v83);
  sub_1000E20C8();
  v299[0] = type metadata accessor for UserAgent();
  v84 = sub_100003650(v299[0]);
  v292 = v85;
  v87 = *(v86 + 64);
  __chkstk_darwin(v84);
  sub_100009964();
  sub_100007C68(v88);
  sub_1000E2188(v299);
  __chkstk_darwin(v89);
  sub_100009934();
  v297 = v90;
  sub_1000058D8();
  v91 = type metadata accessor for PegasusClientName();
  v92 = sub_100003650(v91);
  v94 = v93;
  v96 = *(v95 + 64);
  __chkstk_darwin(v92);
  sub_100003664();
  sub_100007884();
  v97 = type metadata accessor for Client();
  v98 = sub_100003650(v97);
  v100 = v99;
  v102 = *(v101 + 64);
  __chkstk_darwin(v98);
  sub_10000407C();
  v105 = v103 - v104;
  __chkstk_darwin(v106);
  sub_1000E2330();
  sub_1000068B4();
  v294 = v26;
  v295 = swift_allocObject();
  *(v295 + 16) = v26;
  _Block_copy(v26);
  sub_1000119E0();
  sub_10001672C(v107, v108);
  Client.type.getter();
  v109 = *(v100 + 8);
  v296 = v97;
  v293[0] = v109;
  v293[1] = v100 + 8;
  v109(v105, v97);
  v110 = ClientType.rawValue.getter();
  if (v110 == ClientType.rawValue.getter())
  {
    (*(v94 + 104))(v22, enum case for PegasusClientName.LookupSearch(_:), v91);
    Client.init(_:)();
  }

  else
  {
    sub_1000119E0();
    sub_10001672C(v111, v112);
  }

  v113 = v20;
  v114 = v28;
  v115 = *(v28 + 56);
  v117 = *(v100 + 16);
  v116 = v100 + 16;
  v117(v105, v113, v296);

  sub_1000E2580();
  v119 = [v298 v118];
  v120 = type metadata accessor for ResourceAccessSpan();
  sub_1000E2424(v120);
  v121 = sub_100004A34(v115, 18, v105, v119, 0);
  sub_10000848C();
  sub_10001672C(v122, v123);
  v124 = sub_1000B1FC4();
  sub_10000C944(v124, v125, v299[0]);
  v126 = v297;
  if (v127)
  {
    sub_10000B298(v21, &qword_100217480, &unk_100198F70);
    [v298 *(v116 + 1880)];
    v128 = v294;
    v129 = sub_1000055F0();
    v130(v129);
    sub_1000E2B74(qword_100216C08);

    v131 = v113;
LABEL_15:
    v160 = v296;
LABEL_45:
    (v293[0])(v131, v160);
    goto LABEL_46;
  }

  v132 = v292;
  v133 = *(v292 + 32);
  v134 = sub_1000E2BF0();
  v133(v134);
  Strong = swift_unknownObjectWeakLoadStrong();
  v274 = Strong;
  if (!Strong)
  {
    [(os_unfair_lock_s *)v298 queryId];
    v128 = v294;
    v158 = sub_1000055F0();
    v159(v158);
    sub_1000E2B74(qword_100216C08);

    (*(v292 + 8))(v297, v299[0]);
    v131 = sub_1000E2264();
    goto LABEL_15;
  }

  v270 = v133;
  v271 = *(v114 + 24);
  v136 = *(*(v114 + OBJC_IVAR____TtC7parsecd11ClientState_pegasusProxyLocker) + 16);

  os_unfair_lock_lock(v136);
  v137 = OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy;
  v273 = v114;
  v138 = v298;
  if (*(v114 + OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy))
  {
    v139 = *(v114 + OBJC_IVAR____TtC7parsecd11ClientState_engagementProxy);

    dispatch thunk of BasePegasusProxy.warmUpConnectionIfNeeded()();
  }

  os_unfair_lock_unlock(v136);
  sub_1000E2C60(&v297);

  if (qword_100214060 != -1)
  {
    sub_1000E2298();
  }

  v140 = type metadata accessor for Logger();
  sub_100006674(v140, qword_100232990);
  v141 = v138;
  sub_1000E24B4();

  v142 = v136;
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.default.getter();

  v145 = os_log_type_enabled(v143, v144);
  v298 = v142;
  if (v145)
  {
    v146 = sub_100007B80();
    v300[0] = sub_100018FF4();
    *v146 = 136446723;
    type metadata accessor for SessionType();
    sub_10000F574();
    sub_10000BA9C(v147, v148);
    v149 = dispatch thunk of CustomStringConvertible.description.getter();
    v151 = sub_100009684(v149, v150, v300);

    *(v146 + 4) = v151;
    *(v146 + 12) = 2050;
    v152 = [(os_unfair_lock_s *)v142 queryId];

    *(v146 + 14) = v152;
    *(v146 + 22) = 2085;
    v153 = [(os_unfair_lock_s *)v142 queryCommand];
    v299[1] = v153;
    sub_100046184(&qword_100219178, &qword_10019E2A8);
    v154 = Optional.debugDescription.getter();

    v155 = sub_10000DC5C();
    sub_100009684(v155, v156, v157);
    sub_100037ED8();

    *(v146 + 24) = v154;
    _os_log_impl(&_mh_execute_header, v143, v144, "Session %{public}s performing engagement query %{public}llu command: %{sensitive}s", v146, 0x20u);
    sub_1000E230C(v293);
    swift_arrayDestroy();
    v132 = v292;
    sub_1000037A4();

    v126 = v297;
    sub_1000037A4();
  }

  else
  {
  }

  v161 = *(v114 + v137);
  sub_1000E258C();
  if (!v161)
  {
    [(os_unfair_lock_s *)v298 queryId];
    v128 = v294;
    v189 = sub_1000055F0();
    v190(v189);
    sub_1000E2B74(qword_100216C08);
    sub_1000E21A0();
    swift_unknownObjectRelease();

    (*(v132 + 8))(v126, v299[0]);
LABEL_43:
    v131 = v142;
    goto LABEL_44;
  }

  v162 = v121;

  Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.init()();
  sub_100017190(v286);
  Client.type.getter();
  sub_1000E2568(&a18);
  sub_1000F5048(v163, v274, v271, v164);
  sub_100005FA4();
  sub_10001C254();
  Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.queryContext.setter();
  Searchfoundation_DrillDownMetadata.init()();
  Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.setter();
  v165 = v298;
  v166 = [(os_unfair_lock_s *)v298 queryString];
  v167 = v291;
  v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v170 = v169;

  v171 = [(os_unfair_lock_s *)v165 queryCommand];
  if (!v171)
  {
LABEL_42:

    [(os_unfair_lock_s *)v165 queryId];
    v128 = v294;
    v214 = sub_1000055F0();
    v215(v214);
    *(v162 + qword_100216C08) = 17;
    sub_10000D684();
    sub_1000E21A0();
    swift_unknownObjectRelease();

    (*(v288 + 8))(v167, v289);
    sub_1000E243C();
    v216(v297, v299[0]);
    goto LABEL_43;
  }

  v172 = v171;
  objc_opt_self();
  sub_10000C9E4();
  v173 = swift_dynamicCastObjCClass();
  if (v173)
  {
    v174 = v173;

    v175 = [v174 drilldownMetadata];
    v176 = v162;
    if (!v175 || (v287 = sub_1000CFB08(v175), v177 >> 60 == 15))
    {
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();
      v180 = sub_100007BE8(v179);
      v181 = v297;
      if (v180)
      {
        sub_1000E2130();
        *swift_slowAlloc() = 0;
        sub_1000E20FC();
        _os_log_impl(v182, v183, v184, v185, v186, 2u);
        sub_1000037A4();
      }

      [(os_unfair_lock_s *)v298 queryId];
      v128 = v294;
      v187 = sub_1000055F0();
      v188(v187);
      sub_1000E2A24(qword_100216C08);
      sub_1000E21A0();
      swift_unknownObjectRelease();

      sub_1000E284C();
LABEL_33:

      v206 = sub_1000E26D8();
      v207(v206);
      sub_1000E243C();
      v208(v181, v299[0]);
      v131 = sub_1000E2264();
LABEL_44:
      v160 = v296;
      goto LABEL_45;
    }

    v209 = v177;
    sub_1000CFB78(v174, &selRef_tokenString);
    sub_1000126F0();

    v272 = 1;
    if (v165)
    {
      v168 = v174;
    }

    else
    {
      v168 = 0;
    }

    if (v165)
    {
      v170 = v165;
    }

    else
    {
      v170 = 0xE000000000000000;
    }

    goto LABEL_40;
  }

  objc_opt_self();
  sub_10000C9E4();
  v191 = swift_dynamicCastObjCClass();
  if (!v191)
  {

    sub_1000E258C();
    v167 = v291;
    goto LABEL_42;
  }

  v176 = v162;
  v192 = [v191 card];
  if (!v192 || (v193 = v192, v194 = [v192 drilldownMetadata], v193, !v194) || (v287 = sub_1000CFB08(v194), v195 >> 60 == 15))
  {

    v196 = Logger.logObject.getter();
    v197 = static os_log_type_t.error.getter();
    v198 = sub_100007BE8(v197);
    v181 = v297;
    if (v198)
    {
      sub_1000E2130();
      *swift_slowAlloc() = 0;
      sub_1000E20FC();
      _os_log_impl(v199, v200, v201, v202, v203, 2u);
      sub_1000037A4();
    }

    [(os_unfair_lock_s *)v298 queryId];
    v128 = v294;
    v204 = sub_1000055F0();
    v205(v204);
    sub_1000E2A24(qword_100216C08);
    sub_1000E21A0();
    swift_unknownObjectRelease();
    sub_1000E284C();

    goto LABEL_33;
  }

  v209 = v195;

  v272 = 2;
LABEL_40:
  v210 = sub_1000385F0();
  sub_100062FBC(v210, v211);
  v212 = sub_1000385F0();
  sub_100014924(v212, v213);
  sub_10000BA48(&a13);
  JSONDecodingOptions.init()();
  sub_10000BA9C(&qword_100219158, &type metadata accessor for Searchfoundation_DrillDownMetadata);
  sub_1000E240C(&a14);
  v285 = v209;
  sub_1000E2810();
  Message.init(jsonUTF8Data:options:)();
  sub_10000BB90();
  sub_1000051C0(v217, v218, v219, v284);
  (*(v281 + 32))(v280, v162);
  sub_1000E2D04();
  v220 = sub_10000BE80();
  v221(v220);
  Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.requestMetadata.setter();
  sub_1000E287C();
  UUID.init()();
  sub_1000068B4();
  v222 = swift_allocObject();
  swift_weakInit();
  sub_1000E2D04();
  v223 = v299[0];
  v224(v275, v297, v299[0]);
  v225 = (*(v292 + 80) + 48) & ~*(v292 + 80);
  v226 = sub_1000E29BC();
  v227 = v298;
  *(v226 + 2) = v298;
  *(v226 + 3) = v168;
  *(v226 + 4) = v170;
  *(v226 + 5) = v222;
  v270(&v226[v225], v275, v223);
  v298 = v227;
  sub_1000E2164(&v303);
  NetworkFeedbackGenerator.init(isBodyDataRedacted:consumer:)();
  v228 = *(v273 + 64);
  swift_unknownObjectRetain();
  sub_1000E2388();
  v230 = v229;
  sub_1000E75A0();
  swift_unknownObjectRelease();
  sub_100006AE8();
  v233 = sub_10000BB00(v231, v232);
  sub_1000E25A4();
  v235 = *(v230 + *(v234 + 24));
  sub_1000E284C();
  sub_1000C5F54();

  v301[1] = v282;
  v301[2] = &protocol witness table for NetworkFeedbackGenerator;
  sub_1000205C4(v300);
  sub_1000E2BC0();
  v237 = *(v236 + 16);
  sub_1000E2810();
  v238();
  v290 = dispatch thunk of PegasusProxyForEngagement.searchResponsePublisher(forSearchRequestWithQueryContext:observer:)();
  sub_10000B298(v300, &qword_100219160, &qword_10019E298);
  v300[0] = v290;
  sub_100006634();
  v239 = swift_allocObject();
  sub_1000E2370(v239, &off_1001F9E28);
  sub_1000E2CD8();
  swift_unknownObjectWeakInit();
  sub_1000E21D0();
  sub_1000E06DC(v283, v279);
  v240 = v176;
  v269 = v176;
  v241 = *(v277 + 80);
  v242 = swift_allocObject();
  v242[2] = v240;
  v242[3] = sub_1000E06BC;
  v243 = v298;
  v242[4] = v295;
  v242[5] = v243;
  v242[6] = v239;
  sub_1000E0734(v279, v242 + ((v241 + 56) & ~v241));
  sub_100006634();
  v244 = swift_allocObject();
  sub_1000E2370(v244, &off_1001F9E28);
  swift_unknownObjectWeakInit();
  v245 = sub_10000BB84();
  sub_1000E06DC(v245, v246);
  v247 = (v241 + 24) & ~v241;
  v248 = (v278 + v247 + 7) & 0xFFFFFFFFFFFFFFF8;
  v249 = (v248 + 11) & 0xFFFFFFFFFFFFFFF8;
  v250 = (v249 + 11) & 0xFFFFFFFFFFFFFFF8;
  v251 = swift_allocObject();
  *(v251 + 16) = v244;
  sub_1000E0734(v279, v251 + v247);
  *(v251 + v248) = v269;
  *(v251 + v249) = v272;
  v252 = (v251 + v250);
  v253 = v295;
  *v252 = sub_1000E06BC;
  v252[1] = v253;
  v254 = v298;
  *(v251 + ((v250 + 23) & 0xFFFFFFFFFFFFFFF8)) = v298;
  v255 = v254;
  sub_1000189B0();
  swift_retain_n();
  swift_retain_n();
  v256 = v279;
  v257 = sub_10000BE80();
  sub_100046184(v257, v258);
  sub_10000804C();
  sub_1000E1CB8(v259, v260, &qword_10019E2A0);
  Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100099EF4();

  sub_1000E21A0();
  swift_unknownObjectRelease();
  sub_1000E284C();

  sub_100014A2C(v287, v285);
  v261 = sub_10000BE80();
  sub_100014A2C(v261, v262);
  sub_100012F20(&a10);
  sub_1000E23B8();
  v263();
  sub_10000AB10();
  sub_10001C254();
  sub_100012F20(&v302);
  v264();
  v265 = sub_1000E26D8();
  v266(v265);
  sub_1000E243C();
  v267(v297, v299[0]);
  v268 = sub_1000E2264();
  (v293[0])(v268, v296);
  sub_100003A28();
  sub_10000F230();
  sub_10001C254();
  v128 = v294;
LABEL_46:

  _Block_release(v128);
  sub_100005460();
}

uint64_t sub_1000DED90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v70 = a5;
  v71 = a6;
  v68 = a3;
  v69 = a4;
  v65 = a2;
  v67 = a1;
  v8 = sub_100046184(&qword_100217480, &unk_100198F70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v72 = &v63 - v10;
  v11 = type metadata accessor for UserAgent();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  __chkstk_darwin(v11);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100046184(&qword_100219128, &qword_10019E278);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v63 - v20;
  v22 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v66 = *(v22 - 8);
  v23 = *(v66 + 64);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Client();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a7;
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__client, sub_10000B928);
  Client.type.getter();
  v31 = *(v27 + 8);
  v31(v30, v26);
  v32 = ClientType.rawValue.getter();
  if (v32 != ClientType.rawValue.getter())
  {
    sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__client, sub_10000B928);
    Client.type.getter();
    v31(v30, v26);
  }

  sub_10000EFEC(v65, v21, &qword_100219128, &qword_10019E278);
  if (sub_100008D0C(v21, 1, v22) == 1)
  {
    sub_10000B298(v21, &qword_100219128, &qword_10019E278);
    v33 = v70;
    v34 = sub_10007AF80();
    v35 = objc_allocWithZone(_CPEndNetworkSearchFeedback);
    v36 = v67;
    v37 = v67;
    v38 = sub_1000CEFBC(v36, v68, v69, 0.0, 0, 0, 0, 0, 0, 0, v34);
    v39 = v74;
    goto LABEL_16;
  }

  (*(v66 + 32))(v25, v21, v22);
  Apple_Parsec_Search_V2_SearchResponse.status.getter();
  v40 = v64;
  v41 = (*(v64 + 88))(v17, v14);
  v63 = v22;
  if (v41 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.UNRECOGNIZED(_:))
  {
    v64 = 0xE500000000000000;
    v65 = 0x524F525245;
    v39 = v74;
  }

  else
  {
    v39 = v74;
    if (v41 != enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusOk(_:))
    {
      if (v41 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusError(_:))
      {
        v65 = 0x524F525245;
      }

      else
      {
        if (v41 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusNoResults(_:))
        {
          v64 = 0xEA00000000005354;
          v65 = 0x4C555345525F4F4ELL;
          goto LABEL_15;
        }

        v65 = 0x524F525245;
        (*(v40 + 8))(v17, v14);
      }

      v64 = 0xE500000000000000;
      goto LABEL_15;
    }

    v64 = 0xE200000000000000;
    v65 = 19279;
  }

LABEL_15:
  v42 = Apple_Parsec_Search_V2_SearchResponse.feedback.getter();
  v44 = v43;
  v45 = Data.base64EncodedString(options:)(0);
  sub_100014A40(v42, v44);
  v46 = Apple_Parsec_Search_V2_SearchResponse.partialClientAddress.getter();
  v48 = v47;
  v49 = Apple_Parsec_Search_V2_SearchResponse.millisecondDuration.getter();
  v33 = v70;
  v50 = sub_10007AF80();
  v51 = objc_allocWithZone(_CPEndNetworkSearchFeedback);
  v52 = v67;
  v53 = v67;
  v38 = sub_1000CEFBC(v52, v68, v69, v49, v65, v64, v45._countAndFlagsBits, v45._object, v46, v48, v50);
  (*(v66 + 8))(v25, v63);
LABEL_16:
  v54 = v73;
  v55 = sub_1000CEC4C(v33);
  v57 = v72;
  if (v56)
  {
    sub_100089408(v55, v56, v38, &selRef_setEdge_);
  }

  v58 = *(v76 + 64);
  v59 = objc_allocWithZone(_CPFeedbackPayload);
  swift_unknownObjectRetain();
  v60 = [v59 initWithCodable:v38];
  [v60 setQueryId:v71];
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__userAgent, sub_10000F8D8);
  v61 = v75;
  if (sub_100008D0C(v57, 1, v75) == 1)
  {
    parsecdUserAgent.getter();
    if (sub_100008D0C(v57, 1, v61) != 1)
    {
      sub_10000B298(v57, &qword_100217480, &unk_100198F70);
    }
  }

  else
  {
    (*(v39 + 32))(v54, v57, v61);
  }

  sub_100014D74();

  swift_unknownObjectRelease();
  return (*(v39 + 8))(v54, v61);
}

uint64_t sub_1000DF4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v11 = type metadata accessor for Client();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__client, sub_10000B928);
  Client.type.getter();
  v16 = *(v12 + 8);
  v16(v15, v11);
  v17 = ClientType.rawValue.getter();
  if (v17 == ClientType.rawValue.getter())
  {
    v18 = 7;
  }

  else
  {
    sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__client, sub_10000B928);
    v18 = Client.type.getter();
    v16(v15, v11);
  }

  return sub_1000DF69C(a1, a2, a3, v21, v22, v23, v18, a7);
}

uint64_t sub_1000DF69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a6;
  v65 = a8;
  v59 = a5;
  v60 = a1;
  v61 = a3;
  v62 = a4;
  v9 = sub_100046184(&qword_100217480, &unk_100198F70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v63 = &v57 - v11;
  v12 = type metadata accessor for UserAgent();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  __chkstk_darwin(v12);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse.StatusCode();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100046184(&qword_100219128, &qword_10019E278);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v57 - v22;
  v24 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EFEC(a2, v23, &qword_100219128, &qword_10019E278);
  if (sub_100008D0C(v23, 1, v24) == 1)
  {
    sub_10000B298(v23, &qword_100219128, &qword_10019E278);
    v29 = v59;
    v30 = sub_10007AF80();
    v31 = objc_allocWithZone(_CPEndNetworkSearchFeedback);
    v32 = swift_unknownObjectRetain();
    v33 = sub_1000CEFBC(v32, v61, v62, 0.0, 0, 0, 0, 0, 0, 0, v30);
    v34 = v29;
    goto LABEL_9;
  }

  (*(v25 + 32))(v28, v23, v24);
  Apple_Parsec_Search_V2_SearchResponse.status.getter();
  v35 = (*(v16 + 88))(v19, v15);
  if (v35 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.UNRECOGNIZED(_:))
  {
    goto LABEL_4;
  }

  if (v35 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusOk(_:))
  {
    v57 = 0xE200000000000000;
    v58 = 19279;
    goto LABEL_8;
  }

  if (v35 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusError(_:))
  {
LABEL_4:
    v58 = 0x524F525245;
  }

  else
  {
    if (v35 == enum case for Apple_Parsec_Search_V2_SearchResponse.StatusCode.statusNoResults(_:))
    {
      v57 = 0xEA00000000005354;
      v58 = 0x4C555345525F4F4ELL;
      goto LABEL_8;
    }

    v58 = 0x524F525245;
    (*(v16 + 8))(v19, v15);
  }

  v57 = 0xE500000000000000;
LABEL_8:
  v36 = Apple_Parsec_Search_V2_SearchResponse.feedback.getter();
  v38 = v37;
  v39 = Data.base64EncodedString(options:)(0);
  sub_100014A40(v36, v38);
  v40 = Apple_Parsec_Search_V2_SearchResponse.partialClientAddress.getter();
  v42 = v41;
  v43 = Apple_Parsec_Search_V2_SearchResponse.millisecondDuration.getter();
  v44 = v59;
  v45 = sub_10007AF80();
  objc_allocWithZone(_CPEndNetworkSearchFeedback);
  v46 = swift_unknownObjectRetain();
  v33 = sub_1000CEFBC(v46, v61, v62, v43, v58, v57, v39._countAndFlagsBits, v39._object, v40, v42, v45);
  (*(v25 + 8))(v28, v24);
  v34 = v44;
LABEL_9:
  v47 = sub_1000CEC4C(v34);
  v50 = v66;
  v49 = v67;
  v51 = v63;
  if (v48)
  {
    sub_100089408(v47, v48, v33, &selRef_setEdge_);
  }

  v52 = *(v65 + 64);
  v53 = objc_allocWithZone(_CPFeedbackPayload);
  swift_unknownObjectRetain();
  v54 = [v53 initWithCodable:v33];
  [v54 setQueryId:v64];
  sub_10001672C(&OBJC_IVAR____TtC7parsecd11ClientState__userAgent, sub_10000F8D8);
  v55 = v68;
  if (sub_100008D0C(v51, 1, v68) == 1)
  {
    parsecdUserAgent.getter();
    if (sub_100008D0C(v51, 1, v55) != 1)
    {
      sub_10000B298(v51, &qword_100217480, &unk_100198F70);
    }
  }

  else
  {
    (*(v49 + 32))(v50, v51, v55);
  }

  sub_100014D74();

  swift_unknownObjectRelease();
  return (*(v49 + 8))(v50, v55);
}

void sub_1000DFCA0()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SessionTokens(0);
  v11 = sub_100005490(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000407C();
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_100046184(&qword_100217578, &qword_10019BB40);
  sub_100015B68();
  swift_allocObject();
  v17 = sub_10000899C();
  *(v1 + 40) = sub_10010C33C(v17, 0);
  *(v1 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 88) = 2;
  type metadata accessor for SessionEndEventController();
  sub_100015B68();
  swift_allocObject();
  *(v1 + 136) = sub_1000E7AC0();
  *(v1 + 152) = 1;
  *(v1 + 80) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();

  sub_10001DFA8(v18, v16);
  sub_100005D5C();
  v19 = sub_1000059E8();
  sub_1000E06DC(v19, v20);
  v21 = sub_100046184(&qword_100219110, &qword_10019E260);
  sub_1000E2424(v21);
  v22 = sub_100037ED8();
  v23 = sub_10010C364(v22);
  sub_100003A28();
  sub_10001C254();
  *(v1 + 144) = v23;
  swift_endAccess();
  sub_10000EFEC(v3, &v53, &qword_100219118, &qword_10019E268);
  if (v54)
  {
    sub_100008C84(&v53, &v55);
  }

  else
  {
    v24 = [objc_opt_self() standardUserDefaults];
    sub_10000899C();
    v56 = type metadata accessor for ClientSessionTimekeeper();
    v57 = &off_1001FE180;
    v25 = sub_1000205C4(&v55);
    sub_10010BC0C(v23, v25);
    if (v54)
    {
      sub_10000B298(&v53, &qword_100219118, &qword_10019E268);
    }
  }

  sub_100008C84(&v55, v1 + 96);
  v26 = *(v9 + 304);
  *(v1 + 48) = v26;
  *(v1 + 56) = v7;
  *(v1 + 64) = v5;
  v27 = objc_opt_self();
  v28 = v26;

  v29 = [v27 standardUserDefaults];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 BOOLForKey:v30];

  if (v31)
  {

    if (qword_1002140D8 != -1)
    {
      sub_10000393C();
    }

    v32 = type metadata accessor for Logger();
    sub_100006674(v32, qword_100232AF8);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      sub_10000F554();
      v35 = swift_slowAlloc();
      v36 = sub_100007B80();
      *&v55 = v36;
      *v35 = 136315138;
      v37 = sub_100007700();
      sub_100009684(v37, v38, v39);
      sub_1000E281C();

      *(v35 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v33, v34, "query cache OFF for %s", v35, 0xCu);
      sub_100007378(v36);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {
    }

    sub_10000B298(v3, &qword_100219118, &qword_10019E268);
    v48 = 0;
  }

  else
  {
    if (qword_1002140D8 != -1)
    {
      sub_10000393C();
    }

    v40 = type metadata accessor for Logger();
    sub_100006674(v40, qword_100232AF8);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      sub_10000F554();
      v43 = swift_slowAlloc();
      v44 = sub_100007B80();
      *&v55 = v44;
      *v43 = 136315138;
      v45 = sub_100007700();
      sub_100009684(v45, v46, v47);
      sub_1000E281C();

      *(v43 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v41, v42, "query cache ON for %s", v43, 0xCu);
      sub_100007378(v44);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {
    }

    type metadata accessor for QCCritbitCompressed();
    sub_100019024();
    swift_allocObject();
    sub_10007D574();
    sub_10000899C();
    type metadata accessor for QueryCache();
    swift_allocObject();
    v49 = sub_10000BB84();
    v48 = sub_1000E01EC(v49, v50, v51);

    sub_10000B298(v3, &qword_100219118, &qword_10019E268);
  }

  v52 = *(v1 + 32);
  *(v1 + 32) = v48;

  sub_100005460();
}

void *sub_1000E01EC(uint64_t a1, uint64_t a2, void *a3)
{
  v38[0] = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v39[3] = type metadata accessor for QCCritbitCompressed();
  v39[4] = &off_1001FC318;
  v39[0] = a2;
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  a3[7] = sub_1000BCFE8();
  a3[8] = 0;
  a3[10] = 0;
  swift_unknownObjectWeakInit();
  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v38[1] = 0;
  sub_10000BA9C(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[12] = 0;
  a3[10] = &off_1001F94C0;
  a3[11] = v14;
  swift_unknownObjectWeakAssign();

  sub_1000092B4(v39, (a3 + 2));
  v15 = a3[7];
  v16 = sub_100046184(&qword_100219120, &qword_10019E270);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  sub_100048D64();
  v19 = a3[8];
  a3[8] = v20;

  sub_100046184(&qword_1002161B0, &qword_10019A660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198E20;
  v22 = GEOCountryConfigurationCountryCodeDidChangeNotification;
  *(inited + 32) = GEOCountryConfigurationCountryCodeDidChangeNotification;
  *(inited + 40) = NSSystemTimeZoneDidChangeNotification;
  *(inited + 48) = NSCurrentLocaleDidChangeNotification;
  v23 = qword_100214020;
  v24 = v22;
  v25 = NSSystemTimeZoneDidChangeNotification;
  v26 = NSCurrentLocaleDidChangeNotification;
  if (v23 != -1)
  {
    swift_once();
  }

  v27 = qword_1002328E0;
  *(inited + 56) = qword_1002328E0;
  v28 = MCEffectiveSettingsChangedNotification;
  v29 = v27;
  v30 = v28;
  sub_10006CF9C();
  v32 = v31;
  *(v31 + 16) = 5;
  *(v31 + 64) = v30;
  v33 = [objc_opt_self() defaultCenter];
  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = (v32 + 32);
    do
    {
      v36 = *v35++;
      [v33 addObserver:a3 selector:"cacheClearNotificationWithNotification:" name:v36 object:0];
      --v34;
    }

    while (v34);
  }

  sub_100007378(v39);
  return a3;
}

uint64_t sub_1000E0670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000B9F4(a1, a2, a3, a4);
  sub_1000036B8(v5);
  v7 = *(v6 + 40);
  v8 = sub_1000041F8();
  v9(v8);
  return v4;
}

uint64_t sub_1000E06DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000899C();
  v5 = v4(v3);
  sub_1000036B8(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000041F8();
  v9(v8);
  return a2;
}

uint64_t sub_1000E0734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000E0798()
{
  sub_1000E21C4();
  v2 = type metadata accessor for CancellableStoreKey();
  sub_100005490(v2);
  v4 = *(v3 + 80);
  sub_1000E26E8();
  v9 = *(v1 + 48);

  sub_1000C8F10(v0, v5, v6, v7, v8);
}

void sub_1000E0804()
{
  sub_1000E21C4();
  v2 = type metadata accessor for CancellableStoreKey();
  sub_1000038C4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  sub_1000E20A8();
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + 16);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + v12);
  v17 = *(v1 + v12 + 8);
  v18 = *(v1 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1000C910C(v0, v13, v1 + v9, v14, v15, v16, v17, v18);
}

unint64_t sub_1000E08B8()
{
  result = qword_1002191F8;
  if (!qword_1002191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002191F8);
  }

  return result;
}

uint64_t sub_1000E090C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v54 = a1;
  v55 = a4;
  v52 = a3;
  v7 = type metadata accessor for Client();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a2 + 80);
  v12 = *(v8 + 16);
  v12(v11, a2 + qword_100232BE0, v7);
  v56 = a2;
  v13 = *(a2 + qword_100232BD8);
  v14 = *(a2 + qword_100232BD8 + 8);
  v15 = type metadata accessor for ResourceAccessNetworkSpan();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = v18 + qword_100232D88;
  *v19 = 0;
  *(v19 + 8) = 1;
  v12((v18 + qword_100232D80), v11, v7);
  if (v14)
  {
    sub_100046184(&unk_100217040, &qword_1001989F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100198F10;
    v21 = Client.name.getter();
    v23 = v22;
    *(inited + 56) = &type metadata for String;
    v24 = sub_10000512C();
    *(inited + 32) = v21;
    *(inited + 40) = v23;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    v26 = v50;
    v25 = v51;
    *(inited + 64) = v24;
    *(inited + 72) = v26;
    *(inited + 80) = v25;
    *(v18 + *(*v18 + 472)) = 0;
    v27 = *(*v18 + 480);
    *(v18 + v27) = 0;
    v28 = (v18 + *(*v18 + 464));
    v29 = v52;
    *v28 = v52;
    v28[1] = &off_1001FC230;
    v30 = v55;
    [v29 set_nw_activity:v55];
    v31 = *(v18 + v27);
    *(v18 + v27) = v30;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v32 = "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s";
    v34 = v53;
    v33 = v54;
    v35 = 99;
  }

  else
  {
    *v19 = v13;
    *(v19 + 8) = 0;
    sub_100046184(&unk_100217040, &qword_1001989F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F30;
    v36 = Client.name.getter();
    v38 = v37;
    *(inited + 56) = &type metadata for String;
    v39 = sub_10000512C();
    *(inited + 32) = v36;
    *(inited + 40) = v38;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v39;
    v40 = v50;
    v41 = v51;
    *(inited + 64) = v39;
    *(inited + 72) = v40;
    *(inited + 80) = v41;
    *(inited + 136) = &type metadata for UInt64;
    *(inited + 144) = &protocol witness table for UInt64;
    *(inited + 112) = v13;
    *(v18 + *(*v18 + 472)) = 0;
    v42 = *(*v18 + 480);
    *(v18 + v42) = 0;
    v43 = (v18 + *(*v18 + 464));
    v44 = v52;
    *v43 = v52;
    v43[1] = &off_1001FC230;
    v45 = v55;
    [v44 set_nw_activity:v55];
    v46 = *(v18 + v42);
    *(v18 + v42) = v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v32 = "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v34 = v53;
    v33 = v54;
    v35 = 155;
  }

  v47 = sub_10007DD84(v33, v34, v32, v35, 2, inited);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v7);

  return v47;
}

uint64_t sub_1000E0DA8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1000E0DEC(uint64_t a1)
{
  v3 = v2;
  v4 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest();
  sub_1000038C4(v4);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for NetworkFeedbackGenerator();
  sub_1000038C4(v9);
  v12 = (*(v11 + 64) + ((v6 + v8 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for URLRequest();
  sub_1000038C4(v14);
  v16 = v15;
  v18 = v17;
  v19 = (v13 + *(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = *(v18 + 64);
  sub_1000E20A8();
  v33 = v1[3];
  v34 = v1[2];
  v31 = v1[5];
  v32 = v1[4];
  v21 = v1[6];
  v22 = v1[7];
  v23 = *(v1 + v12);
  v24 = v1 + v13;
  v25 = *(v1 + v13);
  v26 = *(v24 + 1);
  v28 = *(v1 + v27);
  v29 = swift_task_alloc();
  *(v3 + 16) = v29;
  *v29 = v3;
  v29[1] = sub_10005416C;

  return sub_1000C7C34(a1, v34, v33, v32, v31, v21, v22, v1 + v6);
}

unint64_t sub_1000E1004()
{
  result = qword_1002192F8;
  if (!qword_1002192F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002192F8);
  }

  return result;
}

uint64_t sub_1000E10B0()
{
  v1 = type metadata accessor for URLRequest();
  sub_100003650(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  v8 = sub_10000BAE0();
  v9(v8);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

id sub_1000E1190(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URLRequest();
  sub_1000038C4(v9);
  v11 = v10;
  v13 = v12;
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = *(v13 + 64);
  sub_1000E20A8();
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  v20 = (v5 + v16);
  v28 = v20[1];
  v29 = *(v5 + v17);
  v27 = *v20;
  v21 = sub_100008380();
  return sub_1000C5328(v21, v22, a3, a4, a5, v23, v24, v25, v27, v28, v29);
}

uint64_t sub_1000E1260()
{
  sub_1000E21C4();
  v0 = type metadata accessor for CancellableStoreKey();
  sub_1000038C4(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_1000E20A8();
  v7 = sub_10001DA20();

  return sub_1000C9598(v7, v8, v9, v10, v11);
}

uint64_t sub_1000E12E0()
{
  v1 = type metadata accessor for UserAgent();
  sub_100003650(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = sub_10000BAE0();
  v9(v8);
  v10 = sub_1000E2670();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_1000E13B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1000E21C4();
  v3 = type metadata accessor for UserAgent();
  sub_100005490(v3);
  v5 = *(v4 + 80);
  sub_1000E26E8();

  return a2(v2);
}

uint64_t sub_1000E142C()
{
  v2 = v1;
  v3 = type metadata accessor for NetworkFeedbackGenerator();
  sub_1000038C4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_1000E20A8();
  v33 = v0[2];
  v32 = v0[3];
  v31 = v0[4];
  v10 = v0[6];
  v30 = v0[5];
  v11 = v0[7];
  v12 = v0[8];
  v14 = v0[9];
  v13 = v0[10];
  v16 = *(v0 + v15);
  v17 = (v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v2 + 16) = v20;
  *v20 = v2;
  v20[1] = sub_10001FF08;
  sub_1000E2680();

  return sub_1000C9CC4(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1000E15CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  sub_100019024();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000E1610()
{
  v1 = type metadata accessor for URLRequest();
  sub_100003650(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_10000BAE0();
  v7(v6);
  v8 = sub_1000E2670();

  return _swift_deallocObject(v8, v9, v10);
}

id sub_1000E16B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URLRequest();
  sub_100005490(v7);
  v9 = *(v8 + 80);
  v10 = *(v4 + 16);
  v11 = sub_100003898();

  return sub_1000C5E78(v11, v12, a3, a4, v13);
}

uint64_t sub_1000E174C()
{
  v1 = type metadata accessor for Logger();
  sub_10000374C(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  v8 = sub_1000E255C();

  return _swift_deallocObject(v8, v9, v10);
}

uint64_t sub_1000E1810(void *a1)
{
  v3 = type metadata accessor for Logger();
  sub_1000038C4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_1000E20A8();
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + v11);
  v16 = *(v1 + v12);
  v17 = *(v1 + v13);
  v18 = *(v1 + v14);
  v19 = *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000C58F4(a1, v1 + v10, v15, v16);
}

uint64_t sub_1000E18DC()
{
  v2 = type metadata accessor for CancellableStoreKey();
  sub_1000038C4(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  sub_1000E2690();
  v7 = *(v0 + 16);

  v8 = type metadata accessor for UUID();
  sub_10000374C(v8);
  (*(v9 + 8))(v0 + ((v4 + 24) & ~v4));
  v10 = *(v0 + v1);

  v11 = *(v0 + ((v1 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  v12 = sub_1000E255C();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_1000E19C0()
{
  sub_1000E21C4();
  v0 = type metadata accessor for CancellableStoreKey();
  sub_1000038C4(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  sub_1000E20A8();
  v7 = sub_10001DA20();
  return sub_1000C8960(v7, v8, v9, v10, v11);
}

uint64_t sub_1000E1A34()
{
  v1 = type metadata accessor for UserAgent();
  sub_100003650(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = *(v0 + 24);

  v7 = sub_10000BAE0();
  v8(v7);
  v9 = sub_1000E2670();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_1000E1AFC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1000E21C4();
  v4 = type metadata accessor for UserAgent();
  sub_100005490(v4);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v2, v6, v7, v8);
}

void sub_1000E1B88()
{
  sub_1000E21C4();
  v2 = type metadata accessor for CancellableStoreKey();
  sub_100005490(v2);
  v4 = *(v3 + 80);
  sub_1000E26E8();
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);

  sub_1000CB9E0(v0, v5, v6, v7, v8, v10, v11, v1 + v9);
}

void sub_1000E1BF4()
{
  sub_1000E21C4();
  v2 = type metadata accessor for CancellableStoreKey();
  sub_1000038C4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  sub_1000E20A8();
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1000CBEC4(v0, *(v1 + 16), v1 + v12, *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000E1CB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    sub_1000042D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E1CFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v22 = *(v0 + 72);
  v9 = *(v0 + 88);
  swift_task_alloc();
  sub_1000E2608();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_10005416C;
  sub_10000BA3C();
  sub_1000E2680();
  sub_1000E2790();

  return sub_1000CC53C(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1000E1E00()
{
  sub_1000E2870();
  v2 = v0[3];
  v22 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  swift_task_alloc();
  sub_1000E2608();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_10005416C;
  sub_1000E2680();
  sub_1000E27AC();

  return sub_1000CE3E8(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t getEnumTagSinglePayload for ClientState.ResponseError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for ClientState.ResponseError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000E1F5C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000E1F74(uint64_t result, unsigned int a2)
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

__n128 sub_1000E20DC()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  v2 = *(v0 - 88);
  return result;
}

void *sub_1000E211C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[9] = a2;
  result[6] = 0xD000000000000013;
  result[7] = a3;
  return result;
}

uint64_t sub_1000E223C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100004A34(a1, a2, a3, v3, 0);
}

uint64_t sub_1000E2298()
{

  return swift_once();
}

uint64_t sub_1000E22D8@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_1000E23D0()
{

  return swift_slowAlloc();
}

uint64_t sub_1000E23EC()
{
  result = v0;
  v3 = *(v1 + 192);
  v4 = *(v1 + 208);
  return result;
}

uint64_t sub_1000E2424(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

double sub_1000E2454()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

void sub_1000E24C0(uint64_t a1@<X8>)
{
  *(*(v2 - 256) + a1) = v1;

  sub_10000D684();
}

uint64_t sub_1000E24D8()
{
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
}

uint64_t sub_1000E25EC()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

uint64_t sub_1000E2620(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return _convertErrorToNSError(_:)();
}

uint64_t sub_1000E2648()
{

  return swift_slowAlloc();
}

id sub_1000E26A0()
{
  v3 = *(v1 + 1880);

  return [v0 v3];
}

uint64_t sub_1000E26D8()
{
  v1 = *(v0 - 240);
  v2 = *(*(v0 - 248) + 8);
  return *(v0 - 224);
}

void sub_1000E26E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_1000E2718()
{
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[11];
}

uint64_t sub_1000E2740@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;

  return sub_1000BD710();
}

uint64_t sub_1000E2768()
{
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
}

void sub_1000E27C8(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_10000D684();
}

BOOL sub_1000E27E0()
{

  return os_log_type_enabled(v0, v1);
}

void sub_1000E28A0(void *a1@<X8>)
{
  v2 = (v1 + *a1);
  v3 = *v2;
  v4 = *(v2 + 8);
}

void sub_1000E28B8(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_10000D684();
}

void sub_1000E28D0(uint64_t a1@<X8>)
{
  *(*(v2 - 248) + a1) = v1;

  sub_10000D684();
}

uint64_t sub_1000E28E8()
{

  return swift_dynamicCast();
}

uint64_t sub_1000E290C()
{

  return swift_slowAlloc();
}

void sub_1000E2928(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 116);
  v9 = *(v6 - 116);

  _os_log_impl(a1, v5, v9, a4, v4, 0xCu);
}

id sub_1000E294C(uint64_t a1)
{

  return sub_1000B8F60(a1, 2, 0);
}

uint64_t sub_1000E2964()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
}

id sub_1000E2988()
{
  v3 = *(v1 + 1880);

  return [v0 v3];
}

uint64_t sub_1000E29A0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E29BC()
{
  v3 = v1 + *(v0 - 256);

  return swift_allocObject();
}

uint64_t sub_1000E29D8()
{
  *(v0 - 96) = 0;

  return swift_stdlib_random();
}

uint64_t sub_1000E29F4()
{
  v2 = *(v0 - 280);

  return Logger.logObject.getter();
}

uint64_t sub_1000E2A0C()
{

  return _bridgeAnyObjectToAny(_:)();
}

void sub_1000E2A24(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_10000D684();
}

uint64_t sub_1000E2A3C()
{
  v1[7] = v0;
  v3 = v1[22];
  v4 = v1[19];

  return swift_errorRetain();
}

uint64_t sub_1000E2A60()
{
  v2 = *(v0 - 424);

  return sub_10001C254();
}

void sub_1000E2A78()
{

  sub_1000F5048(0x15, v0, v2, v1);
}

uint64_t sub_1000E2A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
}

BOOL sub_1000E2AB4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000E2ACC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_1000E2AE4()
{
  v2 = *(v0 + 64);

  return swift_unknownObjectRetain();
}

uint64_t sub_1000E2AFC()
{

  return swift_allocObject();
}

void sub_1000E2B14()
{
  v2 = *(v0 - 400);
}

uint64_t sub_1000E2B2C()
{
  v2 = *(v0 - 816);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000E2B44()
{
  v2 = *(v0 - 808);
}

void sub_1000E2B5C(uint64_t a1@<X8>)
{
  *(*(v2 + 88) + a1) = v1;

  sub_10000D684();
}

void sub_1000E2B74(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_10000D684();
}

uint64_t sub_1000E2B8C()
{
  result = v0;
  v3 = *(v1 + 112);
  return result;
}

uint64_t sub_1000E2BA0(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

void sub_1000E2C14()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[8];
}

uint64_t sub_1000E2C40()
{
  result = *(v0 - 448);
  v2 = *(v0 - 456);
  return result;
}

void sub_1000E2D3C(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
}

uint64_t sub_1000E2D6C()
{
  v3 = v1[22];
  v4 = v1[19];
  v1[7] = v0;

  return swift_errorRetain();
}

uint64_t sub_1000E2D8C(uint64_t a1)
{

  return sub_100004A34(a1, 2, v1, 0, 1);
}

uint64_t sub_1000E2DAC()
{

  return swift_dynamicCast();
}

id sub_1000E2DCC()
{
  v3 = *(v1 + 1880);

  return [v0 v3];
}

id sub_1000E2DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000B184C(a1, a2, a3, v3);
}

uint64_t sub_1000E2E18()
{

  return swift_allocObject();
}

uint64_t sub_1000E2E4C()
{

  return Publisher.map<A>(_:)();
}

uint64_t sub_1000E2E64()
{
  v2 = *(v0 + 64);

  return swift_unknownObjectRetain();
}

uint64_t sub_1000E2E7C(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return _convertErrorToNSError(_:)();
}

id sub_1000E2EF4()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_1000E2F2C()
{
  sub_1000037B0();
  v2 = *(v0 + *(v1 + 464));
  swift_unknownObjectRelease();
  sub_1000037B0();
  v4 = *(v0 + *(v3 + 472));

  sub_1000037B0();
  v6 = *(v0 + *(v5 + 480));

  return swift_unknownObjectRelease();
}

void *sub_1000E2F94()
{
  sub_1000037B0();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1000E3A50();
  }

  v2 = sub_1000FC0D8();
  v3 = *(v2 + *(*v2 + 464));
  swift_unknownObjectRelease();
  sub_1000036C8();
  v5 = *(v2 + *(v4 + 472));

  sub_1000036C8();
  v7 = *(v2 + *(v6 + 480));
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000E3024()
{
  v0 = sub_1000E2F94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000E3090()
{
  v1 = v0;
  sub_1000037B0();
  v3 = *(v0 + *(v2 + 128));
  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  sub_1000FC264();
  static os_log_type_t.error.getter();
  v4 = sub_100046184(&unk_100217040, &qword_1001989F0);
  v5 = sub_10000AB40();
  *(v5 + 16) = xmmword_100197F20;
  v6 = (v1 + *(*v1 + 464));
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();
  sub_100046184(&qword_100219560, &qword_10019E4F8);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v5 + 56) = &type metadata for String;
  v12 = sub_10000512C();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  os_log(_:dso:log:type:_:)();

  static os_log_type_t.error.getter();
  v122 = v4;
  v13 = sub_10000AB40();
  sub_100006B18(v13, v14, v15, v16, v17, v18, v19, v20, v99, v105, v111, v117, v122, v128, v21);
  ObjectType = swift_getObjectType();
  v106 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  sub_100046184(&qword_100218A80, &qword_10019D020);
  v24 = String.init<A>(describing:)();
  v13[3].n128_u64[1] = &type metadata for String;
  v13[4].n128_u64[0] = v12;
  v13[2].n128_u64[0] = v24;
  v13[2].n128_u64[1] = v25;
  v129 = v3;
  os_log(_:dso:log:type:_:)();

  v112 = sub_1000E3550();
  if (v28)
  {
    static os_log_type_t.error.getter();
    v29 = sub_10000AB40();
    v38 = sub_100006B18(v29, v30, v31, v32, v33, v34, v35, v36, ObjectType, v106, v112, v12, v123, v3, v37);
    (v23)(v101, v107, v38);
    v39 = String.init<A>(describing:)();
    v40 = v118;
    v29[3].n128_u64[1] = &type metadata for String;
    v29[4].n128_u64[0] = v118;
    v29[2].n128_u64[0] = v39;
    v29[2].n128_u64[1] = v41;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v42 = v26;
    v43 = v27;
    v44 = HIDWORD(v27);
    static os_log_type_t.error.getter();
    v45 = sub_10000AB40();
    sub_100006B18(v45, v46, v47, v48, v49, v50, v51, v52, ObjectType, v106, v112, v12, v123, v129, v53);
    v54[7] = v55;
    v54[8] = &protocol witness table for Int;
    v54[4] = v42;
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.error.getter();
    v56 = sub_1000119F8();
    sub_100006B18(v56, v57, v58, v59, v60, v61, v62, v63, v102, v108, v114, v119, v125, v131, v64);
    *(v65 + 56) = &type metadata for UInt32;
    *(v65 + 64) = &protocol witness table for UInt32;
    *(v65 + 32) = v44;
    sub_100003A40();
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.error.getter();
    v66 = sub_1000119F8();
    sub_100006B18(v66, v67, v68, v69, v70, v71, v72, v73, v103, v109, v115, v120, v126, v132, v74);
    *(v75 + 56) = &type metadata for UInt32;
    *(v75 + 64) = &protocol witness table for UInt32;
    *(v75 + 32) = v43;
    sub_100003A40();
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.error.getter();
    v76 = sub_1000119F8();
    sub_100006B18(v76, v77, v78, v79, v80, v81, v82, v83, v104, v110, v116, v121, v127, v133, v84);
    v85[7] = v86;
    v85[8] = &protocol witness table for Double;
    v85[4] = v113;
    sub_100003A40();
    os_log(_:dso:log:type:_:)();
    v40 = v118;
  }

  static os_log_type_t.error.getter();
  v87 = sub_10000AB40();
  sub_100006B18(v87, v88, v89, v90, v91, v92, v93, v94, v101, v107, v113, v118, v124, v130, v95);
  v134 = *(v1 + *(*v1 + 472));
  swift_errorRetain();
  sub_100046184(&unk_10021BC20, &unk_10019E500);
  v96 = String.init<A>(describing:)();
  v87[3].n128_u64[1] = &type metadata for String;
  v87[4].n128_u64[0] = v40;
  v87[2].n128_u64[0] = v96;
  v87[2].n128_u64[1] = v97;
  sub_100008068();
  os_log(_:dso:log:type:_:)();

  static os_log_type_t.error.getter();
  sub_100008068();
  return os_log(_:dso:log:type:_:)();
}

uint64_t sub_1000E3550()
{
  sub_1000037B0();
  v2 = (v0 + *(v1 + 464));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v6(ObjectType, v4);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_7:
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v19 = sub_10000AB40();
    *(v19 + 16) = xmmword_100197F20;
    v83 = v6(ObjectType, v4);
    sub_100046184(&qword_100218A80, &qword_10019D020);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000512C();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_100008068();
    sub_1000FD208();

    sub_1000FC7AC();
    *&result = 0.0;
    return result;
  }

  [v9 statusCode];
  if (!(*(v4 + 8))(ObjectType, v4))
  {

    *&result = 0.0;
    return result;
  }

  sub_1000066DC();
  *&v88 = 0xD000000000000021;
  *(&v88 + 1) = v10;
  v11 = AnyHashable.init<A>(_:)();
  sub_100004390(v11, v12, v13, v14, v15, v16, v17, v18, v61, v65, v69, v74, v79, v83, v84, v85, v86, v87, v88);
  sub_10003430C(&v83);
  if (v89)
  {
    sub_100005FC8();
  }

  else
  {
    sub_100048450(&v88);
  }

  sub_1000066DC();
  *&v88 = 0xD00000000000001DLL;
  *(&v88 + 1) = v24;
  v25 = AnyHashable.init<A>(_:)();
  sub_100004390(v25, v26, v27, v28, v29, v30, v31, v32, v62, v66, v70, v75, v80, v83, v84, v85, v86, v87, v88);
  sub_10003430C(&v83);
  if (v89)
  {
    sub_100005FC8();
  }

  else
  {
    sub_100048450(&v88);
  }

  sub_1000066DC();
  v71 = v33;
  v34 = AnyHashable.init<A>(_:)();
  sub_100004390(v34, v35, v36, v37, v38, v39, v40, v41, v63, 0xD00000000000001BLL, v71, v76, v81, v83, v84, v85, v86, v87, v88);
  sub_10003430C(&v83);
  if (v89)
  {
    if (sub_100005FC8())
    {
      v78 = v67;
      goto LABEL_19;
    }
  }

  else
  {
    sub_100048450(&v88);
  }

  sub_1000066DC();
  v72 = v42;
  v43 = AnyHashable.init<A>(_:)();
  sub_100004390(v43, v44, v45, v46, v47, v48, v49, v50, v64, 0xD00000000000001BLL, v72, v77, v82, v83, v84, v85, v86, v87, v88);
  sub_10003430C(&v83);
  if (!v89)
  {
    sub_100048450(&v88);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  v51 = *&v78;
  sub_1000066DC();
  v73 = v52;
  v53 = AnyHashable.init<A>(_:)();
  sub_100004390(v53, v54, v55, v56, v57, v58, v59, v60, v64, 0xD00000000000001ALL, v73, v78, v82, v83, v84, v85, v86, v87, v88);

  sub_10003430C(&v83);
  if (v89)
  {
    if (sub_100005FC8())
    {
      *&result = v68 - v51;
      return result;
    }
  }

  else
  {
    sub_100048450(&v88);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

uint64_t sub_1000E3960(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100198E20;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  *(v7 + 96) = &type metadata for UInt32;
  *(v7 + 104) = &protocol witness table for UInt32;
  *(v7 + 72) = v3;
  *(v7 + 136) = &type metadata for UInt32;
  *(v7 + 144) = &protocol witness table for UInt32;
  *(v7 + 112) = v6;
  *(v7 + 176) = &type metadata for Double;
  *(v7 + 184) = &protocol witness table for Double;
  *(v7 + 152) = a3;
  sub_1000FD208("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_1000E3A50()
{
  sub_1000037B0();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1000E3550();
    if (v2)
    {
      sub_100046184(&unk_100217040, &qword_1001989F0);
      v3 = sub_10000AB40();
      *(v3 + 16) = xmmword_100197F20;
      sub_1000036C8();
      v5 = (v0 + *(v4 + 464));
      v6 = *v5;
      v7 = v5[1];
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7);
      sub_100046184(&qword_100218A80, &qword_10019D020);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      *(v3 + 56) = &type metadata for String;
      *(v3 + 64) = sub_10000512C();
      *(v3 + 32) = v9;
      *(v3 + 40) = v11;
      sub_100008068();
      sub_1000FD208();
    }

    else
    {
      sub_1000036C8();
      (*(v12 + 568))(v13, v14);
    }

    sub_1000FC7AC();
  }
}

uint64_t sub_1000E3BE8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*a1 + 480);
  if (*(a1 + v3))
  {
    v4 = a1;
    v5 = *(a1 + v3);
    swift_unknownObjectRetain();
    is_activated = nw_activity_is_activated();
    v7 = *v4;
    if (is_activated)
    {
      *(v4 + *(v7 + 472));
      nw_activity_complete_with_reason();
    }

    else
    {
      v8 = *(v4 + *(v7 + 128));
      static os_log_type_t.info.getter();
      sub_100046184(&unk_100217040, &qword_1001989F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      sub_100046184(&qword_100219548, &unk_10019E4E8);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_10000512C();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:type:_:)();
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_1000E3D6C(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  sub_100046184(&qword_100219540, &unk_1001A8690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198E20;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(NSNumber) initWithDouble:a3];
  sub_1000066DC();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:a2];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v6];
  sub_10000EA9C();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000E3F34()
{
  sub_1000041DC();
  sub_1000E4520();
  swift_endAccess();
  *(v0 + 32) = 0;
  sub_1000036C8();
  return (*(v1 + 248))();
}

uint64_t sub_1000E3F9C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];

      sub_1000E4248();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

void sub_1000E4098()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_10009724C();
  v4 = v3;
  if (!v2)
  {

LABEL_15:

    return;
  }

  if (v1)
  {
    v5 = *(v3 + 16);
    swift_retain_n();
    if (!v5)
    {

      v6 = v1;
      goto LABEL_13;
    }

    v6 = v1;
    v7 = v1;
    while (1)
    {
      v8 = *(v7 + 16);
      if (!v8)
      {
        break;
      }

      v9 = sub_1000E4AA0(v4);

      v7 = sub_1000E4AE8(v9);
      v10 = *(v8 + 32);

      if (v10 < v5)
      {

        v6 = v7;
      }
    }

    v11 = *(v7 + 24);
    if (v11)
    {
      v12 = sub_1000E96C4(v4, *(v11 + 16));

      if ((v12 & 1) == 0)
      {

LABEL_14:

        goto LABEL_15;
      }

LABEL_13:
      sub_100097C40(v6, v1, v2, sub_1000E4D64);

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1000E4248()
{
  sub_1000041DC();
  if (*(v0 + 24) < 1)
  {
    return swift_endAccess();
  }

  sub_10009724C();
  v2 = sub_1000E4560(v1);
  swift_endAccess();

  if (v2)
  {
    result = sub_1001092C8();
    v4 = result + 1024;
    if (result >= 0xFFFFFFFFFFFFFC00)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + 32);
      v6 = v5 >= v4;
      v7 = v5 - v4;
      if (v6)
      {
        *(v0 + 32) = v7;
        sub_1000036C8();
        v9 = *(v8 + 240);
        v10 = sub_1000043AC();
        v11(v10);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000E432C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1001092C8();
  v6 = *(v1 + 32);
  v7 = __CFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v5;
  if (v8 < 0x200000)
  {
    goto LABEL_9;
  }

  if (qword_1002140D8 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    sub_10000964C(v9, qword_100232AF8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "!!! exceeded max cost, flushing cache !!!", v12, 2u);
    }

    v13 = *(v3 + 32);
    v7 = __CFADD__(v13, v2);
    v14 = v13 + v2;
    if (v7)
    {
      break;
    }

    if (v14 < 0x200000)
    {
      goto LABEL_17;
    }

    sub_1000036C8();
    (*(v15 + 264))(v16 + 1);
LABEL_9:
    sub_1000041DC();
    sub_10009724C();
    sub_1000E46D8(v17, a1, 1);
    swift_endAccess();

    v18 = v2 + 1024;
    if (v2 >= 0xFFFFFFFFFFFFFC00)
    {
LABEL_13:
      __break(1u);
    }

    else
    {
      v19 = *(v3 + 32);
      v7 = __CFADD__(v19, v18);
      v20 = v19 + v18;
      if (!v7)
      {
        *(v3 + 32) = v20;
        sub_1000036C8();
        v22 = *(v21 + 256);
        v23 = sub_1000043AC();
        v24(v23);
        return;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1000E4520()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;

    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
  }

  v0[1] = 0;
  return result;
}

uint64_t sub_1000E4560(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1;
  v5 = *v1;

  v6 = 0;
  v7 = 0;
  while (*(v2 + 16))
  {
    v6 = sub_1000E4AA0(a1);

    v8 = sub_1000E4AE8(v6);

    v7 = v2;
    v2 = v8;
  }

  v9 = *(v2 + 24);
  if (!v9 || (sub_100052A78(*(v9 + 16), a1) & 1) == 0)
  {

    return 0;
  }

  v10 = *(v9 + 24);

  if (v7)
  {

    if (*(v7 + 16))
    {
      v11 = sub_1000E4AE8(!v6);
      v12 = *(v11 + 16);
    }

    else
    {
      v13 = 0;
      v11 = 0;
    }

    *(v7 + 16) = v13;

    if (v11)
    {
      v16 = *(v11 + 24);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v7 + 24);
    *(v7 + 24) = v16;
  }

  else
  {
    v15 = *(v2 + 24);
    *(v2 + 24) = 0;
  }

  v18 = v3[1];
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (!v19)
  {
    v3[1] = v20;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E46D8(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = v3[1];
  if (!v7)
  {
    sub_100046184(&qword_1002196C8, &qword_10019E568);
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = a2;
    sub_100046184(&qword_1002196D0, &unk_10019E570);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v32 = *v4;

    result = 1;
    *v4 = v31;
    v4[1] = 1;
    return result;
  }

  v8 = *v3;
  if (!*v3)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v10 = *v3;

  v11 = v8;
  while (*(v11 + 16))
  {
    v12 = sub_1000E4AA0(v6);

    v11 = sub_1000E4AE8(v12);
  }

  v13 = *(v11 + 24);
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = sub_1000E4B24(v6);
  if (v14 != -1)
  {
    v16 = v14;
    v17 = v15;
    v18 = (v15 >> 8) & 1;
    sub_100046184(&qword_1002196C0, &qword_10019E560);
    swift_allocObject();
    v19 = sub_1000E4A18(v16, v17, v18);
    v37 = sub_1000E4AA0(v6);
    v38 = v19;
    v20 = sub_1000E4AE8(v37);
    sub_100046184(&qword_1002196C8, &qword_10019E568);
    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    *(v21 + 24) = a2;
    v22 = v7;
    v23 = *(v20 + 24);
    *(v20 + 24) = v21;

    while (1)
    {
      v24 = *(v8 + 16);
      if (!v24)
      {
        break;
      }

      v25 = *(v24 + 32);
      if (v16 < v25 || v25 == v16 && *(v24 + 40) < v17)
      {
        break;
      }

      v26 = sub_1000E4AA0(v6);

      v8 = sub_1000E4AE8(v26);
    }

    v27 = *(v8 + 16);
    v28 = sub_1000E4AE8(!v37);
    if (v27)
    {
      v29 = *(v28 + 16);
      *(v28 + 16) = v27;
    }

    else
    {
      v34 = *(v28 + 24);
      *(v28 + 24) = *(v8 + 24);

      v35 = *(v8 + 24);
      *(v8 + 24) = 0;
    }

    v36 = *(v8 + 16);
    *(v8 + 16) = v38;

    if (!__OFADD__(v22, 1))
    {
      v4[1] = v22 + 1;
      return 1;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (a3)
  {

    v33 = *(v13 + 24);
    *(v13 + 24) = a2;

    return 1;
  }

  return 0;
}

uint64_t sub_1000E4A18(uint64_t a1, char a2, char a3)
{
  sub_100046184(&qword_1002196D0, &unk_10019E570);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v3 + 16) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v3 + 24) = v8;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 41) = a3;
  return v3;
}

BOOL sub_1000E4AA0(_BOOL8 result)
{
  v2 = *(v1 + 32);
  if (v2 >= *(result + 16))
  {
    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return (*(v1 + 40) & *(result + v2 + 32)) != 0 || *(v1 + 41) == 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4AE8(char a1)
{
  v2 = 16;
  if (a1)
  {
    v2 = 24;
  }

  v3 = *(v1 + v2);
}

uint64_t sub_1000E4B24(uint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = *(v3 + 16);
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = a1 + 32;
  v8 = v3 + 32;
  while (v6 != v2)
  {
    v9 = v2 + 1;
    v10 = *(v7 + v2);
    v11 = *(v8 + v2++);
    if (v10 != v11)
    {
      v12 = v11 ^ v10;
      v6 = v9 - 1;
LABEL_12:
      sub_1000E4B00(v12);
      return v6;
    }
  }

  if (v4 < v5)
  {
    v12 = *(v7 + v6);
    goto LABEL_12;
  }

  if (v5 < v4)
  {
    v12 = *(v8 + v6);
    goto LABEL_12;
  }

  return -1;
}

uint64_t sub_1000E4BDC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000E4D38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1000E4D64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a2, *a3) & 1;
}

id sub_1000E4D94(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFeedback:a1];
  [v4 setQueryId:a2];

  return v4;
}

void sub_1000E4DF8(uint64_t a1, unint64_t a2)
{
  if (!sub_1000235CC(a1, a2))
  {
    v3 = sub_1000E504C();
    if (v4)
    {
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10 = v6;
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v11 = [objc_opt_self() defaultCenter];
        sub_100046184(&unk_100217020, &unk_10019B4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100197F20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        *(inited + 96) = type metadata accessor for ContextUpdate(0);
        v13 = sub_1000205C4((inited + 72));
        *v13 = v7;
        v13[1] = v8;
        v13[2] = v9;
        v13[3] = v10;
        swift_storeEnumTagMultiPayload();
        v14 = Dictionary.init(dictionaryLiteral:)();
        sub_100033AC0(@"com.apple.parsecd.contextUpdate", v2, v14, v11);

        return;
      }
    }
  }

  if (qword_1002140E8 != -1)
  {
    sub_100005E54();
  }

  v15 = type metadata accessor for Logger();
  sub_10000964C(v15, qword_100232B28);
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, "error parsing silhouette data", v17, 2u);
    sub_1000036D4();
  }
}

uint64_t sub_1000E504C()
{
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v35 = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:&v35];

  v3 = v35;
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v4 = sub_100046184(qword_100214E88, qword_100198FA0);
    sub_1000084A4(v4, v5, v6, v4, v7, v8, v9, v10, v35);
    swift_dynamicCast();
    v11 = v35;
    sub_1000BCDCC(7104883, 0xE300000000000000, v35, &v36);
    if (v37)
    {
      sub_1000084A4(v12, v13, v14, &type metadata for String, v15, v16, v17, v18, v35);
      if (swift_dynamicCast())
      {
        v19 = v35;
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000F94C(&v36, &qword_1002181D0, &qword_100198E00);
    }

    v19 = 0;
LABEL_12:
    sub_1000BCDCC(30320, 0xE200000000000000, v11, &v36);

    if (v37)
    {
      sub_1000084A4(v27, v28, v29, &type metadata for String, v30, v31, v32, v33, v35);
      swift_dynamicCast();
    }

    else
    {
      sub_10000F94C(&v36, &qword_1002181D0, &qword_100198E00);
    }

    return v19;
  }

  v20 = v3;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1002140E8 != -1)
  {
    sub_100005E54();
  }

  v21 = type metadata accessor for Logger();
  sub_10000964C(v21, qword_100232B28);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error parsing silhouette JSON, adding unparsed string instead", v24, 2u);
    sub_1000036D4();
  }

  v25 = Data._bridgeToObjectiveC()().super.isa;
  v26 = [(objc_class *)v25 base64EncodedStringWithOptions:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v19;
}

uint64_t sub_1000E5324()
{
  sub_10000B218(v0 + 16);

  v1 = *(v0 + 48);

  return v0;
}

uint64_t sub_1000E5354()
{
  sub_1000E5324();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000E53A0(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (a1 != 1);
  return v2 & 1;
}

uint64_t sub_1000E53C8(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (a1 != 1);
  return v2 & 1;
}

uint64_t sub_1000E5404()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v4 = sub_100005FF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7parsecd13MotionManager_lastUpdate;
  swift_beginAccess();
  (*(v6 + 16))(v10, v2 + v11, v1);
  Date.timeIntervalSinceNow.getter();
  v13 = v12;
  result = (*(v6 + 8))(v10, v1);
  if (v13 < -300.0)
  {
    return sub_1000E560C();
  }

  return result;
}

uint64_t sub_1000E560C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = v0[5];
    v4 = v0[2];
    v5 = v0[3];
    v6 = swift_allocObject();
    v6[2] = v0;
    v6[3] = v2;
    v6[4] = v3;
    v8[4] = sub_1000E5BF8;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000E5A00;
    v8[3] = &unk_1001FC3D8;
    v7 = _Block_copy(v8);

    swift_unknownObjectRetain();

    [v4 startActivityUpdatesToQueue:v5 withHandler:v7];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000E571C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v9 = a1;
    if ([v9 stationary])
    {
      v10 = 1;
    }

    else if ([v9 automotive])
    {
      v10 = 5;
    }

    else if ([v9 walking])
    {
      v10 = 2;
    }

    else if ([v9 running])
    {
      v10 = 3;
    }

    else if ([v9 cycling])
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    if (*(a2 + 48) + 1 != v10 + 1)
    {
      *(a2 + 48) = v10;
      Date.init()();
      v13 = OBJC_IVAR____TtC7parsecd13MotionManager_lastUpdate;
      swift_beginAccess();
      (*(v5 + 40))(a2 + v13, v8, v4);
      swift_endAccess();
      v14 = [objc_opt_self() defaultCenter];
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v16;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = type metadata accessor for ContextUpdate(0);
      *sub_1000205C4((inited + 72)) = *(a2 + 48);
      swift_storeEnumTagMultiPayload();
      v17 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(@"com.apple.parsecd.contextUpdate", 0, v17, v14);
    }

    return [*(a2 + 16) stopActivityUpdates];
  }

  else
  {
    v11 = *(a2 + 16);

    return [v11 stopActivityUpdates];
  }
}

void sub_1000E5A00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000E5A6C()
{
  sub_10000B218(v0 + 32);
  v1 = OBJC_IVAR____TtC7parsecd13MotionManager_lastUpdate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000E5AE4()
{
  sub_1000E5A6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000E5B44()
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

id sub_1000E5BF8(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1000E571C(a1, v1[2]);
}

uint64_t sub_1000E5C04(void (*a1)(uint64_t *__return_ptr))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1(&v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

uint64_t sub_1000E5C60(void (*a1)(uint64_t *__return_ptr))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1(&v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

uint64_t sub_1000E5CBC(uint64_t result)
{
  if (result >= 3u)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000E5CE8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E5CBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E5D20()
{
  v1 = *(v0 + 40);

  v2 = sub_1000866B8();

  return v2;
}

uint64_t sub_1000E5D6C()
{
  v1 = *(v0 + 40);

  v2 = sub_100005854();
  sub_100087C70(v2, v3);
}

uint64_t sub_1000E5DC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    swift_unknownObjectRetain();
    v2 = sub_100055660();
    if (v3 != 2)
    {
      v4 = v3;
      if (v2)
      {
        if (qword_1002141A8 != -1)
        {
          v8 = v2;
          swift_once();
          v2 = v8;
        }

        v5 = *&qword_100219860 * v2;
      }

      else
      {
        v5 = 0.0;
      }

      if (qword_1002141D8 != -1)
      {
        swift_once();
      }

      if (*&qword_10021B218 * 1000.0 <= v5)
      {
        if (v4)
        {
          sub_100005994();
          sub_100055834();
          v6 = 0;
LABEL_16:
          swift_unknownObjectRelease();
          return v6;
        }

        sub_100008A4C();
        sub_1000E623C();
      }
    }

    v6 = 1;
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_1000E5F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000E848C;
  *(v8 + 24) = v7;
  v12[4] = sub_100028274;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000282A4;
  v12[3] = &unk_1001FC698;
  v9 = _Block_copy(v12);

  v10 = sub_100003898();
  sub_10000D1D4(v10);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E609C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_100046184(&qword_100217480, &unk_100198F70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for UserAgent();
  sub_1000051C0(v6, 1, 1, v7);
  sub_10001C564(0, v6, 3);
  result = sub_10000B298(v6, &qword_100217480, &unk_100198F70);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_1000E6178()
{
  v0 = [objc_allocWithZone(_CPConnectionInvalidatedFeedback) init];
  if (v0)
  {
    v3 = v0;
    v1 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v0];
    [v1 setQueryId:0];
    if (v1)
    {
      sub_100005854();
      sub_100014D74();

      v2 = v1;
    }

    else
    {
      v2 = v3;
    }
  }
}

void sub_1000E623C()
{
  sub_10000AE9C();
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100003650(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v9 = *(v0 + 48);
  *(v8 - v7) = v9;
  v10 = sub_10000B0AC();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100006F90();
  v14(v13);
  if (v9)
  {
    v15 = *(v0 + 16);
    *(v0 + 88) = 2;
    if (v15)
    {
      swift_unknownObjectRetain();
      sub_10005475C();
      swift_unknownObjectRelease();
    }

    sub_10001DE14();
    sub_1000E5D6C();
    if (*(v0 + 32))
    {
      v16 = *(v0 + 32);

      sub_1000F0A9C();
    }

    v17 = *(v0 + 16);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    swift_unknownObjectRelease();
    v18 = *(v0 + 136);
    sub_1000E63B0();
    if (v2)
    {
      v2();
    }

    sub_100007CB4();
  }

  else
  {
    __break(1u);
  }
}