void *sub_1002A5EA8()
{
  v1 = type metadata accessor for RoutingMode();
  v148 = *(v1 - 8);
  v2 = *(v148 + 64);
  v3 = __chkstk_darwin(v1);
  v147 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v146 = &v144 - v5;
  v168 = type metadata accessor for RoutingControl.Target();
  v170 = *(v168 - 8);
  v6 = *(v170 + 64);
  v7 = __chkstk_darwin(v168);
  v9 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v160 = &v144 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v144 - v13);
  __chkstk_darwin(v12);
  v16 = (&v144 - v15);
  v159 = type metadata accessor for ContinuousRoutingControl();
  v165 = *(v159 - 8);
  v17 = v165[8];
  v18 = __chkstk_darwin(v159);
  v157 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v144 - v20;
  v22 = type metadata accessor for RoutingControl();
  v166 = *(v22 - 8);
  v167 = v22;
  v23 = v166[8];
  v24 = __chkstk_darwin(v22);
  v156 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v155 = &v144 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v144 - v29;
  __chkstk_darwin(v28);
  v32 = &v144 - v31;
  v154 = v0;
  v33 = v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction;
  v34 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8);
  v158 = v9;
  if (!v34)
  {
    goto LABEL_38;
  }

  v35 = *(v33 + 24);
  v169 = *(v33 + 16);
  v36 = *(v33 + 40);
  v164 = *(v33 + 32);
  v37 = *(v33 + 48);
  if (v37 <= 5)
  {
    if (v37 < 3)
    {

      v38 = v36;
      v39 = *(*v154 + 680);
      v163 = v34;

      v40 = v164;
      v41 = sub_10026D0B8(v169, v35, v164, v36, v37);
      if (v40 == v39(v41) && v42 == v36)
      {

        v43 = v169;
        v44 = v35;
        v45 = v40;
        v46 = v36;
        v47 = v37;
LABEL_37:
        sub_1002485A4(v43, v44, v45, v46, v47);
        goto LABEL_38;
      }

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002485A4(v169, v35, v40, v38, v37);
      if (v82)
      {
        goto LABEL_38;
      }

LABEL_31:
      v87 = &enum case for RoutingMode.detailed(_:);
LABEL_77:
      v131 = v148;
      v132 = v146;
      (*(v148 + 104))(v146, *v87, v1);
      v133 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode;
      v134 = v154;
      swift_beginAccess();
      v135 = v147;
      (*(v131 + 16))(v147, v134 + v133, v1);
      swift_beginAccess();
      (*(v131 + 24))(v134 + v133, v132, v1);
      swift_endAccess();
      sub_100296450(v135, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode, "[%s] setOverrideRoutingMode - value: %{public}s");
      v136 = *(v131 + 8);
      v136(v135, v1);
      return (v136)(v132, v1);
    }

    v64 = v164;
    if (v37 == 4)
    {

      v86 = v169;
      sub_10026D0B8(v169, v35, v64, v36, 4u);

      v66 = v86;
      v67 = v35;
      v68 = v64;
      v69 = v36;
      v70 = 4;
      goto LABEL_30;
    }

    if (v37 == 5)
    {

      v65 = v169;
      sub_10026D0B8(v169, v35, v64, v36, 5u);

      v66 = v65;
      v67 = v35;
      v68 = v64;
      v69 = v36;
      v70 = 5;
LABEL_30:
      sub_1002485A4(v66, v67, v68, v69, v70);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (*(v33 + 48) <= 7u)
  {
    if (v37 == 6)
    {

      v84 = v169;
      v85 = v164;
      sub_10026D0B8(v169, v35, v164, v36, 6u);

      v66 = v84;
      v67 = v35;
      v68 = v85;
      v69 = v36;
      v70 = 6;
      goto LABEL_30;
    }

    v64 = v164;
    if (v37 != 7)
    {
LABEL_25:

      v83 = v169;
      sub_10026D0B8(v169, v35, v64, v36, v37);

      v43 = v83;
      v44 = v35;
      v45 = v64;
      v46 = v36;
      v47 = v37;
      goto LABEL_37;
    }
  }

  else
  {
    if (v37 - 8 < 2)
    {
      v48 = v169;
      v49 = swift_projectBox();
      v50 = v159;
      (v165[2])(v21, v49, v159);
      v163 = v34;
      v51 = v48;

      v161 = v35;
      v52 = v35;
      v53 = v164;
      LODWORD(v162) = v37;
      sub_10026D0B8(v48, v52, v164, v36, v37);
      v54 = v36;
      ContinuousRoutingControl.control.getter();
      (v165[1])(v21, v50);
      RoutingControl.target.getter();
      (v166[1])(v30, v167);
      v55 = v170;
      v56 = v168;
      if ((*(v170 + 88))(v14, v168) != enum case for RoutingControl.Target.session(_:))
      {

        sub_1002485A4(v51, v161, v53, v54, v162);
        (*(v55 + 8))(v14, v56);
        goto LABEL_38;
      }

      v57 = v54;
      v58 = (*(v55 + 96))(v14, v56);
      v60 = *v14;
      v59 = v14[1];
      v61 = (*(*v154 + 680))(v58);
      v63 = v161;
      if (v60 == v61 && v59 == v62)
      {

LABEL_35:

        v43 = v169;
        v44 = v63;
        v45 = v164;
        v46 = v57;
        goto LABEL_36;
      }

      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v89)
      {
        goto LABEL_35;
      }

      v138 = sub_100037234();
      if (v60 == *v138 && v59 == *(v138 + 1))
      {
        goto LABEL_35;
      }

      v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v140 = v169;
      v141 = v63;
      v142 = v164;
      v143 = v57;
      goto LABEL_86;
    }

    v64 = v164;
    if (v37 != 10)
    {
      goto LABEL_25;
    }
  }

  v71 = v169;
  v72 = swift_projectBox();
  v73 = v167;
  (v166[2])(v32, v72, v167);
  v163 = v34;

  sub_10026D0B8(v71, v35, v64, v36, v37);
  v74 = v64;
  v75 = v36;
  RoutingControl.target.getter();
  (v166[1])(v32, v73);
  v76 = v170;
  v77 = v168;
  if ((*(v170 + 88))(v16, v168) != enum case for RoutingControl.Target.session(_:))
  {

    sub_1002485A4(v169, v35, v74, v75, v37);
    (*(v76 + 8))(v16, v77);
    goto LABEL_38;
  }

  LODWORD(v162) = v37;
  v161 = v75;
  v78 = (*(v76 + 96))(v16, v77);
  v80 = *v16;
  v79 = v16[1];
  if (v80 == (*(*v154 + 680))(v78) && v79 == v81)
  {

LABEL_33:

    v43 = v169;
    v44 = v35;
    v45 = v164;
    v46 = v161;
LABEL_36:
    v47 = v162;
    goto LABEL_37;
  }

  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v88)
  {
    goto LABEL_33;
  }

  v137 = sub_100037234();
  if (v80 == *v137 && v79 == *(v137 + 1))
  {
    goto LABEL_33;
  }

  v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v140 = v169;
  v141 = v35;
  v142 = v164;
  v143 = v161;
LABEL_86:
  sub_1002485A4(v140, v141, v142, v143, v162);
  if ((v139 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_38:
  v90 = sub_10029A79C();
  v91 = v90[2];
  v145 = v1;
  if (v91)
  {
    v92 = sub_10028ADC8(v91, 0);
    v93 = sub_10028BA90(&v171, (v92 + 4), v91, v90);
    result = sub_100045960();
    v95 = v170;
    v96 = v160;
    if (v93 != v91)
    {
      goto LABEL_89;
    }

    result = v92;
  }

  else
  {

    result = _swiftEmptyArrayStorage;
    v95 = v170;
    v96 = v160;
  }

  v169 = result[2];
  if (!v169)
  {
LABEL_75:

    v87 = &enum case for RoutingMode.disabled(_:);
LABEL_76:
    v1 = v145;
    goto LABEL_77;
  }

  v97 = 0;
  v98 = 0;
  v149 = (v166 + 2);
  v153 = (v165 + 2);
  v152 = (v165 + 1);
  v164 = (v95 + 88);
  v165 = v166 + 1;
  LODWORD(v163) = enum case for RoutingControl.Target.session(_:);
  v151 = (v95 + 8);
  v150 = (v95 + 96);
  v166 = result;
  while (v98 < result[2])
  {
    v99 = *(result + v97 + 40);
    v100 = *(result + v97 + 48);
    v101 = *(result + v97 + 56);
    v102 = *(result + v97 + 64);
    v103 = *(result + v97 + 72);
    v104 = *(result + v97 + 80);
    if (v104 <= 7)
    {
      if (*(result + v97 + 80) <= 4u)
      {
        if (*(result + v97 + 80) <= 1u)
        {
          *(result + v97 + 80);
LABEL_74:

          v87 = &enum case for RoutingMode.detailed(_:);
          goto LABEL_76;
        }

        if (v104 == 2 || v104 == 4)
        {
          goto LABEL_74;
        }

        goto LABEL_46;
      }

      if (v104 != 7)
      {
        if (v104 == 5 || v104 == 6)
        {
          goto LABEL_74;
        }

        goto LABEL_46;
      }

      goto LABEL_60;
    }

    if (v104 - 8 >= 2)
    {
      if (v104 != 10)
      {
        goto LABEL_46;
      }

LABEL_60:
      v162 = v97;
      v118 = swift_projectBox();
      v119 = v102;
      v120 = v103;
      v121 = v155;
      v122 = v167;
      (*v149)(v155, v118, v167);

      v161 = v119;
      v170 = v120;
      sub_10026D0B8(v100, v101, v119, v120, v104);
      RoutingControl.target.getter();
      v123 = v168;
      (*v165)(v121, v122);
      v124 = (*v164)(v96, v123);
      if (v124 != v163)
      {

        sub_1002485A4(v100, v101, v161, v170, v104);
        (*v151)(v96, v123);
        goto LABEL_65;
      }

      v125 = v161;
      (*v150)(v96, v123);
      v127 = *v96;
      v126 = v96[1];
      v128 = sub_100037234();
      if (v127 == *v128 && v126 == *(v128 + 1))
      {

        sub_1002485A4(v100, v101, v125, v170, v104);
LABEL_65:
        result = v166;
        v97 = v162;
        goto LABEL_46;
      }

      v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002485A4(v100, v101, v125, v170, v104);
      result = v166;
      v97 = v162;
      if ((v130 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_46;
    }

    v105 = *(result + v97 + 48);
    v106 = swift_projectBox();
    v107 = v157;
    v108 = v159;
    (*v153)(v157, v106, v159);

    sub_10026D0B8(v100, v101, v102, v103, v104);
    v170 = v103;
    v109 = v156;
    ContinuousRoutingControl.control.getter();
    (*v152)(v107, v108);
    v110 = v102;
    v111 = v158;
    RoutingControl.target.getter();
    v112 = v168;
    (*v165)(v109, v167);
    v113 = (*v164)(v111, v112);
    if (v113 != v163)
    {

      sub_1002485A4(v100, v101, v110, v170, v104);
      (*v151)(v111, v112);
LABEL_45:
      v96 = v160;
      result = v166;
      goto LABEL_46;
    }

    v114 = v110;
    (*v150)(v111, v112);
    v116 = *v111;
    v115 = v111[1];
    v117 = sub_100037234();
    if (v116 == *v117 && v115 == *(v117 + 1))
    {

      sub_1002485A4(v100, v101, v114, v170, v104);
      goto LABEL_45;
    }

    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_1002485A4(v100, v101, v114, v170, v104);
    v96 = v160;
    result = v166;
    if ((v129 & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_46:
    ++v98;
    v97 += 56;
    if (v169 == v98)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

void sub_1002A6FE8()
{
  v1 = v0;
  v177 = *v0;
  v165 = type metadata accessor for DispatchWorkItemFlags();
  v164 = *(v165 - 8);
  v2 = *(v164 + 64);
  __chkstk_darwin(v165);
  v162 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchQoS();
  v161 = *(v163 - 8);
  v4 = *(v161 + 64);
  __chkstk_darwin(v163);
  v160 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for DispatchTime();
  v159 = *(v167 - 8);
  v6 = *(v159 + 64);
  v7 = __chkstk_darwin(v167);
  v157 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v158 = &v156 - v9;
  v10 = type metadata accessor for Logger();
  v179 = *(v10 - 8);
  v180 = v10;
  v11 = *(v179 + 64);
  v12 = __chkstk_darwin(v10);
  v173 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v172 = &v156 - v15;
  v16 = __chkstk_darwin(v14);
  v166 = &v156 - v17;
  v18 = __chkstk_darwin(v16);
  v178 = &v156 - v19;
  __chkstk_darwin(v18);
  v168 = &v156 - v20;
  v21 = type metadata accessor for RoutingMode();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v156 - v28;
  __chkstk_darwin(v27);
  v31 = &v156 - v30;
  v32 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode;
  swift_beginAccess();
  v33 = *(v22 + 16);
  v170 = v22 + 16;
  v171 = v32;
  v169 = v33;
  v33(v31, &v1[v32], v21);
  v34 = enum case for RoutingMode.detailed(_:);
  (*(v22 + 104))(v29, enum case for RoutingMode.detailed(_:), v21);
  v35 = static RoutingMode.== infix(_:_:)();
  v36 = *(v22 + 8);
  v36(v29, v21);
  v175 = v22 + 8;
  v176 = v31;
  v174 = v36;
  v37 = (v36)(v31, v21);
  if (v35)
  {
    v173 = v21;
    v38 = sub_100297780();
    v39 = [v38 discoveryMode];

    v40 = v178;
    if (!v39)
    {
      v41 = sub_100028D40();
      v43 = v179;
      v42 = v180;
      v44 = v168;
      (*(v179 + 16))(v168, v41, v180);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v156 = v1;
        v48 = v47;
        v172 = swift_slowAlloc();
        aBlock[0] = v172;
        *v48 = 136315394;
        v49 = _typeName(_:qualified:)();
        v51 = sub_10002C9C8(v49, v50, aBlock);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2082;
        v52 = v176;
        v53 = v173;
        v169(v176, v171 + v156, v173);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        v174(v52, v53);
        v57 = sub_10002C9C8(v54, v56, aBlock);

        *(v48 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v45, v46, "[%s] updateDiscovery - enable for override routing mode: %{public}s", v48, 0x16u);
        swift_arrayDestroy();

        v1 = v156;

        (*(v43 + 8))(v44, v180);
      }

      else
      {

        (*(v43 + 8))(v44, v42);
      }

      [*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession] setDiscoveryMode:2];
    }

    v106 = &v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
    if (*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8])
    {
      v107 = sub_100028D40();
      v109 = v179;
      v108 = v180;
      (*(v179 + 16))(v40, v107, v180);

      v110 = Logger.logObject.getter();
      v111 = v1;
      v112 = static os_log_type_t.default.getter();

      v113 = os_log_type_enabled(v110, v112);
      v156 = v111;
      if (v113)
      {
        v114 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v114 = 136315394;
        v115 = _typeName(_:qualified:)();
        v117 = sub_10002C9C8(v115, v116, aBlock);

        *(v114 + 4) = v117;
        *(v114 + 12) = 2082;
        v118 = v171 + v111;
        v119 = v176;
        v120 = v173;
        v169(v176, v118, v173);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v123 = v122;
        v174(v119, v120);
        v124 = sub_10002C9C8(v121, v123, aBlock);

        *(v114 + 14) = v124;
        _os_log_impl(&_mh_execute_header, v110, v112, "[%s] updateDiscovery - cancel scheduled disable for override routing mode: %{public}s", v114, 0x16u);
        swift_arrayDestroy();

        (*(v109 + 8))(v178, v180);
      }

      else
      {

        (*(v109 + 8))(v40, v108);
      }

      v125 = *(v106 + 1);
      *v106 = 0;
      *(v106 + 1) = 0;
    }

LABEL_30:
    sub_1002A01EC();
    return;
  }

  v58 = *(*v1 + 392);
  v59 = v1;
  v178 = (*v1 + 392);
  v58(v37);
  v60 = (*(v22 + 88))(v26, v21);
  if (v60 == enum case for RoutingMode.disabled(_:) || v60 == enum case for RoutingMode.prewarm(_:))
  {
    v80 = sub_100297780();
    v81 = [v80 discoveryMode];

    if (v81 == 2)
    {
      v82 = &v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
      if (!*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8])
      {
        v83 = static String.nanoIDFourChar()();
        v84 = v82[1];
        *v82 = v83;
        v82[1] = v85;
        v173 = v85;

        v86 = sub_100028D40();
        v88 = v179;
        v87 = v180;
        v89 = v166;
        (*(v179 + 16))(v166, v86, v180);

        v90 = v1;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v172 = v83;
          v94 = v93;
          v171 = swift_slowAlloc();
          aBlock[0] = v171;
          *v94 = 136315394;
          v95 = _typeName(_:qualified:)();
          v97 = v58;
          v98 = sub_10002C9C8(v95, v96, aBlock);

          *(v94 + 4) = v98;
          *(v94 + 12) = 2082;
          v100 = v176;
          v97(v99);
          sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          v174(v100, v21);
          v104 = sub_10002C9C8(v101, v103, aBlock);

          *(v94 + 14) = v104;
          _os_log_impl(&_mh_execute_header, v91, v92, "[%s] updateDiscovery - schedule disable for routing mode: %{public}s", v94, 0x16u);
          swift_arrayDestroy();

          v83 = v172;

          v105 = (*(v88 + 8))(v166, v180);
        }

        else
        {

          v105 = (*(v88 + 8))(v89, v87);
        }

        v145 = v177;
        v146 = *(*v90 + 368);
        v156 = v90;
        v179 = v146(v105);
        v147 = v157;
        static DispatchTime.now()();
        type metadata accessor for Preferences();
        static Preferences.discoveryHysteresis.getter();
        v148 = v158;
        + infix(_:_:)();
        v180 = *(v159 + 8);
        v180(v147, v167);
        v149 = swift_allocObject();
        swift_weakInit();
        v150 = swift_allocObject();
        v150[2] = v149;
        v150[3] = v83;
        v150[4] = v173;
        v150[5] = v145;
        aBlock[4] = sub_1002D1A1C;
        aBlock[5] = v150;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C7E38;
        v151 = _Block_copy(aBlock);

        v152 = v160;
        static DispatchQoS.unspecified.getter();
        v181 = _swiftEmptyArrayStorage;
        sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
        v153 = v162;
        v154 = v165;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v155 = v179;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v151);

        (*(v164 + 8))(v153, v154);
        (*(v161 + 8))(v152, v163);
        v180(v148, v167);
      }
    }

    goto LABEL_30;
  }

  if (v60 == enum case for RoutingMode.localNetwork(_:) || v60 == v34)
  {
    v61 = sub_100297780();
    v62 = [v61 discoveryMode];

    v63 = v172;
    if (!v62)
    {
      v64 = sub_100028D40();
      v66 = v179;
      v65 = v180;
      (*(v179 + 16))(v63, v64, v180);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v171 = v58;
        v70 = v69;
        v170 = swift_slowAlloc();
        aBlock[0] = v170;
        *v70 = 136315394;
        v71 = _typeName(_:qualified:)();
        v73 = sub_10002C9C8(v71, v72, aBlock);

        *(v70 + 4) = v73;
        *(v70 + 12) = 2082;
        v75 = v176;
        v171(v74);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        v174(v75, v21);
        v79 = sub_10002C9C8(v76, v78, aBlock);
        v1 = v59;

        *(v70 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v67, v68, "[%s] updateDiscovery - enable for routing mode: %{public}s", v70, 0x16u);
        swift_arrayDestroy();

        v58 = v171;

        (*(v66 + 8))(v172, v65);
      }

      else
      {

        (*(v66 + 8))(v63, v65);
      }

      [*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession] setDiscoveryMode:2];
    }

    v126 = &v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
    v127 = v173;
    if (*&v1[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8])
    {
      v128 = v21;
      v129 = sub_100028D40();
      v130 = v179;
      (*(v179 + 16))(v127, v129, v180);

      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v171 = v58;
        v134 = v133;
        v172 = swift_slowAlloc();
        aBlock[0] = v172;
        *v134 = 136315394;
        v135 = _typeName(_:qualified:)();
        v137 = sub_10002C9C8(v135, v136, aBlock);

        *(v134 + 4) = v137;
        *(v134 + 12) = 2082;
        v139 = v176;
        v171(v138);
        sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
        v140 = dispatch thunk of CustomStringConvertible.description.getter();
        v142 = v141;
        v174(v139, v128);
        v143 = sub_10002C9C8(v140, v142, aBlock);

        *(v134 + 14) = v143;
        _os_log_impl(&_mh_execute_header, v131, v132, "[%s] updateDiscovery - cancel scheduled disable for routing mode: %{public}s", v134, 0x16u);
        swift_arrayDestroy();

        (*(v130 + 8))(v173, v180);
      }

      else
      {

        (*(v130 + 8))(v127, v180);
      }

      v144 = *(v126 + 1);
      *v126 = 0;
      *(v126 + 1) = 0;
    }

    goto LABEL_30;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1002A836C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v38 = v6;
    v17 = (result + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken);
    v18 = *(result + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8);
    if (v18)
    {
      v19 = *v17 == a2 && v18 == a3;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v20 = sub_100028D40();
        (*(v11 + 16))(v14, v20, v10);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v36 = v22;
          v24 = v23;
          v37 = swift_slowAlloc();
          v39 = v37;
          *v24 = 136315394;
          v25 = _typeName(_:qualified:)();
          v35 = v21;
          v27 = sub_10002C9C8(v25, v26, &v39);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2082;
          (*(*v16 + 392))(v28);
          sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
          v29 = dispatch thunk of CustomStringConvertible.description.getter();
          v31 = v30;
          (*(v38 + 8))(v9, v5);
          v32 = sub_10002C9C8(v29, v31, &v39);

          *(v24 + 14) = v32;
          v21 = v35;
          _os_log_impl(&_mh_execute_header, v35, v36, "[%s] updateDiscovery - disable for routing mode: %{public}s", v24, 0x16u);
          swift_arrayDestroy();
        }

        (*(v11 + 8))(v14, v10);
        v33 = sub_100297780();
        [v33 setDiscoveryMode:0];

        v34 = v17[1];
        *v17 = 0;
        v17[1] = 0;

        sub_1002A01EC();
      }
    }
  }

  return result;
}

uint64_t sub_1002A8758(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100028D40();
  (*(v7 + 16))(v10, v11, v6);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a1;
    v15 = v14;
    v35 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &v35);
    v34 = v6;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_10002C9C8(v33, a2, &v35);
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] updateMigrationAbilityIfNeeded - reason: %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v10, v34);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = sub_100034D68();
  v21 = result;
  v22 = 0;
  v23 = result + 64;
  v24 = 1 << *(result + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(result + 64);
  for (i = (v24 + 63) >> 6; v26; result = )
  {
    v28 = v22;
LABEL_12:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v30 = *(*(v21 + 56) + ((v28 << 9) | (8 * v29)));

    sub_1002A5230(v31);
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v28 >= i)
    {
    }

    v26 = *(v23 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A8A5C(uint64_t a1)
{
  v115 = a1;
  v3 = type metadata accessor for HostedRoutingItem(0);
  v125 = *(v3 - 8);
  v4 = *(v125 + 8);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = (&v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v106 - v8;
  v10 = type metadata accessor for HostedRoutingSourceSession(0);
  v113 = *(v10 - 8);
  v11 = *(v113 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v112 = &v106 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v106 - v18;
  v120 = v1;
  v20 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v21 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (!v21)
  {
    return result;
  }

  v23 = *v20;
  v22 = v20[1];
  v114 = v20;
  sub_1002D18E0(v23, v22, v21);

  result = sub_1002CDC70(v23, v22, v21);
  v124 = v19;
  if (!v22)
  {
    goto LABEL_28;
  }

  v24 = sub_100034D68();
  if (!v24[2])
  {

    goto LABEL_27;
  }

  v25 = sub_10000698C(v23, v22);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v28 = *(v24[7] + 8 * v25);

  if (*(v28 + 16) == 2)
  {
    v29 = *(v28 + 48);
    v123 = *(v28 + 56);
    v124 = v29;

    v30 = sub_100298814();
    v31 = v30;
    v2 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
      goto LABEL_93;
    }

    for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v33 = 0;
      v125 = _swiftEmptyArrayStorage;
LABEL_9:
      v34 = v33;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v2 + 16))
          {
            goto LABEL_92;
          }

          v37 = *(v31 + 8 * v34 + 32);
        }

        v38 = v37;
        v33 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if ([v37 deviceType] == 1)
        {
          v39 = [v38 uid];
          if (v39)
          {
            v36 = v39;
LABEL_20:
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v125 = sub_10002AFD0(0, *(v125 + 2) + 1, 1, v125);
            }

            v44 = *(v125 + 2);
            v43 = *(v125 + 3);
            if (v44 >= v43 >> 1)
            {
              v125 = sub_10002AFD0((v43 > 1), v44 + 1, 1, v125);
            }

            v45 = v125;
            *(v125 + 2) = v44 + 1;
            v46 = &v45[16 * v44];
            *(v46 + 4) = v40;
            *(v46 + 5) = v42;
            if (v33 != i)
            {
              goto LABEL_9;
            }

            goto LABEL_95;
          }
        }

        else
        {
          v35 = [*(v28 + 88) groupLeader];
          v36 = [v35 uid];

          if (v36)
          {
            goto LABEL_20;
          }
        }

        ++v34;
        if (v33 == i)
        {
          goto LABEL_95;
        }
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      ;
    }

    v125 = _swiftEmptyArrayStorage;
LABEL_95:

    v101 = v114;
    v102 = *v114;
    v103 = v114[1];
    v104 = v114[2];
    v105 = v123;
    *v114 = v124;
    v101[1] = v105;
    v101[2] = v125;
    sub_10029A410(v102, v103, v104);
    sub_1002CDC70(v102, v103, v104);
  }

LABEL_28:
  v28 = v114[2];
  if (v28)
  {
    v31 = *v114;
    v47 = v114[1];
    sub_1002D18E0(*v114, v47, v114[2]);

    sub_1002CDC70(v31, v47, v28);
    v116 = *(v28 + 16);
    if (v116)
    {
      v48 = 0;
      v121 = *(v115 + 16);
      v122 = v14;
      v110 = v28;
      v111 = v28 + 32;
      while (1)
      {
        if (v48 >= *(v28 + 16))
        {
          goto LABEL_90;
        }

        if (!v121)
        {
          goto LABEL_35;
        }

        v117 = v48;
        v54 = (v111 + 16 * v48);
        v56 = *v54;
        v55 = v54[1];
        v31 = v113;
        v57 = v115 + ((*(v31 + 80) + 32) & ~*(v31 + 80));

        v58 = 0;
        v59 = *(v31 + 72);
        v118 = v59;
        v119 = v57;
LABEL_39:
        v123 = v58 + 1;
        sub_1002CDCB4(v57 + v59 * v58, v14, type metadata accessor for HostedRoutingSourceSession);
        v2 = 0;
        v28 = *(v14 + 4);
        v60 = *(v28 + 16);
        do
        {
          if (v60 == v2)
          {
            v14 = v122;
            sub_10002187C(v122, type metadata accessor for HostedRoutingSourceSession);
            v58 = v123;
            v59 = v118;
            v57 = v119;
            if (v123 == v121)
            {

              goto LABEL_34;
            }

            goto LABEL_39;
          }

          if (v2 >= *(v28 + 16))
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v61 = (v125[80] + 32) & ~v125[80];
          v62 = *(v125 + 9);
          sub_1002CDCB4(v28 + v61 + v62 * v2++, v9, type metadata accessor for HostedRoutingItem);
          v31 = sub_1002589A8(v56, v55);
          sub_10002187C(v9, type metadata accessor for HostedRoutingItem);
        }

        while ((v31 & 1) == 0);
        v63 = v112;
        sub_100032E70(v122, v112, type metadata accessor for HostedRoutingSourceSession);
        v64 = v124;
        result = sub_100032E70(v63, v124, type metadata accessor for HostedRoutingSourceSession);
        v65 = *(v64 + 24);
        if (!v65)
        {
          break;
        }

        v66 = *(v64 + 16);

        v67 = sub_100034D68();
        if (v67[2] && (v68 = sub_10000698C(v66, v65), (v69 & 1) != 0))
        {
          v28 = *(v67[7] + 8 * v68);

          v70 = v124;
          if (*(v28 + 16) == 2)
          {
            v71 = *(v28 + 48);
            v108 = *(v28 + 56);
            v109 = v71;

            v119 = v28;
            v72 = sub_100298814();
            v31 = v72;
            v73 = v72 & 0xFFFFFFFFFFFFFF8;
            if (!(v72 >> 62))
            {
              v74 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v74)
              {
                goto LABEL_52;
              }

LABEL_79:
              v118 = _swiftEmptyArrayStorage;
              goto LABEL_80;
            }

            v74 = _CocoaArrayWrapper.endIndex.getter();
            if (!v74)
            {
              goto LABEL_79;
            }

LABEL_52:
            v75 = 0;
            v123 = v31 & 0xC000000000000001;
            v118 = _swiftEmptyArrayStorage;
LABEL_53:
            v76 = v75;
            while (1)
            {
              if (v123)
              {
                v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v76 >= *(v73 + 16))
                {
                  goto LABEL_89;
                }

                v81 = *(v31 + 8 * v76 + 32);
              }

              v28 = v81;
              v75 = v76 + 1;
              if (__OFADD__(v76, 1))
              {
                goto LABEL_88;
              }

              if ([v81 deviceType] == 1)
              {
                v82 = [v28 uid];
                if (v82)
                {
                  v2 = v82;
LABEL_64:
                  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v84 = v83;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v118 = sub_10002AFD0(0, *(v118 + 2) + 1, 1, v118);
                  }

                  v86 = *(v118 + 2);
                  v85 = *(v118 + 3);
                  v28 = v86 + 1;
                  if (v86 >= v85 >> 1)
                  {
                    v118 = sub_10002AFD0((v85 > 1), v86 + 1, 1, v118);
                  }

                  v87 = v118;
                  *(v118 + 2) = v28;
                  v88 = &v87[16 * v86];
                  *(v88 + 4) = v107;
                  *(v88 + 5) = v84;
                  if (v75 == v74)
                  {
LABEL_80:

                    v96 = v114;
                    v97 = *v114;
                    v98 = v114[1];
                    v99 = v114[2];
                    v100 = v108;
                    *v114 = v109;
                    v96[1] = v100;
                    v96[2] = v118;
                    v31 = v120;
                    sub_10029A410(v97, v98, v99);
                    sub_1002CDC70(v97, v98, v99);

                    v14 = v122;
                    goto LABEL_33;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
                v77 = v31;
                v78 = v74;
                v79 = v73;
                v80 = [*(v119 + 88) groupLeader];
                v2 = [v80 uid];

                v73 = v79;
                v74 = v78;
                v31 = v77;
                if (v2)
                {
                  goto LABEL_64;
                }
              }

              ++v76;
              if (v75 == v74)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else
        {

          v70 = v124;
        }

        v89 = *(v70 + 32);
        v90 = *(v89 + 16);
        if (v90)
        {
          v126 = _swiftEmptyArrayStorage;
          sub_1000089FC(0, v90, 0);
          v49 = v126;
          v91 = v89 + v61;
          do
          {
            sub_1002CDCB4(v91, v7, type metadata accessor for HostedRoutingItem);
            v92 = *v7;
            v93 = v7[1];

            sub_10002187C(v7, type metadata accessor for HostedRoutingItem);
            v126 = v49;
            v2 = v49[2];
            v94 = v49[3];
            if (v2 >= v94 >> 1)
            {
              sub_1000089FC((v94 > 1), v2 + 1, 1);
              v49 = v126;
            }

            v49[2] = v2 + 1;
            v95 = &v49[2 * v2];
            v95[4] = v92;
            v95[5] = v93;
            v91 += v62;
            --v90;
          }

          while (v90);
        }

        else
        {
          v49 = _swiftEmptyArrayStorage;
        }

        v14 = v122;
        v50 = v114;
        v51 = *v114;
        v52 = v114[1];
        v53 = v114[2];
        *v114 = 0;
        v50[1] = 0;
        v50[2] = v49;
        v31 = v120;
        sub_10029A410(v51, v52, v53);
        sub_1002CDC70(v51, v52, v53);
LABEL_33:
        sub_10002187C(v124, type metadata accessor for HostedRoutingSourceSession);
LABEL_34:
        v28 = v110;
        v48 = v117;
LABEL_35:
        if (++v48 == v116)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002A9524()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for HostedRoutingSourceSession(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v8 = (&v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v11 = (&v144 - v10);
  v12 = __chkstk_darwin(v9);
  v14 = &v144 - v13;
  v15 = *(v2 + 85);
  v150 = v2 + 680;
  v16 = v15(v12);
  v18 = v17;
  v19 = sub_100037234();
  if (v16 == *v19 && v18 == *(v19 + 1))
  {
    goto LABEL_16;
  }

  v149 = v19;
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_17:
    v34 = [objc_opt_self() server];
    v35 = [v34 routingServer];

    v36 = [v35 systemEndpointController];
    if (v36)
    {
      v151 = 0;
      v152 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v151 = 91;
      v152 = 0xE100000000000000;
      v37._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 0xD000000000000017;
      v38._object = 0x800000010043F1F0;
      String.append(_:)(v38);
      v39 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
      v40 = String._bridgeToObjectiveC()();

      v150 = [v39 initWithOutputDeviceUID:0 type:0 reason:v40];

      [v36 updateSystemEndpointForRequest:v150];
      v41 = v150;

      return;
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v146 = v2;
  i = v11;
  v148 = v14;
  v23 = v1;
  v24 = (*(*v1 + 440))(v22);
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_15:

    __break(1u);
LABEL_16:

    goto LABEL_17;
  }

  v26 = 0;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    v27 = sub_1002CDCB4(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26, v8, type metadata accessor for HostedRoutingSourceSession);
    v28 = *v8;
    v29 = v8[1];
    v30 = v15(v27);
    v23 = v31;
    if (v28 == v30 && v29 == v31)
    {
      break;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_22;
    }

    ++v26;
    sub_10002187C(v8, type metadata accessor for HostedRoutingSourceSession);
    if (v25 == v26)
    {
      goto LABEL_15;
    }
  }

LABEL_22:

  v42 = i;
  sub_100032E70(v8, i, type metadata accessor for HostedRoutingSourceSession);
  v43 = v42;
  v44 = v148;
  sub_100032E70(v43, v148, type metadata accessor for HostedRoutingSourceSession);
  v45 = *(v44 + 24);
  if (!v45)
  {
    goto LABEL_147;
  }

  v46 = *(v44 + 16);
  v47 = sub_100034D68();
  if (!v47[2])
  {
    goto LABEL_36;
  }

  v48 = sub_10000698C(v46, v45);
  if ((v49 & 1) == 0)
  {
    goto LABEL_36;
  }

  v25 = *(v47[7] + 8 * v48);

  if (*(v25 + 16) != 2)
  {
    goto LABEL_38;
  }

  v144 = objc_opt_self();
  v50 = [v144 server];
  v51 = [v50 routingServer];

  v52 = [v51 systemEndpointController];
  if (!v52)
  {
    goto LABEL_148;
  }

  v53 = [v52 activeOutputDeviceUID:0];

  if (!v53)
  {
    goto LABEL_33;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = [objc_opt_self() localDeviceUID];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v145 = v55;
  if (v55 == v59 && v57 == v61)
  {

LABEL_32:

LABEL_33:
    v63 = v15(v54);
    if (v63 == *v149 && v64 == v149[1])
    {

LABEL_36:

      goto LABEL_39;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
LABEL_38:

      goto LABEL_39;
    }

    v66 = [v144 server];
    v67 = [v66 routingServer];

    v68 = [v67 systemEndpointController];
    if (v68)
    {
      v149 = v68;
      v69 = sub_100298814();
      v23 = v69;
      v26 = v69 & 0xFFFFFFFFFFFFFF8;
      if (v69 >> 62)
      {
        goto LABEL_99;
      }

      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v25; v70; i = v25)
      {
        v25 = 0;
        v150 = _swiftEmptyArrayStorage;
LABEL_44:
        v71 = v25;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v71 >= *(v26 + 16))
            {
              goto LABEL_94;
            }

            v74 = *(v23 + 8 * v71 + 32);
          }

          v75 = v74;
          v25 = (v71 + 1);
          if (__OFADD__(v71, 1))
          {
            break;
          }

          if ([v74 deviceType] == 1)
          {
            v76 = [v75 uid];
            if (v76)
            {
              v73 = v76;
LABEL_55:
              v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v79 = v78;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v150 = sub_10002AFD0(0, *(v150 + 2) + 1, 1, v150);
              }

              v81 = *(v150 + 2);
              v80 = *(v150 + 3);
              if (v81 >= v80 >> 1)
              {
                v150 = sub_10002AFD0((v80 > 1), v81 + 1, 1, v150);
              }

              v82 = v150;
              *(v150 + 2) = v81 + 1;
              v83 = &v82[16 * v81];
              *(v83 + 4) = v77;
              *(v83 + 5) = v79;
              if (v25 != v70)
              {
                goto LABEL_44;
              }

              goto LABEL_101;
            }
          }

          else
          {
            v72 = [i[11] groupLeader];
            v73 = [v72 uid];

            if (v73)
            {
              goto LABEL_55;
            }
          }

          ++v71;
          if (v25 == v70)
          {
            goto LABEL_101;
          }
        }

LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        v70 = _CocoaArrayWrapper.endIndex.getter();
      }

      v150 = _swiftEmptyArrayStorage;
LABEL_101:

      if (*(v150 + 2))
      {
        v106 = *(v150 + 4);
        v105 = *(v150 + 5);
      }

      else
      {
        v105 = 0;
      }

      v44 = v148;

      v151 = 0;
      v152 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v151 = 91;
      v152 = 0xE100000000000000;
      v107._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v107);

      v108._object = 0x800000010043F1D0;
      v108._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v108);
      if (v105)
      {
        v109 = String._bridgeToObjectiveC()();
      }

      else
      {
        v109 = 0;
      }

      v110 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
      v111 = String._bridgeToObjectiveC()();

      v112 = [v110 initWithOutputDeviceUID:v109 type:0 reason:v111];

      v113 = v149;
      [v149 updateSystemEndpointForRequest:v112];
LABEL_108:

LABEL_39:
      sub_10002187C(v44, type metadata accessor for HostedRoutingSourceSession);
      return;
    }

LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
    goto LABEL_32;
  }

  v84 = sub_100298814();
  v23 = v84;
  i = v25;
  v26 = v84 & 0xFFFFFFFFFFFFFF8;
  if (v84 >> 62)
  {
    v85 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = 0;
  while (v85 != v86)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v86 >= *(v26 + 16))
      {
        goto LABEL_96;
      }

      v87 = *(v23 + 8 * v86 + 32);
    }

    v88 = v87;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_95;
    }

    v89 = String._bridgeToObjectiveC()();
    v25 = [v88 containsUID:v89];

    ++v86;
    if (v25)
    {

      v44 = v148;
      goto LABEL_39;
    }
  }

  v90 = sub_100298814();
  v23 = v90;
  v25 = v146;
  if (v90 >> 62)
  {
    v91 = v90 & 0xFFFFFFFFFFFFFF8;
    v92 = _CocoaArrayWrapper.endIndex.getter();
    if (v92)
    {
      goto LABEL_74;
    }

LABEL_111:
    v150 = _swiftEmptyArrayStorage;
    goto LABEL_112;
  }

  v91 = v90 & 0xFFFFFFFFFFFFFF8;
  v92 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v92)
  {
    goto LABEL_111;
  }

LABEL_74:
  v26 = 0;
  v150 = _swiftEmptyArrayStorage;
  do
  {
    v93 = v26;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v93 >= *(v91 + 16))
        {
          goto LABEL_98;
        }

        v96 = *(v23 + 8 * v93 + 32);
      }

      v97 = v96;
      v26 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_97;
      }

      if ([v96 deviceType] == 1)
      {
        break;
      }

      v94 = [i[11] groupLeader];
      v95 = [v94 uid];

      v25 = v146;
      if (v95)
      {
        goto LABEL_86;
      }

LABEL_77:

      ++v93;
      if (v26 == v92)
      {
        goto LABEL_112;
      }
    }

    v98 = [v97 uid];
    if (!v98)
    {
      goto LABEL_77;
    }

    v95 = v98;
LABEL_86:
    v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_10002AFD0(0, *(v150 + 2) + 1, 1, v150);
    }

    v101 = v150;
    v103 = *(v150 + 2);
    v102 = *(v150 + 3);
    if (v103 >= v102 >> 1)
    {
      v101 = sub_10002AFD0((v102 > 1), v103 + 1, 1, v150);
    }

    v150 = v101;
    *(v101 + 2) = v103 + 1;
    v104 = &v101[16 * v103];
    *(v104 + 4) = v149;
    *(v104 + 5) = v100;
  }

  while (v26 != v92);
LABEL_112:

  v151 = v145;
  v152 = v57;
  __chkstk_darwin(v114);
  *(&v144 - 2) = &v151;
  v115 = sub_1001E5604(sub_10001BDAC, (&v144 - 4), v150);

  if (v115)
  {

    v44 = v148;
    goto LABEL_39;
  }

  v116 = [v144 server];
  v117 = [v116 routingServer];

  v118 = [v117 systemEndpointController];
  if (v118)
  {
    v149 = v118;
    v119 = sub_100298814();
    v120 = v119;
    v121 = v119 & 0xFFFFFFFFFFFFFF8;
    if (!(v119 >> 62))
    {
      v122 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v122)
      {
        goto LABEL_117;
      }

LABEL_138:
      v150 = _swiftEmptyArrayStorage;
      goto LABEL_139;
    }

LABEL_137:
    v122 = _CocoaArrayWrapper.endIndex.getter();
    if (!v122)
    {
      goto LABEL_138;
    }

LABEL_117:
    v123 = 0;
    v150 = _swiftEmptyArrayStorage;
LABEL_118:
    v124 = v123;
    while (1)
    {
      if ((v120 & 0xC000000000000001) != 0)
      {
        v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v124 >= *(v121 + 16))
        {
          goto LABEL_136;
        }

        v127 = *(v120 + 8 * v124 + 32);
      }

      v128 = v127;
      v123 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      if ([v127 deviceType] == 1)
      {
        v129 = [v128 uid];
        if (v129)
        {
          v126 = v129;
LABEL_129:
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v132 = v131;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_10002AFD0(0, *(v150 + 2) + 1, 1, v150);
          }

          v134 = *(v150 + 2);
          v133 = *(v150 + 3);
          if (v134 >= v133 >> 1)
          {
            v150 = sub_10002AFD0((v133 > 1), v134 + 1, 1, v150);
          }

          v135 = v150;
          *(v150 + 2) = v134 + 1;
          v136 = &v135[16 * v134];
          *(v136 + 4) = v130;
          *(v136 + 5) = v132;
          if (v123 == v122)
          {
LABEL_139:

            if (*(v150 + 2))
            {
              v138 = *(v150 + 4);
              v137 = *(v150 + 5);
            }

            else
            {
              v137 = 0;
            }

            v44 = v148;

            v151 = 0;
            v152 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            v151 = 91;
            v152 = 0xE100000000000000;
            v139._countAndFlagsBits = _typeName(_:qualified:)();
            String.append(_:)(v139);

            v140._object = 0x800000010043F1D0;
            v140._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v140);
            if (v137)
            {
              v141 = String._bridgeToObjectiveC()();
            }

            else
            {
              v141 = 0;
            }

            v142 = objc_allocWithZone(MRUpdateActiveSystemEndpointRequest);
            v143 = String._bridgeToObjectiveC()();

            v112 = [v142 initWithOutputDeviceUID:v141 type:0 reason:v143];

            v113 = v149;
            [v149 updateSystemEndpointForRequest:v112];
            goto LABEL_108;
          }

          goto LABEL_118;
        }
      }

      else
      {
        v125 = [i[11] groupLeader];
        v126 = [v125 uid];

        if (v126)
        {
          goto LABEL_129;
        }
      }

      ++v124;
      if (v123 == v122)
      {
        goto LABEL_139;
      }
    }
  }

LABEL_150:
  __break(1u);
}

uint64_t sub_1002AA57C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v88 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v7);
  v99 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v89 = *(v100 - 8);
  v10 = *(v89 + 64);
  __chkstk_darwin(v100);
  v102 = &v88 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v18 = v1[2];
  if ((v18 & 0xC000000000000001) == 0)
  {
    if (*(v18 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v18 < 0)
  {
    v19 = v1[2];
  }

  v20 = v1[2];

  v21 = __CocoaSet.count.getter();

  if (!v21)
  {
LABEL_7:
    v22 = sub_100028D40();
    (*(v13 + 16))(v16, v22, v12);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v103 = v101;
      *v25 = 136315138;
      v26 = _typeName(_:qualified:)();
      LODWORD(v98) = v24;
      v28 = sub_10002C9C8(v26, v27, &v103);

      *(v25 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v23, v98, "[%s] installNotificationObservers - installing", v25, 0xCu);
      sub_100026A44(v101);
    }

    (*(v13 + 8))(v16, v12);
    v98 = v6;
    v88 = v7;
    v101 = v1;
    if (qword_100533380 != -1)
    {
      swift_once();
    }

    v29 = qword_100533388;
    v30 = *(qword_100533388 + 16);
    v31 = &selRef_bundleWithURL_;
    v32 = v101;
    v33 = v88;
    if (v30)
    {
      v34 = objc_opt_self();
      v96 = (v90 + 8);
      v97 = v34;
      v35 = *v32;
      v95 = (v89 + 8);
      v35 = (v35 + 368);
      v36 = *v35;
      v93 = v35;
      v94 = v36;
      v37 = (v29 + 40);
      v38 = v98;
      do
      {
        v39 = v99;
        v40 = v102;
        v41 = v33;
        v42 = *(v37 - 1);
        v43 = *v37;

        v44 = [v97 defaultCenter];
        v45 = String._bridgeToObjectiveC()();

        NSNotificationCenter.publisher(for:object:)();

        v46 = v94();
        v103 = v46;
        v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v47 - 8) + 56))(v38, 1, 1, v47);
        sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
        sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
        sub_1002853D8();
        Publisher.receive<A>(on:options:)();
        sub_1000038A4(v38, &unk_100524C50, &qword_10044F180);

        v33 = v41;
        v48 = v100;
        (*v96)(v39, v33);
        swift_allocObject();
        swift_weakInit();
        sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
        Publisher<>.sink(receiveValue:)();

        (*v95)(v40, v48);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
        v31 = &selRef_bundleWithURL_;

        v37 += 2;
        --v30;
      }

      while (v30);
    }

    if (qword_100533390 != -1)
    {
      swift_once();
    }

    v49 = qword_100533398;
    v50 = *(qword_100533398 + 16);
    v51 = v88;
    v52 = v98;
    if (v50)
    {
      v53 = objc_opt_self();
      v54 = v102;
      v55 = *v101;
      v95 = v101 + 3;
      v96 = v53;
      v56 = (v49 + 32);
      v94 = (v90 + 8);
      v57 = *(v55 + 368);
      v92 = v55 + 368;
      v93 = v57;
      v91 = (v89 + 8);
      do
      {
        v58 = *v56++;
        v97 = v58;
        v59 = [v96 v31[307]];
        v60 = v99;
        NSNotificationCenter.publisher(for:object:)();

        v61 = v51;
        v62 = v93();
        v103 = v62;
        v63 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        (*(*(v63 - 8) + 56))(v52, 1, 1, v63);
        sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
        sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
        sub_1002853D8();
        Publisher.receive<A>(on:options:)();
        sub_1000038A4(v52, &unk_100524C50, &qword_10044F180);

        v51 = v61;
        v64 = v100;
        (*v94)(v60, v51);
        swift_allocObject();
        swift_weakInit();
        sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
        Publisher<>.sink(receiveValue:)();

        (*v91)(v54, v64);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v31 = &selRef_bundleWithURL_;

        --v50;
      }

      while (v50);
    }

    v65 = v99;
    if (qword_1005333A0 != -1)
    {
      swift_once();
    }

    v66 = qword_1005333A8;
    v67 = *(qword_1005333A8 + 16);
    v68 = v88;
    v69 = v100;
    v70 = &selRef_bundleWithURL_;
    if (v67)
    {
      v71 = objc_opt_self();
      v72 = *v101;
      v96 = (v101 + 4);
      v97 = v71;
      v94 = (v89 + 8);
      v95 = (v90 + 8);
      v73 = *(v72 + 368);
      v92 = v72 + 368;
      v93 = v73;
      v74 = (v66 + 40);
      do
      {
        v75 = *(v74 - 1);
        v76 = *v74;

        v77 = [v97 v70[307]];
        v78 = v69;
        v79 = v68;
        v80 = v77;
        v81 = String._bridgeToObjectiveC()();

        NSNotificationCenter.publisher(for:object:)();

        v82 = v93();
        v103 = v82;
        v83 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v84 = v65;
        v85 = v98;
        (*(*(v83 - 8) + 56))(v98, 1, 1, v83);
        sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
        sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
        sub_1002853D8();
        Publisher.receive<A>(on:options:)();
        v86 = v85;
        v65 = v84;
        sub_1000038A4(v86, &unk_100524C50, &qword_10044F180);

        v68 = v79;
        v69 = v78;
        (*v95)(v84, v68);
        swift_allocObject();
        v70 = &selRef_bundleWithURL_;
        swift_weakInit();
        sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
        Publisher<>.sink(receiveValue:)();
        v87 = v102;

        (*v94)(v87, v69);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v74 += 2;
        --v67;
      }

      while (v67);
    }

    return sub_100033F40(0xD000000000000023, 0x800000010043F970);
  }

  return result;
}

uint64_t sub_1002AB230()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v9 = v1[2];
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (!*(v9 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v9 < 0)
  {
    v10 = v1[2];
  }

  v11 = v1[2];

  v12 = __CocoaSet.count.getter();

  if (v12)
  {
LABEL_7:
    v13 = sub_100028D40();
    (*(v4 + 16))(v7, v13, v3);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] uninstallNotificationObserversIfNeeded - uninstalling", v16, 0xCu);
      sub_100026A44(v17);
    }

    (*(v4 + 8))(v7, v3);
    v21 = v1[2];
    v1[2] = &_swiftEmptySetSingleton;

    swift_beginAccess();
    v22 = v1[3];
    v1[3] = &_swiftEmptySetSingleton;

    swift_beginAccess();
    v23 = v1[4];
    v1[4] = &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1002AB4D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v51 - v7);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v4;
  *v14 = (*(v4 + 368))(v12);
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9);
  LOBYTE(v4) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v14, v9);
  if (v4)
  {
    result = (*(*a1 + 112))(result);
    v16 = result;
    v17 = result[3];
    if (!v17)
    {
LABEL_9:
      v41 = sub_100015A78();
      sub_10001D9AC(v41, v8, &qword_100525C00, &unk_1004511A0);
      v42 = type metadata accessor for Logger();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v8, 1, v42) == 1)
      {
        sub_1000038A4(v8, &qword_100525C00, &unk_1004511A0);
      }

      else
      {
        v55 = v16;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v56[0] = v54;
          *v46 = 136315138;
          v47 = _typeName(_:qualified:)();
          v49 = v8;
          v50 = sub_10002C9C8(v47, v48, v56);

          *(v46 + 4) = v50;
          v8 = v49;
          _os_log_impl(&_mh_execute_header, v44, v45, "[%s] timelineDidUpdate - update item types to process deferred data source removals", v46, 0xCu);
          sub_100026A44(v54);
        }

        (*(v43 + 8))(v8, v42);
      }

      sub_1002982C0();
      (*(*v2 + 880))();
    }

    if (v17 >= 1)
    {
      v54 = v8;
      v18 = result[4];
      v19 = result[2];
      if (v18 < v19)
      {
        v19 = 0;
      }

      v20 = result[v18 - v19 + 5];
      v21 = *(*v20 + 176);

      (v21)(v57, v22);
      *&v59 = sub_10029A79C();
      v23 = sub_10028AED4(v57);
      v25 = v24;
      v68 = v57[0];
      sub_1001E6204(&v68);
      v66[0] = v57[1];
      v66[1] = v57[2];
      v67 = v58;
      sub_100238E4C(v66);
      v26 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions);
      *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions) = v59;

      if (v23)
      {
        v27 = swift_allocObject();
        v55 = v16;
        v28 = v27;
        *(v27 + 16) = v23;
        *(v27 + 24) = v25;
        v21(&v59);
        v29 = *(&v59 + 1);
        v65 = v59;
        v30 = v60;
        v31 = v61;
        v63[0] = v60;
        v63[1] = v61;
        v32 = v62;
        v64 = v62;
        v33 = v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction;
        v34 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8);
        v52 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction);
        v36 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 16);
        v35 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 24);
        v37 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 32);
        v38 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 40);
        v39 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 48);
        *v33 = v59;
        *(v33 + 1) = v29;
        *(v33 + 1) = v30;
        *(v33 + 2) = v31;
        v33[48] = v32;
        sub_10028BC98(&v65, v56);
        sub_10026D080(v63, v56);
        sub_10028AE60(v52, v34, v36, v35, v37, v38, v39);
        sub_1002A5EA8();
        sub_1001E6204(&v65);
        sub_100238E4C(v63);
        v40 = swift_allocObject();
        v40[2] = v2;
        v40[3] = sub_10028AFB0;
        v40[4] = v28;

        sub_1002ABC38(v20, v40);

        v16 = v55;
      }

      v8 = v54;
      if (v16[3])
      {
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002ABAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = (*(*a2 + 368))(v9);
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    v14 = a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction;
    v15 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction);
    v16 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8);
    v17 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 16);
    v18 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 24);
    v19 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 32);
    v20 = *(a2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 40);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    v21 = *(v14 + 48);
    *(v14 + 48) = 0;
    sub_10028AE60(v15, v16, v17, v18, v19, v20, v21);
    sub_1002A5EA8();
    return a3(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002ABC38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v144 = a2;
  v5 = *v3;
  v138 = v3;
  v149 = v5;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = *(v136 + 64);
  __chkstk_darwin(v6);
  v134 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for RoutingControl();
  v133 = *(v135 - 8);
  v9 = *(v133 + 64);
  __chkstk_darwin(v135);
  v132 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v150 = *(v11 - 8);
  v151 = v11;
  v12 = *(v150 + 64);
  __chkstk_darwin(v11);
  v148 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ContinuousClock.Instant();
  v14 = *(v156 - 8);
  v146 = *(v14 + 64);
  v15 = __chkstk_darwin(v156);
  v154 = (&v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v147 = &v131 - v18;
  __chkstk_darwin(v17);
  v20 = &v131 - v19;
  v21 = type metadata accessor for ContinuousClock();
  v152 = *(v21 - 8);
  v22 = v152;
  v143 = *(v152 + 64);
  v23 = __chkstk_darwin(v21);
  v153 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v131 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v131 - v29;
  v142 = a1;
  v145 = (*(*a1 + 160))(v28);
  v155 = v31;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v32 = *(v22 + 16);
  v140 = v30;
  v141 = v27;
  v33 = v21;
  v32(v27, v30, v21);
  v34 = *(v14 + 16);
  v35 = v147;
  v139 = v20;
  v36 = v20;
  v37 = v156;
  v34(v147, v36, v156);
  v32(v153, v27, v21);
  v34(v154, v35, v37);
  v38 = v152;
  v39 = v33;
  v40 = (*(v152 + 80) + 16) & ~*(v152 + 80);
  v41 = (v143 + *(v14 + 80) + v40) & ~*(v14 + 80);
  v42 = (v146 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = *(v38 + 32);
  v146 = v39;
  v46(v45 + v40, v141, v39);
  v143 = v14;
  (*(v14 + 32))(v45 + v41, v147, v156);
  v47 = (v45 + v42);
  v48 = v144;
  v49 = v145;
  v50 = v155;
  *v47 = v145;
  v47[1] = v50;
  v51 = (v45 + v43);
  v52 = v149;
  *v51 = sub_1002CE268;
  v51[1] = v48;
  v147 = v45;
  *(v45 + v44) = v52;

  v53 = sub_100028D40();
  (*(v150 + 16))(v148, v53, v151);

  v54 = v142;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v57 = v54;

  if (os_log_type_enabled(v55, v56))
  {
    v58 = swift_slowAlloc();
    *&v157[0] = swift_slowAlloc();
    *v58 = 136315650;
    v59 = _typeName(_:qualified:)();
    v61 = sub_10002C9C8(v59, v60, v157);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2082;
    *(v58 + 14) = sub_10002C9C8(v49, v50, v157);
    *(v58 + 22) = 2082;
    (*(*v57 + 176))(&v161);
    v173[0] = v162;
    v173[1] = v163;
    v174 = v164;
    v172 = v161;
    v165 = v161;
    v166 = v162;
    v167 = v163;
    v168 = v164;
    sub_1002856A4();
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    sub_1001E6204(&v172);
    sub_100238E4C(v173);
    v65 = sub_10002C9C8(v62, v64, v157);

    *(v58 + 24) = v65;
    _os_log_impl(&_mh_execute_header, v55, v56, "[%s] handleEvent<%{public}s> - interaction: %{public}s", v58, 0x20u);
    swift_arrayDestroy();
  }

  v66 = (*(v150 + 8))(v148, v151);
  v67 = v57;
  v68 = (*(*v57 + 104))(v66);
  v72 = v143;
  v73 = v152;
  if (v68)
  {
    if (v68 == 3)
    {
      v74 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v75 = swift_allocError();
      (*(*(v74 - 8) + 104))(v76, enum case for InternalRoutingError.cancelled(_:), v74);
      v77 = MRDFastSyncGroupSessionState.rawValue.getter(v75, 0, 0);
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v153;
      v84 = v154;
      sub_1002B3594(v77, v78, v80, v82, v153, v154, v145, v155, sub_1002CE268, v144);

      sub_10023DCB0(v79, v81, v83);

      v86 = *(v72 + 8);
      v87 = v156;
      v86(v84, v156);
      v88 = *(v73 + 8);
      v89 = v146;
      v88(v85, v146);
      v86(v139, v87);
      return (v88)(v140, v89);
    }

    v120 = v146;
    if ((v68 - 1) < 2)
    {

      (*(v143 + 8))(v154, v156);
      v121 = *(v73 + 8);
      v73 += 8;
      v121(v153, v120);
      __break(1u);
    }

    v122 = v71;
    v123 = v70;
    v124 = v69;

    sub_10023DCB0(v124, v123, v122);

    (*(v143 + 8))(v154, v156);
    v98 = (*(v73 + 8))(v153, v120);
    __break(1u);
    goto LABEL_37;
  }

  v91 = *(v143 + 8);
  v92 = v156;
  v91(v154, v156);
  v93 = *(v73 + 8);
  v93(v153, v146);
  v94 = (*(**(v138 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline) + 248))(v67);
  (*(*v67 + 176))(&v165, v94);
  v169 = v166;
  v170 = v167;
  v171 = v168;
  v95 = v166;
  v151 = v91;
  if (v168 > 5u)
  {
    v98 = v155;
    if (v168 <= 7u)
    {
      if (v168 == 6)
      {

        sub_1002B6AC4(*(*(v95 + 48) + 16), *(*(v95 + 48) + 24), *(v95 + 16), *(v95 + 24), *(v95 + 32), *(v95 + 40), *(v95 + 48), &v165, v147);

        v91(v139, v92);
LABEL_28:
        v93(v140, v146);
LABEL_32:
        v157[0] = v165;
        goto LABEL_33;
      }

      if (v168 != 7)
      {
        goto LABEL_37;
      }

      v116 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
      v117 = swift_projectBox();
      v118 = *(v117 + *(v116 + 48));
      v113 = v133;
      v119 = *(v133 + 16);
      v154 = v93;
      v114 = v132;
      v115 = v135;
      v119(v132, v117, v135);

      sub_1002B7F50(v114, v118, &v165, v147);
    }

    else
    {
      v154 = v93;
      if (v168 == 8)
      {

        v106 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v107 = swift_projectBox();
        v108 = *(v107 + *(v106 + 48));
        v103 = v136;
        v102 = v137;
        v104 = v134;
        (*(v136 + 16))(v134, v107, v137);
        v157[0] = v165;
        v109 = v165;

        sub_1002CEFB8(v104, v108, v109, *(&v109 + 1), v147);
        goto LABEL_21;
      }

      if (v168 == 9)
      {

        v99 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
        v100 = swift_projectBox();
        v101 = *(v100 + *(v99 + 48));
        v103 = v136;
        v102 = v137;
        v104 = v134;
        (*(v136 + 16))(v134, v100, v137);
        v157[0] = v165;
        v105 = v165;

        sub_1002D0308(v104, v101, v105, *(&v105 + 1), v147);
LABEL_21:

        (*(v103 + 8))(v104, v102);
        v151(v139, v92);
        (v154)(v140, v146);
LABEL_33:
        sub_1001E6204(v157);
        return sub_100238E4C(&v169);
      }

      if (v168 != 10)
      {
        goto LABEL_37;
      }

      v110 = sub_1001BC5A8(&qword_100523030, &unk_100450F40);
      v111 = swift_projectBox();
      v112 = *(v111 + *(v110 + 48));
      v114 = v132;
      v113 = v133;
      v115 = v135;
      (*(v133 + 16))(v132, v111, v135);

      sub_1002B9434(v114, v112, &v165, v147);
    }

    (*(v113 + 8))(v114, v115);
    v151(v139, v92);
    (v154)(v140, v146);
    goto LABEL_32;
  }

  v96 = *(&v169 + 1);
  v97 = v170;
  v98 = v155;
  if (v168 <= 1u)
  {
    if (v168)
    {

      sub_1002B40F0(v95, v96, v97, *(&v97 + 1), &v165, v147, 2, &unk_1004C87D0, sub_1002D387C, &unk_1004C87E8);
    }

    else
    {

      sub_1002B40F0(v95, v96, v97, *(&v97 + 1), &v165, v147, 1, &unk_1004C8668, sub_1002D3408, &unk_1004C8680);
    }

    goto LABEL_27;
  }

  switch(v168)
  {
    case 2u:

      sub_1002B40F0(v95, v96, v97, *(&v97 + 1), &v165, v147, 3, &unk_1004C8848, sub_1002D3910, &unk_1004C8860);
      goto LABEL_27;
    case 4u:

      sub_1002B48B8(v95, v96, &v165, sub_1002D32BC, v147);
LABEL_27:

      v151(v139, v92);
      goto LABEL_28;
    case 5u:

      sub_1002B54E4(v95, v96, &v165, 1, sub_1002D32BC, v147);
      goto LABEL_27;
  }

LABEL_37:
  *&v157[0] = 0;
  *(&v157[0] + 1) = 0xE000000000000000;
  v125 = v98;
  _StringGuts.grow(_:)(48);

  v159 = 91;
  v160 = 0xE100000000000000;
  v126._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v126);

  v127._countAndFlagsBits = 0x656C646E6168205DLL;
  v127._object = 0xEE003C746E657645;
  String.append(_:)(v127);
  v128._countAndFlagsBits = v145;
  v128._object = v125;
  String.append(_:)(v128);
  v129._object = 0x800000010043F630;
  v129._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v129);
  v157[0] = v165;
  v157[1] = v166;
  v157[2] = v167;
  v158 = v168;
  sub_1002856A4();
  v130._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v130);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002ACD00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v12 = sub_100297768();
    v9 = sub_1002859AC(a2, a3);
    v10 = *(v8 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
    *(v8 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v12;

    if (v9)
    {
      v11 = sub_1001C7C2C(v9);
      a4(v11);
    }
  }

  return result;
}

uint64_t sub_1002ACDCC(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v124 = a5;
  v125 = a4;
  v123 = a3;
  v122 = a2;
  v7 = *v5;
  v118 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v118 - 8);
  v8 = *(v117 + 64);
  __chkstk_darwin(v118);
  v116 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchQoS();
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchTime();
  v112 = *(v128 - 8);
  v12 = *(v112 + 64);
  v13 = __chkstk_darwin(v128);
  v110 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v127 = &v104 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContinuousClock.Instant();
  v133 = *(v21 - 8);
  v134 = v21;
  v22 = v133[8];
  v23 = __chkstk_darwin(v21);
  v137 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v135 = &v104 - v26;
  v109 = v27;
  __chkstk_darwin(v25);
  v29 = &v104 - v28;
  v131 = type metadata accessor for ContinuousClock();
  v130 = *(v131 - 8);
  v30 = v130[8];
  v31 = __chkstk_darwin(v131);
  v136 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v126 = &v104 - v34;
  v105 = v35;
  __chkstk_darwin(v33);
  v37 = &v104 - v36;
  v39 = *a1;
  v38 = *(a1 + 1);
  ContinuousClock.init()();
  v132 = v29;
  v129 = v37;
  ContinuousClock.now.getter();
  v40 = sub_100028D40();
  v107 = v17;
  v41 = *(v17 + 16);
  v108 = v16;
  v41(v20, v40, v16);
  v42 = a1[2];
  v143[0] = a1[1];
  v143[1] = v42;
  v144 = *(a1 + 48);

  sub_10026D080(v143, &aBlock);
  v106 = v20;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  sub_100238E4C(v143);
  v45 = os_log_type_enabled(v43, v44);
  v121 = v7;
  v120 = v38;
  v119 = v39;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *v46 = 136315650;
    v47 = _typeName(_:qualified:)();
    v49 = sub_10002C9C8(v47, v48, &v142);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2082;
    *(v46 + 14) = sub_10002C9C8(v39, v38, &v142);
    *(v46 + 22) = 2082;
    v50 = a1[1];
    aBlock = *a1;
    v139 = v50;
    v140 = a1[2];
    v141 = *(a1 + 48);
    sub_1002856A4();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = sub_10002C9C8(v51, v52, &v142);

    *(v46 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%s] waitForSessionStability<%{public}s> - interaction: %{public}s", v46, 0x20u);
    swift_arrayDestroy();
  }

  (*(v107 + 8))(v106, v108);
  v54 = v130;
  v55 = v130[2];
  v56 = v126;
  v57 = v131;
  v55(v126, v129, v131);
  v58 = v133;
  v59 = v133[2];
  v61 = v134;
  v60 = v135;
  v59(v135, v132, v134);
  v55(v136, v56, v57);
  v59(v137, v60, v61);
  v62 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v63 = (v105 + *(v58 + 80) + v62) & ~*(v58 + 80);
  v64 = (v109 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (v54[4])(v66 + v62, v126, v57);
  (v58[4])(v66 + v63, v135, v61);
  v67 = (v66 + v64);
  v68 = v120;
  *v67 = v119;
  v67[1] = v68;
  v69 = (v66 + v65);
  v70 = v123;
  *v69 = v122;
  v69[1] = v70;
  *(v66 + ((v65 + 23) & 0xFFFFFFFFFFFFFFF8)) = v121;
  v71 = v66;

  v72 = static String.nanoIDFourChar()();
  v74 = v73;
  v75 = swift_allocObject();
  v76 = v111;
  swift_weakInit();
  v77 = swift_allocObject();
  v109 = v75;
  v78 = v125;
  *(v77 + 2) = v75;
  *(v77 + 3) = v78;
  *(v77 + 4) = v124;
  *(v77 + 5) = v72;
  *(v77 + 6) = v74;
  *(v77 + 7) = sub_1002D35C0;
  *(v77 + 8) = v71;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1002D35C0;
  *(v79 + 24) = v71;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1002D3754;
  *(v80 + 24) = v77;
  v81 = sub_100297768();
  swift_bridgeObjectRetain_n();
  v135 = v71;
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v81;
  sub_100285D14(sub_1002253D8, v80, v72, v74, isUniquelyReferenced_nonNull_native);

  v83 = *(v76 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
  *(v76 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = aBlock;

  v107 = (*(*v76 + 368))(v84);
  v85 = v110;
  static DispatchTime.now()();
  + infix(_:_:)();
  v108 = *(v112 + 8);
  v108(v85, v128);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = v72;
  v111 = v72;
  v87[4] = v74;
  v87[5] = sub_1002867B0;
  v87[6] = v79;
  *&v140 = sub_1002D3878;
  *(&v140 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_100003D98;
  *(&v139 + 1) = &unk_1004C8798;
  v88 = _Block_copy(&aBlock);
  v112 = v74;

  v126 = v79;

  v89 = v113;
  static DispatchQoS.unspecified.getter();
  v142 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v90 = v116;
  v91 = v118;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v92 = v127;
  v93 = v107;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v88);

  (*(v117 + 8))(v90, v91);
  (*(v114 + 8))(v89, v115);
  v108(v92, v128);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v95 = Strong;
    v96 = v112;
    (*(*Strong + 440))();
    v97 = v125();

    if (v97)
    {
      v142 = sub_100297768();
      sub_10027DB8C(0, 0, v111, v96);
      v98 = *(v95 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
      *(v95 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v142;

      sub_1002AE9FC(0, v136, v137, v119, v120, v122, v123, v121, "[%s] waitForSessionStability<%{public}s> - timed out after: %{public}s", "[%s] waitForSessionStability<%{public}s> - stable after: %{public}s");
    }

    else
    {
    }

    v135 = v77;
  }

  else
  {
  }

  v99 = v134;
  v100 = v133[1];
  v100(v137, v134);
  v101 = v130[1];
  v102 = v131;
  v101(v136, v131);
  v100(v132, v99);
  v101(v129, v102);
}

uint64_t sub_1002ADC18(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v123 = a5;
  v124 = a4;
  v122 = a3;
  v121 = a2;
  v7 = *v5;
  v117 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v117 - 8);
  v8 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v113 = *(v114 - 8);
  v10 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchTime();
  v111 = *(v128 - 8);
  v12 = *(v111 + 64);
  v13 = __chkstk_darwin(v128);
  v109 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v127 = &v103 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContinuousClock.Instant();
  v133 = *(v21 - 8);
  v134 = v21;
  v22 = v133[8];
  v23 = __chkstk_darwin(v21);
  v136 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v126 = &v103 - v26;
  v108 = v27;
  __chkstk_darwin(v25);
  v29 = &v103 - v28;
  v30 = type metadata accessor for ContinuousClock();
  v130 = *(v30 - 8);
  v131 = v30;
  v31 = v130[8];
  v32 = __chkstk_darwin(v30);
  v135 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v125 = &v103 - v35;
  v104 = v36;
  __chkstk_darwin(v34);
  v38 = &v103 - v37;
  v40 = *a1;
  v39 = *(a1 + 1);
  ContinuousClock.init()();
  v132 = v29;
  v129 = v38;
  ContinuousClock.now.getter();
  v41 = sub_100028D40();
  v106 = v17;
  v42 = *(v17 + 16);
  v107 = v16;
  v42(v20, v41, v16);
  v43 = a1[2];
  v142[0] = a1[1];
  v142[1] = v43;
  v143 = *(a1 + 48);

  sub_10026D080(v142, &aBlock);
  v105 = v20;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  sub_100238E4C(v142);
  v46 = os_log_type_enabled(v44, v45);
  v120 = v7;
  v119 = v39;
  v118 = v40;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v47 = 136315650;
    v48 = _typeName(_:qualified:)();
    v50 = sub_10002C9C8(v48, v49, &v141);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2082;
    *(v47 + 14) = sub_10002C9C8(v40, v39, &v141);
    *(v47 + 22) = 2082;
    v51 = a1[1];
    aBlock = *a1;
    v138 = v51;
    v139 = a1[2];
    v140 = *(a1 + 48);
    sub_1002856A4();
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = sub_10002C9C8(v52, v53, &v141);

    *(v47 + 24) = v54;
    _os_log_impl(&_mh_execute_header, v44, v45, "[%s] waitForFavoriteStatusStability<%{public}s> - interaction: %{public}s", v47, 0x20u);
    swift_arrayDestroy();
  }

  (*(v106 + 8))(v105, v107);
  v55 = v130;
  v56 = v130[2];
  v57 = v125;
  v58 = v131;
  v56(v125, v129, v131);
  v59 = v133;
  v60 = v133[2];
  v61 = v126;
  v62 = v134;
  v60(v126, v132, v134);
  v56(v135, v57, v58);
  v60(v136, v61, v62);
  v63 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v64 = (v104 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v65 = (v108 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (v55[4])(v67 + v63, v125, v58);
  (v59[4])(v67 + v64, v126, v62);
  v68 = (v67 + v65);
  v69 = v119;
  *v68 = v118;
  v68[1] = v69;
  v70 = (v67 + v66);
  v71 = v122;
  *v70 = v121;
  v70[1] = v71;
  *(v67 + ((v66 + 23) & 0xFFFFFFFFFFFFFFF8)) = v120;

  v72 = static String.nanoIDFourChar()();
  v74 = v73;
  v75 = swift_allocObject();
  v76 = v110;
  swift_weakInit();
  v77 = swift_allocObject();
  v108 = v75;
  v78 = v124;
  v77[2] = v75;
  v77[3] = v78;
  v77[4] = v123;
  v77[5] = v72;
  v77[6] = v74;
  v77[7] = sub_1002D28B0;
  v77[8] = v67;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1002D28B0;
  *(v79 + 24) = v67;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_1002D28C4;
  *(v80 + 24) = v77;
  v81 = sub_100297774();
  swift_bridgeObjectRetain_n();
  v126 = v67;
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v81;
  sub_100285D14(sub_10021C408, v80, v72, v74, isUniquelyReferenced_nonNull_native);

  v83 = *(v76 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers);
  *(v76 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = aBlock;

  v106 = (*(*v76 + 368))(v84);
  v85 = v109;
  static DispatchTime.now()();
  + infix(_:_:)();
  v107 = *(v111 + 8);
  v107(v85, v128);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = v72;
  v110 = v72;
  v87[4] = v74;
  v87[5] = sub_1002D5054;
  v87[6] = v79;
  *&v139 = sub_1002D29A0;
  *(&v139 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v138 = sub_100003D98;
  *(&v138 + 1) = &unk_1004C8568;
  v88 = _Block_copy(&aBlock);
  v111 = v74;

  v125 = v79;

  v89 = v112;
  static DispatchQoS.unspecified.getter();
  v141 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v90 = v115;
  v91 = v117;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v92 = v127;
  v93 = v106;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v88);

  (*(v116 + 8))(v90, v91);
  (*(v113 + 8))(v89, v114);
  v107(v92, v128);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v95 = Strong;
    v96 = v111;
    if (v124())
    {
      v141 = sub_100297774();
      sub_10027DB8C(0, 0, v110, v96);
      v97 = *(v95 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers);
      *(v95 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = v141;

      sub_1002AE9FC(0, v135, v136, v118, v119, v121, v122, v120, "[%s] waitForFavoriteStatusStability<%{public}s> - timed out after: %{public}s", "[%s] waitForFavoriteStatusStability<%{public}s> - stable after: %{public}s");
    }

    else
    {
    }
  }

  else
  {
  }

  v98 = v134;
  v99 = v133[1];
  v99(v136, v134);
  v100 = v131;
  v101 = v130[1];
  v101(v135, v131);
  v99(v132, v98);
  v101(v129, v100);
}

uint64_t sub_1002AE9FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, const char *a9, const char *a10)
{
  v90 = a8;
  v91 = a4;
  v105 = a7;
  v106 = a6;
  v12 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  __chkstk_darwin(v12);
  v95 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  __chkstk_darwin(v15);
  v18 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v93 = *(v19 - 8);
  v94 = v19;
  v20 = *(v93 + 64);
  __chkstk_darwin(v19);
  v22 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for Duration.UnitsFormatStyle();
  v101 = *(v23 - 8);
  v102 = v23;
  v24 = *(v101 + 64);
  __chkstk_darwin(v23);
  v98 = &v85[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = type metadata accessor for Logger();
  v26 = *(v107 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v107);
  v30 = &v85[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v32 = &v85[-v31];
  v33 = type metadata accessor for ContinuousClock.Instant();
  v103 = *(v33 - 8);
  v104 = v33;
  v34 = *(v103 + 64);
  __chkstk_darwin(v33);
  v36 = &v85[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ContinuousClock.now.getter();
  v92 = ContinuousClock.Instant.duration(to:)();
  v38 = v37;
  v39 = sub_100028D40();
  v40 = *(v26 + 16);
  if (a1)
  {
    v40(v32, v39, v107);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    v89 = v41;
    if (os_log_type_enabled(v41, v42))
    {
      v88 = a9;
      v43 = swift_slowAlloc();
      v86 = v42;
      v44 = v43;
      v87 = swift_slowAlloc();
      v110[0] = v87;
      *v44 = 136315650;
      v45 = _typeName(_:qualified:)();
      v47 = sub_10002C9C8(v45, v46, v110);
      v90 = v38;
      v48 = v47;

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_10002C9C8(v91, a5, v110);
      *(v44 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      v49 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
      v50 = *(v49 + 72);
      v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v52);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v53 = v95;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v54 = v98;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v99 + 8))(v53, v100);
      (*(v96 + 8))(v18, v97);
      (*(v93 + 8))(v22, v94);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
      v55 = v102;
      Duration.formatted<A>(_:)();
      (*(v101 + 8))(v54, v55);
      v56 = sub_10002C9C8(v108, v109, v110);

      *(v44 + 24) = v56;
      v57 = v89;
      _os_log_impl(&_mh_execute_header, v89, v86, v88, v44, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v26 + 8))(v32, v107);
    v74 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v75 = swift_allocError();
    (*(*(v74 - 8) + 104))(v76, enum case for InternalRoutingError.stabilityTimeout(_:), v74);
    v77 = MRDFastSyncGroupSessionState.rawValue.getter(v75, 0, 0);
    v79 = v78;
    v81 = v80;
    v83 = v82;
  }

  else
  {
    v40(v30, v39, v107);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v89 = v58;
    if (os_log_type_enabled(v58, v59))
    {
      v88 = a10;
      v60 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v110[0] = v87;
      *v60 = 136315650;
      v61 = _typeName(_:qualified:)();
      v86 = v59;
      v63 = sub_10002C9C8(v61, v62, v110);
      v90 = v38;
      v64 = v63;

      *(v60 + 4) = v64;
      *(v60 + 12) = 2082;
      *(v60 + 14) = sub_10002C9C8(v91, a5, v110);
      *(v60 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      v65 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
      v66 = *(v65 + 72);
      v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v68);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v69 = v95;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v70 = v98;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v99 + 8))(v69, v100);
      (*(v96 + 8))(v18, v97);
      (*(v93 + 8))(v22, v94);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
      v71 = v102;
      Duration.formatted<A>(_:)();
      (*(v101 + 8))(v70, v71);
      v72 = sub_10002C9C8(v108, v109, v110);

      *(v60 + 24) = v72;
      v73 = v89;
      _os_log_impl(&_mh_execute_header, v89, v86, v88, v60, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v26 + 8))(v30, v107);
    v77 = 0;
    v79 = 0;
    v81 = 0;
    v83 = 0;
  }

  v106(v77, v79, v81, v83);
  sub_10023DC58(v77, v79, v81, v83);
  return (*(v103 + 8))(v36, v104);
}

uint64_t sub_1002AF590(__int128 *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v358 = a5;
  v359 = a4;
  v370 = a3;
  v357 = a2;
  v374 = *v5;
  v349 = type metadata accessor for DispatchWorkItemFlags();
  v348 = *(v349 - 8);
  v7 = *(v348 + 64);
  __chkstk_darwin(v349);
  v346 = &v314 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for DispatchQoS();
  v345 = *(v347 - 8);
  v9 = *(v345 + 64);
  __chkstk_darwin(v347);
  v344 = &v314 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = type metadata accessor for DispatchTime();
  v343 = *(v363 - 8);
  v11 = *(v343 + 64);
  v12 = __chkstk_darwin(v363);
  v350 = &v314 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v362 = &v314 - v14;
  v15 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v353 = &v314 - v17;
  v356 = type metadata accessor for NSNotificationCenter.Publisher();
  v360 = *(v356 - 8);
  v18 = *(v360 + 64);
  v19 = __chkstk_darwin(v356);
  v337 = (&v314 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v339 = (&v314 - v22);
  v23 = __chkstk_darwin(v21);
  v327 = &v314 - v24;
  v25 = __chkstk_darwin(v23);
  v329 = &v314 - v26;
  v27 = __chkstk_darwin(v25);
  v317 = &v314 - v28;
  v29 = __chkstk_darwin(v27);
  v315 = &v314 - v30;
  v31 = __chkstk_darwin(v29);
  v321 = &v314 - v32;
  v33 = __chkstk_darwin(v31);
  v319 = &v314 - v34;
  v35 = __chkstk_darwin(v33);
  v323 = &v314 - v36;
  __chkstk_darwin(v35);
  v325 = &v314 - v37;
  v38 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v351 = *(v38 - 8);
  v39 = *(v351 + 64);
  v40 = __chkstk_darwin(v38);
  v336 = &v314 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v338 = &v314 - v43;
  v44 = __chkstk_darwin(v42);
  v326 = &v314 - v45;
  v46 = __chkstk_darwin(v44);
  v328 = &v314 - v47;
  v48 = __chkstk_darwin(v46);
  v316 = &v314 - v49;
  v50 = __chkstk_darwin(v48);
  v314 = &v314 - v51;
  v52 = __chkstk_darwin(v50);
  v320 = &v314 - v53;
  v54 = __chkstk_darwin(v52);
  v318 = &v314 - v55;
  v56 = __chkstk_darwin(v54);
  v322 = &v314 - v57;
  __chkstk_darwin(v56);
  v324 = &v314 - v58;
  v335 = type metadata accessor for RoutingControl.RoutingControlType();
  v334 = *(v335 - 1);
  v59 = *(v334 + 64);
  v60 = __chkstk_darwin(v335);
  v333 = &v314 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v332 = &v314 - v62;
  v331 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
  v63 = *(*(v331 - 8) + 64);
  __chkstk_darwin(v331);
  v330 = (&v314 - v64);
  v342 = type metadata accessor for RoutingControl();
  v341 = *(v342 - 1);
  v65 = *(v341 + 64);
  __chkstk_darwin(v342);
  v340 = &v314 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Logger();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  __chkstk_darwin(v67);
  v71 = &v314 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = type metadata accessor for ContinuousClock.Instant();
  v369 = *(v368 - 8);
  v72 = *(v369 + 64);
  v73 = __chkstk_darwin(v368);
  v372 = &v314 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __chkstk_darwin(v73);
  v377 = &v314 - v76;
  v355 = v77;
  __chkstk_darwin(v75);
  v79 = &v314 - v78;
  v378 = type metadata accessor for ContinuousClock();
  v367 = *(v378 - 8);
  v80 = *(v367 + 64);
  v81 = __chkstk_darwin(v378);
  v371 = &v314 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __chkstk_darwin(v81);
  v373 = &v314 - v84;
  v354 = v85;
  __chkstk_darwin(v83);
  v87 = &v314 - v86;
  v89 = *a1;
  v88 = *(a1 + 1);
  ContinuousClock.init()();
  v366 = v79;
  v365 = v87;
  ContinuousClock.now.getter();
  v90 = sub_100028D40();
  v376 = v68;
  v91 = *(v68 + 16);
  v379 = v67;
  v91(v71, v90, v67);
  v92 = a1[2];
  v385[0] = a1[1];
  v385[1] = v92;
  v93 = a1;
  v386 = *(a1 + 48);

  sub_10026D080(v385, &aBlock);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  v375 = v88;

  sub_100238E4C(v385);
  v96 = os_log_type_enabled(v94, v95);
  v364 = v89;
  v352 = v38;
  if (v96)
  {
    v97 = swift_slowAlloc();
    v384 = swift_slowAlloc();
    *v97 = 136315650;
    v98 = _typeName(_:qualified:)();
    v100 = sub_10002C9C8(v98, v99, &v384);

    *(v97 + 4) = v100;
    *(v97 + 12) = 2082;
    *(v97 + 14) = sub_10002C9C8(v89, v375, &v384);
    *(v97 + 22) = 2082;
    v101 = v93[1];
    aBlock = *v93;
    v381 = v101;
    v382 = v93[2];
    v383 = *(v93 + 48);
    sub_1002856A4();
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = sub_10002C9C8(v102, v103, &v384);

    *(v97 + 24) = v104;
    _os_log_impl(&_mh_execute_header, v94, v95, "[%s] waitForLocalNowPlayingStability<%{public}s> - interaction: %{public}s", v97, 0x20u);
    swift_arrayDestroy();
  }

  (*(v376 + 8))(v71, v379);
  v105 = swift_allocObject();
  v379 = v105;
  *(v105 + 16) = &_swiftEmptySetSingleton;
  v376 = v105 + 16;
  v106 = v367;
  v107 = *(v367 + 16);
  v108 = v373;
  v109 = v378;
  v107(v373, v365, v378);
  v110 = v369;
  v111 = *(v369 + 16);
  v112 = v377;
  v113 = v368;
  v111(v377, v366, v368);
  v107(v371, v108, v109);
  v111(v372, v112, v113);
  v114 = (*(v106 + 80) + 24) & ~*(v106 + 80);
  v115 = (v354 + *(v110 + 80) + v114) & ~*(v110 + 80);
  v116 = (v355 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
  v118 = swift_allocObject();
  v119 = v378;
  v120 = v379;
  *(v118 + 16) = v379;
  (*(v106 + 32))(v118 + v114, v373, v119);
  (*(v110 + 32))(v118 + v115, v377, v113);
  v121 = (v118 + v116);
  v122 = v375;
  *v121 = v364;
  v121[1] = v122;
  v123 = (v118 + v117);
  v124 = v370;
  *v123 = v357;
  v123[1] = v124;
  *(v118 + ((v117 + 23) & 0xFFFFFFFFFFFFFFF8)) = v374;
  v125 = swift_allocObject();
  v126 = v359;
  *(v125 + 2) = v120;
  *(v125 + 3) = v126;
  *(v125 + 4) = v358;
  *(v125 + 5) = sub_1002D23D8;
  v377 = v118;
  *(v125 + 6) = v118;
  v373 = v125;
  if (v386 != 6)
  {
    v127 = v361;
    if (v386 == 7)
    {
      v128 = swift_projectBox();
      v129 = v330;
      sub_10001D9AC(v128, v330, &qword_100524290, &qword_100455140);
      v355 = *&v129[*(v331 + 48)];
      v130 = v340;
      (*(v341 + 32))(v340, v129, v342);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      v131 = v332;
      RoutingControl.type.getter();
      v132 = v334;
      v133 = *(v334 + 104);
      v134 = v333;
      v135 = v335;
      v133(v333, enum case for RoutingControl.RoutingControlType.favorite(_:), v335);
      v136 = static RoutingControl.RoutingControlType.== infix(_:_:)();
      v137 = *(v132 + 8);
      v137(v134, v135);
      v137(v131, v135);
      if (v136 & 1) != 0 || (RoutingControl.type.getter(), v133(v134, enum case for RoutingControl.RoutingControlType.unfavorite(_:), v135), v138 = static RoutingControl.RoutingControlType.== infix(_:_:)(), v137(v134, v135), v137(v131, v135), (v138))
      {
        v139 = v355[3];
        v140 = v373;
        if (v139)
        {
          v354 = v355[2];
          v141 = objc_opt_self();

          v142 = [v141 defaultCenter];
          if (!kMRMediaRemotePlayerSupportedCommandsDidChangeNotification)
          {
LABEL_46:

            (*(v367 + 8))(v371, v378);
            (*(v369 + 8))(v372, v368);

            __break(1u);
            goto LABEL_47;
          }

          v143 = v142;
          v144 = kMRMediaRemotePlayerSupportedCommandsDidChangeNotification;
          v145 = v325;
          NSNotificationCenter.publisher(for:object:)();

          v146 = (*(*v127 + 368))();
          *&aBlock = v146;
          v147 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v148 = v353;
          (*(*(v147 - 8) + 56))(v353, 1, 1, v147);
          sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
          sub_1002853D8();
          v149 = v324;
          v150 = v356;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v148, &unk_100524C50, &qword_10044F180);

          (*(v360 + 8))(v145, v150);
          v151 = swift_allocObject();
          v151[2] = v354;
          v151[3] = v139;
          v151[4] = sub_1002D24FC;
          v151[5] = v140;
          sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

          v152 = v352;
          Publisher<>.sink(receiveValue:)();

          (*(v351 + 8))(v149, v152);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();
          v153 = v350;
          v154 = v340;
          v155 = v342;
        }

        else
        {
          v194 = v130;
          v195 = [objc_opt_self() defaultCenter];
          if (!kMRMediaRemoteSupportedCommandsDidChangeNotification)
          {
LABEL_47:

            (*(v367 + 8))(v371, v378);
            (*(v369 + 8))(v372, v368);

            __break(1u);
            goto LABEL_48;
          }

          v196 = v195;
          v197 = kMRMediaRemoteSupportedCommandsDidChangeNotification;
          v198 = v323;
          NSNotificationCenter.publisher(for:object:)();

          v199 = (*(*v127 + 368))();
          *&aBlock = v199;
          v200 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v201 = v353;
          (*(*(v200 - 8) + 56))(v353, 1, 1, v200);
          sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
          sub_1002853D8();
          v202 = v322;
          v203 = v356;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v201, &unk_100524C50, &qword_10044F180);

          (*(v360 + 8))(v198, v203);
          v204 = swift_allocObject();
          *(v204 + 16) = sub_1002D24FC;
          *(v204 + 24) = v140;
          sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

          v205 = v352;
          Publisher<>.sink(receiveValue:)();

          (*(v351 + 8))(v202, v205);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();
          v153 = v350;
          v155 = v342;
          v154 = v194;
        }
      }

      else
      {
        v206 = v355[3];
        v207 = v373;
        if (v206)
        {
          v354 = v355[2];
          v208 = objc_opt_self();

          v339 = v208;
          v209 = [v208 defaultCenter];
          if (!kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification)
          {
LABEL_48:

            (*(v367 + 8))(v371, v378);
            (*(v369 + 8))(v372, v368);

            __break(1u);
            goto LABEL_49;
          }

          v210 = v209;
          v211 = kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification;
          v212 = v319;
          NSNotificationCenter.publisher(for:object:)();

          v213 = *(*v127 + 368);
          v338 = (*v127 + 368);
          v337 = v213;
          v214 = v213();
          *&aBlock = v214;
          v215 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v216 = *(v215 - 8);
          v217 = *(v216 + 56);
          v218 = v353;
          v336 = v215;
          v335 = v217;
          v334 = v216 + 56;
          (v217)(v353, 1, 1);
          v219 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          v220 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
          v221 = sub_1002853D8();
          v222 = v318;
          v223 = v356;
          v333 = v219;
          v332 = v220;
          v331 = v221;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v218, &unk_100524C50, &qword_10044F180);

          v330 = *(v360 + 8);
          (v330)(v212, v223);
          v224 = swift_allocObject();
          v224[2] = v354;
          v224[3] = v206;
          v224[4] = sub_1002D24FC;
          v224[5] = v207;
          v225 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

          v360 = v206;

          v226 = v352;
          v329 = v225;
          Publisher<>.sink(receiveValue:)();

          v351 = *(v351 + 8);
          (v351)(v222, v226);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v227 = [v339 defaultCenter];
          if (!kMRMediaRemotePlayerPlaybackStateDidChangeNotification)
          {
LABEL_49:

            (*(v367 + 8))(v371, v378);
            (*(v369 + 8))(v372, v368);

            __break(1u);
            goto LABEL_50;
          }

          v228 = v227;
          v229 = kMRMediaRemotePlayerPlaybackStateDidChangeNotification;
          v230 = v321;
          NSNotificationCenter.publisher(for:object:)();

          v231 = v337();
          *&aBlock = v231;
          (v335)(v218, 1, 1, v336);
          v232 = v320;
          v233 = v356;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v218, &unk_100524C50, &qword_10044F180);

          (v330)(v230, v233);
          v234 = swift_allocObject();
          v235 = v360;
          v234[2] = v354;
          v234[3] = v235;
          v234[4] = sub_1002D24FC;
          v234[5] = v373;

          Publisher<>.sink(receiveValue:)();

          (v351)(v232, v226);
          swift_beginAccess();
        }

        else
        {
          v264 = objc_opt_self();
          v265 = [v264 defaultCenter];
          if (!kMRMediaRemoteNowPlayingInfoDidChangeNotification)
          {
LABEL_50:

            (*(v367 + 8))(v371, v378);
            (*(v369 + 8))(v372, v368);

            __break(1u);
            goto LABEL_51;
          }

          v266 = v265;
          v267 = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
          v268 = v315;
          NSNotificationCenter.publisher(for:object:)();

          v269 = *(*v127 + 368);
          v354 = (*v127 + 368);
          v339 = v269;
          v270 = v269();
          *&aBlock = v270;
          v271 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v272 = *(v271 - 8);
          v273 = *(v272 + 56);
          v274 = v353;
          v338 = v271;
          v337 = v273;
          v336 = (v272 + 56);
          (v273)(v353, 1, 1);
          v275 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
          v276 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
          v277 = sub_1002853D8();
          v278 = v314;
          v279 = v356;
          v335 = v275;
          v334 = v276;
          v333 = v277;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v274, &unk_100524C50, &qword_10044F180);

          v280 = v279;
          v360 = *(v360 + 8);
          (v360)(v268, v279);
          v281 = swift_allocObject();
          *(v281 + 16) = sub_1002D24FC;
          *(v281 + 24) = v207;
          v282 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

          v283 = v352;
          v332 = v282;
          Publisher<>.sink(receiveValue:)();

          v351 = *(v351 + 8);
          (v351)(v278, v283);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v284 = [v264 defaultCenter];
          if (!kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification)
          {
LABEL_51:

            (*(v367 + 8))(v371, v378);
            (*(v369 + 8))(v372, v368);

            __break(1u);
            return result;
          }

          v285 = v284;
          v286 = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
          v287 = v317;
          NSNotificationCenter.publisher(for:object:)();

          v288 = v339();
          *&aBlock = v288;
          (v337)(v274, 1, 1, v338);
          v289 = v316;
          Publisher.receive<A>(on:options:)();
          sub_1000038A4(v274, &unk_100524C50, &qword_10044F180);

          (v360)(v287, v280);
          v290 = swift_allocObject();
          *(v290 + 16) = sub_1002D24FC;
          *(v290 + 24) = v373;

          Publisher<>.sink(receiveValue:)();

          (v351)(v289, v283);
          swift_beginAccess();
        }

        AnyCancellable.store(in:)();
        swift_endAccess();
        v127 = v361;
        v153 = v350;
        v155 = v342;
        v154 = v340;
      }

      v193 = (*(v341 + 8))(v154, v155);
      goto LABEL_33;
    }

    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    goto LABEL_24;
  }

  v156 = *(*&v385[0] + 16);
  v157 = *(*&v385[0] + 24);
  v158 = *(*&v385[0] + 48);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v159 = sub_100037234();
  v127 = v361;
  if ((v156 != *v159 || v157 != *(v159 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_24:
    v355 = objc_opt_self();
    v236 = [v355 defaultCenter];
    v237 = v360;
    v238 = v353;
    if (kMRMediaRemoteNowPlayingInfoDidChangeNotification)
    {
      v239 = v236;
      v240 = kMRMediaRemoteNowPlayingInfoDidChangeNotification;
      v241 = v339;
      NSNotificationCenter.publisher(for:object:)();

      v242 = *(*v127 + 368);
      v354 = (*v127 + 368);
      v342 = v242;
      v243 = v242();
      *&aBlock = v243;
      v244 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v245 = *(v244 - 8);
      v341 = *(v245 + 56);
      v340 = (v245 + 56);
      (v341)(v238, 1, 1, v244);
      v246 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      v247 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
      v248 = sub_1002853D8();
      v249 = v338;
      v250 = v356;
      v335 = v246;
      v334 = v247;
      v333 = v248;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v238, &unk_100524C50, &qword_10044F180);

      v251 = *(v237 + 8);
      v360 = v237 + 8;
      v339 = v251;
      (v251)(v241, v250);
      v252 = swift_allocObject();
      v253 = v373;
      *(v252 + 16) = sub_1002D24FC;
      *(v252 + 24) = v253;
      v254 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

      v255 = v352;
      v332 = v254;
      Publisher<>.sink(receiveValue:)();

      v351 = *(v351 + 8);
      (v351)(v249, v255);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v256 = [v355 defaultCenter];
      if (kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification)
      {
        v257 = v256;
        v258 = kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification;
        v259 = v337;
        NSNotificationCenter.publisher(for:object:)();

        v260 = v361;
        v261 = v342();
        *&aBlock = v261;
        (v341)(v238, 1, 1, v244);
        v262 = v336;
        Publisher.receive<A>(on:options:)();
        sub_1000038A4(v238, &unk_100524C50, &qword_10044F180);

        (v339)(v259, v250);
        v263 = swift_allocObject();
        *(v263 + 16) = sub_1002D24FC;
        *(v263 + 24) = v253;

        Publisher<>.sink(receiveValue:)();

        (v351)(v262, v255);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v127 = v260;
        goto LABEL_27;
      }
    }

    else
    {

      (*(v367 + 8))(v371, v378);
      (*(v369 + 8))(v372, v368);

      __break(1u);
    }

    (*(v367 + 8))(v371, v378);
    (*(v369 + 8))(v372, v368);

    __break(1u);
    goto LABEL_44;
  }

  v341 = v157;
  v161 = *(v158 + 16);
  v160 = *(v158 + 24);
  v342 = v158;
  v162 = objc_opt_self();
  v355 = v160;

  v354 = v162;
  v163 = [v162 defaultCenter];
  v164 = v356;
  if (!kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification)
  {
LABEL_44:

    (*(v367 + 8))(v371, v378);
    (*(v369 + 8))(v372, v368);

    __break(1u);
    goto LABEL_45;
  }

  v165 = v163;
  v166 = kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification;
  v167 = v329;
  NSNotificationCenter.publisher(for:object:)();

  v168 = *(*v127 + 368);
  v340 = (*v127 + 368);
  v339 = v168;
  v169 = v168();
  *&aBlock = v169;
  v170 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v171 = *(v170 - 8);
  v172 = v353;
  v338 = *(v171 + 56);
  v337 = (v171 + 56);
  (v338)(v353, 1, 1, v170);
  v173 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v174 = sub_1002CDD70(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
  v175 = sub_1002853D8();
  v176 = v328;
  v336 = v173;
  v335 = v174;
  v334 = v175;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v172, &unk_100524C50, &qword_10044F180);

  v333 = *(v360 + 8);
  (v333)(v167, v164);
  v177 = swift_allocObject();
  v360 = v161;
  v178 = v355;
  v177[2] = v161;
  v177[3] = v178;
  v179 = v373;
  v177[4] = sub_1002D24FC;
  v177[5] = v179;
  v180 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

  v181 = v352;
  v332 = v180;
  Publisher<>.sink(receiveValue:)();

  v351 = *(v351 + 8);
  (v351)(v176, v181);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v182 = [v354 defaultCenter];
  v183 = kMRMediaRemotePlayerPlaybackStateDidChangeNotification;
  if (!kMRMediaRemotePlayerPlaybackStateDidChangeNotification)
  {
LABEL_45:

    (*(v367 + 8))(v371, v378);
    (*(v369 + 8))(v372, v368);

    __break(1u);
    goto LABEL_46;
  }

  v184 = v182;

  v185 = v183;
  v186 = v327;
  NSNotificationCenter.publisher(for:object:)();

  v187 = v361;
  v188 = v339();
  *&aBlock = v188;
  (v338)(v172, 1, 1, v170);
  v189 = v326;
  v190 = v356;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v172, &unk_100524C50, &qword_10044F180);

  (v333)(v186, v190);
  v191 = swift_allocObject();
  v192 = v355;
  v191[2] = v360;
  v191[3] = v192;
  v191[4] = sub_1002D24FC;
  v191[5] = v373;

  Publisher<>.sink(receiveValue:)();

  (v351)(v189, v181);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v127 = v187;
LABEL_27:
  v153 = v350;
LABEL_33:
  v356 = (*(*v127 + 368))(v193);
  static DispatchTime.now()();
  + infix(_:_:)();
  v360 = *(v343 + 8);
  (v360)(v153, v363);
  v291 = swift_allocObject();
  swift_weakInit();
  v292 = swift_allocObject();
  v293 = v379;
  v292[2] = v291;
  v292[3] = v293;
  v294 = v377;
  v292[4] = sub_1002D23D8;
  v292[5] = v294;
  *&v382 = sub_1002D260C;
  *(&v382 + 1) = v292;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v381 = sub_100003D98;
  *(&v381 + 1) = &unk_1004C8338;
  v295 = _Block_copy(&aBlock);

  v296 = v344;
  static DispatchQoS.unspecified.getter();
  v384 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v297 = v346;
  v298 = v349;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v299 = v362;
  v300 = v356;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v295);

  (*(v348 + 8))(v297, v298);
  (*(v345 + 8))(v296, v347);
  (v360)(v299, v363);

  v301 = swift_beginAccess();
  v302 = *(v293 + 16);
  if ((v302 & 0xC000000000000001) != 0)
  {
    if (v302 < 0)
    {
      v303 = *(v293 + 16);
    }

    v304 = __CocoaSet.count.getter();
  }

  else
  {
    v304 = *(v302 + 16);
  }

  v305 = v370;
  v306 = v374;
  v307 = v375;
  v308 = v364;
  if (v304)
  {
    if (v359(v301))
    {
      sub_1002B29C8(0, v379, v371, v372, v308, v307, v357, v305, v306);
    }
  }

  v309 = *(v367 + 8);
  v310 = v378;
  v309(v371, v378);
  v311 = *(v369 + 8);
  v312 = v368;
  v311(v372, v368);

  v311(v366, v312);
  v309(v365, v310);
}

uint64_t sub_1002B29C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v100 = a8;
  v101 = a7;
  v85 = a5;
  v84 = a9;
  v12 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  __chkstk_darwin(v12);
  v90 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = *(v91 + 64);
  __chkstk_darwin(v15);
  v87 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v88 = *(v18 - 8);
  v89 = v18;
  v19 = *(v88 + 64);
  __chkstk_darwin(v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Duration.UnitsFormatStyle();
  v96 = *(v22 - 8);
  v97 = v22;
  v23 = *(v96 + 64);
  __chkstk_darwin(v22);
  v93 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Logger();
  v25 = *(v102 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v102);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v82 - v30;
  v32 = type metadata accessor for ContinuousClock.Instant();
  v98 = *(v32 - 8);
  v99 = v32;
  v33 = *(v98 + 64);
  __chkstk_darwin(v32);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v36 = *(a2 + 16);
  *(a2 + 16) = &_swiftEmptySetSingleton;

  ContinuousClock.now.getter();
  v86 = ContinuousClock.Instant.duration(to:)();
  v38 = v37;
  v39 = sub_100028D40();
  v40 = *(v25 + 16);
  if (a1)
  {
    v40(v31, v39, v102);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v105 = v83;
      *v43 = 136315650;
      v44 = _typeName(_:qualified:)();
      LODWORD(v84) = v42;
      v46 = sub_10002C9C8(v44, v45, &v105);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_10002C9C8(v85, a6, &v105);
      *(v43 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      v47 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
      v48 = *(v47 + 72);
      v49 = *(v47 + 80);
      v85 = v38;
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v51 = v87;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v52 = v90;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v53 = v93;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v94 + 8))(v52, v95);
      (*(v91 + 8))(v51, v92);
      (*(v88 + 8))(v21, v89);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
      v54 = v97;
      Duration.formatted<A>(_:)();
      (*(v96 + 8))(v53, v54);
      v55 = sub_10002C9C8(v103, v104, &v105);

      *(v43 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v41, v84, "[%s] waitForLocalNowPlayingStability<%{public}s> - timed out after: %{public}s", v43, 0x20u);
      swift_arrayDestroy();
    }

    (*(v25 + 8))(v31, v102);
    v56 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v57 = swift_allocError();
    (*(*(v56 - 8) + 104))(v58, enum case for InternalRoutingError.stabilityTimeout(_:), v56);
    v59 = MRDFastSyncGroupSessionState.rawValue.getter(v57, 0, 0);
    v61 = v60;
    v63 = v62;
    v65 = v64;
  }

  else
  {
    v40(v29, v39, v102);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v105 = v83;
      *v68 = 136315650;
      v69 = _typeName(_:qualified:)();
      LODWORD(v84) = v67;
      v71 = sub_10002C9C8(v69, v70, &v105);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2082;
      *(v68 + 14) = sub_10002C9C8(v85, a6, &v105);
      *(v68 + 22) = 2082;
      sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
      v72 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
      v73 = *(v72 + 72);
      v74 = *(v72 + 80);
      v85 = v38;
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_100450890;
      static Duration.UnitsFormatStyle.Unit.seconds.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_1002868A0(v75);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v76 = v87;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v77 = v90;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v78 = v93;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v94 + 8))(v77, v95);
      (*(v91 + 8))(v76, v92);
      (*(v88 + 8))(v21, v89);
      sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
      v79 = v97;
      Duration.formatted<A>(_:)();
      (*(v96 + 8))(v78, v79);
      v80 = sub_10002C9C8(v103, v104, &v105);

      *(v68 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v66, v84, "[%s] waitForLocalNowPlayingStability<%{public}s> - stable after: %{public}s", v68, 0x20u);
      swift_arrayDestroy();
    }

    (*(v25 + 8))(v29, v102);
    v59 = 0;
    v61 = 0;
    v63 = 0;
    v65 = 0;
  }

  v101(v59, v61, v63, v65);
  sub_10023DC58(v59, v61, v63, v65);
  return (*(v98 + 8))(v35, v99);
}

uint64_t sub_1002B3594(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(uint64_t *), uint64_t a10)
{
  v76 = a7;
  v103 = a6;
  v99 = a10;
  v100 = a9;
  v15 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v95 = &v73 - v17;
  v18 = type metadata accessor for InternalRoutingError();
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = *(v97 + 64);
  __chkstk_darwin(v18);
  v96 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v88 = *(v89 - 8);
  v21 = *(v88 + 64);
  __chkstk_darwin(v89);
  v86 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v85 = *(v87 - 8);
  v23 = *(v85 + 64);
  __chkstk_darwin(v87);
  v81 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v80 = *(v82 - 8);
  v25 = *(v80 + 64);
  __chkstk_darwin(v82);
  v78 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Duration.UnitsFormatStyle();
  v83 = *(v84 - 8);
  v27 = *(v83 + 64);
  __chkstk_darwin(v84);
  v79 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ContinuousClock.Instant();
  v93 = *(v34 - 8);
  v94 = v34;
  v35 = *(v93 + 64);
  __chkstk_darwin(v34);
  v37 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.now.getter();
  v92 = v37;
  v91 = ContinuousClock.Instant.duration(to:)();
  v90 = v38;
  v39 = sub_100028D40();
  (*(v30 + 16))(v33, v39, v29);

  sub_10023DBE8(a1, a2, a3, a4);
  v40 = Logger.logObject.getter();
  LODWORD(v37) = static os_log_type_t.default.getter();

  v101 = a2;
  v102 = a3;
  LODWORD(v103) = a4;
  sub_10023DC58(a1, a2, a3, a4);
  v77 = v37;
  if (os_log_type_enabled(v40, v37))
  {
    v74 = v40;
    v75 = v29;
    v41 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v105 = v73;
    *v41 = 136315906;
    v42 = _typeName(_:qualified:)();
    v44 = sub_10002C9C8(v42, v43, &v105);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_10002C9C8(v76, a8, &v105);
    *(v41 + 22) = 2082;
    if (a1)
    {
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v104, " with error: ");
      HIWORD(v104[1]) = -4864;
      v106 = a1;
      v107 = v101;
      v108 = v102;
      v109 = v103;
      sub_10023DD70();
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = 32;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47 = v104[0];
      v48 = v104[1];
    }

    else
    {
      v48 = 0xE100000000000000;
      v47 = 32;
    }

    v49 = sub_10002C9C8(v47, v48, &v105);

    *(v41 + 24) = v49;
    *(v41 + 32) = 2082;
    sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
    v50 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100450890;
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1002868A0(v53);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v54 = v78;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v55 = v81;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v56 = v86;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v57 = v79;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v88 + 8))(v56, v89);
    (*(v85 + 8))(v55, v87);
    (*(v80 + 8))(v54, v82);
    sub_1002CDD70(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
    v58 = v84;
    Duration.formatted<A>(_:)();
    (*(v83 + 8))(v57, v58);
    v59 = sub_10002C9C8(v106, v107, &v105);

    *(v41 + 34) = v59;
    v60 = v74;
    _os_log_impl(&_mh_execute_header, v74, v77, "[%s] handleEvent<%{public}s> - finished%{public}sin: %{public}s", v41, 0x2Au);
    swift_arrayDestroy();

    (*(v30 + 8))(v33, v75);
  }

  else
  {

    (*(v30 + 8))(v33, v29);
  }

  v61 = v100;
  v63 = v97;
  v62 = v98;
  v64 = v95;
  v65 = v96;
  if (!a1)
  {
    (*(v97 + 56))(v95, 1, 1, v98);
    goto LABEL_12;
  }

  v106 = a1;
  swift_errorRetain();
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v66 = swift_dynamicCast();
  (*(v63 + 56))(v64, v66 ^ 1u, 1, v62);
  if ((*(v63 + 48))(v64, 1, v62) == 1)
  {
LABEL_12:
    sub_1000038A4(v64, &unk_100524EC0, &qword_100457040);
LABEL_13:
    v69 = v101;
    v68 = v102;
    v70 = v103;
    sub_10023DBE8(a1, v101, v102, v103);
    static Duration./ infix(_:_:)();
    sub_10026CEA0(a1, v69, v68, v70, 1, &v106, v71);
    v61(&v106);
    sub_100286E38(&v106);
    return (*(v93 + 8))(v92, v94);
  }

  (*(v63 + 32))(v65, v64, v62);
  if ((InternalRoutingError.isStabilityError.getter() & 1) == 0)
  {
    (*(v63 + 8))(v65, v62);
    goto LABEL_13;
  }

  static Duration./ infix(_:_:)();
  sub_10026CEA0(0, 0, 0, 0, 0, &v106, v67);
  v61(&v106);
  sub_100286E38(&v106);
  (*(v63 + 8))(v65, v62);
  return (*(v93 + 8))(v92, v94);
}

uint64_t sub_1002B40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v87 = a8;
  v86 = a7;
  v11 = v10;
  v91 = a6;
  v88 = a5;
  v89 = a1;
  v90 = a2;
  v14 = type metadata accessor for HostedRoutingSourceSession(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v19 = (&v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17);
  v22 = &v81 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v81 - v24;
  result = (*(*v10 + 440))(v23);
  v27 = result;
  v28 = *(result + 16);
  if (v28)
  {
    v29 = 0;
    v85 = a10;
    v84 = a9;
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_1002CDCB4(v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v29, v19, type metadata accessor for HostedRoutingSourceSession);
      v30 = *v19 == a3 && v19[1] == a4;
      if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v29;
      result = sub_10002187C(v19, type metadata accessor for HostedRoutingSourceSession);
      if (v28 == v29)
      {
        goto LABEL_10;
      }
    }

    sub_100032E70(v19, v22, type metadata accessor for HostedRoutingSourceSession);
    result = sub_100032E70(v22, v25, type metadata accessor for HostedRoutingSourceSession);
    v41 = *(v25 + 3);
    if (v41)
    {
      v42 = *(v25 + 2);
      v43 = sub_100034D68();
      if (v43[2] && (v44 = sub_10000698C(v42, v41), (v45 & 1) != 0))
      {
        v46 = *(v43[7] + 8 * v44);

        if (*(v46 + 16) == 2)
        {
          v82 = MRRequestDetailsInitiatorRoutePicker;
          v47 = v88;
          v48 = v88[1];
          v81 = *v88;
          v83 = v48;
          v49 = *(v88 + 1);
          v50 = *(v88 + 2);
          aBlock = *v88;
          v94 = v49;
          v95 = v50;
          v96 = *(v88 + 48);
          sub_1002856A4();
          dispatch thunk of CustomStringConvertible.description.getter();
          v51 = objc_allocWithZone(MRRequestDetails);
          v52 = String._bridgeToObjectiveC()();
          v53 = String._bridgeToObjectiveC()();

          v54 = [v51 initWithInitiator:v82 requestID:v52 reason:v53 userInitiated:1];

          sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10044EC70;
          v56 = v90;
          *(v55 + 32) = v89;
          *(v55 + 40) = v56;
          v57 = objc_allocWithZone(MRGroupTopologyModificationRequest);

          isa = Array._bridgeToObjectiveC()().super.isa;

          v59 = [v57 initWithRequestDetails:v54 type:v86 outputDeviceUIDs:isa];

          [v59 setShouldWaitForUpdatedOutputDevices:1];
          v60 = *(v46 + 88);
          v61 = *v11;
          v86 = v46;
          v62 = *(v61 + 368);
          v82 = v60;
          v63 = v62();
          v64 = *(v47 + 2);
          v97[0] = *(v47 + 1);
          v97[1] = v64;
          v98 = *(v47 + 48);
          v65 = swift_allocObject();
          v66 = *(v47 + 1);
          *(v65 + 56) = *v47;
          v68 = v90;
          v67 = v91;
          *(v65 + 16) = sub_1002D32BC;
          *(v65 + 24) = v67;
          *(v65 + 32) = v89;
          *(v65 + 40) = v68;
          *(v65 + 48) = v11;
          *(v65 + 72) = v66;
          *(v65 + 88) = *(v47 + 2);
          *(v65 + 104) = *(v47 + 48);
          *(v65 + 112) = a3;
          *(v65 + 120) = a4;
          *&v95 = v84;
          *(&v95 + 1) = v65;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v94 = sub_1001BC53C;
          *(&v94 + 1) = v85;
          v69 = _Block_copy(&aBlock);

          sub_10026D080(v97, v92);

          v70 = v82;
          [v82 modifyTopologyWithRequest:v59 withReplyQueue:v63 completion:v69];
          _Block_release(v69);

          return sub_10002187C(v25, type metadata accessor for HostedRoutingSourceSession);
        }
      }

      else
      {
      }

      v71 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v72 = swift_allocError();
      (*(*(v71 - 8) + 104))(v73, enum case for InternalRoutingError.sessionNotFound(_:), v71);

      v74 = MRDFastSyncGroupSessionState.rawValue.getter(v72, a3, a4);
      v76 = v75;
      v78 = v77;
      v80 = v79;
      sub_1002D32BC(v74, v75, v77, v79);

      sub_10023DCB0(v76, v78, v80);
      return sub_10002187C(v25, type metadata accessor for HostedRoutingSourceSession);
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_10:

    v31 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, enum case for InternalRoutingError.sessionNotFound(_:), v31);

    v34 = MRDFastSyncGroupSessionState.rawValue.getter(v32, a3, a4);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1002D32BC(v34, v35, v37, v39);

    return sub_10023DCB0(v36, v38, v40);
  }

  return result;
}

uint64_t sub_1002B48B8(uint64_t a1, unint64_t a2, __int128 *a3, void (*a4)(void), uint64_t a5)
{
  v119 = a4;
  v116 = *v5;
  v117 = a3;
  v9 = type metadata accessor for Logger();
  v118 = *(v9 - 8);
  v10 = *(v118 + 8);
  __chkstk_darwin(v9);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HostedRoutingSourceSession(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v111 - v20;
  __chkstk_darwin(v19);
  v23 = &v111 - v22;
  v24 = sub_100037234();
  if (*v24 == a1 && *(v24 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v25 = (v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v26 = *(v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v27 = *(v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
    v28 = *(v5 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
    v25[1] = 0;
    v25[2] = 0;
    *v25 = 0;
    sub_10029A410(v26, v27, v28);
    sub_1002CDC70(v26, v27, v28);
    return (v119)(0, 0, 0, 0);
  }

  v113 = v23;
  v114 = a5;
  v30 = *(*v5 + 440);
  v115 = v5;
  v31 = v30();
  v32 = *(v31 + 16);
  if (!v32)
  {
LABEL_14:

    v35 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, enum case for InternalRoutingError.sessionNotFound(_:), v35);

    MRDFastSyncGroupSessionState.rawValue.getter(v36, a1, a2);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v119();

    return sub_10023DCB0(v39, v41, v43);
  }

  v33 = 0;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_59;
    }

    sub_1002CDCB4(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v33, v18, type metadata accessor for HostedRoutingSourceSession);
    v34 = *v18 == a1 && *(v18 + 1) == a2;
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v33;
    sub_10002187C(v18, type metadata accessor for HostedRoutingSourceSession);
    if (v32 == v33)
    {
      goto LABEL_14;
    }
  }

  sub_100032E70(v18, v21, type metadata accessor for HostedRoutingSourceSession);
  v44 = v113;
  result = sub_100032E70(v21, v113, type metadata accessor for HostedRoutingSourceSession);
  v45 = *(v44 + 24);
  if (v45)
  {
    v46 = *(v44 + 16);
    v47 = sub_100034D68();
    if (!v47[2] || (v48 = sub_10000698C(v46, v45), (v49 & 1) == 0))
    {

      v65 = v44;
      v66 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v67 = swift_allocError();
      (*(*(v66 - 8) + 104))(v68, enum case for InternalRoutingError.sessionNotFound(_:), v66);

      MRDFastSyncGroupSessionState.rawValue.getter(v67, a1, a2);
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v119();

      sub_10023DCB0(v70, v72, v74);
      return sub_10002187C(v65, type metadata accessor for HostedRoutingSourceSession);
    }

    v18 = *(v47[7] + 8 * v48);

    v50 = v18[16];
    if (v50 >= 2)
    {
      v75 = v114;
      if (v50 == 2)
      {
        v76 = *(v18 + 6);
        v116 = *(v18 + 7);
        v117 = v76;

        v77 = sub_100298814();
        a2 = v77;
        v21 = (v77 & 0xFFFFFFFFFFFFFF8);
        if (v77 >> 62)
        {
          goto LABEL_61;
        }

        for (i = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v112 = v18;
          if (!i)
          {
            break;
          }

          v79 = 0;
          v118 = _swiftEmptyArrayStorage;
LABEL_30:
          v80 = v79;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v80 >= *(v21 + 2))
              {
                goto LABEL_60;
              }

              v82 = *(a2 + 8 * v80 + 32);
            }

            v83 = v82;
            v79 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if ([v82 deviceType] == 1)
            {
              v84 = [v83 uid];
              if (v84)
              {
                v81 = v84;
LABEL_41:
                v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v86 = v85;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v118 = sub_10002AFD0(0, *(v118 + 2) + 1, 1, v118);
                }

                v88 = *(v118 + 2);
                v87 = *(v118 + 3);
                if (v88 >= v87 >> 1)
                {
                  v118 = sub_10002AFD0((v87 > 1), v88 + 1, 1, v118);
                }

                v89 = v118;
                *(v118 + 2) = v88 + 1;
                v90 = &v89[16 * v88];
                *(v90 + 4) = v18;
                *(v90 + 5) = v86;
                if (v79 != i)
                {
                  goto LABEL_30;
                }

                goto LABEL_51;
              }
            }

            else
            {
              v18 = [*(v112 + 11) groupLeader];
              v81 = [v18 uid];

              if (v81)
              {
                goto LABEL_41;
              }
            }

            ++v80;
            if (v79 == i)
            {
              goto LABEL_51;
            }
          }

LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          ;
        }

        v118 = _swiftEmptyArrayStorage;
LABEL_51:

        v96 = (v115 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
        v97 = *(v115 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
        v98 = *(v115 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
        v99 = *(v115 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
        v100 = v116;
        *v96 = v117;
        v96[1] = v100;
        v96[2] = v118;
        sub_10029A410(v97, v98, v99);
        sub_1002CDC70(v97, v98, v99);
        (v119)(0, 0, 0, 0);
      }

      else
      {
        v91 = v117;
        v92 = v117[1];
        v124 = *v117;
        v93 = v117[2];
        v121 = v92;
        v122 = v93;
        v123 = *(v117 + 48);
        v94 = swift_allocObject();
        *(v94 + 16) = v119;
        *(v94 + 24) = v75;
        *(v94 + 32) = a1;
        *(v94 + 40) = a2;
        *(v94 + 48) = v115;
        v95 = v91[1];
        *(v94 + 56) = *v91;
        *(v94 + 72) = v95;
        *(v94 + 88) = v91[2];
        *(v94 + 104) = *(v91 + 48);

        sub_10028BC98(&v124, v120);
        sub_10026D080(&v121, v120);
        sub_1002A4144(v18, sub_1002D3AA4, v94);
      }

      goto LABEL_57;
    }

    v51 = sub_100028D40();
    v52 = v118;
    (*(v118 + 2))(v12, v51, v9);
    v53 = *(v117 + 1);
    v115 = *v117;
    v54 = v117[2];
    v121 = v117[1];
    v122 = v54;
    v123 = *(v117 + 48);

    sub_10026D080(&v121, v120);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    sub_100238E4C(&v121);

    v57 = os_log_type_enabled(v55, v56);
    v112 = v18;
    if (!v57)
    {

      (*(v52 + 1))(v12, v9);
LABEL_56:
      v102 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v103 = swift_allocError();
      (*(*(v102 - 8) + 104))(v104, enum case for InternalRoutingError.sessionNotFound(_:), v102);

      MRDFastSyncGroupSessionState.rawValue.getter(v103, a1, a2);
      v106 = v105;
      v108 = v107;
      v110 = v109;
      v119();

      sub_10023DCB0(v106, v108, v110);
LABEL_57:

      return sub_10002187C(v113, type metadata accessor for HostedRoutingSourceSession);
    }

    LODWORD(v117) = v56;
    v58 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v120[0] = v111;
    *v58 = 136315650;
    v59 = _typeName(_:qualified:)();
    v61 = sub_10002C9C8(v59, v60, v120);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2082;
    *(v58 + 14) = sub_10002C9C8(v115, v53, v120);
    *(v58 + 22) = 2082;
    v62 = v18[16];
    if (v62 > 1)
    {
      if (v62 != 2)
      {
        v63 = 0x800000010043F170;
        v64 = 0xD000000000000016;
        goto LABEL_55;
      }

      v63 = 0xEA00000000006465;
    }

    else
    {
      if (!v18[16])
      {
        v63 = 0xEB00000000646572;
        v64 = 0x65766F637369642ELL;
LABEL_55:
        v101 = sub_10002C9C8(v64, v63, v120);

        *(v58 + 24) = v101;
        _os_log_impl(&_mh_execute_header, v55, v117, "[%s] handleSetActiveSession<%{public}s> - cannot set entry in state: %{public}s as active session", v58, 0x20u);
        swift_arrayDestroy();

        (*(v118 + 1))(v12, v9);
        goto LABEL_56;
      }

      v63 = 0xEB00000000676E69;
    }

    v64 = 0x7463656E6E6F632ELL;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

void sub_1002B54E4(uint64_t a1, unint64_t a2, uint64_t *a3, int a4, void (*a5)(void), uint64_t a6)
{
  v197 = a6;
  v196 = a5;
  v190 = a4;
  v10 = *v6;
  v193 = type metadata accessor for Logger();
  v192 = *(v193 - 8);
  v11 = *(v192 + 64);
  v12 = __chkstk_darwin(v193);
  v195 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v187 = &v185 - v15;
  __chkstk_darwin(v14);
  v186 = &v185 - v16;
  v17 = type metadata accessor for HostedRoutingItem(0);
  v200 = *(v17 - 8);
  v18 = *(v200 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for HostedRoutingSourceSession(0);
  v208 = *(v21 - 8);
  v22 = *(v208 + 8);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v188 = &v185 - v27;
  __chkstk_darwin(v26);
  v189 = &v185 - v28;
  v29 = *a3;
  v30 = a3[1];
  v194 = a3;
  v31 = *(v10 + 440);

  v191 = v6;
  v33 = v31(v32);
  v34 = v33;
  v35 = *(v33 + 16);
  v198 = v29;
  v203 = a2;
  v201 = a1;
  isa = v35;
  v202 = v10;
  if (!v35)
  {
    v37 = v30;
LABEL_23:

    v71 = sub_100028D40();
    v72 = v192;
    v73 = v195;
    v74 = v193;
    (*(v192 + 16))(v195, v71, v193);
    v75 = v37;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v194;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v80 = 136315650;
      v81 = _typeName(_:qualified:)();
      v83 = sub_10002C9C8(v81, v82, &aBlock);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2082;
      *(v80 + 14) = sub_10002C9C8(v198, v75, &aBlock);
      *(v80 + 22) = 2082;
      v84 = v201;
      *(v80 + 24) = sub_10002C9C8(v201, v203, &aBlock);
      _os_log_impl(&_mh_execute_header, v76, v77, "[%s] handleSetActiveItem<%{public}s> - creating endpoint for item: %{public}s to set as active session", v80, 0x20u);
      swift_arrayDestroy();
      a2 = v203;

      (*(v72 + 8))(v195, v74);
    }

    else
    {

      (*(v72 + 8))(v73, v74);
      v84 = v201;
    }

    v208 = objc_opt_self();
    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_10044EC70;
    *(v85 + 32) = v84;
    *(v85 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100272B7C();
    v86 = objc_allocWithZone(MRRequestDetails);
    v87 = v84;
    v88 = String._bridgeToObjectiveC()();
    v89 = v198;
    v90 = String._bridgeToObjectiveC()();
    v91 = v75;
    v92 = v79;
    v93 = String._bridgeToObjectiveC()();

    v94 = [v86 initWithName:v88 requestID:v90 reason:v93 userInitiated:1];

    v95 = *(v92 + 2);
    v216 = *(v92 + 1);
    v217 = v95;
    v218 = *(v92 + 48);
    v96 = swift_allocObject();
    v97 = *(v92 + 1);
    *(v96 + 56) = *v92;
    *(v96 + 16) = v191;
    *(v96 + 24) = v89;
    v98 = v196;
    *(v96 + 32) = v91;
    *(v96 + 40) = v98;
    *(v96 + 48) = v197;
    *(v96 + 72) = v97;
    *(v96 + 88) = *(v92 + 2);
    *(v96 + 104) = *(v92 + 48);
    *(v96 + 112) = v87;
    *(v96 + 120) = v203;
    *(v96 + 128) = v190 & 1;
    *(v96 + 136) = v202;
    *&v211 = sub_1002D3E3C;
    *(&v211 + 1) = v96;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v210 = sub_1002BFB00;
    *(&v210 + 1) = &unk_1004C8950;
    v99 = _Block_copy(&aBlock);

    sub_10026D080(&v216, v213);

    v100 = isa;
    [v208 createEndpointWithOutputDeviceUIDs:isa timeout:v94 details:v99 completion:8.0];
    _Block_release(v99);

    return;
  }

  v36 = 0;
  v204 = v33 + ((v208[80] + 32) & ~v208[80]);
  v37 = v30;
  v199 = v30;
  v38 = v208;
  v206 = v25;
  v205 = v33;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    sub_1002CDCB4(v204 + *(v38 + 9) * v36, v25, type metadata accessor for HostedRoutingSourceSession);
    v39 = *(v25 + 4);
    v40 = *(v39 + 16);
    if (v40)
    {
      *&aBlock = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v40, 0);
      v6 = aBlock;
      v41 = v39 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
      v42 = *(v200 + 72);
      do
      {
        sub_1002CDCB4(v41, v20, type metadata accessor for HostedRoutingItem);
        v43 = *v20;
        v44 = v20[1];

        sub_10002187C(v20, type metadata accessor for HostedRoutingItem);
        *&aBlock = v6;
        v46 = v6[2];
        v45 = v6[3];
        if (v46 >= v45 >> 1)
        {
          sub_1000089FC((v45 > 1), v46 + 1, 1);
          v6 = aBlock;
        }

        v6[2] = v46 + 1;
        v47 = &v6[2 * v46];
        v47[4] = v43;
        v47[5] = v44;
        v41 += v42;
        --v40;
      }

      while (v40);
      v37 = v199;
      v10 = v202;
      a2 = v203;
      a1 = v201;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v215[0] = a1;
    v215[1] = a2;
    v25 = v206;
    v34 = v205;
    if (v6[2] == 1)
    {
      if (v6 == &v214)
      {
        break;
      }

      v48 = v6[4] == a1 && v6[5] == a2;
      if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    ++v36;

    sub_1001E6204(v215);
    sub_10002187C(v25, type metadata accessor for HostedRoutingSourceSession);
    v38 = v208;
    if (v36 == isa)
    {
      goto LABEL_23;
    }
  }

  sub_1001E6204(v215);
  v49 = v188;
  sub_100032E70(v25, v188, type metadata accessor for HostedRoutingSourceSession);
  v50 = v189;
  v51 = sub_100032E70(v49, v189, type metadata accessor for HostedRoutingSourceSession);
  if (sub_1000325DC(v51))
  {
    v52 = sub_100028D40();
    v53 = v37;
    v54 = v192;
    v55 = v187;
    v56 = v193;
    (*(v192 + 16))(v187, v52, v193);
    v57 = v194;
    v58 = *(v194 + 2);
    v216 = *(v194 + 1);
    v217 = v58;
    v218 = *(v194 + 48);

    sub_10026D080(&v216, &aBlock);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    sub_100238E4C(&v216);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v213[0] = swift_slowAlloc();
      *v61 = 136315650;
      v62 = _typeName(_:qualified:)();
      v64 = sub_10002C9C8(v62, v63, v213);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2082;
      v65 = sub_10002C9C8(v198, v53, v213);

      *(v61 + 14) = v65;
      *(v61 + 22) = 2082;
      v66 = *(v57 + 1);
      aBlock = *v57;
      v67 = *(v57 + 2);
      v210 = v66;
      v211 = v67;
      v212 = *(v57 + 48);
      sub_1002856A4();
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = sub_10002C9C8(v68, v69, v213);

      *(v61 + 24) = v70;
      v50 = v189;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%s] handleSetActiveItem<%{public}s> - interaction: %{public}s is invalid for a picked item on the local session", v61, 0x20u);
      swift_arrayDestroy();

      (*(v54 + 8))(v187, v56);
    }

    else
    {

      (*(v54 + 8))(v55, v56);
    }

    v144 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v145 = swift_allocError();
    v147 = v146;
    v148 = &enum case for InternalRoutingError.invalidAction(_:);
LABEL_58:
    (*(*(v144 - 8) + 104))(v147, *v148, v144);
    MRDFastSyncGroupSessionState.rawValue.getter(v145, 0, 0);
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v196();

    sub_10023DCB0(v151, v153, v155);
LABEL_59:
    v156 = v50;
    goto LABEL_60;
  }

  v101 = *(v50 + 24);
  if (!v101)
  {
LABEL_57:

    v144 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v145 = swift_allocError();
    v147 = v149;
    v148 = &enum case for InternalRoutingError.sessionNotFound(_:);
    goto LABEL_58;
  }

  v102 = *(v50 + 16);
  v103 = v191;
  v104 = sub_100034D68();
  if (!v104[2] || (v105 = sub_10000698C(v102, v101), (v106 & 1) == 0))
  {

    goto LABEL_57;
  }

  v107 = *(v104[7] + 8 * v105);

  if (v107[16] != 2)
  {

    goto LABEL_57;
  }

  v108 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore;
  v109 = *(**(v103 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 264);

  v110 = v194;
  v111 = v109(v194);
  v113 = v112;

  if (!v113)
  {
    v208 = v107;
    v157 = sub_100028D40();
    v20 = v192;
    v6 = v186;
    v10 = v193;
    (*(v192 + 16))(v186, v157, v193);
    v158 = *(v110 + 2);
    v216 = *(v110 + 1);
    v217 = v158;
    v218 = *(v110 + 48);
    v159 = v199;

    sub_10026D080(&v216, &aBlock);
    v36 = Logger.logObject.getter();
    v160 = static os_log_type_t.error.getter();

    sub_100238E4C(&v216);
    if (os_log_type_enabled(v36, v160))
    {
      v161 = swift_slowAlloc();
      v213[0] = swift_slowAlloc();
      *v161 = 136315650;
      v162 = _typeName(_:qualified:)();
      v164 = sub_10002C9C8(v162, v163, v213);

      *(v161 + 4) = v164;
      *(v161 + 12) = 2082;
      v165 = sub_10002C9C8(v198, v159, v213);

      *(v161 + 14) = v165;
      *(v161 + 22) = 2082;
      v166 = *(v110 + 1);
      aBlock = *v110;
      v167 = *(v110 + 2);
      v210 = v166;
      v211 = v167;
      v212 = *(v110 + 48);
      sub_1002856A4();
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = sub_10002C9C8(v168, v169, v213);

      *(v161 + 24) = v170;
      _os_log_impl(&_mh_execute_header, v36, v160, "[%s] handleSetActiveItem<%{public}s> - no prewarmed identifier found for interaction: %{public}s. Failing", v161, 0x20u);
      swift_arrayDestroy();

      (v20[1])(v186, v10);
LABEL_66:
      v50 = v189;
      v171 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v172 = swift_allocError();
      (*(*(v171 - 8) + 104))(v173, enum case for InternalRoutingError.sessionNotFound(_:), v171);
      MRDFastSyncGroupSessionState.rawValue.getter(v172, 1, 0);
      v175 = v174;
      v177 = v176;
      v179 = v178;
      v196();

      sub_10023DCB0(v175, v177, v179);

      goto LABEL_59;
    }

LABEL_65:

    (v20[1])(v6, v10);
    goto LABEL_66;
  }

  v114 = *(**(v103 + v108) + 288);

  v114(v111, v113, v110, v102, v101);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v216 = aBlock;
  v115._countAndFlagsBits = 0xD00000000000001DLL;
  v115._object = 0x800000010043F6C0;
  String.append(_:)(v115);
  v116._countAndFlagsBits = v102;
  v116._object = v101;
  String.append(_:)(v116);
  v117._countAndFlagsBits = 0xD000000000000022;
  v117._object = 0x800000010043F6E0;
  String.append(_:)(v117);
  v118._countAndFlagsBits = v111;
  v118._object = v113;
  String.append(_:)(v118);

  v119._object = 0x800000010043F710;
  v119._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v119);
  v120 = *(v110 + 1);
  aBlock = *v110;
  v121 = *(v110 + 2);
  v210 = v120;
  v211 = v121;
  v212 = *(v110 + 48);
  sub_1002856A4();
  v122._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v122);

  sub_100033F40(v216, *(&v216 + 1));

  v123 = v189;
  if ((v190 & 1) == 0)
  {
    goto LABEL_69;
  }

  v124 = *(v107 + 6);
  v125 = *(v107 + 7);

  v126 = sub_100298814();
  v127 = v126;
  v128 = v126 & 0xFFFFFFFFFFFFFF8;
  if (v126 >> 62)
  {
LABEL_72:
    v129 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v129 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  isa = v124;
  v206 = v125;
  if (!v129)
  {
    v208 = _swiftEmptyArrayStorage;
    goto LABEL_68;
  }

  v124 = 0;
  v208 = _swiftEmptyArrayStorage;
  while (2)
  {
    v130 = v124;
    while (2)
    {
      if ((v127 & 0xC000000000000001) != 0)
      {
        v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v130 >= *(v128 + 16))
        {
          goto LABEL_71;
        }

        v134 = *(v127 + 8 * v130 + 32);
      }

      v135 = v134;
      v124 = (v130 + 1);
      if (__OFADD__(v130, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if ([v134 deviceType] != 1)
      {
        v131 = [*(v107 + 11) groupLeader];
        v125 = v107;
        v132 = [v131 uid];

        v133 = v132;
        v107 = v125;
        if (v133)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v133 = [v135 uid];
      if (!v133)
      {
LABEL_39:

        v130 = (v130 + 1);
        if (v124 == v129)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    v125 = v107;
LABEL_48:
    v136 = v133;
    v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_10002AFD0(0, *(v208 + 2) + 1, 1, v208);
    }

    v141 = *(v208 + 2);
    v140 = *(v208 + 3);
    if (v141 >= v140 >> 1)
    {
      v208 = sub_10002AFD0((v140 > 1), v141 + 1, 1, v208);
    }

    v142 = v208;
    *(v208 + 2) = v141 + 1;
    v143 = &v142[16 * v141];
    *(v143 + 4) = v137;
    *(v143 + 5) = v139;
    v107 = v125;
    if (v124 != v129)
    {
      continue;
    }

    break;
  }

LABEL_68:

  v180 = (v191 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v181 = *(v191 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v182 = *(v191 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
  v183 = *(v191 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  v184 = v206;
  *v180 = isa;
  v180[1] = v184;
  v180[2] = v208;
  sub_10029A410(v181, v182, v183);
  sub_1002CDC70(v181, v182, v183);
  v123 = v189;
LABEL_69:
  (v196)(0, 0, 0, 0);

  v156 = v123;
LABEL_60:
  sub_10002187C(v156, type metadata accessor for HostedRoutingSourceSession);
}

uint64_t sub_1002B6AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v197 = a7;
  v202 = a6;
  v203 = a5;
  v196 = a2;
  v195 = a1;
  v200 = *v9;
  v201 = type metadata accessor for Logger();
  v198 = *(v201 - 8);
  v13 = *(v198 + 64);
  v14 = __chkstk_darwin(v201);
  v16 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v194 = &v188 - v18;
  __chkstk_darwin(v17);
  v192 = &v188 - v19;
  v20 = type metadata accessor for HostedRoutingSourceSession(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20 - 8);
  v193 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = (&v188 - v25);
  v27 = __chkstk_darwin(v24);
  v29 = &v188 - v28;
  __chkstk_darwin(v27);
  v31 = &v188 - v30;
  v32 = a8[1];
  v199 = *a8;
  v204 = a8;
  v207 = v32;

  v33 = sub_100037234();
  v34 = *(v33 + 1);
  v64 = *v33 == a3;
  v206 = a9;
  if (v64 && v34 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v59 = sub_100257FC4(), *v59 != v203) || v59[1] != v202) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (*v33 == a3 && *(v33 + 1) == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v35 = v205;
      v36 = *(**(v205 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 264);

      v37 = v204;
      v38 = v36(v204);
      v40 = v39;

      if (v40)
      {
        v41 = swift_allocObject();
        v41[2] = v35;
        v41[3] = v38;
        v41[4] = v40;
        v41[5] = sub_1002D32BC;
        v41[6] = v206;
        v42 = v197;
        v43 = *(*v197 + 208);

        v45 = (v43)(v44);
        v46 = String._bridgeToObjectiveC()();
        v47 = [v45 startEvent:v46 role:1];
        v206 = v38;
        v48 = v35;
        v49 = v47;

        v50 = v43();
        v51 = String._bridgeToObjectiveC()();
        LODWORD(v43) = [v50 startEvent:v51 role:1];

        v52 = *(v37 + 2);
        v208 = *(v37 + 1);
        v209 = v52;
        LOBYTE(v210) = *(v37 + 48);
        v53 = swift_allocObject();
        *(v53 + 16) = v42;
        *(v53 + 24) = v43;
        *(v53 + 28) = v49;
        *(v53 + 32) = v199;
        v55 = v206;
        v54 = v207;
        v56 = *(v37 + 1);
        *(v53 + 88) = *v37;
        *(v53 + 40) = v54;
        *(v53 + 48) = sub_1002D3FA0;
        *(v53 + 56) = v41;
        *(v53 + 64) = v48;
        *(v53 + 72) = v55;
        *(v53 + 80) = v40;
        *(v53 + 104) = v56;
        *(v53 + 120) = *(v37 + 2);
        *(v53 + 136) = *(v37 + 48);
        v57 = v196;
        *(v53 + 144) = v195;
        *(v53 + 152) = v57;
        *(v53 + 160) = v200;

        sub_10026D080(&v208, &v213);

        sub_1002B54E4(v203, v202, v37, 0, sub_1002D40B4, v53);
      }

      v71 = sub_100028D40();
      v72 = v198;
      v73 = v194;
      v74 = v201;
      (*(v198 + 16))(v194, v71, v201);
      v75 = *(v37 + 2);
      v213 = *(v37 + 1);
      v214 = v75;
      v215 = *(v37 + 48);
      v76 = v207;

      sub_10026D080(&v213, &v208);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      sub_100238E4C(&v213);
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        *v79 = 136315650;
        v80 = _typeName(_:qualified:)();
        v82 = sub_10002C9C8(v80, v81, &v212);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2082;
        v83 = sub_10002C9C8(v199, v76, &v212);

        *(v79 + 14) = v83;
        *(v79 + 22) = 2082;
        v84 = *(v37 + 1);
        v208 = *v37;
        v209 = v84;
        v210 = *(v37 + 2);
        v211 = *(v37 + 48);
        sub_1002856A4();
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = sub_10002C9C8(v85, v86, &v212);

        *(v79 + 24) = v87;
        _os_log_impl(&_mh_execute_header, v77, v78, "[%s] handleHandoffFromApplication<%{public}s> - no prewarmed identifier found for interaction: %{public}s -> failing", v79, 0x20u);
        swift_arrayDestroy();

        (*(v72 + 8))(v73, v201);
      }

      else
      {

        (*(v72 + 8))(v73, v74);
      }

      v105 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v106 = swift_allocError();
      v108 = v107;
      v109 = &enum case for InternalRoutingError.sessionNotFound(_:);
    }

    else
    {
      v88 = sub_100028D40();
      v89 = v198;
      v90 = v201;
      (*(v198 + 16))(v16, v88, v201);
      v91 = v204;
      v92 = *(v204 + 2);
      v213 = *(v204 + 1);
      v214 = v92;
      v215 = *(v204 + 48);
      v93 = v207;

      sub_10026D080(&v213, &v208);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();

      sub_100238E4C(&v213);
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        *v96 = 136315650;
        v97 = _typeName(_:qualified:)();
        v99 = sub_10002C9C8(v97, v98, &v212);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2082;
        v100 = sub_10002C9C8(v199, v93, &v212);

        *(v96 + 14) = v100;
        *(v96 + 22) = 2082;
        v101 = *(v91 + 1);
        v208 = *v91;
        v209 = v101;
        v210 = *(v91 + 2);
        v211 = *(v91 + 48);
        sub_1002856A4();
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v104 = sub_10002C9C8(v102, v103, &v212);

        *(v96 + 24) = v104;
        _os_log_impl(&_mh_execute_header, v94, v95, "[%s] handleHandoffFromApplication<%{public}s> - handoff interaction: %{public}s doesn't match any supported direction", v96, 0x20u);
        swift_arrayDestroy();

        (*(v89 + 8))(v16, v201);
      }

      else
      {

        (*(v89 + 8))(v16, v90);
      }

      v105 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v106 = swift_allocError();
      v108 = v110;
      v109 = &enum case for InternalRoutingError.invalidAction(_:);
    }

    (*(*(v105 - 8) + 104))(v108, *v109, v105);
    v68 = v106;
    v69 = 1;
    v70 = 0;
    goto LABEL_32;
  }

  v202 = v33;
  v203 = v31;
  result = (*(*v205 + 440))();
  v60 = result;
  v61 = *(result + 16);
  if (!v61)
  {
LABEL_22:

    v65 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v66 = swift_allocError();
    (*(*(v65 - 8) + 104))(v67, enum case for InternalRoutingError.sessionNotFound(_:), v65);

    v68 = v66;
    v69 = a3;
    v70 = a4;
LABEL_32:
    v111 = MRDFastSyncGroupSessionState.rawValue.getter(v68, v69, v70);
    v113 = v112;
    v115 = v114;
    v117 = v116;
    sub_1002D32BC(v111, v112, v114, v116);

    return sub_10023DCB0(v113, v115, v117);
  }

  v62 = 0;
  while (1)
  {
    if (v62 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v63 = *(v21 + 80);
    sub_1002CDCB4(v60 + ((v63 + 32) & ~v63) + *(v21 + 72) * v62, v26, type metadata accessor for HostedRoutingSourceSession);
    v64 = *v26 == a3 && v26[1] == a4;
    if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v62;
    result = sub_10002187C(v26, type metadata accessor for HostedRoutingSourceSession);
    if (v61 == v62)
    {
      goto LABEL_22;
    }
  }

  sub_100032E70(v26, v29, type metadata accessor for HostedRoutingSourceSession);
  v118 = v203;
  result = sub_100032E70(v29, v203, type metadata accessor for HostedRoutingSourceSession);
  v119 = *(v118 + 24);
  if (v119)
  {
    v120 = *(v118 + 16);
    v121 = sub_100034D68();
    if (v121[2] && (v122 = sub_10000698C(v120, v119), (v123 & 1) != 0))
    {
      v124 = *(v121[7] + 8 * v122);

      if (*(v124 + 16) == 2)
      {
        v125 = ~v63;
        v196 = v124;
        v126 = [*(v124 + 88) origin];
        if (!v126)
        {
          v152 = v197;
          goto LABEL_58;
        }

        v127 = v126;
        v195 = ~v63;
        v128 = v197;
        v129 = (*(*v197 + 160))();
        sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
        v130 = sub_10024C81C();
        v131 = *(v128 + 16);
        v132 = *(v128 + 24);
        v133 = objc_allocWithZone(MRPlayerPath);
        v134 = v127;
        v135 = String._bridgeToObjectiveC()();
        v136 = [v133 initWithOrigin:v134 bundleIdentifier:v135 player:0];

        v137 = [v130 resolveExistingPlayerPath:v136];
        if (v137)
        {
          v194 = v129;
          if ([v137 isResolved])
          {
            v138 = v194;
            if (v194)
            {
              sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
              v139 = v137;
              v140 = v138;
              v141 = static NSObject.== infix(_:_:)();

              if (v141)
              {

                goto LABEL_51;
              }
            }

            else
            {
              v153 = v137;
            }

            v154 = sub_100028D40();
            v155 = v192;
            (*(v198 + 16))(v192, v154, v201);

            v156 = v137;
            v157 = Logger.logObject.getter();
            v158 = static os_log_type_t.default.getter();
            v190 = v156;

            v189 = v158;
            v191 = v157;
            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              *&v208 = swift_slowAlloc();
              *v159 = 136315650;
              v160 = _typeName(_:qualified:)();
              v162 = sub_10002C9C8(v160, v161, &v208);

              *(v159 + 4) = v162;
              *(v159 + 12) = 2082;
              *(v159 + 14) = sub_10002C9C8(v199, v207, &v208);
              *(v159 + 22) = 2114;
              v163 = v190;
              *(v159 + 24) = v190;
              v164 = v188;
              *v188 = v137;
              v165 = v163;
              v166 = v191;
              _os_log_impl(&_mh_execute_header, v191, v189, "[%s] handleHandoffFromApplication<%{public}s> - inject source player path: %{public}@ into handoff context", v159, 0x20u);
              sub_1000038A4(v164, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();

              (*(v198 + 8))(v192, v201);
              v167 = v163;
            }

            else
            {

              (*(v198 + 8))(v155, v201);
              v167 = v190;
            }

            v168 = v194;
            v152 = v197;
            (*(*v197 + 168))(v137);

LABEL_57:
            v125 = v195;
LABEL_58:
            v169 = *(*v152 + 208);
            v170 = v152;
            v171 = v169();
            v172 = String._bridgeToObjectiveC()();
            LODWORD(v198) = [v171 startEvent:v172 role:1];

            v173 = v169();
            v174 = String._bridgeToObjectiveC()();
            v175 = [v173 startEvent:v174 role:1];

            v176 = v202[1];
            v201 = *v202;
            v202 = v176;
            v177 = v193;
            sub_1002CDCB4(v203, v193, type metadata accessor for HostedRoutingSourceSession);
            v178 = v204;
            v179 = *(v204 + 2);
            v208 = *(v204 + 1);
            v209 = v179;
            LOBYTE(v210) = *(v204 + 48);
            v180 = (v63 + 72) & v125;
            v181 = swift_allocObject();
            *(v181 + 16) = v170;
            v182 = v198;
            *(v181 + 24) = v175;
            *(v181 + 28) = v182;
            v183 = v206;
            v184 = v207;
            *(v181 + 32) = v199;
            *(v181 + 40) = v184;
            *(v181 + 48) = sub_1002D32BC;
            *(v181 + 56) = v183;
            *(v181 + 64) = v205;
            sub_100032E70(v177, v181 + v180, type metadata accessor for HostedRoutingSourceSession);
            v185 = v181 + ((v180 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
            v186 = *(v178 + 1);
            *v185 = *v178;
            *(v185 + 16) = v186;
            *(v185 + 32) = *(v178 + 2);
            *(v185 + 48) = *(v178 + 48);
            *(v181 + ((v180 + v22 + 63) & 0xFFFFFFFFFFFFFFF8)) = v200;

            v187 = v202;

            sub_10026D080(&v208, &v213);
            sub_1002B48B8(v201, v187, v178, sub_1002D410C, v181);

            return sub_10002187C(v203, type metadata accessor for HostedRoutingSourceSession);
          }
        }

        else
        {
        }

LABEL_51:
        v152 = v197;
        goto LABEL_57;
      }
    }

    else
    {
    }

    v142 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v143 = swift_allocError();
    (*(*(v142 - 8) + 104))(v144, enum case for InternalRoutingError.sessionNotFound(_:), v142);

    v145 = MRDFastSyncGroupSessionState.rawValue.getter(v143, a3, a4);
    v147 = v146;
    v149 = v148;
    v151 = v150;
    sub_1002D32BC(v145, v146, v148, v150);

    sub_10023DCB0(v147, v149, v151);
    return sub_10002187C(v203, type metadata accessor for HostedRoutingSourceSession);
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1002B7F50(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v161 = a2;
  v162 = a4;
  v175 = a1;
  v157 = *v4;
  v6 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v168 = *(v6 - 8);
  v169 = v6;
  v7 = *(v168 + 64);
  v8 = __chkstk_darwin(v6);
  v165 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v9;
  __chkstk_darwin(v8);
  v167 = &v153 - v10;
  v166 = type metadata accessor for RoutingControl.RoutingControlType();
  v164 = *(v166 - 1);
  v11 = *(v164 + 64);
  __chkstk_darwin(v166);
  v13 = (&v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for RoutingControl();
  v174 = *(v14 - 8);
  v15 = *(v174 + 64);
  v16 = __chkstk_darwin(v14);
  v173 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v17;
  __chkstk_darwin(v16);
  v19 = &v153 - v18;
  v20 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v153 - v22;
  v24 = a3[1];
  v170 = *a3;
  v160 = a3;
  v25 = sub_100015A78();
  sub_10001D9AC(v25, v23, &qword_100525C00, &unk_1004511A0);
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v23, 1, v26);
  v171 = v24;
  v172 = v14;
  if (v28 == 1)
  {
    sub_1000038A4(v23, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    (*(v174 + 16))(v19, v175, v14);

    v29 = Logger.logObject.getter();
    v30 = v24;
    v31 = static os_log_type_t.default.getter();

    v156 = v31;
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&v177 = v155;
      *v32 = 136315650;
      v33 = _typeName(_:qualified:)();
      v154 = v29;
      v35 = sub_10002C9C8(v33, v34, &v177);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_10002C9C8(v170, v171, &v177);
      *(v32 + 22) = 2080;
      sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v174 + 8))(v19, v14);
      v39 = sub_10002C9C8(v36, v38, &v177);

      *(v32 + 24) = v39;
      v40 = v154;
      _os_log_impl(&_mh_execute_header, v154, v156, "[%s] handleControl<%s> - handle interaction with: %s", v32, 0x20u);
      swift_arrayDestroy();

      v24 = v171;
    }

    else
    {

      (*(v174 + 8))(v19, v14);
      v24 = v30;
    }

    (*(v27 + 8))(v23, v26);
  }

  RoutingControl.type.getter();
  v41 = v164;
  v42 = v166;
  v43 = (*(v164 + 88))(v13, v166);
  if (v43 == enum case for RoutingControl.RoutingControlType.togglePlayPause(_:))
  {
    (*(v41 + 96))(v13, v42);
    v44 = v167;
    v45 = v168;
    v166 = *(v168 + 32);
    v46 = v169;
    (v166)(v167, v13, v169);
    v47 = v174;
    (*(v174 + 16))(v173, v175, v172);
    v48 = v160;
    v49 = *(v160 + 2);
    v177 = *(v160 + 1);
    v178 = v49;
    v179 = *(v160 + 48);
    (*(v45 + 16))(v165, v44, v46);
    v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v51 = (v159 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v45 + 80) + v52 + 49) & ~*(v45 + 80);
    v54 = swift_allocObject();
    v55 = v162;
    *(v54 + 16) = sub_1002D32BC;
    *(v54 + 24) = v55;
    (*(v47 + 32))(v54 + v50, v173, v172);
    *(v54 + v51) = v163;
    v56 = v54 + v52;
    *(v56 + 48) = *(v48 + 48);
    v57 = *(v48 + 2);
    *(v56 + 16) = *(v48 + 1);
    *(v56 + 32) = v57;
    *v56 = *v48;
    v58 = v169;
    (v166)(v54 + v53, v165, v169);
    v59 = v171;

    sub_10026D080(&v177, v176);
    v60 = sub_10021F050(_swiftEmptyArrayStorage);
    sub_1002CE274(v175, v161, v170, v59, 2, v60, sub_1002D4508, v54);

    return (*(v168 + 8))(v167, v58);
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.seek(_:))
  {
    (*(v41 + 96))(v13, v42);
    v62 = *v13;
    sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EC70;
    if (kMRMediaRemoteOptionPlaybackPosition)
    {
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v64;
      *(inited + 72) = &type metadata for Double;
      *(inited + 48) = v62;
      v169 = sub_10021F050(inited);
      swift_setDeallocating();
      sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
      v65 = v174;
      v66 = v172;
      (*(v174 + 16))(v173, v175, v172);
      v67 = v160;
      v68 = *(v160 + 2);
      v177 = *(v160 + 1);
      v178 = v68;
      v179 = *(v160 + 48);
      v69 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v70 = (v159 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 71) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      v73 = v162;
      *(v72 + 16) = sub_1002D32BC;
      *(v72 + 24) = v73;
      (*(v65 + 32))(v72 + v69, v173, v66);
      *(v72 + v70) = v163;
      v74 = v72 + v168;
      *(v74 + 48) = *(v67 + 48);
      v75 = *(v67 + 2);
      *(v74 + 16) = *(v67 + 1);
      *(v74 + 32) = v75;
      *v74 = *v67;
      v76 = v161;
      *(v72 + v71) = v161;
      *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
      v77 = v171;

      sub_10026D080(&v177, v176);

      sub_1002CE274(v175, v76, v170, v77, 24, v169, sub_1002D43E8, v72);
    }

    __break(1u);
    goto LABEL_45;
  }

  v78 = v174;
  if (v43 == enum case for RoutingControl.RoutingControlType.skipForward(_:))
  {
    (*(v41 + 96))(v13, v42);
    v79 = *v13;
    sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_10044EC70;
    if (!kMRMediaRemoteOptionSkipInterval)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v80 + 40) = v81;
    *(v80 + 72) = &type metadata for Double;
    *(v80 + 48) = v79;
    v82 = sub_10021F050(v80);
    swift_setDeallocating();
    sub_1000038A4(v80 + 32, &unk_100527DF0, &unk_100457610);
    v83 = v175;
    v84 = v161;
    v85 = v170;
    v86 = v24;
    v87 = 17;
LABEL_18:
    sub_1002CE274(v83, v84, v85, v86, v87, v82, sub_1002D32BC, v162);
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.skipBackward(_:))
  {
    (*(v41 + 96))(v13, v42);
    v88 = *v13;
    sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_10044EC70;
    if (!kMRMediaRemoteOptionSkipInterval)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    *(v89 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v89 + 40) = v90;
    *(v89 + 72) = &type metadata for Double;
    *(v89 + 48) = v88;
    v82 = sub_10021F050(v89);
    swift_setDeallocating();
    sub_1000038A4(v89 + 32, &unk_100527DF0, &unk_100457610);
    v83 = v175;
    v84 = v161;
    v85 = v170;
    v86 = v24;
    v87 = 18;
    goto LABEL_18;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
LABEL_47:
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(96);
    v129._countAndFlagsBits = 91;
    v129._object = 0xE100000000000000;
    String.append(_:)(v129);
    v130._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v130);

    v131._object = 0x800000010043F7C0;
    v131._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v131);
    v132._countAndFlagsBits = v170;
    v132._object = v24;
    String.append(_:)(v132);
    v133._countAndFlagsBits = 0x746E6F63202D203ELL;
    v133._object = 0xED0000203A6C6F72;
    String.append(_:)(v133);
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl);
    v134._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v134);

    v135._countAndFlagsBits = 0xD00000000000003CLL;
    v135._object = 0x800000010043E270;
    String.append(_:)(v135);
    goto LABEL_48;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    (*(v41 + 96))(v13, v42);
    v91 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    (*(*(v91 - 8) + 8))(v13, v91);
    return sub_1002C6FB4(v175, v160, v162);
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.previousTrack(_:))
  {
    v92 = sub_10021F050(_swiftEmptyArrayStorage);
    v93 = v175;
    v94 = v161;
    v95 = v170;
    v96 = v24;
    v97 = 5;
LABEL_28:
    sub_1002CE274(v93, v94, v95, v96, v97, v92, sub_1002D32BC, v162);
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.nextTrack(_:))
  {
    v92 = sub_10021F050(_swiftEmptyArrayStorage);
    v93 = v175;
    v94 = v161;
    v95 = v170;
    v96 = v24;
    v97 = 4;
    goto LABEL_28;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.play(_:))
  {
    v98 = v172;
    (*(v174 + 16))(v173, v175, v172);
    v99 = v160;
    v100 = *(v160 + 2);
    v177 = *(v160 + 1);
    v178 = v100;
    v179 = *(v160 + 48);
    v101 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v102 = (v159 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v104 = v162;
    *(v103 + 16) = sub_1002D32BC;
    *(v103 + 24) = v104;
    (*(v78 + 32))(v103 + v101, v173, v98);
    *(v103 + v102) = v163;
    v105 = v103 + ((v102 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v105 + 48) = *(v99 + 48);
    v106 = *(v99 + 2);
    *(v105 + 16) = *(v99 + 1);
    *(v105 + 32) = v106;
    *v105 = *v99;

    sub_10026D080(&v177, v176);
    v107 = sub_10021F050(_swiftEmptyArrayStorage);
    v108 = sub_1002D4848;
    v109 = v175;
    v110 = v161;
    v111 = v170;
    v112 = v24;
    v113 = 0;
LABEL_35:
    sub_1002CE274(v109, v110, v111, v112, v113, v107, v108, v103);
  }

  v114 = v172;
  if (v43 == enum case for RoutingControl.RoutingControlType.pause(_:))
  {
    (*(v174 + 16))(v173, v175, v172);
    v115 = v160;
    v116 = *(v160 + 2);
    v177 = *(v160 + 1);
    v178 = v116;
    v179 = *(v160 + 48);
    v117 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v118 = (v159 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v119 = v162;
    *(v103 + 16) = sub_1002D32BC;
    *(v103 + 24) = v119;
    (*(v78 + 32))(v103 + v117, v173, v114);
    *(v103 + v118) = v163;
    v120 = v103 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v120 + 48) = *(v115 + 48);
    v121 = *(v115 + 2);
    *(v120 + 16) = *(v115 + 1);
    *(v120 + 32) = v121;
    *v120 = *v115;

    sub_10026D080(&v177, v176);
    v107 = sub_10021F050(_swiftEmptyArrayStorage);
    v108 = sub_1002D4624;
    v109 = v175;
    v110 = v161;
    v111 = v170;
    v112 = v24;
    v113 = 1;
    goto LABEL_35;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.stop(_:))
  {
    (*(v174 + 16))(v173, v175, v172);
    v122 = v160;
    v123 = *(v160 + 2);
    v177 = *(v160 + 1);
    v178 = v123;
    v179 = *(v160 + 48);
    v124 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v125 = (v159 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v126 = v162;
    *(v103 + 16) = sub_1002D32BC;
    *(v103 + 24) = v126;
    (*(v78 + 32))(v103 + v124, v173, v114);
    *(v103 + v125) = v163;
    v127 = v103 + ((v125 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v127 + 48) = *(v122 + 48);
    v128 = *(v122 + 2);
    *(v127 + 16) = *(v122 + 1);
    *(v127 + 32) = v128;
    *v127 = *v122;

    sub_10026D080(&v177, v176);
    v107 = sub_10021F050(_swiftEmptyArrayStorage);
    v108 = sub_1002D44D4;
    v109 = v175;
    v110 = v161;
    v111 = v170;
    v112 = v24;
    v113 = 3;
    goto LABEL_35;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.rewind(_:))
  {
    goto LABEL_49;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.fastForward(_:))
  {
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(86);
    v141._countAndFlagsBits = 91;
    v141._object = 0xE100000000000000;
    String.append(_:)(v141);
    v142._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v142);

    v143._object = 0x800000010043F7C0;
    v143._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v143);
    v144._countAndFlagsBits = v170;
    v144._object = v24;
    String.append(_:)(v144);
    v145._countAndFlagsBits = 0xD000000000000041;
    v145._object = 0x800000010043F810;
    String.append(_:)(v145);
    goto LABEL_48;
  }

  if (v43 == enum case for RoutingControl.RoutingControlType.tvRemote(_:))
  {
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    v146._countAndFlagsBits = 91;
    v146._object = 0xE100000000000000;
    String.append(_:)(v146);
    v147._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v147);

    v148._object = 0x800000010043F7C0;
    v148._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v148);
    v149._countAndFlagsBits = v170;
    v149._object = v24;
    String.append(_:)(v149);
    v150._countAndFlagsBits = 0x746E6F63202D203ELL;
    v150._object = 0xED0000203A6C6F72;
    String.append(_:)(v150);
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl);
    v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v151);

    v152._countAndFlagsBits = 0xD00000000000002FLL;
    v152._object = 0x800000010043F7E0;
    String.append(_:)(v152);
    while (1)
    {
LABEL_48:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_49:
      *&v177 = 0;
      *(&v177 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(81);
      v136._countAndFlagsBits = 91;
      v136._object = 0xE100000000000000;
      String.append(_:)(v136);
      v137._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v137);

      v138._object = 0x800000010043F7C0;
      v138._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v138);
      v139._countAndFlagsBits = v170;
      v139._object = v24;
      String.append(_:)(v139);
      v140._countAndFlagsBits = 0xD00000000000003CLL;
      v140._object = 0x800000010043F860;
      String.append(_:)(v140);
    }
  }

  if (v43 != enum case for RoutingControl.RoutingControlType.favorite(_:) && v43 != enum case for RoutingControl.RoutingControlType.unfavorite(_:))
  {
    if (v43 == enum case for RoutingControl.RoutingControlType.mute(_:))
    {
      return sub_1002C6FB4(v175, v160, v162);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return sub_1002C6A28(v175, v161, v160, sub_1002D32BC, v162);
}

uint64_t sub_1002B9434(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v189 = a4;
  v187 = a2;
  v192 = a1;
  v6 = *v4;
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v178 = *(v7 - 8);
  v8 = *(v178 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v176 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v172 = &v171 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v171 - v14;
  v16 = __chkstk_darwin(v13);
  v175 = &v171 - v17;
  v18 = __chkstk_darwin(v16);
  v171 = &v171 - v19;
  __chkstk_darwin(v18);
  v173 = &v171 - v20;
  v188 = type metadata accessor for RoutingControl();
  v183 = *(v188 - 8);
  v21 = *(v183 + 64);
  __chkstk_darwin(v188);
  v182 = v22;
  v190 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RoutingControl.Target();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v185 = (&v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v29 = &v171 - v28;
  v30 = type metadata accessor for RoutingControl.RoutingControlType();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v6;
  v36 = *(v6 + 368);
  v191 = v4;
  v177 = v36(v33);
  v37 = *a3;
  v184 = *(a3 + 8);
  RoutingControl.type.getter();
  if ((*(v31 + 88))(v35, v30) != enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
LABEL_59:
    (*(v31 + 8))(v35, v30);
    aBlock = 0;
    v194 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v164._countAndFlagsBits = 91;
    v164._object = 0xE100000000000000;
    String.append(_:)(v164);
    v165._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v165);

    v166._countAndFlagsBits = 0xD00000000000001ELL;
    v166._object = 0x800000010043E5A0;
    String.append(_:)(v166);
    v167._countAndFlagsBits = v37;
    v167._object = v184;
    String.append(_:)(v167);
    v168._countAndFlagsBits = 0x746E6F63202D203ELL;
    v168._object = 0xED0000203A6C6F72;
    String.append(_:)(v168);
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl);
    v169._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v169);

    v170._object = 0x800000010043E5C0;
    v170._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v170);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_60;
  }

  v174 = v15;
  (*(v31 + 96))(v35, v30);
  v38 = *v35;
  v39 = dispatch thunk of VolumeGroup.copy()();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = v192;
  RoutingControl.target.getter();
  v42 = *(v24 + 88);
  v181 = v24 + 88;
  v180 = v42;
  v43 = v42(v29, v23);
  v44 = enum case for RoutingControl.Target.session(_:);
  v186 = v24;
  v187 = v23;
  v45 = v29;
  v46 = v40;
  (*(v24 + 8))(v45, v23);
  v179 = v44;
  if (v43 == v44)
  {
    dispatch thunk of VolumeGroup.groupVolumeLevel.getter();
    if (v47 == 0.0)
    {
      *(v40 + 16) = 1;
    }
  }

  v48 = *(a3 + 32);
  v199[0] = *(a3 + 16);
  v199[1] = v48;
  v200 = *(a3 + 48);
  v49 = v183;
  v50 = v188;
  (*(v183 + 16))(v190, v41, v188);
  v51 = (*(v49 + 80) + 96) & ~*(v49 + 80);
  v52 = (v182 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v53 = v46;
  v54 = swift_allocObject();
  v55 = *(a3 + 16);
  *(v54 + 24) = *a3;
  v37 = v39;
  v56 = v190;
  *(v54 + 16) = v191;
  *(v54 + 40) = v55;
  *(v54 + 56) = *(a3 + 32);
  *(v54 + 72) = *(a3 + 48);
  v57 = v189;
  *(v54 + 80) = sub_1002D32BC;
  *(v54 + 88) = v57;
  v58 = *(v49 + 32);
  v30 = v49 + 32;
  v58(v54 + v51, v56, v50);
  *(v54 + v52) = v39;
  v190 = v54;
  *(v54 + v31) = v53;

  sub_10026D080(v199, &aBlock);

  v59 = v185;
  RoutingControl.target.getter();
  v35 = v187;
  v60 = v180(v59, v187);
  if (v60 == v179)
  {
    (*(v186 + 96))(v59, v35);
    v62 = *v59;
    v61 = v59[1];
    v63 = sub_100037234();
    if (v62 == *v63 && v61 == *(v63 + 1))
    {
      goto LABEL_55;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v35 = (*(*v191 + 440))();
      v64 = *(v35 + 2);
      v65 = v178;
      v37 = v175;
      if (v64)
      {
        v30 = 0;
        while (1)
        {
          if (v30 >= *(v35 + 2))
          {
            __break(1u);
            goto LABEL_52;
          }

          sub_1002CDCB4(&v35[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v30], v37, type metadata accessor for HostedRoutingSourceSession);
          v66 = *v37 == v62 && v37[1] == v61;
          if (v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v30;
          sub_10002187C(v37, type metadata accessor for HostedRoutingSourceSession);
          if (v64 == v30)
          {
            goto LABEL_18;
          }
        }

        v96 = v171;
        sub_100032E70(v37, v171, type metadata accessor for HostedRoutingSourceSession);
        v30 = v173;
        sub_100032E70(v96, v173, type metadata accessor for HostedRoutingSourceSession);
        v35 = *(v30 + 24);
        if (!v35)
        {
          goto LABEL_57;
        }

        v97 = *(v30 + 16);
        v98 = sub_100034D68();
        if (v98[2] && (v99 = sub_10000698C(v97, v35), (v100 & 1) != 0))
        {
          v101 = *(v98[7] + 8 * v99);

          if (*(v101 + 16) == 2)
          {
            dispatch thunk of VolumeGroup.apply(groupVolume:)();
            v191 = *(v101 + 88);
            RoutingControl.identifier.getter();
            aBlock = 0;
            v194 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            aBlock = 0xD00000000000001CLL;
            v194 = 0x800000010043E5E0;
            v102._countAndFlagsBits = v62;
            v102._object = v61;
            String.append(_:)(v102);

            v103._countAndFlagsBits = 62;
            v103._object = 0xE100000000000000;
            String.append(_:)(v103);
            v104 = objc_allocWithZone(MRRequestDetails);
            v105 = String._bridgeToObjectiveC()();
            v106 = String._bridgeToObjectiveC()();

            v107 = String._bridgeToObjectiveC()();

            v108 = [v104 initWithName:v105 requestID:v106 reason:v107];

            v109 = swift_allocObject();
            v110 = v177;
            v109[2] = v177;
            v109[3] = sub_1002D32BC;
            v111 = v190;
            v109[4] = v189;
            v109[5] = sub_1002D4DF0;
            v109[6] = v111;
            v197 = sub_1002D4EDC;
            v198 = v109;
            aBlock = _NSConcreteStackBlock;
            v194 = 1107296256;
            v195 = sub_1001BC53C;
            v196 = &unk_1004C8F40;
            v112 = _Block_copy(&aBlock);
            v113 = v110;

            v114 = v113;

            v115 = v191;
            LODWORD(v116) = v38;
            [v191 setVolume:v108 details:v114 queue:v112 completion:v116];
            _Block_release(v112);

            v117 = v173;
            goto LABEL_47;
          }
        }

        else
        {
        }

        v143 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
        v144 = swift_allocError();
        (*(*(v143 - 8) + 104))(v145, enum case for InternalRoutingError.sessionNotFound(_:), v143);
        v146 = MRDFastSyncGroupSessionState.rawValue.getter(v144, v62, v61);
        v148 = v147;
        v150 = v149;
        v152 = v151;
        sub_1002D32BC(v146, v147, v149, v151);

        sub_10023DCB0(v148, v150, v152);

        v117 = v30;
LABEL_47:
        sub_10002187C(v117, type metadata accessor for HostedRoutingSourceSession);
      }

LABEL_18:

      v67 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v68 = swift_allocError();
      (*(*(v67 - 8) + 104))(v69, enum case for InternalRoutingError.sessionNotFound(_:), v67);
      v70 = MRDFastSyncGroupSessionState.rawValue.getter(v68, v62, v61);
      v72 = v71;
      v74 = v73;
      v76 = v75;
      sub_1002D32BC(v70, v71, v73, v75);

      sub_10023DCB0(v72, v74, v76);
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v184 = v39;
  if (v60 == enum case for RoutingControl.Target.item(_:))
  {
    (*(v186 + 96))(v59, v35);
    v37 = *v59;
    v35 = v59[1];
    v31 = sub_100258614();
    v30 = v77;
    v78 = sub_1002586E4();
    v79 = sub_100037234();
    v80 = v178;
    v81 = v176;
    if (v31 == *v79 && v30 == *(v79 + 1))
    {
      goto LABEL_56;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v187 = v78;
      v188 = v53;
      v82 = (*(*v191 + 440))();
      v83 = *(v82 + 16);
      if (v83)
      {
        v84 = 0;
        while (1)
        {
          if (v84 >= *(v82 + 16))
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          sub_1002CDCB4(v82 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v84, v81, type metadata accessor for HostedRoutingSourceSession);
          v85 = *v81 == v31 && v81[1] == v30;
          if (v85 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v84;
          sub_10002187C(v81, type metadata accessor for HostedRoutingSourceSession);
          if (v83 == v84)
          {
            goto LABEL_32;
          }
        }

        v118 = v81;
        v119 = v172;
        sub_100032E70(v118, v172, type metadata accessor for HostedRoutingSourceSession);
        v120 = v174;
        sub_100032E70(v119, v174, type metadata accessor for HostedRoutingSourceSession);
        v121 = *(v120 + 24);
        if (!v121)
        {
          goto LABEL_58;
        }

        v122 = *(v120 + 16);

        v123 = sub_100034D68();
        if (v123[2] && (v124 = sub_10000698C(v122, v121), (v125 & 1) != 0))
        {
          v126 = *(v123[7] + 8 * v124);

          if (*(v126 + 16) == 2)
          {
            dispatch thunk of VolumeGroup.apply(volume:to:)();
            v191 = *(v126 + 88);
            v127 = String._bridgeToObjectiveC()();

            RoutingControl.identifier.getter();
            aBlock = 0;
            v194 = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            aBlock = 0xD00000000000001CLL;
            v194 = 0x800000010043E5E0;
            v128._countAndFlagsBits = v37;
            v128._object = v35;
            String.append(_:)(v128);

            v129._countAndFlagsBits = 62;
            v129._object = 0xE100000000000000;
            String.append(_:)(v129);
            v130 = objc_allocWithZone(MRRequestDetails);
            v131 = String._bridgeToObjectiveC()();
            v132 = String._bridgeToObjectiveC()();

            v133 = String._bridgeToObjectiveC()();

            v134 = [v130 initWithName:v131 requestID:v132 reason:v133];

            v135 = swift_allocObject();
            v136 = v177;
            v135[2] = v177;
            v135[3] = sub_1002D32BC;
            v137 = v190;
            v135[4] = v189;
            v135[5] = sub_1002D4DF0;
            v135[6] = v137;
            v197 = sub_1002D50EC;
            v198 = v135;
            aBlock = _NSConcreteStackBlock;
            v194 = 1107296256;
            v195 = sub_1001BC53C;
            v196 = &unk_1004C8EF0;
            v138 = _Block_copy(&aBlock);
            v139 = v136;

            v140 = v139;

            v141 = v191;
            LODWORD(v142) = v38;
            [v191 setOutputDeviceVolume:v127 outputDevice:v134 details:v140 queue:v138 completion:v142];
            _Block_release(v138);

            v117 = v174;
            goto LABEL_47;
          }
        }

        else
        {
        }

        v153 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
        v154 = swift_allocError();
        (*(*(v153 - 8) + 104))(v155, enum case for InternalRoutingError.sessionNotFound(_:), v153);
        v156 = MRDFastSyncGroupSessionState.rawValue.getter(v154, v37, v35);
        v158 = v157;
        v160 = v159;
        v162 = v161;
        sub_1002D32BC(v156, v157, v159, v161);

        sub_10023DCB0(v158, v160, v162);

        v117 = v120;
        goto LABEL_47;
      }

LABEL_32:

      v86 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v87 = swift_allocError();
      (*(*(v86 - 8) + 104))(v88, enum case for InternalRoutingError.sessionNotFound(_:), v86);
      v89 = MRDFastSyncGroupSessionState.rawValue.getter(v87, v31, v30);
      v91 = v90;
      v93 = v92;
      v95 = v94;
      sub_1002D32BC(v89, v90, v92, v94);

      sub_10023DCB0(v91, v93, v95);
    }

    goto LABEL_54;
  }

LABEL_60:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002BA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a3;
  v8 = type metadata accessor for HostedRoutingItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for HostedRoutingSourceSession(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(a1 + 16);
  if (v31)
  {
    v18 = 0;
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    v29 = v20;
    v30 = v19;
    do
    {
      sub_1002CDCB4(v19 + v20 * v18, v17, type metadata accessor for HostedRoutingSourceSession);
      result = *v17;
      v22 = *v17 == v32 && v17[1] == v33;
      if (v22 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v23 = 0;
        v24 = v17[4];
        v25 = *(v24 + 16);
        while (v25 != v23)
        {
          if (v23 >= *(v24 + 16))
          {
            __break(1u);
            return result;
          }

          sub_1002CDCB4(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v12, type metadata accessor for HostedRoutingItem);
          if (*v12 == a4 && v12[1] == a5)
          {
            sub_10002187C(v12, type metadata accessor for HostedRoutingItem);
LABEL_20:
            sub_10002187C(v17, type metadata accessor for HostedRoutingSourceSession);
            return 1;
          }

          ++v23;
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = sub_10002187C(v12, type metadata accessor for HostedRoutingItem);
          if (v27)
          {
            goto LABEL_20;
          }
        }
      }

      ++v18;
      sub_10002187C(v17, type metadata accessor for HostedRoutingSourceSession);
      v19 = v30;
      v20 = v29;
    }

    while (v18 != v31);
  }

  return 0;
}

uint64_t sub_1002BABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v32 = a3;
  v8 = type metadata accessor for HostedRoutingItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for HostedRoutingSourceSession(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 0;
  }

  v18 = 0;
  v19 = *(v15 + 80);
  v29 = *(v15 + 72);
  v30 = a1 + ((v19 + 32) & ~v19);
  while (1)
  {
    sub_1002CDCB4(v30 + v29 * v18, v17, type metadata accessor for HostedRoutingSourceSession);
    result = *v17;
    if (*v17 == v31 && v17[1] == v32)
    {
      break;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      break;
    }

LABEL_4:
    ++v18;
    sub_10002187C(v17, type metadata accessor for HostedRoutingSourceSession);
    if (v18 == v28)
    {
      return 0;
    }
  }

  v22 = 0;
  v23 = v17[4];
  v24 = *(v23 + 16);
  while (1)
  {
    if (v24 == v22)
    {
      sub_10002187C(v17, type metadata accessor for HostedRoutingSourceSession);
      return 1;
    }

    if (v22 >= *(v23 + 16))
    {
      break;
    }

    sub_1002CDCB4(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v12, type metadata accessor for HostedRoutingItem);
    if (*v12 == a4 && v12[1] == a5)
    {
      sub_10002187C(v12, type metadata accessor for HostedRoutingItem);
      goto LABEL_4;
    }

    ++v22;
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_10002187C(v12, type metadata accessor for HostedRoutingItem);
    if (v26)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BAE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for HostedRoutingItem(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for HostedRoutingSourceSession(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(a1 + 16);
  if (v42)
  {
    v19 = 0;
    v20 = *(v16 + 80);
    v40 = *(v16 + 72);
    v41 = a1 + ((v20 + 32) & ~v20);
    v37 = a4;
    v38 = a5;
    v35 = a2;
    v36 = a3;
    v34 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      sub_1002CDCB4(v41 + v40 * v19, v18, type metadata accessor for HostedRoutingSourceSession);
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = v18[4];
        v23 = *(v22 + 16);
        if (v23)
        {
          v45 = _swiftEmptyArrayStorage;
          sub_1000089FC(0, v23, 0);
          v24 = v45;
          v25 = v22 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
          v26 = *(v39 + 72);
          do
          {
            sub_1002CDCB4(v25, v13, type metadata accessor for HostedRoutingItem);
            v27 = *v13;
            v28 = v13[1];

            sub_10002187C(v13, type metadata accessor for HostedRoutingItem);
            v45 = v24;
            v30 = *(v24 + 2);
            v29 = *(v24 + 3);
            if (v30 >= v29 >> 1)
            {
              sub_1000089FC((v29 > 1), v30 + 1, 1);
              v24 = v45;
            }

            *(v24 + 2) = v30 + 1;
            v31 = &v24[16 * v30];
            *(v31 + 4) = v27;
            *(v31 + 5) = v28;
            v25 += v26;
            --v23;
          }

          while (v23);
          a4 = v37;
          a5 = v38;
          a2 = v35;
          a3 = v36;
          v18 = v34;
        }

        else
        {
          v24 = _swiftEmptyArrayStorage;
        }

        v44[0] = a4;
        v44[1] = a5;
        if (*(v24 + 2) == 1)
        {
          if (v24 == &v43 || (*(v24 + 4) == a4 ? (v32 = *(v24 + 5) == a5) : (v32 = 0), v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {

            sub_1001E6204(v44);
            sub_10002187C(v18, type metadata accessor for HostedRoutingSourceSession);
            return 1;
          }
        }

        sub_1001E6204(v44);
      }

      ++v19;
      sub_10002187C(v18, type metadata accessor for HostedRoutingSourceSession);
    }

    while (v19 != v42);
  }

  return 0;
}

uint64_t sub_1002BB218(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1002BB468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HostedRoutingSourceSession(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  while (1)
  {
    sub_1002CDCB4(v12, v10, type metadata accessor for HostedRoutingSourceSession);
    v15 = *v10 == a2 && v10[1] == a3;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_4;
    }

    v14 = *(v10 + *(v6 + 48));
    sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
    if ((v14 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v12 += v13;
    if (!--v11)
    {
      return 0;
    }
  }
}

uint64_t sub_1002BB5E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v38 = a6;
  v41 = a12;
  v40 = a11;
  v39 = a10;
  v37 = a9;
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v19 - 8);
  v20 = *(v45 + 64);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v43 = *(v44 - 8);
  v23 = *(v43 + 64);
  v24 = __chkstk_darwin(v44);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = (*(*a3 + 368))(v24);
  v27 = a8[1];
  v50 = *a8;
  v28 = a8[2];
  v48[0] = v27;
  v48[1] = v28;
  v49 = *(a8 + 48);
  v29 = swift_allocObject();
  v30 = a8[1];
  *(v29 + 72) = *a8;
  *(v29 + 16) = a2;
  *(v29 + 24) = a4;
  v31 = v38;
  *(v29 + 32) = a5;
  *(v29 + 40) = v31;
  *(v29 + 48) = a7;
  *(v29 + 56) = a1;
  *(v29 + 64) = a3;
  *(v29 + 88) = v30;
  *(v29 + 104) = a8[2];
  *(v29 + 120) = *(a8 + 48);
  v32 = v39;
  *(v29 + 128) = v37;
  *(v29 + 136) = v32;
  *(v29 + 144) = v40;
  *(v29 + 152) = v41;
  aBlock[4] = sub_1002D3E84;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C89A0;
  v33 = _Block_copy(aBlock);
  swift_errorRetain();
  v34 = a1;

  sub_10028BC98(&v50, v46);
  sub_10026D080(v48, v46);

  static DispatchQoS.unspecified.getter();
  v46[0] = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v42;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v45 + 8))(v22, v19);
  (*(v43 + 8))(v26, v44);
}

void sub_1002BBA10(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, char *a6, uint64_t a7, __int128 *a8, void (*a9)(_BYTE *, uint64_t, uint64_t), char *a10, unsigned __int8 a11, uint64_t a12)
{
  v271 = a8;
  v270 = a7;
  v274 = a5;
  v275 = a3;
  v16 = a12;
  v261 = type metadata accessor for DispatchWorkItemFlags();
  v260 = *(v261 - 8);
  v17 = *(v260 + 64);
  __chkstk_darwin(v261);
  v258 = &v241[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v259 = type metadata accessor for DispatchQoS();
  v257 = *(v259 - 8);
  v19 = *(v257 + 64);
  __chkstk_darwin(v259);
  v256 = &v241[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v263 = type metadata accessor for DispatchTime();
  v255 = *(v263 - 8);
  v21 = *(v255 + 64);
  v22 = __chkstk_darwin(v263);
  v254 = &v241[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v262 = &v241[-v24];
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v264 = &v241[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v28);
  v269 = &v241[-v31];
  v32 = __chkstk_darwin(v30);
  v252 = &v241[-v33];
  v34 = __chkstk_darwin(v32);
  v251 = &v241[-v35];
  v36 = __chkstk_darwin(v34);
  v250 = &v241[-v37];
  v38 = __chkstk_darwin(v36);
  v40 = &v241[-v39];
  __chkstk_darwin(v38);
  v42 = &v241[-v41];
  v272 = a2;
  v273 = a4;
  if (a1)
  {
    v43 = v26;
    v44 = v25;
    swift_getErrorValue();
    v45 = v276;
    swift_errorRetain();
    if ((sub_100248E9C(v45) & 1) == 0)
    {
      v88 = sub_100028D40();
      (*(v43 + 16))(v42, v88, v25);
      swift_errorRetain();

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v91 = 136315650;
        v92 = _typeName(_:qualified:)();
        v94 = sub_10002C9C8(v92, v93, &aBlock);

        *(v91 + 4) = v94;
        *(v91 + 12) = 2082;
        *(v91 + 14) = sub_10002C9C8(v272, v275, &aBlock);
        *(v91 + 22) = 2114;
        swift_errorRetain();
        v95 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 24) = v95;
        v96 = v271;
        *v271 = v95;
        _os_log_impl(&_mh_execute_header, v89, v90, "[%s] handleSetActiveItem<%{public}s> - create endpoint failed with error: %{public}@", v91, 0x20u);
        sub_1000038A4(v96, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      (*(v43 + 8))(v42, v44);
      swift_errorRetain();
      MRDFastSyncGroupSessionState.rawValue.getter(a1, 0, 0);
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v273();

      sub_10023DCB0(v113, v115, v117);

      return;
    }

    v26 = v43;
    a2 = v272;
  }

  v268 = a6;
  v46 = sub_100028D40();
  v47 = *(v26 + 16);
  v266 = v46;
  v265 = v26 + 16;
  v267 = v47;
  v47(v40);
  v48 = a6;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v253 = v48;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v247 = v49;
    v53 = v52;
    v246 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    *&aBlock = v248;
    *v53 = 136315650;
    v54 = _typeName(_:qualified:)();
    v55 = v25;
    v57 = sub_10002C9C8(v54, v56, &aBlock);
    LODWORD(v245) = v50;
    v58 = a2;
    v59 = v57;
    v60 = v275;

    *(v53 + 4) = v59;
    v16 = a12;
    *(v53 + 12) = 2082;
    *(v53 + 14) = sub_10002C9C8(v58, v60, &aBlock);
    *(v53 + 22) = 2114;
    *(v53 + 24) = v48;
    v61 = v268;
    v62 = v246;
    *v246 = v268;
    v63 = v48;
    v64 = v247;
    _os_log_impl(&_mh_execute_header, v247, v245, "[%s] handleSetActiveItem<%{public}s> - created endpoint: %{public}@", v53, 0x20u);
    sub_1000038A4(v62, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v65 = *(v26 + 8);
    v66 = v55;
    v65(v40, v55);
  }

  else
  {
    v67 = v25;
    v61 = v268;

    v65 = *(v26 + 8);
    v66 = v67;
    v65(v40, v67);
  }

  v68 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore;
  v69 = *(**(v270 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 264);

  v70 = v271;
  v71 = v69(v271);
  v73 = v72;

  if (!v73)
  {
    v97 = v264;
    v267(v264, v266, v66);
    v98 = v70[1];
    v285 = *v70;
    v99 = v70[2];
    v282 = v98;
    v283 = v99;
    v284 = *(v70 + 48);

    sub_10028BC98(&v285, &aBlock);
    sub_10026D080(&v282, &aBlock);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    sub_1001E6204(&v285);
    sub_100238E4C(&v282);
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v270 = v66;
      v103 = v70;
      v104 = v102;
      v281 = swift_slowAlloc();
      *v104 = 136315650;
      v105 = _typeName(_:qualified:)();
      v107 = sub_10002C9C8(v105, v106, &v281);

      *(v104 + 4) = v107;
      *(v104 + 12) = 2082;
      *(v104 + 14) = sub_10002C9C8(v272, v275, &v281);
      *(v104 + 22) = 2082;
      v108 = v103[1];
      aBlock = *v103;
      v278 = v108;
      v279 = v103[2];
      v280 = *(v103 + 48);
      sub_1002856A4();
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = sub_10002C9C8(v109, v110, &v281);

      *(v104 + 24) = v111;
      _os_log_impl(&_mh_execute_header, v100, v101, "[%s] handleSetActiveItem<%{public}s> - no prewarmed identifier found for interaction: %{public}s. Failing", v104, 0x20u);
      swift_arrayDestroy();

      v65(v97, v270);
    }

    else
    {

      v65(v97, v66);
    }

    v118 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v119 = swift_allocError();
    (*(*(v118 - 8) + 104))(v120, enum case for InternalRoutingError.sessionNotFound(_:), v118);
    v121 = MRDFastSyncGroupSessionState.rawValue.getter(v119, 1, 0);
    v123 = v122;
    v125 = v124;
    v127 = v126;
    goto LABEL_57;
  }

  v264 = v68;
  v249 = v16;
  v74 = v269;
  if (!v61 || (v75 = [v253 outputDevices]) == 0)
  {
LABEL_53:

    v267(v74, v266, v66);
    v220 = v70[1];
    v285 = *v70;
    v221 = v70[2];
    v282 = v220;
    v283 = v221;
    v284 = *(v70 + 48);

    sub_10028BC98(&v285, &aBlock);
    sub_10026D080(&v282, &aBlock);
    v222 = Logger.logObject.getter();
    v223 = static os_log_type_t.error.getter();

    sub_1001E6204(&v285);
    sub_100238E4C(&v282);
    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v270 = v66;
      v281 = v225;
      *v224 = 136315650;
      v226 = _typeName(_:qualified:)();
      v228 = sub_10002C9C8(v226, v227, &v281);

      *(v224 + 4) = v228;
      *(v224 + 12) = 2082;
      *(v224 + 14) = sub_10002C9C8(v272, v275, &v281);
      *(v224 + 22) = 2082;
      v229 = v70[1];
      aBlock = *v70;
      v278 = v229;
      v279 = v70[2];
      v280 = *(v70 + 48);
      sub_1002856A4();
      v230 = dispatch thunk of CustomStringConvertible.description.getter();
      v232 = sub_10002C9C8(v230, v231, &v281);

      *(v224 + 24) = v232;
      _os_log_impl(&_mh_execute_header, v222, v223, "[%s] handleSetActiveItem<%{public}s> - formed endpoint for interaction: %{public}s has no group identifier. Failing", v224, 0x20u);
      swift_arrayDestroy();

      v233 = v74;
      v234 = v270;
    }

    else
    {

      v233 = v74;
      v234 = v66;
    }

    v65(v233, v234);
    v235 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v236 = swift_allocError();
    (*(*(v235 - 8) + 104))(v237, enum case for InternalRoutingError.sessionNotFound(_:), v235);
    v121 = MRDFastSyncGroupSessionState.rawValue.getter(v236, 1, 0);
    v123 = v238;
    v125 = v239;
    v127 = v240;
LABEL_57:
    (v273)(v121);

    sub_10023DCB0(v123, v125, v127);
    return;
  }

  v76 = v75;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v77 >> 62))
  {
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_52:

    goto LABEL_53;
  }

LABEL_12:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v78 = *(v77 + 32);
  }

  v79 = v78;

  v80 = [v79 groupID];

  if (!v80)
  {
    goto LABEL_53;
  }

  v245 = v65;
  v268 = v26;
  v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v269 = v81;

  v82 = v253;
  v83 = [v253 designatedGroupLeader];
  v247 = v71;
  if (!v83)
  {
    v267 = a9;
    v268 = a10;
    v87 = v73;
    v86 = v264;
    goto LABEL_28;
  }

  v84 = v83;
  v85 = [v83 supportsMultiplayer];
  v86 = v264;
  if (v85)
  {
    v267 = a9;
LABEL_19:
    v268 = a10;
    v87 = v73;

LABEL_28:
    LODWORD(v253) = a11;
    v128 = v270;
    v129 = *(**&v86[v270] + 288);

    v130 = v269;

    v129(v71, v87, v70, v248, v130);

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v131._object = 0x800000010043F730;
    v131._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v131);
    v132 = v272;
    v133._countAndFlagsBits = v272;
    v134 = v275;
    v133._object = v275;
    String.append(_:)(v133);
    v135._countAndFlagsBits = 0xD000000000000022;
    v135._object = 0x800000010043F750;
    String.append(_:)(v135);
    sub_100033F40(aBlock, *(&aBlock + 1));

    v136 = static String.nanoIDFourChar()();
    v265 = v136;
    v138 = v137;
    v264 = v137;
    v139 = swift_allocObject();
    v266 = v139;
    swift_weakInit();
    v140 = v70[1];
    v285 = *v70;
    v141 = v70[2];
    v282 = v140;
    v283 = v141;
    v284 = *(v70 + 48);
    v142 = v134;
    v143 = v128;
    v144 = swift_allocObject();
    v145 = v70[1];
    *(v144 + 88) = *v70;
    *(v144 + 16) = v139;
    *(v144 + 24) = v136;
    *(v144 + 32) = v138;
    v146 = v273;
    v147 = v274;
    *(v144 + 40) = v273;
    *(v144 + 48) = v147;
    v148 = v268;
    *(v144 + 56) = v267;
    *(v144 + 64) = v148;
    *(v144 + 72) = v132;
    *(v144 + 80) = v142;
    *(v144 + 104) = v145;
    *(v144 + 120) = v70[2];
    *(v144 + 136) = *(v70 + 48);
    *(v144 + 144) = v71;
    *(v144 + 152) = v87;
    v246 = v87;
    LODWORD(v253) = v253 & 1;
    *(v144 + 160) = v253;
    v149 = v249;
    *(v144 + 168) = v249;
    v150 = swift_allocObject();
    *(v150 + 16) = v132;
    *(v150 + 24) = v142;
    v151 = v70[1];
    *(v150 + 32) = *v70;
    *(v150 + 48) = v151;
    *(v150 + 64) = v70[2];
    *(v150 + 80) = *(v70 + 48);
    *(v150 + 88) = v146;
    *(v150 + 96) = v274;
    *(v150 + 104) = v149;
    v152 = swift_allocObject();
    *(v152 + 16) = sub_1002D3ED0;
    *(v152 + 24) = v144;
    v153 = sub_100297768();

    sub_10028BC98(&v285, &aBlock);
    sub_10026D080(&v282, &aBlock);

    sub_10028BC98(&v285, &aBlock);
    sub_10026D080(&v282, &aBlock);

    v154 = v264;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v153;
    v156 = v152;
    v157 = v265;
    sub_100285D14(sub_1002253D8, v156, v265, v154, isUniquelyReferenced_nonNull_native);
    v158 = *(v143 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
    *(v143 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = aBlock;

    v252 = (*(*v143 + 368))(v159);
    v160 = v254;
    static DispatchTime.now()();
    + infix(_:_:)();
    v255 = *(v255 + 8);
    (v255)(v160, v263);
    v161 = swift_allocObject();
    swift_weakInit();
    v162 = swift_allocObject();
    v162[2] = v161;
    v162[3] = v157;
    v162[4] = v154;
    v162[5] = sub_1002D3F24;
    v162[6] = v150;
    *&v279 = sub_1002D5050;
    *(&v279 + 1) = v162;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v278 = sub_100003D98;
    *(&v278 + 1) = &unk_1004C8A68;
    v163 = _Block_copy(&aBlock);

    v164 = v256;
    static DispatchQoS.unspecified.getter();
    v281 = _swiftEmptyArrayStorage;
    sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v165 = v258;
    v166 = v261;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v167 = v262;
    v168 = v252;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v163);

    (*(v260 + 8))(v165, v166);
    (*(v257 + 8))(v164, v259);
    (v255)(v167, v263);

    sub_1002BDAF0(v266, v265, v264, v273, v274, v267, v268, v272, v275, v271, v247, v246, v253, v249);

    return;
  }

  v169 = [v82 origin];
  v170 = v66;
  if (v169)
  {
    v171 = v169;
    v172 = [objc_opt_self() server];
    v173 = [v172 nowPlayingServer];

    v174 = [v173 originClientForOrigin:v171];
    if (v174 && (v175 = [v174 deviceInfo], v174, v175))
    {
      v176 = [v175 senderDefaultGroupUID];
      if (v176)
      {
        v252 = v171;
        v246 = v73;
        v177 = v176;
        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        if (v178 == v248 && v180 == v269 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }

        else
        {
          v243 = v178;
          v267(v250, v266, v66);

          v198 = Logger.logObject.getter();
          v199 = static os_log_type_t.default.getter();

          v242 = v199;
          v244 = v198;
          if (os_log_type_enabled(v198, v199))
          {
            v200 = swift_slowAlloc();
            *&aBlock = swift_slowAlloc();
            *v200 = 136315906;
            v201 = _typeName(_:qualified:)();
            v203 = sub_10002C9C8(v201, v202, &aBlock);

            *(v200 + 4) = v203;
            *(v200 + 12) = 2082;
            *(v200 + 14) = sub_10002C9C8(v272, v275, &aBlock);
            *(v200 + 22) = 2082;
            v204 = v269;

            v205 = sub_10002C9C8(v248, v204, &aBlock);

            *(v200 + 24) = v205;
            *(v200 + 32) = 2080;
            v206 = v243;
            *(v200 + 34) = sub_10002C9C8(v243, v180, &aBlock);
            v207 = v244;
            _os_log_impl(&_mh_execute_header, v244, v242, "[%s] handleSetActiveItem<%{public}s> - switch groupIdentifier: %{public}s with defaultGroupIdentifier: %s", v200, 0x2Au);
            swift_arrayDestroy();

            v245(v250, v170);

            v248 = v206;
          }

          else
          {

            v245(v250, v66);

            v248 = v243;
          }

          v269 = v180;
        }

        v208 = v251;
        v267(v251, v266, v170);

        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *&aBlock = v267;
          *v211 = 136315394;
          v212 = _typeName(_:qualified:)();
          v214 = sub_10002C9C8(v212, v213, &aBlock);
          v215 = v209;
          v216 = v275;

          *(v211 + 4) = v214;
          *(v211 + 12) = 2082;
          *(v211 + 14) = sub_10002C9C8(v272, v216, &aBlock);
          _os_log_impl(&_mh_execute_header, v215, v210, "[%s] handleSetActiveItem<%{public}s> - remove item from parent group", v211, 0x16u);
          swift_arrayDestroy();

          v217 = v251;
        }

        else
        {

          v217 = v208;
        }

        v245(v217, v170);
        v70 = v271;
        v73 = v246;
        v267 = a9;
        v218 = String._bridgeToObjectiveC()();
        *&v279 = MRDFastSyncGroupSessionState.rawValue.getter;
        *(&v279 + 1) = 0;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v278 = sub_1001BC53C;
        *(&v278 + 1) = &unk_1004C8A90;
        v219 = _Block_copy(&aBlock);
        [v253 removeOutputDeviceFromParentGroup:v218 queue:0 completion:v219];

        _Block_release(v219);
        v84 = v218;
        v71 = v247;
        v86 = v264;
        goto LABEL_19;
      }
    }

    else
    {
      v175 = v171;
    }
  }

  v181 = v252;
  v267(v252, v266, v66);

  v182 = Logger.logObject.getter();
  v183 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v184 = 136315394;
    v185 = _typeName(_:qualified:)();
    v187 = sub_10002C9C8(v185, v186, &aBlock);

    *(v184 + 4) = v187;
    *(v184 + 12) = 2082;
    *(v184 + 14) = sub_10002C9C8(v272, v275, &aBlock);
    _os_log_impl(&_mh_execute_header, v182, v183, "[%s] handleSetActiveItem<%{public}s> - no default group identifier for non-multiplayer device", v184, 0x16u);
    swift_arrayDestroy();
  }

  v245(v181, v170);
  v188 = v273;
  v189 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v190 = swift_allocError();
  (*(*(v189 - 8) + 104))(v191, enum case for InternalRoutingError.sessionNotFound(_:), v189);
  MRDFastSyncGroupSessionState.rawValue.getter(v190, 1, 0);
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v188();

  sub_10023DCB0(v193, v195, v197);
}

uint64_t sub_1002BDAF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, char *a7, uint64_t a8, unint64_t a9, __int128 *a10, uint64_t a11, _BYTE *a12, unsigned __int8 a13, uint64_t a14)
{
  v264 = a8;
  v270 = a7;
  v269 = a6;
  v261 = a3;
  v260 = a2;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v265 = &v238[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v263 = &v238[-v22];
  v23 = __chkstk_darwin(v21);
  v252 = &v238[-v24];
  v25 = __chkstk_darwin(v23);
  v254 = &v238[-v26];
  v27 = __chkstk_darwin(v25);
  v258 = &v238[-v28];
  __chkstk_darwin(v27);
  v256 = &v238[-v29];
  v30 = type metadata accessor for HostedRoutingItem(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30 - 8);
  v35 = &v238[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v37 = &v238[-v36];
  v251 = type metadata accessor for HostedRoutingSourceSession(0);
  v267 = *(v251 - 8);
  v38 = *(v267 + 64);
  v39 = __chkstk_darwin(v251);
  v255 = &v238[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v253 = &v238[-v42];
  v43 = __chkstk_darwin(v41);
  v45 = &v238[-v44];
  v46 = __chkstk_darwin(v43);
  v266 = &v238[-v47];
  __chkstk_darwin(v46);
  v49 = &v238[-v48];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v268 = result;
  if (!result)
  {
    return result;
  }

  v248 = a14;
  v262 = a9;
  v51 = v268;
  v52 = (*(*v268 + 440))(result);
  v53 = *(v52 + 16);
  if (!v53)
  {
LABEL_15:

    v59 = sub_100028D40();
    v60 = v265;
    (*(v17 + 16))(v265, v59, v16);
    v61 = v262;

    v62 = v270;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *&v271 = swift_slowAlloc();
      *v65 = 136315650;
      v66 = _typeName(_:qualified:)();
      v68 = sub_10002C9C8(v66, v67, &v271);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_10002C9C8(v264, v61, &v271);
      *(v65 + 22) = 2082;
      *(v65 + 24) = sub_10002C9C8(v269, v62, &v271);
      _os_log_impl(&_mh_execute_header, v63, v64, "[%s] handleSetActiveItem<%{public}s> - still waiting for session containing item: %{public}s", v65, 0x20u);
      swift_arrayDestroy();

      return (*(v17 + 8))(v265, v16);
    }

    else
    {

      return (*(v17 + 8))(v60, v16);
    }
  }

  v54 = 0;
  v239 = a13;
  v240 = a12;
  v243 = a11;
  v245 = a10;
  v55 = v52 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
  v259 = v49;
  v250 = v17;
  v257 = v16;
  v246 = a4;
  v244 = a5;
  v249 = v52;
  v242 = v53;
  v241 = v55;
LABEL_4:
  if (v54 >= *(v52 + 16))
  {
    goto LABEL_81;
  }

  v247 = v54 + 1;
  sub_1002CDCB4(v55 + *(v267 + 72) * v54, v45, type metadata accessor for HostedRoutingSourceSession);
  v51 = 0;
  v56 = *(v45 + 4);
  v17 = *(v56 + 16);
  while (1)
  {
    if (v17 == v51)
    {
      sub_10002187C(v45, type metadata accessor for HostedRoutingSourceSession);
      v54 = v247;
      v17 = v250;
      v16 = v257;
      v52 = v249;
      v55 = v241;
      if (v247 == v242)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }

    if (v51 >= *(v56 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v57 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v16 = *(v31 + 72);
    sub_1002CDCB4(v56 + v57 + v16 * v51, v37, type metadata accessor for HostedRoutingItem);
    if (*v37 == v269 && v37[1] == v270)
    {
      break;
    }

    ++v51;
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10002187C(v37, type metadata accessor for HostedRoutingItem);
    if (v49)
    {
      goto LABEL_18;
    }
  }

  sub_10002187C(v37, type metadata accessor for HostedRoutingItem);
LABEL_18:

  v69 = v266;
  sub_100032E70(v45, v266, type metadata accessor for HostedRoutingSourceSession);
  v17 = v259;
  v70 = sub_100032E70(v69, v259, type metadata accessor for HostedRoutingSourceSession);
  if ((sub_1000325DC(v70) & 1) == 0)
  {
    v89 = *v17;
    v90 = *(v17 + 8);
    v91 = v240;
    if (*v17 != v243 || v90 != v240)
    {
      v92 = *v17;
      v93 = *(v17 + 8);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v165 = sub_100028D40();
        v166 = v250;
        v167 = v256;
        v168 = v257;
        (*(v250 + 16))(v256, v165, v257);
        v169 = v253;
        sub_1002CDCB4(v17, v253, type metadata accessor for HostedRoutingSourceSession);
        v170 = v262;

        v171 = v270;

        v172 = Logger.logObject.getter();
        v173 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v172, v173))
        {
          v174 = v169;
          v175 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          *&v271 = v267;
          *v175 = 136316162;
          v176 = _typeName(_:qualified:)();
          v178 = sub_10002C9C8(v176, v177, &v271);

          *(v175 + 4) = v178;
          *(v175 + 12) = 2082;
          *(v175 + 14) = sub_10002C9C8(v264, v170, &v271);
          *(v175 + 22) = 2082;
          *(v175 + 24) = sub_10002C9C8(v243, v91, &v271);
          *(v175 + 32) = 2082;
          *(v175 + 34) = sub_10002C9C8(v269, v171, &v271);
          *(v175 + 42) = 2082;
          sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession);
          v179 = v174;
          v180 = dispatch thunk of CustomStringConvertible.description.getter();
          v182 = v181;
          sub_10002187C(v179, type metadata accessor for HostedRoutingSourceSession);
          v183 = sub_10002C9C8(v180, v182, &v271);

          *(v175 + 44) = v183;
          _os_log_impl(&_mh_execute_header, v172, v173, "[%s] handleSetActiveItem<%{public}s> - still waiting for session: %{public}s because item: %{public}s is still in original session: %{public}s", v175, 0x34u);
          swift_arrayDestroy();

          (*(v166 + 8))(v256, v257);
        }

        else
        {

          sub_10002187C(v169, type metadata accessor for HostedRoutingSourceSession);
          (*(v166 + 8))(v167, v168);
        }

        goto LABEL_33;
      }
    }

    v266 = v90;
    v267 = v89;
    v94 = *(v17 + 32);
    v95 = *(v94 + 16);
    v96 = _swiftEmptyArrayStorage;
    if (v95)
    {
      *&v271 = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v95, 0);
      v96 = v271;
      v97 = v94 + v57;
      do
      {
        sub_1002CDCB4(v97, v35, type metadata accessor for HostedRoutingItem);
        v99 = *v35;
        v98 = v35[1];

        sub_10002187C(v35, type metadata accessor for HostedRoutingItem);
        *&v271 = v96;
        v101 = v96[2];
        v100 = v96[3];
        if (v101 >= v100 >> 1)
        {
          sub_1000089FC((v100 > 1), v101 + 1, 1);
          v96 = v271;
        }

        v96[2] = v101 + 1;
        v102 = &v96[2 * v101];
        v102[4] = v99;
        v102[5] = v98;
        v97 += v16;
        --v95;
      }

      while (v95);
      v17 = v259;
    }

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044EC70;
    *(inited + 32) = v269;
    v119 = inited + 32;
    *(inited + 40) = v270;
    v120 = sub_100034D74(v96, inited);
    swift_setDeallocating();

    sub_1001E6204(v119);
    v121 = v250;
    v122 = v246;
    if ((v120 & 1) == 0)
    {
      v147 = sub_100028D40();
      v148 = v258;
      v149 = v257;
      (*(v121 + 16))(v258, v147, v257);
      v150 = v255;
      sub_1002CDCB4(v17, v255, type metadata accessor for HostedRoutingSourceSession);
      v151 = v262;

      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        *&v271 = swift_slowAlloc();
        *v154 = 136315906;
        v155 = _typeName(_:qualified:)();
        v157 = sub_10002C9C8(v155, v156, &v271);

        *(v154 + 4) = v157;
        *(v154 + 12) = 2082;
        *(v154 + 14) = sub_10002C9C8(v264, v151, &v271);
        *(v154 + 22) = 2082;
        v158 = *v150;
        v159 = v150[1];

        sub_10002187C(v150, type metadata accessor for HostedRoutingSourceSession);
        v160 = sub_10002C9C8(v158, v159, &v271);

        *(v154 + 24) = v160;
        *(v154 + 32) = 2082;
        v17 = v259;
        v161 = Array.description.getter();
        v163 = v162;

        v164 = sub_10002C9C8(v161, v163, &v271);

        *(v154 + 34) = v164;
        _os_log_impl(&_mh_execute_header, v152, v153, "[%s] handleSetActiveItem<%{public}s> - still waiting because session: %{public}s contains multiple items: %{public}s", v154, 0x2Au);
        swift_arrayDestroy();

        (*(v250 + 8))(v258, v257);
      }

      else
      {

        sub_10002187C(v150, type metadata accessor for HostedRoutingSourceSession);
        (*(v121 + 8))(v148, v149);
      }

      goto LABEL_77;
    }

    v123 = *(v17 + 24);
    if (!v123)
    {
      v184 = sub_100028D40();
      v185 = v252;
      v186 = v257;
      (*(v121 + 16))(v252, v184, v257);
      v187 = v245;
      v188 = v245[1];
      v279 = *v245;
      v189 = v245[2];
      v276 = v188;
      v277 = v189;
      v278 = *(v245 + 48);
      v190 = v262;

      sub_10028BC98(&v279, &v271);
      sub_10026D080(&v276, &v271);
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.debug.getter();

      sub_1001E6204(&v279);
      sub_100238E4C(&v276);
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v275 = swift_slowAlloc();
        *v193 = 136315650;
        v194 = _typeName(_:qualified:)();
        v196 = sub_10002C9C8(v194, v195, &v275);

        *(v193 + 4) = v196;
        *(v193 + 12) = 2080;
        *(v193 + 14) = sub_10002C9C8(v264, v190, &v275);
        *(v193 + 22) = 2080;
        v197 = v187[1];
        v271 = *v187;
        v272 = v197;
        v273 = v187[2];
        v274 = *(v187 + 48);
        sub_1002856A4();
        v198 = dispatch thunk of CustomStringConvertible.description.getter();
        v200 = sub_10002C9C8(v198, v199, &v275);

        *(v193 + 24) = v200;
        _os_log_impl(&_mh_execute_header, v191, v192, "[%s] handleSetActiveItem<%s> - session is not endpoint sourced. Continuing to wait to handle interaction: %s", v193, 0x20u);
        swift_arrayDestroy();

        v17 = v259;

        (*(v121 + 8))(v252, v257);
      }

      else
      {

        (*(v121 + 8))(v185, v186);
      }

      goto LABEL_77;
    }

    v124 = *(v17 + 16);
    v125 = sub_100034D68();
    v126 = v245;
    if (v125[2])
    {
      v127 = sub_10000698C(v124, v123);
      v128 = v254;
      if (v129)
      {
        v49 = *(v125[7] + 8 * v127);

        if (*(v49 + 16) == 2)
        {
          if (v239)
          {
            v130 = *(v49 + 56);
            v269 = *(v49 + 48);
            v267 = v130;

            v131 = sub_100298814();
            v51 = v131;
            v16 = v131 & 0xFFFFFFFFFFFFFF8;
            if (v131 >> 62)
            {
              goto LABEL_84;
            }

            for (i = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v133 = 0;
              v270 = _swiftEmptyArrayStorage;
LABEL_43:
              v134 = v133;
              while (1)
              {
                if ((v51 & 0xC000000000000001) != 0)
                {
                  v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v134 >= *(v16 + 16))
                  {
                    goto LABEL_83;
                  }

                  v137 = *(v51 + 8 * v134 + 32);
                }

                v138 = v137;
                v133 = v134 + 1;
                if (__OFADD__(v134, 1))
                {
                  break;
                }

                if ([v137 deviceType] == 1)
                {
                  v139 = [v138 uid];
                  if (v139)
                  {
                    v136 = v139;
LABEL_54:
                    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v142 = v141;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v270 = sub_10002AFD0(0, *(v270 + 2) + 1, 1, v270);
                    }

                    v144 = *(v270 + 2);
                    v143 = *(v270 + 3);
                    if (v144 >= v143 >> 1)
                    {
                      v270 = sub_10002AFD0((v143 > 1), v144 + 1, 1, v270);
                    }

                    v145 = v270;
                    *(v270 + 2) = v144 + 1;
                    v146 = &v145[16 * v144];
                    *(v146 + 4) = v140;
                    *(v146 + 5) = v142;
                    v17 = v259;
                    if (v133 != i)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_86;
                  }
                }

                else
                {
                  v135 = [*(v49 + 88) groupLeader];
                  v136 = [v135 uid];

                  v17 = v259;
                  if (v136)
                  {
                    goto LABEL_54;
                  }
                }

                ++v134;
                if (v133 == i)
                {
                  goto LABEL_86;
                }
              }

LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              ;
            }

            v270 = _swiftEmptyArrayStorage;
LABEL_86:

            v230 = (v268 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
            v231 = *(v268 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
            v232 = *(v268 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
            v233 = *(v268 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
            v234 = v267;
            *v230 = v269;
            v230[1] = v234;
            v230[2] = v270;
            sub_10029A410(v231, v232, v233);
            sub_1002CDC70(v231, v232, v233);
            v122 = v246;
          }

          v235 = v268;
          *&v271 = sub_100297768();
          v236 = v261;

          sub_10027DB8C(0, 0, v260, v236);
          v237 = *(v235 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
          *(v235 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v271;

          v122(0, 0, 0, 0);

          goto LABEL_76;
        }
      }

      else
      {
      }
    }

    else
    {

      v128 = v254;
    }

    v201 = sub_100028D40();
    (*(v121 + 16))(v128, v201, v257);
    v202 = v126[1];
    v279 = *v126;
    v203 = v126[2];
    v276 = v202;
    v277 = v203;
    v278 = *(v126 + 48);
    v204 = v262;

    sub_10028BC98(&v279, &v271);
    sub_10026D080(&v276, &v271);
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.error.getter();

    sub_1001E6204(&v279);
    sub_100238E4C(&v276);
    if (os_log_type_enabled(v205, v206))
    {
      v207 = v126;
      v208 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      *v208 = 136315650;
      v209 = _typeName(_:qualified:)();
      v211 = sub_10002C9C8(v209, v210, &v275);

      *(v208 + 4) = v211;
      *(v208 + 12) = 2082;
      *(v208 + 14) = sub_10002C9C8(v264, v204, &v275);
      *(v208 + 22) = 2082;
      v212 = v207[1];
      v271 = *v207;
      v272 = v212;
      v273 = v207[2];
      v274 = *(v207 + 48);
      sub_1002856A4();
      v213 = dispatch thunk of CustomStringConvertible.description.getter();
      v215 = sub_10002C9C8(v213, v214, &v275);

      *(v208 + 24) = v215;
      v122 = v246;
      _os_log_impl(&_mh_execute_header, v205, v206, "[%s] handleSetActiveItem<%{public}s> - endpoint sourced session has no connected endpoint, Failing interaction: %{public}s", v208, 0x20u);
      swift_arrayDestroy();

      (*(v121 + 8))(v254, v257);
    }

    else
    {

      (*(v121 + 8))(v128, v257);
    }

    v216 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v217 = swift_allocError();
    (*(*(v216 - 8) + 104))(v218, enum case for InternalRoutingError.sessionNotFound(_:), v216);
    v219 = v266;

    v220 = MRDFastSyncGroupSessionState.rawValue.getter(v217, v267, v219);
    v222 = v221;
    v224 = v223;
    v226 = v225;
    v227 = v268;
    *&v271 = sub_100297768();
    v228 = v261;

    sub_10027DB8C(0, 0, v260, v228);
    v229 = *(v227 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
    *(v227 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v271;

    v122(v220, v222, v224, v226);

    sub_10023DCB0(v222, v224, v226);
LABEL_76:

LABEL_77:
    v117 = v17;
    return sub_10002187C(v117, type metadata accessor for HostedRoutingSourceSession);
  }

  v71 = sub_100028D40();
  v72 = v250;
  v73 = v263;
  v74 = v257;
  (*(v250 + 16))(v263, v71, v257);
  v75 = v245;
  v76 = v245[1];
  v279 = *v245;
  v77 = v245[2];
  v276 = v76;
  v277 = v77;
  v278 = *(v245 + 48);
  v78 = v262;

  sub_10028BC98(&v279, &v271);
  sub_10026D080(&v276, &v271);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();

  sub_1001E6204(&v279);
  sub_100238E4C(&v276);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    *v81 = 136315650;
    v82 = _typeName(_:qualified:)();
    v84 = sub_10002C9C8(v82, v83, &v275);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2082;
    *(v81 + 14) = sub_10002C9C8(v264, v78, &v275);
    *(v81 + 22) = 2082;
    v85 = v75[1];
    v271 = *v75;
    v272 = v85;
    v273 = v75[2];
    v274 = *(v75 + 48);
    sub_1002856A4();
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = sub_10002C9C8(v86, v87, &v275);

    *(v81 + 24) = v88;
    _os_log_impl(&_mh_execute_header, v79, v80, "[%s] handleSetActiveItem<%{public}s> - interaction: %{public}s is an illogical action for a picked item on the local session", v81, 0x20u);
    swift_arrayDestroy();

    (*(v72 + 8))(v263, v74);
  }

  else
  {

    (*(v72 + 8))(v73, v74);
  }

  v103 = v246;
  v104 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v105 = swift_allocError();
  (*(*(v104 - 8) + 104))(v106, enum case for InternalRoutingError.invalidAction(_:), v104);
  v107 = MRDFastSyncGroupSessionState.rawValue.getter(v105, 1, 0);
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v268;
  *&v271 = sub_100297768();
  v115 = v261;

  sub_10027DB8C(0, 0, v260, v115);
  v116 = *(v114 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
  *(v114 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v271;

  v103(v107, v109, v111, v113);

  sub_10023DCB0(v109, v111, v113);

LABEL_33:
  v117 = v259;
  return sub_10002187C(v117, type metadata accessor for HostedRoutingSourceSession);
}

uint64_t sub_1002BF760(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v40 = a1;
  v41 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100028D40();
  (*(v9 + 16))(v12, v13, v8);
  v14 = *(a3 + 16);
  v47[0] = *a3;
  v15 = *(a3 + 32);
  v45[0] = v14;
  v45[1] = v15;
  v46 = *(a3 + 48);

  sub_10028BC98(v47, v42);
  sub_10026D080(v45, v42);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  sub_1001E6204(v47);
  sub_100238E4C(v45);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v39 = a4;
    v44 = v20;
    *v19 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &v44);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_10002C9C8(v40, a2, &v44);
    *(v19 + 22) = 2082;
    v24 = *(a3 + 16);
    v42[0] = *a3;
    v42[1] = v24;
    v42[2] = *(a3 + 32);
    v43 = *(a3 + 48);
    sub_1002856A4();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = sub_10002C9C8(v25, v26, &v44);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] handleSetActiveItem<%{public}s> - interaction: %{public}s hit timeout", v19, 0x20u);
    swift_arrayDestroy();
    a4 = v39;

    (*(v9 + 8))(v12, v38);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v29 = swift_allocError();
  (*(*(v28 - 8) + 104))(v30, enum case for InternalRoutingError.timedOut(_:), v28);
  MRDFastSyncGroupSessionState.rawValue.getter(v29, 1, 0);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a4();

  return sub_10023DCB0(v32, v34, v36);
}