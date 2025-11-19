uint64_t sub_1000393BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100031588(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100039510();
      goto LABEL_7;
    }

    sub_10032A6D0(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_100031588(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8) + 72) * v10;

    return sub_10003974C(a1, v18);
  }

LABEL_13:
  sub_10032C5F0(v10, a2, a1, v16);
}

void *sub_100039510()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_100526720, &qword_1004584E8);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_10002ADF8(*(v6 + 56) + v23, v5, type metadata accessor for HostedRoutingSessionSnapshot);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_10002AF68(v5, *(v8 + 56) + v23, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

uint64_t sub_10003974C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000397B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100039818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v3 = sub_1001BC5A8(&qword_100523C08, &qword_100451AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v155 = &v146 - v5;
  v160 = type metadata accessor for RoutingControls();
  v159 = *(v160 - 8);
  v6 = *(v159 + 64);
  __chkstk_darwin(v160);
  v166 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Date();
  v157 = *(v158 - 8);
  v8 = *(v157 + 64);
  __chkstk_darwin(v158);
  v165 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v156 = &v146 - v12;
  v13 = sub_1001BC5A8(&qword_100523C10, &qword_100451AE8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v164 = &v146 - v15;
  v16 = type metadata accessor for RoutingItem();
  v17 = *(v16 - 8);
  v180 = v16;
  v181 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v152 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v161 = &v146 - v21;
  v149 = type metadata accessor for RoutingSession.Action.Kind();
  v147 = *(v149 - 8);
  v22 = *(v147 + 64);
  __chkstk_darwin(v149);
  v148 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for RoutingSession.Action();
  v150 = *(v151 - 8);
  v24 = *(v150 + 64);
  __chkstk_darwin(v151);
  v154 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for HostedRoutingItem(0);
  v175 = *(v178 - 1);
  v26 = *(v175 + 64);
  v27 = __chkstk_darwin(v178);
  v179 = (&v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v31 = &v146 - v30;
  v32 = __chkstk_darwin(v29);
  v176 = &v146 - v33;
  v34 = __chkstk_darwin(v32);
  v177 = &v146 - v35;
  __chkstk_darwin(v34);
  v37 = &v146 - v36;
  v38 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v153 = &v146 - v40;
  v41 = type metadata accessor for RoutingSession.Properties();
  v172 = *(v41 - 8);
  v42 = *(v172 + 64);
  v43 = __chkstk_darwin(v41);
  v162 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v171 = &v146 - v46;
  __chkstk_darwin(v45);
  v48 = &v146 - v47;
  v49 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v52 = &v146 - v51;
  v53 = type metadata accessor for HostedRoutingSession(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v57 = (&v146 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D9AC(a1, v52, &qword_100523620, &unk_1004511D0);
  v58 = *(v54 + 48);
  v170 = v53;
  if (v58(v52, 1, v53) == 1)
  {
    sub_1000038A4(a1, &qword_100523620, &unk_1004511D0);
    sub_1000038A4(v52, &qword_100523620, &unk_1004511D0);
    v59 = 1;
    v60 = v167;
    goto LABEL_75;
  }

  sub_100032E08(v52, v57, type metadata accessor for HostedRoutingSession);
  LOBYTE(v182) = 0;
  sub_100017F84(&qword_100523C20, &type metadata accessor for RoutingSession.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  v62 = *v57;
  v61 = v57[1];
  v68 = *v57 == 0x4C41434F4CLL;
  v163 = a1;
  v168 = v48;
  v169 = v41;
  v173 = v61;
  v174 = v57;
  v146 = v62;
  if ((!v68 || v61 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v178 = &_swiftEmptyArrayStorage;
    v66 = v161;
    goto LABEL_51;
  }

  v64 = sub_10003AC60();
  v65 = v64[2];
  v66 = v161;
  v67 = v175;
  if (v65)
  {
    v41 = 0;
    a1 = 34816;
    do
    {
      v71 = v64[2];
      if (v41 >= v71)
      {
        goto LABEL_77;
      }

      sub_10003271C(v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v41, v37, type metadata accessor for HostedRoutingItem);
      v72 = v37 + v178[16];
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      v76 = (v75 >> 8) & 6 | (v75 >> 7) & 1;
      if (v76 > 3)
      {
        if (v76 != 4 && v76 != 5)
        {
          goto LABEL_19;
        }

        v77 = v75 & 0xF97F;
      }

      else if (v76 <= 1)
      {
        if (v76)
        {
          goto LABEL_31;
        }

        v77 = *(v73 + 32);
        v78 = v73 + 16;
        v73 = *(v73 + 16);
        v74 = *(v78 + 8);
      }

      else
      {
        v77 = v75 & 0xF97F;
      }

      if (v77 >> 11 == 17)
      {
        v68 = v77 == 34816 && v74 == 0;
        if (v68 && v73 == 7 || v76 == 3)
        {
LABEL_31:

          v79 = v153;
          sub_100032E08(v37, v153, type metadata accessor for HostedRoutingItem);
          (*(v67 + 56))(v79, 0, 1, v178);
          sub_1000038A4(v79, &qword_100523C18, &qword_100451AF0);
          goto LABEL_33;
        }
      }

      else if (v76 == 3)
      {
        goto LABEL_31;
      }

LABEL_19:
      ++v41;
      sub_10002181C(v37, type metadata accessor for HostedRoutingItem);
    }

    while (v65 != v41);
  }

  v80 = v153;
  (*(v67 + 56))(v153, 1, 1, v178);
  sub_1000038A4(v80, &qword_100523C18, &qword_100451AF0);
  v81 = v162;
  static RoutingSession.Properties.supportsAudioSampling.getter();
  v82 = v171;
  sub_1000390B8(v171, v81);
  v83 = *(v172 + 8);
  v84 = v81;
  v85 = v169;
  v83(v84, v169);
  v83(v82, v85);
LABEL_33:
  v86 = v174[3];
  v182 = v174[2];

  sub_100032CAC(v87, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v37 = v182;
  v41 = v182[2];
  if (v41)
  {
    v88 = 0;
    v64 = &_swiftEmptyArrayStorage;
    a1 = v175;
    while (1)
    {
      v71 = *(v37 + 16);
      if (v88 >= v71)
      {
        break;
      }

      v89 = (*(a1 + 80) + 32) & ~*(a1 + 80);
      v90 = *(a1 + 72);
      v91 = v177;
      sub_10003271C(v37 + v89 + v90 * v88, v177, type metadata accessor for HostedRoutingItem);
      if ((*(v91 + v178[11]) & 8) != 0 && *(v91 + v178[9]) == 1)
      {
        sub_100032E08(v91, v176, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v64[2] + 1, 1);
          v64 = v182;
        }

        v94 = v64[2];
        v93 = v64[3];
        if (v94 >= v93 >> 1)
        {
          sub_10002A42C(v93 > 1, v94 + 1, 1);
          v64 = v182;
        }

        v64[2] = v94 + 1;
        sub_100032E08(v176, v64 + v89 + v94 * v90, type metadata accessor for HostedRoutingItem);
        a1 = v175;
      }

      else
      {
        sub_10002181C(v91, type metadata accessor for HostedRoutingItem);
      }

      if (v41 == ++v88)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v63 = sub_100032F14(v71 > 1, v64, 1, v63, &qword_100524180, &qword_100455090, &type metadata accessor for RoutingSession.Action);
    goto LABEL_48;
  }

  v64 = &_swiftEmptyArrayStorage;
LABEL_46:

  v95 = v64[2];

  if (!v95)
  {
    v178 = &_swiftEmptyArrayStorage;
    a1 = v163;
    v48 = v168;
    v41 = v169;
    goto LABEL_51;
  }

  static LocalizedStrings.RoutingSession.Action.shareAudio.getter();
  (*(v147 + 104))(v148, enum case for RoutingSession.Action.Kind.shareAudio(_:), v149);

  RoutingSession.Action.init(title:symbolName:kind:sessionIdentifier:)();
  v63 = sub_100032F14(0, 1, 1, &_swiftEmptyArrayStorage, &qword_100524180, &qword_100455090, &type metadata accessor for RoutingSession.Action);
  v37 = *(v63 + 2);
  v71 = *(v63 + 3);
  v64 = (v37 + 1);
  a1 = v163;
  v41 = v169;
  if (v37 >= v71 >> 1)
  {
    goto LABEL_78;
  }

LABEL_48:
  v48 = v168;
  v96 = v151;
  v97 = v150;
  *(v63 + 2) = v64;
  v98 = *(v97 + 32);
  v97 += 32;
  v99 = (*(v97 + 48) + 32) & ~*(v97 + 48);
  v178 = v63;
  v98(v63 + v99 + *(v97 + 40) * v37, v154, v96);
LABEL_51:
  v100 = v170;
  if (*(v174 + v170[14]) == 1)
  {
    v101 = v162;
    static RoutingSession.Properties.limitedRouting.getter();
    v102 = v171;
    sub_1000390B8(v171, v101);
    v103 = *(v172 + 8);
    v103(v101, v41);
    v103(v102, v41);
    v100 = v170;
  }

  if (*(v174 + v100[15]) == 1)
  {
    v104 = v162;
    static RoutingSession.Properties.requiresAuthorization.getter();
    v105 = v171;
    sub_1000390B8(v171, v104);
    v106 = *(v172 + 8);
    v106(v104, v41);
    v106(v105, v41);
  }

  v107 = v174;
  v108 = v174[2];
  v109 = *(v108 + 16);
  if (v109)
  {
    v182 = &_swiftEmptyArrayStorage;

    sub_10003AF58(0, v109, 0);
    v110 = v108 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
    v111 = *(v175 + 72);
    v112 = v182;
    do
    {
      sub_10003271C(v110, v31, type metadata accessor for HostedRoutingItem);
      v113 = v179;
      sub_10003271C(v31, v179, type metadata accessor for HostedRoutingItem);
      sub_1002592C0(v113, v66);
      sub_10002181C(v31, type metadata accessor for HostedRoutingItem);
      v182 = v112;
      v115 = v112[2];
      v114 = v112[3];
      if (v115 >= v114 >> 1)
      {
        sub_10003AF58(v114 > 1, v115 + 1, 1);
        v112 = v182;
      }

      v112[2] = v115 + 1;
      (*(v181 + 32))(v112 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v115, v66, v180);
      v110 += v111;
      --v109;
    }

    while (v109);
    a1 = v163;
    v48 = v168;
    v41 = v169;
    v116 = v174;
  }

  else
  {

    v116 = v107;
  }

  v117 = *(v116 + 24);
  v118 = *(v117 + 16);
  if (v118)
  {
    v182 = &_swiftEmptyArrayStorage;
    sub_10003AF58(0, v118, 0);
    v119 = v117 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
    v120 = *(v175 + 72);
    v121 = v182;
    v122 = v152;
    do
    {
      sub_10003271C(v119, v31, type metadata accessor for HostedRoutingItem);
      v123 = v179;
      sub_10003271C(v31, v179, type metadata accessor for HostedRoutingItem);
      sub_1002592C0(v123, v122);
      sub_10002181C(v31, type metadata accessor for HostedRoutingItem);
      v182 = v121;
      v125 = v121[2];
      v124 = v121[3];
      if (v125 >= v124 >> 1)
      {
        sub_10003AF58(v124 > 1, v125 + 1, 1);
        v121 = v182;
      }

      v121[2] = v125 + 1;
      (*(v181 + 32))(v121 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v125, v122, v180);
      v119 += v120;
      --v118;
    }

    while (v118);
    a1 = v163;
    v48 = v168;
    v41 = v169;
    v116 = v174;
  }

  v126 = v170;
  v127 = v156;
  sub_10001D9AC(v116 + v170[7], v156, &qword_100523640, qword_100451520);
  sub_10003AF9C(v127, v164);
  (*(v157 + 16))(v165, v116 + v126[13], v158);
  v128 = (v116 + v126[12]);
  v129 = *v128;
  LODWORD(v181) = *(v128 + 4);
  (*(v159 + 16))(v166, v116 + v126[8], v160);
  v130 = (v116 + v126[11]);
  v131 = v130[1];
  if (v131)
  {
    v132 = *v130;
    v179 = v131;
    v180 = v132;
  }

  else
  {
    v179 = 0x800000010043DD00;
    v180 = 0xD000000000000013;
  }

  v133 = v116 + v126[16];
  if (*(v133 + 8))
  {
    v134 = *(v133 + 40);
    v176 = *(v133 + 32);
    v177 = v129;
    v136 = *(v133 + 16);
    v135 = *(v133 + 24);
    v137 = *v133;
    v138 = *(v133 + 49);
    v139 = *(v133 + 48);

    v48 = v168;
    v41 = v169;
    a1 = v163;
    v140 = v155;
    v116 = v174;
    RoutingSession.HostInfo.init(name:symbolName:productName:isVisibleSilentHost:isPersonalHost:)();
    v141 = type metadata accessor for RoutingSession.HostInfo();
    (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
  }

  else
  {
    v142 = type metadata accessor for RoutingSession.HostInfo();
    (*(*(v142 - 8) + 56))(v155, 1, 1, v142);
  }

  v143 = v172;
  (*(v172 + 16))(v171, v48, v41);
  LOBYTE(v182) = v181;
  v60 = v167;
  RoutingSession.init(identifier:preferredItems:remainingItems:nowPlayingInfo:lastPlayingSnapshot:volume:controls:actions:symbolName:hostInfo:properties:)();
  sub_1000038A4(a1, &qword_100523620, &unk_1004511D0);
  (*(v143 + 8))(v48, v41);
  sub_10002181C(v116, type metadata accessor for HostedRoutingSession);
  v59 = 0;
LABEL_75:
  v144 = type metadata accessor for RoutingSession();
  return (*(*(v144 - 8) + 56))(v60, v59, 1, v144);
}

uint64_t sub_10003AC60()
{
  v1 = type metadata accessor for HostedRoutingItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = *(v0 + 24);
  v24 = *(v0 + 16);

  result = sub_100032CAC(v10, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v12 = v24;
  v13 = v24[2];
  if (v13)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    v22 = v6;
    v23 = v1;
    while (v14 < v12[2])
    {
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = *(v2 + 72);
      sub_10003271C(v12 + v16 + v17 * v14, v8, type metadata accessor for HostedRoutingItem);
      if (v8[*(v1 + 36)] == 1)
      {
        sub_100032E08(v8, v6, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v15[2] + 1, 1);
          v15 = v24;
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          sub_10002A42C(v19 > 1, v20 + 1, 1);
          v15 = v24;
        }

        v15[2] = v20 + 1;
        v6 = v22;
        result = sub_100032E08(v22, v15 + v16 + v20 * v17, type metadata accessor for HostedRoutingItem);
        v1 = v23;
      }

      else
      {
        result = sub_10002181C(v8, type metadata accessor for HostedRoutingItem);
      }

      if (v13 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_13:

    return v15;
  }

  return result;
}

uint64_t sub_10003AEF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001BC5A8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

size_t sub_10003AF58(size_t a1, int64_t a2, char a3)
{
  result = sub_1000311D0(a1, a2, a3, *v3, &qword_1005241A0, &qword_1004550A0, &type metadata accessor for RoutingItem);
  *v3 = result;
  return result;
}

uint64_t sub_10003AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D9AC(a1, v14, &qword_100523640, qword_100451520);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000038A4(a1, &qword_100523640, qword_100451520);
    sub_1000038A4(v14, &qword_100523640, qword_100451520);
    v20 = 1;
    v21 = v41;
LABEL_5:
    v36 = type metadata accessor for RoutingSession.NowPlayingInfo();
    return (*(*(v36 - 8) + 56))(v21, v20, 1, v36);
  }

  v37 = a1;
  sub_100032E08(v14, v19, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  v22 = *(v19 + 2);
  v23 = *(v19 + 3);
  v25 = *(v19 + 4);
  v24 = *(v19 + 5);
  (*(v7 + 16))(v10, &v19[*(v15 + 36)], v6);
  result = (*(v38 + 16))(v40, &v19[*(v15 + 40)], v39);
  v27 = *(v19 + 6);
  v30 = *(v27 + 16);
  v28 = v27 + 16;
  v29 = v30;
  if (v30)
  {
    v31 = *(v19 + 14);
    v32 = *(v19 + 8);
    v33 = (v28 + 16 * v29);
    v34 = *v33;
    v35 = v33[1];

    v42 = 0;
    v21 = v41;
    RoutingSession.NowPlayingInfo.init(title:subtitle:playbackInfo:trackInfo:artworkToken:applicationBundleIdentifier:playbackProcessIdentifier:)();
    sub_1000038A4(v37, &qword_100523640, qword_100451520);
    sub_10002181C(v19, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v20 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B370(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10003B434(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_10003B478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 72) outputDevices];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003B550;
  v9[3] = &unk_1004B8A40;
  v10 = v3;
  v5 = v3;
  v6 = [v4 msv_firstWhere:v9];
  v7 = v6 == 0;

  return v7;
}

BOOL sub_10003B550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uid];
  if ([v4 containsUID:v5])
  {
    v6 = 1;
  }

  else if ([*(a1 + 32) isLocalDevice])
  {
    v6 = [v3 deviceType] != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_10003B6D8(id a1, MRDAVHostedRoutingControllerGroup *a2)
{
  v2 = [(MRDAVHostedRoutingControllerGroup *)a2 concreteEndpoint];
  v3 = [v2 isNativeEndpoint];

  return v3;
}

id sub_10003B790(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MRAVOutputDevice *)v2 avOutputDevice];
    v5 = [v4 name];
    if (v5)
    {
      [v3 setName:v5];
    }

    else
    {
      v6 = [v3 name];
      [v3 setName:v6];
    }
  }

  v7 = [[MRAVOutputDeviceDescription alloc] initWithDescriptor:v3];

  return v7;
}

void sub_10003BA3C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 80) allObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003BCBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 object];
  [v2 _removeClient:v3];
}

void sub_10003BE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003BE34(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10003C32C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v5 = [*(v4 + 32) debugName];
  v6 = [NSString stringWithFormat:@"<%@:%p %@", v3, v4, v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1 + 32) + 9) == 1)
  {
    v9 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@" TOMBSTONED"];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:@">"];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_10003C5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003C604(uint64_t a1)
{
  if (([*(*(a1 + 32) + 136) isValid] & 1) == 0)
  {
    Error = MRMediaRemoteCreateError();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = Error;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(*(a1 + 32) + 136) cryptoSession];
    if (([v5 isValid] & 1) == 0)
    {
      v6 = [*(*(a1 + 32) + 168) requiresCustomPairing];

      if (!v6)
      {
        goto LABEL_8;
      }

      v7 = MRMediaRemoteCreateError();
      v8 = *(*(a1 + 40) + 8);
      v5 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

LABEL_8:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    if (*(*(a1 + 32) + 152) || (v12 = MRMediaRemoteCreateError(), v13 = *(*(a1 + 40) + 8), v14 = *(v13 + 40), *(v13 + 40) = v12, v14, !*(*(*(a1 + 40) + 8) + 40)))
    {
      if (!*(*(a1 + 32) + 144))
      {
        v9 = MRMediaRemoteCreateError();
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }
}

void sub_10003C8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 msv_map:&stru_1004C1378];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] addEndpointsAddedCallback: %@", &v9, 0xCu);
  }

  v6 = [v3 msv_compactMap:&stru_1004C13B8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained recommender];
  [v8 updateRouteCandidates:v6];
}

MRIRRoute *__cdecl sub_10003C9D0(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  if ([(MRAVEndpoint *)v2 shouldDonate])
  {
    v3 = [MRIRRoute routeWithEndpoint:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10003CB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CB9C(uint64_t a1, void *a2)
{
  v3 = [a2 msv_firstWhere:&stru_1004BFB48];
  v4 = [MRRequestDetails alloc];
  v5 = [v4 initWithInitiator:MRRequestDetailsInitiatorPrewarming requestID:0 reason:@"MRDSystemEndpointControllerHelper added DUGL"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10016BCC8;
  v6[3] = &unk_1004B6FC0;
  v6[4] = *(a1 + 32);
  [v3 connectToExternalDeviceWithOptions:0 details:v5 completion:v6];
}

void sub_10003CD0C(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1[4] + 80);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        *(*(a1[6] + 8) + 24) |= [*(*(&v7 + 1) + 8 * v6) notifications];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10003CE28(uint64_t a1)
{
  v2 = [*(a1 + 32) _onSerialQueue_deviceInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10003CE74(uint64_t a1)
{
  v2 = [*(a1 + 32) endpoint];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _onReloadQueue_hostedExternalDeviceEndpointDidChange:v2];
    v2 = v3;
  }
}

NSString *__cdecl sub_10003CFC4(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  v3 = [(MRAVEndpoint *)v2 localizedName];
  v4 = [(MRAVEndpoint *)v2 uniqueIdentifier];

  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

  return v5;
}

void sub_10003D164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10003D278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003D328(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents_tracked] = 0;
  v4 = &v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents_eventName];
  *v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[1] = v5;
  v6 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_propertyMap;
  sub_1001BC5A8(&qword_100522D78, &qword_100450950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 48) = v8;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v9;
  v10 = sub_10003D4B4(inited, &qword_100522EA8, &qword_100450CA0, &qword_100522EB0, &unk_100450CA8);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522D80, &qword_1004509D0);
  swift_arrayDestroy();
  *&v1[v6] = v10;
  *&v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup] = 0;
  *&v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation] = 0;
  v1[OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

unint64_t sub_10003D4B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1001BC5A8(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;

      result = sub_10003D6A4(v11, a4, a5);
      if (v15)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      v16 = (v9[7] + 16 * result);
      *v16 = v12;
      v16[1] = v13;
      v17 = v9[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v9[2] = v19;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_10003D5C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      sub_1001BC5A8(a3, a4);
      v11 = *(*(v4 + 48) + 8 * v6);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10003D6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 40);
  sub_1001BC5A8(a2, a3);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003D5C4(a1, v8, a2, a3);
}

BOOL sub_10003D7AC()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v14 - v7;
  (*((swift_isaMask & *v0) + 0x68))(v6);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  sub_1000038A4(v8, &qword_1005228D8, &unk_100450060);
  if (v11 == 1)
  {
    Date.init()();
    (*(v10 + 56))(v5, 0, 1, v9);
    v12 = OBJC_IVAR___MRDTimingEvent_startDate;
    swift_beginAccess();
    sub_10003DBB8(v5, v0 + v12);
    swift_endAccess();
  }

  return v11 == 1;
}

id sub_10003D968(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    type metadata accessor for TimingEvent();
    v6 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v7 = *(v1 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

uint64_t sub_10003DB44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DC28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10001D9AC(v2 + v4, a2, &qword_1005228D8, &unk_100450060);
}

id SystemGroupSessionRemoteControlService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_10003DDEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F34;

  return sub_10003DFC4(v2);
}

uint64_t type metadata accessor for TimingEvent()
{
  result = qword_10052B5A8;
  if (!qword_10052B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003DEEC()
{
  v1 = *(*(type metadata accessor for SymmetricKeySize() - 8) + 64) + 15;
  *(v0 + 32) = swift_task_alloc();
  type metadata accessor for NearbyGroup();
  v2 = async function pointer to NearbyGroup.__allocating_init(members:service:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1001E2118;

  return NearbyGroup.__allocating_init(members:service:)(&_swiftEmptySetSingleton, 1);
}

uint64_t sub_10003DFC4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001E0E88;

  return sub_10003DEEC();
}

uint64_t sub_10003E4FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E534()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E56C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003E5C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E604()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E644()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E68C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E6CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003E71C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E764()
{
  v1 = sub_1001BC5A8(&qword_100521678, &unk_10044EB50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003E820()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E858()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E890()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E8C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003E950()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003E9B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E9F0()
{
  v1 = sub_1001BC5A8(&qword_100521B98, &qword_10044EE30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10003EAE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003EB2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EB80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EBB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EBF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EC30()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003EC78()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003ECC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003ED1C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003ED6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EDC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003EE10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EE80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003EED0()
{
  sub_1001C4034(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003EF10()
{
  sub_1001C4034(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003EF5C()
{
  sub_1001C4034(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003EFAC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F034()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F06C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F0A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F0F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F148()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F190()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F1C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F218()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F260()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F2B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F300()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F358()
{
  v1 = sub_1001BC5A8(&qword_100522920, &qword_100450090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F440()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F480()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F4B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F538()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F670()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F6B4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F704()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F754()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F78C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F7E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F828()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F860()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F8A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F8E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F918()
{
  v1 = *(v0 + 4);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  v10 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_10003FA1C()
{
  v1 = *(v0 + 4);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 7);

  v9 = *(v0 + 8);

  v10 = *(v0 + 9);

  (*(v3 + 8))(&v0[v5], v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_10003FB20()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_10003FBD0()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v4 | 7);
}

uint64_t sub_10003FC94()
{
  v1 = *(v0 + 16);
  sub_1001C2EC8(&qword_100521B70, &qword_10044EB30);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10003FDBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003FDFC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FE34(uint64_t result, uint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) != 0)
  {
    return sub_10001DAE0(result, a2, a3);
  }

  return result;
}

uint64_t sub_10003FE48(uint64_t result, uint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) != 0)
  {
    return sub_100019550(result, a2, a3);
  }

  return result;
}

uint64_t sub_10003FE5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FE94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  if ((~v2 & 0xFC) != 0)
  {
    sub_1002548A0(*(v0 + 24), *(v0 + 32), v2 | (*(v0 + 42) << 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003FEEC()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FF2C()
{
  sub_1002548A0(*(v0 + 16), *(v0 + 24), *(v0 + 32) | (*(v0 + 34) << 16));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003FF7C()
{
  v1 = type metadata accessor for MusicFavoriteStatusController.Status();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1002548A0(*(v0 + 16), *(v0 + 24), *(v0 + 32) | (*(v0 + 34) << 16));
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000400C0()
{
  v1 = *(v0 + 32);
  if ((~v1 & 0x6FE) != 0)
  {
    sub_100019550(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100040108(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

uint64_t sub_100040280(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000403F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoutingSessionConfiguration.Attribution();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000404A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoutingSessionConfiguration.Attribution();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100040548()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100040594()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1002485A4(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000405F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040638()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040670()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000406C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000406F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004076C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000407A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000407E8()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v17 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v10);

  v14 = *(v0 + v11 + 8);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | 7);
}

uint64_t sub_100040988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000409D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040A10()
{
  sub_1000196F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100040A54()
{
  v1 = *(v0 + 32);
  if ((~v1 & 0x6FE) != 0)
  {
    sub_100019550(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100040AB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040AF0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040B28()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040B68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040BB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040BF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040C74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040CCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040D2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100040D84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100040DDC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040E14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100040E74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100040ED4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040F14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040F4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040F84()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v16 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v10 + 8);

  v14 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v16 | 7);
}

uint64_t sub_1000411A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000411DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_1002485A4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v5 = *(v0 + 120);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100041244()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  sub_1002485A4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v6 = *(v0 + 136);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000412BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  sub_1002485A4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100041334()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v3 = *(v0 + 96);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004138C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  sub_1002485A4(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_100041404()
{
  v1 = type metadata accessor for HostedRoutingSourceSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[2];

  v6 = v0[5];

  v7 = v0[7];

  v8 = v0[8];

  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v3 + 24);

  v12 = *(v0 + v3 + 32);

  v13 = v0 + v3 + v1[7];
  v14 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = *(v13 + 1);

    v16 = *(v13 + 3);

    v17 = *(v13 + 5);

    sub_1002488FC(*(v13 + 6), *(v13 + 14), v13[60]);
    v18 = *(v13 + 8);

    v19 = v14[9];
    v20 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    (*(*(v20 - 8) + 8))(&v13[v19], v20);
    v21 = v14[10];
    v22 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
    (*(*(v22 - 8) + 8))(&v13[v21], v22);
    v23 = *&v13[v14[11] + 8];
  }

  v24 = v1[8];
  v25 = type metadata accessor for RoutingControls();
  (*(*(v25 - 8) + 8))(&v9[v24], v25);
  v26 = *&v9[v1[9] + 8];

  v27 = &v9[v1[15]];
  if (*(v27 + 1))
  {

    v28 = *(v27 + 3);

    v29 = *(v27 + 5);

    v30 = *(v27 + 8);

    v31 = *(v27 + 10);
  }

  v32 = v1[18];
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 8))(&v9[v32], v33);
  v34 = v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = *(v34 + 1);

  sub_1002485A4(*(v34 + 2), *(v34 + 3), *(v34 + 4), *(v34 + 5), v34[48]);

  return _swift_deallocObject(v0, ((v3 + v4 + 63) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000416E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_1002485A4(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v5 = *(v0 + 128);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100041754()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004179C()
{
  v1 = type metadata accessor for HostedRoutingSourceSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = v0 + v3 + v1[7];
  v10 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 8);

    v12 = *(v9 + 24);

    v13 = *(v9 + 40);

    sub_1002488FC(*(v9 + 48), *(v9 + 56), *(v9 + 60));
    v14 = *(v9 + 64);

    v15 = v10[9];
    v16 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = v10[10];
    v18 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    v19 = *(v9 + v10[11] + 8);
  }

  v20 = v1[8];
  v21 = type metadata accessor for RoutingControls();
  (*(*(v21 - 8) + 8))(v5 + v20, v21);
  v22 = *(v5 + v1[9] + 8);

  v23 = (v5 + v1[15]);
  if (v23[1])
  {

    v24 = v23[3];

    v25 = v23[5];

    v26 = v23[8];

    v27 = v23[10];
  }

  v28 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = v1[18];
  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 8))(v5 + v30, v31);
  v32 = *(v0 + v28);

  v33 = *(v0 + v29 + 8);

  return _swift_deallocObject(v0, ((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041A5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_1002485A4(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  v7 = *(v0 + 160);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100041ADC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100041B2C()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 71) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);

  sub_1002485A4(*(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48));
  v11 = *(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100041C54()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 49) & ~v9;
  v16 = *(v8 + 64);
  v11 = v3 | v9;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  v14 = *(v0 + v6 + 8);

  sub_1002485A4(*(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40), *(v0 + v6 + 48));
  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v10 + v16, v11 | 7);
}

uint64_t sub_100041E04()
{
  v1 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for RoutingControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100041F64()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100041FF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042040()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  sub_1002485A4(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v9 = *(v0 + 88);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100042154()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100042298()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000422F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042328()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042374()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100042A7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100042AB4()
{
  v1 = type metadata accessor for RoutingSessionConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100042BB8()
{
  v1 = (sub_1001BC5A8(&qword_100525F38, &unk_100458130) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = *(v0 + v3);

  v8 = (v0 + v3 + v1[14]);
  v9 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v10 = *(v8 + 1);

    v11 = *(v8 + 2);

    v12 = *(v8 + 3);

    v13 = &v8[v9[7]];
    v14 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
    {
      v15 = *(v13 + 1);

      v16 = *(v13 + 3);

      v17 = *(v13 + 5);

      sub_1002488FC(*(v13 + 6), *(v13 + 14), v13[60]);
      v18 = *(v13 + 8);

      v19 = v14[9];
      v20 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v20 - 8) + 8))(&v13[v19], v20);
      v21 = v14[10];
      v22 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v22 - 8) + 8))(&v13[v21], v22);
      v23 = *&v13[v14[11] + 8];
    }

    v24 = v9[8];
    v25 = type metadata accessor for RoutingControls();
    (*(*(v25 - 8) + 8))(&v8[v24], v25);
    v26 = *&v8[v9[11] + 8];

    v27 = v9[13];
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 8))(&v8[v27], v28);
    v29 = &v8[v9[16]];
    if (*(v29 + 1))
    {

      v30 = *(v29 + 3);

      v31 = *(v29 + 5);

      v32 = *(v29 + 8);

      v33 = *(v29 + 10);
    }
  }

  v34 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v35 = *&v8[*(v34 + 20)];

  v36 = *&v8[*(v34 + 24)];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100042EDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100042F24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042F64()
{
  v56 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v1 = *(*(v56 - 8) + 80);
  v2 = (v1 + 80) & ~v1;
  v3 = *(*(v56 - 8) + 64);
  v55 = type metadata accessor for RoutingSessionConfiguration();
  v53 = *(v55 - 8);
  v4 = *(v53 + 80);
  v5 = *(v53 + 64);
  v54 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v52 = *(v54 - 8);
  v6 = *(v52 + 80);
  v51 = *(v52 + 64);
  v7 = *(v0 + 24);

  sub_1002485A4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v8 = *(v0 + 72);

  v9 = (v0 + v2);
  v10 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v10 - 1) + 48))(v0 + v2, 1, v10))
  {
    v50 = v5;
    v11 = *(v9 + 1);

    v12 = *(v9 + 2);

    v13 = *(v9 + 3);

    v14 = &v9[v10[7]];
    v15 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
    {
      v16 = *(v14 + 1);

      v17 = *(v14 + 3);

      v18 = *(v14 + 5);

      sub_1002488FC(*(v14 + 6), *(v14 + 14), v14[60]);
      v19 = *(v14 + 8);

      v48 = v15[9];
      v20 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v20 - 8) + 8))(&v14[v48], v20);
      v49 = v15[10];
      v21 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v21 - 8) + 8))(&v14[v49], v21);
      v22 = *&v14[v15[11] + 8];
    }

    v23 = v10[8];
    v24 = type metadata accessor for RoutingControls();
    (*(*(v24 - 8) + 8))(&v9[v23], v24);
    v25 = *&v9[v10[11] + 8];

    v26 = v10[13];
    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 8))(&v9[v26], v27);
    v28 = &v9[v10[16]];
    v5 = v50;
    if (*(v28 + 1))
    {

      v29 = *(v28 + 3);

      v30 = *(v28 + 5);

      v31 = *(v28 + 8);

      v32 = *(v28 + 10);
    }
  }

  v33 = (v2 + v3 + v4) & ~v4;
  v34 = (v5 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + v6 + 8) & ~v6;
  v37 = v6;
  v38 = (v51 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = v1 | v4 | v37;
  v41 = *&v9[*(v56 + 20)];

  v42 = *&v9[*(v56 + 24)];

  (*(v53 + 8))(v0 + v33, v55);
  v43 = *(v0 + v34);

  v44 = *(v0 + v35);

  (*(v52 + 8))(v0 + v36, v54);
  v45 = *(v0 + v38 + 8);

  v46 = *(v0 + v39 + 8);

  return _swift_deallocObject(v0, ((v39 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v40 | 7);
}

uint64_t sub_100043400()
{
  v1 = type metadata accessor for RoutingDialog.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000434F8()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000435D0()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100043724()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043774()
{
  v1 = type metadata accessor for RoutingSessionConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = *(v0 + 24);

  sub_1002485A4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1);
  v11 = (v0 + v8);
  v12 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v12 - 1) + 48))(v0 + v8, 1, v12))
  {
    v13 = *(v11 + 1);

    v14 = *(v11 + 2);

    v15 = *(v11 + 3);

    v16 = &v11[v12[7]];
    v17 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
    {
      v18 = *(v16 + 1);

      v19 = *(v16 + 3);

      v20 = *(v16 + 5);

      sub_1002488FC(*(v16 + 6), *(v16 + 14), v16[60]);
      v21 = *(v16 + 8);

      v44 = v17[9];
      v22 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v22 - 8) + 8))(&v16[v44], v22);
      v45 = v17[10];
      v23 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v23 - 8) + 8))(&v16[v45], v23);
      v24 = *&v16[v17[11] + 8];
    }

    v25 = v12[8];
    v26 = type metadata accessor for RoutingControls();
    (*(*(v26 - 8) + 8))(&v11[v25], v26);
    v27 = *&v11[v12[11] + 8];

    v28 = v12[13];
    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 8))(&v11[v28], v29);
    v30 = &v11[v12[16]];
    if (*(v30 + 1))
    {

      v31 = *(v30 + 3);

      v32 = *(v30 + 5);

      v33 = *(v30 + 8);

      v34 = *(v30 + 10);
    }
  }

  v35 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = *&v11[*(v6 + 20)];

  v39 = *&v11[*(v6 + 24)];

  v40 = *(v0 + v35);

  v41 = *(v0 + v36);

  v42 = *(v0 + v37);

  return _swift_deallocObject(v0, v37 + 8, v3 | v7 | 7);
}

uint64_t sub_100043B78()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100043BC0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043C2C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100043C74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043CAC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100043CF4()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {

    sub_10023DCB0(*(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24));
  }

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100043DE0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100043E54()
{
  v1 = type metadata accessor for RoutingSessionConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v19 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  v14 = *(v0 + 40);

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v15 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v16 = *(v0 + v10 + 8);

  v17 = *(v0 + v11);

  return _swift_deallocObject(v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v19 | 7);
}

uint64_t sub_10004400C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  if (*(v0 + 40))
  {

    sub_10023DCB0(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100044064()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000440B4()
{
  sub_1000196F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004419C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000441DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044214()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004425C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_1002485A4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1000442B4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000442EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044334()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004436C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000443A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000443E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044434()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004448C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000444C4()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();
  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000445CC()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000446DC()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044798()
{
  v1 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100044848()
{
  v1 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004492C()
{
  v1 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100044A44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100044A94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044AEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044B24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100044B6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100044BAC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100044BF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044C34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044C84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044CBC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100044D14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044D64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100044DA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044DEC()
{
  v1 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044EEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044F24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044F5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044F9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044FD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045098()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000450E4()
{
  v1 = sub_1001BC5A8(&qword_100528780, &unk_10045AE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000451A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000451F0()
{
  v1 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000452E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000453D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045408()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000454B8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100045528()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100045570()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000455CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045604()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004563C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004567C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000456C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045700()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045738()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045774()
{
  v1 = type metadata accessor for Participant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  sub_1001C4034(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045848()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045890()
{
  v1 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_1001C4034(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045968(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001C4034(a1, a2);
  }

  return a1;
}

void sub_10004620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046224(void *a1)
{
  v2 = *(a1[4] + 32);
  v7 = [NSNumber numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v7];
  v4 = [v3 outputDeviceUID];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100046A74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) outputDeviceUID];

  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v8 = [*(a1 + 40) name];
      v9 = [*(a1 + 40) requestID];
      v10 = +[NSDate date];
      [v10 timeIntervalSinceDate:*(a1 + 48)];
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v17, 0x20u);
      goto LABEL_13;
    }

    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = [*(a1 + 40) name];
    v9 = [*(a1 + 40) requestID];
    v10 = [*(a1 + 32) outputDeviceUID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v17 = 138544130;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v17, 0x2Au);
LABEL_8:

LABEL_13:
    goto LABEL_14;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = [*(a1 + 40) name];
    v9 = [*(a1 + 40) requestID];
    v10 = [*(a1 + 32) outputDeviceUID];
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v17 = 138544386;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v3;
    v23 = 2114;
    v24 = v10;
    v25 = 2048;
    v26 = v12;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v17, 0x34u);
    goto LABEL_8;
  }

  if (v7)
  {
    sub_1003A47C8(a1, v3, v6);
  }

LABEL_14:

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

void sub_100046D54(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  v6 = *(a1 + 48);
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) type]);
  [v2 setObject:v6 forKeyedSubscript:v7];
}

void sub_100046DFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    dispatch_group_enter(*(a1 + 32));
    v7 = qos_class_self();
    v8 = dispatch_get_global_queue(v7, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100046F10;
    v11[3] = &unk_1004B69F8;
    v10 = *(a1 + 32);
    v9 = v10;
    v12 = v10;
    [v5 waitForPlaybackWithTimeout:v8 queue:v11 completion:7.0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100046F10(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100046F70(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100046FD4(uint64_t a1)
{
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(*(a1 + 32) + 96);
    active = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) type]);
    v4 = [v2 objectForKeyedSubscript:active];
    v5 = v4;
    if (v4 != *(a1 + 48))
    {
      v6 = [v4 isEqual:?];

      if (v6)
      {
        goto LABEL_6;
      }

      v7 = [NSError alloc];
      active = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v8 = [v7 initWithMRError:25 format:{@"Another client updated %@SystemEndpoint during update process", active}];
      v9 = *(*(a1 + 72) + 8);
      v5 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

LABEL_6:
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v10 = [*(a1 + 32) _onSerialQueue_updateSystemEndpoint:*(a1 + 40) event:*(a1 + 80) eventReason:*(a1 + 56)];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(*(*(a1 + 72) + 8) + 40);
  }

  v14 = *(*(a1 + 64) + 16);

  return v14();
}

void sub_10004789C(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 80)])
  {
    v2 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:&off_1004E04A0];
    v3 = [v2 outputDeviceUID];
    v4 = *(a1 + 40);
    v5 = v4[1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100047A4C;
    v13[3] = &unk_1004B6A98;
    v14 = v3;
    v15 = v2;
    v16 = v4;
    v6 = v2;
    v7 = v3;
    [v4 _onSerialQueue_reconnectToOutputDevice:v7 queue:v5 completion:v13];
  }

  else if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 88)])
  {
    v12 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:&off_1004E04B8];
    v8 = [v12 outputDeviceUID];
    v9 = *(a1 + 40);
    v10 = +[NSBundle mainBundle];
    v11 = [v10 bundleIdentifier];
    [v9 _onSerialQueue_clearActiveEndpointType:2 outputDeviceUID:v8 event:4 reason:@"Origin unregistered" clientBundleIdentifier:v11];
  }
}

void sub_100047A4C(uint64_t a1, int a2)
{
  if (a2)
  {
    v12 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:*(a1 + 32) reason:@"Reconncetion"];
    [v12 setDemoteWhenSyncingToCompanion:{objc_msgSend(*(a1 + 40), "demoteWhenSyncingToCompanion")}];
    v3 = *(a1 + 48);
    v4 = [v12 reason];
    v5 = [v3 _onSerialQueue_updateSystemEndpoint:v12 event:9 eventReason:v4];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = +[NSBundle mainBundle];
    v9 = [v8 bundleIdentifier];
    [v6 _onSerialQueue_clearActiveEndpointType:0 outputDeviceUID:v7 event:4 reason:@"Reconnection" clientBundleIdentifier:v9];

    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = +[NSBundle mainBundle];
    v4 = [v12 bundleIdentifier];
    [v10 _onSerialQueue_clearActiveEndpointType:2 outputDeviceUID:v11 event:4 reason:@"Reconnection" clientBundleIdentifier:v4];
  }
}

void sub_100047D5C(uint64_t a1)
{
  v10 = [[NSString alloc] initWithFormat:@"Playback changed for %@", *(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];
  [v2 _onSerialQueue_reevaluateActiveEndpoint:0 event:v3 eventReason:v10 clientBundleIdentifier:v5];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 bundleIdentifier];
  [v6 _onSerialQueue_reevaluateActiveEndpoint:2 event:v7 eventReason:v10 clientBundleIdentifier:v9];

  [*(a1 + 40) _onSerialQueue_maybeSetupPlaybackTimerForEvent:*(a1 + 48)];
}

uint64_t sub_100048D90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 outputDeviceUID];
  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isEqual:v3];
  }

  return v4;
}

uint64_t sub_100048F74(uint64_t a1, void *a2)
{
  v3 = [a2 outputDeviceUID];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

uint64_t sub_100049A50(uint64_t a1)
{
  v5 = *(a1 + 56);
  v6 = v5 > 9;
  v7 = (1 << v5) & 0x209;
  if (!v6 && v7 != 0)
  {
    return 1;
  }

  v14 = v1;
  if (!*(a1 + 64) && [*(a1 + 32) changeType])
  {
    return 1;
  }

  v11 = [*(a1 + 40) outputDeviceUID];
  v12 = v11;
  if (v11 == *(a1 + 48))
  {
  }

  else
  {
    v13 = [v11 isEqual:?];

    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100049AF4(uint64_t a1)
{
  v3 = [*(a1 + 32) copy];
  [v3 setPreviousOutputDeviceUID:*(a1 + 40)];
  [v3 setChangeType:*(a1 + 56)];
  v2 = [*(a1 + 48) delegate];
  [v2 systemEndpointController:*(a1 + 48) activeSystemEndpointDidChangeForRequest:v3 type:*(a1 + 64)];
}

id sub_100049B74(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"migrationPlaybackSession"])
  {
    v2 = &kMRChangeActiveSystemReasonMigrate;
LABEL_9:
    v3 = *v2;
LABEL_10:
    v4 = v3;
    goto LABEL_11;
  }

  if ([v1 containsString:@"ResolveActiveEndpoint"])
  {
    v2 = &kMRChangeActiveSystemReasonFallbackCouldNotResolve;
    goto LABEL_9;
  }

  if ([v1 containsString:@"invalid route error"])
  {
    v2 = &kMRChangeActiveSystemReasonInvalidRoute;
    goto LABEL_9;
  }

  if ([v1 containsString:@"from external device client"])
  {
    v2 = &kMRChangeActiveSystemReasonExternalDevice;
    goto LABEL_9;
  }

  if ([v1 containsString:@"Analytics: "])
  {
    v3 = [v1 stringByReplacingOccurrencesOfString:@"Analytics: " withString:&stru_1004D2058];
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

id sub_100049C70(uint64_t a1)
{
  v12[0] = kMRChangeActiveSystemEndpointClientKey;
  v2 = [*(a1 + 32) clientBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"unknown";
  }

  v13 = v4;
  v12[1] = kMRChangeActiveSystemEndpointTypeKey;
  v12[2] = kMRChangeActiveSystemEndpointChangeTypeKey;
  v14 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(@"unknown"), *(a1 + 40));
  v15 = *(a1 + 56);
  v12[3] = kMRChangeActiveSystemEndpointReasonKey;
  v12[4] = kMRChangeActiveSystemEndpointIsLocalKey;
  v5 = [*(a1 + 32) outputDeviceUID];
  v6 = [NSNumber numberWithInt:v5 == 0];
  v16 = v6;
  v12[5] = kMRChangeActiveSystemEndpointTimeSinceLastChangeKey;
  v7 = [*(a1 + 64) date];
  [v7 timeIntervalSinceNow];
  v9 = [NSNumber numberWithDouble:fabs(v8)];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:v12 count:6];

  return v10;
}

void sub_100049FE4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004A0DC;
  v11[3] = &unk_1004B6BB0;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13 = v8;
  v14 = v9;
  v15 = v5;
  v10 = v5;
  dispatch_after(v6, v7, v11);
}

void sub_10004A0DC(uint64_t a1)
{
  v2 = +[MRDAutoConnectionController sharedConnectionController];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004A1A8;
  v6[3] = &unk_1004B6B88;
  v7 = *(a1 + 56);
  [v2 connectToOutputDevice:v3 reason:v4 queue:v5 completion:v6];
}

uint64_t sub_10004A1A8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

void sub_10004A1C8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004A2B4;
    v6[3] = &unk_1004B6C28;
    v7 = v5;
    v8 = *(a1 + 40);
    (v5)[2](v7, v6, 3.0);
  }
}

void sub_10004A2B4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004A36C;
    v6[3] = &unk_1004B6C00;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    (*(v5 + 16))(v5, v6, 7.0);
  }
}

void sub_10004A61C(void *a1)
{
  v2 = [NSString alloc];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v4 = sub_100035750(a1[5]);
  v8 = [v2 initWithFormat:@" %@ timeout event %@ after <%lf> seconds ", active, v4, a1[6]];

  v5 = a1[4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];
  [v5 _onSerialQueue_reevaluateActiveEndpoint:0 event:2 eventReason:v8 clientBundleIdentifier:v7];
}

void sub_10004A950(uint64_t a1)
{
  v2 = [NSString alloc];
  v3 = [*(a1 + 32) origin];
  v4 = sub_100035750(*(a1 + 48));
  v8 = [v2 initWithFormat:@"%@ playback timedout event %@ after <%lf> seconds", v3, v4, *(a1 + 56)];

  v5 = *(a1 + 40);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];
  [v5 _onSerialQueue_reevaluateActiveEndpoint:0 event:6 eventReason:v8 clientBundleIdentifier:v7];
}

void sub_10004AC3C(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.mediaremote.systemEndpointController.userDefaults.serialQueue", v1);
  v3 = qword_1005291C0;
  qword_1005291C0 = v2;
}

id sub_10004ACC0(void *a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A4990(a1, v2);
  }

  [*(a1[5] + 56) setObject:a1[4] forKey:@"SystemEndpoint"];
  return [*(a1[5] + 56) setObject:a1[6] forKey:@"SystemEndpointRecentlyDismissedRecommendations"];
}

void sub_10004AF9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = [v5 intValue];

  v18 = objc_alloc_init(MRDSystemEndpointEntry);
  [(MRDSystemEndpointEntry *)v18 setType:v6];
  v7 = [v4 objectForKeyedSubscript:@"event"];
  -[MRDSystemEndpointEntry setEvent:](v18, "setEvent:", [v7 intValue]);

  v8 = [v4 objectForKeyedSubscript:@"uid"];
  [(MRDSystemEndpointEntry *)v18 setOutputDeviceUID:v8];

  v9 = [v4 objectForKeyedSubscript:@"date"];
  [(MRDSystemEndpointEntry *)v18 setDate:v9];

  v10 = [v4 objectForKeyedSubscript:@"eventreason"];
  [(MRDSystemEndpointEntry *)v18 setEventReason:v10];

  v11 = [v4 objectForKeyedSubscript:@"selectionreason"];
  [(MRDSystemEndpointEntry *)v18 setSelectionReason:v11];

  v12 = [v4 objectForKeyedSubscript:@"changeType"];
  -[MRDSystemEndpointEntry setChangeType:](v18, "setChangeType:", [v12 intValue]);

  v13 = [v4 objectForKeyedSubscript:@"demoteWhenSyncingToCompanion"];
  -[MRDSystemEndpointEntry setDemoteWhenSyncingToCompanion:](v18, "setDemoteWhenSyncingToCompanion:", [v13 BOOLValue]);

  v14 = [v4 objectForKeyedSubscript:@"supportsIdleReset"];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  -[MRDSystemEndpointEntry setSupportsIdleReset:](v18, "setSupportsIdleReset:", [v15 BOOLValue]);

  v16 = *(*(a1 + 32) + 32);
  v17 = [NSNumber numberWithInteger:v6];
  [v16 setObject:v18 forKeyedSubscript:v17];
}

void sub_10004B1B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[NSBundle mainBundle];
  v2 = [v3 bundleIdentifier];
  [v1 _onSerialQueue_reevaluateActiveEndpoint:0 event:0 eventReason:@"Startup" clientBundleIdentifier:v2];
}

void sub_10004B658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004B6AC(uint64_t a1, void *a2)
{
  v3 = [a2 deviceUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t sub_10004B6F0(uint64_t a1, void *a2)
{
  v3 = [a2 deviceUID];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

void sub_10004C0CC(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MRDGroupSessionServerDidStartEligibilityMonitoringNotification" object:0];
}

void sub_10004C298(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDGroupSessionServerDidStartNotification" object:*(a1 + 32)];
}

void sub_10004C478(uint64_t a1)
{
  [*(a1 + 32) notifyActiveSessionStateChanged];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDGroupSessionServerDidStopNotification" object:*(a1 + 32)];
}

void sub_10004C728(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 listener];
  v4 = [v6 endpoint];
  v5 = [v4 _endpoint];
  xpc_dictionary_set_value(v3, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY", v5);
}

void sub_10004CBAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004CC70;
  v10[3] = &unk_1004B6E30;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  sub_100008278(v7, v10);
}

uint64_t sub_10004CC70(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  v2 = *(a1 + 40);
  return MRAddStringToXPCMessage();
}

void sub_10004CC98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 identifier];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_10004CD14(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  if (a3)
  {
    [v6 trackWithError:v7];
  }

  else
  {
    v9 = [v6 request];
    [v9 end];

    [*(a1 + 32) track];
  }

  v10 = *(a1 + 40);
  v11 = [v8 identifier];

  (*(v10 + 16))(v10, v11, v7);
}

void sub_10004D014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003A4A0C(v9);
    }

    [*(a1 + 40) joinGroupSessionWithToken:*(a1 + 48) completion:*(a1 + 72)];
    [*(a1 + 56) trackWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Found equivalent WHA endpoint: %@, connecting", buf, 0xCu);
    }

    v10 = [*(a1 + 56) recon];
    [v10 end];

    v23 = MREndpointConnectionReasonUserInfoKey;
    v24 = @"MRDGroupSessionManager";
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [*(a1 + 56) whaConnect];
    [v12 start];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004D26C;
    v19[3] = &unk_1004B6F70;
    v18 = *(a1 + 64);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v22 = *(a1 + 72);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v18;
    *(&v17 + 1) = v13;
    v20 = v17;
    v21 = v16;
    [v5 connectToExternalDeviceWithOptions:1 userInfo:v11 completion:v19];
  }
}

void sub_10004D26C(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] setLastConnectionError:v3];
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Failed to connect to WHA endpoint with error: %@.\nJoining session directly", &buf, 0xCu);
    }

    [a1[5] joinGroupSessionWithToken:a1[6] completion:a1[8]];
    [a1[7] trackWithError:v3];
  }

  else
  {
    v5 = [a1[7] whaConnect];
    [v5 end];

    [a1[7] track];
    v6 = [a1[6] equivalentMediaIdentifier];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Connected to equivalent WHA endpoint, ASE switching to: %@", &buf, 0xCu);
    }

    v8 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v6 reason:@"MRGroupSession.wha-connected"];
    v9 = +[MRDMediaRemoteServer server];
    v10 = [v9 routingServer];
    v11 = [v10 systemEndpointController];
    [v11 updateSystemEndpointForRequest:v8];

    v12 = [a1[5] session];
    v13 = [v12 joinToken];
    v14 = [v13 equivalentMediaIdentifier];
    LODWORD(v11) = [v14 isEqual:v6];

    if (v11)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Immediately found active group session for device: %@", &buf, 0xCu);
      }

      (*(a1[8] + 2))();
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v40 = 0x3032000000;
      v41 = sub_100034FA0;
      v42 = sub_100035994;
      v43 = objc_alloc_init(MRDGroupSessionManagerObserverHelper);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10004D78C;
      v34[3] = &unk_1004B6EF8;
      v34[4] = a1[4];
      p_buf = &buf;
      v35 = a1[8];
      v16 = objc_retainBlock(v34);
      v17 = [MSVBlockGuard alloc];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10004D8E8;
      v31[3] = &unk_1004B6F20;
      v18 = v6;
      v32 = v18;
      v19 = v16;
      v33 = v19;
      v20 = [v17 initWithTimeout:v31 interruptionHandler:60.0];
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138412290;
        v38 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Waiting for active group session for device: %@", v37, 0xCu);
      }

      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_10004D9E0;
      v27 = &unk_1004B6F48;
      v28 = v18;
      v22 = v20;
      v29 = v22;
      v23 = v19;
      v30 = v23;
      [*(*(&buf + 1) + 40) setActiveSessionDidChange:&v24];
      [a1[5] addObserver:{*(*(&buf + 1) + 40), v24, v25, v26, v27}];

      _Block_object_dispose(&buf, 8);
    }
  }
}

void sub_10004D78C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D880;
  block[3] = &unk_1004B6ED0;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_10004D880(void *a1)
{
  [*(*(a1[7] + 8) + 40) setActiveSessionDidChange:0];
  v2 = *(a1[7] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = a1[5];
  v5 = a1[4];
  v6 = *(a1[6] + 16);

  return v6();
}

void sub_10004D8E8(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Timed out waiting to join group session for device: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [NSError msv_errorWithDomain:MRGroupSessionError code:15 debugDescription:@"Timed out waiting to auto-join ASE group session"];
  (*(v4 + 16))(v4, 0, v5);
}

void sub_10004D9E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Active session changed: %@", &v12, 0xCu);
  }

  v5 = [v3 joinToken];
  v6 = [v5 equivalentMediaIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) disarm];
    v9 = _MRLogForCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Joined active group session for device: %@", &v12, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1003A4A50((a1 + 32), v10);
      }
    }
  }
}

uint64_t sub_10004DED8(uint64_t result)
{
  if (*(result + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  return result;
}

void sub_10004DF84(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    v5 = +[MRDMusicUserStateCenter sharedCenter];
    v6 = [v5 localActiveIdentity];

    if (v6)
    {
      v7 = [v6 protobufData];
      MRAddDataToXPCMessage();
    }
  }
}

void sub_10004E540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004E5D8;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

uint64_t sub_10004E5D8(uint64_t result)
{
  if (*(result + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  return result;
}

uint64_t sub_10004E788(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 32))
  {
    MRAddClientErrorToXPCMessage();
    v3 = v7;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 data];
    MRAddDataToXPCMessage();
  }

  return _objc_release_x2();
}

void sub_10004E8E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E9A4;
  v10[3] = &unk_1004B6E30;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  sub_100008278(v7, v10);
}

void sub_10004E9A4(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = a2;
    MRAddClientErrorToXPCMessage();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = a2;
    v4 = [v2 protobufData];
    MRAddDataToXPCMessage();
  }
}

uint64_t sub_10004EB6C(uint64_t result)
{
  if (*(result + 32))
  {
    return MRAddClientErrorToXPCMessage();
  }

  return result;
}

void sub_10004EC18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004ECD8;
  v10[3] = &unk_1004B6E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  sub_100008278(v7, v10);
}

uint64_t sub_10004ECD8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return MRAddStringToXPCMessage();
  }

  v2 = *(a1 + 40);
  return MRAddClientErrorToXPCMessage();
}

void sub_10004F3C4(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  v3 = [v2 session];

  if (v3)
  {
    v4 = [[MRGroupSessionInfo alloc] initWithGroupSession:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v4 forKeyedSubscript:MRActiveGroupSessionInfoUserInfoKey];
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A4ACC(v4, a1);
  }

  v7 = +[MRDMediaRemoteServer server];
  v8 = _MRGroupSessionInfoDidChangeNotification;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004F658;
  v20[3] = &unk_1004B7038;
  v10 = *(a1 + 40);
  v9 = (a1 + 40);
  v21 = v10;
  [v7 postClientNotificationNamed:v8 userInfo:v5 predicate:v20];

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [*(v9 - 1) eligibilityMonitor];
  v13 = [v12 eligibilityStatus];

  v14 = [v13 copy];
  [v5 setObject:v14 forKeyedSubscript:MRGroupSessionEligibilityStatusUserInfoKey];

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A4B60(v11, v9);
  }

  v16 = +[MRDMediaRemoteServer server];
  v17 = _MRGroupSessionEligibilityDidChangeNotification;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004F694;
  v18[3] = &unk_1004B7038;
  v19 = *v9;
  [v16 postClientNotificationNamed:v17 userInfo:v5 predicate:v18];
}

BOOL sub_10004FAF8(id a1, MRDMediaRemoteClient *a2, NSDictionary *a3, id *a4)
{
  v4 = a2;
  v5 = [(MRDMediaRemoteClient *)v4 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    v7 = +[MRUserSettings currentSettings];
    [v7 nowPlayingUIWakingPlayerEventAssertionDuration];
    [(MRDMediaRemoteClient *)v4 takeAssertion:7 forReason:@"MediaRemoteLocalMusicIdentityChanged" duration:?];
  }

  return IsSystemMediaApplication;
}

id sub_1000500E0(uint64_t a1)
{
  v6[0] = kMREventNearbyNotificationTypeProximityCard;
  v5[0] = kMREventNearbyNotificationTypeKey;
  v5[1] = kMREventSessionCreatedRouteKey;
  v1 = [*(a1 + 32) hostInfo];
  v2 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v1 routeType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

BOOL sub_100050328(id a1, MRDMediaRemoteClient *a2, NSDictionary *a3, id *a4)
{
  v4 = a2;
  v5 = sub_100007AC4(v4);
  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    [v6 nowPlayingUIWakingPlayerEventAssertionDuration];
    [(MRDMediaRemoteClient *)v4 takeAssertion:7 forReason:@"MediaRemoteActiveGroupSessionStateChanged" duration:?];
  }

  return v5;
}

BOOL sub_1000505E4(id a1, MRDMediaRemoteClient *a2, NSDictionary *a3, id *a4)
{
  v4 = a2;
  v5 = sub_100007AC4(v4);
  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    [v6 nowPlayingUIWakingPlayerEventAssertionDuration];
    [(MRDMediaRemoteClient *)v4 takeAssertion:7 forReason:@"MediaRemoteLocalGroupSessionEligibilityStatusChanged" duration:?];
  }

  return v5;
}

void sub_1000511A4(uint64_t a1)
{
  v2 = [*(a1 + 32) isAsserting];
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Stop timer elapsed but there are group session assertions - not stopping", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Stop timer elapsed with no assertions remaining - stopping", buf, 2u);
    }

    [*(a1 + 40) stop];
  }
}

void sub_100051724(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100051A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] <%p> Server proxy error %@.", &v6, 0x16u);
  }
}

void sub_100051BB0(uint64_t a1)
{
  v4 = [*(a1 + 32) transportParticipants:*(a1 + 40) forSession:*(a1 + 48)];
  v2 = [*(a1 + 32) client];
  v3 = [*(a1 + 48) identifier];
  [v2 session:v3 didUpdateParticipants:v4];
}

void sub_100051D10(uint64_t a1)
{
  v4 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  v3 = [NSSet setWithArray:*(a1 + 48)];
  [v4 session:v2 didUpdateMembers:v3];
}

void sub_100051E58(uint64_t a1)
{
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  v4 = [*(a1 + 40) client];
  v2 = [*(a1 + 32) identifier];
  v3 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Session state changed to invalidated."];
  [v4 session:v2 didInvalidateWithError:v3];
}

void sub_100051FDC(id *a1)
{
  v2 = [a1[4] msv_compactMap:&stru_1004B7160];
  v5 = [NSSet setWithArray:v2];

  v3 = [a1[5] client];
  v4 = [a1[6] identifier];
  [v3 session:v4 didUpdatePendingParticipants:v5];
}

id sub_100052090(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  v3 = [(MRDGroupSessionParticipant *)v2 identity];

  if (v3)
  {
    v4 = [MRCodableGroupSessionParticipant alloc];
    v5 = [(MRDGroupSessionParticipant *)v2 identifier];
    v6 = [(MRDGroupSessionParticipant *)v2 identity];
    v7 = [v4 initWithIdentifier:v5 identity:v6 connected:0 guest:-[MRDGroupSessionParticipant guest](v2 hidden:{"guest"), -[MRDGroupSessionParticipant hidden](v2, "hidden")}];

    [v7 setPending:1];
  }

  else
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Dropping participant with no identity for transport: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void sub_1000522D0(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  [v3 session:v2 didUpdateSynchronizedMetadata:*(a1 + 48)];
}

void sub_1000523F4(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  [v3 session:v2 didChangeState:1];
}

void sub_100052518(uint64_t a1)
{
  v3 = [*(a1 + 32) client];
  v2 = [*(a1 + 40) identifier];
  [v3 session:v2 didChangeState:3];
}

void sub_10005263C(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 discoveredSessionsDidChange:*(a1 + 40)];
  }
}

void sub_100052790(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 client];
    [v5 activeSessionDidChange:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 40);

    [v3 reevaluatePendingStateFromSession:v4];
  }
}

void sub_1000528A0(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 activeSessionDidChange:0];
  }
}

void sub_1000529E4(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 activeSessionDidChange:*(a1 + 40)];
  }
}

void sub_100052ADC(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 32) client];
    [v2 activeSessionDidChange:0];
  }
}

void sub_100052C30(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 client];
    [v5 activeSessionDidChange:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 40);

    [v3 reevaluatePendingStateFromSession:v4];
  }
}

void sub_1000532A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000532F0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 7);
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A4F84(a1, v4);
    }

    [a1[5] removeObserver:v3];
    v5 = [v3 client];
    v6 = [a1[6] identifier];
    v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Timed out waiting for session to be joined."];
    [v5 session:v6 didInvalidateWithError:v7];
  }
}

id sub_1000535CC(id a1, MRDGroupSessionParticipant *a2)
{
  v2 = a2;
  v3 = [(MRDGroupSessionParticipant *)v2 identity];

  if (v3)
  {
    v4 = [MRCodableGroupSessionParticipant alloc];
    v5 = [(MRDGroupSessionParticipant *)v2 identifier];
    v6 = [(MRDGroupSessionParticipant *)v2 identity];
    v7 = [v4 initWithIdentifier:v5 identity:v6 connected:0 guest:-[MRDGroupSessionParticipant guest](v2 hidden:{"guest"), -[MRDGroupSessionParticipant hidden](v2, "hidden")}];

    [v7 setPending:1];
  }

  else
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Dropping participant with no identity for transport: %@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void sub_1000543A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000543C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];

  if (v4)
  {
    v5 = [MRCodableGroupSessionParticipant alloc];
    v6 = [v3 identifier];
    v7 = [v3 identity];
    v8 = [v5 initWithIdentifier:v6 identity:v7 connected:objc_msgSend(v3 guest:"connected") hidden:{objc_msgSend(v3, "guest"), objc_msgSend(v3, "hidden")}];

    v9 = [v3 identifier];
    v10 = [*(a1 + 32) identifier];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      [v8 setLocal:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v12 = [v3 identifier];
    v13 = [*(a1 + 40) identifier];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      [v8 setHost:1];
    }
  }

  else
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Dropping participant with no identity for transport: %@", &v17, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

void sub_100054BC4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [[MRCommandResult alloc] initWithHandlerStatuses:&off_1004E0E38 sendError:0];
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Yielding AVRCP command to callCenterHandler", buf, 2u);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v6 = [NSString alloc];
    v7 = [*(a1 + 32) commandID];
    v3 = [v6 initWithFormat:@"com.apple.mediaremote.remotecontrol.%@", v7];

    v8 = [v3 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, *(a1 + 56), 0);
    v11 = dispatch_queue_create(v8, v10);

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054DA0;
    block[3] = &unk_1004B71F8;
    v13 = *(a1 + 32);
    v12 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v16 = *(a1 + 48);
    dispatch_async(v11, block);
  }
}

void sub_100055164(uint64_t a1, void *a2)
{
  v35 = a2;
  kdebug_trace();
  v37 = a1;
  v3 = [*(a1 + 32) optionValueForKey:kMRMediaRemoteOptionDirectUserInteraction];
  v4 = [v3 BOOLValue];

  v34 = [v35 error];
  v5 = [v34 domain];
  if (![v5 isEqualToString:kMRMediaRemoteFrameworkErrorDomain])
  {
    goto LABEL_4;
  }

  v6 = [v34 code] == 46;

  if ((v6 & v4) == 1)
  {
    v7 = *(v37 + 40);
    v5 = MRLocalizedString();
    v8 = MRLocalizedString();
    v9 = MRLocalizedString();
    v10 = [v7 _onQueue_presentDialogWithTitle:v5 message:v8 defaultButtonTitle:v9 alternateButtonTitle:0 completion:0];

LABEL_4:
  }

  v33 = [v35 playerPath];
  if (!v34 && v33)
  {
    v32 = [*(v37 + 40) _effectiveContextIDForCommand:*(v37 + 32)];
    if (v32 && [*(v37 + 40) _isCommandCacheCreating:{objc_msgSend(*(v37 + 32), "commandType")}])
    {
      *v50 = 0;
      v51 = v50;
      v52 = 0x3032000000;
      v53 = sub_100034FB0;
      v54 = sub_10003599C;
      v55 = 0;
      v11 = *(*(v37 + 40) + 8);
      v42 = _NSConcreteStackBlock;
      v43 = 3221225472;
      v44 = sub_1000556F4;
      v45 = &unk_1004B7248;
      v12 = v33;
      v46 = v12;
      v13 = v32;
      v14 = *(v37 + 40);
      v36 = v13;
      v47 = v13;
      v48 = v14;
      v49 = v50;
      msv_dispatch_sync_on_queue();
      v15 = [*(v51 + 5) completionBlockDictionary];
      v16 = [v15 count] == 0;

      if (!v16)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v17 = [*(v51 + 5) completionBlockDictionary];
        v18 = [v17 countByEnumeratingWithState:&v38 objects:v60 count:16];
        if (v18)
        {
          v19 = *v39;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v39 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v38 + 1) + 8 * i);
              v22 = [*(v51 + 5) commandDictionary];
              v23 = [v22 objectForKeyedSubscript:v21];
              v24 = [v23 mutableCopy];

              [v24 setPlayerPath:v12];
              [v24 setCommandType:{objc_msgSend(v21, "unsignedIntValue")}];
              v25 = _MRLogForCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v57 = v12;
                v58 = 2114;
                v59 = v36;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sending cachable command to player path %{public}@ for context %{public}@.", buf, 0x16u);
              }

              v26 = *(v37 + 40);
              v27 = [*(v51 + 5) completionBlockDictionary];
              v28 = [v27 objectForKeyedSubscript:v21];
              [v26 _forwardCommand:v24 completion:v28];
            }

            v18 = [v17 countByEnumeratingWithState:&v38 objects:v60 count:16];
          }

          while (v18);
        }
      }

      _Block_object_dispose(v50, 8);
    }
  }

  if (*(v37 + 48))
  {
    v29 = _MRLogForCategory();
    v30 = [*(v37 + 32) commandID];
    v31 = [v30 hash];

    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *v50 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v31, "SendCommandDaemon", "", v50, 2u);
    }

    (*(*(v37 + 48) + 16))();
  }
}

void sub_1000556F4(void *a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Caching resolved player path %{public}@ for context %{public}@.", &v10, 0x16u);
  }

  v5 = [*(a1[6] + 64) objectForKeyedSubscript:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(a1[7] + 8) + 40))
  {
    v8 = a1[4];
    v9 = [*(a1[6] + 64) objectForKeyedSubscript:a1[5]];
    [v9 setPlayerPath:v8];
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5134();
    }
  }
}

void sub_100055830(uint64_t a1)
{
  v2 = objc_alloc_init(MRDRedirectionCacheEntry);
  v3 = +[NSMutableDictionary dictionary];
  [(MRDRedirectionCacheEntry *)v2 setCommandDictionary:v3];

  v4 = +[NSMutableDictionary dictionary];
  [(MRDRedirectionCacheEntry *)v2 setCompletionBlockDictionary:v4];

  [*(*(a1 + 32) + 64) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  v5 = dispatch_time(0, 60000000000);
  v6 = *(*(a1 + 32) + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100055954;
  v9[3] = &unk_1004B68F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  dispatch_after(v5, v6, v9);
}

id sub_100055954(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Expiring player path for context %{public}@.", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 64) setObject:0 forKeyedSubscript:*(a1 + 32)];
}

void sub_100055A10(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v22 = 138543362;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got a cacheable command from assistant, context: %{public}@.", &v22, 0xCu);
    }

    v6 = [v2 playerPath];

    if (v6)
    {
      v3 = [v2 playerPath];
      if (v3)
      {
        [*(a1 + 56) setPlayerPath:v3];
        v7 = _MRLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 56) playerPath];
          v22 = 138543362;
          v23 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Redirecting to cached path: %{public}@", &v22, 0xCu);
        }
      }
    }

    else
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v22 = 138543362;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding command to assistant cache, context: %{public}@.", &v22, 0xCu);
      }

      v12 = [v2 completionBlockDictionary];
      v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) commandType]);
      v3 = [v12 objectForKeyedSubscript:v13];

      if (v3)
      {
        v14 = [[NSError alloc] initWithMRError:137];
        v15 = [[MRCommandResult alloc] initWithError:v14];
        (*(v3 + 16))(v3, v15);
      }

      v16 = *(a1 + 48);
      v17 = [v2 commandDictionary];
      v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) commandType]);
      [v17 setObject:v16 forKeyedSubscript:v18];

      v19 = objc_retainBlock(*(a1 + 64));
      v20 = [v2 completionBlockDictionary];
      v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 48) commandType]);
      [v20 setObject:v19 forKeyedSubscript:v21];

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  else if (v4)
  {
    v9 = *(a1 + 40);
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No assistant cache active, context: %{public}@.", &v22, 0xCu);
  }
}

void sub_100055FBC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100056090;
    block[3] = &unk_1004B72C0;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1000560A8(id *a1, int a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[4] commandID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Command <%{public}@> ignored because of device state", &buf, 0xCu);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    v5 = dispatch_group_create();
    v6 = [NSString alloc];
    v7 = [a1[4] commandID];
    v8 = [v6 initWithFormat:@"com.apple.mediaremote.broadcastcommand.%@", v7];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);

    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x2020000000;
    v66 = 0;
    v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a1[5], "count")}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = a1[5];
    v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v13)
    {
      v14 = *v58;
      v36 = *v58;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v57 + 1) + 8 * i);
          v38 = [a1[4] mutableCopy];
          v17 = [a1[6] _createBroadcastCommandPlayerPathForClient:v16];
          [v38 setPlayerPath:v17];

          dispatch_group_enter(v5);
          v18 = _MRLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v13;
            v20 = v12;
            v21 = v5;
            v22 = v11;
            v23 = [a1[4] commandID];
            v24 = [v16 bundleIdentifier];
            *v61 = 138543618;
            *&v61[4] = v23;
            *&v61[12] = 2112;
            *&v61[14] = v24;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Broadcasting command <%{public}@> to client: <%@>", v61, 0x16u);

            v11 = v22;
            v5 = v21;
            v12 = v20;
            v13 = v19;
            v14 = v36;
          }

          v25 = a1[6];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100056670;
          v50[3] = &unk_1004B7338;
          p_buf = &buf;
          v51 = v11;
          v26 = v12;
          v27 = a1[6];
          v52 = v26;
          v53 = v27;
          v54 = v16;
          v55 = v5;
          [v25 _sendRemoteControlCommand:v38 toDestinationClient:v16 withLegacyCompletion:v50];
        }

        v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v13);
    }

    *v61 = 0;
    *&v61[8] = v61;
    *&v61[16] = 0x2020000000;
    v62 = 0;
    v28 = +[MRUserSettings currentSettings];
    [v28 broadcastCommandWaitDuration];
    v30 = v29;

    v31 = [MSVTimer alloc];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000567A4;
    v44[3] = &unk_1004B7360;
    v48 = v61;
    v45 = a1[4];
    v49 = v30;
    v47 = a1[7];
    v32 = v12;
    v46 = v32;
    v33 = [v31 initWithInterval:0 repeats:v11 queue:v44 block:v30];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000568AC;
    block[3] = &unk_1004B7388;
    v42 = v61;
    v34 = a1[7];
    v43 = &buf;
    v40 = v32;
    v41 = v34;
    v35 = v32;
    dispatch_group_notify(v5, v11, block);

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void sub_100056670(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 72) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = a2;
  }

  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v5;
  v12 = *(a1 + 56);
  v8 = v5;
  msv_dispatch_sync_on_queue();
  dispatch_group_leave(*(a1 + 64));
}

void sub_100056748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _createBroadcastCommandResponseFromStatuses:*(a1 + 48) forClient:*(a1 + 56)];
  [v1 addObject:v2];
}

uint64_t sub_1000567A4(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 32) commandID];
      v4 = *(v1 + 64);
      v6 = 138543618;
      v7 = v3;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Broadcast command %{public}@ timedout after %lf seconds", &v6, 0x16u);
    }

    *(*(*(v1 + 56) + 8) + 24) = 1;
    v5 = *(v1 + 40);
    return (*(*(v1 + 48) + 16))();
  }

  return result;
}

void *sub_1000568AC(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], *(*(result[7] + 8) + 24), result[4]);
  }

  return result;
}

void sub_100056980(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(*(a1 + 32) + 32);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100056B90;
  v16 = &unk_1004B73D8;
  v17 = *(a1 + 40);
  v4 = v2;
  v18 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v4 count])
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 count];
      v7 = *(a1 + 40);
      *buf = 134218242;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing %lld context(s) for client %@", buf, 0x16u);
    }
  }

  [*(*(a1 + 32) + 32) removeObjectsForKeys:v4];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) commandClientsRestriction];
  v10 = [v9 requester];

  if (v8 == v10)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] %@ is gone, disabling restricted mode", buf, 0xCu);
    }

    [*(a1 + 32) setCommandClientsRestriction:0];
  }
}

void sub_100056B90(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 originatingAppDisplayID];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v8];
  }
}

void sub_100056E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) requestInfo];
  v4 = [v2 destinationPlayerPath];
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v4 origin];
  v8 = [v6 originClientForOrigin:v7];

  v9 = [v8 createNewApplicationConnectionCallback];
  if (v9)
  {
    v10 = [[MRDApplicationConnection alloc] initWithContext:v2];
    [(MRDApplicationConnection *)v10 setClientBoundMessageHandler:*(a1 + 48)];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100057048;
    v15[3] = &unk_1004B7428;
    v15[4] = *(a1 + 40);
    v16 = v10;
    v18 = *(a1 + 56);
    v17 = v2;
    v11 = v9[2];
    v12 = v10;
    v11(v9, v12, v3, v15);
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = [[NSError alloc] initWithMRError:14];
    (*(v13 + 16))(v13, 0, v14);
  }
}

void sub_100057048(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057150;
  block[3] = &unk_1004B7400;
  v12 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = *(a1 + 32);
  v10 = v7;
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_100057150(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 invalidate:?];
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 64) + 16);

    v5();
  }

  else
  {
    [v2 activate];
    v6 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
    v7 = *(a1 + 40);
    v9 = [*(a1 + 48) applicationConnections];
    v8 = [*(a1 + 56) identifier];
    [v9 setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_1000572B4(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) context];
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  [v5 handleClientBoundMessage:*(a1 + 40)];
}

void sub_1000573E8(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) context];
  v4 = [v3 identifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  [v5 handleServerBoundMessage:*(a1 + 40)];
}

void sub_10005751C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) context];
  v4 = [v3 identifier];
  v6 = [v2 objectForKeyedSubscript:v4];

  v5 = [*(a1 + 40) error];
  [v6 invalidate:v5];
}

id sub_100057820(uint64_t a1)
{
  [*(a1 + 32) setEnqueuedCommands:*(*(a1 + 40) + 16)];
  v2 = [*(*(a1 + 40) + 32) allValues];
  [*(a1 + 32) setRemoteControlContexts:v2];

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 104);

  return [v3 setCommandClientsRestriction:v4];
}

MRDMutableRemoteControlCommand *sub_100057A98(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = MRCreatePlayerPathFromXPCMessage();
  uint64 = xpc_dictionary_get_uint64(v4, "MRXPC_COMMAND_KEY");
  v7 = MRCreateDataFromXPCMessage();

  v8 = [v5 copy];
  if ([v3 entitlements] & 2) != 0 || (sub_100060D94(v5))
  {
    v9 = 0;
  }

  else
  {
    [v8 setClient:0];
    [v8 setPlayer:0];
    v9 = 1;
  }

  v10 = +[MRDMediaRemoteServer server];
  v11 = [v10 nowPlayingServer];
  v12 = [v11 resolveExistingPlayerPath:v8];

  v13 = [MRDMutableRemoteControlCommand alloc];
  v14 = [v3 bundleIdentifier];
  v15 = [(MRDRemoteControlCommand *)v13 initWithCommandType:uint64 playerPath:v12 unresolvedPlayerPath:v8 senderAppDisplayID:v14 optionsData:v7];

  if (v9)
  {
    v16 = [NSString alloc];
    v17 = [v3 bundleIdentifier];
    v18 = [(MRDRemoteControlCommand *)v15 commandID];
    v19 = [v16 initWithFormat:@"Client <%@> missing entitlement needed to send command <%@> to arbitrary apps. Sending to NowPlayingApp instead of <%@>.", v17, v18, v5];

    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5174();
    }

    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1003A51E4();
    }
  }

  return v15;
}

void sub_100057CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v4)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      v6 = _MRLogForCategory();
      v7 = [*(a1 + 40) commandID];
      v8 = [v7 hash];

      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *v9 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SendCommandXPCResultFromDaemon", "", v9, 2u);
      }

      MRAddCommandResultToXPCMessage();
      xpc_connection_send_message(v4, reply);
    }
  }
}

void sub_100057F50(uint64_t a1, unsigned int a2, void *a3)
{
  v9 = a3;
  v5 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v5)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v7 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "MRXPC_COMMAND_SEND_ERROR_KEY", a2);
      if (v9)
      {
        v8 = MRCreateDataFromArray();
        MRAddDataToXPCMessage();
      }

      xpc_connection_send_message(v5, v7);
    }
  }
}

void sub_100058138(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteUIService];
  v3 = [v2 isValid];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) bundleIdentifier];
    v9 = sub_100058224(v4, v5);

    v6 = [MRDMediaRemoteUIService alloc];
    v7 = [*(a1 + 32) bundleIdentifier];
    v8 = [(MRDMediaRemoteUIService *)v6 initWithClientBundleIdentifier:v7 configurationData:v9 endpoint:*(a1 + 48)];
    [*(a1 + 32) setRemoteUIService:v8];
  }
}

id sub_100058224(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 routingServer];
  v7 = [v6 recommendationController];
  v8 = [v7 _updateMediaControlsBlob:v4 sender:v3];

  return v8;
}

void sub_100058430(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteUIService];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000584D0;
  v3[3] = &unk_1004B6FC0;
  v4 = *(a1 + 40);
  [v2 presentWithCompletion:v3];
}

void sub_1000584D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100058568;
  v6[3] = &unk_1004B6E08;
  v7 = v3;
  v5 = v3;
  sub_100008278(v4, v6);
}

void sub_10005878C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100058884;
  v9[3] = &unk_1004B7310;
  v9[4] = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v12 = v4;
  v8 = v4;
  dispatch_sync(v7, v9);
  MRAddPropertyListToXPCMessage();
}

void sub_100058884(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if (![*(a1 + 48) isResolved] || (objc_msgSend(v10, "playerPath"), v11 = objc_claimAutoreleasedReturnValue(), v12 = *(a1 + 48), v13 = MRNowPlayingPlayerPathEqualToPlayerPath(), v11, v13))
        {
          v14 = *(a1 + 56);
          v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 commandType]);
          [v14 addObject:v15];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *(*(a1 + 32) + 24);
  v17 = [*(a1 + 40) bundleIdentifier];
  LODWORD(v16) = [v16 containsObject:v17];

  if (v16)
  {
    [*(a1 + 56) addObject:&off_1004E04E8];
  }
}

void sub_100058DA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 error];
  MRAddErrorToXPCMessage();
}

void sub_100058DFC(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  if (*(a1 + 40))
  {
    v5 = *(*(a1 + 32) + 24);

    [v5 addObject:?];
  }
}

void sub_100058E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10005927C;
    v46[3] = &unk_1004B6E08;
    v47 = v6;
    sub_100008278(v8, v46);
    v9 = v47;
  }

  else
  {
    v10 = +[MRDMediaRemoteServer server];
    v11 = [v10 nowPlayingServer];
    v9 = [v11 queryExistingPlayerPathForXPCMessage:*(a1 + 32) forClient:*(a1 + 40)];

    v12 = *(a1 + 32);
    v13 = [v9 playerPath];
    MRAddPlayerPathToXPCMessage();

    v14 = *(a1 + 32);
    v15 = MRCreatePlayerPathFromXPCMessage();
    v16 = +[MRDMediaRemoteServer server];
    v17 = [v16 nowPlayingServer];
    v18 = [v15 origin];
    v19 = [v17 originClientForOrigin:v18];

    v20 = [v19 activeNowPlayingClient];
    v21 = [v20 activePlayerClient];

    v22 = [v9 playerClient];
    v23 = v22;
    if (v22 == v21)
    {
    }

    else
    {
      v24 = [v21 isPlaying];

      if (v24)
      {
        v36 = v15;
        v25 = [*(a1 + 48) startEvent:@"SendPause" role:3];
        v26 = *(a1 + 48);
        v27 = [v21 playerPath];
        v28 = [v27 description];
        [v26 addEventInput:v28 withKey:@"playerPath" toEventID:v25];

        v48 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
        v49 = @"Pause because migration";
        [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v29 = [v21 playerPath];
        v40 = _NSConcreteStackBlock;
        v41 = 3221225472;
        v42 = sub_10005928C;
        v43 = &unk_1004B7530;
        v44 = *(a1 + 48);
        v45 = v25;
        v15 = v36;
        MRMediaRemoteSendCommandToPlayer();
      }
    }

    v30 = [*(a1 + 48) startEvent:@"BlessApp" role:3];
    v31 = [v5 bundleIdentifier];
    sub_10019FC4C(v31);

    [*(a1 + 48) endEventWithID:v30];
    LODWORD(v30) = [*(a1 + 48) startEvent:@"SendPlaybackSession" role:3];
    v32 = *(a1 + 32);
    v33 = *(a1 + 56);
    MRAddProtobufToXPCMessage();
    v34 = *(a1 + 32);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10005929C;
    v37[3] = &unk_1004B7558;
    v39 = v30;
    v35 = *(a1 + 72);
    v37[4] = *(a1 + 64);
    v38 = v35;
    [v5 relayXPCMessage:v34 andReply:1 resultCallback:v37];
  }
}

void sub_10005929C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRCreateProtobufFromXPCMessage();
  v5 = [v4 request];
  [v5 endEventWithID:*(a1 + 48)];

  MRAddProtobufToXPCMessage();
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100059378;
  v9[3] = &unk_1004B68F0;
  v9[4] = v7;
  v10 = v6;
  dispatch_async(v8, v9);
}

void sub_100059384(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = [[NSError alloc] initWithMRError:4 description:@"No bundleID provided"];
  MRAddClientErrorToXPCMessage();
}

void sub_100059B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100059BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && notify_is_valid_token(WeakRetained[14]))
  {
    notify_cancel(WeakRetained[14]);
  }

  sub_100008278(*(a1 + 32), &stru_1004B75E0);
}

void sub_100059C1C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = [[MRAudioFadeResponseMessage alloc] initWithFadeDuration:1000 error:0];
  MRAddProtobufToXPCMessage();
}

void sub_100059C8C(id *a1, int a2)
{
  if ([a1[4] disarm])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if (WeakRetained)
    {
      state64 = 0;
      if (notify_get_state(a2, &state64))
      {
        v5 = _MRLogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1003A5258();
        }
      }

      v6 = dispatch_time(0, 1000000 * state64);
      v7 = WeakRetained[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059DC4;
      block[3] = &unk_1004B7650;
      v9 = a1[5];
      v10 = state64;
      dispatch_after(v6, v7, block);
    }

    notify_cancel(a2);
  }
}

uint64_t sub_100059DC4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100059E38;
  v3[3] = &unk_1004B7628;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return sub_100008278(v1, v3);
}

void sub_100059E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRAudioFadeResponseMessage alloc] initWithFadeDuration:*(a1 + 32) error:0];
  MRAddProtobufToXPCMessage();
}

void sub_100059EB4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:0];
  MRAddProtobufToXPCMessage();
}

uint64_t sub_10005A2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToData:*(a1 + 32)])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToData:*(a1 + 40)] ^ 1;
  }

  return v4;
}

void sub_10005A324(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allObjects];
  v5 = MRCreateDataFromArray();

  MRAddDataToXPCMessage();
}

void sub_10005A554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A56C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_createAndActivateConnection:*(a1 + 40) forClient:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10005A5BC(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = a2;
    [v2 code];
    MRAddErrorToXPCMessage();
  }
}

void sub_10005A710(uint64_t a1)
{
  v4 = [*(a1 + 32) applicationConnections];
  v2 = [*(a1 + 40) identifier];
  v3 = [v4 objectForKeyedSubscript:v2];
  [v3 invalidate:*(a1 + 48)];
}

void sub_10005AA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10005AA60(uint64_t a1)
{
  v6 = [*(a1 + 32) applicationConnections];
  v2 = [*(a1 + 40) identifier];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005AAE4(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = a2;
    [v2 code];
    MRAddErrorToXPCMessage();
  }
}

void sub_10005AF34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_10005AF54(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v5 type];
    v7 = MRCreateXPCMessage();
    MRAddProtobufToXPCMessage();
    [WeakRetained relayXPCMessage:v7 andReply:0];
  }

  else
  {
    v7 = [[NSError alloc] initWithMRError:179];
    [v8 invalidate:v7];
  }
}

void sub_10005B03C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B11C;
  block[3] = &unk_1004B77E8;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10005B11C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 setType:0];
    if (*(a1 + 48))
    {
      [v4 invalidate:?];
    }

    else
    {
      [v4 setLocalInvalidationXPCClient:*(a1 + 56)];
      [v4 activate];
    }
  }

  else
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 64);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlServer] createAndActivateConnection - connection: %@ lost before activation", &v7, 0xCu);
    }
  }
}

void sub_10005B544(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationConnections];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

id *sub_10005B610(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _clearAllQueuedCommandsForReason:@"phone call began"];
  }

  return result;
}

void sub_10005B81C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 64);
    v8 = [*(a1 + 32) appOptions];
    v6 = [*(a1 + 32) routeUID];
    if ([v6 length])
    {
      v9 = (v7 | 2) == 2;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = [*(a1 + 40) routingServer];
      [v10 pickCachedRouteWithUID:v6];
    }

    v11 = [*(a1 + 48) _resolvedLocalDeviceDestinationAppDisplayIdentifierForCommand:*(a1 + 32)];
    v12 = [*(a1 + 48) _destinationClientForRemoteControlCommand:*(a1 + 32)];
    if (v12 | v11)
    {
      v15 = v12;
LABEL_18:
      v18 = [*(a1 + 32) destinationAppDisplayID];
      if (v18)
      {
        v19 = v18;
        v20 = [*(a1 + 32) destinationAppDisplayID];
        v21 = [v11 isEqualToString:v20];

        if ((v21 & 1) == 0)
        {
          v22 = [[MRClient alloc] initWithProcessIdentifier:sub_10019FD60(v11) bundleIdentifier:v11];
          v23 = [MRPlayerPath alloc];
          v24 = +[MROrigin localOrigin];
          v25 = [v23 initWithOrigin:v24 client:v22 player:0];

          v26 = +[MRDMediaRemoteServer server];
          v27 = [v26 nowPlayingServer];

          v28 = [v27 resolveExistingPlayerPath:v25];
          if (v28)
          {
            [*(a1 + 32) setPlayerPath:v28];
          }
        }
      }

      v29 = [*(a1 + 32) shouldImplicitlyLaunchApplication];
      if (v15)
      {
        [*(a1 + 48) _sendRemoteControlCommand:*(a1 + 32) toDestinationClient:v15 withCompletion:*(a1 + 56)];
      }

      else if ((v29 | v8))
      {
        [*(a1 + 48) _enqueueCommand:*(a1 + 32) forApplication:v11 withCompletion:*(a1 + 56)];
      }

      else
      {
        v30 = [*(a1 + 32) unresolvedPlayerPath];
        v31 = [v30 client];

        v32 = _MRLogForCategory();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            v34 = *(a1 + 32);
            v39 = 138412290;
            v40 = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No destination client can be found for command %@, and the option to launch the app was not included. Dropping command.", &v39, 0xCu);
          }

          v35 = *(a1 + 56);
          if (!v35)
          {
            goto LABEL_38;
          }

          v36 = 1;
        }

        else
        {
          if (v33)
          {
            v37 = *(a1 + 32);
            v39 = 138412290;
            v40 = v37;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No now playing client can be found for command %@, and the option to launch the app was not included. Dropping command.", &v39, 0xCu);
          }

          v35 = *(a1 + 56);
          if (!v35)
          {
            goto LABEL_38;
          }

          v36 = 18;
        }

        v38 = [MRCommandResult commandResultWithSendError:v36];
        (*(v35 + 16))(v35, v38);
      }

LABEL_38:

      goto LABEL_39;
    }

    v13 = [*(a1 + 40) nowPlayingServer];
    v14 = [v13 localActiveClientBundleIdentifier];
    if (!v14)
    {
      v16 = [v13 localOriginClient];
      v17 = [v16 nowPlayingDataSource];

      v11 = [v17 nowPlayingApplicationDisplayID];

      if (v11)
      {
        goto LABEL_17;
      }

      v14 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    }

    v11 = v14;
LABEL_17:
    v15 = [*(a1 + 40) clientForBundleIdentifier:v11];

    goto LABEL_18;
  }

  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v39 = 138543362;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Command ignored because of device state: %{public}@", &v39, 0xCu);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = [MRCommandResult commandResultWithSendError:3 description:@"PhoneCall Active"];
    (*(v5 + 16))(v5, v6);
LABEL_39:
  }
}

void sub_10005BEAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 sendError];
  v5 = [v3 handlerReturnStatuses];

  (*(v2 + 16))(v2, v4, v5);
}

void sub_10005C124(uint64_t a1)
{
  v2 = [MRCommandResult commandResultWithSendError:20];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

void sub_10005C190(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) disarm])
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_10005C1F8(id *a1, int a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[4] commandID];
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Command <%{public}@> ignored because of device state", buf, 0xCu);
    }

    v5 = a1[7];
    v6 = [MRCommandResult commandResultWithSendError:3 description:@"PhoneCall Active"];
    v5[2](v5, v6);
    goto LABEL_36;
  }

  v7 = [a1[5] commandClientsRestriction];

  if (!v7)
  {
LABEL_11:
    v14 = a1[4];
    v13 = a1[5];
    v15 = a1 + 4;
    v16 = a1[6];
    v80 = 0;
    v17 = [v13 _resolveCommandBeforeSend:v14 toClient:v16 error:&v80];
    v6 = v80;
    if (v6)
    {
      v18 = _MRLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1003A5364(a1 + 4);
      }

      v19 = a1[7];
      v20 = [MRCommandResult commandResultWithSendError:3 description:@"Processing error"];
      v19[2](v19, v20);

LABEL_35:
      goto LABEL_36;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = sub_100034FB0;
    v87 = sub_10003599C;
    v88 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = [*v15 nowPlayingAppStackEligible];
    if (*(v77 + 24) != 1)
    {
LABEL_30:
      v53 = _MRLogForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [a1[6] bundleIdentifier];
        v55 = [a1[6] displayName];
        *v81 = 138543874;
        *&v81[4] = v17;
        *&v81[12] = 2114;
        *&v81[14] = v54;
        *&v81[22] = 2114;
        v82 = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sending command %{public}@ to %{public}@ (%{public}@).", v81, 0x20u);
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10005D130;
      v61[3] = &unk_1004B7950;
      v56 = a1[6];
      v61[4] = a1[5];
      v62 = v17;
      v63 = a1[6];
      v65 = buf;
      v64 = a1[7];
      [v56 sendRemoteControlCommand:v62 withCompletionBlock:v61];
      v57 = [a1[5] _remoteControlContextForCommand:a1[4]];
      if (v57)
      {
        v58 = [a1[6] bundleIdentifier];
        v59 = [[MRDRoutedRemoteControlCommand alloc] initWithCommand:*v15 routedApp:v58];
        [v57 addRoutedCommand:v59];
      }

      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_35;
    }

    v26 = a1[4];
    v27 = a1[5];
    v28 = *(v27 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005CBDC;
    block[3] = &unk_1004B78D8;
    block[4] = v27;
    v74 = v26;
    v75 = &v76;
    dispatch_sync(v28, block);
    if (*(v77 + 24) == 1)
    {
      v29 = +[MRDMediaRemoteServer server];
      v30 = [v29 nowPlayingServer];
      v31 = [v30 localActivePlayerClient];
      v32 = [v31 isPlaying];

      if (v32)
      {
        v33 = _MRLogForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [*v15 commandID];
          *v81 = 138543874;
          *&v81[4] = @"sendRemoteControlCommand";
          *&v81[12] = 2114;
          *&v81[14] = v34;
          *&v81[22] = 2112;
          v82 = @"Device is already playing. Demoting nowPlayingAppStackPopEligible command to ineligible";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", v81, 0x20u);
        }

        *(v77 + 24) = 0;
      }

      else if (v77[3])
      {
        goto LABEL_26;
      }
    }

    v35 = +[MRDMediaRemoteServer server];
    v36 = [v35 nowPlayingServer];
    v37 = [v36 localOriginClient];
    v38 = [v37 nowPlayingDataSource];

    [v38 popNowPlayingAppStack:0 forReason:6];
LABEL_26:

    if (v77[3])
    {
      v39 = _MRLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [*v15 commandID];
        *v81 = 138543874;
        *&v81[4] = @"sendRemoteControlCommand";
        *&v81[12] = 2114;
        *&v81[14] = v40;
        *&v81[22] = 2112;
        v82 = @"Sending nowPlayingAppStackPopEligible command...";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", v81, 0x20u);
      }

      *v81 = 0;
      *&v81[8] = v81;
      *&v81[16] = 0x3032000000;
      v82 = sub_100034FB0;
      v83 = sub_10003599C;
      v84 = 0;
      v41 = [MSVTimer alloc];
      v42 = +[MRUserSettings currentSettings];
      [v42 nowPlayingAppStackFailedPlayInterval];
      v44 = v43;
      v45 = dispatch_get_global_queue(0, 0);
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10005CCF0;
      v69[3] = &unk_1004B7900;
      v71 = v81;
      v60 = *v15;
      v46 = *v15;
      v70 = vextq_s8(v60, v60, 8uLL);
      v72 = buf;
      v47 = [v41 initWithInterval:0 repeats:v45 queue:v69 block:v44];

      v48 = +[NSNotificationCenter defaultCenter];
      v49 = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10005CFA0;
      v66[3] = &unk_1004B7928;
      v66[4] = a1[5];
      v68 = v81;
      v50 = v47;
      v67 = v50;
      v51 = [v48 addObserverForName:v49 object:0 queue:0 usingBlock:v66];
      v52 = *(*&v81[8] + 40);
      *(*&v81[8] + 40) = v51;

      _Block_object_dispose(v81, 8);
    }

    goto LABEL_30;
  }

  v6 = [a1[6] auditToken];
  if (v6)
  {
    v8 = [a1[5] commandClientsRestriction];
    v9 = [v8 allowedAuditTokens];
    v10 = [v9 containsObject:v6];

    if (v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] Allowed command %@. Allow-listed.", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    v23 = a1[6];
    *buf = 138412546;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[RestrictedCommandClients Mode] Blocked command %@. %@ is not allow-listed", buf, 0x16u);
  }

  v24 = a1[7];
  v25 = [MRCommandResult commandResultWithSendError:3 description:@"RestrictedCommandClients Mode - Client not in allow list"];
  v24[2](v24, v25);

LABEL_36:
}

void sub_10005CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10005CBDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) commandID];
      v5 = 138543874;
      v6 = @"sendRemoteControlCommand";
      v7 = 2114;
      v8 = v4;
      v9 = 2112;
      v10 = @"A previous nowPlayingAppStackPopEligible command already in progress. Demoting to ineligible";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v5, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    *(v1 + 80) = 1;
  }
}

void sub_10005CCF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005CF38;
  v18[3] = &unk_1004B6958;
  v4 = *(a1 + 48);
  v18[4] = v2;
  v18[5] = v4;
  dispatch_async(v3, v18);
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v6 localActivePlayerClient];
  v8 = [v7 isPlaying];

  if (v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) commandID];
      *buf = 138543874;
      v20 = @"sendRemoteControlCommand";
      v21 = 2114;
      v22 = v10;
      v23 = 2112;
      v24 = @"Something is already playing. Cancelling nowPlayingAppStackPop";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    v9 = *(*(*(a1 + 56) + 8) + 40);
    objc_sync_exit(v11);

    if (v9)
    {
      v12 = [v9 error];

      if (v12)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      v13 = 3;
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 localOriginClient];
    v17 = [v16 nowPlayingDataSource];

    [v17 popNowPlayingAppStack:1 forReason:v13];
  }
}

void sub_10005CF38(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_10005CFA0(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005D0C8;
    v13[3] = &unk_1004B6958;
    v8 = *(a1 + 48);
    v13[4] = v6;
    v13[5] = v8;
    dispatch_async(v7, v13);
    [*(a1 + 40) invalidate];
    v9 = +[MRDMediaRemoteServer server];
    v10 = [v9 nowPlayingServer];
    v11 = [v10 localOriginClient];
    v12 = [v11 nowPlayingDataSource];

    [v12 popNowPlayingAppStack:0 forReason:0];
  }
}

void sub_10005D0C8(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 0;
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_10005D130(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _performCommandProcessingAfterSend:*(a1 + 40)];
  if ([v3 sendError])
  {
    [v3 sendError];
    v4 = MRMediaRemoteSendCommandErrorDescription();
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5408(a1);
    }
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  objc_sync_exit(v6);
  (*(*(a1 + 56) + 16))();
}

void sub_10005D500(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) _clearQueuedCommand:*(a1 + 40) forUnavailableApplicationWithDisplayID:*(a1 + 48)])
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10005D8D0;
    v28 = &unk_1004B7978;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v29 = v4;
    v30 = v5;
    if (!sub_10005D8D0(&v25))
    {
LABEL_9:
      if (!*(a1 + 56))
      {
LABEL_26:

        goto LABEL_27;
      }

      v12 = [v3 userInfo];
      v9 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if ([v9 code] == 4)
      {
        v13 = [v9 domain];
        v14 = [v13 isEqualToString:@"FBSOpenApplicationErrorDomain"];

        if (v14)
        {
          v15 = *(a1 + 56);
          v16 = 9;
LABEL_24:
          v11 = [MRCommandResult commandResultWithSendError:v16, v25, v26];
          (*(v15 + 16))(v15, v11);
          goto LABEL_25;
        }
      }

      if ([v9 code] != 5 || (objc_msgSend(v9, "domain"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"FBSOpenApplicationErrorDomain"), v17, !v18))
      {
        if ([v3 code] == 126 && (objc_msgSend(v3, "domain"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", kMRMediaRemoteFrameworkErrorDomain), v21, v22))
        {
          v15 = *(a1 + 56);
          v16 = 15;
        }

        else
        {
          v15 = *(a1 + 56);
          v16 = 4;
        }

        goto LABEL_24;
      }

      v19 = *(a1 + 56);
      v11 = [v9 localizedFailureReason];
      v20 = [MRCommandResult commandResultWithSendError:16 description:v11];
      (*(v19 + 16))(v19, v20);
LABEL_22:

LABEL_25:
      goto LABEL_26;
    }

    v6 = [MRDMediaRemoteServer server:v25];
    v7 = [v6 nowPlayingServer];
    v8 = [v7 localOriginClient];
    v9 = [v8 nowPlayingDataSource];

    [v9 popNowPlayingAppStack:1 forReason:1];
    v10 = [v9 topOfNowPlayingAppStack];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
      if (!v11)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (([v11 isEqualToString:*(a1 + 48)] & 1) == 0)
    {
      v20 = [*(a1 + 40) mutableCopy];
      [v20 setDestinationAppDisplayID:v11];
      v23 = _MRLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [*(a1 + 40) commandID];
        *buf = 138543874;
        v32 = @"sendRemoteControlCommand";
        v33 = 2114;
        v34 = v24;
        v35 = 2112;
        v36 = @"Failed to launch app, forwarding nowPlayingAppStackPopEligible command";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [*(a1 + 32) _sendLocalCommand:v20 withCompletionHandler:*(a1 + 56)];
      goto LABEL_22;
    }

    goto LABEL_8;
  }

LABEL_27:
}

uint64_t sub_10005D8D0(uint64_t a1)
{
  result = [*(a1 + 32) nowPlayingAppStackEligible];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = +[MRUserSettings currentSettings];
    [v4 nowPlayingAppStackFailedPlayInterval];
    LOBYTE(v3) = [v3 _checkAndMaybeUpdateNowPlayingAppStackPopRateLimitingWithInterval:?];

    if (v3)
    {
      return 1;
    }

    else
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) commandID];
        v11 = 138543874;
        v12 = @"sendRemoteControlCommand";
        v13 = 2114;
        v14 = v6;
        v15 = 2112;
        v16 = @"nowPlayingAppStackPopEligible command recently sent. Ignoring due to rate limiting...";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v11, 0x20u);
      }

      v7 = +[MRDMediaRemoteServer server];
      v8 = [v7 nowPlayingServer];
      v9 = [v8 localOriginClient];
      v10 = [v9 nowPlayingDataSource];

      [v10 popNowPlayingAppStack:0 forReason:7];
      return 0;
    }
  }

  return result;
}

void sub_10005DD08(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 addObject:a1[6]];
}

void sub_10005DD88(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if ([v2 containsObject:*(a1 + 48)])
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = [v4 dateCreated];
      [v5 timeIntervalSinceNow];
      *buf = 138543618;
      v12 = v4;
      v13 = 2048;
      v14 = -v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing previously queued command %{public}@ because it timed out (enqueued for %f seconds)", buf, 0x16u);
    }

    v7 = [*(a1 + 48) _completionHandler];
    v8 = v7;
    if (v7)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005DF18;
      block[3] = &unk_1004B79A0;
      v10 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }

    [v2 removeObject:*(a1 + 48)];
  }
}

void sub_10005DF18(uint64_t a1)
{
  v2 = [MRCommandResult commandResultWithSendError:17];
  (*(*(a1 + 32) + 16))();
}

void sub_10005E228(uint64_t a1)
{
  v7 = [*(a1 + 32) bundleIdentifier];
  v2 = [*(*(a1 + 40) + 16) objectForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 copy];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(*(a1 + 40) + 16) removeObjectForKey:v7];
  }
}

void sub_10005E3BC(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if ([v2 containsObject:a1[6]])
  {
    *(*(a1[7] + 8) + 24) = 1;
    [v2 removeObject:a1[6]];
  }
}

id sub_10005E4CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v32 = v4;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing queued commands because %{public}@ %@", buf, 0x16u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [*(*(a1 + 32) + 16) allValues];
    v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v15 = *v26;
      do
      {
        v6 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = v6;
          v7 = *(*(&v25 + 1) + 8 * v6);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            do
            {
              v12 = 0;
              do
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v21 + 1) + 8 * v12) _completionHandler];
                if (v13)
                {
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_10005E788;
                  block[3] = &unk_1004B79F0;
                  v19 = *(a1 + 40);
                  v20 = v13;
                  dispatch_async(&_dispatch_main_q, block);
                }

                v12 = v12 + 1;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v10);
          }

          v6 = v17 + 1;
        }

        while ((v17 + 1) != v16);
        v16 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    return [*(*(a1 + 32) + 16) removeAllObjects];
  }

  return result;
}

void sub_10005E788(uint64_t a1)
{
  v2 = [[MRCommandResult alloc] initWithWithSendError:23 description:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_10005E904(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10005EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005EDD4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [MRDRemoteControlContext alloc];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) senderAppDisplayID];
    v8 = [(MRDRemoteControlContext *)v5 initWithContextID:v6 originatingAppDisplayID:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(a1 + 32) + 32) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:*(a1 + 40)];
    v11 = dispatch_time(0, 60000000000);
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = *(v13 + 8);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005EF20;
    v15[3] = &unk_1004B68F0;
    v15[4] = v13;
    v16 = v12;
    dispatch_after(v11, v14, v15);
  }
}

void sub_10005F430(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring command because a phone call or FaceTime is active.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = +[MRDMediaRemoteServer server];
    v5 = [v4 nowPlayingServer];
    v6 = [v5 localOriginClient];
    v8 = [v6 nowPlayingDataSource];

    if (v8)
    {
      v7 = [v8 shouldSendCommand:*(a1 + 32)] ^ 1;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10005F608(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (!v2 || ([v2 timeIntervalSinceNow], fabs(v3) > *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = +[NSDate now];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;
  }
}

void sub_10005F774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005F78C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = dispatch_get_global_queue(2, 0);
  v6 = *(a1 + 40);
  v5 = v2;
  MRProcessIDForApplication();

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

BOOL sub_1000603B0(id a1, MRDNowPlayingClient *a2)
{
  v2 = [(MRDNowPlayingClient *)a2 client];
  v3 = [v2 isSystemMediaApplication];

  return v3;
}

uint64_t sub_100060D94(void *a1)
{
  v1 = a1;
  v2 = [v1 origin];
  v3 = [v2 isLocal];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = +[MRDMediaRemoteServer server];
  v5 = [v1 client];
  v6 = [v4 clientForPID:{objc_msgSend(v5, "processIdentifier")}];

  if (!v6)
  {
LABEL_5:
    v22 = [v1 client];
    v23 = [v22 bundleIdentifier];
    v24 = sub_100060FA4(v23);

    v6 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v21 = 1;
    goto LABEL_7;
  }

  v7 = [v6 bundleIdentifier];
  v8 = sub_100060FA4(v7);

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = objc_alloc_init(MRPlayerPath);
  v10 = [v1 origin];
  [v9 setOrigin:v10];

  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 nowPlayingServer];
  v13 = +[MRDMediaRemoteServer server];
  v14 = [v13 nowPlayingServer];
  v15 = [v14 resolveExistingPlayerPath:v9];
  v16 = [v12 queryExistingPlayerPath:v15];

  v17 = [v16 nowPlayingClient];
  v18 = [v17 playerPath];
  v19 = [v18 client];
  v20 = [v1 client];
  v21 = [v19 isEqual:v20];

LABEL_7:
  return v21;
}

uint64_t sub_100060FA4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1005291E0 == -1)
  {
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003A5544();
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  if (([qword_1005291D8 containsObject:v2] & 1) == 0 && (MRMediaRemoteApplicationIsSystemMediaApplication() & 1) == 0 && (MRMediaRemoteApplicationIsSystemPodcastApplication() & 1) == 0)
  {
    IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication();
    goto LABEL_7;
  }

LABEL_6:
  IsSystemBooksApplication = 1;
LABEL_7:

  return IsSystemBooksApplication;
}

void sub_100061030(id a1)
{
  v1 = [[NSSet alloc] initWithArray:&off_1004E0E50];
  v2 = qword_1005291D8;
  qword_1005291D8 = v1;
}

void sub_10006114C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100061DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 256), 8);
  _Block_object_dispose((v61 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_100061E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(*(*(a1 + 72) + 8) + 40);
    v8 = _MRLogForCategory();
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 72) + 8) + 40);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v50 = v26;
        v51 = 2114;
        v52 = v27;
        v53 = 2114;
        v54 = v28;
        v55 = 2048;
        v56 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v50 = v36;
        v51 = 2114;
        v52 = v37;
        v53 = 2048;
        v54 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v13 = [v5 debugName];
      v20 = *(*(*(a1 + 72) + 8) + 40);
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v18;
      v51 = 2114;
      v52 = v19;
      v53 = 2112;
      v54 = v13;
      v55 = 2114;
      v56 = v20;
      v57 = 2048;
      v58 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v13 = [v5 debugName];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v50 = v33;
      v51 = 2114;
      v52 = v34;
      v53 = 2112;
      v54 = v13;
      v55 = 2048;
      v56 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = _MRLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 72) + 8) + 40);
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v10;
      v51 = 2114;
      v52 = v11;
      v53 = 2114;
      v54 = v6;
      v55 = 2114;
      v56 = v12;
      v57 = 2048;
      v58 = v14;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    sub_1003A5558(a1, v6, v8);
  }

LABEL_21:

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000622BC;
  v43[3] = &unk_1004B7B50;
  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  v45 = v6;
  v46 = v40;
  v44 = v5;
  v48 = *(a1 + 96);
  v47 = *(a1 + 80);
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, v43);
}

void sub_1000622BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  obj = *(a1 + 72);
  objc_sync_enter(obj);
  [*(*(*(a1 + 56) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(*(*(a1 + 56) + 8) + 40) removeEndpointsChangedCallback:?];
  }

  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_sync_exit(obj);
}

uint64_t sub_100062384(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_1000623A4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10006241C(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceUID];

  if (!v2)
  {
LABEL_7:
    v10 = +[MRAVClusterController sharedController];
    v11 = [v10 clusterStatus];

    if (v11 == 2)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v21 = 138543874;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        v25 = 2112;
        v26 = @"Not short-circuiting because cluster secondary";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v21, 0x20u);
      }
    }

    else
    {
      if ([*(a1 + 32) isGroupLeader])
      {
        if (![*(a1 + 32) isAirPlayActive])
        {
          v19 = +[MRUserSettings currentSettings];
          v20 = [v19 supportMultiplayerHost];

          return v20 ^ 1;
        }

        v12 = _MRLogForCategory();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        v21 = 138543874;
        v22 = v15;
        v23 = 2114;
        v24 = v16;
        v25 = 2112;
        v26 = @"Not short-circuiting because secondary";
        goto LABEL_16;
      }

      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v21 = 138543874;
        v22 = v17;
        v23 = 2114;
        v24 = v18;
        v25 = 2112;
        v26 = @"Not short-circuiting not group leader";
        goto LABEL_16;
      }
    }

LABEL_17:

    return 0;
  }

  v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v4 = [v3 outputDevices];
  v5 = [v4 msv_firstWhere:&stru_1004B7BE0];

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v21 = 138543874;
    v22 = v7;
    v23 = 2114;
    v24 = v8;
    v25 = 2112;
    v26 = @"Maybe short-circuiting because non airplay device picked";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v21, 0x20u);
  }

  return 1;
}

BOOL sub_100062704(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  v3 = [(MRAVOutputDevice *)v2 deviceType]!= 4 && [(MRAVOutputDevice *)v2 deviceType]!= 1;

  return v3;
}

void sub_100062768(void *a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) containsOutputDeviceWithUID:{*(*(a1[7] + 8) + 40), v11}])
        {
          v8 = _MRLogForCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = a1[4];
            v10 = a1[5];
            *buf = 138543874;
            v16 = v9;
            v17 = 2114;
            v18 = v10;
            v19 = 2112;
            v20 = @"found device in discovery";
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          }

          (*(a1[6] + 16))();
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

int64_t sub_100062A30(id a1, PCLockscreenControlsDevice *a2, PCLockscreenControlsDevice *a3)
{
  v4 = a3;
  v5 = [(PCLockscreenControlsDevice *)a2 distance];
  v6 = [(PCLockscreenControlsDevice *)v4 distance];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_100062B88(uint64_t a1, void *a2)
{
  v3 = [a2 mediaRouteID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100062D40(uint64_t a1)
{
  result = [*(a1 + 32) invalidated];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _configureObserver];
  }

  return result;
}

void sub_1000630FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained nearbyDevices];
    v7 = [v3 mediaRouteID];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 mediaRouteID];
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Removing device %@", &v13, 0xCu);
      }

      v11 = [v5 nearbyDevices];
      v12 = [v3 mediaRouteID];
      [v11 removeObject:v12];
    }
  }
}

void sub_100063258(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained nearbyDevices];
    v7 = [v3 mediaRouteID];
    v8 = [v6 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 mediaRouteID];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Adding device %@", &v14, 0xCu);
      }

      v11 = [v5 nearbyDevices];
      v12 = [v3 mediaRouteID];
      [v11 addObject:v12];

      v13 = [v5 delegate];
      [v13 devicesUpdated];
    }
  }
}

void sub_1000633CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1003A563C(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setInvalidated:1];
  }
}

void sub_100063450(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained setInvalidated:1];
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1003A56B4(v3, v6);
      }
    }

    else
    {
      [WeakRetained setInvalidated:0];
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ProximityProvider] Activated.", v7, 2u);
      }
    }
  }
}

Class sub_1000636B4()
{
  if (qword_1005291F0 != -1)
  {
    sub_1003A572C();
  }

  result = objc_getClass("PCLockscreenControlsObserver");
  qword_1005291E8 = result;
  off_10051EB60 = sub_100063708;
  return result;
}

id sub_100064C94(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 hashedUserIdentityIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t sub_100064EEC(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = v7;
      if (a4 > 4)
      {
        v9 = @"Feature disabled";
      }

      else
      {
        v9 = off_1004B7E80[a4];
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionApprovalManager] Auto-approving request %@, reason: %@", &v11, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100065010(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000650CC;
    v7[3] = &unk_1004B7DE8;
    v6 = *(a1 + 48);
    v8 = *(a1 + 40);
    [v6 shouldAutoApproveIdentity:v5 completion:v7];
  }
}

void sub_1000652EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100065338(void *a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = a1[4];
  v5 = [v3 hashedUserIdentityIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return v6 ^ 1;
}

id MRDGroupSessionAutoApproveReasonEnum(id a1)
{
  if (a1 + 1 <= 5)
  {
    a1 = **(&off_1004B7EA8 + a1 + 1);
  }

  return a1;
}

void sub_1000656CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ((*(a1 + 40) & ~[a3 unsignedIntValue]) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t sub_100065838(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100066094(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5740(a1);
    }
  }

  else
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory();
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = [v5 debugName];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v18 = 138544130;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v18, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v18 = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v18, 0x20u);
    }
  }

LABEL_10:

  v17 = *(a1 + 64);
  if (v17)
  {
    (*(v17 + 16))(v17, v5, v6, *(a1 + 56));
  }
}

void sub_1000662C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSString alloc];
  v8 = [v5 debugName];
  v9 = [v7 initWithFormat:@"Calling previewCallback with endpoint %@", v8];

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) requestID];
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

void sub_100066444(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000664D4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100066554(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 createOptimizedEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_1000665E8(uint64_t a1, void *a2)
{
  v3 = [a2 msv_map:&stru_1004B8028];
  v4 = [*(a1 + 32) discoverGroup];
  [v4 end];

  v5 = [*(a1 + 32) createEndpoint];
  [v5 start];

  v6 = [v3 count];
  v7 = v3;
  if (!v6)
  {
    v5 = [*(a1 + 40) deviceUID];
    v14 = v5;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000667A8;
  v10[3] = &unk_1004B8070;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:v7 timeout:v9 details:v10 completion:v8];
  if (!v6)
  {
  }
}

void sub_1000667A8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) createEndpoint];
  [v6 endWithError:v5];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100066860(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) findMyGroupLeader];
  [v6 endWithError:v5];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100066C84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory();
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = [v5 debugName];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v17 = 138544130;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v17, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v17 = 138543874;
      v18 = v15;
      v19 = 2114;
      v20 = v11;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v17, 0x20u);
    }

    goto LABEL_10;
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5740(a1);
  }

LABEL_10:

  (*(*(a1 + 56) + 16))();
}