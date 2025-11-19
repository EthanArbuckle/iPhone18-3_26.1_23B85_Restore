void sub_10020E4B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v227 = a4;
  v218 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v216 = *(v7 - 8);
  v217 = v7;
  v8 = *(v216 + 64);
  __chkstk_darwin(v7);
  v213 = &v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v214 = *(v10 - 8);
  v215 = v10;
  v11 = *(v214 + 8);
  __chkstk_darwin(v10);
  v212 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for NearbyGroup.Member();
  v225 = *(v222 - 8);
  v13 = *(v225 + 64);
  v14 = __chkstk_darwin(v222);
  v226 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v223 = &v211 - v16;
  v17 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v221 = &v211 - v19;
  v20 = type metadata accessor for String.Encoding();
  v219 = *(v20 - 8);
  v220 = v20;
  v21 = *(v219 + 64);
  __chkstk_darwin(v20);
  v23 = &v211 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v211 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v224 = v4;
  v29 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v28 = v29;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v28, v24);
  if (v29)
  {
    static String.Encoding.utf8.getter();
    v31 = String.init(data:encoding:)();
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      v35 = sub_10036C4C0();
      if (v33 == *v35 && v34 == v35[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v36 = v227;
        v37 = (*(*v227 + 168))();
        if (!sub_10036FD5C(v37, 0))
        {

          v55 = v36[2];
          v54 = v36[3];
          swift_beginAccess();

          sub_100008318(&v229, v55, v54);
          swift_endAccess();

          return;
        }

        v213 = v34;
        v214 = v23;
        v38 = *&v224[OBJC_IVAR___MRDFastSyncGroupSession_provider];

        dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

        v39 = NearbyGroup.members.getter();

        v28 = (v39 + 56);
        v40 = 1 << *(v39 + 32);
        v41 = -1;
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        v42 = v41 & *(v39 + 56);
        v43 = (v40 + 63) >> 6;
        v215 = v225 + 16;
        v216 = v225 + 32;
        v217 = (v225 + 8);

        v44 = 0;
        v45 = v222;
        if (v42)
        {
          while (1)
          {
            v46 = v44;
LABEL_14:
            v47 = v39;
            v48 = v225;
            v49 = v223;
            (*(v225 + 16))(v223, *(v39 + 48) + *(v225 + 72) * (__clz(__rbit64(v42)) | (v46 << 6)), v45);
            v50 = *(v48 + 32);
            v50(v226, v49, v45);
            if (NearbyGroup.Member.handle.getter() == v227[2] && v51 == v227[3])
            {

              goto LABEL_65;
            }

            v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v53)
            {
              break;
            }

            v42 &= v42 - 1;
            (*v217)(v226, v45);
            v44 = v46;
            v39 = v47;
            if (!v42)
            {
              goto LABEL_11;
            }
          }

LABEL_65:
          v59 = v221;
          v50(v221, v226, v45);
          v56 = 0;
          v57 = v227;
          v58 = v224;
LABEL_66:
          v154 = v225;
          (*(v225 + 56))(v59, v56, 1, v45);

          if ((*(v154 + 48))(v59, 1, v45) == 1)
          {
            sub_1000038A4(v59, &qword_1005222A0, &unk_10044F5A0);
          }

          else
          {
            v226 = NearbyGroup.Member.tokenDestination.getter();
            v156 = v155;
            (*v217)(v59, v45);
            if (v156)
            {
              goto LABEL_70;
            }
          }

          v156 = v57[3];
          v226 = v57[2];

LABEL_70:
          if (qword_100529B70 != -1)
          {
            swift_once();
          }

          v157 = type metadata accessor for Logger();
          sub_100015AFC(v157, qword_100529B78);
          v158 = v58;

          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v161 = 138413058;
            *(v161 + 4) = v158;
            *v162 = v158;
            *(v161 + 12) = 2082;
            v163 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
            v164 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
            v165 = v158;
            v166 = v164;
            v167 = v156;
            v168 = v227;
            *(v161 + 14) = sub_10002C9C8(v163, v166, &aBlock);
            *(v161 + 22) = 2080;
            v169 = v168[2];
            v170 = v168[3];
            v156 = v167;
            *(v161 + 24) = sub_10002C9C8(v169, v170, &aBlock);
            *(v161 + 32) = 2080;
            *(v161 + 34) = sub_10002C9C8(v226, v167, &aBlock);
            _os_log_impl(&_mh_execute_header, v159, v160, "[%@]<%{public}s> Send transportMigrationReply push to: %s, dst: %s.", v161, 0x2Au);
            sub_1000038A4(v162, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }

          v171 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
          if (v171)
          {
            v225 = v156;
            sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10044F540;
            v224 = v171;
            v173 = sub_10036C46C();
            v175 = *v173;
            v174 = *(v173 + 1);
            aBlock = v175;
            v231 = v174;
            v223 = v174;
            swift_bridgeObjectRetain_n();
            AnyHashable.init<A>(_:)();
            v176 = sub_10036C4CC();
            v178 = *v176;
            v177 = v176[1];
            *(inited + 96) = &type metadata for String;
            *(inited + 72) = v178;
            *(inited + 80) = v177;

            v179 = sub_10036C484();
            v181 = *v179;
            v180 = *(v179 + 1);
            aBlock = v181;
            v231 = v180;
            v222 = v180;
            swift_bridgeObjectRetain_n();
            AnyHashable.init<A>(_:)();
            v182 = *v176;
            v183 = v176[1];

            v184 = v214;
            static String.Encoding.utf8.getter();
            v185 = String.data(using:allowLossyConversion:)();
            v187 = v186;

            (*(v219 + 8))(v184, v220);
            if (v187 >> 60 != 15)
            {
              *(inited + 168) = &type metadata for Data;
              *(inited + 144) = v185;
              *(inited + 152) = v187;
              v188 = sub_10036C490();
              v189 = *(v188 + 1);
              aBlock = *v188;
              v231 = v189;
              swift_bridgeObjectRetain_n();
              v190 = AnyHashable.init<A>(_:)();
              v191 = v227;
              v192 = (*(*v227 + 216))(v190);
              *(inited + 240) = &type metadata for Int;
              *(inited + 216) = v192;
              v193 = sub_10036C49C();
              v194 = v193[1];
              aBlock = *v193;
              v231 = v194;
              swift_bridgeObjectRetain_n();
              AnyHashable.init<A>(_:)();
              v196 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
              v195 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
              *(inited + 312) = &type metadata for String;
              *(inited + 288) = v196;
              *(inited + 296) = v195;

              v197 = sub_10036C478();
              v198 = *(v197 + 1);
              aBlock = *v197;
              v231 = v198;
              swift_bridgeObjectRetain_n();
              AnyHashable.init<A>(_:)();
              v200 = v191[2];
              v199 = v191[3];
              *(inited + 384) = &type metadata for String;
              v227 = v200;
              *(inited + 360) = v200;
              *(inited + 368) = v199;
              v221 = v199;

              v201 = sub_10036C460();
              v202 = *(v201 + 1);
              aBlock = *v201;
              v231 = v202;
              swift_bridgeObjectRetain_n();
              AnyHashable.init<A>(_:)();
              v203 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
              if (v203)
              {
                v204 = *&v158[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];

                *(inited + 456) = &type metadata for String;
                *(inited + 432) = v204;
                *(inited + 440) = v203;
                sub_1001C2534(inited);
                swift_setDeallocating();
                sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
                swift_arrayDestroy();
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
                v206 = swift_initStackObject();
                *(v206 + 16) = xmmword_10044EC70;
                v207 = v225;
                *(v206 + 32) = v226;
                v208 = v206 + 32;
                *(v206 + 40) = v207;
                sub_10021FAD4(v206);
                swift_setDeallocating();
                sub_1001E6204(v208);
                v209 = Set._bridgeToObjectiveC()().super.isa;

                v210 = v224;
                [v224 sendMessage:isa toDestinations:v209];

                (*(*v218 + 392))(0, v227, v221);
                return;
              }

              goto LABEL_88;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

LABEL_11:
        while (1)
        {
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v46 >= v43)
          {

            v56 = 1;
            v57 = v227;
            v58 = v224;
            v59 = v221;
            goto LABEL_66;
          }

          v42 = v28[v46];
          ++v44;
          if (v42)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_79;
      }
    }

    static String.Encoding.utf8.getter();
    v60 = a2;
    v61 = String.init(data:encoding:)();
    v28 = v224;
    v63 = v227;
    if (v62)
    {
      v64 = v61;
      v65 = v62;
      v66 = sub_10036C4CC();
      if (v64 == *v66 && v65 == v66[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (qword_100529B70 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_80;
      }
    }

    v92 = v63[2];
    v93 = v63[3];
    if (*(v28 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) != 1)
    {
      v127 = *(v28 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8);
      if (!v127)
      {
LABEL_91:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (v92 == *(v28 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle) && v127 == v93 || (v128 = v63[2], v129 = v63[3], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v130 = *(v28 + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
        v131 = swift_allocObject();
        v131[2] = v28;
        v131[3] = v60;
        v131[4] = a3;
        v234 = sub_10021DCBC;
        v235 = v131;
        aBlock = _NSConcreteStackBlock;
        v231 = 1107296256;
        v232 = sub_100003D98;
        v233 = &unk_1004C30D0;
        v132 = _Block_copy(&aBlock);
        v133 = v28;
        sub_1001C3FE0(v60, a3);
        v134 = v212;
        static DispatchQoS.unspecified.getter();
        v229 = _swiftEmptyArrayStorage;
        sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
        v135 = v213;
        v136 = v217;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v132);
        (*(v216 + 8))(v135, v136);
        (*(v214 + 1))(v134, v215);
        goto LABEL_52;
      }

      if (qword_100529B70 == -1)
      {
        goto LABEL_59;
      }

      goto LABEL_85;
    }

    v94 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
    swift_beginAccess();
    v95 = *(v28 + v94);
    if (*(v95 + 16))
    {

      v96 = sub_10000698C(v92, v93);
      if (v97)
      {
        v227 = a3;
        v98 = (*(v95 + 56) + 16 * v96);
        v92 = *v98;
        v99 = v98[1];

        v100 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
        swift_beginAccess();
        v101 = *(v28 + v100);

        v102 = sub_1001BD5E8(v92, v99, v101);

        v103 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
        swift_beginAccess();
        v104 = *(v28 + v103);
        if (*(v104 + 16))
        {
          LODWORD(v226) = v102;
          v105 = v28;

          v106 = sub_10000698C(v92, v99);
          if (v107)
          {
            v108 = (*(v104 + 56) + 16 * v106);
            v109 = *v108;
            v93 = v108[1];
            v110 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
            swift_beginAccess();
            v111 = *(v28 + v110);
            if (*(v111 + 16))
            {

              v112 = sub_10000698C(v109, v93);
              v28 = v113;

              if (v28)
              {
                v114 = *(*(v111 + 56) + 8 * v112);

                v115 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
                v116 = String._bridgeToObjectiveC()();

                v117 = [v115 initWithIdentifier:v116 identity:v114 connected:1 guest:v226 & 1];

                v118 = *&v105[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
                v119 = swift_allocObject();
                v119[2] = v105;
                v119[3] = v60;
                v120 = v227;
                v119[4] = v227;
                v119[5] = v117;
                v234 = sub_10021DDE4;
                v235 = v119;
                aBlock = _NSConcreteStackBlock;
                v231 = 1107296256;
                v232 = sub_100003D98;
                v233 = &unk_1004C3120;
                v121 = _Block_copy(&aBlock);
                v122 = v105;
                sub_1001C3FE0(v60, v120);
                v123 = v117;
                v124 = v212;
                static DispatchQoS.unspecified.getter();
                v228 = _swiftEmptyArrayStorage;
                sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
                sub_1001BC5A8(&unk_100522280, &unk_10044F590);
                sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
                v125 = v213;
                v126 = v217;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v121);

                (*(v216 + 8))(v125, v126);
                (*(v214 + 1))(v124, v215);
LABEL_52:

                return;
              }

              goto LABEL_84;
            }

LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            swift_once();
LABEL_59:
            v148 = type metadata accessor for Logger();
            sub_100015AFC(v148, qword_100529B78);
            v149 = v28;

            v139 = Logger.logObject.getter();
            v140 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v139, v140))
            {
LABEL_62:

              return;
            }

            v141 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v227 = v93;
            v143 = v150;
            aBlock = swift_slowAlloc();
            *v141 = 138412802;
            *(v141 + 4) = v149;
            *v143 = v149;
            *(v141 + 12) = 2082;
            v151 = *(v149 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
            v152 = *(v149 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
            v153 = v149;
            *(v141 + 14) = sub_10002C9C8(v151, v152, &aBlock);
            *(v141 + 22) = 2080;
            *(v141 + 24) = sub_10002C9C8(v92, v227, &aBlock);
            v147 = "[%@]<%{public}s> Received message from connection manager participant that does not match leader: %s.";
LABEL_61:
            _os_log_impl(&_mh_execute_header, v139, v140, v147, v141, 0x20u);
            sub_1000038A4(v143, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();

            goto LABEL_62;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_83;
      }
    }

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    sub_100015AFC(v137, qword_100529B78);
    v138 = v28;

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v139, v140))
    {
      goto LABEL_62;
    }

    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v227 = v93;
    v143 = v142;
    aBlock = swift_slowAlloc();
    *v141 = 138412802;
    *(v141 + 4) = v138;
    *v143 = v138;
    *(v141 + 12) = 2082;
    v145 = *(v138 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
    v144 = *(v138 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
    v146 = v138;
    *(v141 + 14) = sub_10002C9C8(v145, v144, &aBlock);
    *(v141 + 22) = 2080;
    *(v141 + 24) = sub_10002C9C8(v92, v227, &aBlock);
    v147 = "[%@]<%{public}s> Received message but no mapped participant for connection manager participant: %s.";
    goto LABEL_61;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_29:
  v67 = type metadata accessor for Logger();
  sub_100015AFC(v67, qword_100529B78);
  v68 = v28;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    aBlock = v227;
    *v71 = 138412546;
    *(v71 + 4) = v68;
    *v72 = v68;
    *(v71 + 12) = 2082;
    v74 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
    v73 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
    v75 = v68;
    *(v71 + 14) = sub_10002C9C8(v74, v73, &aBlock);
    _os_log_impl(&_mh_execute_header, v69, v70, "[%@]<%{public}s> Received transportMigrationReply push.", v71, 0x16u);
    sub_1000038A4(v72, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v227);
  }

  v76 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  if (v76)
  {
    v77 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
    if (v77)
    {
      v78 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8);
      if (v78)
      {
        v79 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8);
        v80 = *(v68 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
        sub_10021DF20(*(v68 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion));

        (*(*v77 + 392))(0, v80, v78);

        v76(0);
        sub_1001C7C2C(v76);
        return;
      }

      goto LABEL_90;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v81 = v68;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v84 = 138412546;
    *(v84 + 4) = v81;
    *v85 = v81;
    *(v84 + 12) = 2082;
    v87 = *&v81[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v88 = *&v81[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v89 = v81;
    *(v84 + 14) = sub_10002C9C8(v87, v88, &aBlock);
    _os_log_impl(&_mh_execute_header, v82, v83, "[%@]<%{public}s> Received transportMigrationReply with no completion.", v84, 0x16u);
    sub_1000038A4(v85, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v86);
  }

  sub_10021DECC();
  v90 = swift_allocError();
  *v91 = 6;
  sub_100204BF8(v90);
}

void sub_10020FF08(uint64_t a1, NSObject *a2, unint64_t a3, NSObject *a4, int a5)
{
  LODWORD(v315) = a5;
  v325 = a4;
  v313 = type metadata accessor for DispatchPredicate();
  v305 = *(v313 - 8);
  v11 = *(v305 + 64);
  __chkstk_darwin(v313);
  v312 = &v289 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Participants();
  v304 = *(v13 - 8);
  v14 = *(v304 + 64);
  __chkstk_darwin(v13);
  v16 = &v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v311 = &v289 - v19;
  v20 = type metadata accessor for Participant();
  v320 = *(v20 - 8);
  v21 = *(v320 + 64);
  v22 = __chkstk_darwin(v20);
  v303 = &v289 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v308 = (&v289 - v25);
  v26 = __chkstk_darwin(v24);
  v309 = &v289 - v27;
  v28 = __chkstk_darwin(v26);
  v321 = (&v289 - v29);
  v30 = __chkstk_darwin(v28);
  v316 = (&v289 - v31);
  __chkstk_darwin(v30);
  v33 = &v289 - v32;
  v34 = type metadata accessor for NearbyGroup.Member();
  v35 = *(v34 - 8);
  v322 = v34;
  v323 = v35;
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v324 = (&v289 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v319 = (&v289 - v39);
  v40 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v310 = &v289 - v42;
  v318 = v5;
  if (v315)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v328 = 0;
    v44 = [(objc_class *)isa compressedDataUsingAlgorithm:0 error:&v328];

    v45 = v328;
    v20 = a3;
    if (v44)
    {
      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = 0;
    }

    else
    {
      v66 = v45;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v46 = 0;
      v49 = 0;
      v48 = 0xF000000000000000;
    }

    p_isa = v46;
    v331 = v48;
    v67 = sub_10036C454();
    if (v48 >> 60 == 15)
    {
      goto LABEL_45;
    }

    v64 = *v67;
    v68 = *(v67 + 1);
    v69 = v48 >> 62;
    if ((v48 >> 62) > 1)
    {
      if (v69 != 2)
      {
        v70 = 0;
        goto LABEL_33;
      }

      v72 = *(v46 + 16);
      v71 = *(v46 + 24);
      v73 = __OFSUB__(v71, v72);
      v70 = v71 - v72;
      if (!v73)
      {
LABEL_33:
        v74 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          if (v74 == 2)
          {
            v76 = a2[2].isa;
            v75 = a2[3].isa;
            v73 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v73)
            {
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            if (v77 < v70)
            {
              goto LABEL_45;
            }
          }

          else if (v70 > 0)
          {
LABEL_45:
            p_isa = &a2->isa;
            v331 = v20;
            sub_1001C3FE0(a2, v20);
            sub_100045968(v46, v48);
            v79 = sub_10036C448();
            v64 = *v79;
            v80 = *(v79 + 1);

            if (v20 >> 60 == 15)
            {
LABEL_195:
              __break(1u);
              goto LABEL_196;
            }

            v48 = v20;
            v46 = a2;
LABEL_47:
            v81 = v48 >> 62;
            if ((v48 >> 62) > 1)
            {
              if (v81 != 2)
              {
                v82 = 0;
                goto LABEL_57;
              }

              v84 = *(v46 + 16);
              v83 = *(v46 + 24);
              v73 = __OFSUB__(v83, v84);
              v82 = v83 - v84;
              if (!v73)
              {
LABEL_57:
                v85 = v20 >> 62;
                v315 = v64;
                v316 = v78;
                v314 = 0;
                if ((v20 >> 62) <= 1)
                {
                  if (!v85)
                  {
                    v86 = BYTE6(v20);
                    goto LABEL_67;
                  }

LABEL_64:
                  LODWORD(v86) = HIDWORD(a2) - a2;
                  if (!__OFSUB__(HIDWORD(a2), a2))
                  {
                    v86 = v86;
                    goto LABEL_67;
                  }

                  goto LABEL_175;
                }

                if (v85 == 2)
                {
                  v88 = a2[2].isa;
                  v87 = a2[3].isa;
                  v73 = __OFSUB__(v87, v88);
                  v86 = v87 - v88;
                  if (v73)
                  {
                    __break(1u);
                    goto LABEL_64;
                  }
                }

                else
                {
                  v86 = 0;
                }

LABEL_67:
                v8 = v82 / v86;
                v89 = *(v318 + OBJC_IVAR___MRDFastSyncGroupSession_provider);

                dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

                v90 = NearbyGroup.members.getter();

                v50 = v90 + 56;
                v91 = 1 << *(v90 + 32);
                v92 = -1;
                if (v91 < 64)
                {
                  v92 = ~(-1 << v91);
                }

                v93 = v92 & *(v90 + 56);
                v94 = (v91 + 63) >> 6;
                v317 = v323 + 16;
                v320 = v323 + 32;
                v321 = (v323 + 8);

                v95 = 0;
                v6 = v322;
                if (!v93)
                {
LABEL_71:
                  while (1)
                  {
                    v96 = v95 + 1;
                    if (__OFADD__(v95, 1))
                    {
                      break;
                    }

                    if (v96 >= v94)
                    {

                      v102 = 1;
                      v50 = v318;
                      v103 = v310;
                      goto LABEL_85;
                    }

                    v93 = *(v50 + 8 * v96);
                    ++v95;
                    if (v93)
                    {
                      goto LABEL_74;
                    }
                  }

                  __break(1u);
LABEL_166:
                  __break(1u);
LABEL_167:
                  swift_once();
LABEL_91:
                  v107 = type metadata accessor for Logger();
                  sub_100015AFC(v107, qword_100529B78);
                  swift_retain_n();
                  v108 = v50;

                  v109 = Logger.logObject.getter();
                  v110 = static os_log_type_t.info.getter();

                  v111 = os_log_type_enabled(v109, v110);
                  v323 = v6;
                  if (v111)
                  {
                    v112 = swift_slowAlloc();
                    v113 = swift_slowAlloc();
                    v321 = swift_slowAlloc();
                    v328 = v321;
                    *v112 = 138413826;
                    *(v112 + 4) = v108;
                    *v113 = v108;
                    *(v112 + 12) = 2082;
                    v114 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                    v115 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                    v322 = v108;
                    v116 = v108;
                    *(v112 + 14) = sub_10002C9C8(v114, v115, &v328);
                    *(v112 + 22) = 2080;
                    swift_beginAccess();
                    v117 = v331;
                    if (v331 >> 60 == 15)
                    {
LABEL_196:

                      __break(1u);
                      return;
                    }

                    v118 = p_isa;
                    sub_1001E5270(p_isa, v331);
                    v119 = Data.description.getter();
                    v121 = v120;
                    sub_100045968(v118, v117);
                    v122 = sub_10002C9C8(v119, v121, &v328);

                    *(v112 + 24) = v122;
                    *(v112 + 32) = 2080;
                    v123 = v325;
                    *(v112 + 34) = sub_10002C9C8(v325[2].isa, v325[3].isa, &v328);
                    *(v112 + 42) = 2080;
                    a2 = v123;
                    *(v112 + 44) = sub_10002C9C8(v324, v323, &v328);
                    *(v112 + 52) = 2048;
                    v124 = (*(v123->isa + 27))();

                    *(v112 + 54) = v124;

                    *(v112 + 62) = 2048;
                    *(v112 + 64) = v8;
                    _os_log_impl(&_mh_execute_header, v109, v110, "[%@]<%{public}s> Send remoteControl push message: %s to: %s, dst: %s. Timestamp: %ld. Ratio: %f.", v112, 0x48u);
                    sub_1000038A4(v113, &qword_100521870, &unk_10044EA70);

                    swift_arrayDestroy();

                    v108 = v322;
                  }

                  else
                  {
                  }

                  v125 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
                  if (v125)
                  {
                    sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_10044F550;
                    v325 = v125;
                    v127 = sub_10036C46C();
                    v129 = *v127;
                    v128 = *(v127 + 1);
                    v328 = v129;
                    v329 = v128;
                    v322 = v128;
                    swift_bridgeObjectRetain_n();
                    AnyHashable.init<A>(_:)();
                    v130 = sub_10036C4B4();
                    v132 = *v130;
                    v131 = *(v130 + 1);
                    *(inited + 96) = &type metadata for String;
                    *(inited + 72) = v132;
                    *(inited + 80) = v131;

                    v133 = sub_10036C484();
                    v135 = *v133;
                    v134 = *(v133 + 1);
                    v328 = v135;
                    v329 = v134;
                    v321 = v134;
                    swift_bridgeObjectRetain_n();
                    AnyHashable.init<A>(_:)();
                    swift_beginAccess();
                    v136 = v331;
                    if (v331 >> 60 != 15)
                    {
                      v137 = p_isa;
                      *(inited + 168) = &type metadata for Data;
                      *(inited + 144) = v137;
                      *(inited + 152) = v136;
                      sub_1001C3FE0(v137, v136);
                      v138 = sub_10036C4A8();
                      v139 = v138[1];
                      v326 = *v138;
                      v327 = v139;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      *(inited + 240) = &type metadata for String;
                      v140 = v316;
                      *(inited + 216) = v315;
                      *(inited + 224) = v140;

                      v141 = sub_10036C490();
                      v142 = *(v141 + 1);
                      v326 = *v141;
                      v327 = v142;
                      swift_bridgeObjectRetain_n();
                      v143 = AnyHashable.init<A>(_:)();
                      v144 = (*(a2->isa + 27))(v143);
                      *(inited + 312) = &type metadata for Int;
                      *(inited + 288) = v144;
                      v145 = sub_10036C49C();
                      v146 = v145[1];
                      v326 = *v145;
                      v327 = v146;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      v148 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                      v147 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                      *(inited + 384) = &type metadata for String;
                      *(inited + 360) = v148;
                      *(inited + 368) = v147;

                      v149 = sub_10036C478();
                      v150 = *(v149 + 1);
                      v326 = *v149;
                      v327 = v150;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      v152 = a2[2].isa;
                      v151 = a2[3].isa;
                      *(inited + 456) = &type metadata for String;
                      *(inited + 432) = v152;
                      *(inited + 440) = v151;

                      v153 = sub_10036C460();
                      v154 = *(v153 + 1);
                      v326 = *v153;
                      v327 = v154;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      v155 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
                      if (v155)
                      {
                        v156 = *&v108[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];

                        *(inited + 528) = &type metadata for String;
                        *(inited + 504) = v156;
                        *(inited + 512) = v155;
                        sub_1001C2534(inited);
                        swift_setDeallocating();
                        sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
                        swift_arrayDestroy();
                        v157 = Dictionary._bridgeToObjectiveC()().super.isa;

                        sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
                        v158 = swift_initStackObject();
                        *(v158 + 16) = xmmword_10044EC70;
                        v159 = v323;
                        *(v158 + 32) = v324;
                        v160 = v158 + 32;
                        *(v158 + 40) = v159;
                        sub_10021FAD4(v158);
                        swift_setDeallocating();
                        sub_1001E6204(v160);
                        v161 = Set._bridgeToObjectiveC()().super.isa;

                        v162 = v325;
                        [v325 sendMessage:v157 toDestinations:v161];

                        sub_100045968(p_isa, v331);
                        return;
                      }

                      goto LABEL_194;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
LABEL_194:
                  __break(1u);
                  goto LABEL_195;
                }

                while (1)
                {
                  v96 = v95;
LABEL_74:
                  v97 = v323;
                  a2 = v319;
                  (*(v323 + 16))(v319, *(v90 + 48) + *(v323 + 72) * (__clz(__rbit64(v93)) | (v96 << 6)), v6);
                  v98 = *(v97 + 32);
                  v98(v324, a2, v6);
                  if (NearbyGroup.Member.handle.getter() == v325[2].isa && v99 == v325[3].isa)
                  {

                    goto LABEL_84;
                  }

                  v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v101)
                  {
                    break;
                  }

                  v93 &= v93 - 1;
                  v6 = v322;
                  (*v321)(v324, v322);
                  v95 = v96;
                  if (!v93)
                  {
                    goto LABEL_71;
                  }
                }

                v6 = v322;
LABEL_84:
                v103 = v310;
                v98(v310, v324, v6);
                v102 = 0;
                v50 = v318;
LABEL_85:
                v104 = v323;
                (*(v323 + 56))(v103, v102, 1, v6);

                if ((*(v104 + 48))(v103, 1, v6) == 1)
                {
                  sub_1000038A4(v103, &qword_1005222A0, &unk_10044F5A0);
                }

                else
                {
                  v324 = NearbyGroup.Member.tokenDestination.getter();
                  v105 = v6;
                  v6 = v106;
                  (*v321)(v103, v105);
                  if (v6)
                  {
                    a2 = v325;
                    goto LABEL_90;
                  }
                }

                a2 = v325;
                v6 = v325[3].isa;
                v324 = v325[2].isa;

LABEL_90:
                if (qword_100529B70 == -1)
                {
                  goto LABEL_91;
                }

                goto LABEL_167;
              }

              __break(1u);
            }

            else if (!v81)
            {
              v82 = BYTE6(v48);
              goto LABEL_57;
            }

            LODWORD(v82) = HIDWORD(v46) - v46;
            if (__OFSUB__(HIDWORD(v46), v46))
            {
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
              goto LABEL_178;
            }

            v82 = v82;
            goto LABEL_57;
          }
        }

        else if (v74)
        {
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_182:
            __break(1u);
LABEL_183:
            swift_once();
LABEL_113:
            v176 = type metadata accessor for Logger();
            sub_100015AFC(v176, qword_100529B78);
            v177 = v303;
            (*v323)(v303, v16, v20);
            v178 = v48;
            v179 = Logger.logObject.getter();
            v180 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v179, v180))
            {
              v181 = v177;
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v323 = v183;
              v325 = swift_slowAlloc();
              v328 = v325;
              *v182 = 138412802;
              *(v182 + 4) = v178;
              *v183 = v178;
              *(v182 + 12) = 2082;
              v184 = *&v178[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
              v185 = *&v178[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
              v186 = v178;
              *(v182 + 14) = sub_10002C9C8(v184, v185, &v328);
              *(v182 + 22) = 2080;
              sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant);
              v187 = v181;
              v188 = dispatch thunk of CustomStringConvertible.description.getter();
              v190 = v189;
              v191 = *v324;
              (*v324)(v187, v20);
              v192 = sub_10002C9C8(v188, v190, &v328);

              *(v182 + 24) = v192;
              _os_log_impl(&_mh_execute_header, v179, v180, "[%@]<%{public}s> No messenger to send message to participant: %s.", v182, 0x20u);
              sub_1000038A4(v323, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();

              v191(v314, v317);
            }

            else
            {

              v227 = *v324;
              (*v324)(v177, v20);
              v227(v16, v20);
            }

            return;
          }

          if (HIDWORD(a2) - a2 < v70)
          {
            goto LABEL_45;
          }
        }

        else if (BYTE6(v20) < v70)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      __break(1u);
    }

    else if (!v69)
    {
      v70 = BYTE6(v48);
      goto LABEL_33;
    }

    LODWORD(v70) = HIDWORD(v46) - v46;
    if (__OFSUB__(HIDWORD(v46), v46))
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    v70 = v70;
    goto LABEL_33;
  }

  if (!*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession))
  {
    v65 = v311;
    (*(v320 + 56))(v311, 1, 1, v20);
    v48 = v318;
    goto LABEL_103;
  }

  v310 = v16;
  v302 = v13;
  v306 = a3;
  v307 = a2;
  v314 = v33;

  v50 = GroupSession.activeParticipants.getter();

  v51 = v50 + 56;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 56);
  v55 = (v52 + 63) >> 6;
  v322 = (v320 + 32);
  v323 = v320 + 16;
  v324 = (v320 + 8);

  v56 = 0;
  v317 = v20;
  if (v54)
  {
    while (1)
    {
      v57 = v56;
LABEL_12:
      v6 = v50;
      v58 = v320;
      a2 = v316;
      (*(v320 + 16))(v316, *(v50 + 48) + *(v320 + 72) * (__clz(__rbit64(v54)) | (v57 << 6)), v20);
      v59 = *(v58 + 32);
      v59(v321, a2, v20);
      if (Participant.handle.getter() == v325[2].isa && v60 == v325[3].isa)
      {

        goto LABEL_101;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v62)
      {
        break;
      }

      v54 &= v54 - 1;
      v20 = v317;
      (*v324)(v321, v317);
      v56 = v57;
      v50 = v6;
      if (!v54)
      {
        goto LABEL_9;
      }
    }

    v20 = v317;
LABEL_101:
    v65 = v311;
    v59(v311, v321, v20);
    v63 = 0;
    v16 = v314;
    v7 = v306;
    v13 = v307;
    v48 = v318;
    v64 = v308;
  }

  else
  {
    while (1)
    {
LABEL_9:
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_166;
      }

      if (v57 >= v55)
      {
        break;
      }

      v54 = *(v51 + 8 * v57);
      ++v56;
      if (v54)
      {
        goto LABEL_12;
      }
    }

    v63 = 1;
    v16 = v314;
    v7 = v306;
    v13 = v307;
    v48 = v318;
    v64 = v308;
    v65 = v311;
  }

  v163 = v320;
  (*(v320 + 56))(v65, v63, 1, v20);

  if ((*(v163 + 48))(v65, 1, v20) != 1)
  {
    (*v322)(v16, v65, v20);
    v311 = *(v48 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger);
    if (!v311)
    {
      if (qword_100529B70 == -1)
      {
        goto LABEL_113;
      }

      goto LABEL_183;
    }

    v174 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v174 != 2)
      {
        goto LABEL_122;
      }

      v194 = *(v13 + 16);
      v193 = *(v13 + 24);
      v73 = __OFSUB__(v193, v194);
      v175 = v193 - v194;
      if (!v73)
      {
LABEL_117:
        if (v175 > 90000)
        {
          v325 = HIDWORD(v13);
          if (v174 != 2)
          {
            LODWORD(v197) = v325 - v13;
            if (__OFSUB__(v325, v13))
            {
              goto LABEL_191;
            }

            v197 = v197;
LABEL_131:
            v228 = ceilf(v197 / 90000.0);
            if ((LODWORD(v228) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              if (v228 > -9.2234e18)
              {
                if (v228 < 9.2234e18)
                {
                  v20 = v228;
                  v229 = qword_100529B70;

                  if (v229 == -1)
                  {
LABEL_135:
                    v230 = type metadata accessor for Logger();
                    v231 = sub_100015AFC(v230, qword_100529B78);
                    sub_1001C3FE0(v13, v7);
                    v16 = v48;
                    v301 = v231;
                    v232 = Logger.logObject.getter();
                    v233 = static os_log_type_t.info.getter();

                    sub_1001C4034(v13, v7);
                    v234 = os_log_type_enabled(v232, v233);
                    v49 = &unk_100522000;
                    v308 = v20;
                    v303 = v16;
                    if (v234)
                    {
                      v48 = swift_slowAlloc();
                      v235 = swift_slowAlloc();
                      v236 = v7 >> 62;
                      v328 = swift_slowAlloc();
                      *v48 = 138413058;
                      *(v48 + 4) = v303;
                      *v235 = v303;
                      *(v48 + 12) = 2082;
                      v237 = *&v303[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                      v238 = *&v303[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                      v239 = v303;
                      *(v48 + 14) = sub_10002C9C8(v237, v238, &v328);
                      *(v48 + 22) = 2080;
                      v240 = Data.description.getter();
                      v49 = v241;
                      v242 = sub_10002C9C8(v240, v241, &v328);

                      *(v48 + 24) = v242;
                      v7 = v306;
                      v13 = v307;
                      *(v48 + 32) = 2048;
                      *(v48 + 34) = v308;
                      _os_log_impl(&_mh_execute_header, v232, v233, "[%@]<%{public}s> Split remoteControl payload: %s into %ld chunks.", v48, 0x2Au);
                      sub_1000038A4(v235, &qword_100521870, &unk_10044EA70);

                      swift_arrayDestroy();
                      v174 = v236;
                      v16 = v303;
                      v20 = v308;
                    }

                    if ((v20 & 0x8000000000000000) == 0)
                    {
                      if (!v20)
                      {

                        (*v324)(v314, v317);
                        return;
                      }

                      v20 = 0;
                      v64 = 0;
                      v300 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
                      v292 = &v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                      v244 = __OFSUB__(v325, v13);
                      v290 = v244;
                      v289 = v325 - v13;
                      v293 = BYTE6(v7);
                      v299 = enum case for DispatchPredicate.onQueue(_:);
                      v297 = (v305 + 8);
                      v298 = (v305 + 104);
                      v304 += 8;
                      *&v243 = 138413570;
                      v291 = v243;
                      v296 = v174;
                      while (v64 != 0x5D34EDEE9D61)
                      {
                        if (v174 > 1)
                        {
                          if (v174 == 2)
                          {
                            v247 = *(v13 + 16);
                            v246 = *(v13 + 24);
                            v73 = __OFSUB__(v246, v247);
                            v245 = v246 - v247;
                            if (v73)
                            {
                              goto LABEL_176;
                            }
                          }

                          else
                          {
                            v245 = 0;
                          }
                        }

                        else
                        {
                          v245 = v293;
                          if (v174)
                          {
                            v245 = v289;
                            if (v290)
                            {
                              goto LABEL_177;
                            }
                          }
                        }

                        v73 = __OFSUB__(v245, v20);
                        v248 = v245 - v20;
                        if (v73)
                        {
                          goto LABEL_169;
                        }

                        if (v248 >= 90000)
                        {
                          v248 = 90000;
                        }

                        if (__OFADD__(v20, v248))
                        {
                          goto LABEL_170;
                        }

                        if ((v20 + v248) < v20)
                        {
                          goto LABEL_171;
                        }

                        v249 = Data.subdata(in:)();
                        v251 = v250;
                        sub_1001C3FE0(v249, v250);
                        LODWORD(v320) = MRDFastSyncGroupSessionState.rawValue.getter(5, v249, v251);
                        v321 = v253;
                        v322 = v252;
                        v254 = v309;
                        (*v323)(v309, v314, v317);
                        v255 = v16;
                        sub_1001C3FE0(v249, v251);
                        v256 = v255;
                        v257 = Logger.logObject.getter();
                        v258 = v16;
                        v259 = static os_log_type_t.info.getter();

                        sub_1001C4034(v249, v251);
                        LODWORD(v305) = v259;
                        v319 = v257;
                        v260 = os_log_type_enabled(v257, v259);
                        v325 = (&v64->isa + 1);
                        v318 = v20;
                        v315 = v256;
                        v316 = v249;
                        if (v260)
                        {
                          v261 = swift_slowAlloc();
                          v262 = swift_slowAlloc();
                          v294 = v262;
                          v328 = swift_slowAlloc();
                          *v261 = v291;
                          *(v261 + 4) = v256;
                          *v262 = v258;
                          *(v261 + 12) = 2082;
                          v263 = v256;
                          v264 = *v292;
                          v265 = v292[1];
                          v266 = v263;
                          *(v261 + 14) = sub_10002C9C8(v264, v265, &v328);
                          *(v261 + 22) = 2080;
                          sub_1001C3FE0(v249, v251);
                          v267 = Data.description.getter();
                          v269 = v268;
                          sub_1001C4034(v249, v251);
                          v270 = sub_10002C9C8(v267, v269, &v328);

                          *(v261 + 24) = v270;
                          *(v261 + 32) = 2080;
                          sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant);
                          v271 = v317;
                          v272 = dispatch thunk of CustomStringConvertible.description.getter();
                          v274 = v273;
                          v295 = *v324;
                          v295(v254, v271);
                          v275 = sub_10002C9C8(v272, v274, &v328);

                          *(v261 + 34) = v275;
                          *(v261 + 42) = 2048;
                          *(v261 + 44) = v325;
                          *(v261 + 52) = 2048;
                          *(v261 + 54) = v308;
                          v276 = v319;
                          _os_log_impl(&_mh_execute_header, v319, v305, "[%@]<%{public}s> Send remoteControl message: %s to: %s. Chunk %ld of %ld", v261, 0x3Eu);
                          sub_1000038A4(v294, &qword_100521870, &unk_10044EA70);

                          swift_arrayDestroy();
                        }

                        else
                        {

                          v295 = *v324;
                          v295(v254, v317);
                        }

                        v278 = v321;
                        v277 = v322;
                        sub_10036C864(v320);
                        v48 = v279;
                        v281 = v280;
                        v282 = v310;
                        static Participants.only(_:)();
                        v49 = v312;
                        v283 = v313;
                        v284 = v300;
                        *v312 = v300;
                        (*v298)(v49, v299, v283);
                        v285 = v284;
                        LOBYTE(v284) = _dispatchPreconditionTest(_:)();
                        (*v297)(v49, v283);
                        if ((v284 & 1) == 0)
                        {
                          goto LABEL_172;
                        }

                        v286 = swift_allocObject();
                        v287 = v315;
                        v286[2] = v315;
                        v286[3] = MRDFastSyncGroupSessionState.rawValue.getter;
                        v286[4] = 0;
                        v288 = v287;
                        GroupSessionMessenger.send(_:to:completion:)();

                        sub_1001C4034(v277, v278);
                        sub_1001C4034(v48, v281);
                        sub_1001C4034(v316, v251);
                        (*v304)(v282, v302);
                        v20 = v318 + 90000;
                        v13 = v307;
                        v64 = v325;
                        v7 = v306;
                        LODWORD(v174) = v296;
                        v16 = v303;
                        if (v308 == v325)
                        {

                          v295(v314, v317);
                          return;
                        }
                      }

                      __break(1u);
LABEL_169:
                      __break(1u);
LABEL_170:
                      __break(1u);
LABEL_171:
                      __break(1u);
LABEL_172:
                      __break(1u);
                      goto LABEL_173;
                    }

                    __break(1u);
LABEL_191:
                    __break(1u);
                  }

LABEL_189:
                  swift_once();
                  goto LABEL_135;
                }

LABEL_188:
                __break(1u);
                goto LABEL_189;
              }

LABEL_187:
              __break(1u);
              goto LABEL_188;
            }

LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          v196 = *(v13 + 16);
          v195 = *(v13 + 24);
          v73 = __OFSUB__(v195, v196);
          v197 = v195 - v196;
          if (!v73)
          {
            goto LABEL_131;
          }

          __break(1u);
        }

LABEL_122:
        sub_1001C3FE0(v13, v7);

        LODWORD(v322) = MRDFastSyncGroupSessionState.rawValue.getter(5, v13, v7);
        v49 = v198;
        v325 = v199;
        if (qword_100529B70 == -1)
        {
LABEL_123:
          v200 = type metadata accessor for Logger();
          sub_100015AFC(v200, qword_100529B78);
          (*v323)(v64, v16, v20);
          sub_1001C3FE0(v13, v7);
          v201 = v48;
          v202 = Logger.logObject.getter();
          v203 = static os_log_type_t.info.getter();

          sub_1001C4034(v13, v7);
          if (os_log_type_enabled(v202, v203))
          {
            v204 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v319 = v205;
            v320 = swift_slowAlloc();
            v328 = v320;
            *v204 = 138413058;
            *(v204 + 4) = v201;
            v205->isa = v201;
            *(v204 + 12) = 2082;
            LODWORD(v318) = v203;
            v206 = v64;
            v207 = *&v201[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
            v208 = *&v201[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
            v209 = v201;
            *(v204 + 14) = sub_10002C9C8(v207, v208, &v328);
            *(v204 + 22) = 2080;
            v210 = Data.description.getter();
            v212 = sub_10002C9C8(v210, v211, &v328);

            *(v204 + 24) = v212;
            *(v204 + 32) = 2080;
            sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant);
            v213 = dispatch thunk of CustomStringConvertible.description.getter();
            v215 = v214;
            v323 = *v324;
            (v323)(v206, v20);
            v216 = sub_10002C9C8(v213, v215, &v328);

            *(v204 + 34) = v216;
            _os_log_impl(&_mh_execute_header, v202, v318, "[%@]<%{public}s> Send remoteControl message: %s to: %s.", v204, 0x2Au);
            sub_1000038A4(v319, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }

          else
          {

            v323 = *v324;
            (v323)(v64, v20);
          }

          v321 = v49;
          sub_10036C864(v322);
          v48 = v217;
          v219 = v218;
          v220 = v310;
          v20 = v314;
          static Participants.only(_:)();
          v221 = *&v201[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
          v16 = v312;
          v222 = v313;
          *v312 = v221;
          v223 = v305;
          (*(v305 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v222);
          v224 = v221;
          LOBYTE(v221) = _dispatchPreconditionTest(_:)();
          (*(v223 + 8))(v16, v222);
          if (v221)
          {
            v225 = swift_allocObject();
            v225[2] = v201;
            v225[3] = MRDFastSyncGroupSessionState.rawValue.getter;
            v225[4] = 0;
            v226 = v201;
            GroupSessionMessenger.send(_:to:completion:)();

            sub_1001C4034(v321, v325);
            sub_1001C4034(v48, v219);
            (*(v304 + 8))(v220, v302);
            (v323)(v20, v317);
            return;
          }

          __break(1u);
          goto LABEL_180;
        }

LABEL_178:
        swift_once();
        goto LABEL_123;
      }
    }

    else
    {
      if (!v174)
      {
        goto LABEL_122;
      }

      LODWORD(v175) = HIDWORD(v13) - v13;
      if (!__OFSUB__(HIDWORD(v13), v13))
      {
        v175 = v175;
        goto LABEL_117;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_186;
  }

LABEL_103:
  sub_1000038A4(v65, &qword_100529110, &qword_10044F5B0);
  if (qword_100529B70 != -1)
  {
LABEL_173:
    swift_once();
  }

  v164 = type metadata accessor for Logger();
  sub_100015AFC(v164, qword_100529B78);
  v165 = v325;

  v166 = v48;
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v328 = swift_slowAlloc();
    *v169 = 138412802;
    *(v169 + 4) = v166;
    *v170 = v166;
    *(v169 + 12) = 2082;
    v171 = *&v166[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v172 = *&v166[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v173 = v166;
    *(v169 + 14) = sub_10002C9C8(v171, v172, &v328);
    *(v169 + 22) = 2080;
    *(v169 + 24) = sub_10002C9C8(v165[2].isa, v165[3].isa, &v328);
    _os_log_impl(&_mh_execute_header, v167, v168, "[%@]<%{public}s> No active participant to send message to connection manager participant: %s.", v169, 0x20u);
    sub_1000038A4(v170, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }
}

uint64_t MRDFastSyncGroupSession.sendRemoteControlMessage(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  aBlock[4] = sub_10021FC48;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C31C0;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  sub_1001C3FE0(a1, a2);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
}

uint64_t sub_10021277C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for GroupActivityMetadata.ActivityType() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10021280C, 0, 0);
}

uint64_t sub_10021280C()
{
  v2 = v0[2];
  v1 = v0[3];
  GroupActivityMetadata.init()();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static GroupActivityMetadata.ActivityType.generic.getter();
  GroupActivityMetadata.type.setter();

  v3 = v0[1];

  return v3();
}

Swift::Int TimeoutError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10021295C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002129A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100212A40(uint64_t a1)
{
  v2 = sub_10021FC78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100212A7C(uint64_t a1)
{
  v2 = sub_10021FC78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100212AB8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100212AF0(void *a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_1005222C8, &qword_10044F5C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10021FC78();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 96))(v10);
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_100212C50(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_100212CA0(a1);
  return v2;
}

uint64_t sub_100212CA0(uint64_t *a1)
{
  v4 = sub_1001BC5A8(&qword_1005222D0, &qword_10044F5C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10021FC78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for RemoteControlActivity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11;
    *(v1 + 24) = v13;
  }

  sub_100026A44(a1);
  return v1;
}

uint64_t sub_100212E4C(uint64_t a1)
{
  v4 = *(**v1 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F34;

  return v8(a1);
}

uint64_t sub_100212F7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100212FC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100213048(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for GroupActivityMetadata.ActivityType() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002253B0, 0, 0);
}

uint64_t sub_1002130D8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_100213124(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

__n128 sub_100213178@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v3;
  v12 = *(v1 + 96);
  v4 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = v4;
  sub_10021FCCC(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002131F0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v6 = *(v1 + 96);
  v7 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v7;
  *(v1 + 96) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v8;
}

__n128 sub_1002132D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 48);
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a3 + 64);
  result = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_10021332C()
{
  if (*v0)
  {
    result = 0x6F666E4974736F68;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_10021335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E4974736F68 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10021343C(uint64_t a1)
{
  v2 = sub_10021FD28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100213478(uint64_t a1)
{
  v2 = sub_10021FD28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002134B4()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[12];

  return swift_deallocClassInstance();
}

uint64_t sub_100213528(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_1005222D8, &qword_10044F5D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10021FD28();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v3 + 104))(v11);
  LOBYTE(v17[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*(*v3 + 128))(v17, v13);
    v16 = 1;
    sub_10021FD7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14[2] = v17[2];
    v14[3] = v17[3];
    v15 = v18;
    v14[0] = v17[0];
    v14[1] = v17[1];
    sub_1001C933C(v14);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10021374C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_10021379C(a1);
  return v2;
}

uint64_t sub_10021379C(uint64_t *a1)
{
  v4 = sub_1001BC5A8(&qword_1005222E8, &qword_10044F5E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_10021FD28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SystemRemoteControlActivity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v10;
    v20 = 1;
    sub_10021FDF4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    v12 = v18;
    *(v1 + 64) = v17;
    *(v1 + 80) = v12;
    *(v1 + 96) = v19;
    v13 = v16;
    *(v1 + 32) = v15;
    *(v1 + 48) = v13;
  }

  sub_100026A44(a1);
  return v1;
}

uint64_t sub_1002139D0(uint64_t a1)
{
  v4 = *(**v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F30;

  return v8(a1);
}

uint64_t sub_100213AF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100213B44@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_100213BC4()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue);
    v5 = objc_allocWithZone(IDSFirewall);
    v6 = v4;
    v7 = String._bridgeToObjectiveC()();
    v3 = [v5 initWithService:v7 queue:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_100222DC0(v8);
  }

  sub_100222DD0(v2);
  return v3;
}

uint64_t sub_100213C90(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v4 - 1);
  v5 = *(v103 + 64);
  __chkstk_darwin(v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v102 = &v94 - v15;
  v16 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members;
  v17 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];

  v18 = sub_100218144(a1, v17);

  if ((v18 & 1) == 0)
  {
    v95 = v12;
    v96 = v9;
    v94 = v2;
    v20 = *&v2[v16];
    v21 = qword_100529B70;

    if (v21 != -1)
    {
LABEL_52:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100015AFC(v22, qword_100529B78);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v25 = os_log_type_enabled(v23, v24);
    v98 = v8;
    v99 = v4;
    v97 = v7;
    if (v25)
    {
      v26 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v26 = 136446466;
      v27 = _typeName(_:qualified:)();
      v29 = sub_10002C9C8(v27, v28, &aBlock);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = Set.description.getter();
      v4 = sub_10002C9C8(v30, v31, &aBlock);

      *(v26 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] New members: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
    }

    if (v20[2] <= *(a1 + 16) >> 3)
    {
      aBlock = a1;

      sub_1001C0604(v20);
      v32 = aBlock;
    }

    else
    {

      v32 = sub_1001C0730(v20, a1);
    }

    if (*(a1 + 16) <= v20[2] >> 3)
    {
      aBlock = v20;
      sub_1001C0604(a1);
      v33 = aBlock;
    }

    else
    {
      v33 = sub_1001C0730(a1, v20);
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = os_log_type_enabled(v34, v35);
    v105 = v32;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v37 = 136446722;
      v38 = _typeName(_:qualified:)();
      v40 = sub_10002C9C8(v38, v39, &aBlock);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      v41 = Set.description.getter();
      v43 = sub_10002C9C8(v41, v42, &aBlock);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2082;
      v44 = Set.description.getter();
      v4 = sub_10002C9C8(v44, v45, &aBlock);

      *(v37 + 24) = v4;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s] Updating members with added: %{public}s, removed: %{public}s", v37, 0x20u);
      swift_arrayDestroy();
    }

    aBlock = _swiftEmptyArrayStorage;
    v8 = (v33 + 7);
    v46 = 1 << *(v33 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    a1 = v47 & v33[7];
    v7 = ((v46 + 63) >> 6);

    v48 = 0;
    v101 = _swiftEmptyArrayStorage;
    while (a1)
    {
LABEL_22:
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v51 = (v33[6] + ((v48 << 10) | (16 * v50)));
      v53 = *v51;
      v52 = v51[1];
      v54 = objc_allocWithZone(IDSURI);

      v4 = String._bridgeToObjectiveC()();
      v55 = [v54 initWithPrefixedURI:v4];

      if (v55)
      {
        v20 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v55];

        if (v20)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v56 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v101 = aBlock;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v49 >= v7)
      {
        break;
      }

      a1 = *(v8 + 8 * v49);
      ++v48;
      if (a1)
      {
        v48 = v49;
        goto LABEL_22;
      }
    }

    aBlock = _swiftEmptyArrayStorage;
    v7 = (v105 + 7);
    v57 = 1 << *(v105 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v105[7];
    v20 = ((v57 + 63) >> 6);

    a1 = 0;
    v100 = _swiftEmptyArrayStorage;
    while (v59)
    {
      v8 = v105;
LABEL_38:
      v61 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v62 = (*(v8 + 48) + ((a1 << 10) | (16 * v61)));
      v64 = *v62;
      v63 = v62[1];
      v65 = objc_allocWithZone(IDSURI);

      v4 = String._bridgeToObjectiveC()();
      v66 = [v65 initWithPrefixedURI:v4];

      if (v66)
      {
        v67 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v66];

        if (v67)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v68 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v100 = aBlock;
        }
      }

      else
      {
      }
    }

    v8 = v105;
    while (1)
    {
      v60 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_51;
      }

      if (v60 >= v20)
      {
        break;
      }

      v59 = *&v7[8 * v60];
      ++a1;
      if (v59)
      {
        a1 = v60;
        goto LABEL_38;
      }
    }

    v69 = v94;
    v70 = sub_100213BC4();
    v71 = ObjectType;
    if (v70)
    {
      v72 = v70;
      sub_100018D7C(0, &qword_100522970, IDSFirewallEntry_ptr);
      v73 = v101;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v75 = swift_allocObject();
      *(v75 + 16) = v73;
      *(v75 + 24) = v71;
      v111 = sub_1002232FC;
      v112 = v75;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_1001BC53C;
      v110 = &unk_1004C3850;
      v76 = _Block_copy(&aBlock);

      [v72 donateEntries:isa withCompletion:v76];
      _Block_release(v76);
    }

    v77 = *&v69[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall];
    v78 = v97;
    if (v77)
    {
      sub_100018D7C(0, &qword_100522970, IDSFirewallEntry_ptr);
      v79 = v77;
      v80 = Array._bridgeToObjectiveC()().super.isa;

      v81 = swift_allocObject();
      *(v81 + 16) = v101;
      *(v81 + 24) = v71;
      v111 = sub_100223310;
      v112 = v81;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_1001BC53C;
      v110 = &unk_1004C38A0;
      v82 = _Block_copy(&aBlock);

      v83 = v79;
      v8 = v105;
      [v83 removeDonatedEntries:v80 withCompletion:v82];
      _Block_release(v82);

      sub_100222DC0(v77);
    }

    else
    {
    }

    v84 = type metadata accessor for TaskPriority();
    v85 = v102;
    (*(*(v84 - 8) + 56))(v102, 1, 1, v84);
    v86 = swift_allocObject();
    v86[2] = 0;
    v86[3] = 0;
    v86[4] = v8;
    v86[5] = v69;
    v86[6] = v33;
    v86[7] = v71;
    v87 = v69;
    sub_1001CB290(0, 0, v85, &unk_1004500F0, v86);

    v88 = *&v87[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue];
    v89 = swift_allocObject();
    *(v89 + 16) = v87;
    v111 = sub_100223794;
    v112 = v89;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100003D98;
    v110 = &unk_1004C3918;
    v90 = _Block_copy(&aBlock);
    v91 = v87;
    v92 = v95;
    static DispatchQoS.unspecified.getter();
    v106 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v93 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v90);
    (*(v103 + 8))(v78, v93);
    (*(v96 + 8))(v92, v98);
  }

  return result;
}

uint64_t sub_100214934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  return _swift_task_switch(sub_100214958, 0, 0);
}

uint64_t sub_100214958()
{
  v1 = v0[26];
  if (*(v1 + 16))
  {
    v2 = v0 + 2;
    v3 = *(v0[27] + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
    sub_1001FD048(v1);
    v0[30] = 0;
    sub_100018D7C(0, &qword_100522978, SKHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[31] = isa;

    v0[2] = v0;
    v0[3] = sub_100214C40;
    v5 = swift_continuation_init();
    v0[25] = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BF7B8;
    v0[21] = &unk_1004C3940;
    v0[22] = v5;
    [v3 removeInvitedHandles:isa completion:v0 + 18];
LABEL_5:

    return _swift_continuation_await(v2);
  }

  v6 = v0[28];
  if (*(v6 + 16))
  {
    v2 = v0 + 10;
    v7 = v0[27];
    v8 = *(v7 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
    sub_1001FD048(v6);
    sub_100018D7C(0, &qword_100522978, SKHandle_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;
    v0[33] = v9;

    v10 = *(v7 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_localHandle);
    v0[10] = v0;
    v0[11] = sub_10021509C;
    v11 = swift_continuation_init();
    v0[25] = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BF7B8;
    v0[21] = &unk_1004C3968;
    v0[22] = v11;
    [v8 inviteHandles:v9 fromSenderHandle:v10 completion:v0 + 18];
    goto LABEL_5;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100214C40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10021539C;
  }

  else
  {
    v3 = sub_100214D50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100214D50()
{
  v24 = v0;

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529B78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, v23);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = Set.description.getter();
    v13 = sub_10002C9C8(v11, v12, v23);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Removed handles: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 224);
  if (*(v14 + 16))
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);
    v17 = *(v16 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
    sub_1001FD048(v14);
    sub_100018D7C(0, &qword_100522978, SKHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 264) = isa;

    v19 = *(v16 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_localHandle);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_10021509C;
    v20 = swift_continuation_init();
    *(v0 + 200) = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1001BF7B8;
    *(v0 + 168) = &unk_1004C3968;
    *(v0 + 176) = v20;
    [v17 inviteHandles:isa fromSenderHandle:v19 completion:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10021509C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_10021540C;
  }

  else
  {
    v3 = sub_1002151AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002151AC()
{
  v17 = v0;

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529B78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = Set.description.getter();
    v13 = sub_10002C9C8(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Invited handles: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10021539C()
{
  v1 = *(v0 + 256);
  swift_willThrow();
  v2 = *(v0 + 256);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10021540C()
{
  v1 = *(v0 + 272);
  swift_willThrow();
  v2 = *(v0 + 272);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002154A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100215510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v57 = a1;
  v58 = a2;
  v4 = sub_1001BC5A8(&qword_1005228D0, &qword_100450058);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  __chkstk_darwin(v4);
  v52 = v45 - v6;
  v7 = sub_1001BC5A8(&qword_1005228C8, &qword_100450050);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = v45 - v9;
  v47 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v47);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v46 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue;
  v45[1] = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100522A90, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  v18 = v48;
  *&v18[v46] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v18[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall] = 1;
  *&v18[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members] = &_swiftEmptySetSingleton;
  v19 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10021DF30(_swiftEmptyArrayStorage);
    }

    else
    {
      v19 = &_swiftEmptySetSingleton;
    }
  }

  v20 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource__presentDevices;
  v60 = v19;
  sub_1001BC5A8(&qword_100522810, &unk_10044FBE8);
  v21 = v49;
  Published.init(initialValue:)();
  (*(v50 + 32))(&v18[v20], v21, v51);
  v22 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource__presentHandles;
  v60 = &_swiftEmptySetSingleton;
  sub_1001BC5A8(&unk_100522820, &qword_10044EA80);
  v23 = v52;
  Published.init(initialValue:)();
  (*(v53 + 32))(&v18[v22], v23, v54);
  v24 = objc_allocWithZone(SKHandle);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithString:v25];

  *&v18[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_localHandle] = v26;
  v27 = &v18[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presenceIdentifier];
  v28 = v58;
  *v27 = v57;
  *(v27 + 1) = v28;
  v29 = objc_allocWithZone(SKPresenceOptions);

  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 initWithServiceIdentifier:v30];

  [v31 setIsPersonal:0];
  v32 = objc_allocWithZone(IDSURI);
  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 initWithPrefixedURI:v33];

  [v31 setClientSpecifiedURI:v34];
  v35 = objc_allocWithZone(SKPresence);
  v36 = v31;
  v37 = String._bridgeToObjectiveC()();

  v38 = [v35 initWithPresenceIdentifier:v37 options:v36];

  *&v18[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence] = v38;
  v39 = type metadata accessor for PresenceDataSource();
  v59.receiver = v18;
  v59.super_class = v39;
  v40 = objc_msgSendSuper2(&v59, "init");
  v41 = *&v40[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence];
  v42 = *&v40[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue];
  v43 = v40;
  [v41 addDelegate:v43 queue:v42];

  return v43;
}

uint64_t sub_100215B8C(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v3[45] = swift_getObjectType();

  return _swift_task_switch(sub_100215C00, 0, 0);
}

uint64_t sub_100215C00()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v1;

  v5 = sub_10021EF3C(inited);
  v0[46] = v5;
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
  v6 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
  v0[47] = v6;
  sub_100216450(v5);
  v7 = objc_allocWithZone(SKPresencePayload);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithDictionary:isa];
  v0[48] = v9;

  v0[2] = v0;
  v0[3] = sub_100215E28;
  v10 = swift_continuation_init();
  v11 = sub_1001BC5A8(&qword_100521660, &unk_100450020);
  v0[49] = v11;
  v0[33] = v11;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001BF7B8;
  v0[29] = &unk_1004C3490;
  v0[30] = v10;
  [v6 assertPresenceWithPresencePayload:v9 completion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100215E28()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  if (v3)
  {
    v4 = *(v1 + 368);

    v5 = sub_100216370;
  }

  else
  {
    v5 = sub_100215F40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100215F40()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100216044;
  v3 = swift_continuation_init();
  *(v0 + 328) = v1;
  *(v0 + 272) = _NSConcreteStackBlock;
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1001BF7B8;
  *(v0 + 296) = &unk_1004C34B8;
  *(v0 + 304) = v3;
  [v2 retainTransientSubscriptionAssertionWithCompletion:v0 + 272];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100216044()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 408) = v3;
  if (v3)
  {
    v4 = *(v1 + 368);

    v5 = sub_1002163E4;
  }

  else
  {
    v5 = sub_10021615C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10021615C()
{
  v19 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529B78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[46];
  if (v5)
  {
    v7 = v0[45];
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Done asserting presence with payload: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100216370()
{
  v1 = v0[50];
  v2 = v0[48];
  swift_willThrow();

  v3 = v0[50];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1002163E4()
{
  v1 = *(v0 + 408);
  swift_willThrow();
  v2 = *(v0 + 408);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100216450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1001C4088(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1001C4088(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_1001C4088(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100216718()
{
  *(v1 + 208) = v0;
  *(v1 + 216) = swift_getObjectType();

  return _swift_task_switch(sub_100216788, 0, 0);
}

uint64_t sub_100216788()
{
  v1 = *(v0[26] + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
  v0[28] = v1;
  v0[2] = v0;
  v0[3] = sub_1002168B0;
  v2 = swift_continuation_init();
  v3 = sub_1001BC5A8(&qword_100521660, &unk_100450020);
  v0[29] = v3;
  v0[25] = v3;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BF7B8;
  v0[21] = &unk_1004C3440;
  v0[22] = v2;
  [v1 releaseTransientSubscriptionAssertionWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002168B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_100216D50;
  }

  else
  {
    v3 = sub_1002169C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002169C0()
{
  v1 = v0[28];
  v2 = v0[29];
  v0[10] = v0;
  v0[11] = sub_100216AB8;
  v3 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BF7B8;
  v0[21] = &unk_1004C3468;
  v0[22] = v3;
  [v1 releasePresenceWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100216AB8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_100216DBC;
  }

  else
  {
    v3 = sub_100216BC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100216BC8()
{
  v13 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Done releasing presence.", v5, 0xCu);
    sub_100026A44(v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100216D50()
{
  v1 = *(v0 + 240);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100216DBC()
{
  v1 = *(v0 + 248);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100216E90(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v12 = [a1 presentDevices];
  sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10021F180(v13);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1002182FC(v11, v73);
  LOBYTE(v13) = v14;

  if (v13)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v73 = v11;

  a1 = v2;
  static Published.subscript.setter();
  if (qword_100529B90 != -1)
  {
    goto LABEL_26;
  }

LABEL_4:
  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_100529B98);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = _typeName(_:qualified:)();
    v22 = sub_10002C9C8(v20, v21, &v73);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100222D2C();
    v23 = Set.description.getter();
    v25 = v24;

    v26 = sub_10002C9C8(v23, v25, &v73);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}s] Present devices updated: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

LABEL_7:
  sub_1001FD2C4(v11);
  v28 = v27;
  sub_100206AA0(v11);
  v30 = v29;

  v31 = *(v28 + 16);
  v32 = *(v30 + 16);

  if (v31 != v32)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100015AFC(v33, qword_100529B78);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v73 = v37;
      *v36 = 136446210;
      v38 = _typeName(_:qualified:)();
      v40 = sub_10002C9C8(v38, v39, &v73);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s] Some devices are missing payload.", v36, 0xCu);
      sub_100026A44(v37);
    }
  }

  v42 = sub_100008280(v41);

  v43 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];

  v45 = sub_10021BA3C(v44, v42);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v43) = sub_100218144(v45, v73);

  if (v43)
  {

LABEL_20:

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v73 = v45;
  v46 = v2;
  static Published.subscript.setter();
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100015AFC(v47, qword_100529B78);
  v48 = v46;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v51 = 136446466;
    v52 = _typeName(_:qualified:)();
    v54 = sub_10002C9C8(v52, v53, &v73);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = Set.description.getter();
    v57 = v56;

    v58 = sub_10002C9C8(v55, v57, &v73);

    *(v51 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] Present handles updated: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
  }

  v60 = sub_100008280(v59);

  v61 = *(v60 + 16);

  if (v61 == v31)
  {
    goto LABEL_20;
  }

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v64 = 136446466;
    v65 = _typeName(_:qualified:)();
    v67 = sub_10002C9C8(v65, v66, &v73);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2082;
    v68 = Array.description.getter();
    v70 = v69;

    v71 = sub_10002C9C8(v68, v70, &v73);

    *(v64 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}s] Handle collision. Handles: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_10021783C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10021799C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E6758();
  *a2 = result;
  return result;
}

void sub_1002179C8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_100217A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E675C();
  *a2 = result;
  return result;
}

void sub_100217A3C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v3 = v2;
}

id sub_100217A84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E67BC();
  *a2 = result;
  return result;
}

void sub_100217AB0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

id sub_100217AF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E681C();
  *a2 = result;
  return result;
}

void sub_100217B24(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 48);
  *(*a2 + 48) = *a1;
  v3 = v2;
}

id sub_100217B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E687C();
  *a2 = result;
  return result;
}

void sub_100217B98(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 56);
  *(*a2 + 56) = *a1;
  v3 = v2;
}

uint64_t sub_100217BE0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_100217C20(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t (*sub_100217C64())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_100217CD0()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = *(v1 + 64);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4;
  v5 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
  return v5;
}

uint64_t (*sub_100217D90())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_100217E34()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = *(v1 + 32);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4;
  v5 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
  return v5;
}

uint64_t sub_100217EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3, v5, v6);
}

void sub_100217F9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100218040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1002180D0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100218144(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1002182FC(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_100218574(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_100218574(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_100218674(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
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

unint64_t sub_1002186FC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100219264(a1, v4);
}

uint64_t sub_100218740(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100218978(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100218B68(v21 + 1);
    }

    v19 = v8;
    sub_1001E45EC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100218D90(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_100218978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100218B68(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100218B68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_100218D90(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100218B68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100218F00();
      goto LABEL_12;
    }

    sub_100219050(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100218F00()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_100219050(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_100219264(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
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

uint64_t sub_100219338(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1002195F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_1001C4088((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100018BE4(v24, &v37);
        sub_100020E0C(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
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
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1001C4088(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1002198B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005229C8, &qword_100450140);
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

uint64_t sub_100219B20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005229B8, &unk_10045B1F0);
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

uint64_t sub_100219DC8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1001BC5A8(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10021A064(uint64_t result, uint64_t a2)
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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

void sub_10021A214(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

_OWORD *sub_10021A3A0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1001C4088(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10021A41C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
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
        v18 = 40 * v17;
        sub_100018BE4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100020E0C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1001C4088(v22, (*(v4 + 56) + v17));
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

void *sub_10021A5C0()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005229C8, &qword_100450140);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_10021A724()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005229B8, &unk_10045B1F0);
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

id sub_10021A894(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001BC5A8(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

_OWORD *sub_10021A9F0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10001BF64(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10021A41C();
      goto LABEL_7;
    }

    sub_1002195F8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10001BF64(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100018BE4(a2, v22);
      return sub_10021A3A0(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100026A44(v17);

  return sub_1001C4088(a1, v17);
}

id sub_10021AB3C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002186FC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1002198B0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1002186FC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10021A5C0();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

void sub_10021ACB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10000698C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100219DC8(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10000698C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_10021A894(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

char *sub_10021AE54(char *a1, int64_t a2, char a3)
{
  result = sub_10021AE74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021AE74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100522988, &unk_10045A7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10021AF80(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10021B0E0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10021B268(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_10021B0E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_10021B40C(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_10021B40C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10021B1D0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_10021E668(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_10021B268(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10021B0E0(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_10021B2E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1002227D8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_10021B37C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_10021BC00(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10021B40C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1001BC5A8(&qword_1005229B8, &unk_10045B1F0);
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
  v33 = v4;
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
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10021B650(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
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
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10021B8A8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10002AFD0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10021B99C(uint64_t a1)
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

uint64_t sub_10021BA3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_10021BC00(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_10021B37C(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_10021BC00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100007BC4(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_10021BFDC(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_10021C130(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10021C368(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t sub_10021C3CC(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10021C3DC(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void sub_10021C3EC()
{
  v1 = *(v0 + 16);
  *v1 = *(*(v0 + 24) + OBJC_IVAR___MRDFastSyncGroupSession__state);
  *(v1 + 8) = 0;
}

uint64_t sub_10021C408()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_10021C430()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
    v5 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
    swift_beginAccess();
    v6 = *(v1 + v5);

    v7 = sub_1001BD5E8(v4, v2, v6);

    v8 = *(v1 + OBJC_IVAR___MRDFastSyncGroupSession_localIdentity);
    v9 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
    v10 = v8;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v9 initWithIdentifier:v11 identity:v10 connected:1 guest:v7 & 1];

    v13 = *v3;
    *v3 = v12;
  }
}

uint64_t sub_10021C5C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100015AFC(v5, qword_100529B78);
  v6 = v1;

  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v10 = 138544130;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2082;
    v12 = v2;
    v14 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v13 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v15 = v6;
    v16 = v14;
    v2 = v12;
    *(v10 + 14) = sub_10002C9C8(v16, v13, v41);
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_10002C9C8(v12, v3, v41);
    *(v10 + 32) = 2112;
    *(v10 + 34) = v7;
    v11[1] = v7;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}@]<%{public}s> Prewarm identifier: %{public}s for identity: %@.", v10, 0x2Au);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
  swift_beginAccess();
  v19 = *&v6[v18];
  if (!v19)
  {
    goto LABEL_26;
  }

  if (!*(v19 + 16) || (v20 = *&v6[v18], , sub_1002186FC(v7), v22 = v21, , (v22 & 1) == 0))
  {
    swift_beginAccess();
    if (!*&v6[v18])
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v23 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *&v6[v18];
    *&v6[v18] = 0x8000000000000000;
    sub_10021AB3C(_swiftEmptyArrayStorage, v23, isUniquelyReferenced_nonNull_native);

    *&v6[v18] = v39;
    swift_endAccess();
  }

  swift_beginAccess();
  if (!*&v6[v18])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *&v6[v18];
  v40 = v26;
  *&v6[v18] = 0x8000000000000000;
  v28 = sub_1002186FC(v7);
  v29 = *(v26 + 2);
  v30 = (v27 & 1) == 0;
  v31 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = v27;
  if (*(v26 + 3) >= v31)
  {
    if (v25)
    {
      if (v27)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_10021A5C0();
      if (v32)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1002198B0(v31, v25);
  v33 = sub_1002186FC(v7);
  if ((v32 & 1) != (v34 & 1))
  {
LABEL_29:
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v28 = v33;
  if ((v32 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v26 = *(*(v26 + 7) + 8 * v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v26 = sub_10002AFD0(0, *(v26 + 2) + 1, 1, v26);
  }

  v36 = *(v26 + 2);
  v35 = *(v26 + 3);
  if (v36 >= v35 >> 1)
  {
    v26 = sub_10002AFD0((v35 > 1), v36 + 1, 1, v26);
  }

  *(v26 + 2) = v36 + 1;
  v37 = &v26[16 * v36];
  *(v37 + 4) = v2;
  *(v37 + 5) = v3;
  *(*(v40 + 7) + 8 * v28) = v26;
  *&v6[v18] = v40;

  return swift_endAccess();
}

uint64_t sub_10021CA10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10021CA58()
{
  v1 = v0[2];
  v69 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  if (qword_100529B70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = type metadata accessor for Logger();
    LOBYTE(v5) = sub_100015AFC(v4, qword_100529B78);
    v1 = v1;

    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v66 = v3;
      v10 = v6;
      v11 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v9 = 138544130;
      *(v9 + 4) = v1;
      *v11 = v1;
      LOBYTE(v5) = 34;
      *(v9 + 12) = 2082;
      v12 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v13 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v14 = v1;
      *(v9 + 14) = sub_10002C9C8(v12, v13, v72);
      *(v9 + 22) = 2082;
      *(v9 + 24) = sub_10002C9C8(v69, v66, v72);
      *(v9 + 32) = 2112;
      *(v9 + 34) = v10;
      v11[1] = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}@]<%{public}s> Cancel prewarming identifier: %{public}s for identity: %@.", v9, 0x2Au);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();
      v6 = v10;
      v3 = v66;

      swift_arrayDestroy();
    }

    v16 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
    swift_beginAccess();
    v17 = *&v1[v16];
    if (!v17)
    {
      goto LABEL_69;
    }

    if (!*(v17 + 16) || (v18 = *&v1[v16], , sub_1002186FC(v6), v20 = v19, , (v20 & 1) == 0))
    {
      v30 = v1;
      v31 = v6;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v71 = v36;
        *v34 = 138543874;
        *(v34 + 4) = v30;
        *v35 = v30;
        *(v34 + 12) = 2082;
        v37 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v38 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v39 = v30;
        *(v34 + 14) = sub_10002C9C8(v37, v38, &v71);
        *(v34 + 22) = 2112;
        *(v34 + 24) = v31;
        v35[1] = v31;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}@]<%{public}s> No prewarmed identifiers for identity: %@.", v34, 0x20u);
        sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
        swift_arrayDestroy();

        sub_100026A44(v36);
      }

      return;
    }

    swift_beginAccess();
    if (!*&v1[v16])
    {
      goto LABEL_70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *&v1[v16];
    v2 = v70;
    *&v1[v16] = 0x8000000000000000;
    v23 = sub_1002186FC(v6);
    v24 = v2[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      __break(1u);
      goto LABEL_60;
    }

    LOBYTE(v5) = v22;
    if (v2[3] < v26)
    {
      break;
    }

    v29 = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_67:
      v2 = &v70;
      sub_10021A5C0();
LABEL_12:
      v29 = v69;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_71;
    }

    v41 = *(v70[7] + 8 * v23);
    v42 = sub_10021F2C0(v41, v29, v3);
    if (v43)
    {
      v44 = *(v41 + 2);
      v5 = v44;
      goto LABEL_24;
    }

    v5 = v42;
    v65 = v6;
    v45 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
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
      goto LABEL_74;
    }

    v67 = v23;
    v6 = *(v41 + 2);

    if (v45 == v6)
    {
LABEL_22:

      v44 = *(v41 + 2);
      v23 = v67;
      if (v44 >= v5)
      {
        v6 = v65;
        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_24:
          if (!__OFADD__(v44, v5 - v44))
          {
            v46 = swift_isUniquelyReferenced_nonNull_native();
            if ((v46 & 1) != 0 && v5 <= *(v41 + 3) >> 1)
            {
              sub_10021F360(v5, v44, 0);
              goto LABEL_32;
            }

            if (v44 <= v5)
            {
              v47 = v5;
            }

            else
            {
              v47 = v44;
            }

            v41 = sub_10002AFD0(v46, v47, 1, v41);
            sub_10021F360(v5, v44, 0);
            if (v41)
            {
LABEL_32:
              v48 = v70;
              *(v70[7] + 8 * v23) = v41;
            }

            else
            {
              v48 = v70;

              sub_10021A214(v23, v48);
            }

            *&v1[v16] = v48;

            swift_endAccess();
            v49 = *&v1[v16];
            if (!v49)
            {
              goto LABEL_72;
            }

            if (*(v49 + 16))
            {
              v50 = *&v1[v16];

              v51 = sub_1002186FC(v6);
              if (v52)
              {
                v53 = *(*(v49 + 56) + 8 * v51);

                v54 = *(v53 + 16);

                if (v54)
                {
                  return;
                }

                swift_beginAccess();
                if (*&v1[v16])
                {
                  sub_1001EC8FC(0, v6);
                  swift_endAccess();
                  return;
                }

                goto LABEL_73;
              }

              goto LABEL_64;
            }

LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v23 = 16 * v5;
    v55 = v69;
    while (v45 < v6)
    {
      v2 = *&v41[v23 + 48];
      v56 = *&v41[v23 + 56];
      if (v2 != v55 || v56 != v3)
      {
        v58 = *&v41[v23 + 48];
        v59 = *&v41[v23 + 56];
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v55 = v69;
        }

        else
        {
          if (v45 != v5)
          {
            if (v5 >= v6)
            {
              goto LABEL_65;
            }

            v60 = &v41[16 * v5 + 32];
            v6 = *(v60 + 1);
            v68 = *v60;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_10021C354(v41);
            }

            v61 = &v41[16 * v5];
            v62 = *(v61 + 5);
            *(v61 + 4) = v2;
            *(v61 + 5) = v56;

            if (v45 >= *(v41 + 2))
            {
              goto LABEL_66;
            }

            v63 = &v41[v23];
            v64 = *&v41[v23 + 56];
            *(v63 + 6) = v68;
            *(v63 + 7) = v6;
          }

          v55 = v69;
          ++v5;
        }
      }

      ++v45;
      v6 = *(v41 + 2);
      v23 += 16;
      if (v45 == v6)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  sub_1002198B0(v26, isUniquelyReferenced_nonNull_native);
  v2 = v70;
  v27 = sub_1002186FC(v6);
  if ((v5 & 1) == (v28 & 1))
  {
    v23 = v27;
    goto LABEL_12;
  }

LABEL_74:

  sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10021D1DC()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___MRDFastSyncGroupSession__state) == 1 && !*(v1 + OBJC_IVAR___MRDFastSyncGroupSession_presenceTask))
  {
    return sub_100205854();
  }

  return result;
}

void sub_10021D224()
{
  v1 = v0[2];
  v45 = v0[3];
  v43 = v0[4];
  v2 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  swift_beginAccess();
  v44 = v1;
  v3 = *&v1[v2];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*&v1[v2] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v46 = *&v1[v2];
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          return;
        }

        v9 = *(v5 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_9:
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = *(*(v46 + 48) + 16 * v13 + 8);
    v15 = *(*(v46 + 56) + 8 * v13);

    v16 = v15;
    v17 = [v16 identifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v45 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v47 == v21 && v19 == v23)
    {
      break;
    }

    v9 &= v9 - 1;
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  v11 = v44;
  v26 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_removedParticipantIdentityIdentifiers];

  v27 = [v45 identifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  LOBYTE(v27) = sub_1001BD5E8(v28, v30, v26);

  if (v27)
  {
    return;
  }

  if (qword_100529B70 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100015AFC(v31, qword_100529B78);
  v32 = v11;
  v33 = v45;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48 = v38;
    *v36 = 138543874;
    *(v36 + 4) = v32;
    *v37 = v32;
    *(v36 + 12) = 2082;
    v39 = *&v32[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v40 = *&v32[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v41 = v32;
    *(v36 + 14) = sub_10002C9C8(v39, v40, &v48);
    *(v36 + 22) = 2112;
    *(v36 + 24) = v33;
    v37[1] = v33;
    v42 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}@]<%{public}s> Auto-approving pre-authorized identity: %@", v36, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v38);
  }

  *v43 = 1;
}

uint64_t sub_10021D638()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  swift_beginAccess();
  sub_100008318(&v7, v3, v5);
  swift_endAccess();
}

void sub_10021D6DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529B78);
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 138543874;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2082;
    v9 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v4;
    *(v7 + 14) = sub_10002C9C8(v9, v10, v19);
    *(v7 + 22) = 2080;
    v12 = [v1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, v19);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Adding pending participant: %s", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  swift_beginAccess();
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v4[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((*&v4[v17] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_1002021D8(1);
}

void sub_10021D984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529B78);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v7 = 138543874;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2082;
    v9 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v4;
    *(v7 + 14) = sub_10002C9C8(v9, v10, v22);
    *(v7 + 22) = 2080;
    v12 = [v2 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, v22);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Removing pending participant: %s", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v18 = sub_10021F5CC(&v4[v17], v2);
  swift_unknownObjectRelease();
  v19 = *&v4[v17];
  if (v19 >> 62)
  {
    if (v19 < 0)
    {
      v21 = *&v4[v17];
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20 >= v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v18)
    {
LABEL_7:
      sub_10021F9FC(v18, v20);
      swift_endAccess();
      sub_1002021D8(1);
      return;
    }
  }

  __break(1u);
}

void sub_10021DCBC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = (*((swift_isaMask & *v2) + 0x2B8))();
  if (v5)
  {
    v6 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = (*((swift_isaMask & *v2) + 0x2A0))();
    if (v7)
    {
      v8 = v7;
      [v6 session:v2 didReceiveRemoteControlMessage:isa from:v7];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10021DDE4()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*((swift_isaMask & *v2) + 0x2B8))();
  if (v6)
  {
    v7 = v6;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v7 session:v2 didReceiveRemoteControlMessage:isa from:v5];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_10021DECC()
{
  result = qword_1005222A8;
  if (!qword_1005222A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222A8);
  }

  return result;
}

uint64_t sub_10021DF20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10021DF30(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10021E220(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_100008318(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_10021E2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v5 = a1;
  sub_10021AE54(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = _HashTable.startBucket.getter();
  v9 = 0;
  v51 = v5 + 72;
  v52 = v2;
  v53 = a2;
  v54 = v5 + 64;
  v55 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_26;
    }

    v59 = 1 << v8;
    v60 = v8 >> 6;
    v57 = v9;
    v58 = *(v5 + 36);
    v61 = v8;
    v13 = (*(v5 + 56) + 16 * v8);
    v15 = *v13;
    v14 = v13[1];

    v16 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
    swift_beginAccess();
    v17 = *(a2 + v16);

    sub_1001BD5E8(v15, v14, v17);

    v18 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
    swift_beginAccess();
    v19 = *(a2 + v18);
    if (!*(v19 + 16))
    {
      goto LABEL_27;
    }

    v20 = sub_10000698C(v15, v14);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = v3;
    v23 = (*(v19 + 56) + 16 * v20);
    v25 = *v23;
    v24 = v23[1];
    v26 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
    swift_beginAccess();
    v27 = *(a2 + v26);
    if (!*(v27 + 16))
    {
      goto LABEL_29;
    }

    v28 = sub_10000698C(v25, v24);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_30;
    }

    v31 = *(*(v27 + 56) + 8 * v28);

    sub_10036D3A4();
    if (v56)
    {
      goto LABEL_34;
    }

    v36 = v32;
    v37 = v33;
    v38 = v34;
    v39 = v35;

    v3 = v22;
    v41 = v22[2];
    v40 = v22[3];
    if (v41 >= v40 >> 1)
    {
      sub_10021AE54((v40 > 1), v41 + 1, 1);
      v3 = v22;
    }

    v3[2] = v41 + 1;
    v42 = &v3[4 * v41];
    v42[4] = v36;
    v42[5] = v37;
    v42[6] = v38;
    *(v42 + 56) = v39 & 1;
    *(v42 + 57) = BYTE1(v39) & 1;
    *(v42 + 58) = BYTE2(v39) & 1;
    v6 = v54;
    v5 = v55;
    v10 = 1 << *(v55 + 32);
    if (v61 >= v10)
    {
      goto LABEL_31;
    }

    v43 = *(v54 + 8 * v60);
    if ((v43 & v59) == 0)
    {
      goto LABEL_32;
    }

    if (v58 != *(v55 + 36))
    {
      goto LABEL_33;
    }

    v44 = v43 & (-2 << (v61 & 0x3F));
    if (v44)
    {
      v10 = __clz(__rbit64(v44)) | v61 & 0x7FFFFFFFFFFFFFC0;
      v11 = v52;
      v12 = v57;
    }

    else
    {
      v45 = v60 << 6;
      v46 = v60 + 1;
      v11 = v52;
      v47 = (v51 + 8 * v60);
      v12 = v57;
      while (v46 < (v10 + 63) >> 6)
      {
        v49 = *v47++;
        v48 = v49;
        v45 += 64;
        ++v46;
        if (v49)
        {
          sub_10000A16C(v61, v58, 0);
          v10 = __clz(__rbit64(v48)) + v45;
          goto LABEL_4;
        }
      }

      sub_10000A16C(v61, v58, 0);
    }

LABEL_4:
    v9 = v12 + 1;
    v8 = v10;
    a2 = v53;
    if (v9 == v11)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  __break(1u);
  return result;
}

uint64_t sub_10021E668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a1;
  v48 = type metadata accessor for UUID();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v48);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Participant();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v55);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a4;
  v54 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v46 = (a4 + OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier);
  v51 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  result = swift_beginAccess();
  v20 = 0;
  v21 = (v16 + 63) >> 6;
  v44 = 0;
  v45 = (v6 + 8);
  v52 = v9;
  v49 = (v9 + 8);
  v50 = v9 + 16;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v25 = v22 | (v20 << 6);
    (*(v52 + 16))(v12, *(v54 + 48) + *(v52 + 72) * v25, v55);
    v26 = Participant.handle.getter();
    v28 = v27;
    if (!*(*(v53 + v51) + 16))
    {
LABEL_4:

      goto LABEL_5;
    }

    v29 = v26;
    v30 = *(v53 + v51);

    sub_10000698C(v29, v28);
    v32 = v31;

    if (v32)
    {
      v33 = v47;
      Participant.id.getter();
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*v45)(v33, v48);
      v37 = v46[1];
      if (v37)
      {
        if (v34 == *v46 && v37 == v36)
        {
          goto LABEL_4;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = (*v49)(v12, v55);
        if ((v38 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {

        result = (*v49)(v12, v55);
LABEL_21:
        *(v43 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_24:
          v40 = v54;

          return sub_1001DF2D8(v43, v42, v44, v40);
        }
      }
    }

    else
    {
LABEL_5:
      result = (*v49)(v12, v55);
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= v21)
    {
      goto LABEL_24;
    }

    v24 = *(v14 + 8 * v20);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v18 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10021EA38(uint64_t a1, void *a2)
{
  v3 = v2;
  v46 = type metadata accessor for UUID();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Participant();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v53);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v13 = v11 & 0x3F;
  v14 = ((1 << v11) + 63) >> 6;
  v15 = 8 * v14;
  v16 = a2;
  v17 = v16;
  if (v13 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v39 = v14;
    v40 = v3;
    v38 = &v38;
    __chkstk_darwin(v16);
    v41 = &v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v18 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v19 = -1;
    if (v15 < 64)
    {
      v19 = ~(-1 << v15);
    }

    v14 = v19 & *(a1 + 56);
    v44 = &v17[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier];
    v52 = v17;
    v49 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
    swift_beginAccess();
    v3 = 0;
    v20 = v6;
    v6 = (v15 + 63) >> 6;
    v42 = 0;
    v43 = (v20 + 8);
    v50 = v9;
    v51 = a1;
    v47 = (v9 + 8);
    v48 = v9 + 16;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v9 = v21 | (v3 << 6);
      (*(v50 + 16))(v12, *(a1 + 48) + *(v50 + 72) * v9, v53);
      v24 = Participant.handle.getter();
      v17 = v25;
      v15 = *&v52[v49];
      if (!*(v15 + 16))
      {
LABEL_5:

        goto LABEL_6;
      }

      v26 = v24;
      v27 = *&v52[v49];

      sub_10000698C(v26, v17);
      v29 = v28;

      if (v29)
      {
        v30 = v45;
        Participant.id.getter();
        v15 = UUID.uuidString.getter();
        v17 = v31;
        (*v43)(v30, v46);
        v32 = *(v44 + 1);
        if (v32)
        {
          a1 = v51;
          if (v15 == *v44 && v32 == v17)
          {
            goto LABEL_5;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v47)(v12, v53);
          if ((v15 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          (*v47)(v12, v53);
          a1 = v51;
LABEL_22:
          *&v41[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
          if (__OFADD__(v42++, 1))
          {
            __break(1u);
LABEL_25:
            v34 = sub_1001DF2D8(v41, v39, v42, a1);

            return v34;
          }
        }
      }

      else
      {
LABEL_6:
        (*v47)(v12, v53);
        a1 = v51;
      }
    }

    v22 = v3;
    while (1)
    {
      v3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v3 >= v6)
      {
        goto LABEL_25;
      }

      v23 = *(v18 + 8 * v3);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v36 = swift_slowAlloc();
  v37 = v17;
  v34 = sub_10021B1D0(v36, v14, a1, v37);

  return v34;
}

unint64_t sub_10021EF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000698C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10021F050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001D9AC(v4, &v13, &unk_100527DF0, &unk_100457610);
      v5 = v13;
      v6 = v14;
      result = sub_10000698C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001C4088(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10021F180(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    sub_100222D2C();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100218740(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10021F2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_10021F360(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10021F420(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v19 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [a2 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_unknownObjectRelease();

    if (v14)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();

  return v3;
}

unint64_t sub_10021F5CC(unint64_t *a1, void *a2)
{
  v4 = a2;
  v6 = *a1;
  result = sub_10021F420(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = a1;
  v30 = result;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v30;
      }
    }

    else if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v30;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v11 = *(v6 + 8 * v9 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    v12 = [v11 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v3 = v4;
    v16 = [v4 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
LABEL_8:
      swift_unknownObjectRelease();

LABEL_9:
      v4 = v3;
      goto LABEL_10;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_unknownObjectRelease();

    if (v20)
    {
      goto LABEL_9;
    }

    v4 = v3;
    if (v30 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30 >= v23)
        {
          goto LABEL_53;
        }

        if (v9 >= v23)
        {
          goto LABEL_54;
        }

        v21 = *(v6 + 32 + 8 * v30);
        v22 = *(v6 + 32 + 8 * v9);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        v6 = sub_10021C368(v6);
        v24 = (v6 >> 62) & 1;
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20) = v22;
      swift_unknownObjectRelease();
      if ((v6 & 0x8000000000000000) != 0 || v24)
      {
        v6 = sub_10021C368(v6);
        v25 = v6 & 0xFFFFFFFFFFFFFF8;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v30;
        }
      }

      else if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v9 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      v27 = v25 + 8 * v9;
      v28 = *(v27 + 32);
      *(v27 + 32) = v21;
      swift_unknownObjectRelease();
      *v29 = v6;
    }

    v10 = __OFADD__(v30++, 1);
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_10:
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10021F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}