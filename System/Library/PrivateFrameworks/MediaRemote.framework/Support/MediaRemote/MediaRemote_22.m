uint64_t sub_1003072F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  v92 = a7;
  v89 = a6;
  v98 = a4;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v97 = *(a1 + 32);
  v88 = v18;
  v19 = *(a1 + 48);
  v101 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v95 = *(v101 - 8);
  v20 = *(v95 + 64);
  __chkstk_darwin(v101);
  v91 = v21;
  v100 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for RoutingSessionConfiguration();
  v93 = *(v94 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v94);
  v90 = v23;
  v99 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for HostedRoutingItem(0);
  v24 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v83 - 8);
  v27 = *(v82 + 64);
  __chkstk_darwin(v83);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v80 = *(v81 - 8);
  v30 = *(v80 + 64);
  __chkstk_darwin(v81);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(a1 + 48);
  v33 = *(a1 + 32);
  v105[0] = *(a1 + 16);
  v105[1] = v33;
  if (v106 - 5 <= 1)
  {
    v34 = v16;
    v35 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
    v107[0] = v34;
    v107[1] = v17;
    v108 = v88;
    v109 = v97;
    v110 = v19;
    v104 = *a1;

    sub_10028BC98(&v104, aBlock);
    sub_10026D080(v105, aBlock);
    sub_1002FFDBC(v107);
  }

  v86 = a12;
  *&v88 = a11;
  v85 = a10;
  v87 = a9;
  type metadata accessor for RoutingDecisionEngine();
  *&v97 = a3;
  v36 = sub_1002E5F94(a1, a3, v98);
  v37 = a2;
  if (v36)
  {
    v38 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v39 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    v40 = v39;
    v41 = *sub_100021264();

    if (v40 == v41)
    {
      v48 = *(v37 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
      v47 = *(v37 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      ObjectType = swift_getObjectType();
      v50 = *(v47 + 48);
      swift_unknownObjectRetain();
      v50(ObjectType, v47);

      swift_unknownObjectRelease();
    }

    else
    {
      v42 = *(v37 + v38);
      v43 = swift_allocObject();
      *(v43 + 16) = sub_100330FFC;
      *(v43 + 24) = v37;
      aBlock[4] = sub_1002253D8;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CE478;
      v79 = _Block_copy(aBlock);
      v78 = v42;

      static DispatchQoS.unspecified.getter();
      *&v103 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v44 = v83;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45 = v79;
      v46 = v78;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);

      (*(v82 + 8))(v29, v44);
      (*(v80 + 8))(v32, v81);
    }
  }

  type metadata accessor for RoutingClientEvent(0);

  v52 = sub_10023AF94(v51);
  (*(*a5 + 144))();
  v53 = &v26[*(v84 + 64)];
  v54 = *v53;
  v55 = *(v53 + 1);
  v56 = *(v53 + 8);
  sub_10001DAE0(*v53, v55, *(v53 + 8));
  sub_10002AC54(v26, type metadata accessor for HostedRoutingItem);
  (*(*v52 + 240))(v54, v55, v56);
  v84 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
  v57 = *(**(*(v37 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

  v82 = v52;
  v57(v52);

  v58 = *sub_100028BB8();
  v59 = v98;
  v60 = v92;
  v83 = (*(v58 + 912))(a1, v98, v92);

  sub_10031C6F0(a1, v37);
  v81 = swift_allocObject();
  swift_weakInit();
  v80 = swift_allocObject();
  swift_weakInit();
  v89 = swift_allocObject();
  swift_weakInit();
  v103 = *a1;
  v61 = v93;
  v62 = v94;
  (*(v93 + 16))(v99, v59, v94);
  v63 = v95;
  (*(v95 + 16))(v100, v60, v101);
  v64 = (*(v61 + 80) + 104) & ~*(v61 + 80);
  v65 = *(v63 + 80);
  v98 = v37;
  v66 = (v90 + v65 + v64) & ~v65;
  v67 = (v91 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v80;
  *(v69 + 16) = v81;
  *(v69 + 24) = v70;
  v71 = *(a1 + 16);
  *(v69 + 32) = *a1;
  *(v69 + 48) = v71;
  *(v69 + 64) = *(a1 + 32);
  *(v69 + 80) = *(a1 + 48);
  v72 = v87;
  *(v69 + 88) = v96;
  *(v69 + 96) = v72;
  (*(v61 + 32))(v69 + v64, v99, v62);
  (*(v63 + 32))(v69 + v66, v100, v101);
  v73 = (v69 + v67);
  v74 = v88;
  *v73 = v85;
  v73[1] = v74;
  *(v69 + v68) = v89;
  *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v86;
  v75 = *(*v83 + 168);
  sub_10026D080(v105, aBlock);
  sub_10028BC98(&v103, aBlock);

  v75(sub_100330ED0, v69);

  v76 = *(*(v98 + v84) + 96);

  sub_10023C084(v82, v76, v97);
}

uint64_t sub_100307DE8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v246 = a8;
  v242 = a5;
  v14 = a4;
  v17 = *a4;
  v239 = *(a4 + 8);
  v240 = v17;
  v18 = *(a4 + 16);
  v262 = (a4 + 16);
  v19 = *(a4 + 32);
  v237 = *(a4 + 24);
  v238 = v18;
  v235 = *(a4 + 40);
  v236 = v19;
  v234 = *(a4 + 48);
  v20 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v232 = *(v20 - 8);
  v21 = *(v232 + 64);
  __chkstk_darwin(v20 - 8);
  v233 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v255 = *(v23 - 8);
  v256 = v23;
  v24 = *(v255 + 64);
  __chkstk_darwin(v23);
  v253 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for DispatchQoS();
  v252 = *(v254 - 8);
  v26 = *(v252 + 64);
  __chkstk_darwin(v254);
  v28 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RoutingControl.RoutingControlType();
  v229 = *(v29 - 8);
  v230 = v29;
  v30 = *(v229 + 64);
  __chkstk_darwin(v29);
  v228 = &v219 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v251 = *(v245 - 8);
  v32 = *(v251 + 64);
  __chkstk_darwin(v245);
  v227 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1001BC5A8(&qword_100526708, &qword_1004584D8);
  v34 = *(*(v243 - 8) + 64);
  __chkstk_darwin(v243);
  v244 = &v219 - v35;
  v36 = sub_1001BC5A8(&qword_100524248, &unk_100457C10);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v241 = &v219 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v249 = &v219 - v41;
  __chkstk_darwin(v40);
  v250 = &v219 - v42;
  v43 = type metadata accessor for Logger();
  v260 = *(v43 - 8);
  v261 = v43;
  v44 = *(v260 + 64);
  v45 = __chkstk_darwin(v43);
  v231 = &v219 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v248 = &v219 - v48;
  __chkstk_darwin(v47);
  v50 = &v219 - v49;
  v51 = a1[1];
  v288 = *a1;
  v289 = v51;
  v290 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v53 = v288;
  v258 = v289;
  v259 = *(&v288 + 1);
  v257 = BYTE8(v289);
  v263 = a3;
  v264 = result;
  v247 = v14;
  v226 = v28;
  if (v288)
  {
    v221 = a12;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v224 = a6;
    v225 = v53;
    v223 = a7;
    if (Strong)
    {
      v220 = v50;
      v55 = *(Strong + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
      v56 = *(v55 + 32);
      v57 = *(v55 + 40);
      v59 = *(v55 + 48);
      v58 = *(v55 + 56);
      v61 = *(v55 + 64);
      v60 = *(v55 + 72);
      v62 = *(v55 + 80);
      v287 = *v14;
      v63 = v262[1];
      v285[0] = *v262;
      v285[1] = v63;
      v286 = *(v262 + 32);
      if (v57)
      {
        v240 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
        v222 = Strong;
        *&v275 = v56;
        *(&v275 + 1) = v57;
        *&v276 = v59;
        *(&v276 + 1) = v58;
        *&v277 = v61;
        *(&v277 + 1) = v60;
        v278 = v62;
        v64 = v14[1];
        v271 = *v14;
        v272 = v64;
        v273 = v14[2];
        v274 = *(v14 + 48);
        sub_100330C4C(&v288, &v267);
        sub_1003311E4(v56, v57, v59, v58, v61, v60, v62);
        sub_100330C4C(&v288, &v267);
        sub_1003311E4(v56, v57, v59, v58, v61, v60, v62);
        sub_100276B34();
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();

        sub_1002485A4(v276, *(&v276 + 1), v277, *(&v277 + 1), v278);
        sub_10028AE60(v56, v57, v59, v58, v61, v60, v62);
        if (v65)
        {
          v66 = sub_100028D40();
          v68 = v260;
          v67 = v261;
          v69 = v220;
          (*(v260 + 16))(v220, v66, v261);
          sub_10028BC98(&v287, &v275);
          sub_10026D080(v285, &v275);
          v70 = v224;

          v71 = v222;

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.default.getter();

          sub_1001E6204(&v287);
          sub_100238E4C(v285);

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            *&v271 = v239;
            *v74 = 136315906;
            v75 = _typeName(_:qualified:)();
            v77 = sub_10002C9C8(v75, v76, &v271);

            *(v74 + 4) = v77;
            *(v74 + 12) = 2082;
            *(v74 + 14) = sub_10002C9C8(v242, v70, &v271);
            *(v74 + 22) = 2082;
            v78 = v247[1];
            v275 = *v247;
            v276 = v78;
            v277 = v247[2];
            v278 = *(v247 + 48);
            sub_1002856A4();
            v79 = dispatch thunk of CustomStringConvertible.description.getter();
            v81 = sub_10002C9C8(v79, v80, &v271);

            *(v74 + 24) = v81;
            *(v74 + 32) = 2082;

            v82 = sub_100036B00();
            v84 = v83;

            v85 = sub_10002C9C8(v82, v84, &v271);
            v71 = v222;

            *(v74 + 34) = v85;
            _os_log_impl(&_mh_execute_header, v72, v73, "[%s] interactWithItem<%{public}s> - clear failed source hiding interaction: %{public}s for client: %{public}s", v74, 0x2Au);
            swift_arrayDestroy();

            (*(v260 + 8))(v69, v261);
          }

          else
          {

            (*(v68 + 8))(v69, v67);
          }

          v86 = *&v240[v71];
          v87 = *(v86 + 32);
          v88 = *(v86 + 40);
          v89 = *(v86 + 48);
          v90 = *(v86 + 56);
          v91 = *(v86 + 64);
          v92 = *(v86 + 72);
          *(v86 + 32) = 0u;
          *(v86 + 48) = 0u;
          *(v86 + 64) = 0u;
          v93 = *(v86 + 80);
          *(v86 + 80) = 0;

          v94 = v90;
          v95 = v222;
          sub_10028AE60(v87, v88, v89, v94, v91, v92, v93);

          v96 = *sub_100030F88();
          v14 = v247;
          v97 = (*(v96 + 264))(v247);
          v99 = v98;

          if (v99)
          {
            v100 = *&v240[v95];
            swift_beginAccess();

            sub_1001C0CA0(v97, v99);
            swift_endAccess();
          }

          sub_100028D64(v95);
        }

        else
        {

          v14 = v247;
        }
      }

      else
      {
        sub_100330C4C(&v288, &v275);
        sub_100330C4C(&v288, &v275);
        sub_10028BC98(&v287, &v275);
        sub_10026D080(v285, &v275);

        sub_10028AE60(v56, 0, v59, v58, v61, v60, v62);
        sub_10028AE60(v240, v239, v238, v237, v236, v235, v234);
      }

      v53 = v225;
    }

    else
    {
      sub_100330C4C(&v288, &v275);
      swift_errorRetain();
      sub_10023DC40(v259, v258, v257);
    }

    if (*(v14 + 48) != 6)
    {

      sub_10023DCB0(v259, v258, v257);
      goto LABEL_42;
    }

    v102 = *(*v262 + 16);
    v101 = *(*v262 + 24);
    v104 = *(*v262 + 32);
    v103 = *(*v262 + 40);
    v105 = *(*v262 + 48);

    v262 = v105;

    v106 = sub_100037234();
    if ((v102 != *v106 || v101 != *(v106 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v145 = v225;

      sub_10023DCB0(v259, v258, v257);

      v53 = v145;
      goto LABEL_42;
    }

    v240 = v106;
    v293[0] = v104;
    v293[1] = v103;
    v293[2] = v102;
    v293[3] = v101;
    v294 = 2;
    sub_100272B38(v293, &v267);
    v107 = sub_100028D40();
    v109 = v260;
    v108 = v261;
    v110 = *(v260 + 16);
    v111 = v248;
    v238 = v107;
    v239 = v260 + 16;
    v237 = v110;
    (v110)(v248);
    v284 = v267;
    v282[0] = v268;
    v282[1] = v269;
    v283 = v270;
    v112 = v224;

    sub_10028BC98(&v284, &v275);
    sub_10026D080(v282, &v275);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();

    sub_1001E6204(&v284);
    sub_100238E4C(v282);
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *&v271 = swift_slowAlloc();
      *v115 = 136315650;
      v116 = _typeName(_:qualified:)();
      v118 = sub_10002C9C8(v116, v117, &v271);

      *(v115 + 4) = v118;
      *(v115 + 12) = 2082;
      *(v115 + 14) = sub_10002C9C8(v242, v112, &v271);
      *(v115 + 22) = 2082;
      v275 = v267;
      v276 = v268;
      v277 = v269;
      v278 = v270;
      sub_1002856A4();
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = sub_10002C9C8(v119, v120, &v271);

      *(v115 + 24) = v121;
      _os_log_impl(&_mh_execute_header, v113, v114, "[%s] interactWithItem<%{public}s> - replacing with interaction: %{public}s", v115, 0x20u);
      swift_arrayDestroy();

      v122 = *(v109 + 8);
      v123 = v248;
      v124 = v261;
    }

    else
    {

      v122 = *(v109 + 8);
      v123 = v111;
      v124 = v108;
    }

    v248 = v122;
    (v122)(v123, v124);
    v125 = v244;
    swift_beginAccess();
    v126 = swift_weakLoadStrong();
    v127 = v245;
    if (v126)
    {
      sub_10031C6F0(&v267, v126);
    }

    v128 = sub_100028BB8();
    v129 = (*(*v128 + 912))(&v267, v223, v246);

    v130 = swift_allocObject();
    swift_weakInit();
    v131 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v132 = swift_allocObject();
    *(v132 + 16) = v130;
    *(v132 + 24) = v131;
    v133 = v268;
    *(v132 + 32) = v267;
    *(v132 + 48) = v133;
    *(v132 + 64) = v269;
    *(v132 + 80) = v270;
    v134 = *(*v129 + 168);
    sub_10028BC98(&v284, &v275);
    sub_10026D080(v282, &v275);
    v134(sub_10033192C, v132);

    v136 = v250;
    (*(*v262 + 184))(v135);
    v137 = v251;
    v138 = v249;
    (*(v251 + 104))(v249, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v127);
    (*(v137 + 56))(v138, 0, 1, v127);
    v139 = *(v243 + 48);
    sub_10001D9AC(v136, v125, &qword_100524248, &unk_100457C10);
    sub_10001D9AC(v138, v125 + v139, &qword_100524248, &unk_100457C10);
    v140 = *(v137 + 48);
    if (v140(v125, 1, v127) == 1)
    {
      sub_1000038A4(v138, &qword_100524248, &unk_100457C10);
      sub_1000038A4(v136, &qword_100524248, &unk_100457C10);
      v141 = v140(v125 + v139, 1, v127);
      v53 = v225;
      if (v141 == 1)
      {
        sub_1000038A4(v125, &qword_100524248, &unk_100457C10);
LABEL_35:
        v150 = sub_1001BC5A8(&qword_100524290, &qword_100455140);
        v151 = swift_allocBox();
        v153 = v152;
        v154 = *(v150 + 48);
        (*(v229 + 104))(v228, enum case for RoutingControl.RoutingControlType.play(_:), v230);
        v155 = *v240;
        v156 = *(v240 + 1);

        RoutingControl.init(type:sessionIdentifier:)();
        type metadata accessor for RoutingInteraction.Action.ControlContext();
        *(v153 + v154) = sub_1001E789C(0, 0);
        v291[0] = v151;
        memset(&v291[1], 0, 24);
        v292 = 7;
        v157 = sub_100272B38(v291, &v271);
        v158 = v231;
        v159 = v261;
        v237(v231, v238, v261, v157);
        v281 = v271;
        v279[0] = v272;
        v279[1] = v273;
        v280 = v274;
        v160 = v224;

        sub_10028BC98(&v281, &v275);
        sub_10026D080(v279, &v275);
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.default.getter();

        sub_1001E6204(&v281);
        sub_100238E4C(v279);
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v266[0] = swift_slowAlloc();
          *v163 = 136315650;
          v164 = _typeName(_:qualified:)();
          v166 = sub_10002C9C8(v164, v165, v266);

          *(v163 + 4) = v166;
          *(v163 + 12) = 2082;
          *(v163 + 14) = sub_10002C9C8(v242, v160, v266);
          *(v163 + 22) = 2082;
          v275 = v271;
          v276 = v272;
          v277 = v273;
          v278 = v274;
          sub_1002856A4();
          v167 = dispatch thunk of CustomStringConvertible.description.getter();
          v169 = sub_10002C9C8(v167, v168, v266);

          *(v163 + 24) = v169;
          _os_log_impl(&_mh_execute_header, v161, v162, "[%s] interactWithItem<%{public}s> - appending resume playback interaction: %{public}s", v163, 0x20u);
          swift_arrayDestroy();
          v53 = v225;

          v170 = v261;
          v171 = v158;
        }

        else
        {

          v171 = v158;
          v170 = v159;
        }

        (v248)(v171, v170);
        v172 = v246;
        swift_beginAccess();
        v173 = swift_weakLoadStrong();
        v174 = v264;
        if (v173)
        {
          sub_10031C6F0(&v271, v173);
        }

        v175 = *(**(v174 + 88) + 912);

        v176 = v175(&v271, v223, v172);

        v177 = swift_allocObject();
        swift_weakInit();

        v178 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v179 = swift_allocObject();
        *(v179 + 16) = v177;
        *(v179 + 24) = v178;
        v180 = v272;
        *(v179 + 32) = v271;
        *(v179 + 48) = v180;
        *(v179 + 64) = v273;
        *(v179 + 80) = v274;
        v181 = *(*v176 + 168);
        sub_10028BC98(&v281, &v275);
        sub_10026D080(v279, &v275);
        v181(sub_10033192C, v179);

        sub_10023DCB0(v259, v258, v257);
        sub_1001E6204(&v284);
        sub_100238E4C(v282);

        sub_1001E6204(&v281);
        v144 = v279;
        goto LABEL_41;
      }
    }

    else
    {
      v142 = v241;
      sub_10001D9AC(v125, v241, &qword_100524248, &unk_100457C10);
      v143 = v140(v125 + v139, 1, v127);
      v53 = v225;
      if (v143 != 1)
      {
        v146 = v251;
        v147 = v227;
        (*(v251 + 32))(v227, v125 + v139, v127);
        sub_100004930(&qword_100526710, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState);
        v148 = dispatch thunk of static Equatable.== infix(_:_:)();
        v149 = *(v146 + 8);
        v149(v147, v127);
        sub_1000038A4(v249, &qword_100524248, &unk_100457C10);
        sub_1000038A4(v250, &qword_100524248, &unk_100457C10);
        v149(v241, v127);
        sub_1000038A4(v125, &qword_100524248, &unk_100457C10);
        if (v148)
        {
          goto LABEL_35;
        }

LABEL_32:

        sub_10023DCB0(v259, v258, v257);
        sub_1001E6204(&v284);
        v144 = v282;
LABEL_41:
        sub_100238E4C(v144);
        goto LABEL_42;
      }

      sub_1000038A4(v249, &qword_100524248, &unk_100457C10);
      sub_1000038A4(v250, &qword_100524248, &unk_100457C10);
      (*(v251 + 8))(v142, v127);
    }

    sub_1000038A4(v125, &qword_100526708, &qword_1004584D8);
    goto LABEL_32;
  }

LABEL_42:
  swift_beginAccess();
  v182 = swift_weakLoadStrong();
  if (v182)
  {
    v183 = v182;
    v184 = swift_allocObject();
    *(v184 + 16) = v183;
    *(v184 + 24) = a9;
    *(v184 + 32) = a10;
    v185 = v289;
    *(v184 + 40) = v288;
    *(v184 + 56) = v185;
    *(v184 + 72) = v290;
    v186 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v187 = *(v183 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
    sub_100330C4C(&v288, &v275);

    v188 = v187;
    v189 = *sub_100021264();

    if (v188 == v189)
    {
      v262 = a9;
      v198 = *(v183 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
      v197 = *(v183 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      if (v53)
      {
        sub_1002D3DE8();
        v199 = swift_allocError();
        v200 = v258;
        v201 = v259;
        *v202 = v53;
        *(v202 + 8) = v201;
        *(v202 + 16) = v200;
        *(v202 + 24) = v257;
      }

      else
      {
        v199 = 0;
      }

      ObjectType = swift_getObjectType();
      v204 = *(v197 + 56);
      swift_unknownObjectRetain();
      v204(v262, a10, v199, ObjectType, v197);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100286E38(&v288);
      v190 = *(v183 + v186);
      v191 = swift_allocObject();
      *(v191 + 16) = sub_10033107C;
      *(v191 + 24) = v184;
      *&v277 = sub_1002253D8;
      *(&v277 + 1) = v191;
      *&v275 = _NSConcreteStackBlock;
      *(&v275 + 1) = 1107296256;
      *&v276 = sub_100003D98;
      *(&v276 + 1) = &unk_1004CE4F0;
      v192 = _Block_copy(&v275);
      v262 = v190;

      v193 = v226;
      static DispatchQoS.unspecified.getter();
      v266[0] = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v194 = v253;
      v195 = v256;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v196 = v262;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v192);

      (*(v255 + 8))(v194, v195);
      (*(v252 + 8))(v193, v254);
    }

    v205 = sub_100300FBC(v266);
    v206 = sub_10030D88C(v265, v183);
    v208 = v247;
    if (*v207)
    {
      sub_10032970C(v247, &v275);
      (v206)(v265, 0);
      result = (v205)(v266, 0);
      if (*(&v275 + 1))
      {
        sub_1000038A4(&v275, &qword_1005266C8, &unk_100458470);
        v209 = *(v208 + 48);
        if (v209 <= 6 && ((1 << v209) & 0x47) != 0)
        {
          sub_10031C9DC(v183);
        }

        goto LABEL_56;
      }
    }

    else
    {
      (v206)(v265, 0);
      result = (v205)(v266, 0);
    }

    __break(1u);
    return result;
  }

  sub_100286E38(&v288);
LABEL_56:
  swift_beginAccess();
  v210 = swift_weakLoadStrong();
  if (v210)
  {
    v211 = v210;
    (*(*v210 + 272))(&v288);
    swift_beginAccess();
    v212 = swift_weakLoadStrong();
    if (v212)
    {
      v213 = v212;
      v214 = sub_100030790();
      if (v214[2])
      {
        v215 = sub_100031588(v213);
        if (v216)
        {
          v217 = v233;
          sub_10002ADF8(v214[7] + *(v232 + 72) * v215, v233, type metadata accessor for HostedRoutingSessionSnapshot);

          v218 = *(*(v213 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

          sub_10023C08C(v211, v218, v217);

          return sub_10002AC54(v217, type metadata accessor for HostedRoutingSessionSnapshot);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100309A3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a7;
  v47 = a6;
  v50 = a5;
  v54 = a2;
  v55 = a10;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = RoutingDialog.identifier.getter();
  v20 = v19;
  v21 = sub_100028D40();
  v49 = v15;
  v22 = *(v15 + 16);
  v51 = v14;
  v22(v18, v21, v14);
  v23 = *(a4 + 16);
  v61[0] = *a4;
  v24 = *(a4 + 32);
  v59[0] = v23;
  v59[1] = v24;
  v60 = *(a4 + 48);

  sub_10028BC98(v61, v56);
  sub_10026D080(v59, v56);
  v48 = v18;
  v25 = v20;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  sub_1001E6204(v61);
  sub_100238E4C(v59);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    HIDWORD(v44) = v27;
    v29 = v28;
    v45 = swift_slowAlloc();
    v58 = v45;
    *v29 = 136315906;
    v30 = _typeName(_:qualified:)();
    v46 = v25;
    v32 = sub_10002C9C8(v30, v31, &v58);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_10002C9C8(v54, a3, &v58);
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_10002C9C8(v53, v46, &v58);
    *(v29 + 32) = 2082;
    v33 = *(a4 + 16);
    v56[0] = *a4;
    v56[1] = v33;
    v56[2] = *(a4 + 32);
    v57 = *(a4 + 48);
    sub_1002856A4();
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_10002C9C8(v34, v35, &v58);
    v25 = v46;

    *(v29 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v26, BYTE4(v44), "[%s] interactWithItem<%{public}s> - present dialog: %{public}s for interaction: %{public}s", v29, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v49 + 8))(v48, v51);
  v37 = swift_allocObject();
  v38 = v47;
  swift_weakInit();
  v39 = swift_allocObject();
  v40 = v53;
  v39[2] = v54;
  v39[3] = a3;
  v39[4] = v40;
  v39[5] = v25;
  v41 = v52;
  v39[6] = v37;
  v39[7] = v41;
  v39[8] = a8;
  v39[9] = sub_10032BBC4;
  v42 = v55;
  v39[10] = a9;
  v39[11] = v42;

  sub_10031BFE0(a1, v38, sub_100330CFC, v39);
}

uint64_t sub_100309E58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v160 = a8;
  v161 = a6;
  v154 = a3;
  v155 = a5;
  v152 = a1;
  v153 = a12;
  v158 = a7;
  v159 = a9;
  v14 = type metadata accessor for RoutingDialog.Action();
  v151 = *(v14 - 8);
  v15 = *(v151 + 64);
  __chkstk_darwin(v14);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v150 - 8);
  v18 = *(v149 + 64);
  __chkstk_darwin(v150);
  v146 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchQoS();
  v147 = *(v148 - 8);
  v20 = *(v147 + 64);
  __chkstk_darwin(v148);
  v145 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v139 - v29;
  __chkstk_darwin(v28);
  v32 = &v139 - v31;
  v33 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v36 = __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  v40 = &v139 - v37;
  if (a2)
  {
    swift_errorRetain();
    v41 = sub_100028D40();
    (*(v23 + 16))(v32, v41, v22);
    swift_errorRetain();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = v22;
    v45 = a2;
    if (os_log_type_enabled(v42, v43))
    {
      v46 = swift_slowAlloc();
      v156 = v23;
      v47 = a4;
      v48 = v46;
      v49 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v48 = 136315906;
      v50 = _typeName(_:qualified:)();
      v157 = v44;
      v52 = sub_10002C9C8(v50, v51, &aBlock);

      *(v48 + 4) = v52;
      v45 = a2;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_10002C9C8(v154, v47, &aBlock);
      *(v48 + 22) = 2082;
      *(v48 + 24) = sub_10002C9C8(v155, v161, &aBlock);
      *(v48 + 32) = 2114;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 34) = v53;
      *v49 = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%s] interactWithItem<%{public}s> - dialog: %{public}s returned error: %{public}@ -> drop interaction", v48, 0x2Au);
      sub_1000038A4(v49, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
      v54 = v159;

      (*(v156 + 8))(v32, v157);
    }

    else
    {

      (*(v23 + 8))(v32, v22);
      v54 = v159;
    }

    v55 = v160;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v62 = Strong;
    v161 = v45;
    v63 = swift_allocObject();
    v63[2] = v62;
    v63[3] = v55;
    v63[4] = v54;
    v64 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v65 = *(v62 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    v66 = v65;
    v67 = *sub_100021264();

    if (v66 == v67)
    {
      v110 = *(v62 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
      v111 = *(v62 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      ObjectType = swift_getObjectType();
      v113 = type metadata accessor for InternalRoutingError();
      sub_100004930(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v114 = swift_allocError();
      (*(*(v113 - 8) + 104))(v115, enum case for InternalRoutingError.cancelled(_:), v113);
      v116 = *(v111 + 56);
      swift_unknownObjectRetain();
      v116(v55, v54, v114, ObjectType, v111);

      swift_unknownObjectRelease();
    }

    v68 = *(v62 + v64);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1003318A8;
    *(v69 + 24) = v63;
    v167 = sub_1002253D8;
    v168 = v69;
    aBlock = _NSConcreteStackBlock;
    v164 = 1107296256;
    v165 = sub_100003D98;
    v166 = &unk_1004CE400;
    v70 = _Block_copy(&aBlock);
    v71 = v68;

    v72 = v145;
    static DispatchQoS.unspecified.getter();
    v162 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v73 = v146;
    v74 = v150;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v70);

    (*(v149 + 8))(v73, v74);
    (*(v147 + 8))(v72, v148);
  }

  v142 = v39;
  v143 = v30;
  v56 = v38;
  v140 = v17;
  v144 = v27;
  v57 = v161;
  v156 = v23;
  v157 = v22;
  v58 = v152;
  sub_10001D9AC(v152, &v139 - v37, &qword_100525F40, &qword_100458140);
  v59 = v151;
  v141 = *(v151 + 48);
  if (v141(v40, 1, v14) == 1)
  {
    sub_1000038A4(v40, &qword_100525F40, &qword_100458140);
    v60 = v144;
  }

  else
  {
    v76 = (*(v59 + 88))(v40, v14);
    v77 = enum case for RoutingDialog.Action.confirm(_:);
    (*(v59 + 8))(v40, v14);
    v78 = v76 == v77;
    v60 = v144;
    if (v78)
    {
      v79 = a10;
      v80 = sub_100028D40();
      v81 = v156;
      v82 = v157;
      v83 = v143;
      (*(v156 + 16))(v143, v80, v157);
      v84 = a4;

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v160 = a10;
        v88 = v87;
        aBlock = swift_slowAlloc();
        *v88 = 136315650;
        v89 = _typeName(_:qualified:)();
        v91 = sub_10002C9C8(v89, v90, &aBlock);

        *(v88 + 4) = v91;
        *(v88 + 12) = 2082;
        *(v88 + 14) = sub_10002C9C8(v154, v84, &aBlock);
        *(v88 + 22) = 2082;
        *(v88 + 24) = sub_10002C9C8(v155, v57, &aBlock);
        _os_log_impl(&_mh_execute_header, v85, v86, "[%s] interactWithItem<%{public}s> - dialog: %{public}s confirmed -> handle interaction", v88, 0x20u);
        swift_arrayDestroy();

        v79 = v160;

        v92 = (*(v81 + 8))(v143, v157);
      }

      else
      {

        v92 = (*(v81 + 8))(v83, v82);
      }

      return v79(v92);
    }
  }

  v143 = v14;
  v93 = sub_100028D40();
  v95 = v156;
  v94 = v157;
  (*(v156 + 16))(v60, v93, v157);
  sub_10001D9AC(v58, v56, &qword_100525F40, &qword_100458140);

  v96 = v57;

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    aBlock = v152;
    *v99 = 136315906;
    v100 = _typeName(_:qualified:)();
    v102 = sub_10002C9C8(v100, v101, &aBlock);

    *(v99 + 4) = v102;
    *(v99 + 12) = 2082;
    *(v99 + 14) = sub_10002C9C8(v154, a4, &aBlock);
    *(v99 + 22) = 2082;
    *(v99 + 24) = sub_10002C9C8(v155, v96, &aBlock);
    *(v99 + 32) = 2082;
    v103 = v142;
    sub_10001D9AC(v56, v142, &qword_100525F40, &qword_100458140);
    v104 = v143;
    result = (v141)(v103, 1, v143);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v105 = v140;
    (*(v59 + 32))(v140, v103, v104);
    sub_100004930(&qword_1005266E8, &type metadata accessor for RoutingDialog.Action);
    v106 = dispatch thunk of CustomStringConvertible.description.getter();
    v108 = v107;
    (*(v59 + 8))(v105, v104);
    sub_1000038A4(v56, &qword_100525F40, &qword_100458140);
    v109 = sub_10002C9C8(v106, v108, &aBlock);

    *(v99 + 34) = v109;
    _os_log_impl(&_mh_execute_header, v97, v98, "[%s] interactWithItem<%{public}s> - dialog: %{public}s returned action: %{public}s -> drop interaction", v99, 0x2Au);
    swift_arrayDestroy();

    (*(v156 + 8))(v144, v157);
  }

  else
  {

    sub_1000038A4(v56, &qword_100525F40, &qword_100458140);
    (*(v95 + 8))(v60, v94);
  }

  v117 = v159;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v118 = v160;
  if (result)
  {
    v119 = result;
    v120 = swift_allocObject();
    v120[2] = v119;
    v120[3] = v118;
    v120[4] = v117;
    v121 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v122 = *(v119 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    v123 = v122;
    v124 = *sub_100021264();

    if (v123 != v124)
    {
      v125 = *(v119 + v121);
      v126 = swift_allocObject();
      *(v126 + 16) = sub_100330D38;
      *(v126 + 24) = v120;
      v167 = sub_1002253D8;
      v168 = v126;
      aBlock = _NSConcreteStackBlock;
      v164 = 1107296256;
      v165 = sub_100003D98;
      v166 = &unk_1004CE388;
      v127 = _Block_copy(&aBlock);
      v128 = v125;

      v129 = v145;
      static DispatchQoS.unspecified.getter();
      v162 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v130 = v146;
      v131 = v150;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v127);

      (*(v149 + 8))(v130, v131);
      (*(v147 + 8))(v129, v148);
    }

    v132 = *(v119 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
    v133 = *(v119 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
    v134 = swift_getObjectType();
    v135 = type metadata accessor for InternalRoutingError();
    sub_100004930(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v136 = swift_allocError();
    (*(*(v135 - 8) + 104))(v137, enum case for InternalRoutingError.cancelled(_:), v135);
    v138 = *(v133 + 56);
    swift_unknownObjectRetain();
    v138(v118, v117, v136, v134, v133);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030B04C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  LODWORD(v153) = a5;
  v151 = a4;
  v152 = a1;
  v143 = *v5;
  v134 = type metadata accessor for InternalRoutingError();
  v128 = *(v134 - 8);
  v8 = *(v128 + 64);
  __chkstk_darwin(v134);
  v133 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v148 = *(v10 - 8);
  v11 = *(v148 + 64);
  __chkstk_darwin(v10);
  v13 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DispatchQoS();
  v146 = *(v147 - 8);
  v14 = *(v146 + 64);
  __chkstk_darwin(v147);
  v16 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v131 = *(v132 - 8);
  v17 = *(v131 + 64);
  __chkstk_darwin(v132);
  v130 = (v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = type metadata accessor for Logger();
  v145 = *(v150 - 8);
  v19 = *(v145 + 64);
  v20 = __chkstk_darwin(v150);
  v137 = v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v127[1] = v127 - v23;
  v24 = __chkstk_darwin(v22);
  v149 = v127 - v25;
  v26 = __chkstk_darwin(v24);
  v140 = v127 - v27;
  __chkstk_darwin(v26);
  v129 = v127 - v28;
  v29 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v135 = *(v29 - 8);
  v30 = *(v135 + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v136 = v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v139 = v127 - v33;
  v141 = type metadata accessor for RoutingSessionConfiguration();
  v142 = *(v141 - 8);
  v34 = *(v142 + 64);
  v35 = __chkstk_darwin(v141);
  v138 = v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v144 = v127 - v37;
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = (v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *sub_100021264();
  if ((v153 & 1) == 0)
  {
LABEL_15:
    v47 = swift_allocObject();
    v48 = v152;
    v47[2] = v5;
    v47[3] = v48;
    v47[4] = a2;
    v47[5] = a3;
    v47[6] = v151;
    *&v159 = sub_10032BDB0;
    *(&v159 + 1) = v47;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v158 = sub_100003D98;
    *(&v158 + 1) = &unk_1004CD948;
    v49 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v50 = v43;

    static DispatchQoS.unspecified.getter();
    *&v154[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v49);

    (*(v148 + 8))(v13, v10);
    (*(v146 + 8))(v16, v147);
  }

  v153 = v5;
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v44 = v43;
  v5 = _dispatchPreconditionTest(_:)();
  (*(v39 + 8))(v42, v38);
  if (v5)
  {
    v45 = sub_10002107C();
    v5 = v45;
    if (!(v45 >> 62))
    {
      v43 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
        goto LABEL_5;
      }

LABEL_29:

      v114 = sub_100028D40();
      v115 = v145;
      v116 = v149;
      v117 = v150;
      (*(v145 + 16))(v149, v114, v150);

      swift_unknownObjectRetain();
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *&v154[0] = swift_slowAlloc();
        *v120 = 136315650;
        v121 = _typeName(_:qualified:)();
        v123 = sub_10002C9C8(v121, v122, v154);

        *(v120 + 4) = v123;
        *(v120 + 12) = 2082;
        *(v120 + 14) = sub_10002C9C8(v152, a2, v154);
        *(v120 + 22) = 2082;
        *&aBlock = a3;
        *(&aBlock + 1) = v151;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v124 = String.init<A>(describing:)();
        v126 = sub_10002C9C8(v124, v125, v154);

        *(v120 + 24) = v126;
        _os_log_impl(&_mh_execute_header, v118, v119, "[%s] interactWithSession - session: %{public}s, No internal client found matching client: %{public}s", v120, 0x20u);
        swift_arrayDestroy();

        return (*(v115 + 8))(v149, v117);
      }

      else
      {

        return (*(v115 + 8))(v116, v117);
      }
    }
  }

  else
  {
LABEL_27:
    __break(1u);
  }

  v43 = _CocoaArrayWrapper.endIndex.getter();
  if (!v43)
  {
    goto LABEL_29;
  }

LABEL_5:
  v13 = 0;
  v16 = (v5 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v46 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v10 = *(v5 + 8 * v13 + 32);

      v46 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a3)
    {
      break;
    }

    ++v13;
    if (v46 == v43)
    {
      goto LABEL_29;
    }
  }

  v52 = v142;
  v53 = *(v142 + 16);
  v54 = v144;
  v55 = v141;
  v53(v144, v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v141);
  v56 = sub_100030790();
  if (v56[2] && (v57 = sub_100031588(v10), (v58 & 1) != 0))
  {
    v59 = v136;
    sub_10002ADF8(v56[7] + *(v135 + 72) * v57, v136, type metadata accessor for HostedRoutingSessionSnapshot);

    v60 = v59;
    v61 = v139;
    sub_10002AF68(v60, v139, type metadata accessor for HostedRoutingSessionSnapshot);
    type metadata accessor for RoutingDecisionEngine();
    v62 = sub_1002DBC2C(v152, a2, v61);
    v81 = *(*v62 + 120);
    v149 = v62;
    v81(&aBlock);
    v82 = sub_100028D40();
    v83 = v145;
    v84 = v129;
    v85 = v150;
    (*(v145 + 16))(v129, v82, v150);
    v86 = aBlock;
    v161[0] = v158;
    v161[1] = v159;
    v162 = v160;

    sub_10026D080(v161, v154);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    v151 = *(&v86 + 1);

    sub_100238E4C(v161);
    if (os_log_type_enabled(v87, v88))
    {
      v90 = swift_slowAlloc();
      v147 = v86;
      v91 = v90;
      v156 = swift_slowAlloc();
      *v91 = 136315906;
      v92 = _typeName(_:qualified:)();
      LODWORD(v148) = v88;
      v94 = v83;
      v95 = sub_10002C9C8(v92, v93, &v156);

      *(v91 + 4) = v95;
      *(v91 + 12) = 2082;
      v96 = v151;

      v97 = sub_10002C9C8(v147, v96, &v156);

      *(v91 + 14) = v97;
      *(v91 + 22) = 2082;
      *(v91 + 24) = sub_10002C9C8(v152, a2, &v156);
      *(v91 + 32) = 2082;
      v154[0] = aBlock;
      v154[1] = v158;
      v154[2] = v159;
      v155 = v160;
      sub_1002856A4();
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = sub_10002C9C8(v98, v99, &v156);

      *(v91 + 34) = v100;
      _os_log_impl(&_mh_execute_header, v87, v148, "[%s] interactWithSession<%{public}s> - session: %{public}s produced interaction: %{public}s", v91, 0x2Au);
      swift_arrayDestroy();

      v101 = v144;

      (*(v94 + 8))(v84, v150);
    }

    else
    {

      (*(v83 + 8))(v84, v85);
      v101 = v144;
    }

    v102 = v130;
    sub_100266350(v139, v130);
    type metadata accessor for RoutingClientEvent(0);

    v104 = sub_10023AF94(v103);
    v105 = *(**(*(v10 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

    v105(v104);

    sub_10031C6F0(&aBlock, v10);
    v106 = *sub_100028BB8();
    v107 = (*(v106 + 912))(&aBlock, v101, v102);

    v108 = swift_allocObject();
    swift_weakInit();
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    swift_weakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v108;
    *(v111 + 24) = v109;
    v112 = v158;
    *(v111 + 32) = aBlock;
    *(v111 + 48) = v112;
    *(v111 + 64) = v159;
    *(v111 + 80) = v160;
    *(v111 + 88) = v110;
    v113 = *(*v107 + 168);

    sub_10026D080(v161, v154);
    v113(sub_10032BE0C, v111);

    sub_100238E4C(v161);
    (*(v131 + 8))(v102, v132);
    sub_10002AC54(v139, type metadata accessor for HostedRoutingSessionSnapshot);
    return (*(v142 + 8))(v144, v141);
  }

  else
  {

    v63 = sub_100028D40();
    v64 = v145;
    v65 = v140;
    (*(v145 + 16))(v140, v63, v150);
    v66 = v138;
    v53(v138, v54, v55);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      LODWORD(v151) = v68;
      v70 = v69;
      v153 = swift_slowAlloc();
      *&aBlock = v153;
      *v70 = 136315650;
      v71 = _typeName(_:qualified:)();
      v73 = v52;
      v74 = sub_10002C9C8(v71, v72, &aBlock);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2082;
      *(v70 + 14) = sub_10002C9C8(v152, a2, &aBlock);
      *(v70 + 22) = 2082;
      sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v78 = *(v73 + 8);
      v78(v66, v55);
      v79 = sub_10002C9C8(v75, v77, &aBlock);

      *(v70 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v67, v151, "[%s] interactWithSession - session: %{public}s, No snapshot for configuration: %{public}s", v70, 0x20u);
      swift_arrayDestroy();

      (*(v64 + 8))(v140, v150);
      return (v78)(v144, v55);
    }

    else
    {

      v80 = *(v52 + 8);
      v80(v66, v55);
      (*(v64 + 8))(v65, v150);
      return (v80)(v54, v55);
    }
  }
}

uint64_t sub_10030C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30[-1] - v12;
  v14 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v14;
  v35 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = v7;
      v19 = sub_100300FBC(v31);
      v20 = sub_10030D88C(v30, v17);
      if (*v21)
      {
        sub_10032970C(a4, v32);
        (v20)(v30, 0);
        result = (v19)(v31, 0);
        if (v33)
        {
          sub_1000038A4(v32, &qword_1005266C8, &unk_100458470);
          v22 = *(a4 + 48);
          if (v22 <= 6 && ((1 << v22) & 0x47) != 0)
          {
            sub_10031C9DC(v17);
          }

          swift_beginAccess();
          v23 = swift_weakLoadStrong();
          if (v23)
          {
            v24 = v23;
            (*(*v23 + 272))(v34);
            v25 = sub_100030790();
            if (v25[2])
            {
              v26 = sub_100031588(v17);
              if (v27)
              {
                sub_10002ADF8(v25[7] + *(v18 + 72) * v26, v11, type metadata accessor for HostedRoutingSessionSnapshot);

                sub_10002AF68(v11, v13, type metadata accessor for HostedRoutingSessionSnapshot);
                v28 = *(*(v17 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

                sub_10023C08C(v24, v28, v13);

                return sub_10002AC54(v13, type metadata accessor for HostedRoutingSessionSnapshot);
              }
            }
          }
        }
      }

      else
      {
        (v20)(v30, 0);
        result = (v19)(v31, 0);
      }

      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_10030CC70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  LODWORD(v96) = a6;
  v92 = a3;
  v93 = a5;
  v94 = a1;
  v95 = a2;
  v82 = *v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  __chkstk_darwin(v8);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v86 = *(v88 - 8);
  v11 = *(v86 + 64);
  __chkstk_darwin(v88);
  v85 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutingDialog.Action();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Logger();
  v83 = *(v84 - 8);
  v17 = *(v83 + 64);
  v18 = __chkstk_darwin(v84);
  v91 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = &v80 - v20;
  v21 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v80 = &v80 - v23;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *sub_100021264();
  if ((v96 & 1) == 0)
  {
LABEL_15:
    (*(v14 + 16))(v16, v92, v13);
    v34 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v35 = swift_allocObject();
    v36 = v94;
    v37 = v95;
    *(v35 + 2) = v6;
    *(v35 + 3) = v36;
    *(v35 + 4) = v37;
    (*(v14 + 32))(&v35[v34], v16, v13);
    v38 = &v35[(v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8];
    v39 = v93;
    *v38 = a4;
    *(v38 + 1) = v39;
    v102 = sub_10032BE1C;
    v103 = v35;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100003D98;
    v101 = &unk_1004CDA10;
    v40 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v41 = v29;

    v42 = v85;
    static DispatchQoS.unspecified.getter();
    v97[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v43 = v87;
    v44 = v90;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v89 + 8))(v43, v44);
    (*(v86 + 8))(v42, v88);
  }

  v90 = v14;
  v96 = v13;
  *v28 = v29;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v28, v24);
  if (v31)
  {
    v32 = sub_10002107C();
    v29 = v32;
    if (!(v32 >> 62))
    {
      v15 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_5;
      }

LABEL_26:

      v65 = sub_100028D40();
      v66 = v83;
      v67 = v91;
      v68 = v84;
      (*(v83 + 16))(v91, v65, v84);
      v69 = v95;

      swift_unknownObjectRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = v66;
        v73 = swift_slowAlloc();
        v97[0] = swift_slowAlloc();
        *v73 = 136315650;
        v74 = _typeName(_:qualified:)();
        v76 = sub_10002C9C8(v74, v75, v97);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2082;
        *(v73 + 14) = sub_10002C9C8(v94, v69, v97);
        *(v73 + 22) = 2082;
        aBlock = a4;
        v99 = v93;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v77 = String.init<A>(describing:)();
        v79 = sub_10002C9C8(v77, v78, v97);

        *(v73 + 24) = v79;
        _os_log_impl(&_mh_execute_header, v70, v71, "[%s] interactWithDialog - dialog: %{public}s, No internal client found matching client: %{public}s", v73, 0x20u);
        swift_arrayDestroy();

        return (*(v72 + 8))(v91, v68);
      }

      else
      {

        return (*(v66 + 8))(v67, v68);
      }
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_5:
  v33 = 0;
  v16 = &unk_100534000;
  while (1)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v14 = *(v29 + 8 * v33 + 32);

      v13 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_14;
      }
    }

    if (*(v14 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a4)
    {
      break;
    }

    ++v33;
    if (v13 == v15)
    {
      goto LABEL_26;
    }
  }

  v46 = sub_100300E8C(&aBlock);
  v47 = sub_10030D810(v97, v14);
  if (*v48)
  {
    v50 = v94;
    v49 = v95;
    v51 = sub_10032A620(v94, v95);
    (v47)(v97, 0);
    (v46)(&aBlock, 0);
    v52 = v84;
    if (v51)
    {
      v53 = v90;
      v54 = v80;
      v55 = v96;
      (*(v90 + 16))(v80, v92, v96);
      (*(v53 + 56))(v54, 0, 1, v55);
      aBlock = 0;
      v51(v54, &aBlock);
      sub_1001C7C2C(v51);

      return sub_1000038A4(v54, &qword_100525F40, &qword_100458140);
    }
  }

  else
  {
    (v47)(v97, 0);
    (v46)(&aBlock, 0);
    v52 = v84;
    v50 = v94;
    v49 = v95;
  }

  v56 = sub_100028D40();
  v57 = v83;
  v58 = v81;
  (*(v83 + 16))(v81, v56, v52);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v61 = 136315650;
    v62 = _typeName(_:qualified:)();
    v64 = sub_10002C9C8(v62, v63, &aBlock);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2082;
    *(v61 + 14) = sub_10002C9C8(v50, v49, &aBlock);
    *(v61 + 22) = 2082;
    *(v61 + 24) = sub_10002C9C8(v50, v49, &aBlock);
    _os_log_impl(&_mh_execute_header, v59, v60, "[%s] interactWithDialog - dialog: %{public}s, No pending interaction found for identifier: %{public}s", v61, 0x20u);
    swift_arrayDestroy();

    return (*(v83 + 8))(v81, v52);
  }

  else
  {

    return (*(v57 + 8))(v58, v52);
  }
}

uint64_t (*sub_10030D810(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10032CCD8(v4, a2);
  return sub_10030D888;
}

uint64_t (*sub_10030D88C(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10032CD80(v4, a2);
  return sub_100331920;
}

uint64_t (*sub_10030D904(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10032CE24(v4, a2);
  return sub_100331920;
}

void sub_10030D97C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10030D9C8(void (*a1)(void, void), char *a2, uint64_t a3, int a4)
{
  LODWORD(v293) = a4;
  v287 = a3;
  v289 = a2;
  v291 = a1;
  v275 = *v4;
  v255 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v254 = *(v255 - 8);
  v5 = *(v254 + 64);
  __chkstk_darwin(v255);
  v253 = &v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for DispatchWorkItemFlags();
  v286 = *(v283 - 8);
  v7 = *(v286 + 64);
  __chkstk_darwin(v283);
  v282 = &v244 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for DispatchQoS();
  v284 = *(v285 - 8);
  v9 = *(v284 + 64);
  __chkstk_darwin(v285);
  v281 = &v244 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_1001BC5A8(&qword_100524270, &unk_100458150);
  v11 = *(*(v249 - 8) + 64);
  __chkstk_darwin(v249);
  v250 = &v244 - v12;
  v262 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  v265 = *(v262 - 8);
  v13 = *(v265 + 64);
  v14 = __chkstk_darwin(v262);
  v259 = &v244 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v251 = &v244 - v17;
  v252 = v18;
  __chkstk_darwin(v16);
  v261 = &v244 - v19;
  v20 = type metadata accessor for RoutingControl();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v23 = __chkstk_darwin(v20);
  v268 = &v244 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v244 - v25;
  v27 = __chkstk_darwin(v24);
  v263 = &v244 - v28;
  v29 = __chkstk_darwin(v27);
  v292 = &v244 - v30;
  v31 = __chkstk_darwin(v29);
  v272 = &v244 - v32;
  v33 = __chkstk_darwin(v31);
  v280 = &v244 - v34;
  v35 = __chkstk_darwin(v33);
  v260 = &v244 - v36;
  v37 = __chkstk_darwin(v35);
  v256 = &v244 - v38;
  v39 = __chkstk_darwin(v37);
  v266 = &v244 - v40;
  __chkstk_darwin(v39);
  v257 = &v244 - v41;
  v288 = type metadata accessor for Logger();
  v279 = *(v288 - 1);
  v42 = *(v279 + 64);
  v43 = __chkstk_darwin(v288);
  v264 = &v244 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v278 = &v244 - v46;
  v47 = __chkstk_darwin(v45);
  v274 = &v244 - v48;
  __chkstk_darwin(v47);
  v258 = &v244 - v49;
  v50 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = __chkstk_darwin(v50 - 8);
  v267 = &v244 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v270 = (&v244 - v55);
  v56 = type metadata accessor for RoutingSessionConfiguration();
  v277 = *(v56 - 8);
  v57 = *(v277 + 64);
  v58 = __chkstk_darwin(v56);
  v271 = &v244 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v276 = &v244 - v60;
  v61 = type metadata accessor for DispatchPredicate();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  v65 = (&v244 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_100021264();
  v67 = *v66;
  if ((v293 & 1) == 0)
  {
LABEL_17:
    v76 = v280;
    (*(v21 + 2))(v280, v291, v20);
    v77 = (v21[80] + 24) & ~v21[80];
    v78 = swift_allocObject();
    *(v78 + 16) = v290;
    (*(v21 + 4))(v78 + v77, v76, v20);
    v79 = (v78 + ((v22 + v77 + 7) & 0xFFFFFFFFFFFFFFF8));
    v80 = v287;
    *v79 = v289;
    v79[1] = v80;
    *&v301 = sub_10032BEE0;
    *(&v301 + 1) = v78;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v300 = sub_100003D98;
    *(&v300 + 1) = &unk_1004CDA60;
    v81 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v82 = v67;
    v83 = v281;
    static DispatchQoS.unspecified.getter();
    *&v294 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v84 = v282;
    v85 = v283;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v81);

    (*(v286 + 8))(v84, v85);
    (*(v284 + 8))(v83, v285);
  }

  v245 = v51;
  v68 = v21;
  v244 = v26;
  v21 = v289;
  v246 = v66;
  v247 = v22;
  *v65 = v67;
  (*(v62 + 104))(v65, enum case for DispatchPredicate.onQueue(_:), v61);
  v69 = v67;
  v70 = _dispatchPreconditionTest(_:)();
  (*(v62 + 8))(v65, v61);
  if (v70)
  {
    v273 = v68;
    v269 = v20;
    v71 = sub_10002107C();
    v22 = v71;
    v248 = v56;
    if (!(v71 >> 62))
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_42:
    __break(1u);
  }

  v72 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v73 = v292;
  if (v72)
  {
    v74 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v293 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v74 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_42;
        }

        v293 = *(v22 + 8 * v74 + 32);

        v20 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_16;
        }
      }

      v67 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient;
      if (*(v293 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == v21)
      {
        break;
      }

      ++v74;
      v75 = v20 == v72;
      v73 = v292;
      if (v75)
      {
        goto LABEL_19;
      }
    }

    v108 = v293;

    v109 = *(v277 + 16);
    v110 = v276;
    v111 = v248;
    v109(v276, v108 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v248);
    v112 = sub_100030790();
    if (v112[2] && (v113 = sub_100031588(v108), (v114 & 1) != 0))
    {
      v115 = v267;
      sub_10002ADF8(v112[7] + *(v245 + 72) * v113, v267, type metadata accessor for HostedRoutingSessionSnapshot);

      v116 = v115;
      v117 = v270;
      sub_10002AF68(v116, v270, type metadata accessor for HostedRoutingSessionSnapshot);
      type metadata accessor for RoutingDecisionEngine();
      v118 = v291;
      v119 = sub_1002DBC44(v291, v117, v110);
      v120 = v273;
      v121 = v279;
      v289 = &v67[v108];
      v146 = v119;
      (*(*v119 + 120))(&aBlock);
      type metadata accessor for RoutingClientEvent(0);

      v287 = v146;
      v148 = sub_10023AF94(v147);
      v149 = *(**(*(v108 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

      v292 = v148;
      v149(v148);

      v150 = sub_100028D40();
      v151 = v258;
      v152 = v288;
      (*(v121 + 16))(v258, v150, v288);
      v153 = *(&aBlock + 1);
      v271 = aBlock;
      v303[0] = v300;
      v303[1] = v301;
      v304 = v302;
      v154 = *(v120 + 2);
      v155 = v257;
      v156 = v118;
      v157 = v120;
      v158 = v269;
      v274 = v120 + 16;
      v272 = v154;
      (v154)(v257, v156, v269);

      sub_10026D080(v303, &v294);
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.default.getter();

      sub_100238E4C(v303);
      v161 = os_log_type_enabled(v159, v160);
      v278 = v153;
      if (v161)
      {
        v162 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v298 = v268;
        *v162 = 136315906;
        v163 = _typeName(_:qualified:)();
        v165 = v155;
        v166 = sub_10002C9C8(v163, v164, &v298);

        *(v162 + 4) = v166;
        *(v162 + 12) = 2082;

        v167 = sub_10002C9C8(v271, v153, &v298);

        *(v162 + 14) = v167;
        *(v162 + 22) = 2082;
        sub_100004930(&qword_100524278, &type metadata accessor for RoutingControl);
        v168 = dispatch thunk of CustomStringConvertible.description.getter();
        v170 = v169;
        v171 = *(v157 + 1);
        v171(v165, v269);
        v172 = sub_10002C9C8(v168, v170, &v298);

        *(v162 + 24) = v172;
        *(v162 + 32) = 2082;
        v294 = aBlock;
        v295 = v300;
        v296 = v301;
        v297 = v302;
        sub_1002856A4();
        v173 = dispatch thunk of CustomStringConvertible.description.getter();
        v175 = sub_10002C9C8(v173, v174, &v298);

        *(v162 + 34) = v175;
        _os_log_impl(&_mh_execute_header, v159, v160, "[%s] interactWithControl<%{public}s> - control: %{public}s produced interaction: %{public}s", v162, 0x2Au);
        swift_arrayDestroy();
        v158 = v269;

        (*(v121 + 8))(v151, v288);
      }

      else
      {

        v171 = *(v157 + 1);
        v171(v155, v158);
        (*(v121 + 8))(v151, v152);
      }

      v176 = v276;
      v177 = v247;
      v178 = v265;
      v179 = v266;
      v180 = v259;
      v181 = v280;
      if (v304 == 11)
      {
        v291 = v171;
        v182 = swift_projectBox();
        v183 = v250;
        sub_10001D9AC(v182, v250, &qword_100524270, &unk_100458150);
        v184 = *(v249 + 48);
        v185 = *(v273 + 4);
        v290 = (v273 + 32);
        v288 = v185;
        (v185)(v179, v183, v158);
        v186 = *(v178 + 32);
        v187 = v261;
        v188 = v262;
        v186(v261, v183 + v184, v262);
        v189 = *(v178 + 16);
        v190 = v251;
        v189(v251, v187, v188);
        v189(v180, v190, v188);
        v191 = (*(v178 + 80) + 24) & ~*(v178 + 80);
        v192 = swift_allocObject();
        v193 = v293;
        *(v192 + 16) = v293;
        v186((v192 + v191), v190, v188);
        v280 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
        v194 = *(v193 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
        v195 = v180;
        if (v194 == *v246)
        {
          v217 = *v289;
          v218 = *(v289 + 1);
          ObjectType = swift_getObjectType();
          v220 = *(v218 + 40);

          swift_unknownObjectRetain();
          v220(v195, ObjectType, v218);

          swift_unknownObjectRelease();
          v221 = v195;
          v204 = *(v178 + 8);
          v204(v221, v188);
          v202 = v283;
          v200 = v282;
          v201 = v281;
        }

        else
        {
          v196 = swift_allocObject();
          *(v196 + 16) = sub_10032C148;
          *(v196 + 24) = v192;
          *&v296 = sub_1002253D8;
          *(&v296 + 1) = v196;
          *&v294 = _NSConcreteStackBlock;
          *(&v294 + 1) = 1107296256;
          *&v295 = sub_100003D98;
          *(&v295 + 1) = &unk_1004CDB78;
          v197 = _Block_copy(&v294);

          v198 = v194;

          v199 = v281;
          static DispatchQoS.unspecified.getter();
          v298 = _swiftEmptyArrayStorage;
          sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
          v200 = v282;
          v201 = v199;
          v202 = v283;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v197);

          (*(v286 + 8))(v200, v202);
          (*(v284 + 8))(v201, v285);
          v203 = v195;
          v204 = *(v265 + 8);
          v204(v203, v262);
        }

        v222 = v272;
        v223 = v256;
        v224 = v269;
        (v272)(v256, v266, v269);
        (v222)(v260, v223, v224);
        v225 = (v273[80] + 24) & ~v273[80];
        v226 = swift_allocObject();
        *(v226 + 16) = v193;
        (v288)(v226 + v225, v223, v224);
        v227 = *&v280[v193];
        if (v227 != *v246)
        {
          v228 = swift_allocObject();
          *(v228 + 16) = sub_10032C214;
          *(v228 + 24) = v226;
          *&v296 = sub_1002253D8;
          *(&v296 + 1) = v228;
          *&v294 = _NSConcreteStackBlock;
          *(&v294 + 1) = 1107296256;
          *&v295 = sub_100003D98;
          *(&v295 + 1) = &unk_1004CDBF0;
          v289 = _Block_copy(&v294);

          v229 = v227;
          v290 = v204;
          v230 = v202;
          v288 = v229;

          static DispatchQoS.unspecified.getter();
          v298 = _swiftEmptyArrayStorage;
          sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
          v231 = v286;
          v232 = v284;
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          v293 = v193;
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v233 = v289;
          v234 = v288;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v233);

          sub_100238E4C(v303);

          (*(v231 + 8))(v200, v230);
          (*(v232 + 8))(v201, v285);
          v235 = v269;
          v236 = v291;
          v291(v260, v269);
          v290(v261, v262);
          v236(v266, v235);
          sub_10002AC54(v270, type metadata accessor for HostedRoutingSessionSnapshot);
          (*(v277 + 8))(v276, v248);
        }

        v237 = *v289;
        v238 = *(v289 + 1);
        v239 = swift_getObjectType();
        v240 = *(v238 + 64);

        swift_unknownObjectRetain();
        v241 = v260;
        v240(v260, 0, v239, v238);

        swift_unknownObjectRelease();
        sub_100238E4C(v303);

        v242 = v269;
        v243 = v291;
        v291(v241, v269);
        v204(v261, v262);
        v243(v266, v242);
      }

      else
      {
        v205 = sub_100028BB8();
        v206 = v253;
        sub_10029BE08(v253);
        v207 = (*(*v205 + 912))(&aBlock, v176, v206);

        (*(v254 + 8))(v206, v255);
        v208 = swift_allocObject();
        swift_weakInit();
        (v272)(v181, v291, v158);
        v209 = v273;
        v210 = (v273[80] + 24) & ~v273[80];
        v211 = v177 + v210 + 7;
        v212 = v181;
        v213 = v211 & 0xFFFFFFFFFFFFFFF8;
        v214 = ((v211 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v215 = swift_allocObject();
        *(v215 + 16) = v208;
        (*(v209 + 4))(v215 + v210, v212, v158);
        *(v215 + v213) = v292;
        *(v215 + v214) = v290;
        v216 = *(*v207 + 168);

        v216(sub_10032C09C, v215);

        sub_100238E4C(v303);
      }

      sub_10002AC54(v270, type metadata accessor for HostedRoutingSessionSnapshot);
      return (*(v277 + 8))(v276, v248);
    }

    else
    {

      v122 = sub_100028D40();
      v123 = v279;
      (*(v279 + 16))(v274, v122, v288);
      v124 = v273;
      v125 = v272;
      v126 = v269;
      (*(v273 + 2))(v272, v291, v269);
      v127 = v271;
      v109(v271, v110, v111);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        *&aBlock = v292;
        *v130 = 136315650;
        v131 = _typeName(_:qualified:)();
        v133 = sub_10002C9C8(v131, v132, &aBlock);

        *(v130 + 4) = v133;
        *(v130 + 12) = 2082;
        sub_100004930(&qword_100524278, &type metadata accessor for RoutingControl);
        v134 = dispatch thunk of CustomStringConvertible.description.getter();
        v136 = v135;
        (*(v124 + 1))(v125, v126);
        v137 = sub_10002C9C8(v134, v136, &aBlock);

        *(v130 + 14) = v137;
        *(v130 + 22) = 2082;
        sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration);
        v138 = v248;
        v139 = dispatch thunk of CustomStringConvertible.description.getter();
        v141 = v140;
        v142 = *(v277 + 8);
        v142(v127, v138);
        v143 = sub_10002C9C8(v139, v141, &aBlock);

        *(v130 + 24) = v143;
        _os_log_impl(&_mh_execute_header, v128, v129, "[%s] interactWithControl - control: %{public}s, No snapshot for configuration: %{public}s", v130, 0x20u);
        swift_arrayDestroy();

        (*(v123 + 8))(v274, v288);
        return (v142)(v276, v138);
      }

      else
      {

        v144 = *(v277 + 8);
        v145 = v248;
        v144(v127, v248);
        (*(v124 + 1))(v125, v126);
        (*(v123 + 8))(v274, v288);
        return (v144)(v110, v145);
      }
    }
  }

  else
  {
LABEL_19:

    v87 = sub_100028D40();
    v88 = v279;
    v89 = v278;
    v90 = v288;
    (*(v279 + 16))(v278, v87, v288);
    v91 = v273;
    v92 = v269;
    (*(v273 + 2))(v73, v291, v269);
    v93 = v21;
    swift_unknownObjectRetain();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = v73;
      v97 = swift_slowAlloc();
      v293 = swift_slowAlloc();
      *&v294 = v293;
      *v97 = 136315650;
      v98 = _typeName(_:qualified:)();
      v100 = sub_10002C9C8(v98, v99, &v294);

      *(v97 + 4) = v100;
      *(v97 + 12) = 2082;
      sub_100004930(&qword_100524278, &type metadata accessor for RoutingControl);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v102;
      (*(v91 + 1))(v96, v92);
      v104 = sub_10002C9C8(v101, v103, &v294);

      *(v97 + 14) = v104;
      *(v97 + 22) = 2082;
      *&aBlock = v93;
      *(&aBlock + 1) = v287;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v105 = String.init<A>(describing:)();
      v107 = sub_10002C9C8(v105, v106, &v294);

      *(v97 + 24) = v107;
      _os_log_impl(&_mh_execute_header, v94, v95, "[%s] interactWithControl - control: %{public}s, No internal client found matching client: %{public}s", v97, 0x20u);
      swift_arrayDestroy();

      return (*(v88 + 8))(v278, v288);
    }

    else
    {

      (*(v91 + 1))(v73, v92);
      return (*(v88 + 8))(v89, v90);
    }
  }
}

uint64_t sub_10031031C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  __chkstk_darwin(v9);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v73 = *(v74 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v74);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v67 = &v63 - v18;
  v19 = type metadata accessor for RoutingControl();
  v77 = *(v19 - 8);
  v20 = *(v77 + 64);
  v21 = __chkstk_darwin(v19);
  v22 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v25 = *(a1 + 16);
  *v79 = *a1;
  *&v79[16] = v25;
  v80 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v70 = a4;
    v28 = v77;
    v29 = *(v77 + 16);
    v29(v24, a3, v19);
    v29(v22, v24, v19);
    v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    (*(v28 + 32))(v31 + v30, v24, v19);
    v32 = v31 + ((v20 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
    v33 = *&v79[16];
    *v32 = *v79;
    *(v32 + 16) = v33;
    *(v32 + 32) = v80;
    v34 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
    v35 = *(v27 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

    sub_100330C4C(v79, aBlock);
    v36 = v35;
    v37 = *sub_100021264();

    v69 = a5;
    v68 = v22;
    if (v36 == v37)
    {
      v45 = v77;
      v46 = *v79;
      v48 = *(v27 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
      v47 = *(v27 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
      v63 = v19;
      if (*v79)
      {
        v81 = *&v79[8];
        v82 = v79[24];
        sub_1002D3DE8();
        v49 = swift_allocError();
        *v50 = v46;
        v51 = v81;
        *(v50 + 24) = v82;
        *(v50 + 8) = v51;
      }

      else
      {
        v49 = 0;
      }

      ObjectType = swift_getObjectType();
      v53 = v47;
      v54 = *(v47 + 64);
      sub_100330C4C(v79, aBlock);
      swift_unknownObjectRetain();
      v55 = v68;
      v54(v68, v49, ObjectType, v53);

      swift_unknownObjectRelease();
      (*(v45 + 8))(v55, v63);
    }

    else
    {
      v38 = *(v27 + v34);
      v39 = swift_allocObject();
      *(v39 + 16) = sub_100330AE4;
      *(v39 + 24) = v31;
      aBlock[4] = sub_1002253D8;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004CE2E8;
      v40 = _Block_copy(aBlock);
      v64 = v38;

      v41 = v71;
      static DispatchQoS.unspecified.getter();
      *&v81 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v42 = v72;
      v43 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v64;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (*(v75 + 8))(v42, v43);
      (*(v73 + 8))(v41, v74);
      (*(v77 + 8))(v68, v19);
    }

    v56 = v70;
    (*(*v70 + 272))(v79);
    v57 = sub_100030790();
    if (v57[2] && (v58 = sub_100031588(v27), (v59 & 1) != 0))
    {
      v60 = v66;
      sub_10002ADF8(v57[7] + *(v65 + 72) * v58, v66, type metadata accessor for HostedRoutingSessionSnapshot);

      v61 = v67;
      sub_10002AF68(v60, v67, type metadata accessor for HostedRoutingSessionSnapshot);
      v62 = *(*(v27 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

      sub_10023C08C(v56, v62, v61);

      return sub_10002AC54(v61, type metadata accessor for HostedRoutingSessionSnapshot);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100310B08(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v160) = a4;
  v158 = a3;
  v161 = a1;
  v144 = *v4;
  v155 = type metadata accessor for DispatchWorkItemFlags();
  v154 = *(v155 - 8);
  v7 = *(v154 + 64);
  __chkstk_darwin(v155);
  v152 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DispatchQoS();
  v151 = *(v153 - 8);
  v9 = *(v151 + 64);
  __chkstk_darwin(v153);
  v150 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v139 = *(v140 - 8);
  v11 = *(v139 + 64);
  __chkstk_darwin(v140);
  v138 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContinuousRoutingControl();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v149 = &v136 - v19;
  v20 = __chkstk_darwin(v18);
  v142 = &v136 - v21;
  v22 = __chkstk_darwin(v20);
  v137 = &v136 - v23;
  __chkstk_darwin(v22);
  v141 = &v136 - v24;
  v159 = type metadata accessor for Logger();
  v157 = *(v159 - 8);
  v25 = *(v157 + 64);
  v26 = __chkstk_darwin(v159);
  v156 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v143 = &v136 - v28;
  v148 = type metadata accessor for RoutingSessionConfiguration();
  v147 = *(v148 - 8);
  v29 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = (&v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *sub_100021264();
  if ((v160 & 1) == 0)
  {
LABEL_15:
    (*(v14 + 16))(v17, v161, v13);
    v41 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v42 = (v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v5;
    (*(v14 + 32))(v43 + v41, v17, v13);
    v44 = (v43 + v42);
    v45 = v158;
    *v44 = a2;
    v44[1] = v45;
    *&v167 = sub_1003318A0;
    *(&v167 + 1) = v43;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v166 = sub_100003D98;
    *(&v166 + 1) = &unk_1004CDC40;
    v46 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v47 = v36;

    v48 = v150;
    static DispatchQoS.unspecified.getter();
    *&v162[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v49 = v152;
    v50 = v155;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);

    (*(v154 + 8))(v49, v50);
    (*(v151 + 8))(v48, v153);
  }

  v160 = v14;
  v145 = v13;
  v155 = v5;
  *v35 = v36;
  (*(v32 + 104))(v35, enum case for DispatchPredicate.onQueue(_:), v31);
  v37 = v36;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v35, v31);
  if ((v15 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (v39)
    {
      goto LABEL_5;
    }

LABEL_38:

    v116 = sub_100028D40();
    v117 = v157;
    v118 = v156;
    v119 = v159;
    (*(v157 + 16))(v156, v116, v159);
    v120 = v160;
    v121 = v149;
    v122 = v145;
    (*(v160 + 16))(v149, v161, v145);
    swift_unknownObjectRetain();
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *&v162[0] = v161;
      *v125 = 136315650;
      v126 = _typeName(_:qualified:)();
      v128 = sub_10002C9C8(v126, v127, v162);

      *(v125 + 4) = v128;
      *(v125 + 12) = 2082;
      sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v131 = v130;
      (*(v120 + 8))(v121, v122);
      v132 = sub_10002C9C8(v129, v131, v162);

      *(v125 + 14) = v132;
      *(v125 + 22) = 2082;
      *&aBlock = a2;
      *(&aBlock + 1) = v158;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v133 = String.init<A>(describing:)();
      v135 = sub_10002C9C8(v133, v134, v162);

      *(v125 + 24) = v135;
      _os_log_impl(&_mh_execute_header, v123, v124, "[%s] beginInteractionWithControl - control: %{public}s, no internal client found matching client: %{public}s", v125, 0x20u);
      swift_arrayDestroy();

      return (*(v157 + 8))(v156, v159);
    }

    else
    {

      (*(v120 + 8))(v121, v122);
      return (*(v117 + 8))(v118, v119);
    }
  }

  v38 = sub_10002107C();
  v15 = v38;
  if (v38 >> 62)
  {
    goto LABEL_37;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_38;
  }

LABEL_5:
  v14 = 0;
  v36 = (v15 & 0xFFFFFFFFFFFFFF8);
  v13 = &unk_100534000;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v40 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }

      v5 = *(v15 + 8 * v14 + 32);

      v40 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_14;
      }
    }

    if (*(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a2)
    {
      break;
    }

    ++v14;
    if (v40 == v39)
    {
      goto LABEL_38;
    }
  }

  (*(v147 + 16))(v146, v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v148);
  v52 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
  v53 = swift_allocBox();
  v55 = v54;
  v56 = *(v52 + 48);
  v57 = v160 + 16;
  v58 = *(v160 + 16);
  v59 = v161;
  v60 = v145;
  (v58)(v54, v161, v145);
  type metadata accessor for RoutingInteraction.Action.ControlContext();
  *(v55 + v56) = sub_1001E789C(0, 0);
  v171[0] = v53;
  memset(&v171[1], 0, 24);
  v172 = 8;
  sub_100272B38(v171, &aBlock);
  v61 = sub_100028D40();
  v62 = v157;
  v63 = v143;
  v64 = v159;
  (*(v157 + 16))(v143, v61, v159);
  v65 = *(&aBlock + 1);
  v153 = aBlock;
  v169[0] = v166;
  v169[1] = v167;
  v170 = v168;
  v66 = v141;
  v158 = v57;
  v156 = v58;
  (v58)(v141, v59, v60);

  sub_10026D080(v169, v162);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  sub_100238E4C(v169);
  v69 = os_log_type_enabled(v67, v68);
  v154 = v65;
  if (v69)
  {
    v70 = swift_slowAlloc();
    LODWORD(v151) = v68;
    v71 = v70;
    v152 = swift_slowAlloc();
    v164 = v152;
    *v71 = 136315906;
    v72 = _typeName(_:qualified:)();
    v74 = sub_10002C9C8(v72, v73, &v164);

    *(v71 + 4) = v74;
    *(v71 + 12) = 2082;

    v75 = sub_10002C9C8(v153, v65, &v164);

    *(v71 + 14) = v75;
    *(v71 + 22) = 2082;
    sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
    v76 = v145;
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    v80 = *(v160 + 8);
    v80(v66, v76);
    v81 = sub_10002C9C8(v77, v79, &v164);

    *(v71 + 24) = v81;
    *(v71 + 32) = 2082;
    v162[0] = aBlock;
    v162[1] = v166;
    v162[2] = v167;
    v163 = v168;
    sub_1002856A4();
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = sub_10002C9C8(v82, v83, &v164);

    *(v71 + 34) = v84;
    _os_log_impl(&_mh_execute_header, v67, v151, "[%s] beginInteractionWithControl<%{public}s> - control: %{public}s produced interaction: %{public}s", v71, 0x2Au);
    swift_arrayDestroy();

    (*(v62 + 8))(v143, v159);
  }

  else
  {

    v80 = *(v160 + 8);
    v80(v66, v145);
    (*(v62 + 8))(v63, v64);
  }

  v85 = v155;
  v86 = sub_100300EE4();
  v87 = v142;
  if (!v86[2])
  {

    v90 = v145;
    goto LABEL_23;
  }

  sub_100031588(v5);
  v89 = v88;

  v90 = v145;
  if ((v89 & 1) == 0)
  {
LABEL_23:
    v91 = *(v85 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v162[0] = v91;
    sub_10032C2E4(&_swiftEmptySetSingleton, v5, isUniquelyReferenced_nonNull_native, &qword_100526700, &unk_1004584C8);

    v93 = *(v85 + 48);
    *(v85 + 48) = *&v162[0];
  }

  (v156)(v87, v161, v90);
  v94 = *(v85 + 48);

  v95 = swift_isUniquelyReferenced_nonNull_native();
  *&v162[0] = v94;
  v97 = sub_100031588(v5);
  v98 = *(v94 + 16);
  v99 = (v96 & 1) == 0;
  v100 = v98 + v99;
  if (__OFADD__(v98, v99))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v66) = v96;
    if (*(v94 + 24) < v100)
    {
      sub_10032ADC0(v100, v95, &qword_100526700, &unk_1004584C8);
      v101 = sub_100031588(v5);
      if ((v66 & 1) != (v102 & 1))
      {
LABEL_46:
        type metadata accessor for RoutingSessionServer.Client(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v97 = v101;
      if ((v66 & 1) == 0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      goto LABEL_31;
    }

    if (v95)
    {
      if ((v96 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_31;
    }
  }

  sub_10032C9B8(&qword_100526700, &unk_1004584C8);
  if ((v66 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_31:
  v164 = *(*(*&v162[0] + 56) + 8 * v97);
  v103 = v137;
  sub_1002CC07C(v137, v87);
  v80(v103, v90);
  v104 = *&v162[0];
  if (v164)
  {
    *(*(*&v162[0] + 56) + 8 * v97) = v164;
  }

  else
  {
    v105 = *(*(*&v162[0] + 48) + 8 * v97);

    sub_10032B714(v97, v104);
  }

  v106 = *(v85 + 48);
  *(v85 + 48) = v104;

  sub_10031C6F0(&aBlock, v5);
  v107 = sub_100028BB8();
  v108 = v138;
  sub_10029BE08(v138);
  v109 = v146;
  v110 = (*(*v107 + 912))(&aBlock, v146, v108);

  (*(v139 + 8))(v108, v140);
  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  swift_weakInit();
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  *(v113 + 24) = v112;
  v114 = v166;
  *(v113 + 32) = aBlock;
  *(v113 + 48) = v114;
  *(v113 + 64) = v167;
  *(v113 + 80) = v168;
  v115 = *(*v110 + 168);

  sub_10026D080(v169, v162);
  v115(sub_10033192C, v113);

  sub_100238E4C(v169);
  return (*(v147 + 8))(v109, v148);
}

uint64_t sub_100311E54(char *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v159) = a4;
  v157 = a3;
  v161 = a2;
  v160 = a1;
  v146 = *v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v154 = *(v6 - 8);
  v7 = *(v154 + 64);
  __chkstk_darwin(v6);
  v152 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DispatchQoS();
  v151 = *(v153 - 8);
  v9 = *(v151 + 64);
  __chkstk_darwin(v153);
  v150 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v140 = *(v141 - 8);
  v11 = *(v140 + 64);
  __chkstk_darwin(v141);
  v139 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContinuousRoutingControl();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v162 = &v137 - v19;
  v20 = __chkstk_darwin(v18);
  v143 = &v137 - v21;
  __chkstk_darwin(v20);
  v138 = &v137 - v22;
  v158 = type metadata accessor for Logger();
  v156 = *(v158 - 8);
  v23 = *(v156 + 64);
  v24 = __chkstk_darwin(v158);
  v155 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v145 = &v137 - v27;
  __chkstk_darwin(v26);
  v142 = &v137 - v28;
  v29 = sub_1001BC5A8(&qword_100525798, &qword_100457B00);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v144 = &v137 - v31;
  v149 = type metadata accessor for RoutingSessionConfiguration();
  v148 = *(v149 - 8);
  v32 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = (&v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *sub_100021264();
  if ((v159 & 1) == 0)
  {
LABEL_16:
    (*(v14 + 16))(v17, v160, v13);
    v45 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v5;
    (*(v14 + 32))(v46 + v45, v17, v13);
    v47 = (v46 + ((v15 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    v48 = v157;
    *v47 = v161;
    v47[1] = v48;
    *&v168 = sub_10032D6FC;
    *(&v168 + 1) = v46;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v167 = sub_100003D98;
    *(&v167 + 1) = &unk_1004CDCB8;
    v49 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v50 = v6;
    v51 = v39;

    v52 = v150;
    static DispatchQoS.unspecified.getter();
    *&v163[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v53 = v152;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v49);

    (*(v154 + 8))(v53, v50);
    (*(v151 + 8))(v52, v153);
  }

  v6 = v161;
  v17 = v160;
  v137 = v14;
  v154 = v13;
  v159 = v5;
  *v38 = v39;
  (*(v35 + 104))(v38, enum case for DispatchPredicate.onQueue(_:), v34);
  v40 = v39;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v35 + 8))(v38, v34);
  if (v14)
  {
    v41 = sub_10002107C();
    v14 = v41;
    if (!(v41 >> 62))
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  v42 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
  v43 = v17;
  v44 = v162;
  if (!v42)
  {
LABEL_17:

    v55 = sub_100028D40();
    v56 = v156;
    v57 = v155;
    (*(v156 + 16))(v155, v55, v158);
    v58 = v137;
    v59 = v154;
    (*(v137 + 16))(v44, v43, v154);
    swift_unknownObjectRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v58;
      v63 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v163[0] = v162;
      *v63 = 136315650;
      v64 = _typeName(_:qualified:)();
      v66 = v56;
      v67 = sub_10002C9C8(v64, v65, v163);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v62 + 8))(v44, v59);
      v71 = sub_10002C9C8(v68, v70, v163);

      *(v63 + 14) = v71;
      *(v63 + 22) = 2082;
      *&aBlock = v6;
      *(&aBlock + 1) = v157;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v72 = String.init<A>(describing:)();
      v74 = sub_10002C9C8(v72, v73, v163);

      *(v63 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] endInteractionWithControl - control: %{public}s, no internal client found matching client: %{public}s", v63, 0x20u);
      swift_arrayDestroy();

      return (*(v66 + 8))(v155, v158);
    }

    else
    {

      (*(v58 + 8))(v44, v59);
      return (*(v56 + 8))(v57, v158);
    }
  }

  v17 = 0;
  v39 = (v14 & 0xFFFFFFFFFFFFFF8);
  v15 = &unk_100534000;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v5 = *(v14 + 8 * v17 + 32);

      v13 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_15;
      }
    }

    if (*(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == v6)
    {
      break;
    }

    ++v17;
    v44 = v162;
    if (v13 == v42)
    {
      goto LABEL_17;
    }
  }

  (*(v148 + 16))(v147, v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v149);
  v75 = sub_100300F24(&aBlock);
  v76 = sub_10030D904(v163, v5);
  if (*v77)
  {
    v78 = v144;
    sub_1002CCEB0(v43, v144);
    (v76)(v163, 0);
    (v75)(&aBlock, 0);
    v79 = v137;
    v80 = v154;
    if ((*(v137 + 48))(v78, 1, v154) != 1)
    {
      sub_1000038A4(v78, &qword_100525798, &qword_100457B00);
      v81 = sub_1001BC5A8(&qword_100524280, &qword_100455138);
      v82 = swift_allocBox();
      v84 = v83;
      v85 = *(v81 + 48);
      v86 = *(v79 + 16);
      v86(v83, v43, v80);
      type metadata accessor for RoutingInteraction.Action.ControlContext();
      *(v84 + v85) = sub_1001E789C(0, 0);
      v172[0] = v82;
      memset(&v172[1], 0, 24);
      v173 = 9;
      sub_100272B38(v172, &aBlock);
      v87 = sub_100028D40();
      v88 = v156;
      v89 = v142;
      (*(v156 + 16))(v142, v87, v158);
      v90 = v80;
      v91 = aBlock;
      v170[0] = v167;
      v170[1] = v168;
      v171 = v169;
      v92 = v138;
      v93 = v43;
      v94 = *(&aBlock + 1);
      v86(v138, v93, v90);

      sub_10026D080(v170, v163);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      sub_100238E4C(v170);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        LODWORD(v161) = v96;
        v98 = v97;
        v162 = swift_slowAlloc();
        v165 = v162;
        *v98 = 136315906;
        v99 = _typeName(_:qualified:)();
        v101 = sub_10002C9C8(v99, v100, &v165);

        *(v98 + 4) = v101;
        *(v98 + 12) = 2082;

        v102 = sub_10002C9C8(v91, v94, &v165);

        *(v98 + 14) = v102;
        *(v98 + 22) = 2082;
        sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        (*(v137 + 8))(v92, v90);
        v106 = sub_10002C9C8(v103, v105, &v165);

        *(v98 + 24) = v106;
        *(v98 + 32) = 2082;
        v163[0] = aBlock;
        v163[1] = v167;
        v163[2] = v168;
        v164 = v169;
        sub_1002856A4();
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = sub_10002C9C8(v107, v108, &v165);

        *(v98 + 34) = v109;
        _os_log_impl(&_mh_execute_header, v95, v161, "[%s] endInteractionWithControl<%{public}s> - control: %{public}s produced interaction: %{public}s", v98, 0x2Au);
        swift_arrayDestroy();

        (*(v88 + 8))(v142, v158);
      }

      else
      {

        (*(v137 + 8))(v92, v90);
        (*(v88 + 8))(v89, v158);
      }

      sub_10031C6F0(&aBlock, v5);
      v128 = sub_100028BB8();
      v129 = v139;
      sub_10029BE08(v139);
      v130 = v147;
      v131 = (*(*v128 + 912))(&aBlock, v147, v129);

      (*(v140 + 8))(v129, v141);
      v132 = swift_allocObject();
      swift_weakInit();
      v133 = swift_allocObject();
      swift_weakInit();
      v134 = swift_allocObject();
      *(v134 + 16) = v132;
      *(v134 + 24) = v133;
      v135 = v167;
      *(v134 + 32) = aBlock;
      *(v134 + 48) = v135;
      *(v134 + 64) = v168;
      *(v134 + 80) = v169;
      v136 = *(*v131 + 168);

      sub_10026D080(v170, v163);
      v136(sub_10032D7C0, v134);

      sub_100238E4C(v170);

      return (*(v148 + 8))(v130, v149);
    }
  }

  else
  {
    (v76)(v163, 0);
    (v75)(&aBlock, 0);
    v79 = v137;
    v78 = v144;
    v80 = v154;
    (*(v137 + 56))(v144, 1, 1, v154);
  }

  sub_1000038A4(v78, &qword_100525798, &qword_100457B00);
  v110 = sub_100028D40();
  v111 = v156;
  v112 = v145;
  (*(v156 + 16))(v145, v110, v158);
  v113 = v143;
  (*(v79 + 16))(v143, v43, v80);

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v116 = 136315650;
    v117 = _typeName(_:qualified:)();
    v119 = sub_10002C9C8(v117, v118, &aBlock);

    *(v116 + 4) = v119;
    *(v116 + 12) = 2082;
    sub_100004930(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    v122 = v121;
    (*(v79 + 8))(v113, v80);
    v123 = sub_10002C9C8(v120, v122, &aBlock);

    *(v116 + 14) = v123;
    *(v116 + 22) = 2082;

    v124 = sub_100036B00();
    v126 = v125;

    v127 = sub_10002C9C8(v124, v126, &aBlock);

    *(v116 + 24) = v127;
    _os_log_impl(&_mh_execute_header, v114, v115, "[%s] endInteractionWithControl - control: %{public}s, no ongoing control found for client: %{public}s", v116, 0x20u);
    swift_arrayDestroy();

    (*(v156 + 8))(v145, v158);
  }

  else
  {

    (*(v79 + 8))(v113, v80);
    (*(v111 + 8))(v112, v158);
  }

  return (*(v148 + 8))(v147, v149);
}

uint64_t sub_100313384(uint64_t a1, void **a2, unint64_t a3, int a4)
{
  LODWORD(v102) = a4;
  v100 = a3;
  v101 = a1;
  v104 = a2;
  v91 = *v4;
  v5 = type metadata accessor for RoutingSession.Action();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = __chkstk_darwin(v5);
  v93 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v85 - v9;
  v95 = type metadata accessor for Logger();
  v92 = *(v95 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v95);
  v94 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  __chkstk_darwin(v12);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v97 = *(v15 - 8);
  v16 = *(v97 + 64);
  __chkstk_darwin(v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RoutingSession.Action.Kind();
  v89 = *(v90 - 8);
  v19 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100021264();
  v27 = *v26;
  if ((v102 & 1) == 0)
  {
LABEL_15:
    v36 = v93;
    (*(v6 + 2))(v93, v101, v5);
    v37 = v6[80];
    v103 = v15;
    v38 = (v37 + 24) & ~v37;
    v39 = swift_allocObject();
    *(v39 + 16) = v4;
    (*(v6 + 4))(v39 + v38, v36, v5);
    v40 = (v39 + ((v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    v41 = v100;
    *v40 = v104;
    v40[1] = v41;
    v110 = sub_10032D94C;
    v111 = v39;
    aBlock = _NSConcreteStackBlock;
    v107 = 1107296256;
    v108 = sub_100003D98;
    v109 = &unk_1004CDD30;
    v42 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v43 = v27;

    static DispatchQoS.unspecified.getter();
    v105 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v44 = v96;
    v45 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v98 + 8))(v44, v45);
    (*(v97 + 8))(v18, v103);
  }

  v86 = v26;
  v87 = v6;
  v85 = v18;
  v93 = v5;
  *v25 = v27;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v29)
  {
    v30 = sub_10002107C();
    v25 = v30;
    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v103;
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_24:

      v59 = sub_100028D40();
      v60 = v92;
      v61 = v94;
      v62 = v95;
      (*(v92 + 16))(v94, v59, v95);
      v63 = v87;
      v64 = v93;
      (*(v87 + 2))(v6, v101, v93);
      v65 = v104;
      swift_unknownObjectRetain();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        LODWORD(v102) = v67;
        v69 = v6;
        v70 = v68;
        v103 = swift_slowAlloc();
        v105 = v103;
        *v70 = 136315650;
        v71 = _typeName(_:qualified:)();
        v73 = sub_10002C9C8(v71, v72, &v105);

        *(v70 + 4) = v73;
        *(v70 + 12) = 2082;
        sub_100004930(&qword_100525F60, &type metadata accessor for RoutingSession.Action);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v75;
        (*(v63 + 1))(v69, v64);
        v77 = sub_10002C9C8(v74, v76, &v105);

        *(v70 + 14) = v77;
        *(v70 + 22) = 2082;
        aBlock = v65;
        v107 = v100;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v78 = String.init<A>(describing:)();
        v80 = sub_10002C9C8(v78, v79, &v105);

        *(v70 + 24) = v80;
        _os_log_impl(&_mh_execute_header, v66, v102, "[%s] interactWithSessionAction - action: %{public}s, no internal client found matching client: %{public}s", v70, 0x20u);
        swift_arrayDestroy();

        return (*(v60 + 8))(v94, v95);
      }

      else
      {

        (*(v63 + 1))(v6, v64);
        return (*(v60 + 8))(v61, v62);
      }
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v31 = _CocoaArrayWrapper.endIndex.getter();
  v6 = v103;
  if (!v31)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v102 = v25 & 0xC000000000000001;
  v27 = (v25 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v102)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v18 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v5 = *(v25 + 8 * v7 + 32);

      v18 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_14;
      }
    }

    v4 = v31;
    v32 = v15;
    v33 = *(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
    v34 = v104;
    ObjectType = swift_getObjectType();
    if (v33 == v34)
    {
      break;
    }

    ++v7;
    v31 = v4;
    v15 = v32;
    v6 = v103;
    if (v18 == v4)
    {
      goto LABEL_24;
    }
  }

  v47 = ObjectType;

  v48 = v88;
  RoutingSession.Action.kind.getter();
  if ((*(v89 + 88))(v48, v90) == enum case for RoutingSession.Action.Kind.shareAudio(_:))
  {
    v49 = swift_allocObject();
    v50 = v100;
    *(v49 + 16) = v104;
    *(v49 + 24) = v50;
    v51 = *(v5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
    if (v51 == *v86)
    {
      v58 = *(v50 + 32);
      swift_unknownObjectRetain();
      v58(v47, v50);
    }

    else
    {
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1003318A4;
      *(v52 + 24) = v49;
      v110 = sub_1002253D8;
      v111 = v52;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_100003D98;
      v109 = &unk_1004CDDA8;
      v53 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v54 = v51;

      v55 = v85;
      static DispatchQoS.unspecified.getter();
      v105 = _swiftEmptyArrayStorage;
      sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v56 = v96;
      v57 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v53);

      (*(v98 + 8))(v56, v57);
      (*(v97 + 8))(v55, v32);
    }
  }

  aBlock = 0;
  v107 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v81._countAndFlagsBits = 91;
  v81._object = 0xE100000000000000;
  String.append(_:)(v81);
  v82._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v82);

  v83._object = 0x800000010043FE80;
  v83._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v83);
  sub_100004930(&qword_100525F60, &type metadata accessor for RoutingSession.Action);
  v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v84);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003140C4(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v266) = a4;
  v261 = a3;
  v265 = a1;
  v251 = *v4;
  v227 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v226 = *(v227 - 8);
  v6 = *(v226 + 64);
  __chkstk_darwin(v227);
  v236 = (&v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1001BC5A8(&qword_100525F50, &qword_100458148);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v233 = &v222 - v10;
  v235 = type metadata accessor for RoutingDialog();
  v234 = *(v235 - 8);
  v11 = *(v234 + 64);
  __chkstk_darwin(v235);
  v225 = &v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for RoutingItem.Action();
  v263 = *(v264 - 1);
  v13 = *(v263 + 64);
  v14 = __chkstk_darwin(v264);
  v240 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v222 - v16;
  v18 = __chkstk_darwin(v15);
  v252 = &v222 - v19;
  v20 = __chkstk_darwin(v18);
  v247 = &v222 - v21;
  __chkstk_darwin(v20);
  v230 = &v222 - v22;
  v262 = type metadata accessor for Logger();
  v253 = *(v262 - 8);
  v23 = *(v253 + 64);
  v24 = __chkstk_darwin(v262);
  v239 = &v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v254 = &v222 - v27;
  v28 = __chkstk_darwin(v26);
  v249 = &v222 - v29;
  __chkstk_darwin(v28);
  v241 = &v222 - v30;
  v260 = type metadata accessor for DispatchWorkItemFlags();
  v259 = *(v260 - 1);
  v31 = *(v259 + 64);
  __chkstk_darwin(v260);
  v256 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for DispatchQoS();
  v257 = *(v258 - 8);
  v33 = *(v257 + 64);
  __chkstk_darwin(v258);
  v255 = &v222 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for RoutingItem.Action.Kind();
  v244 = *(v245 - 8);
  v35 = *(v244 + 64);
  __chkstk_darwin(v245);
  v243 = &v222 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v246 = *(v37 - 8);
  v38 = *(v246 + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v238 = &v222 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v232 = &v222 - v42;
  v43 = __chkstk_darwin(v41);
  v242 = &v222 - v44;
  v231 = v45;
  __chkstk_darwin(v43);
  v248 = &v222 - v46;
  v47 = type metadata accessor for RoutingSessionConfiguration();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = __chkstk_darwin(v47);
  v250 = &v222 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v237 = &v222 - v53;
  v54 = __chkstk_darwin(v52);
  v229 = &v222 - v55;
  v228 = v56;
  __chkstk_darwin(v54);
  v58 = &v222 - v57;
  v59 = type metadata accessor for DispatchPredicate();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  v63 = &v222 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100021264();
  isa = v64->isa;
  if ((v266 & 1) == 0)
  {
LABEL_15:
    v73 = v263;
    v74 = v264;
    (*(v263 + 16))(v17, v265, v264);
    v75 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v267;
    (*(v73 + 32))(v76 + v75, v17, v74);
    v77 = (v76 + ((v13 + v75 + 7) & 0xFFFFFFFFFFFFFFF8));
    v78 = v261;
    *v77 = a2;
    v77[1] = v78;
    *&v273 = sub_10032DA0C;
    *(&v273 + 1) = v76;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v272 = sub_100003D98;
    *(&v272 + 1) = &unk_1004CDDF8;
    v79 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v80 = isa;
    v81 = v255;
    static DispatchQoS.unspecified.getter();
    *&v268[0] = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v82 = v256;
    v83 = v260;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v79);

    (*(v259 + 8))(v82, v83);
    (*(v257 + 8))(v81, v258);
  }

  v266 = v64;
  *v63 = isa;
  (*(v60 + 104))(v63, enum case for DispatchPredicate.onQueue(_:), v59);
  v66 = isa;
  v67 = _dispatchPreconditionTest(_:)();
  (*(v60 + 8))(v63, v59);
  if (v67)
  {
    v68 = sub_10002107C();
    v63 = v68;
    v223 = v47;
    v222 = v48;
    v224 = v58;
    if (!(v68 >> 62))
    {
      v13 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_5;
      }

LABEL_37:

      v199 = sub_100028D40();
      v200 = v253;
      v201 = v254;
      v202 = v262;
      (*(v253 + 16))(v254, v199, v262);
      v203 = v263;
      v204 = v252;
      v205 = v264;
      (*(v263 + 16))(v252, v265, v264);
      swift_unknownObjectRetain();
      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        *&v268[0] = v267;
        *v208 = 136315650;
        v209 = _typeName(_:qualified:)();
        v211 = sub_10002C9C8(v209, v210, v268);

        *(v208 + 4) = v211;
        *(v208 + 12) = 2082;
        sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action);
        v212 = dispatch thunk of CustomStringConvertible.description.getter();
        v214 = v213;
        (*(v203 + 8))(v204, v205);
        v215 = sub_10002C9C8(v212, v214, v268);

        *(v208 + 14) = v215;
        *(v208 + 22) = 2082;
        *&aBlock = a2;
        *(&aBlock + 1) = v261;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&qword_100525F20, &qword_100458118);
        v216 = String.init<A>(describing:)();
        v218 = sub_10002C9C8(v216, v217, v268);

        *(v208 + 24) = v218;
        _os_log_impl(&_mh_execute_header, v206, v207, "[%s] interactWithItemAction - action: %{public}s, no internal client found matching client: %{public}s", v208, 0x20u);
        swift_arrayDestroy();

        return (*(v200 + 8))(v254, v262);
      }

      else
      {

        (*(v203 + 8))(v204, v205);
        return (*(v200 + 8))(v201, v202);
      }
    }
  }

  else
  {
LABEL_35:
    __break(1u);
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_37;
  }

LABEL_5:
  v69 = 0;
  isa = (v63 & 0xC000000000000001);
  while (1)
  {
    if (isa)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v70 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v69 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v17 = *(v63 + 8 * v69 + 32);

      v70 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_14;
      }
    }

    v71 = *&v17[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient];
    ObjectType = swift_getObjectType();
    if (v71 == a2)
    {
      break;
    }

    ++v69;
    if (v70 == v13)
    {
      goto LABEL_37;
    }
  }

  v85 = ObjectType;

  v86 = v222;
  v88 = v222 + 16;
  v87 = *(v222 + 16);
  v89 = v223;
  v87(v224, &v17[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration], v223);
  v90 = sub_100030790();
  if (v90[2] && (v91 = sub_100031588(v17), (v92 & 1) != 0))
  {
    v93 = v242;
    sub_10002ADF8(v90[7] + *(v246 + 72) * v91, v242, type metadata accessor for HostedRoutingSessionSnapshot);

    sub_10002AF68(v93, v248, type metadata accessor for HostedRoutingSessionSnapshot);
    v94 = v243;
    v95 = v265;
    RoutingItem.Action.kind.getter();
    v96 = (*(v244 + 88))(v94, v245);
    if (v96 == enum case for RoutingItem.Action.Kind.shareAudio(_:))
    {
      v97 = v86;
      v98 = swift_allocObject();
      v99 = v261;
      *(v98 + 16) = a2;
      *(v98 + 24) = v99;
      v100 = *&v17[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue];
      if (v100 != v266->isa)
      {
        v101 = swift_allocObject();
        *(v101 + 16) = sub_10032DBF0;
        *(v101 + 24) = v98;
        *&v273 = sub_1002253D8;
        *(&v273 + 1) = v101;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v272 = sub_100003D98;
        *(&v272 + 1) = &unk_1004CDEC0;
        v102 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v267 = v100;

        v103 = v255;
        static DispatchQoS.unspecified.getter();
        *&v268[0] = _swiftEmptyArrayStorage;
        sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
        v104 = v256;
        v105 = v260;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v106 = v267;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v102);

        (*(v259 + 8))(v104, v105);
        (*(v257 + 8))(v103, v258);
        sub_10002AC54(v248, type metadata accessor for HostedRoutingSessionSnapshot);
        (*(v97 + 8))(v224, v223);
      }

      v137 = *(v99 + 32);
      swift_unknownObjectRetain();
      v137(v85, v99);

      sub_10002AC54(v248, type metadata accessor for HostedRoutingSessionSnapshot);
      return (*(v97 + 8))(v224, v223);
    }

    else if (v96 == enum case for RoutingItem.Action.Kind.remoteControl(_:))
    {
      type metadata accessor for RoutingDecisionEngine();
      v134 = sub_1002DF550(v95, v248);
      v135 = v253;
      v136 = v241;
      v259 = v88;
      v260 = v87;
      v138 = *(*v134 + 120);
      v261 = v134;
      v138(&aBlock);
      v139 = aBlock;

      v140 = sub_100028D40();
      (*(v135 + 16))(v136, v140, v262);
      v141 = v263;
      v142 = v230;
      v143 = v95;
      v144 = v264;
      (*(v263 + 16))(v230, v143, v264);
      v275[0] = v272;
      v275[1] = v273;
      v276 = v274;

      sub_10026D080(v275, v268);
      v145 = Logger.logObject.getter();
      v146 = v135;
      v147 = static os_log_type_t.default.getter();
      v266 = *(&v139 + 1);

      sub_100238E4C(v275);
      v148 = os_log_type_enabled(v145, v147);
      v258 = v139;
      if (v148)
      {
        v149 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v270 = v256;
        *v149 = 136315906;
        v150 = _typeName(_:qualified:)();
        v265 = v145;
        v152 = sub_10002C9C8(v150, v151, &v270);
        LODWORD(v257) = v147;
        v153 = v152;

        *(v149 + 4) = v153;
        *(v149 + 12) = 2082;
        *(v149 + 14) = sub_10002C9C8(v139, v266, &v270);
        *(v149 + 22) = 2082;
        sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action);
        v154 = dispatch thunk of CustomStringConvertible.description.getter();
        v156 = v155;
        (*(v141 + 8))(v142, v144);
        v157 = sub_10002C9C8(v154, v156, &v270);

        *(v149 + 24) = v157;
        *(v149 + 32) = 2082;
        v268[0] = aBlock;
        v268[1] = v272;
        v268[2] = v273;
        v269 = v274;
        sub_1002856A4();
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = sub_10002C9C8(v158, v159, &v270);

        *(v149 + 34) = v160;
        v161 = v222;
        v89 = v223;
        v162 = v265;
        _os_log_impl(&_mh_execute_header, v265, v257, "[%s] interactWithItemAction<%{public}s> - action: %{public}s produced interaction: %{public}s", v149, 0x2Au);
        swift_arrayDestroy();

        (*(v146 + 8))(v241, v262);
      }

      else
      {

        (*(v141 + 8))(v142, v144);
        (*(v146 + 8))(v241, v262);
        v161 = v222;
      }

      v163 = v229;
      v164 = v260;
      (v260)(v229, v224, v89);
      v165 = v232;
      sub_10002ADF8(v248, v232, type metadata accessor for HostedRoutingSessionSnapshot);
      v164(v237, v163, v89);
      sub_10002ADF8(v165, v238, type metadata accessor for HostedRoutingSessionSnapshot);
      v166 = (*(v161 + 80) + 65) & ~*(v161 + 80);
      v167 = (v228 + *(v246 + 80) + v166) & ~*(v246 + 80);
      v168 = v89;
      v169 = (v231 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
      v170 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
      v171 = (v170 + 15) & 0xFFFFFFFFFFFFFFF8;
      v172 = swift_allocObject();
      v173 = v272;
      *(v172 + 16) = aBlock;
      *(v172 + 32) = v173;
      *(v172 + 48) = v273;
      *(v172 + 64) = v274;
      v174 = v168;
      v175 = v172;
      (*(v161 + 32))(v172 + v166, v163, v174);
      sub_10002AF68(v165, v175 + v167, type metadata accessor for HostedRoutingSessionSnapshot);
      v176 = v267;
      *(v175 + v169) = v261;
      *(v175 + v170) = v17;
      v177 = v224;
      *(v175 + v171) = v176;
      v178 = *(*v176 + 584);

      sub_10026D080(v275, v268);

      v179 = v233;
      v178(&aBlock, v177, v248);
      v180 = v234;
      v181 = v235;
      if ((*(v234 + 48))(v179, 1, v235) == 1)
      {

        sub_1000038A4(v179, &qword_100525F50, &qword_100458148);
        v182 = v237;
        sub_100266350(v238, v236);
        type metadata accessor for RoutingClientEvent(0);

        v184 = sub_10023AF94(v183);
        v185 = *(**(*&v17[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context] + 96) + 376);

        v265 = v184;
        v185(v184);

        sub_10031C6F0(&aBlock, v17);
        v186 = *sub_100028BB8();
        v187 = (*(v186 + 912))(&aBlock, v182, v236);

        v188 = swift_allocObject();
        swift_weakInit();
        v189 = swift_allocObject();
        swift_weakInit();
        v190 = swift_allocObject();
        swift_weakInit();
        v191 = swift_allocObject();
        *(v191 + 16) = v188;
        *(v191 + 24) = v189;
        v192 = v272;
        *(v191 + 32) = aBlock;
        *(v191 + 48) = v192;
        *(v191 + 64) = v273;
        *(v191 + 80) = v274;
        *(v191 + 88) = v190;
        v193 = *(*v187 + 168);

        sub_10026D080(v275, v268);
        v193(sub_10032DBE0, v191);

        sub_100238E4C(v275);
        (*(v226 + 8))(v236, v227);
        sub_10002AC54(v238, type metadata accessor for HostedRoutingSessionSnapshot);
        v194 = *(v222 + 8);
        v195 = v223;
        v194(v237, v223);
        sub_10002AC54(v248, type metadata accessor for HostedRoutingSessionSnapshot);
        return (v194)(v224, v195);
      }

      else
      {
        v265 = type metadata accessor for HostedRoutingSessionSnapshot;
        sub_10002AC54(v238, type metadata accessor for HostedRoutingSessionSnapshot);
        v264 = *(v222 + 8);
        v196 = v223;
        (v264)(v237, v223);
        v197 = v179;
        v198 = v225;
        (*(v180 + 32))(v225, v197, v181);
        sub_100316C58(v198, v258, v266, &aBlock, v176, v17, v175, v251);

        sub_100238E4C(v275);

        (*(v180 + 8))(v198, v181);
        sub_10002AC54(v248, v265);
        return (v264)(v224, v196);
      }
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      *&aBlock = 91;
      *(&aBlock + 1) = 0xE100000000000000;
      v219._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v219);

      v220._object = 0x800000010043FEC0;
      v220._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v220);
      sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action);
      v221._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v221);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {

    v107 = sub_100028D40();
    v108 = v253;
    v109 = v249;
    (*(v253 + 16))(v249, v107, v262);
    v110 = v263;
    v111 = v247;
    v112 = v87;
    v113 = v264;
    (*(v263 + 16))(v247, v265, v264);
    v112(v250, v224, v89);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *&aBlock = v267;
      *v116 = 136315650;
      v117 = _typeName(_:qualified:)();
      v266 = v114;
      v119 = sub_10002C9C8(v117, v118, &aBlock);
      LODWORD(v265) = v115;
      v120 = v119;

      *(v116 + 4) = v120;
      *(v116 + 12) = 2082;
      sub_100004930(&qword_1005259C8, &type metadata accessor for RoutingItem.Action);
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      (*(v110 + 8))(v111, v113);
      v124 = sub_10002C9C8(v121, v123, &aBlock);

      *(v116 + 14) = v124;
      *(v116 + 22) = 2082;
      sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration);
      v125 = v250;
      v126 = v223;
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v129 = v128;
      v130 = *(v86 + 8);
      v130(v125, v126);
      v131 = sub_10002C9C8(v127, v129, &aBlock);

      *(v116 + 24) = v131;
      v132 = v266;
      _os_log_impl(&_mh_execute_header, v266, v265, "[%s] interactWithItemAction - control: %{public}s, no snapshot for configuration: %{public}s", v116, 0x20u);
      swift_arrayDestroy();

      (*(v108 + 8))(v249, v262);
      return (v130)(v224, v126);
    }

    else
    {

      v133 = *(v86 + 8);
      v133(v250, v89);
      (*(v110 + 8))(v111, v113);
      (*(v108 + 8))(v109, v262);
      return (v133)(v224, v89);
    }
  }

  return result;
}

uint64_t sub_1003165A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100266350(a3, v12);
  type metadata accessor for RoutingClientEvent(0);

  v14 = sub_10023AF94(v13);
  v15 = *(**(*(a5 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 376);

  v15(v14);

  sub_10031C6F0(a1, a5);
  v16 = *sub_100028BB8();
  v17 = (*(v16 + 912))(a1, a2, v12);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(a1 + 16);
  v33 = *a1;
  v22 = *(a1 + 32);
  v31[0] = v21;
  v31[1] = v22;
  v32 = *(a1 + 48);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v19;
  v24 = *(a1 + 16);
  *(v23 + 32) = *a1;
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a1 + 32);
  *(v23 + 80) = *(a1 + 48);
  *(v23 + 88) = v20;
  v25 = *(*v17 + 168);
  sub_10028BC98(&v33, v30);
  sub_10026D080(v31, v30);
  v25(sub_100331898, v23);

  return (*(v28 + 8))(v12, v29);
}

uint64_t sub_1003168B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30[-1] - v12;
  v14 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v14;
  v35 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v17 = Strong;
  v18 = v7;
  v19 = sub_100300FBC(v31);
  v20 = sub_10030D88C(v30, v17);
  if (!*v21)
  {
    (v20)(v30, 0);
    result = (v19)(v31, 0);
    goto LABEL_18;
  }

  sub_10032970C(a4, v32);
  (v20)(v30, 0);
  result = (v19)(v31, 0);
  if (!v33)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  sub_1000038A4(v32, &qword_1005266C8, &unk_100458470);
  v22 = *(a4 + 48);
  if (v22 <= 6 && ((1 << v22) & 0x47) != 0)
  {
    sub_10031C9DC(v17);
  }

  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (!v23)
  {
  }

  v24 = v23;
  (*(*v23 + 272))(v34);
  v25 = sub_100030790();
  if (v25[2] && (v26 = sub_100031588(v17), (v27 & 1) != 0))
  {
    sub_10002ADF8(v25[7] + *(v18 + 72) * v26, v11, type metadata accessor for HostedRoutingSessionSnapshot);

    sub_10002AF68(v11, v13, type metadata accessor for HostedRoutingSessionSnapshot);
    v28 = *(*(v17 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);

    sub_10023C08C(v24, v28, v13);

    return sub_10002AC54(v13, type metadata accessor for HostedRoutingSessionSnapshot);
  }

  else
  {
  }
}

uint64_t sub_100316C58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a6;
  v55 = a8;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = RoutingDialog.identifier.getter();
  v20 = v19;
  v21 = sub_100028D40();
  v53 = v15;
  v22 = v15;
  v23 = v20;
  (*(v22 + 16))(v18, v21, v14);
  v24 = *(a4 + 16);
  v61[0] = *a4;
  v25 = *(a4 + 32);
  v59[0] = v24;
  v59[1] = v25;
  v60 = *(a4 + 48);

  sub_10028BC98(v61, v56);
  sub_10026D080(v59, v56);
  v52 = v18;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  sub_1001E6204(v61);
  sub_100238E4C(v59);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v50 = a5;
    v29 = v28;
    v48 = swift_slowAlloc();
    v58 = v48;
    *v29 = 136315906;
    v30 = _typeName(_:qualified:)();
    v47 = v26;
    v32 = sub_10002C9C8(v30, v31, &v58);
    v49 = v14;
    HIDWORD(v46) = v27;
    v33 = a7;
    v34 = a1;
    v35 = v23;
    v36 = v32;

    *(v29 + 4) = v36;
    v23 = v35;
    a1 = v34;
    a7 = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_10002C9C8(a2, a3, &v58);
    *(v29 + 22) = 2082;
    v37 = v51;
    *(v29 + 24) = sub_10002C9C8(v51, v23, &v58);
    *(v29 + 32) = 2082;
    v38 = *(a4 + 16);
    v56[0] = *a4;
    v56[1] = v38;
    v56[2] = *(a4 + 32);
    v57 = *(a4 + 48);
    sub_1002856A4();
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = sub_10002C9C8(v39, v40, &v58);

    *(v29 + 34) = v41;
    v42 = v47;
    _os_log_impl(&_mh_execute_header, v47, BYTE4(v46), "[%s] interactWithItemAction<%{public}s> - present dialog: %{public}s for interaction: %{public}s", v29, 0x2Au);
    swift_arrayDestroy();

    (*(v53 + 8))(v52, v49);
    v43 = v37;
  }

  else
  {

    (*(v53 + 8))(v52, v14);
    v43 = v51;
  }

  v44 = swift_allocObject();
  v44[2] = a2;
  v44[3] = a3;
  v44[4] = v43;
  v44[5] = v23;
  v44[6] = sub_10032DACC;
  v44[7] = a7;
  v44[8] = v55;

  sub_10031BFE0(a1, v54, sub_100330A50, v44);
}

uint64_t sub_10031705C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v89 = a7;
  v90 = a8;
  v95 = a3;
  v96 = a5;
  v92 = a1;
  v94 = a9;
  v12 = type metadata accessor for RoutingDialog.Action();
  v91 = *(v12 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Logger();
  v16 = *(v97 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v97);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v83 - v22;
  __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = sub_1001BC5A8(&qword_100525F40, &qword_100458140);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v33 = &v83 - v30;
  if (a2)
  {
    swift_errorRetain();
    v34 = sub_100028D40();
    (*(v16 + 16))(v25, v34, v97);
    swift_errorRetain();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v93 = a6;
      v38 = v37;
      v39 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v98 = v92;
      *v38 = 136315906;
      v40 = _typeName(_:qualified:)();
      v42 = sub_10002C9C8(v40, v41, &v98);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_10002C9C8(v95, a4, &v98);
      *(v38 + 22) = 2082;
      *(v38 + 24) = sub_10002C9C8(v96, v93, &v98);
      *(v38 + 32) = 2114;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 34) = v43;
      *v39 = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%s] interactWithItemAction<%{public}s> - dialog: %{public}s returned error: %{public}@ -> drop interaction", v38, 0x2Au);
      sub_1000038A4(v39, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v16 + 8))(v25, v97);
  }

  v86 = v32;
  v87 = v31;
  v83 = v23;
  v84 = v15;
  v88 = v20;
  v93 = a6;
  v44 = v92;
  sub_10001D9AC(v92, &v83 - v30, &qword_100525F40, &qword_100458140);
  v45 = v91;
  v46 = v91 + 48;
  v85 = *(v91 + 48);
  if (v85(v33, 1, v12) == 1)
  {
    sub_1000038A4(v33, &qword_100525F40, &qword_100458140);
    v47 = v16;
    goto LABEL_12;
  }

  v49 = (*(v45 + 88))(v33, v12);
  v50 = enum case for RoutingDialog.Action.confirm(_:);
  (*(v45 + 8))(v33, v12);
  v51 = v49 == v50;
  v47 = v16;
  if (!v51)
  {
LABEL_12:
    v92 = v46;
    v63 = sub_100028D40();
    v64 = v88;
    (*(v47 + 16))(v88, v63, v97);
    v65 = v87;
    sub_10001D9AC(v44, v87, &qword_100525F40, &qword_100458140);
    v66 = a4;

    v67 = v93;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      LODWORD(v90) = v69;
      v70 = v67;
      v71 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v98 = v89;
      *v71 = 136315906;
      v72 = _typeName(_:qualified:)();
      v74 = sub_10002C9C8(v72, v73, &v98);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2082;
      *(v71 + 14) = sub_10002C9C8(v95, v66, &v98);
      *(v71 + 22) = 2082;
      *(v71 + 24) = sub_10002C9C8(v96, v70, &v98);
      *(v71 + 32) = 2082;
      v75 = v86;
      sub_10001D9AC(v65, v86, &qword_100525F40, &qword_100458140);
      result = (v85)(v75, 1, v12);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v76 = v84;
        (*(v45 + 32))(v84, v75, v12);
        sub_100004930(&qword_1005266E8, &type metadata accessor for RoutingDialog.Action);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v45;
        v79 = v77;
        v81 = v80;
        (*(v78 + 8))(v76, v12);
        sub_1000038A4(v65, &qword_100525F40, &qword_100458140);
        v82 = sub_10002C9C8(v79, v81, &v98);

        *(v71 + 34) = v82;
        _os_log_impl(&_mh_execute_header, v68, v90, "[%s] interactWithItemAction<%{public}s> - dialog: %{public}s returned action: %{public}s -> drop interaction", v71, 0x2Au);
        swift_arrayDestroy();

        return (*(v47 + 8))(v88, v97);
      }
    }

    else
    {

      sub_1000038A4(v65, &qword_100525F40, &qword_100458140);
      return (*(v47 + 8))(v64, v97);
    }

    return result;
  }

  v52 = sub_100028D40();
  v53 = v83;
  (*(v16 + 16))(v83, v52, v97);

  v54 = v93;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = v54;
    v58 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v58 = 136315650;
    v59 = _typeName(_:qualified:)();
    v61 = sub_10002C9C8(v59, v60, &v98);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2082;
    *(v58 + 14) = sub_10002C9C8(v95, a4, &v98);
    *(v58 + 22) = 2082;
    *(v58 + 24) = sub_10002C9C8(v96, v57, &v98);
    _os_log_impl(&_mh_execute_header, v55, v56, "[%s] interactWithItemAction<%{public}s> - dialog: %{public}s confirmed -> handle interaction", v58, 0x20u);
    swift_arrayDestroy();
  }

  v62 = (*(v16 + 8))(v53, v97);
  return v89(v62);
}

uint64_t sub_1003179E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RoutingDialog();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = RoutingSessionConfiguration.supportsDialogs.getter();
  v11 = v46;
  if (v10)
  {
    type metadata accessor for RoutingDecisionEngine();
    if (sub_1002E0D6C(a1, a2))
    {
      v12 = static String.nanoIDFourChar()();
      v44 = v13;
      v45 = v12;
      v14 = static LocalizedStrings.Dialog.ReplaceAudio.title.getter();
      v42 = v15;
      v43 = v14;
      v41 = static LocalizedStrings.Dialog.ReplaceAudio.detail.getter();
      sub_1001BC5A8(&qword_100525F68, &unk_100458160);
      v16 = type metadata accessor for RoutingDialog.Action();
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100450890;
      v21 = (v20 + v19);
      *v21 = static LocalizedStrings.Dialog.ReplaceAudio.Action.cancel.getter();
      v21[1] = v22;
      v23 = *(v17 + 104);
      v23(v21, enum case for RoutingDialog.Action.cancel(_:), v16);
      v24 = (v21 + v18);
      v25 = static LocalizedStrings.Dialog.ReplaceAudio.Action.accept.getter();
LABEL_6:
      *v24 = v25;
      v24[1] = v26;
      v23(v24, enum case for RoutingDialog.Action.confirm(_:), v16);
      RoutingDialog.init(identifier:titleText:detailText:actions:)();
      (*(v46 + 32))(a3, v9, v6);
      return (*(v46 + 56))(a3, 0, 1, v6);
    }

    v27 = sub_1002E3780();
    v28 = sub_1002E37AC(a1, a2, v27);

    v11 = v46;
    if (v28)
    {
      v29 = static String.nanoIDFourChar()();
      v44 = v30;
      v45 = v29;
      v31 = static LocalizedStrings.Dialog.InterruptGroupSession.title.getter();
      v42 = v32;
      v43 = v31;
      v41 = static LocalizedStrings.Dialog.InterruptGroupSession.detail.getter();
      sub_1001BC5A8(&qword_100525F68, &unk_100458160);
      v16 = type metadata accessor for RoutingDialog.Action();
      v33 = *(v16 - 8);
      v34 = *(v33 + 72);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100450890;
      v37 = (v36 + v35);
      *v37 = static LocalizedStrings.Dialog.InterruptGroupSession.Action.cancel.getter();
      v37[1] = v38;
      v23 = *(v33 + 104);
      v23(v37, enum case for RoutingDialog.Action.cancel(_:), v16);
      v24 = (v37 + v34);
      v25 = static LocalizedStrings.Dialog.InterruptGroupSession.Action.accept.getter();
      goto LABEL_6;
    }
  }

  v40 = *(v11 + 56);

  return v40(a3, 1, 1, v6);
}

uint64_t sub_100317DA8(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v100 = a1;
  v101 = a3;
  v102 = v5;
  v91 = *v5;
  v103 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v103 - 1);
  v8 = *(v98 + 64);
  __chkstk_darwin(v103);
  v96 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v97);
  v94 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  __chkstk_darwin(v12);
  v99 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for RoutingSessionConfiguration();
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RoutingMode();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v89 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v23 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v88 = *(v23 - 8);
  v24 = *(v88 + 64);
  __chkstk_darwin(v23 - 8);
  v90 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *sub_100021264();
  if ((a4 & 1) == 0)
  {
LABEL_16:
    (*(v18 + 16))(v22, v100, v17);
    v37 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v102;
    (*(v18 + 32))(v38 + v37, v22, v17);
    v39 = (v38 + ((v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
    v40 = v101;
    *v39 = a2;
    v39[1] = v40;
    v109 = sub_10032DD20;
    v110 = v38;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_100003D98;
    v108 = &unk_1004CDF10;
    v41 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v42 = v31;

    v43 = v94;
    static DispatchQoS.unspecified.getter();
    v104 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v44 = v96;
    v45 = v103;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    (*(v98 + 8))(v44, v45);
    (*(v95 + 8))(v43, v97);
  }

  v103 = a2;
  v96 = v22;
  v97 = v17;
  v98 = v18;
  a2 = v101;
  *v30 = v31;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if (v33)
  {
    v34 = sub_10002107C();
    v33 = v34;
    if (!(v34 >> 62))
    {
      v19 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = a2;
      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v35 = a2;
  if (v19)
  {
LABEL_5:
    v18 = 0;
    v31 = &unk_100534000;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v18 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v17 = *(v33 + 8 * v18 + 32);

        v22 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(v17 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == v103)
      {
        break;
      }

      ++v18;
      v36 = v22 == v19;
      v35 = a2;
      if (v36)
      {
        goto LABEL_32;
      }
    }

    v46 = sub_100030790();
    if (v46[2] && (v47 = sub_100031588(v17), (v48 & 1) != 0))
    {
      sub_10002ADF8(v46[7] + *(v88 + 72) * v47, v90, type metadata accessor for HostedRoutingSessionSnapshot);

      v49 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
      swift_beginAccess();
      v50 = v97;
      v51 = v98;
      v52 = *(v98 + 16);
      v101 = v49;
      v53 = v96;
      v99 = v52;
      (v52)(v96, v17 + v49, v97);
      v54 = v89;
      v103 = *(v51 + 104);
      (v103)(v89, enum case for RoutingMode.detailed(_:), v50);
      LOBYTE(v49) = static RoutingMode.== infix(_:_:)();
      v55 = *(v51 + 8);
      v55(v54, v50);
      v55(v53, v50);
      if ((v49 & 1) == 0)
      {
        (v99)(v53, v17 + v101, v50);
        (v103)(v54, enum case for RoutingMode.localNetwork(_:), v50);
        v56 = static RoutingMode.== infix(_:_:)();
        v55(v54, v50);
        v55(v53, v50);
        if ((v56 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      (v103)(v53, enum case for RoutingMode.prewarm(_:), v50);
      v57 = static RoutingMode.== infix(_:_:)();
      v55(v53, v50);
      if (v57 & 1) != 0 || ((v103)(v53, enum case for RoutingMode.disabled(_:), v50), v58 = static RoutingMode.== infix(_:_:)(), v55(v53, v50), (v58))
      {
        v59 = *(*(v17 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);
        v60 = v86;
        v61 = v85;
        v62 = v87;
        (*(v86 + 16))(v85, v17 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v87);

        v64 = v90;
        sub_10023BCF8(v63, v90, v61);

        (*(v60 + 8))(v61, v62);
        v65 = v64;
      }

      else
      {
LABEL_25:
        v65 = v90;
      }

      sub_10002AC54(v65, type metadata accessor for HostedRoutingSessionSnapshot);
      v66 = v100;
      v67 = v50;
      v68 = v98;
    }

    else
    {

      v66 = v100;
      v67 = v97;
      v68 = v98;
      v53 = v96;
    }

    (*(v68 + 16))(v53, v66, v67);
    sub_1003004C8(v53);
    sub_10031A34C();
  }

LABEL_32:

  v70 = sub_100028D40();
  v72 = v92;
  v71 = v93;
  v73 = v99;
  (*(v92 + 16))(v99, v70, v93);
  v74 = v103;
  swift_unknownObjectRetain();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v77 = 136315394;
    v78 = _typeName(_:qualified:)();
    v80 = sub_10002C9C8(v78, v79, &v104);

    *(v77 + 4) = v80;
    *(v77 + 12) = 2082;
    aBlock = v74;
    v106 = v35;
    swift_unknownObjectRetain();
    sub_1001BC5A8(&qword_100525F20, &qword_100458118);
    v81 = String.init<A>(describing:)();
    v83 = sub_10002C9C8(v81, v82, &v104);

    *(v77 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "[%s] setRoutingMode - No internal client found matching client: %{public}s", v77, 0x16u);
    swift_arrayDestroy();

    return (*(v72 + 8))(v99, v71);
  }

  else
  {

    return (*(v72 + 8))(v73, v71);
  }
}

uint64_t sub_1003189FC(int a1, void **a2, char *a3, char a4)
{
  v59 = a3;
  v58 = a1;
  v51 = *v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  __chkstk_darwin(v15);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *sub_100021264();
  if (a4)
  {
    v14 = v59;
    *v22 = v23;
    (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
    v24 = v23;
    v25 = _dispatchPreconditionTest(_:)();
    (*(v19 + 8))(v22, v18);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    v56 = v4;
    v26 = sub_10002107C();
    v4 = v26;
    if (v26 >> 62)
    {
LABEL_21:
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v14;
      if (v27)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v14;
      if (v27)
      {
LABEL_5:
        v7 = 0;
        v23 = (v4 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          else
          {
            if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            v29 = *(v4 + 8 * v7 + 32);

            v10 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              goto LABEL_15;
            }
          }

          if (*(v29 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a2)
          {

            v35 = *(v29 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
            v36 = *(v35 + 16);
            *(v35 + 16) = v58 & 1;

            sub_1002FF420(v36);

            sub_100028D64(v29);
          }

          ++v7;
          v30 = v10 == v27;
          v28 = v14;
        }

        while (!v30);
      }
    }

    v38 = sub_100028D40();
    v40 = v52;
    v39 = v53;
    v41 = v57;
    (*(v52 + 16))(v57, v38, v53);
    swift_unknownObjectRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v44 = 136315394;
      v45 = _typeName(_:qualified:)();
      v47 = sub_10002C9C8(v45, v46, &v60);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2082;
      aBlock = a2;
      v62 = v28;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v48 = String.init<A>(describing:)();
      v50 = sub_10002C9C8(v48, v49, &v60);

      *(v44 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%s] setUIPresented - no internal client found matching client: %{public}s", v44, 0x16u);
      swift_arrayDestroy();

      return (*(v40 + 8))(v57, v39);
    }

    else
    {

      return (*(v40 + 8))(v41, v39);
    }
  }

  else
  {
LABEL_16:
    v31 = swift_allocObject();
    *(v31 + 16) = v4;
    *(v31 + 24) = v58 & 1;
    v32 = v59;
    *(v31 + 32) = a2;
    *(v31 + 40) = v32;
    v65 = sub_10032DDE0;
    v66 = v31;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100003D98;
    v64 = &unk_1004CDF60;
    v33 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v34 = v23;

    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v56 + 8))(v10, v7);
    (*(v54 + 8))(v14, v55);
  }
}

uint64_t sub_10031912C(uint64_t a1, void **a2, char *a3, char a4)
{
  v61 = a3;
  v53 = *v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  __chkstk_darwin(v16);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *sub_100021264();
  if (a4)
  {
    v59 = a1;
    v15 = v61;
    *v23 = v24;
    (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
    v25 = v24;
    v26 = _dispatchPreconditionTest(_:)();
    (*(v20 + 8))(v23, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }

    v58 = v4;
    v27 = sub_10002107C();
    v4 = v27;
    if (v27 >> 62)
    {
LABEL_21:
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v29 = v15;
      if (v28)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = v15;
      if (v28)
      {
LABEL_5:
        v30 = 0;
        v24 = (v4 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          else
          {
            if (v30 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            a1 = *(v4 + 8 * v30 + 32);

            v11 = (v30 + 1);
            if (__OFADD__(v30, 1))
            {
              goto LABEL_15;
            }
          }

          if (*(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient) == a2)
          {

            v37 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
            v38 = *(v37 + 24);
            *(v37 + 24) = v59;

            sub_1002FFAFC(v38);

            sub_100028D64(a1);
          }

          ++v30;
          v31 = v11 == v28;
          v29 = v15;
        }

        while (!v31);
      }
    }

    v40 = sub_100028D40();
    v42 = v54;
    v41 = v55;
    v43 = v60;
    (*(v54 + 16))(v60, v40, v55);
    swift_unknownObjectRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v46 = 136315394;
      v47 = _typeName(_:qualified:)();
      v49 = sub_10002C9C8(v47, v48, &v62);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2082;
      aBlock = a2;
      v64 = v29;
      swift_unknownObjectRetain();
      sub_1001BC5A8(&qword_100525F20, &qword_100458118);
      v50 = String.init<A>(describing:)();
      v52 = sub_10002C9C8(v50, v51, &v62);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%s] setExpandedSessionIdentifiers - no internal client found matching client: %{public}s", v46, 0x16u);
      swift_arrayDestroy();

      return (*(v42 + 8))(v60, v41);
    }

    else
    {

      return (*(v42 + 8))(v43, v41);
    }
  }

  else
  {
LABEL_16:
    v32 = swift_allocObject();
    v32[2] = v4;
    v32[3] = a1;
    v33 = v61;
    v32[4] = a2;
    v32[5] = v33;
    v67 = sub_10032DE3C;
    v68 = v32;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100003D98;
    v66 = &unk_1004CDFB0;
    v34 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v35 = v24;

    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v36 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v58 + 8))(v11, v36);
    (*(v56 + 8))(v15, v57);
  }
}

uint64_t sub_100319868()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v73 = &v69 - v5;
  v72 = type metadata accessor for NSNotificationCenter.Publisher();
  v74 = *(v72 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin(v72 - 8);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v70 = *(v80 - 8);
  v8 = *(v70 + 64);
  __chkstk_darwin(v80 - 8);
  v78 = &v69 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100028D40();
  (*(v11 + 16))(v14, v15, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v82 = v19;
    *v18 = 136315138;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &v82);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] installNotificationObservers", v18, 0xCu);
    sub_100026A44(v19);
  }

  result = (*(v11 + 8))(v14, v10);
  v81 = v1;
  if (qword_100534300 != -1)
  {
    result = swift_once();
  }

  v24 = qword_100534308;
  v25 = *(qword_100534308 + 16);
  v26 = &selRef_bundleWithURL_;
  v28 = v72;
  v27 = v73;
  v29 = v71;
  v30 = v81;
  if (v25)
  {
    v31 = objc_opt_self();
    v76 = (v74 + 8);
    v77 = v31;
    v75 = (v70 + 8);
    v32 = (v24 + 40);
    do
    {
      v79 = v25;
      v33 = v29;
      v34 = v28;
      v36 = *(v32 - 1);
      v35 = *v32;

      v37 = [v77 defaultCenter];
      v38 = String._bridgeToObjectiveC()();

      NSNotificationCenter.publisher(for:object:)();

      v39 = *sub_100021264();
      v82 = v39;
      v40 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v40 - 8) + 56))(v27, 1, 1, v40);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_100004930(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      v41 = v39;
      v42 = v30;
      v43 = v78;
      v28 = v34;
      v29 = v33;
      v44 = v80;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v27, &unk_100524C50, &qword_10044F180);

      (*v76)(v29, v28);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
      Publisher<>.sink(receiveValue:)();
      v26 = &selRef_bundleWithURL_;

      v45 = v43;
      v30 = v42;
      v46 = v79;
      (*v75)(v45, v44);
      v82 = sub_100300BF8();
      AnyCancellable.store(in:)();

      v47 = v30[2];
      v30[2] = v82;

      v32 += 2;
      v25 = v46 - 1;
    }

    while (v25);
  }

  if (qword_100534310 != -1)
  {
    result = swift_once();
  }

  v48 = qword_100534318;
  v49 = *(qword_100534318 + 16);
  v50 = v72;
  v51 = v73;
  v52 = v71;
  v53 = v78;
  if (v49)
  {
    v77 = objc_opt_self();
    v54 = objc_opt_self();
    v55 = (v48 + 32);
    v75 = (v74 + 8);
    v76 = v54;
    v74 = v70 + 8;
    do
    {
      v56 = *v55++;
      v79 = v56;
      v57 = [v77 v26[307]];
      v58 = v52;
      v59 = v50;
      v60 = v51;
      v61 = [v76 sharedLocalEndpoint];
      NSNotificationCenter.publisher(for:object:)();

      v62 = v53;
      v63 = *sub_100021264();
      v82 = v63;
      v64 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v64 - 8) + 56))(v60, 1, 1, v64);
      sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
      sub_100004930(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
      sub_1002853D8();
      v65 = v63;
      v51 = v60;
      v50 = v59;
      v52 = v58;
      v66 = v80;
      Publisher.receive<A>(on:options:)();
      sub_1000038A4(v51, &unk_100524C50, &qword_10044F180);

      (*v75)(v52, v50);
      swift_allocObject();
      swift_weakInit();
      sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
      Publisher<>.sink(receiveValue:)();
      v53 = v62;
      v67 = v81;

      (*v74)(v53, v66);
      v82 = sub_100300BF8();
      AnyCancellable.store(in:)();
      v26 = &selRef_bundleWithURL_;

      v68 = v67[2];
      v67[2] = v82;

      --v49;
    }

    while (v49);
  }

  return result;
}

uint64_t sub_10031A180@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingSession(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_10002ADF8(v13, v11, type metadata accessor for HostedRoutingSession);
      v15 = a1(v11);
      if (v3)
      {
        return sub_10002AC54(v11, type metadata accessor for HostedRoutingSession);
      }

      if (v15)
      {
        break;
      }

      sub_10002AC54(v11, type metadata accessor for HostedRoutingSession);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_10002AF68(v11, v19, type metadata accessor for HostedRoutingSession);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_10031A34C()
{
  v81 = type metadata accessor for RoutingSessionConfiguration();
  v1 = *(v81 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v81);
  v80 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoutingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = __chkstk_darwin(v4);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v71 = &v54 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v54 - v13);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_100028BB8();
  v19 = v5 + 104;
  v18 = *(v5 + 13);
  v82 = v14;
  v20 = v14;
  v61 = enum case for RoutingMode.disabled(_:);
  v73 = v4;
  v21 = v18;
  (v18)(v20);
  v60 = v0;
  v22 = sub_10002107C();
  v23 = v22;
  if (v22 >> 62)
  {
    goto LABEL_54;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = v5;
  if (v24)
  {
    v55 = v17;
    v56 = v16;
    v57 = v1;
    v1 = 0;
    v67 = v23 & 0xC000000000000001;
    v59 = v23 & 0xFFFFFFFFFFFFFF8;
    v25 = (v5 + 16);
    v68 = enum case for RoutingMode.detailed(_:);
    v69 = (v5 + 8);
    v70 = enum case for RoutingMode.localNetwork(_:);
    v72 = enum case for RoutingMode.prewarm(_:);
    v17 = v21;
    v62 = v24;
    v63 = v9;
    v66 = v23;
    v79 = (v5 + 16);
    v65 = v19;
    v64 = v21;
    while (1)
    {
      if (v67)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v24 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      else
      {
        if (v1 >= *(v59 + 16))
        {
          goto LABEL_53;
        }

        v26 = *(v23 + 8 * v1 + 32);

        v27 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_52;
        }
      }

      v77 = v27;
      v78 = v1;
      v28 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
      swift_beginAccess();
      v21 = *v25;
      v16 = v71;
      v23 = v73;
      (*v25)(v71, v26 + v28, v73);
      (v17)(v9, v68, v23);
      v29 = static RoutingMode.== infix(_:_:)();
      v5 = *v69;
      (*v69)(v9, v23);
      v5(v16, v23);
      if (v29)
      {
        v40 = v82;
        v5(v82, v23);

        (v64)(v40, v68, v23);
LABEL_24:
        v5 = v58;
        v1 = v57;
        v16 = v56;
        v17 = v55;
        goto LABEL_25;
      }

      v75 = v28;
      v76 = v26;
      v74 = v21;
      (v21)(v16, v26 + v28, v23);
      v30 = v65;
      v31 = v64;
      (v64)(v9, v70, v23);
      v32 = static RoutingMode.== infix(_:_:)();
      v5(v9, v23);
      v5(v16, v23);
      if (v32)
      {
        (v31)(v16, v72, v23);
        v33 = static RoutingMode.== infix(_:_:)();
        v5(v16, v23);
        if (v33 & 1) != 0 || ((v31)(v16, v61, v23), v34 = static RoutingMode.== infix(_:_:)(), v5(v16, v23), (v34))
        {
          v35 = v82;
          v5(v82, v23);
          (v31)(v35, v70, v23);
        }
      }

      v21 = v31;
      v19 = v30;
      (v74)(v16, v76 + v75, v23);
      v9 = v63;
      (v21)(v63, v72, v23);
      v36 = static RoutingMode.== infix(_:_:)();
      v5(v9, v23);
      v5(v16, v23);
      v17 = v21;
      if (v36)
      {
        (v21)(v16, v61, v23);
        v37 = static RoutingMode.== infix(_:_:)();

        v5(v16, v23);
        v23 = v66;
        if (v37)
        {
          v38 = v82;
          v39 = v73;
          v5(v82, v73);
          (v21)(v38, v72, v39);
        }
      }

      else
      {

        v23 = v66;
      }

      v1 = v78 + 1;
      v25 = v79;
      if (v77 == v62)
      {

        goto LABEL_24;
      }
    }
  }

LABEL_25:
  (*(v5 + 4))(v16, v82, v73);
  (*(*v17 + 400))(v16);

  v19 = *(v60 + 24);
  v83 = &_swiftEmptySetSingleton;
  v41 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = 0;
    v82 = (v19 & 0xC000000000000001);
    v79 = (v1 + 16);
    v5 = (v1 + 8);
    while (1)
    {
      if (v82)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          v45 = v83;
          v5 = v58;
          goto LABEL_39;
        }
      }

      else
      {
        if (v17 >= *(v41 + 16))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v21 = *(v19 + 8 * v17 + 32);

        v23 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      v42 = v19;
      v43 = v41;
      v44 = v80;
      v1 = v81;
      (*v79)(v80, &v21[OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration], v81);
      v9 = sub_10002CC04();
      (*v5)(v44, v1);
      sub_10031B580(v9);
      v41 = v43;
      v19 = v42;

      ++v17;
      if (v23 == v16)
      {
        goto LABEL_37;
      }
    }
  }

  v45 = &_swiftEmptySetSingleton;
LABEL_39:

  v9 = 0;
  v19 = v45;
  v46 = v45[7];
  v81 = (v45 + 7);
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v46;
  v1 = (v47 + 63) >> 6;
  v82 = (v5 + 8);
  v21 = v71;
  if ((v48 & v46) != 0)
  {
    while (1)
    {
      v50 = v9;
LABEL_47:
      v51 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v52 = *(v19 + 48) + 24 * (v51 | (v50 << 6));
      v23 = *v52;
      v5 = *(v52 + 8);
      v16 = *(v60 + 88);
      v17 = *(v52 + 16);
      sub_10002CBE8(*v52, v5, *(v52 + 16));

      sub_10031AD24(v23, v5, v17, v21);
      (*(*v16 + 896))(v21, v23, v5, v17);

      sub_10002349C(v23, v5, v17);
      (*v82)(v21, v73);
      if (!v49)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
LABEL_43:
    v50 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v50 >= v1)
    {
    }

    v49 = *(v81 + 8 * v50);
    ++v9;
    if (v49)
    {
      v9 = v50;
      goto LABEL_47;
    }
  }
}

uint64_t sub_10031AD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v71 = a1;
  v72 = a2;
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v47[-v11];
  v70 = type metadata accessor for RoutingSessionConfiguration();
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v70);
  v69 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v6 + 104;
  v17 = *(v6 + 104);
  v58 = a4;
  v48 = enum case for RoutingMode.disabled(_:);
  v17(a4);
  v18 = sub_10002107C();
  v19 = v18;
  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = v17;
    v63 = v16;
    v49 = v12;
    v60 = v10;
    v51 = v5;
    v5 = 0;
    v68 = v19 & 0xC000000000000001;
    v57 = v19 & 0xFFFFFFFFFFFFFF8;
    v56 = v19 + 32;
    v65 = (v13 + 8);
    v66 = (v13 + 16);
    v50 = enum case for RoutingMode.detailed(_:);
    v17 = (v6 + 8);
    v52 = enum case for RoutingMode.localNetwork(_:);
    v53 = enum case for RoutingMode.prewarm(_:);
    v10 = &type metadata for HostedItemType;
    v67 = v19;
    v64 = i;
    v59 = (v6 + 16);
    while (v68)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = __OFADD__(v5++, 1);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_10:
      v22 = v69;
      v23 = v70;
      (*v66)(v69, v6 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v70);
      v13 = sub_10002CC04();
      (*v65)(v22, v23);
      v76 = v71;
      v77 = v72;
      v78 = v73;
      if (*(v13 + 16) && (v12 = *(v13 + 40), sub_100036860(), v24 = dispatch thunk of Hashable._rawHashValue(seed:)(), v16 = v13 + 56, v25 = -1 << *(v13 + 32), v26 = v24 & ~v25, ((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        v12 = sub_1000360C4();
        while (1)
        {
          v28 = *(v13 + 48) + 24 * v26;
          v29 = *(v28 + 16);
          v74 = *v28;
          v75 = v29;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v16 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v30 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
        swift_beginAccess();
        v16 = v49;
        v31 = v51;
        v54 = *v59;
        v54(v49, v6 + v30, v51);
        v32 = v60;
        (v62)(v60, v50, v31);
        LODWORD(v55) = static RoutingMode.== infix(_:_:)();
        v33 = v6;
        v34 = *v17;
        (*v17)(v32, v31);
        v61 = v34;
        v34(v16, v31);
        if (v55)
        {
          v45 = v58;
          v61(v58, v31);

          return (v62)(v45, v50, v31);
        }

        v55 = v30;
        v6 = v33;
        v35 = v33 + v30;
        v36 = v54;
        v54(v16, v35, v31);
        (v62)(v32, v52, v31);
        v37 = static RoutingMode.== infix(_:_:)();
        v38 = v61;
        v61(v32, v31);
        v38(v16, v31);
        if (v37)
        {
          (v62)(v16, v53, v31);
          v39 = static RoutingMode.== infix(_:_:)();
          v38(v16, v31);
          if (v39 & 1) != 0 || ((v62)(v16, v48, v31), v40 = static RoutingMode.== infix(_:_:)(), v38(v16, v31), (v40))
          {
            v41 = v58;
            v38(v58, v31);
            (v62)(v41, v52, v31);
          }
        }

        v36(v16, v6 + v55, v31);
        v12 = v60;
        (v62)(v60, v53, v31);
        v42 = static RoutingMode.== infix(_:_:)();
        v13 = v61;
        v61(v12, v31);
        (v13)(v16, v31);
        if (v42)
        {
          (v62)(v16, v48, v31);
          v43 = static RoutingMode.== infix(_:_:)();

          (v13)(v16, v31);
          if (v43)
          {
            v6 = v58;
            v44 = v51;
            (v13)(v58, v51);
            (v62)(v6, v53, v44);
          }

          goto LABEL_17;
        }
      }

      else
      {
LABEL_15:
      }

LABEL_17:
      v19 = v67;
      if (v5 == v64)
      {
      }
    }

    if (v5 >= *(v57 + 16))
    {
      goto LABEL_29;
    }

    v6 = *(v56 + 8 * v5);

    v21 = __OFADD__(v5++, 1);
    if (!v21)
    {
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_10031B580(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_10002CBE8(*v10, v12, v13);
      sub_10002EF90(v14, v11, v12, v13);
      result = sub_10002349C(v14[0], v14[1], v15);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10031B6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingSessionConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v22 - v15;
  v17 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v18 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  sub_10002ADF8(a2, v12, type metadata accessor for HostedRoutingSessionSnapshot);
  v20 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v4);
  swift_unknownObjectRetain();
  sub_100265398(v12, v8, v16);
  (*(v18 + 8))(v16, ObjectType, v18);
  swift_unknownObjectRelease();
  return sub_1000038A4(v16, &qword_100525F78, &qword_100458A90);
}

uint64_t sub_10031B8F4()
{
  v1 = v0;
  v75 = type metadata accessor for HostedRoutingSession(0);
  v2 = *(v75 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v75);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v65 - v8;
  __chkstk_darwin(v7);
  v11 = &v65 - v10;
  v12 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v12 - 8);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v74 = &v65 - v20;
  __chkstk_darwin(v19);
  v22 = &v65 - v21;
  v23 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v73 = v23;
  v25(v22, 1, 1);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v26 = sub_10024C81C();
  v27 = [v26 localOriginClient];

  v28 = sub_10033D250();
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];

  v31 = String._bridgeToObjectiveC()();

  v76 = v27;
  v32 = [v27 existingNowPlayingClientForDisplayID:v31];

  if (v32 && (v33 = [v32 activePlayerClient], v32, v33))
  {
    v66 = v33;
    v67 = v22;
    v70 = v9;
    v72 = v11;
    v68 = v1;
    result = sub_100030790();
    v35 = 0;
    v37 = result + 64;
    v36 = *(result + 64);
    v77 = result;
    v38 = 1 << *(result + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & v36;
    v41 = (v38 + 63) >> 6;
    v69 = (v24 + 48);
    while (v40)
    {
LABEL_12:
      v43 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v44 = v78;
      sub_10002ADF8(*(v77 + 56) + *(v79 + 72) * (v43 | (v35 << 6)), v78, type metadata accessor for HostedRoutingSessionSnapshot);
      v45 = sub_100032A00();
      v46 = sub_10002AC54(v44, type metadata accessor for HostedRoutingSessionSnapshot);
      v48 = *(v45 + 16);
      if (v48)
      {
        v49 = 0;
        while (1)
        {
          if (v49 >= *(v45 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v50 = sub_10002ADF8(v45 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v49, v6, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v50))
          {
            break;
          }

          ++v49;
          v46 = sub_10002AC54(v6, type metadata accessor for HostedRoutingSession);
          if (v48 == v49)
          {
            goto LABEL_6;
          }
        }

        v51 = v70;
        sub_10002AF68(v6, v70, type metadata accessor for HostedRoutingSession);
        v52 = v51;
        v53 = v72;
        sub_10002AF68(v52, v72, type metadata accessor for HostedRoutingSession);
        v54 = v74;
        sub_10001D9AC(v53 + *(v75 + 28), v74, &qword_100523640, qword_100451520);
        if ((*v69)(v54, 1, v73) == 1)
        {
          sub_10002AC54(v53, type metadata accessor for HostedRoutingSession);
          result = sub_1000038A4(v54, &qword_100523640, qword_100451520);
          continue;
        }

        v55 = v54;
        v56 = *(v54 + 48);
        v57 = *(v55 + 56);
        v58 = *(v55 + 60);
        sub_100248888(v56, v57, *(v55 + 60));
        sub_10002AC54(v55, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        v46 = v56;
        v47 = v57;
        if (v58)
        {
          sub_1002488FC(v56, v57, v58);
          result = sub_10002AC54(v72, type metadata accessor for HostedRoutingSession);
          continue;
        }

LABEL_25:
        sub_1002488FC(v46, v47, 0);
        v60 = v76;
        v61 = v76;
        v62 = v66;
        v63 = v66;
        v64 = v71;
        sub_100026A90(v60, v62);

        sub_10002AC54(v72, type metadata accessor for HostedRoutingSession);
        v22 = v67;
        sub_1000038A4(v67, &qword_100523640, qword_100451520);
        sub_10003AEF0(v64, v22, &qword_100523640, qword_100451520);
        goto LABEL_23;
      }

LABEL_6:
    }

    while (1)
    {
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v42 >= v41)
      {

        v22 = v67;
        goto LABEL_23;
      }

      v40 = *(v37 + 8 * v42);
      ++v35;
      if (v40)
      {
        v35 = v42;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v59 = sub_100301054();
    (*(*v59 + 224))(v22);

    return sub_1000038A4(v22, &qword_100523640, qword_100451520);
  }

  return result;
}

uint64_t sub_10031BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  __chkstk_darwin(v10);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v67);
  v64 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for RoutingDialog();
  v72 = *(v74 - 8);
  v15 = *(v72 + 64);
  v16 = __chkstk_darwin(v74);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v19 = *(sub_100300E4C() + 2);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v19)
  {

    goto LABEL_5;
  }

  sub_100031588(a2);
  LOBYTE(v21) = v20;

  if ((v21 & 1) == 0)
  {
LABEL_5:
    v21 = *(v4 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v21;
    sub_10032C2E4(&_swiftEmptyDictionarySingleton, a2, isUniquelyReferenced_nonNull_native, &qword_1005266D8, &qword_100458488);

    v23 = *(v4 + 40);
    *(v4 + 40) = aBlock[0];
  }

  v71 = a1;
  v70 = RoutingDialog.identifier.getter();
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *(v4 + 40);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v27;
  v30 = sub_100031588(a2);
  v31 = *(v27 + 16);
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v21) = v29;
  if (*(v27 + 24) >= v33)
  {
    if (v28)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

LABEL_21:
    sub_10032C9B8(&qword_1005266D8, &qword_100458488);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  sub_10032ADC0(v33, v28, &qword_1005266D8, &qword_100458488);
  v34 = sub_100031588(a2);
  if ((v21 & 1) != (v35 & 1))
  {
LABEL_23:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v30 = v34;
  if ((v21 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_13:
  v36 = *(*(aBlock[0] + 56) + 8 * v30);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v36;
  sub_10032C468(sub_100330844, v26, v70, v25, v37);

  v38 = aBlock[0];
  if (v76)
  {
    *(*(aBlock[0] + 56) + 8 * v30) = v76;
  }

  else
  {
    v39 = *(*(aBlock[0] + 48) + 8 * v30);

    sub_10032B714(v30, v38);
  }

  v40 = v73;
  v41 = v71;
  v42 = *(v5 + 40);
  *(v5 + 40) = v38;

  v43 = v72;
  v44 = *(v72 + 16);
  v45 = v74;
  v44(v18, v41, v74);
  v44(v40, v18, v45);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  (*(v43 + 32))(v47 + v46, v18, v45);
  v48 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
  v49 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

  v50 = v49;
  v51 = *sub_100021264();

  if (v50 == v51)
  {
    v61 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
    v60 = *(a2 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
    ObjectType = swift_getObjectType();
    v63 = *(v60 + 24);
    swift_unknownObjectRetain();
    v63(v40, ObjectType, v60);

    swift_unknownObjectRelease();
    return (*(v43 + 8))(v40, v45);
  }

  else
  {
    v52 = *(a2 + v48);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_100330870;
    *(v53 + 24) = v47;
    aBlock[4] = sub_1002253D8;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004CE158;
    v54 = _Block_copy(aBlock);
    v55 = v52;

    v56 = v64;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v57 = v66;
    v58 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v68 + 8))(v57, v58);
    (*(v65 + 8))(v56, v67);
    (*(v43 + 8))(v73, v74);
  }
}

uint64_t sub_10031C6F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (*(sub_100300F7C() + 2))
  {
    sub_100031588(a2);
    v8 = v7;

    if (v8)
    {
      v9 = *(v2 + 56);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_100031588(a2);
      v13 = v9[2];
      v14 = (v11 & 1) == 0;
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        __break(1u);
      }

      else
      {
        v3 = v11;
        if (v9[3] < v15)
        {
          sub_10032ADC0(v15, isUniquelyReferenced_nonNull_native, &qword_1005266F8, &qword_1004584B8);
          v16 = sub_100031588(a2);
          if ((v3 & 1) != (v17 & 1))
          {
LABEL_23:
            type metadata accessor for RoutingSessionServer.Client(0);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v12 = v16;
          if ((v3 & 1) == 0)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_12;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_12;
        }
      }

      sub_10032C9B8(&qword_1005266F8, &qword_1004584B8);
      if ((v3 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_12:
      v33 = *(v9[7] + 8 * v12);
      v27 = *(a1 + 16);
      v41 = *a1;
      v28 = *(a1 + 32);
      v39[0] = v27;
      v39[1] = v28;
      v40 = *(a1 + 48);
      sub_10028BC98(&v41, &v34);
      sub_10026D080(v39, &v34);
      sub_10032D508(&v34, a1);

      sub_1002485A4(v35, *(&v35 + 1), v36, v37, v38);
      if (v33)
      {
        *(v9[7] + 8 * v12) = v33;
      }

      else
      {
        v29 = *(v9[6] + 8 * v12);

        sub_10032B714(v12, v9);
      }

      v30 = *(v4 + 56);
      *(v4 + 56) = v9;
      goto LABEL_16;
    }
  }

  else
  {
  }

  sub_1001BC5A8(&qword_100524C08, &unk_100457390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v20 = *(a1 + 16);
  v41 = *a1;
  v19 = v41;
  LOBYTE(v36) = *(a1 + 48);
  v21 = v36;
  v22 = *(a1 + 32);
  v34 = v20;
  v35 = v22;
  *(inited + 48) = v20;
  *(inited + 64) = v22;
  *(inited + 80) = v21;
  *(inited + 32) = v19;
  sub_10028BC98(&v41, v39);
  sub_10026D080(&v34, v39);
  v23 = sub_10032F69C(inited);
  swift_setDeallocating();
  sub_100330CA8(inited + 32);
  v24 = *(v4 + 56);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&v39[0] = v24;
  sub_10032C2E4(v23, a2, v25, &qword_1005266F8, &qword_1004584B8);

  v26 = *(v4 + 56);
  *(v4 + 56) = *&v39[0];
LABEL_16:

  v32 = *(a1 + 48);
  if (v32 <= 6 && ((1 << v32) & 0x47) != 0)
  {
    return sub_10031C9DC(a2);
  }

  return result;
}

uint64_t sub_10031C9DC(uint64_t a1)
{
  v99[1] = *v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v100 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Logger();
  v106 = *(v109 - 8);
  v12 = *(v106 + 64);
  __chkstk_darwin(v109);
  v108 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &_swiftEmptySetSingleton;
  *(v14 + 16) = &_swiftEmptySetSingleton;
  v111 = (v14 + 16);
  v110 = v1;
  v16 = sub_100300F7C();
  v17 = v16[2];
  v105 = v3;
  v104 = v4;
  v103 = v8;
  v102 = v7;
  v101 = v9;
  v107 = a1;
  if (v17)
  {
    v18 = sub_100031588(a1);
    if (v19)
    {
      v15 = *(v16[7] + 8 * v18);
    }
  }

  v21 = 0;
  v22 = 1 << v15[32];
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v15 + 7);
  v25 = (v22 + 63) >> 6;
  while (v24)
  {
LABEL_13:
    v31 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v32 = *(v15 + 6) + 56 * (v31 | (v21 << 6));
    v33 = *(v32 + 16);
    v119[0] = *v32;
    v119[1] = v33;
    v122 = v119[0];
    v34 = *(v32 + 16);
    v120 = *(v32 + 32);
    v35 = *(v32 + 48);
    v121 = v35;
    v123 = v34;
    v124 = v120;
    v125 = v35;
    v36 = v34;
    if (v35 < 3)
    {
      v26 = v124;
      v27 = *(&v123 + 1);

      v112 = v26;
      sub_10028BC98(&v122, &aBlock);
      sub_10026D080(&v123, &aBlock);

      v28._countAndFlagsBits = 14906;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);

      aBlock = v112;

      v29._countAndFlagsBits = v36;
      v29._object = v27;
      String.append(_:)(v29);

      sub_100008318(&aBlock, aBlock, *(&aBlock + 1));
      sub_1001E6204(&v122);
      sub_100238E4C(&v123);
    }

    else if (v35 == 6)
    {
      v37 = *(v34 + 16);
      v38 = *(v34 + 24);
      v39 = *(v34 + 32);
      v40 = *(v34 + 40);
      sub_10028BC98(&v122, &aBlock);
      sub_10026D080(&v123, &aBlock);
      v41 = sub_100037234();
      if (v37 == *v41 && v38 == *(v41 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v99[0] = v40;
        v42 = v39;
        v43 = v14;
        v44 = sub_100030F88();
        v45 = (*(*v44 + 264))(v119);
        v47 = v46;

        if (v47)
        {
          *&aBlock = v45;
          *(&aBlock + 1) = v47;

          v48._countAndFlagsBits = 14906;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);

          v49._countAndFlagsBits = v42;
          v49._object = v99[0];
          String.append(_:)(v49);

          sub_100008318(&aBlock, aBlock, *(&aBlock + 1));
        }

        sub_1001E6204(&v122);
        result = sub_100238E4C(&v123);
        v14 = v43;
      }

      else
      {
        sub_1001E6204(&v122);
        result = sub_100238E4C(&v123);
      }
    }
  }

  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v25)
    {
      break;
    }

    v24 = *&v15[8 * v30 + 56];
    ++v21;
    if (v24)
    {
      v21 = v30;
      goto LABEL_13;
    }
  }

  v50 = *v111;
  v51 = sub_100301014();
  v52 = v107;
  v53 = v109;
  v54 = v106;
  v55 = v108;
  if (v51[2])
  {

    v56 = sub_100031588(v52);
    if (v57)
    {
      v58 = *(v51[7] + 8 * v56);

      v59 = sub_100218144(v50, v58);

      if (v59)
      {
      }

      goto LABEL_28;
    }
  }

LABEL_28:
  v60 = *(v14 + 16);
  v61 = v110;
  v62 = v110[8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v62;
  sub_10032C2E4(v60, v52, isUniquelyReferenced_nonNull_native, &qword_1005266D0, &qword_100458480);

  v64 = v61[8];
  v61[8] = aBlock;

  v65 = sub_100028D40();
  (*(v54 + 16))(v55, v65, v53);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v68 = 136315650;
    v69 = _typeName(_:qualified:)();
    v71 = sub_10002C9C8(v69, v70, &aBlock);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2082;
    swift_beginAccess();
    v72 = *(v14 + 16);

    v73 = Set.description.getter();
    v74 = v14;
    v76 = v75;

    v77 = sub_10002C9C8(v73, v76, &aBlock);
    v14 = v74;

    *(v68 + 14) = v77;
    *(v68 + 22) = 2082;
    v78 = sub_100036B00();
    v80 = sub_10002C9C8(v78, v79, &aBlock);

    *(v68 + 24) = v80;
    _os_log_impl(&_mh_execute_header, v66, v67, "[%s] updatePendingItemIdentifiers - items: %{public}s for client: %{public}s", v68, 0x20u);
    swift_arrayDestroy();

    (*(v54 + 8))(v108, v109);
  }

  else
  {

    (*(v54 + 8))(v55, v53);
  }

  v81 = swift_allocObject();
  *(v81 + 16) = v52;
  *(v81 + 24) = v14;
  v82 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
  v83 = *(v52 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

  v84 = v83;
  v85 = *sub_100021264();

  if (v84 != v85)
  {
    v86 = *(v52 + v82);
    v87 = swift_allocObject();
    *(v87 + 16) = sub_10033079C;
    *(v87 + 24) = v81;
    v117 = sub_1002253D8;
    v118 = v87;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v115 = sub_100003D98;
    v116 = &unk_1004CE0B8;
    v88 = _Block_copy(&aBlock);
    v89 = v86;

    v90 = v100;
    static DispatchQoS.unspecified.getter();
    v113 = _swiftEmptyArrayStorage;
    sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v91 = v102;
    v92 = v105;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v88);

    (*(v104 + 8))(v91, v92);
    (*(v101 + 8))(v90, v103);
  }

  v93 = *(v52 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
  v94 = *(v52 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v96 = *(v14 + 16);
  v97 = *(v94 + 16);
  swift_unknownObjectRetain();

  v97(v98, ObjectType, v94);

  swift_unknownObjectRelease();
}

void *sub_10031D528()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  return v0;
}

uint64_t sub_10031D5A8()
{
  sub_10031D528();

  return swift_deallocClassInstance();
}

uint64_t sub_10031D5DC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_10002ADF8(a3 + v16 + v17 * v14, v13, type metadata accessor for HostedRoutingSourceSession);
      v18 = a1(v13);
      if (v3)
      {
        sub_10002AC54(v13, type metadata accessor for HostedRoutingSourceSession);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10002AF68(v13, v25, type metadata accessor for HostedRoutingSourceSession);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10032E068(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_10032E068(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10002AF68(v25, v15 + v16 + v21 * v17, type metadata accessor for HostedRoutingSourceSession);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_10002AC54(v13, type metadata accessor for HostedRoutingSourceSession);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_10031D868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v255 = a2;
  v238 = a1;
  v233 = a4;
  v241 = type metadata accessor for HostedRoutingSession(0);
  v261 = *(v241 - 8);
  v6 = *(v261 + 64);
  v7 = __chkstk_darwin(v241);
  v250 = (&v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v222 = (&v217 - v10);
  v11 = __chkstk_darwin(v9);
  v13 = &v217 - v12;
  v14 = __chkstk_darwin(v11);
  v230 = &v217 - v15;
  v16 = __chkstk_darwin(v14);
  v217 = &v217 - v17;
  v18 = __chkstk_darwin(v16);
  v220 = &v217 - v19;
  v20 = __chkstk_darwin(v18);
  v242 = &v217 - v21;
  __chkstk_darwin(v20);
  v254 = &v217 - v22;
  v23 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v218 = &v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v227 = &v217 - v28;
  v29 = __chkstk_darwin(v27);
  v219 = &v217 - v30;
  v31 = __chkstk_darwin(v29);
  v225 = &v217 - v32;
  v33 = __chkstk_darwin(v31);
  v228 = &v217 - v34;
  __chkstk_darwin(v33);
  v231 = &v217 - v35;
  v240 = type metadata accessor for RoutingSessionConfiguration.Context();
  v239 = *(v240 - 8);
  v36 = *(v239 + 64);
  v37 = __chkstk_darwin(v240);
  v221 = &v217 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v224 = &v217 - v40;
  v41 = __chkstk_darwin(v39);
  v229 = (&v217 - v42);
  v43 = __chkstk_darwin(v41);
  v232 = (&v217 - v44);
  __chkstk_darwin(v43);
  v237 = (&v217 - v45);
  v264 = type metadata accessor for HostedRoutingItem(0);
  v266 = *(v264 - 8);
  v46 = *(v266 + 64);
  v47 = __chkstk_darwin(v264);
  v252 = &v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v263 = &v217 - v50;
  v51 = __chkstk_darwin(v49);
  v265 = &v217 - v52;
  __chkstk_darwin(v51);
  v54 = (&v217 - v53);
  v258 = type metadata accessor for RoutingSessionConfiguration();
  v55 = *(v258 - 8);
  v56 = *(v55 + 64);
  v57 = __chkstk_darwin(v258);
  v249 = &v217 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v59 = &v217 - v58;
  v60 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v223 = &v217 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v65 = &v217 - v64;
  v251 = v4;
  v66 = sub_100030790();
  v67 = v66[2];
  v253 = v59;
  v243 = a3;
  v256 = v65;
  v226 = v13;
  if (v67)
  {
    v68 = sub_100031588(a3);
    if (v69)
    {
      v70 = v68;
      v71 = v66[7];
      v72 = type metadata accessor for HostedRoutingSessionSnapshot(0);
      v73 = *(v72 - 8);
      v74 = v71 + *(v73 + 72) * v70;
      a3 = v243;
      v75 = v256;
      sub_10002ADF8(v74, v256, type metadata accessor for HostedRoutingSessionSnapshot);

      v76 = v72;
      v59 = v253;
      (*(v73 + 56))(v75, 0, 1, v76);
    }

    else
    {

      v78 = type metadata accessor for HostedRoutingSessionSnapshot(0);
      (*(*(v78 - 8) + 56))(v256, 1, 1, v78);
    }
  }

  else
  {

    v77 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    (*(*(v77 - 8) + 56))(v65, 1, 1, v77);
  }

  v79 = *(v55 + 16);
  v234 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration;
  v80 = v258;
  v79(v59, a3 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v258);
  v81 = sub_1000321BC();
  v262 = (*(*v81 + 128))(v81);

  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v247 = sub_100018D1C();
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  v83 = v249;
  v84 = v59;
  v85 = v82;
  v236 = v55 + 16;
  v235 = v79;
  v79(v249, v84, v80);
  v86 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  v257 = v55;
  v88 = *(v55 + 32);
  v244 = v87;
  v88(v87 + v86, v83, v80);
  v89 = swift_allocObject();
  v245 = v89;
  *(v89 + 16) = &_swiftEmptySetSingleton;
  v260 = v89 + 16;
  v90 = swift_allocObject();
  v246 = v90;
  *(v90 + 16) = &_swiftEmptySetSingleton;
  v259 = v90 + 16;
  v91 = *(v255 + 16);
  v248 = v85;
  if (v91)
  {
    v92 = v255 + ((*(v266 + 80) + 32) & ~*(v266 + 80));
    v93 = *(v266 + 72);

    v94 = v262;
    do
    {
      sub_10002ADF8(v92, v54, type metadata accessor for HostedRoutingItem);
      v96 = *v54;
      v95 = v54[1];

      sub_10002AC54(v54, type metadata accessor for HostedRoutingItem);
      if (*(v94 + 16) && (v97 = sub_10000698C(v96, v95), (v98 & 1) != 0))
      {
        v99 = *(*(v94 + 56) + 8 * v97);
        v100 = *(*v99 + 128);

        if (v100(v101))
        {

          sub_100008318(&v267, v96, v95);
        }

        if (v99[33] == 1)
        {
          sub_100008318(&v267, v96, v95);
        }

        v94 = v262;
      }

      else
      {
      }

      v92 += v93;
      --v91;
    }

    while (v91);
  }

  else
  {

    v94 = v262;
  }

  v102 = v243;
  v103 = v249;
  v104 = v258;
  v235(v249, v243 + v234, v258);
  v105 = v247;
  v106 = sub_10032595C(v238, v247);
  sub_100325C48(v106, v105);

  sub_10032625C(v107, v105);

  v109 = sub_100326CB0(v108, v105);

  v110 = v257 + 8;
  v249 = *(v257 + 8);
  v111 = (v249)(v103, v104);
  v112 = v109[2];
  v236 = v109[3];
  v238 = v109;
  v113 = v109[4];
  __chkstk_darwin(v111);
  v114 = v253;
  *(&v217 - 12) = v105;
  *(&v217 - 11) = v114;
  v115 = v245;
  *(&v217 - 10) = v255;
  *(&v217 - 9) = v115;
  v116 = v256;
  *(&v217 - 8) = v246;
  *(&v217 - 7) = v116;
  *(&v217 - 6) = v102;
  *(&v217 - 5) = v94;
  *(&v217 - 4) = v248;
  *(&v217 - 3) = sub_100331388;
  *(&v217 - 2) = v244;

  v259 = v113;

  v117 = sub_1000323E0(sub_10033140C, (&v217 - 14), v112);
  v255 = 0;
  v118 = v237;
  RoutingSessionConfiguration.context.getter();
  v119 = v239;
  v120 = *(v239 + 88);
  v121 = v240;
  v122 = v120(v118, v240);
  v260 = v117;
  v257 = v110;
  if (v122 == enum case for RoutingSessionConfiguration.Context.platterTarget(_:))
  {

    result = (*(v119 + 96))(v118, v121);
    v124 = v118[1];
    v125 = *(v117 + 16);
    if (!v125)
    {
LABEL_48:

      v135 = 1;
      v136 = v253;
      v137 = v241;
      v134 = v231;
LABEL_49:
      (*(v261 + 56))(v134, v135, 1, v137);
      sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v134, v233);
      goto LABEL_50;
    }

    v126 = 0;
    v127 = *v118;
    v263 = v117 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
    while (v126 < *(v117 + 16))
    {
      sub_10002ADF8(v263 + *(v261 + 72) * v126, v254, type metadata accessor for HostedRoutingSession);
      result = sub_100261164();
      v128 = result;
      v129 = *(result + 16);
      if (v129)
      {
        v130 = 0;
        v131 = result + ((*(v266 + 80) + 32) & ~*(v266 + 80));
        while (1)
        {
          v132 = v265;
          if (v130 >= *(v128 + 16))
          {
            break;
          }

          sub_10002ADF8(v131 + *(v266 + 72) * v130, v265, type metadata accessor for HostedRoutingItem);
          if (sub_1002589A8(v127, v124))
          {
            v133 = *(v132 + *(v264 + 36));
            result = sub_10002AC54(v132, type metadata accessor for HostedRoutingItem);
            if (v133)
            {

              v134 = v231;
              sub_10002AF68(v254, v231, type metadata accessor for HostedRoutingSession);
              v135 = 0;
              v136 = v253;
              v137 = v241;
              goto LABEL_49;
            }
          }

          else
          {
            result = sub_10002AC54(v132, type metadata accessor for HostedRoutingItem);
          }

          if (v129 == ++v130)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        break;
      }

LABEL_22:
      ++v126;

      result = sub_10002AC54(v254, type metadata accessor for HostedRoutingSession);
      v117 = v260;
      if (v126 == v125)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v265 = v112;
  v138 = *(v119 + 8);
  v138(v118, v121);
  v139 = v232;
  RoutingSessionConfiguration.context.getter();
  v140 = v120(v139, v121);
  if (v140 == enum case for RoutingSessionConfiguration.Context.deviceTarget(_:))
  {

    result = (*(v119 + 96))(v139, v121);
    v141 = v139[1];
    v142 = v260;
    v143 = *(v260 + 16);
    if (v143)
    {
      v144 = 0;
      v145 = *v139;
      v265 = v260 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
      while (v144 < *(v142 + 16))
      {
        sub_10002ADF8(v265 + *(v261 + 72) * v144, v242, type metadata accessor for HostedRoutingSession);
        result = sub_100261164();
        v146 = result;
        v147 = *(result + 16);
        if (v147)
        {
          v148 = 0;
          v149 = result + ((*(v266 + 80) + 32) & ~*(v266 + 80));
          do
          {
            v150 = v263;
            if (v148 >= *(v146 + 16))
            {
              goto LABEL_103;
            }

            sub_10002ADF8(v149 + *(v266 + 72) * v148, v263, type metadata accessor for HostedRoutingItem);
            if (sub_1002589A8(v145, v141))
            {
              v151 = *(v150 + *(v264 + 36));
              result = sub_10002AC54(v150, type metadata accessor for HostedRoutingItem);
              if (v151)
              {

                v152 = v228;
                sub_10002AF68(v242, v228, type metadata accessor for HostedRoutingSession);
                v153 = 0;
                goto LABEL_63;
              }
            }

            else
            {
              result = sub_10002AC54(v150, type metadata accessor for HostedRoutingItem);
            }
          }

          while (v147 != ++v148);
        }

        ++v144;

        result = sub_10002AC54(v242, type metadata accessor for HostedRoutingSession);
        v142 = v260;
        if (v144 == v143)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_107;
    }

    goto LABEL_62;
  }

  v138(v139, v121);
  v154 = v229;
  RoutingSessionConfiguration.context.getter();
  v264 = v120;
  if (v120(v154, v121) == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
  {

    (*(v119 + 96))(v154, v121);
    v156 = *v154;
    v155 = v154[1];
    v157 = v223;
    sub_10001D9AC(v256, v223, &qword_100523C30, &qword_100451B00);
    v158 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    v159 = (*(*(v158 - 8) + 48))(v157, 1, v158);
    v160 = v260;
    if (v159 == 1)
    {
      sub_1000038A4(v157, &qword_100523C30, &qword_100451B00);
      v161 = v225;
      (*(v261 + 56))(v225, 1, 1, v241);
      v162 = v226;
    }

    else
    {
      v161 = v225;
      sub_10001D9AC(v157, v225, &qword_100523620, &unk_1004511D0);
      sub_10002AC54(v157, type metadata accessor for HostedRoutingSessionSnapshot);
      v173 = *(v261 + 48);
      v174 = v173(v161, 1, v241);
      v162 = v226;
      if (v174 != 1)
      {
        v198 = v220;
        v199 = sub_10002AF68(v161, v220, type metadata accessor for HostedRoutingSession);
        __chkstk_darwin(v199);
        *(&v217 - 2) = v198;
        v200 = v219;
        v201 = v255;
        sub_10031A180(sub_100248974, v160, v219);
        v255 = v201;
        v202 = v241;
        if (v173(v200, 1, v241) != 1)
        {

          v215 = v217;
          sub_10002AF68(v200, v217, type metadata accessor for HostedRoutingSession);
          v216 = v227;
          sub_10002ADF8(v215, v227, type metadata accessor for HostedRoutingSession);
          (*(v261 + 56))(v216, 0, 1, v202);
          sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v216, v233);

          sub_10002AC54(v215, type metadata accessor for HostedRoutingSession);
          v187 = v198;
LABEL_97:
          sub_10002AC54(v187, type metadata accessor for HostedRoutingSession);

          goto LABEL_98;
        }

        sub_1000038A4(v200, &qword_100523620, &unk_1004511D0);
        result = sub_10002AC54(v198, type metadata accessor for HostedRoutingSession);
        v175 = *(v160 + 16);
        if (v175)
        {
LABEL_67:
          v176 = 0;
          v177 = v160 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
          v265 = v177;
          while (v176 < *(v160 + 16))
          {
            v178 = v162;
            v179 = v176 + 1;
            sub_10002ADF8(v177 + *(v261 + 72) * v176, v230, type metadata accessor for HostedRoutingSession);
            result = sub_10003AC60();
            v180 = result;
            v181 = 0;
            v182 = *(result + 16);
            while (v182 != v181)
            {
              if (v181 >= *(v180 + 16))
              {
                goto LABEL_104;
              }

              v183 = v252;
              sub_10002ADF8(v180 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v181++, v252, type metadata accessor for HostedRoutingItem);
              v184 = sub_1002589A8(v156, v155);
              result = sub_10002AC54(v183, type metadata accessor for HostedRoutingItem);
              if (v184)
              {

                v185 = v230;
                v186 = v227;
                sub_10002ADF8(v230, v227, type metadata accessor for HostedRoutingSession);
                (*(v261 + 56))(v186, 0, 1, v241);
                sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v186, v233);

                v187 = v185;
                goto LABEL_97;
              }
            }

            sub_10002AC54(v230, type metadata accessor for HostedRoutingSession);

            v176 = v179;
            v162 = v178;
            v160 = v260;
            v177 = v265;
            if (v179 == v175)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_109;
        }

        goto LABEL_82;
      }
    }

    result = sub_1000038A4(v161, &qword_100523620, &unk_1004511D0);
    v175 = *(v160 + 16);
    if (v175)
    {
      goto LABEL_67;
    }

LABEL_82:
    v203 = sub_100028BB8();
    v204 = (*(*v203 + 904))(v156, v155);
    v206 = v205;

    if (!v206)
    {

      v152 = v227;
      (*(v261 + 56))(v227, 1, 1, v241);
LABEL_64:
      sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v152, v233);

LABEL_98:
      v136 = v253;
      goto LABEL_99;
    }

    v136 = v253;
    if (v175)
    {
      v207 = 0;
      while (v207 < *(v160 + 16))
      {
        sub_10002ADF8(v160 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v207, v162, type metadata accessor for HostedRoutingSession);
        v208 = *v162 == v204 && v206 == v162[1];
        if (v208 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v210 = v218;
          sub_10002AF68(v162, v218, type metadata accessor for HostedRoutingSession);
          v209 = 0;
          goto LABEL_101;
        }

        ++v207;
        result = sub_10002AC54(v162, type metadata accessor for HostedRoutingSession);
        if (v175 == v207)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_108;
    }

LABEL_92:

    v209 = 1;
    v210 = v218;
LABEL_101:
    (*(v261 + 56))(v210, v209, 1, v241);
    sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v210, v233);
LABEL_50:

LABEL_99:
    (v249)(v136, v258);
    return sub_1000038A4(v256, &qword_100523C30, &qword_100451B00);
  }

  v138(v154, v121);
  v163 = v224;
  RoutingSessionConfiguration.context.getter();
  v164 = sub_1000307D0();
  result = (v138)(v163, v121);
  v165 = v260;
  if (v164)
  {
    v166 = *(v260 + 16);
    v167 = v236;
    v168 = v264;
    v169 = v259;
    if (!v166)
    {
LABEL_61:
      __break(1u);
LABEL_62:

      v153 = 1;
      v152 = v228;
LABEL_63:
      (*(v261 + 56))(v152, v153, 1, v241);
      goto LABEL_64;
    }

    v170 = 0;
    v171 = v250;
    while (v170 < *(v260 + 16))
    {
      sub_10002ADF8(v260 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v170, v171, type metadata accessor for HostedRoutingSession);
      v172 = *v171 == v167 && v171[1] == v169;
      if (v172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v190 = v222;
        sub_10002AF68(v250, v222, type metadata accessor for HostedRoutingSession);
        v191 = v221;
        RoutingSessionConfiguration.context.getter();
        v192 = v240;
        if (v168(v191, v240) == enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
        {

          v138(v191, v192);
          v193 = v227;
          sub_10002ADF8(v190, v227, type metadata accessor for HostedRoutingSession);
          (*(v261 + 56))(v193, 0, 1, v241);
          v194 = _swiftEmptyArrayStorage;
          v195 = v233;
          v196 = _swiftEmptyArrayStorage;
          v197 = v193;
        }

        else
        {
          v138(v191, v192);
          v211 = sub_10002CF6C(v260, v190, v243);
          v213 = v212;

          v214 = v227;
          sub_10002ADF8(v190, v227, type metadata accessor for HostedRoutingSession);
          (*(v261 + 56))(v214, 0, 1, v241);
          v195 = v233;
          v194 = v211;
          v196 = v213;
          v197 = v214;
        }

        sub_100021940(v194, v196, v197, v195);

        v187 = v190;
        goto LABEL_97;
      }

      ++v170;
      result = sub_10002AC54(v250, type metadata accessor for HostedRoutingSession);
      if (v166 == v170)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_106;
  }

  if (*(v165 + 16))
  {
    v188 = v261;
    v189 = v227;
    sub_10002ADF8(v165 + ((*(v261 + 80) + 32) & ~*(v261 + 80)), v227, type metadata accessor for HostedRoutingSession);

    (*(v188 + 56))(v189, 0, 1, v241);
    sub_100021940(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v189, v233);

    goto LABEL_98;
  }

LABEL_110:
  __break(1u);
  return result;
}

BOOL sub_10031F678(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v104 = a3;
  v6 = type metadata accessor for RoutingItem.SelectionIndicator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v102 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v105 = &v96 - v16;
  v17 = __chkstk_darwin(v15);
  v103 = &v96 - v18;
  __chkstk_darwin(v17);
  v20 = &v96 - v19;
  v21 = sub_1001BC5A8(&qword_1005241F8, &qword_1004550E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v106 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v96 - v25;
  v27 = sub_100037908() & 1;
  if (v27 != (sub_100037908() & 1))
  {
    v28 = sub_100037908();
    return v28 & 1;
  }

  v100 = v14;
  v30 = type metadata accessor for HostedRoutingItem(0);
  v31 = *(v30 + 68);
  v32 = *(a1 + v31);
  if (v32 != *(a2 + v31))
  {
    return v32 & 1;
  }

  v33 = v30;
  v34 = sub_100258908();
  if (v34 != sub_100258908())
  {
    v28 = sub_100258908();
    return v28 & 1;
  }

  v99 = v7;
  v97 = v6;
  v35 = sub_100258554();
  v37 = v36;
  v39 = v38;
  LOBYTE(v98) = sub_100256C98(v35, v36, v38);
  LODWORD(v98) = v98;
  sub_1000196F4(v35, v37, v39);
  v40 = sub_100258554();
  v42 = v41;
  v44 = v43;
  v45 = sub_100256C98(v40, v41, v43);
  sub_1000196F4(v40, v42, v44);
  if (v98 != v45)
  {
    v46 = sub_100258554();
    v48 = v47;
    v50 = v49;
    v51 = sub_100256C98(v46, v47, v49);
    sub_1000196F4(v46, v48, v50);
    return v51;
  }

  v52 = *(v33 + 32);
  v53 = *(v21 + 48);
  sub_10001D9AC(a1 + v52, v26, &unk_100524E90, &unk_1004519B0);
  v98 = a2;
  sub_10001D9AC(a2 + v52, &v26[v53], &unk_100524E90, &unk_1004519B0);
  v54 = *(v99 + 48);
  v55 = v97;
  v56 = v54(v26, 1, v97);
  v96 = v54;
  if (v56 == 1)
  {
    if (v54(&v26[v53], 1, v55) == 1)
    {
      sub_1000038A4(v26, &unk_100524E90, &unk_1004519B0);
      v57 = v98;
LABEL_24:
      v75 = *a1;
      v76 = a1[1];
      v77 = v104;
      swift_beginAccess();
      v78 = *(v77 + 24);
      if (!v78 || (v75 != *(v77 + 16) || v78 != v76) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if ((RoutingSessionConfiguration.prefersVideoRouting.getter() & 1) == 0)
        {
          goto LABEL_32;
        }

        v79 = sub_100258554();
        v81 = v80;
        v83 = v82;
        v84 = sub_100256CE4(v79, v80, v82);
        sub_1000196F4(v79, v81, v83);
        v85 = sub_100258554();
        v87 = v86;
        v89 = v88;
        v90 = sub_100256CE4(v85, v86, v88);
        sub_1000196F4(v85, v87, v89);
        if (v84 == v90)
        {
LABEL_32:
          if (a1[4] == *(v57 + 32) && a1[5] == *(v57 + 40))
          {
            return 0;
          }

          LOBYTE(v32) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        else
        {
          v91 = sub_100258554();
          v93 = v92;
          v95 = v94;
          LOBYTE(v32) = sub_100256CE4(v91, v92, v94);
          sub_1000196F4(v91, v93, v95);
        }

        return v32 & 1;
      }

      goto LABEL_38;
    }

    goto LABEL_16;
  }

  sub_10001D9AC(v26, v20, &unk_100524E90, &unk_1004519B0);
  if (v54(&v26[v53], 1, v55) == 1)
  {
    (*(v99 + 8))(v20, v55);
LABEL_16:
    sub_1000038A4(v26, &qword_1005241F8, &qword_1004550E0);
    v57 = v98;
    goto LABEL_17;
  }

  v70 = v99;
  v71 = &v26[v53];
  v72 = v102;
  (*(v99 + 32))(v102, v71, v55);
  sub_100004930(&qword_100524208, &type metadata accessor for RoutingItem.SelectionIndicator);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  v74 = *(v70 + 8);
  v74(v72, v97);
  v74(v20, v97);
  v55 = v97;
  sub_1000038A4(v26, &unk_100524E90, &unk_1004519B0);
  v57 = v98;
  if (v73)
  {
    goto LABEL_24;
  }

LABEL_17:
  v58 = *(v21 + 48);
  v59 = a1 + v52;
  v60 = v106;
  sub_10001D9AC(v59, v106, &unk_100524E90, &unk_1004519B0);
  sub_10001D9AC(v57 + v52, v60 + v58, &unk_100524E90, &unk_1004519B0);
  v61 = v96;
  v62 = v96(v60, 1, v55);
  v63 = v99;
  v64 = v100;
  v65 = v105;
  if (v62 == 1)
  {
    goto LABEL_20;
  }

  v66 = v103;
  sub_10001D9AC(v60, v103, &unk_100524E90, &unk_1004519B0);
  if ((*(v63 + 88))(v66, v55) != enum case for RoutingItem.SelectionIndicator.pullable(_:))
  {
    (*(v63 + 8))(v66, v55);
    v61 = v96;
LABEL_20:
    if (v61(v60 + v58, 1, v55) != 1)
    {
      sub_10001D9AC(v60 + v58, v65, &unk_100524E90, &unk_1004519B0);
      if ((*(v63 + 88))(v65, v55) == enum case for RoutingItem.SelectionIndicator.pullable(_:))
      {
        sub_1000038A4(v60 + v58, &unk_100524E90, &unk_1004519B0);
        v67 = v60;
        v68 = &unk_100524E90;
        v69 = &unk_1004519B0;
LABEL_41:
        sub_1000038A4(v67, v68, v69);
        return 0;
      }

      (*(v63 + 8))(v65, v55);
      v61 = v96;
    }

    if (v61(v60, 1, v55) != 1)
    {
      sub_10001D9AC(v60, v64, &unk_100524E90, &unk_1004519B0);
      if ((*(v63 + 88))(v64, v55) == enum case for RoutingItem.SelectionIndicator.selected(_:))
      {
        goto LABEL_37;
      }

      (*(v63 + 8))(v64, v55);
    }

    v68 = &qword_1005241F8;
    v69 = &qword_1004550E0;
    v67 = v60;
    goto LABEL_41;
  }

LABEL_37:
  sub_1000038A4(v60 + v58, &unk_100524E90, &unk_1004519B0);
  sub_1000038A4(v60, &unk_100524E90, &unk_1004519B0);
LABEL_38:
  LOBYTE(v32) = 1;
  return v32 & 1;
}

uint64_t sub_10031FF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(char *, char *), uint64_t a13)
{
  v496 = a8;
  v518 = a7;
  v503 = a5;
  v504 = a6;
  v492 = a4;
  v530 = a3;
  v520 = a2;
  v514 = a9;
  v15 = type metadata accessor for RoutingControls();
  v510 = *(v15 - 8);
  v511 = v15;
  v16 = *(v510 + 64);
  __chkstk_darwin(v15);
  v513 = v456 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v508 = *(v18 - 8);
  v509 = v18;
  v19 = *(v508 + 64);
  __chkstk_darwin(v18);
  v512 = v456 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v490 = (v456 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v478 = *(v24 - 8);
  v479 = v24;
  v25 = *(v478 + 64);
  __chkstk_darwin(v24);
  v477 = v456 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = type metadata accessor for RoutingSessionConfiguration.NowPlayingInfoProperties();
  v522 = *(v523 - 8);
  v27 = *(v522 + 64);
  v28 = __chkstk_darwin(v523);
  v506 = v456 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v505 = v456 - v30;
  v31 = type metadata accessor for HostedRoutingSourceSession(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v540 = (v456 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v526 = type metadata accessor for RoutingSessionConfiguration();
  v525 = *(v526 - 8);
  v34 = *(v525 + 64);
  v35 = __chkstk_darwin(v526);
  v539 = v456 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v461 = v456 - v38;
  __chkstk_darwin(v37);
  v460 = v456 - v39;
  v40 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v507 = v456 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v529 = v456 - v45;
  v46 = __chkstk_darwin(v44);
  v473 = v456 - v47;
  __chkstk_darwin(v46);
  v484 = v456 - v48;
  v49 = sub_1001BC5A8(&qword_100526740, &unk_100458520);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v465 = v456 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v489 = v456 - v54;
  __chkstk_darwin(v53);
  v466 = v456 - v55;
  v56 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v462 = v456 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v469 = v456 - v60;
  v61 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v62 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61 - 8);
  v487 = v456 - v63;
  v64 = type metadata accessor for HostedRoutingSession(0);
  v485 = *(v64 - 8);
  v486 = v64;
  v65 = *(v485 + 64);
  __chkstk_darwin(v64);
  v488 = v456 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v68 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67 - 8);
  v517 = v456 - v69;
  v70 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v515 = *(v70 - 8);
  v516 = v70;
  v71 = *(v515 + 64);
  __chkstk_darwin(v70);
  v499 = v456 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v524 = type metadata accessor for RoutingSessionConfiguration.Context();
  v519 = *(v524 - 8);
  v73 = *(v519 + 64);
  v74 = __chkstk_darwin(v524);
  v459 = v456 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __chkstk_darwin(v74);
  v458 = v456 - v77;
  v78 = __chkstk_darwin(v76);
  v495 = v456 - v79;
  __chkstk_darwin(v78);
  v81 = v456 - v80;
  v82 = type metadata accessor for HostedRoutingItem(0);
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  v85 = __chkstk_darwin(v82);
  v498 = v456 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85);
  v497 = v456 - v88;
  v89 = __chkstk_darwin(v87);
  v531 = (v456 - v90);
  v91 = __chkstk_darwin(v89);
  v535 = v456 - v92;
  v93 = __chkstk_darwin(v91);
  v457 = v456 - v94;
  v95 = __chkstk_darwin(v93);
  v493 = v456 - v96;
  v97 = __chkstk_darwin(v95);
  v470 = v456 - v98;
  v99 = __chkstk_darwin(v97);
  v468 = v456 - v100;
  v101 = __chkstk_darwin(v99);
  v467 = v456 - v102;
  v103 = __chkstk_darwin(v101);
  v491 = (v456 - v104);
  v105 = __chkstk_darwin(v103);
  v483 = v456 - v106;
  v107 = __chkstk_darwin(v105);
  v476 = v456 - v108;
  v109 = __chkstk_darwin(v107);
  v475 = v456 - v110;
  v111 = __chkstk_darwin(v109);
  v472 = v456 - v112;
  v113 = __chkstk_darwin(v111);
  v482 = (v456 - v114);
  v115 = __chkstk_darwin(v113);
  v501 = (v456 - v116);
  v117 = __chkstk_darwin(v115);
  v481 = v456 - v118;
  v119 = __chkstk_darwin(v117);
  v474 = v456 - v120;
  v121 = __chkstk_darwin(v119);
  v471 = v456 - v122;
  v123 = __chkstk_darwin(v121);
  v480 = (v456 - v124);
  v125 = __chkstk_darwin(v123);
  v500 = (v456 - v126);
  v127 = __chkstk_darwin(v125);
  v494 = v456 - v128;
  v129 = __chkstk_darwin(v127);
  v502 = v456 - v130;
  v131 = __chkstk_darwin(v129);
  v534 = v456 - v132;
  v133 = __chkstk_darwin(v131);
  v135 = (v456 - v134);
  __chkstk_darwin(v133);
  v137 = v456 - v136;
  v527 = v31;
  v538 = *(a1 + *(v31 + 44));
  v533 = a1;
  v138 = a1[4];
  v139 = swift_allocObject();
  *(v139 + 16) = 0;
  *(v139 + 24) = 0;
  *(v139 + 32) = -30720;
  *(v139 + 40) = SystemGroupSessionTransport.hostname.getter();
  *(v139 + 48) = v140;
  v521 = v139;
  v141 = *(v138 + 16);
  v532 = v83;
  v537 = v82;
  v528 = v13;
  if (!v141)
  {
    v536 = 0;
LABEL_14:
    v145 = v516;
    goto LABEL_15;
  }

  sub_10002ADF8(v138 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v137, type metadata accessor for HostedRoutingItem);
  v142 = *&v137[*(v82 + 64) + 16];
  v143 = (v142 >> 8) & 6 | (v142 >> 7) & 1;
  if (v143 == 1)
  {
    v148 = v137[*(v537 + 44)];
    LOBYTE(v551) = *sub_10025774C();
    LOBYTE(v541[0]) = v148;
    sub_100248690();
    v149 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    sub_10002AC54(v137, type metadata accessor for HostedRoutingItem);
    if (v149)
    {

      v521 = 0;
      v536 = 34944;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v143 == 2)
  {
    v146 = v137[*(v537 + 44)];
    LOBYTE(v551) = *sub_100257764();
    LOBYTE(v541[0]) = v146;
    sub_100248690();
    v147 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    sub_10002AC54(v137, type metadata accessor for HostedRoutingItem);
    if (v147)
    {

      v521 = 0;
      v536 = 35328;
      goto LABEL_14;
    }

LABEL_13:
    v536 = 0;
    goto LABEL_14;
  }

  if (v143 != 5)
  {
    sub_10002AC54(v137, type metadata accessor for HostedRoutingItem);
    goto LABEL_13;
  }

  v144 = sub_1000328F4();
  sub_10002AC54(v137, type metadata accessor for HostedRoutingItem);
  v145 = v516;
  if (v144)
  {

    v521 = 0;
    v536 = 34944;
  }

  else
  {
    v536 = 0;
  }

LABEL_15:
  RoutingSessionConfiguration.context.getter();
  v150 = v519;
  v151 = v524;
  v463 = *(v519 + 88);
  v464 = v519 + 88;
  v152 = v463(v81, v524);
  v153 = enum case for RoutingSessionConfiguration.Context.platterTarget(_:);
  v155 = *(v150 + 8);
  v154 = v150 + 8;
  v516 = v155;
  v156 = v155(v81, v151);
  if (v152 == v153)
  {
    v157 = _swiftEmptyArrayStorage;
  }

  else if (*(v533 + v527[12]))
  {
    v157 = _swiftEmptyArrayStorage;
  }

  else
  {
    __chkstk_darwin(v156);
    *&v453 = v138;
    *(&v453 + 1) = v533;
    LOBYTE(v454) = v538;
    v455 = v520;
    v158 = v492;

    v159 = v528;
    v157 = sub_10003167C(sub_10033144C, &v452, v158);
    v528 = v159;
  }

  *&v551 = v138;

  sub_100030DE8(v157, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v160 = v551;
  *(&v552 + 1) = sub_1001BC5A8(&qword_1005249A0, &unk_100458530);
  *&v553 = sub_10000462C(&unk_100524CA0, &qword_1005249A0, &unk_100458530);
  *&v551 = v160;
  v161 = sub_1000325E0(&v551);
  sub_100026A44(&v551);
  v557 = _swiftEmptyArrayStorage;
  v550 = _swiftEmptyArrayStorage;
  v162 = v517;
  sub_10001D9AC(v518, v517, &qword_100523C30, &qword_100451B00);
  if ((*(v515 + 48))(v162, 1, v145) == 1)
  {
    sub_1000038A4(v162, &qword_100523C30, &qword_100451B00);
    sub_100323D24(v161, v503, &v557, &v550, v504);

    LODWORD(v161) = 0;
    v163 = v532;
    v164 = v531;
    goto LABEL_29;
  }

  v165 = v499;
  sub_10002AF68(v162, v499, type metadata accessor for HostedRoutingSessionSnapshot);
  v166 = sub_100032A00();
  v167 = *(v496 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
  if (*(v167 + 81) != 1)
  {

    v164 = v531;
    goto LABEL_28;
  }

  v518 = v161;
  v168 = v166;
  v169 = *(v167 + 24);
  v170 = *v533;
  v171 = v533[1];

  LOBYTE(v171) = sub_1001BD5E8(v170, v171, v169);

  if ((v171 & 1) == 0)
  {

    v164 = v531;
    v161 = v518;
    goto LABEL_28;
  }

  __chkstk_darwin(v172);
  v454 = v533;
  v173 = v487;
  v174 = v528;
  sub_10031A180(sub_100248588, v168, v487);
  v528 = v174;

  v175 = (*(v485 + 48))(v173, 1, v486);
  v164 = v531;
  v161 = v518;
  if (v175 == 1)
  {
    sub_1000038A4(v173, &qword_100523620, &unk_1004511D0);
    v165 = v499;
LABEL_28:
    sub_100323D24(v161, v503, &v557, &v550, v504);

    sub_10002AC54(v165, type metadata accessor for HostedRoutingSessionSnapshot);
    LODWORD(v161) = 0;
    v163 = v532;
    goto LABEL_29;
  }

  v492 = v154;
  sub_10002AF68(v173, v488, type metadata accessor for HostedRoutingSession);
  v541[0] = &_swiftEmptySetSingleton;
  v549 = &_swiftEmptySetSingleton;
  v548 = &_swiftEmptySetSingleton;
  v248 = sub_100261164();
  v249 = *(v248 + 16);
  if (v249)
  {
    v250 = v248 + ((*(v532 + 80) + 32) & ~*(v532 + 80));
    v251 = *(v532 + 72);
    v252 = v537;
    do
    {
      sub_10002ADF8(v250, v135, type metadata accessor for HostedRoutingItem);
      v256 = *(v135 + *(v252 + 64) + 16);
      v257 = (v256 >> 8) & 6 | (v256 >> 7) & 1;
      if (v257 == 3 || v257 == 4 || v257 == 5)
      {
        v253 = *v135;
        v254 = v135[1];

        v255 = v254;
        v252 = v537;
        sub_100008318(&v551, v253, v255);
      }

      sub_10002AC54(v135, type metadata accessor for HostedRoutingItem);
      v250 += v251;
      --v249;
    }

    while (v249);

    v164 = v531;
    v161 = v518;
  }

  else
  {

    v252 = v537;
  }

  v547 = &_swiftEmptySetSingleton;
  v545 = &_swiftEmptySetSingleton;
  v543 = &_swiftEmptySetSingleton;
  v163 = v532;
  v517 = *(v161 + 16);
  if (v517)
  {
    v282 = v517;
    v283 = v518 + ((*(v532 + 80) + 32) & ~*(v532 + 80));
    v284 = *(v532 + 72);
    v285 = (v534 + 16);
    do
    {
      sub_10002ADF8(v283, v534, type metadata accessor for HostedRoutingItem);
      v291 = *(v285 + *(v252 + 64));
      v292 = (v291 >> 8) & 6 | (v291 >> 7) & 1;
      if (v292 == 3 || v292 == 4 || v292 == 5)
      {
        v286 = v534;
        v287 = *v534;
        v288 = *(v534 + 8);

        v289 = v288;
        v252 = v537;
        sub_100008318(&v551, v287, v289);

        v290 = v286;
        v163 = v532;
      }

      else
      {
        v290 = v534;
      }

      sub_10002AC54(v290, type metadata accessor for HostedRoutingItem);
      v283 += v284;
      --v282;
    }

    while (v282);
  }

  result = sub_100261164();
  v293 = result;
  v294 = 0;
  v295 = *(result + 16);
  v154 = v492;
  while (1)
  {
    if (v295 == v294)
    {

      v328 = 0;
      v329 = v537;
      v299 = v518;
      while (v517 != v328)
      {
        if (v328 >= *(v299 + 16))
        {
          goto LABEL_281;
        }

        v330 = v494;
        sub_10002ADF8(v299 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v328++, v494, type metadata accessor for HostedRoutingItem);
        v331 = *(v330 + *(v329 + 36));
        result = sub_10002AC54(v330, type metadata accessor for HostedRoutingItem);
        if ((v331 & 1) == 0)
        {
          goto LABEL_136;
        }
      }

LABEL_111:
      v300 = v541[0];
      v301 = v547;
      if (sub_100218144(v541[0], v547))
      {
        v502 = v301;
        v302 = v549;
        v303 = v545;
        v304 = sub_100218144(v549, v545);
        v305 = v499;
        v487 = v302;
        if ((v304 & 1) == 0)
        {

          sub_100323D24(v299, v503, &v557, &v550, v504);

          v332 = v305;
          goto LABEL_139;
        }

        v306 = v548;
        v307 = v543;
        result = sub_100218144(v548, v543);
        if (result)
        {
          v504 = v307;
          v456[1] = v306;
          v456[2] = v303;
          v546 = &_swiftEmptySetSingleton;
          v308 = *(v488 + 16);
          v309 = *(v308 + 16);
          v494 = v300;
          if (v309)
          {
            v310 = 0;
            v311 = ((*(v163 + 80) + 32) & ~*(v163 + 80));
            v515 = v311 + v308;
            v312 = *(v163 + 72);
            v503 = v311;
            v313 = v311 + v299;
            v534 = _swiftEmptyArrayStorage;
            v314 = v493;
            v315 = v500;
            do
            {
              sub_10002ADF8(v515 + v312 * v310, v315, type metadata accessor for HostedRoutingItem);
              v317 = *(v518 + 16);
              if (v317)
              {
                v318 = v313;
                v319 = v474;
                while (1)
                {
                  sub_10002ADF8(v318, v319, type metadata accessor for HostedRoutingItem);
                  v320 = *v319 == *v500 && v319[1] == v500[1];
                  if (v320 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  sub_10002AC54(v319, type metadata accessor for HostedRoutingItem);
                  v318 += v312;
                  if (!--v317)
                  {
                    goto LABEL_117;
                  }
                }

                v321 = v471;
                sub_10002AF68(v319, v471, type metadata accessor for HostedRoutingItem);
                v322 = v321;
                v323 = v480;
                sub_10002AF68(v322, v480, type metadata accessor for HostedRoutingItem);
                v324 = *v323;
                v325 = v323[1];

                sub_100008318(&v551, v324, v325);

                sub_10002ADF8(v323, v481, type metadata accessor for HostedRoutingItem);
                swift_beginAccess();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v534 = sub_100026868(0, *(v534 + 16) + 1, 1, v534, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v327 = *(v534 + 16);
                v326 = *(v534 + 24);
                if (v327 >= v326 >> 1)
                {
                  v534 = sub_100026868(v326 > 1, v327 + 1, 1, v534, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v316 = v534;
                *(v534 + 16) = v327 + 1;
                sub_10002AF68(v481, v503 + v316 + v327 * v312, type metadata accessor for HostedRoutingItem);
                v557 = v316;
                swift_endAccess();
                sub_10002AC54(v480, type metadata accessor for HostedRoutingItem);
LABEL_117:
                v314 = v493;
                v315 = v500;
              }

              ++v310;
              result = sub_10002AC54(v315, type metadata accessor for HostedRoutingItem);
            }

            while (v310 != v309);
          }

          else
          {
            v534 = _swiftEmptyArrayStorage;
            v314 = v493;
          }

          v351 = *(v488 + 24);
          v352 = *(v351 + 16);
          if (v352)
          {
            v353 = 0;
            v354 = (*(v532 + 80) + 32) & ~*(v532 + 80);
            v355 = v351 + v354;
            v356 = *(v532 + 72);
            v500 = v354;
            v515 = v518 + v354;
            v503 = _swiftEmptyArrayStorage;
            v357 = v501;
            do
            {
              sub_10002ADF8(v355 + v356 * v353, v357, type metadata accessor for HostedRoutingItem);
              v358 = *(v518 + 16);
              if (v358)
              {
                v359 = v515;
                v360 = v475;
                while (1)
                {
                  sub_10002ADF8(v359, v360, type metadata accessor for HostedRoutingItem);
                  v361 = *v360 == *v501 && v360[1] == v501[1];
                  if (v361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  sub_10002AC54(v360, type metadata accessor for HostedRoutingItem);
                  v359 += v356;
                  if (!--v358)
                  {
                    goto LABEL_154;
                  }
                }

                v362 = v472;
                sub_10002AF68(v360, v472, type metadata accessor for HostedRoutingItem);
                v363 = v362;
                v364 = v482;
                sub_10002AF68(v363, v482, type metadata accessor for HostedRoutingItem);
                v365 = *v364;
                v366 = v364[1];

                sub_100008318(&v551, v365, v366);

                sub_10002ADF8(v364, v483, type metadata accessor for HostedRoutingItem);
                swift_beginAccess();
                v367 = v503;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v367 = sub_100026868(0, v367[2] + 1, 1, v367, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v369 = v367[2];
                v368 = v367[3];
                if (v369 >= v368 >> 1)
                {
                  v367 = sub_100026868(v368 > 1, v369 + 1, 1, v367, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                }

                v367[2] = v369 + 1;
                sub_10002AF68(v483, v500 + v367 + v369 * v356, type metadata accessor for HostedRoutingItem);
                v503 = v367;
                v550 = v367;
                swift_endAccess();
                sub_10002AC54(v482, type metadata accessor for HostedRoutingItem);
LABEL_154:
                v314 = v493;
              }

              ++v353;
              v357 = v501;
              result = sub_10002AC54(v501, type metadata accessor for HostedRoutingItem);
            }

            while (v353 != v352);
          }

          else
          {
            v503 = _swiftEmptyArrayStorage;
          }

          v370 = *(v534 + 16);
          if (v370)
          {
            v371 = 0;
            v372 = v532;
            v373 = (v534 + ((*(v532 + 80) + 32) & ~*(v532 + 80)));
            do
            {
              if (v371 >= *(v534 + 16))
              {
                goto LABEL_284;
              }

              v374 = v476;
              sub_10002ADF8(&v373[*(v372 + 72) * v371], v476, type metadata accessor for HostedRoutingItem);
              if (sub_100258854() || sub_10025629C(*(v374 + *(v537 + 64)), *(v374 + *(v537 + 64) + 8), *(v374 + *(v537 + 64) + 16)))
              {
                result = sub_10002AC54(v374, type metadata accessor for HostedRoutingItem);
              }

              else
              {
                v375 = v373;
                v376 = v372;
                v377 = v371;
                v378 = sub_100258554();
                v380 = v379;
                v382 = v381;
                LODWORD(v515) = sub_100256C98(v378, v379, v381);
                v383 = v378;
                v371 = v377;
                v372 = v376;
                v373 = v375;
                sub_1000196F4(v383, v380, v382);
                result = sub_10002AC54(v374, type metadata accessor for HostedRoutingItem);
                if ((v515 & 1) == 0)
                {
                  v314 = v493;
                  goto LABEL_181;
                }
              }

              ++v371;
              v314 = v493;
            }

            while (v370 != v371);
            v371 = 0;
          }

          else
          {
            v371 = 0;
            v372 = v532;
          }

LABEL_181:
          v485 = *(v372 + 56);
          v486 = v372 + 56;
          result = (v485)(v469, 1, 1, v537);
          v384 = v491;
          if (v517)
          {
            v483 = v371;
            v385 = 0;
            v386 = (*(v372 + 80) + 32) & ~*(v372 + 80);
            v501 = (v518 + v386);
            v500 = _swiftEmptyArrayStorage;
            v387 = v546;
            v515 = (v546 + 56);
            v482 = v386;
            while (1)
            {
              if (v385 >= *(v518 + 16))
              {
                goto LABEL_282;
              }

              v388 = *(v532 + 72);
              sub_10002ADF8(v501 + v388 * v385, v384, type metadata accessor for HostedRoutingItem);
              if (!*(v387 + 2))
              {
                goto LABEL_196;
              }

              v389 = *v491;
              v390 = v491[1];
              v391 = *(v387 + 5);
              Hasher.init(_seed:)();
              String.hash(into:)();
              v392 = Hasher._finalize()();
              v393 = -1 << v387[32];
              v394 = v392 & ~v393;
              if ((*(v515 + ((v394 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v394))
              {
                v395 = ~v393;
                while (1)
                {
                  v396 = (*(v387 + 6) + 16 * v394);
                  v397 = *v396 == v389 && v396[1] == v390;
                  if (v397 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v394 = (v394 + 1) & v395;
                  if (((*(v515 + ((v394 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v394) & 1) == 0)
                  {
                    goto LABEL_196;
                  }
                }

                v384 = v491;
                result = sub_10002AC54(v491, type metadata accessor for HostedRoutingItem);
              }

              else
              {
LABEL_196:
                v384 = v491;
                v398 = sub_1002588CC();
                v399 = v537;
                if (!v398)
                {
                  if (sub_100032ED8())
                  {
                    sub_10002ADF8(v384, v470, type metadata accessor for HostedRoutingItem);
                    swift_beginAccess();
                    v401 = v503;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v401 = sub_100026868(0, v401[2] + 1, 1, v401, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v403 = v401[2];
                    v402 = v401[3];
                    if (v403 >= v402 >> 1)
                    {
                      v401 = sub_100026868(v402 > 1, v403 + 1, 1, v401, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v401[2] = v403 + 1;
                    sub_10002AF68(v470, v401 + v386 + v403 * v388, type metadata accessor for HostedRoutingItem);
                    v503 = v401;
                    v550 = v401;
                    goto LABEL_230;
                  }

                  v409 = sub_100258554();
                  v411 = v410;
                  v413 = v412;
                  v414 = sub_100256C98(v409, v410, v412);
                  sub_1000196F4(v409, v411, v413);
                  if (!v414)
                  {
                    sub_10002ADF8(v384, v468, type metadata accessor for HostedRoutingItem);
                    swift_beginAccess();
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v534 = sub_100026868(0, *(v534 + 16) + 1, 1, v534, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v386 = v482;
                    v423 = *(v534 + 16);
                    v422 = *(v534 + 24);
                    if (v423 >= v422 >> 1)
                    {
                      v534 = sub_100026868(v422 > 1, v423 + 1, 1, v534, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v424 = v534;
                    *(v534 + 16) = v423 + 1;
                    sub_10002AF68(v468, v424 + v386 + v423 * v388, type metadata accessor for HostedRoutingItem);
                    v557 = v424;
                    goto LABEL_230;
                  }

                  result = swift_beginAccess();
                  v415 = v534;
                  v416 = *(v534 + 16);
                  if (v416 < v483)
                  {
                    goto LABEL_286;
                  }

                  sub_10002ADF8(v384, v466, type metadata accessor for HostedRoutingItem);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v386 = v482;
                  if (!isUniquelyReferenced_nonNull_native || v416 >= v415[3] >> 1)
                  {
                    v415 = sub_100026868(isUniquelyReferenced_nonNull_native, v416 + 1, 1, v415, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                  }

                  v418 = v483;
                  v419 = v415 + v386 + v388 * v483;
                  swift_arrayDestroy();
                  v534 = v415;
                  v420 = v415[2];
                  if (v388 < 0 || v388 >= ((v420 - v418) * v388))
                  {
                    swift_arrayInitWithTakeFrontToBack();
                    ++*(v534 + 16);
                    v421 = v466;
                    if (v388 > 0)
                    {
LABEL_227:
                      sub_10002ADF8(v421, v419, type metadata accessor for HostedRoutingItem);
                    }
                  }

                  else
                  {
                    if (v388)
                    {
                      swift_arrayInitWithTakeBackToFront();
                      ++*(v534 + 16);
                      v421 = v466;
                      goto LABEL_227;
                    }

                    *(v534 + 16) = v420 + 1;
                    v421 = v466;
                  }

                  sub_1000038A4(v421, &qword_100526740, &unk_100458520);
                  v557 = v534;
LABEL_230:
                  swift_endAccess();
                  v384 = v491;
                  goto LABEL_231;
                }

                if ((sub_100037908() & 1) == 0)
                {
                  if (sub_100258908())
                  {
                    sub_10002ADF8(v384, v467, type metadata accessor for HostedRoutingItem);
                    v404 = v500;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v404 = sub_100026868(0, v404[2] + 1, 1, v404, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    v406 = v404[2];
                    v405 = v404[3];
                    if (v406 >= v405 >> 1)
                    {
                      v500 = sub_100026868(v405 > 1, v406 + 1, 1, v404, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
                    }

                    else
                    {
                      v500 = v404;
                    }

                    v407 = v491;
                    sub_10002AC54(v491, type metadata accessor for HostedRoutingItem);
                    v408 = v500;
                    v500[2] = v406 + 1;
                    v384 = v407;
                    result = sub_10002AF68(v467, v408 + v386 + v406 * v388, type metadata accessor for HostedRoutingItem);
                    goto LABEL_232;
                  }

LABEL_231:
                  result = sub_10002AC54(v384, type metadata accessor for HostedRoutingItem);
LABEL_232:
                  v314 = v493;
                  goto LABEL_185;
                }

                v400 = v469;
                sub_1000038A4(v469, &qword_100523C18, &qword_100451AF0);
                sub_10002AF68(v384, v400, type metadata accessor for HostedRoutingItem);
                result = (v485)(v400, 0, 1, v399);
              }

              v314 = v493;
LABEL_185:
              if (++v385 == v517)
              {
                goto LABEL_235;
              }
            }
          }

          v500 = _swiftEmptyArrayStorage;
LABEL_235:

          v425 = *(v534 + 16);
          if (v425)
          {
            v426 = 0;
            v163 = v532;
            v518 = v534 + ((*(v532 + 80) + 32) & ~*(v532 + 80));
            v154 = v492;
            do
            {
              if (v426 >= *(v534 + 16))
              {
                goto LABEL_285;
              }

              sub_10002ADF8(v518 + *(v163 + 72) * v426, v314, type metadata accessor for HostedRoutingItem);
              if (sub_100258854())
              {
                result = sub_10002AC54(v314, type metadata accessor for HostedRoutingItem);
              }

              else
              {
                v427 = sub_10025629C(*(v314 + *(v537 + 64)), *(v314 + *(v537 + 64) + 8), *(v314 + *(v537 + 64) + 16));
                result = sub_10002AC54(v314, type metadata accessor for HostedRoutingItem);
                if (!v427)
                {
                  goto LABEL_245;
                }
              }

              ++v426;
              v314 = v493;
            }

            while (v425 != v426);
            v426 = 0;
          }

          else
          {
            v426 = 0;
            v163 = v532;
            v154 = v492;
          }

LABEL_245:

          v428 = v500[2];
          if (!v428)
          {

LABEL_262:
            v438 = v469;
            v439 = v462;
            sub_10001D9AC(v469, v462, &qword_100523C18, &qword_100451AF0);
            v440 = (*(v163 + 48))(v439, 1, v537);
            v164 = v531;
            if (v440 == 1)
            {
              sub_1000038A4(v438, &qword_100523C18, &qword_100451AF0);
              sub_10002AC54(v499, type metadata accessor for HostedRoutingSessionSnapshot);
              sub_10002AC54(v488, type metadata accessor for HostedRoutingSession);
              sub_1000038A4(v439, &qword_100523C18, &qword_100451AF0);
            }

            else
            {
              v441 = v457;
              sub_10002AF68(v439, v457, type metadata accessor for HostedRoutingItem);
              swift_beginAccess();
              v442 = v465;
              sub_10002ADF8(v441, v465, type metadata accessor for HostedRoutingItem);
              sub_10032E0AC(0, 0, v442);
              swift_endAccess();
              sub_10002AC54(v441, type metadata accessor for HostedRoutingItem);
              sub_1000038A4(v438, &qword_100523C18, &qword_100451AF0);
              sub_10002AC54(v499, type metadata accessor for HostedRoutingSessionSnapshot);
              sub_10002AC54(v488, type metadata accessor for HostedRoutingSession);
            }

            LODWORD(v161) = 1;
LABEL_29:
            v537 = a11;
            v176 = sub_1000328F4();
            LODWORD(v518) = v161;
            if (v176)
            {
              goto LABEL_30;
            }

            v203 = v495;
            RoutingSessionConfiguration.context.getter();
            v204 = sub_1000334F0();
            v205 = v516(v203, v524);
            if (v204 & 1) == 0 || (v538 & 1) != 0 || (sub_1000325DC(v205))
            {
              goto LABEL_30;
            }

            v492 = v154;
            v206 = v527[7];
            v207 = v533;
            v208 = v484;
            sub_10001D9AC(v533 + v206, v484, &qword_100523640, qword_100451520);
            v209 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
            v210 = *(*(v209 - 8) + 48);
            if (v210(v208, 1, v209) == 1)
            {
              sub_1000038A4(v208, &qword_100523640, qword_100451520);
              LOBYTE(v161) = v518;
              goto LABEL_30;
            }

            v258 = *(v208 + 56);
            v259 = *(v208 + 60);
            v520 = *(v208 + 48);
            LODWORD(v534) = v258;
            LODWORD(v517) = v259;
            sub_100248888(v520, v258, v259);
            sub_10002AC54(v208, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            v260 = v207 + v206;
            v261 = v473;
            sub_10001D9AC(v260, v473, &qword_100523640, qword_100451520);
            if (v210(v261, 1, v209) == 1)
            {
              sub_1000038A4(v261, &qword_100523640, qword_100451520);
              v262 = v520;
              v263 = v534;
              v264 = v517;
LABEL_275:
              sub_1002488FC(v262, v263, v264);
              LOBYTE(v161) = v518;
              goto LABEL_30;
            }

            v265 = v517;
            v266 = *(v261 + 8);

            sub_10002AC54(v261, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            if (!v266)
            {
              v262 = v520;
              v263 = v534;
              v264 = v265;
              goto LABEL_275;
            }

            v267 = v534;
            if (v265 != 1)
            {
              LOBYTE(v161) = v518;
              if (v265)
              {
                v346 = v520;
                v347 = v534;
                v348 = v265;
LABEL_271:
                sub_1002488FC(v346, v347, v348);
                goto LABEL_30;
              }

              v268 = [objc_opt_self() server];
              v269 = [v268 nowPlayingServer];

              v270 = [v269 localOriginClient];
              v271 = [v270 deviceInfo];
              v272 = [v271 systemMediaApplication];

              if (!v272)
              {
                sub_1002488FC(v520, v267, 0);

                goto LABEL_30;
              }

              v517 = v270;
              v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v275 = v274;

              v276 = v525;
              v277 = v460;
              v278 = v526;
              (*(v525 + 16))(v460, v496 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v526);
              v279 = v458;
              RoutingSessionConfiguration.context.getter();
              (*(v276 + 8))(v277, v278);
              v280 = v524;
              if (v463(v279, v524) == enum case for RoutingSessionConfiguration.Context.app(_:))
              {
                (*(v519 + 96))(v279, v280);
                if (*v279 != v273 || *(v279 + 1) != v275)
                {
                  v448 = *(v279 + 1);
                  v449 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  LOBYTE(v161) = v518;
                  v443 = v520;
                  if ((v449 & 1) == 0)
                  {
                    sub_1002488FC(v520, v534, 0);

LABEL_30:
                    if ((v161 & 1) == 0)
                    {
                      swift_beginAccess();
                      v177 = v557[2];
                      if (v177)
                      {
                        v178 = v557 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
                        swift_beginAccess();
                        swift_beginAccess();
                        v520 = 0;
                        v519 = 0;
                        v534 = *(v163 + 72);
                        LODWORD(v524) = 255;
                        do
                        {
                          sub_10002ADF8(v178, v164, type metadata accessor for HostedRoutingItem);
                          v180 = *v164;
                          v179 = v164[1];

                          sub_10002AC54(v164, type metadata accessor for HostedRoutingItem);
                          if (*(a10 + 16) && (v181 = sub_10000698C(v180, v179), (v182 & 1) != 0))
                          {
                            v183 = *(*(a10 + 56) + 8 * v181);
                            if (*(v183 + 32) == 2)
                            {
                              v185 = *(v183 + 16);
                              v184 = *(v183 + 24);
                              if (v524 == 255)
                              {
                                v189 = v537;
                                v190 = *(v537 + 24);
                                *(v537 + 16) = v180;
                                *(v189 + 24) = v179;

                                LODWORD(v524) = 2;
                                v520 = v185;
                                v519 = v184;
                              }

                              else
                              {
                                *&v551 = *(v183 + 16);
                                *(&v551 + 1) = v184;
                                LOBYTE(v552) = 2;
                                v541[0] = v520;
                                v541[1] = v519;
                                v542 = v524;
                                sub_100331484();

                                if (dispatch thunk of static Comparable.< infix(_:_:)())
                                {
                                  v186 = v537;
                                  v187 = *(v537 + 24);
                                  *(v537 + 16) = v180;
                                  *(v186 + 24) = v179;

                                  v188 = *(v183 + 24);
                                  v520 = *(v183 + 16);
                                  v519 = v188;
                                  LODWORD(v524) = *(v183 + 32);
                                }

                                else
                                {
                                }
                              }

                              v163 = v532;
                            }

                            else
                            {
                            }

                            v164 = v531;
                          }

                          else
                          {
                          }

                          v178 += v534;
                          --v177;
                        }

                        while (v177);
                      }
                    }

                    sub_10002ADF8(v533, v540, type metadata accessor for HostedRoutingSourceSession);
                    (*(v525 + 16))(v539, v530, v526);
                    swift_beginAccess();
                    v191 = v557;
                    v192 = v557[2];
                    v193 = _swiftEmptyArrayStorage;
                    v534 = v557;
                    if (v192)
                    {
                      *&v551 = _swiftEmptyArrayStorage;
                      sub_10002A42C(0, v192, 0);
                      v193 = v551;
                      v194 = (*(v163 + 80) + 32) & ~*(v163 + 80);
                      v195 = v191 + v194;
                      v196 = *(v163 + 72);
                      v197 = v497;
                      do
                      {
                        v198 = v535;
                        sub_10002ADF8(v195, v535, type metadata accessor for HostedRoutingItem);
                        sub_100324E64(v198, v540, v538, v536, v539, v537, v197);
                        sub_10002AC54(v198, type metadata accessor for HostedRoutingItem);
                        *&v551 = v193;
                        v200 = *(v193 + 2);
                        v199 = *(v193 + 3);
                        if (v200 >= v199 >> 1)
                        {
                          sub_10002A42C(v199 > 1, v200 + 1, 1);
                          v193 = v551;
                        }

                        *(v193 + 2) = v200 + 1;
                        sub_10002AF68(v197, &v193[v194 + v200 * v196], type metadata accessor for HostedRoutingItem);
                        v195 += v196;
                        --v192;
                      }

                      while (v192);
                      v201 = v523;
                      v202 = v522;
                      v163 = v532;
                    }

                    else
                    {
                      v201 = v523;
                      v202 = v522;
                    }

                    v546 = v193;
                    swift_beginAccess();
                    v211 = v550;
                    v212 = v550[2];
                    v213 = _swiftEmptyArrayStorage;
                    v531 = v550;
                    if (v212)
                    {
                      *&v551 = _swiftEmptyArrayStorage;
                      sub_10002A42C(0, v212, 0);
                      v213 = v551;
                      v214 = (*(v163 + 80) + 32) & ~*(v163 + 80);
                      v215 = v211 + v214;
                      v216 = *(v163 + 72);
                      v217 = v498;
                      do
                      {
                        v218 = v535;
                        sub_10002ADF8(v215, v535, type metadata accessor for HostedRoutingItem);
                        sub_100324E64(v218, v540, v538, v536, v539, v537, v217);
                        sub_10002AC54(v218, type metadata accessor for HostedRoutingItem);
                        *&v551 = v213;
                        v220 = v213[2];
                        v219 = v213[3];
                        if (v220 >= v219 >> 1)
                        {
                          sub_10002A42C(v219 > 1, v220 + 1, 1);
                          v213 = v551;
                        }

                        v213[2] = v220 + 1;
                        sub_10002AF68(v217, v213 + v214 + v220 * v216, type metadata accessor for HostedRoutingItem);
                        v215 += v216;
                        --v212;
                      }

                      while (v212);
                      v201 = v523;
                      v202 = v522;
                    }

                    v544 = v213;
                    if ((v518 & 1) == 0)
                    {
                      v221 = v528;
                      sub_10003293C(a12, a13);
                      sub_10003293C(a12, a13);
                      v528 = v221;
                    }

                    v222 = v529;
                    v223 = v505;
                    v224 = v506;

                    sub_10001D9AC(v533 + v527[7], v222, &qword_100523640, qword_100451520);
                    RoutingSessionConfiguration.nowPlayingInfoProperties.getter();
                    static RoutingSessionConfiguration.NowPlayingInfoProperties.trackInfo.getter();
                    sub_100004930(&qword_100526748, &type metadata accessor for RoutingSessionConfiguration.NowPlayingInfoProperties);
                    LOBYTE(v222) = dispatch thunk of SetAlgebra.isSuperset(of:)();
                    v225 = *(v202 + 8);
                    v225(v224, v201);
                    v225(v223, v201);
                    if (v222 & 1) != 0 || (RoutingSessionConfiguration.nowPlayingInfoProperties.getter(), static RoutingSessionConfiguration.NowPlayingInfoProperties.extendedTrackInfo.getter(), v226 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v225(v224, v201), v225(v223, v201), (v226))
                    {
                      RoutingSessionConfiguration.nowPlayingInfoProperties.getter();
                      static RoutingSessionConfiguration.NowPlayingInfoProperties.extendedTrackInfo.getter();
                      v227 = dispatch thunk of SetAlgebra.isSuperset(of:)();
                      v225(v224, v201);
                      v225(v223, v201);
                      v228 = v529;
                      if ((v227 & 1) == 0)
                      {
                        v229 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
                        if (!(*(*(v229 - 8) + 48))(v228, 1, v229))
                        {
                          RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.init(storeIdentifier:subscriptionIdentifier:isrc:)();
                          v230 = v228 + *(v229 + 40);
                          RoutingSession.NowPlayingInfo.TrackInfo.extendedInfo.setter();
                        }
                      }
                    }

                    else
                    {
                      v231 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
                      v228 = v529;
                      if (!(*(*(v231 - 8) + 48))(v529, 1, v231))
                      {
                        v232 = v490;
                        default argument 6 of RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
                        v454 = v232;
                        v452 = 0u;
                        v453 = 0u;
                        v233 = v477;
                        RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
                        (*(v478 + 40))(v228 + *(v231 + 40), v233, v479);
                      }
                    }

                    v234 = v533;
                    v235 = v533[1];
                    v537 = *v533;
                    v535 = v546;
                    v534 = v544;
                    v236 = v507;
                    sub_10001D9AC(v228, v507, &qword_100523640, qword_100451520);
                    v237 = v527;
                    v238 = v512;
                    (*(v508 + 16))(v512, v234 + v527[18], v509);
                    LODWORD(v532) = *(v234 + v237[12]);
                    v239 = v237[17];
                    LODWORD(v531) = *(v234 + v237[16]);
                    LODWORD(v530) = *(v234 + v239);
                    v240 = (v234 + v237[10]);
                    v241 = *v240;
                    v242 = *(v240 + 4);
                    v243 = v513;
                    (*(v510 + 16))(v513, v234 + v237[8], v511);
                    v244 = v234 + v237[15];
                    v245 = *(v244 + 4);
                    v554 = *(v244 + 3);
                    v555 = v245;
                    v556 = *(v244 + 10);
                    v246 = *(v244 + 2);
                    v552 = *(v244 + 1);
                    v553 = v246;
                    v551 = *v244;

                    sub_10001D9AC(&v551, v541, &qword_100523B20, &unk_1004519F0);
                    LOBYTE(v541[0]) = v242;
                    sub_1002616D0(v537, v235, v535, v534, v236, v238, v538, v532, v514, v531, v530, v241 | (v242 << 32), v243, &v551);
                    sub_100019550(v521, 0, v536);
                    sub_10002AC54(v540, type metadata accessor for HostedRoutingSourceSession);
                    (*(v525 + 8))(v539, v526);
                    return sub_1000038A4(v529, &qword_100523640, qword_100451520);
                  }

                  goto LABEL_268;
                }

                v281 = *(v279 + 1);
              }

              else
              {

                v516(v279, v280);
              }

              LOBYTE(v161) = v518;
              v443 = v520;
LABEL_268:
              if ((*(v533 + v527[17]) & 1) == 0)
              {
                v444 = v535;
                sub_100257FDC(*v533, v533[1], v535);
                swift_beginAccess();
                v445 = v465;
                sub_10002AF68(v444, v465, type metadata accessor for HostedRoutingItem);
                sub_10032E0AC(0, 0, v445);
                swift_endAccess();
              }

              v346 = v443;
              v347 = v534;
              v348 = 0;
              goto LABEL_271;
            }

            v333 = [objc_opt_self() server];
            v334 = [v333 nowPlayingServer];

            v161 = [v334 localOriginClient];
            v335 = [v161 deviceInfo];
            v336 = [v335 systemPodcastApplication];

            if (v336)
            {
              v517 = v161;
              v337 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v339 = v338;

              v340 = v525;
              v341 = v461;
              v342 = v526;
              (*(v525 + 16))(v461, v496 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v526);
              v343 = v459;
              RoutingSessionConfiguration.context.getter();
              (*(v340 + 8))(v341, v342);
              v344 = v524;
              if (v463(v343, v524) != enum case for RoutingSessionConfiguration.Context.app(_:))
              {

                v516(v343, v344);
                goto LABEL_273;
              }

              (*(v519 + 96))(v343, v344);
              if (*v343 == v337 && *(v343 + 1) == v339)
              {
                v345 = *(v343 + 1);

LABEL_273:
                v161 = v517;
LABEL_274:
                v446 = v535;
                sub_100257FDC(*v533, v533[1], v535);
                swift_beginAccess();
                v447 = v465;
                sub_10002AF68(v446, v465, type metadata accessor for HostedRoutingItem);
                sub_10032E0AC(0, 0, v447);
                swift_endAccess();

                v262 = v520;
                v263 = v534;
                v264 = 1;
                goto LABEL_275;
              }

              v450 = *(v343 + 1);
              v451 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v161 = v517;
              if (v451)
              {
                goto LABEL_274;
              }

              v349 = v520;
              v350 = v534;
            }

            else
            {
              v349 = v520;
              v350 = v267;
            }

            sub_1002488FC(v349, v350, 1u);

            LOBYTE(v161) = v518;
            goto LABEL_30;
          }

          v429 = (*(v163 + 80) + 32) & ~*(v163 + 80);
          v430 = v500 + v429;
          result = swift_beginAccess();
          v431 = *(v163 + 72);
          while (1)
          {
            v433 = v534;
            v434 = *(v534 + 16);
            if (v434 < v426)
            {
              goto LABEL_283;
            }

            sub_10002ADF8(v430, v489, type metadata accessor for HostedRoutingItem);
            v435 = swift_isUniquelyReferenced_nonNull_native();
            if (!v435 || v434 >= v433[3] >> 1)
            {
              v433 = sub_100026868(v435, v434 + 1, 1, v433, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
            }

            v436 = v433 + v429 + v431 * v426;
            swift_arrayDestroy();
            v437 = v433[2];
            v534 = v433;
            if (v431 < 0 || v431 >= ((v437 - v426) * v431))
            {
              swift_arrayInitWithTakeFrontToBack();
              ++v433[2];
              v432 = v489;
              if (v431 <= 0)
              {
                goto LABEL_249;
              }
            }

            else
            {
              if (!v431)
              {
                v433[2] = v437 + 1;
                v432 = v489;
                goto LABEL_249;
              }

              swift_arrayInitWithTakeBackToFront();
              ++v433[2];
              v432 = v489;
            }

            sub_10002ADF8(v432, v436, type metadata accessor for HostedRoutingItem);
LABEL_249:
            result = sub_1000038A4(v432, &qword_100526740, &unk_100458520);
            v430 += v431;
            if (!--v428)
            {
              v557 = v534;
              swift_endAccess();

              v163 = v532;
              v154 = v492;
              goto LABEL_262;
            }
          }
        }
      }

LABEL_136:

      sub_100323D24(v299, v503, &v557, &v550, v504);

      v332 = v499;
LABEL_139:
      sub_10002AC54(v332, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_10002AC54(v488, type metadata accessor for HostedRoutingSession);
      LODWORD(v161) = 0;
      goto LABEL_29;
    }

    v296 = v537;
    if (v294 >= *(v293 + 16))
    {
      break;
    }

    v297 = v502;
    sub_10002ADF8(v293 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v294++, v502, type metadata accessor for HostedRoutingItem);
    v298 = *(v297 + *(v296 + 36));
    result = sub_10002AC54(v297, type metadata accessor for HostedRoutingItem);
    if ((v298 & 1) == 0)
    {

      v299 = v518;
      goto LABEL_111;
    }
  }

  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
  return result;
}