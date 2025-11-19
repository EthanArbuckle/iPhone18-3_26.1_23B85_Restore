void sub_1002BFB00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

void sub_1002BFBA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, void *a13, __int128 *a14)
{
  v54 = a8;
  v56 = a3;
  v20 = type metadata accessor for Logger();
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  v22 = __chkstk_darwin(v20);
  v57 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*a5 + 208);
  v60 = *a5 + 208;
  v25 = (v24)(v22);
  v26 = v25;
  if (a1)
  {
    v52 = a10;
    v53 = a11;
    v27 = _convertErrorToNSError(_:)();
    v55 = a4;
    v28 = v27;
    [v26 endEventWithID:a6 error:v27];

    v29 = v55;
    v30 = v24();
    [v30 endEventWithID:a7];

    swift_errorRetain();
    v31 = v56;
    sub_10023DC40(a2, v56, v29);
    v32 = sub_100028D40();
    (*(v58 + 16))(v57, v32, v59);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = v24;
    if (os_log_type_enabled(v33, v34))
    {
      v51 = v34;
      v36 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v36 = 136315650;
      v37 = _typeName(_:qualified:)();
      v39 = sub_10002C9C8(v37, v38, &v61);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_10002C9C8(v54, a9, &v61);
      *(v36 + 22) = 2082;
      v40 = v24();
      v41 = [v40 report];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_10002C9C8(v42, v44, &v61);
      v29 = v55;

      *(v36 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v33, v51, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v36, 0x20u);
      swift_arrayDestroy();

      v35 = v24;
      v31 = v56;
    }

    v46 = (*(v58 + 8))(v57, v59);
    v47 = v52;
    v48 = (v35)(v46);
    [v48 finalizeWithCompletion:0];

    swift_errorRetain();
    sub_10023DC40(a2, v31, v29);
    (v47)(a1, a2, v31, v29);

    sub_10023DCB0(a2, v31, v29);

    sub_10023DCB0(a2, v31, v29);
  }

  else
  {
    [v25 endEventWithID:a6 error:0];

    v49 = v24();
    [v49 endEventWithID:a7];

    sub_1002C0020(a13, a5, a14, a10, a11);
  }
}

void sub_1002C0020(void *a1, uint64_t a2, __int128 *a3, void (*a4)(void), uint64_t a5)
{
  v213 = a5;
  v212 = a4;
  v9 = *v5;
  v203 = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(*(v203 - 1) + 64);
  __chkstk_darwin(v203);
  v12 = &v195[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 1);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v214 = &v195[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v207 = &v195[-v19];
  v20 = __chkstk_darwin(v18);
  v201 = &v195[-v21];
  v22 = __chkstk_darwin(v20);
  v199 = &v195[-v23];
  v24 = __chkstk_darwin(v22);
  v198 = &v195[-v25];
  __chkstk_darwin(v24);
  v27 = &v195[-v26];
  v28 = *a3;
  v29 = *(a3 + 1);

  v30 = sub_100028D40();
  v215 = v14;
  v31 = v14[2];
  v208 = v30;
  v216 = v13;
  v210 = (v14 + 2);
  v209 = v31;
  v31(v27);
  sub_1002CDCB4(a1, v12, type metadata accessor for HostedRoutingSourceSession);
  v32 = a3[2];
  v222[0] = a3[1];
  v222[1] = v32;
  v223 = *(a3 + 48);

  sub_10026D080(v222, &aBlock);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  sub_100238E4C(v222);
  v35 = os_log_type_enabled(v33, v34);
  v211 = v29;
  v205 = v28;
  v204 = v9;
  v200 = a2;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v196 = v34;
    v37 = v29;
    v38 = v36;
    v39 = swift_slowAlloc();
    v202 = a1;
    v197 = v39;
    v221[0] = v39;
    *v38 = 136316162;
    v40 = _typeName(_:qualified:)();
    v42 = sub_10002C9C8(v40, v41, v221);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    *(v38 + 14) = sub_10002C9C8(v28, v37, v221);
    *(v38 + 22) = 2082;
    sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_10002187C(v12, type metadata accessor for HostedRoutingSourceSession);
    v46 = sub_10002C9C8(v43, v45, v221);

    *(v38 + 24) = v46;
    *(v38 + 32) = 2082;
    *&aBlock = a2;
    type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
    sub_1002CDD70(&qword_100525780, type metadata accessor for RoutingInteraction.Action.HandoffContext);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = sub_10002C9C8(v47, v48, v221);

    *(v38 + 34) = v49;
    *(v38 + 42) = 2082;
    v50 = a3[1];
    aBlock = *a3;
    v218 = v50;
    v219 = a3[2];
    v220 = *(a3 + 48);
    sub_1002856A4();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = sub_10002C9C8(v51, v52, v221);

    *(v38 + 44) = v53;
    _os_log_impl(&_mh_execute_header, v33, v196, "[%s] pullContentFromSession<%{public}s> - session: %{public}s, context: %{public}s, for: %{public}s", v38, 0x34u);
    swift_arrayDestroy();
    a1 = v202;
  }

  else
  {

    sub_10002187C(v12, type metadata accessor for HostedRoutingSourceSession);
  }

  v54 = v216;
  v55 = v215[1];
  v55(v27, v216);
  v56 = a3;
  v57 = a1[3];
  v58 = v214;
  if (!v57)
  {
    v209(v214, v208, v54);
    v108 = v54;
    v109 = v211;

    v99 = Logger.logObject.getter();
    v110 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v110))
    {
      v111 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v111 = 136315394;
      v112 = _typeName(_:qualified:)();
      v210 = v55;
      v114 = sub_10002C9C8(v112, v113, &aBlock);

      *(v111 + 4) = v114;
      *(v111 + 12) = 2082;
      v115 = sub_10002C9C8(v205, v109, &aBlock);

      *(v111 + 14) = v115;
      _os_log_impl(&_mh_execute_header, v99, v110, "[%s] pullContentFromSession<%{public}s> - failing because source session is not endpoint sourced", v111, 0x16u);
      swift_arrayDestroy();

      v106 = v214;
      v107 = v108;
      goto LABEL_18;
    }

LABEL_19:

    v55(v58, v54);
    goto LABEL_20;
  }

  v59 = a1[2];
  v60 = sub_100034D68();
  v61 = v211;
  if (!v60[2] || (v62 = sub_10000698C(v59, v57), (v63 & 1) == 0))
  {

    v58 = v207;
LABEL_14:
    v209(v58, v208, v54);

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v101 = 136315394;
      v102 = _typeName(_:qualified:)();
      v210 = v55;
      v104 = sub_10002C9C8(v102, v103, &aBlock);

      *(v101 + 4) = v104;
      *(v101 + 12) = 2082;
      v105 = sub_10002C9C8(v205, v61, &aBlock);

      *(v101 + 14) = v105;
      _os_log_impl(&_mh_execute_header, v99, v100, "[%s] pullContentFromSession<%{public}s> - failing because no connected entry for endpoint-sourced session", v101, 0x16u);
      swift_arrayDestroy();

      v106 = v207;
      v107 = v216;
LABEL_18:
      v210(v106, v107);
LABEL_20:
      v116 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v117 = swift_allocError();
      (*(*(v116 - 8) + 104))(v118, enum case for InternalRoutingError.sessionNotFound(_:), v116);
      v119 = *a1;
      v120 = a1[1];

      MRDFastSyncGroupSessionState.rawValue.getter(v117, v119, v120);
      v122 = v121;
      v124 = v123;
      v126 = v125;
      v212();

      sub_10023DCB0(v122, v124, v126);
      return;
    }

    goto LABEL_19;
  }

  v64 = *(v60[7] + 8 * v62);

  v58 = v207;
  if (*(v64 + 16) != 2)
  {

    goto LABEL_14;
  }

  v65 = [*(v64 + 88) origin];
  if (v65)
  {
    v66 = v65;
    v67 = [objc_opt_self() server];
    v68 = [v67 nowPlayingServer];

    v69 = [v68 originClientForOrigin:v66];
    v214 = v66;
    if (v69)
    {
      v202 = a1;
      v70 = v200;
      v71 = *(v200 + 16);
      v201 = *(v200 + 24);
      v72 = String._bridgeToObjectiveC()();
      v73 = v69;
      v74 = v72;
      v203 = v73;
      v75 = [v73 existingNowPlayingClientForDisplayID:v72];

      v207 = v75;
      if (v75)
      {
        v76 = [objc_allocWithZone(MRPlaybackSessionRequest) init];
        v77 = String._bridgeToObjectiveC()();
        v216 = v76;
        [v76 setRequestIdentifier:v77];

        v78 = [v207 activePlayerPath];
        v79 = (*(*v70 + 208))();
        v80 = String._bridgeToObjectiveC()();
        [v79 setRequestID:v80];

        [v79 setInitiator:kMRMigrateInitiatorModernPicker];
        [v79 setPlaybackSessionRequest:v76];
        v215 = v78;
        [v79 setPlayerPath:v78];
        [v79 setEndpointOptions:0];
        [v79 setPlayerOptions:{objc_msgSend(v79, "playerOptions") | 8}];
        v210 = [objc_opt_self() localOrigin];
        v81 = v206;
        v82 = (*(*v206 + 368))();
        v209 = v64;
        v83 = v82;
        v84 = sub_1002661C8();
        v85 = v213;
        v86 = v84;
        v87 = v61;
        v89 = v88;
        v90 = v79;
        v91 = [v78 origin];
        v92 = swift_allocObject();
        v93 = v205;
        *(v92 + 16) = v81;
        *(v92 + 24) = v93;
        *(v92 + 32) = v87;
        *(v92 + 40) = v90;
        *(v92 + 48) = v212;
        *(v92 + 56) = v85;
        v94 = v56[1];
        *(v92 + 64) = *v56;
        *(v92 + 80) = v94;
        *(v92 + 96) = v56[2];
        *(v92 + 112) = *(v56 + 48);
        *(v92 + 120) = v86;
        *(v92 + 128) = v89;
        *(v92 + 136) = v204;
        *&v219 = sub_1002D41FC;
        *(&v219 + 1) = v92;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v218 = sub_1002D50E0;
        *(&v218 + 1) = &unk_1004C8B58;
        v95 = _Block_copy(&aBlock);

        sub_10026D080(v222, v221);
        v96 = v90;
        v97 = v210;
        v98 = v83;

        MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin();
        _Block_release(v95);
      }

      else
      {
        v160 = v71;
        v161 = v198;
        v209(v198, v208, v54);

        v162 = v201;

        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v210 = v55;
          v166 = v165;
          *&aBlock = swift_slowAlloc();
          *v166 = 136315650;
          v167 = _typeName(_:qualified:)();
          v169 = sub_10002C9C8(v167, v168, &aBlock);
          v209 = v64;
          v170 = v169;

          *(v166 + 4) = v170;
          *(v166 + 12) = 2082;
          v171 = sub_10002C9C8(v205, v61, &aBlock);

          *(v166 + 14) = v171;
          *(v166 + 22) = 2082;
          *(v166 + 24) = sub_10002C9C8(v160, v162, &aBlock);
          _os_log_impl(&_mh_execute_header, v163, v164, "[%s] pullContentFromSession<%{public}s> - failing because no source client found for: %{public}s", v166, 0x20u);
          swift_arrayDestroy();

          v210(v198, v216);
        }

        else
        {

          v55(v161, v54);
        }

        v183 = v202;
        v184 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
        v185 = swift_allocError();
        (*(*(v184 - 8) + 104))(v186, enum case for InternalRoutingError.unsupportedOperation(_:), v184);
        v187 = *v183;
        v188 = v183[1];

        MRDFastSyncGroupSessionState.rawValue.getter(v185, v187, v188);
        v190 = v189;
        v192 = v191;
        v194 = v193;
        v212();

        sub_10023DCB0(v190, v192, v194);
      }
    }

    else
    {
      v135 = v199;
      v209(v199, v208, v54);

      v136 = v66;
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v202 = a1;
        v141 = v140;
        v142 = swift_slowAlloc();
        v210 = v55;
        *&aBlock = v142;
        *v139 = 136315650;
        v143 = _typeName(_:qualified:)();
        v145 = sub_10002C9C8(v143, v144, &aBlock);
        v209 = v64;
        v146 = v145;

        *(v139 + 4) = v146;
        *(v139 + 12) = 2082;
        v147 = sub_10002C9C8(v205, v61, &aBlock);

        *(v139 + 14) = v147;
        *(v139 + 22) = 2114;
        *(v139 + 24) = v136;
        *v141 = v214;
        v148 = v136;
        _os_log_impl(&_mh_execute_header, v137, v138, "[%s] pullContentFromSession<%{public}s> - failing because no source origin client found for: %{public}@", v139, 0x20u);
        sub_1000038A4(v141, &qword_100521870, &unk_10044EA70);
        a1 = v202;

        swift_arrayDestroy();

        v210(v199, v216);
      }

      else
      {

        v55(v135, v54);
      }

      v172 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v173 = swift_allocError();
      (*(*(v172 - 8) + 104))(v174, enum case for InternalRoutingError.sessionNotFound(_:), v172);
      v175 = *a1;
      v176 = a1[1];

      MRDFastSyncGroupSessionState.rawValue.getter(v173, v175, v176);
      v178 = v177;
      v180 = v179;
      v182 = v181;
      v212();

      sub_10023DCB0(v178, v180, v182);
    }
  }

  else
  {
    v127 = v201;
    v209(v201, v208, v54);

    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v130 = 136315394;
      v131 = _typeName(_:qualified:)();
      v210 = v55;
      v133 = sub_10002C9C8(v131, v132, &aBlock);

      *(v130 + 4) = v133;
      *(v130 + 12) = 2082;
      v134 = sub_10002C9C8(v205, v61, &aBlock);

      *(v130 + 14) = v134;
      _os_log_impl(&_mh_execute_header, v128, v129, "[%s] pullContentFromSession<%{public}s> - failing because no origin for endpoint-sourced session", v130, 0x16u);
      swift_arrayDestroy();

      v210(v201, v216);
    }

    else
    {

      v55(v127, v54);
    }

    v149 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v150 = swift_allocError();
    (*(*(v149 - 8) + 104))(v151, enum case for InternalRoutingError.sessionNotFound(_:), v149);
    v152 = *a1;
    v153 = a1[1];

    MRDFastSyncGroupSessionState.rawValue.getter(v150, v152, v153);
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v212();

    sub_10023DCB0(v155, v157, v159);
  }
}

uint64_t sub_1002C17A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, unint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, __int128 *a15, uint64_t a16, uint64_t (*a17)(void), uint64_t a18)
{
  v189 = a8;
  LODWORD(v197) = a7;
  LODWORD(v196) = a6;
  LODWORD(v191) = a4;
  v190 = a3;
  v192 = a2;
  v195 = a1;
  v188 = a18;
  v193 = a11;
  v194 = a10;
  v198 = a9;
  v19 = type metadata accessor for Logger();
  v200 = *(v19 - 8);
  v201 = v19;
  v20 = *(v200 + 64);
  v21 = __chkstk_darwin(v19);
  v187 = (&v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v186 = &v182 - v24;
  v25 = __chkstk_darwin(v23);
  v185 = &v182 - v26;
  __chkstk_darwin(v25);
  v199 = (&v182 - v27);
  v28 = type metadata accessor for HostedRoutingSourceSession(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v32 = __chkstk_darwin(v31);
  v34 = &v182 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = (&v182 - v36);
  v38 = __chkstk_darwin(v35);
  v40 = &v182 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = (&v182 - v42);
  v44 = *(*a5 + 208);
  v202 = *a5 + 208;
  v203 = v44;
  v45 = (v44)(v41);
  v46 = v45;
  if (v195)
  {
    v47 = v195;
    v48 = _convertErrorToNSError(_:)();
    [v46 endEventWithID:v196 error:v48];

    v49 = v203();
    [v49 endEventWithID:v197];

    swift_errorRetain();
    v50 = v192;
    v51 = v190;
    v52 = v191;
    sub_10023DC40(v192, v190, v191);
    v53 = sub_100028D40();
    v55 = v200;
    v54 = v201;
    (*(v200 + 16))(v199, v53, v201);
    v56 = v198;

    v57 = Logger.logObject.getter();
    LODWORD(v49) = static os_log_type_t.default.getter();

    LODWORD(v197) = v49;
    if (os_log_type_enabled(v57, v49))
    {
      v58 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v204[0] = v196;
      *v58 = 136315650;
      v59 = _typeName(_:qualified:)();
      v61 = v47;
      v62 = sub_10002C9C8(v59, v60, v204);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2082;
      *(v58 + 14) = sub_10002C9C8(v189, v56, v204);
      *(v58 + 22) = 2082;
      v63 = v203();
      v64 = [v63 report];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v47 = v61;
      v68 = sub_10002C9C8(v65, v67, v204);
      v69 = v194;

      *(v58 + 24) = v68;
      _os_log_impl(&_mh_execute_header, v57, v197, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v58, 0x20u);
      swift_arrayDestroy();

      v50 = v192;

      v70 = (*(v200 + 8))(v199, v201);
    }

    else
    {

      v70 = (*(v55 + 8))(v199, v54);
      v69 = v194;
    }

    v97 = (v203)(v70);
    [v97 finalizeWithCompletion:0];

    swift_errorRetain();
    sub_10023DC40(v50, v51, v52);
    (v69)(v47, v50, v51, v52);

    sub_10023DCB0(v50, v51, v52);

    v98 = v50;
    v99 = v51;
    return sub_10023DCB0(v98, v99, v52);
  }

  v195 = v40;
  v191 = v28;
  v192 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v30;
  v183 = v34;
  v184 = v43;
  v199 = a15;
  [v45 endEventWithID:v196 error:0];

  v196 = a5;
  v71 = v203();
  [v71 endEventWithID:v197];

  result = (*(*a12 + 440))();
  v73 = result;
  v74 = *(result + 16);
  v75 = v200;
  if (!v74)
  {
LABEL_13:

    v79 = sub_100028D40();
    v80 = v75;
    v81 = v187;
    v82 = v201;
    (*(v75 + 16))(v187, v79, v201);
    v83 = v199;
    v84 = v199[1];
    v209 = *v199;
    v85 = v199[2];
    v207[0] = v84;
    v207[1] = v85;
    v208 = *(v199 + 48);
    v86 = v198;

    sub_10028BC98(&v209, v204);
    sub_10026D080(v207, v204);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    sub_1001E6204(&v209);
    sub_100238E4C(v207);
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      *v89 = 136315906;
      v90 = _typeName(_:qualified:)();
      v92 = sub_10002C9C8(v90, v91, &v206);

      *(v89 + 4) = v92;
      *(v89 + 12) = 2082;
      *(v89 + 14) = sub_10002C9C8(v189, v86, &v206);
      *(v89 + 22) = 2082;
      *(v89 + 24) = sub_10002C9C8(a13, a14, &v206);
      *(v89 + 32) = 2082;
      v93 = v83[1];
      v204[0] = *v83;
      v204[1] = v93;
      v204[2] = v83[2];
      v205 = *(v83 + 48);
      sub_1002856A4();
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = sub_10002C9C8(v94, v95, &v206);

      *(v89 + 34) = v96;
      _os_log_impl(&_mh_execute_header, v87, v88, "[%s] handleHandoffFromApplication<%{public}s> - no session found for prewarmed identifier: %{public}s to continue interaction: %{public}s -> failing", v89, 0x2Au);
      swift_arrayDestroy();

      (*(v200 + 8))(v187, v201);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }

    v127 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v128 = swift_allocError();
    (*(*(v127 - 8) + 104))(v129, enum case for InternalRoutingError.sessionNotFound(_:), v127);
    MRDFastSyncGroupSessionState.rawValue.getter(v128, 1, 0);
    v131 = v130;
    v133 = v132;
    LOBYTE(v52) = v134;
    v194();

    v98 = v131;
    v99 = v133;
    return sub_10023DCB0(v98, v99, v52);
  }

  v76 = 0;
  v202 = a16;
  v203 = a17;
  while (1)
  {
    if (v76 >= *(v73 + 16))
    {
      __break(1u);
      return result;
    }

    v77 = *(v29 + 80);
    sub_1002CDCB4(v73 + ((v77 + 32) & ~v77) + *(v29 + 72) * v76, v37, type metadata accessor for HostedRoutingSourceSession);
    v78 = *v37 == a13 && v37[1] == a14;
    if (v78 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v76;
    result = sub_10002187C(v37, type metadata accessor for HostedRoutingSourceSession);
    if (v74 == v76)
    {
      goto LABEL_13;
    }
  }

  v100 = v195;
  sub_100032E70(v37, v195, type metadata accessor for HostedRoutingSourceSession);
  v101 = v184;
  sub_100032E70(v100, v184, type metadata accessor for HostedRoutingSourceSession);
  v102 = v101[3];
  v103 = v201;
  v104 = v75;
  if (v102)
  {
    v105 = v101[2];
    v106 = sub_100034D68();
    if (v106[2] && (v107 = sub_10000698C(v105, v102), (v108 & 1) != 0))
    {
      v109 = *(v106[7] + 8 * v107);

      if (*(v109 + 16) == 2)
      {
        v195 = v109;
        v197 = a12;
        v192 = ~v77;
        v111 = v196;
        v112 = (*(*v196 + 160))(v110);
        sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
        v113 = sub_10024C81C();
        v114 = [objc_opt_self() localOrigin];
        v115 = *(v111 + 16);
        v116 = *(v111 + 24);
        v117 = objc_allocWithZone(MRPlayerPath);
        v118 = String._bridgeToObjectiveC()();
        v119 = [v117 initWithOrigin:v114 bundleIdentifier:v118 player:0];

        v120 = [v113 resolveExistingPlayerPath:v119];
        v121 = v183;
        v122 = v190;
        if (v120)
        {
          if (![v120 isResolved])
          {
            goto LABEL_41;
          }

          if (v112)
          {
            sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
            v123 = v120;
            v124 = v112;
            v125 = static NSObject.== infix(_:_:)();

            v126 = v201;
            if (v125)
            {

              v122 = v190;
              goto LABEL_41;
            }
          }

          else
          {
            v163 = v120;
            v126 = v201;
          }

          v164 = sub_100028D40();
          v165 = v185;
          (*(v75 + 16))(v185, v164, v126);
          v166 = v198;

          v167 = v120;
          v168 = Logger.logObject.getter();
          v169 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v168, v169))
          {
            v170 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            *&v204[0] = v191;
            *v170 = 136315650;
            v171 = _typeName(_:qualified:)();
            v173 = sub_10002C9C8(v171, v172, v204);
            v101 = v184;

            *(v170 + 4) = v173;
            v121 = v183;
            *(v170 + 12) = 2082;
            *(v170 + 14) = sub_10002C9C8(v189, v166, v204);
            *(v170 + 22) = 2114;
            *(v170 + 24) = v167;
            v174 = v187;
            *v187 = v120;
            v175 = v167;
            _os_log_impl(&_mh_execute_header, v168, v169, "[%s] handleHandoffFromApplication<%{public}s> - inject source player path: %{public}@ into handoff context", v170, 0x20u);
            sub_1000038A4(v174, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();

            (*(v200 + 8))(v185, v201);
          }

          else
          {

            (*(v200 + 8))(v165, v201);
          }

          v122 = v190;
          (*(*v196 + 168))(v120);
LABEL_41:
        }

        sub_1002CDCB4(v101, v121, type metadata accessor for HostedRoutingSourceSession);
        v176 = (v77 + 16) & v192;
        v177 = (v122 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
        v178 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
        v179 = swift_allocObject();
        sub_100032E70(v121, v179 + v176, type metadata accessor for HostedRoutingSourceSession);
        *(v179 + v177) = v197;
        v180 = (v179 + v178);
        v181 = v198;
        *v180 = v189;
        v180[1] = v181;
        *(v179 + ((v178 + 23) & 0xFFFFFFFFFFFFFFF8)) = v188;

        sub_1002C31A4(v202, v203, v101, v196, v199, v194, v193, v179);

        return sub_10002187C(v101, type metadata accessor for HostedRoutingSourceSession);
      }
    }

    else
    {
    }
  }

  v135 = sub_100028D40();
  v136 = v186;
  (*(v75 + 16))(v186, v135, v103);
  v137 = v101;
  v138 = v192;
  sub_1002CDCB4(v137, v192, type metadata accessor for HostedRoutingSourceSession);
  v139 = v198;

  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *&v204[0] = swift_slowAlloc();
    *v142 = 136315650;
    v143 = _typeName(_:qualified:)();
    v145 = v104;
    v146 = sub_10002C9C8(v143, v144, v204);

    *(v142 + 4) = v146;
    *(v142 + 12) = 2082;
    *(v142 + 14) = sub_10002C9C8(v189, v139, v204);
    *(v142 + 22) = 2082;
    sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession);
    v147 = dispatch thunk of CustomStringConvertible.description.getter();
    v149 = v148;
    sub_10002187C(v138, type metadata accessor for HostedRoutingSourceSession);
    v150 = sub_10002C9C8(v147, v149, v204);

    *(v142 + 24) = v150;
    _os_log_impl(&_mh_execute_header, v140, v141, "[%s] handleHandoffFromApplication<%{public}s> - destination session: %{public}s is not backed by connected endpoint -> failing", v142, 0x20u);
    swift_arrayDestroy();

    (*(v145 + 8))(v186, v103);
  }

  else
  {

    sub_10002187C(v138, type metadata accessor for HostedRoutingSourceSession);
    (*(v75 + 8))(v136, v103);
  }

  v151 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v152 = swift_allocError();
  (*(*(v151 - 8) + 104))(v153, enum case for InternalRoutingError.sessionNotFound(_:), v151);
  v154 = v184;
  v155 = *v184;
  v156 = v184[1];

  MRDFastSyncGroupSessionState.rawValue.getter(v152, v155, v156);
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v194();

  sub_10023DCB0(v158, v160, v162);
  return sub_10002187C(v154, type metadata accessor for HostedRoutingSourceSession);
}

uint64_t sub_1002C2BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v61 = a5;
  v62 = a3;
  v63 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = *(*(v63 - 1) + 64);
  __chkstk_darwin(v63);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = *(a1 + 16);
  v18 = sub_100034D68();
  if (!v18[2] || (v19 = sub_10000698C(v17, v16), (v20 & 1) == 0))
  {

    goto LABEL_26;
  }

  v21 = *(v18[7] + 8 * v19);

  if (*(v21 + 16) != 2)
  {

LABEL_26:
    v41 = sub_100028D40();
    (*(v12 + 16))(v15, v41, v11);
    sub_1002CDCB4(a1, v10, type metadata accessor for HostedRoutingSourceSession);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60 = v11;
      v64 = v45;
      *v44 = 136315650;
      v46 = _typeName(_:qualified:)();
      v48 = sub_10002C9C8(v46, v47, &v64);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_10002C9C8(v62, a4, &v64);
      *(v44 + 22) = 2082;
      sub_1002CDD70(&qword_100525778, type metadata accessor for HostedRoutingSourceSession);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
      v52 = sub_10002C9C8(v49, v51, &v64);

      *(v44 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%s] handleHandoffFromApplication<%{public}s> - entry lost for destination session: %{public}s, will not perform deferred update of active session elements", v44, 0x20u);
      swift_arrayDestroy();

      return (*(v12 + 8))(v15, v60);
    }

    else
    {

      sub_10002187C(v10, type metadata accessor for HostedRoutingSourceSession);
      return (*(v12 + 8))(v15, v11);
    }
  }

  v22 = *(v21 + 56);
  v61 = *(v21 + 48);
  v62 = a2;
  v60 = v22;

  v23 = sub_100298814();
  v24 = v23;
  v25 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_32:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_33:
    v63 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_33;
  }

LABEL_7:
  v27 = 0;
  v63 = _swiftEmptyArrayStorage;
  do
  {
    v28 = v27;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_31;
        }

        v31 = *(v24 + 8 * v28 + 32);
      }

      v32 = v31;
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ([v31 deviceType] == 1)
      {
        break;
      }

      v29 = [*(v21 + 88) groupLeader];
      v30 = [v29 uid];

      if (v30)
      {
        goto LABEL_19;
      }

LABEL_10:

      ++v28;
      if (v27 == v26)
      {
        goto LABEL_34;
      }
    }

    v33 = [v32 uid];
    if (!v33)
    {
      goto LABEL_10;
    }

    v30 = v33;
LABEL_19:
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_10002AFD0(0, *(v63 + 2) + 1, 1, v63);
    }

    v38 = *(v63 + 2);
    v37 = *(v63 + 3);
    if (v38 >= v37 >> 1)
    {
      v63 = sub_10002AFD0((v37 > 1), v38 + 1, 1, v63);
    }

    v39 = v63;
    *(v63 + 2) = v38 + 1;
    v40 = &v39[16 * v38];
    *(v40 + 4) = v34;
    *(v40 + 5) = v36;
  }

  while (v27 != v26);
LABEL_34:

  v54 = (v62 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v55 = *(v62 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v56 = *(v62 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
  v57 = *(v62 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  v58 = v60;
  *v54 = v61;
  v54[1] = v58;
  v54[2] = v63;
  sub_10029A410(v55, v56, v57);
  sub_1002CDC70(v55, v56, v57);
}

void sub_1002C31A4(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v214 = a8;
  v234 = a7;
  v235 = a6;
  v224 = a1;
  v13 = *v8;
  v14 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v212 = v210 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v220 = v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v226 = v210 - v23;
  v24 = __chkstk_darwin(v22);
  v216 = v210 - v25;
  v26 = __chkstk_darwin(v24);
  v215 = v210 - v27;
  v28 = __chkstk_darwin(v26);
  v211 = v210 - v29;
  __chkstk_darwin(v28);
  v31 = v210 - v30;
  v33 = *a5;
  v32 = *(a5 + 1);
  v223 = *a3;
  v232 = a3;
  v34 = a3[1];

  v35 = sub_100028D40();
  v236 = v18;
  v36 = *(v18 + 16);
  v227 = v35;
  v229 = v18 + 16;
  v228 = v36;
  (v36)(v31);
  v37 = a5[2];
  v242[0] = a5[1];
  v242[1] = v37;
  v243 = *(a5 + 48);

  sub_10026D080(v242, &aBlock);
  v231 = v31;
  v38 = a4;
  v39 = Logger.logObject.getter();
  LODWORD(v18) = static os_log_type_t.default.getter();

  sub_100238E4C(v242);
  v221 = v18;
  v230 = v39;
  v40 = os_log_type_enabled(v39, v18);
  v233 = v32;
  v222 = v33;
  v213 = v38;
  v217 = a2;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v218 = v17;
    v210[1] = v42;
    v241 = v42;
    *v41 = 136316418;
    v43 = _typeName(_:qualified:)();
    v45 = v13;
    v46 = v33;
    v47 = sub_10002C9C8(v43, v44, &v241);

    *(v41 + 4) = v47;
    v219 = v45;
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_10002C9C8(v46, v32, &v241);
    *(v41 + 22) = 2082;
    *(v41 + 24) = sub_10002C9C8(v224, a2, &v241);
    *(v41 + 32) = 2082;
    v48 = v34;
    *(v41 + 34) = sub_10002C9C8(v223, v34, &v241);
    *(v41 + 42) = 2082;
    *&aBlock = v38;
    type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
    sub_1002CDD70(&qword_100525780, type metadata accessor for RoutingInteraction.Action.HandoffContext);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = sub_10002C9C8(v49, v50, &v241);

    *(v41 + 44) = v51;
    *(v41 + 52) = 2082;
    v52 = v219;
    v53 = a5[1];
    aBlock = *a5;
    v238 = v53;
    v239 = a5[2];
    v240 = *(a5 + 48);
    sub_1002856A4();
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = sub_10002C9C8(v54, v55, &v241);

    *(v41 + 54) = v56;
    v57 = v230;
    _os_log_impl(&_mh_execute_header, v230, v221, "[%s] handoffFromApplication<%{public}s> - bundle: %{public}s to session: %{public}s, context: %{public}s, for: %{public}s", v41, 0x3Eu);
    swift_arrayDestroy();
    v17 = v218;
  }

  else
  {
    v52 = v13;
    v48 = v34;
  }

  v58 = *(v236 + 8);
  (v58)(v231, v17);
  v59 = a5;
  v60 = v232[3];
  if (!v60)
  {

    v110 = v220;
    v228(v220, v227, v17);
    v111 = v233;

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v114 = 136315394;
      v115 = _typeName(_:qualified:)();
      v117 = sub_10002C9C8(v115, v116, &aBlock);
      v232 = v58;
      v118 = v117;

      *(v114 + 4) = v118;
      *(v114 + 12) = 2082;
      v119 = sub_10002C9C8(v222, v111, &aBlock);

      *(v114 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v112, v113, "[%s] handoffFromApplication<%{public}s> - failing because sessions are not both endpoint sourced", v114, 0x16u);
      swift_arrayDestroy();

      (v232)(v110, v17);
LABEL_22:
      v130 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v131 = swift_allocError();
      (*(*(v130 - 8) + 104))(v132, enum case for InternalRoutingError.sessionNotFound(_:), v130);
      MRDFastSyncGroupSessionState.rawValue.getter(v131, 1, 0);
      v134 = v133;
      v136 = v135;
      v138 = v137;
      v235();

      sub_10023DCB0(v134, v136, v138);
      return;
    }

    v120 = v110;
LABEL_21:
    (v58)(v120, v17);
    goto LABEL_22;
  }

  v61 = v232[2];
  v62 = sub_100034D68();
  if (!v62[2] || (v63 = sub_10000698C(v61, v60), (v64 & 1) == 0))
  {

    goto LABEL_18;
  }

  v232 = v58;
  v219 = v52;
  v65 = *(v62[7] + 8 * v63);

  if (*(v65 + 16) != 2)
  {

    v58 = v232;
LABEL_18:

    v121 = v226;
    v228(v226, v227, v17);
    v122 = v233;

    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v125 = 136315394;
      v126 = _typeName(_:qualified:)();
      v128 = sub_10002C9C8(v126, v127, &aBlock);

      *(v125 + 4) = v128;
      *(v125 + 12) = 2082;
      v129 = sub_10002C9C8(v222, v122, &aBlock);

      *(v125 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v123, v124, "[%s] handoffFromApplication<%{public}s> - failing because no connected entry for endpoint sourced sessions", v125, 0x16u);
      swift_arrayDestroy();

      v120 = v226;
    }

    else
    {

      v120 = v121;
    }

    goto LABEL_21;
  }

  v66 = [*(v65 + 88) origin];
  if (v66)
  {
    v231 = v66;
    v230 = v59;
    v218 = v17;
    v67 = objc_opt_self();
    v68 = [v67 server];
    v69 = [v68 nowPlayingServer];

    v70 = [v69 localOriginClient];
    v71 = v217;
    v72 = String._bridgeToObjectiveC()();
    v73 = [v70 existingNowPlayingClientForDisplayID:v72];

    if (v73)
    {
      v74 = [v67 server];
      v75 = [v74 nowPlayingServer];

      v76 = [v75 originClientForOrigin:v231];
      v226 = v73;
      if (v76)
      {

        v77 = [objc_allocWithZone(MRPlaybackSessionRequest) init];
        v78 = v222;
        v79 = v233;
        v80 = String._bridgeToObjectiveC()();
        v232 = v77;
        [v77 setRequestIdentifier:v80];

        v81 = [v73 activePlayerPath];
        v236 = v65;
        v82 = v81;
        v229 = v48;
        v83 = v213;
        v84 = (*(*v213 + 208))();
        v85 = String._bridgeToObjectiveC()();
        [v84 setRequestID:v85];

        [v84 setInitiator:kMRMigrateInitiatorModernPicker];
        [v84 setPlaybackSessionRequest:v77];
        v86 = v82;
        [v84 setPlayerPath:v82];
        [v84 setEndpointOptions:0];
        v87 = [v84 setPlayerOptions:{objc_msgSend(v84, "playerOptions") | 8}];
        v88 = v225;
        v228 = (*(*v225 + 368))(v87);
        v89 = sub_1002661C8();
        v227 = v90;
        v91 = [v67 server];
        v92 = [v91 nowPlayingServer];

        v93 = [v92 localOriginClient];
        v94 = [v73 activePlayerClient];
        v95 = v212;
        sub_100026A90(v93, v94);
        (*(*v83 + 240))(v95);
        v96 = v84;
        v97 = [v86 origin];
        v98 = swift_allocObject();
        *(v98 + 16) = v78;
        *(v98 + 24) = v79;
        v100 = v234;
        v99 = v235;
        *(v98 + 32) = v96;
        *(v98 + 40) = v99;
        *(v98 + 48) = v100;
        *(v98 + 56) = v88;
        v101 = v230;
        v102 = *&v230[2].isa;
        *(v98 + 64) = *&v230->isa;
        *(v98 + 80) = v102;
        *(v98 + 96) = *&v101[4].isa;
        *(v98 + 112) = v101[6].isa;
        v103 = v214;
        *(v98 + 120) = sub_1002D425C;
        *(v98 + 128) = v103;
        v104 = v229;
        *(v98 + 136) = v223;
        *(v98 + 144) = v104;
        v105 = v227;
        *(v98 + 152) = v89;
        *(v98 + 160) = v105;
        *(v98 + 168) = v219;
        *&v239 = sub_1002D4304;
        *(&v239 + 1) = v98;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v238 = sub_1002D50E0;
        *(&v238 + 1) = &unk_1004C8C20;
        v106 = _Block_copy(&aBlock);

        sub_10026D080(v242, &v241);
        v107 = v96;
        v108 = v231;
        v109 = v228;

        MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin();
        _Block_release(v106);

        return;
      }

      v174 = v211;
      v175 = v218;
      v228(v211, v227, v218);
      v176 = v233;

      v177 = v231;
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        *&aBlock = v230;
        *v180 = 136315650;
        v182 = _typeName(_:qualified:)();
        v184 = v176;
        v185 = sub_10002C9C8(v182, v183, &aBlock);

        *(v180 + 4) = v185;
        *(v180 + 12) = 2082;
        v186 = sub_10002C9C8(v222, v184, &aBlock);

        *(v180 + 14) = v186;
        *(v180 + 22) = 2114;
        *(v180 + 24) = v177;
        *v181 = v231;
        v187 = v177;
        _os_log_impl(&_mh_execute_header, v178, v179, "[%s] handoffFromApplication<%{public}s> - failing because no destination origin client found for: %{public}@", v180, 0x20u);
        sub_1000038A4(v181, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v188 = v174;
        v189 = v218;
      }

      else
      {

        v188 = v174;
        v189 = v175;
      }

      (v232)(v188, v189);
      v200 = v177;
      v201 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v202 = swift_allocError();
      (*(*(v201 - 8) + 104))(v203, enum case for InternalRoutingError.sessionNotFound(_:), v201);
      MRDFastSyncGroupSessionState.rawValue.getter(v202, 1, 0);
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v235();

      sub_10023DCB0(v205, v207, v209);

      v199 = &v244;
    }

    else
    {

      v153 = v215;
      v154 = v71;
      v155 = v218;
      v228(v215, v227, v218);
      v156 = v233;

      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *&aBlock = swift_slowAlloc();
        *v159 = 136315650;
        v160 = _typeName(_:qualified:)();
        v162 = sub_10002C9C8(v160, v161, &aBlock);

        *(v159 + 4) = v162;
        *(v159 + 12) = 2082;
        v163 = sub_10002C9C8(v222, v156, &aBlock);

        *(v159 + 14) = v163;
        *(v159 + 22) = 2082;
        *(v159 + 24) = sub_10002C9C8(v224, v154, &aBlock);
        _os_log_impl(&_mh_execute_header, v157, v158, "[%s] handoffFromApplication<%{public}s> - failing because no source client found for: %{public}s", v159, 0x20u);
        swift_arrayDestroy();

        v164 = v215;
      }

      else
      {

        v164 = v153;
      }

      (v232)(v164, v155);
      v190 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v191 = swift_allocError();
      (*(*(v190 - 8) + 104))(v192, enum case for InternalRoutingError.noActivePlayer(_:), v190);
      MRDFastSyncGroupSessionState.rawValue.getter(v191, 1, 0);
      v194 = v193;
      v196 = v195;
      v198 = v197;
      v235();

      sub_10023DCB0(v194, v196, v198);

      v199 = &v245;
    }
  }

  else
  {

    v139 = v216;
    v228(v216, v227, v17);
    v140 = v233;

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v143 = 136315650;
      v144 = _typeName(_:qualified:)();
      v146 = sub_10002C9C8(v144, v145, &aBlock);

      *(v143 + 4) = v146;
      *(v143 + 12) = 2082;
      v147 = sub_10002C9C8(v222, v140, &aBlock);

      *(v143 + 14) = v147;
      *(v143 + 22) = 2082;

      v149 = sub_1002992B0(v148);
      v151 = v150;

      v152 = sub_10002C9C8(v149, v151, &aBlock);

      *(v143 + 24) = v152;
      _os_log_impl(&_mh_execute_header, v141, v142, "[%s] handoffFromApplication<%{public}s> - failing because no destination origin for entry: %{public}s", v143, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (v232)(v139, v17);
    v165 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v166 = swift_allocError();
    (*(*(v165 - 8) + 104))(v167, enum case for InternalRoutingError.sessionNotFound(_:), v165);
    MRDFastSyncGroupSessionState.rawValue.getter(v166, 1, 0);
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v235();

    sub_10023DCB0(v169, v171, v173);
  }
}

id sub_1002C4A4C()
{
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v0 = sub_10024C81C();
  v1 = [v0 localOriginClient];

  v2 = [v1 activeNowPlayingClient];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 activePlayerClient];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 isPlaying];

  return v4;
}

uint64_t sub_1002C4B14(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingSourceSession(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_1002CDCB4(v8, v6, type metadata accessor for HostedRoutingSourceSession);
      v10 = *v6;
      v11 = v6[1];
      if (v10 == RoutingControl.sessionIdentifier.getter() && v11 == v12)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          sub_10002187C(v6, type metadata accessor for HostedRoutingSourceSession);
          goto LABEL_4;
        }
      }

      v15 = sub_10025A178();
      sub_10002187C(v6, type metadata accessor for HostedRoutingSourceSession);
      if (v15)
      {
        return 1;
      }

LABEL_4:
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sub_1002C4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10)
{
  v54 = a7;
  v55 = a10;
  v56 = a8;
  v57 = a9;
  v58 = a6;
  v15 = type metadata accessor for RoutingControl();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  if (!a1)
  {
    v48 = v16;
    v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v21;
    v50 = v15;
    v53 = v20;
    v24 = v57;
    v23 = v58;
    v25 = v54;
    v26 = RoutingControl.sessionIdentifier.getter();
    v28 = v27;
    v29 = sub_100037234();
    v30 = v25;
    if (v26 == *v29 && v28 == *(v29 + 1))
    {

      v31 = v23;
      v32 = a5;
      v33 = v24;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v31 = v23;
      v32 = a5;
      v33 = v24;
      if ((v34 & 1) == 0)
      {
        v40 = v52;
        v41 = v30;
        v42 = v51;
        (*(v52 + 16))(v51, v55, v53);
        v43 = v48;
        (*(v48 + 16))(v49, v41, v50);
        v44 = (*(v40 + 80) + 16) & ~*(v40 + 80);
        v45 = (v19 + *(v43 + 80) + v44) & ~*(v43 + 80);
        v46 = swift_allocObject();
        (*(v40 + 32))(v46 + v44, v42, v53);
        (*(v43 + 32))(v46 + v45, v49, v50);
        sub_1002ACDCC(v57, v32, v31, sub_1002D48F0, v46);
      }
    }

    v35 = v51;
    v36 = v52;
    v37 = v53;
    (*(v52 + 16))(v51, v55, v53);
    v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v39 = swift_allocObject();
    (*(v36 + 32))(v39 + v38, v35, v37);
    sub_1002AF590(v33, v32, v31, sub_1002D49C4, v39);
  }

  sub_10023DBE8(a1, a2, a3, a4);
  swift_errorRetain();
  sub_10023DC40(a2, a3, a4);
  a5(a1, a2, a3, a4);
  sub_10023DC58(a1, a2, a3, a4);

  return sub_10023DCB0(a2, a3, a4);
}

uint64_t sub_1002C50B8(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:))
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v8 = sub_10024C81C();
    v9 = [v8 localOriginClient];

    v10 = [v9 activeNowPlayingClient];
    if (v10)
    {
      v11 = [v10 activePlayerClient];

      if (v11)
      {
        v12 = [v11 isPlaying];

        return v12 ^ 1;
      }
    }
  }

  else
  {
    if (v7 != enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v14 = sub_10024C81C();
    v15 = [v14 localOriginClient];

    v16 = [v15 activeNowPlayingClient];
    if (v16)
    {
      v17 = [v16 activePlayerClient];

      if (v17)
      {
        v18 = [v17 isPlaying];

        return v18;
      }
    }
  }

  return 0;
}

uint64_t sub_1002C5320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = (&v37 - v10);
  v12 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:))
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v20 = *(v5 + 72);
      while (1)
      {
        sub_1002CDCB4(v19, v11, type metadata accessor for HostedRoutingSourceSession);
        v21 = *v11;
        v22 = v11[1];
        if (v21 == RoutingControl.sessionIdentifier.getter() && v22 == v23)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
            goto LABEL_5;
          }
        }

        v26 = sub_10025A178();
        sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
        if ((v26 & 1) == 0)
        {
          return 1;
        }

LABEL_5:
        v19 += v20;
        if (!--v18)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v17 != enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v29 = *(v5 + 72);
    do
    {
      sub_1002CDCB4(v28, v9, type metadata accessor for HostedRoutingSourceSession);
      v30 = *v9;
      v31 = v9[1];
      if (v30 == RoutingControl.sessionIdentifier.getter() && v31 == v32)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          sub_10002187C(v9, type metadata accessor for HostedRoutingSourceSession);
          goto LABEL_19;
        }
      }

      v35 = sub_10025A178();
      sub_10002187C(v9, type metadata accessor for HostedRoutingSourceSession);
      if (v35)
      {
        return 1;
      }

LABEL_19:
      v28 += v29;
      --v27;
    }

    while (v27);
  }

  return 0;
}

uint64_t sub_1002C56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t (*a10)(void), uint64_t a11, uint64_t (*a12)(void))
{
  v43 = a8;
  v44 = a7;
  v45 = a5;
  v17 = type metadata accessor for RoutingControl();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    v45(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    return sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v20;
    v40 = a11;
    v41 = a12;
    v22 = v44;
    v23 = v45;
    v42 = v19;
    v24 = RoutingControl.sessionIdentifier.getter();
    v26 = v25;
    v27 = sub_100037234();
    if (v24 == *v27 && v26 == *(v27 + 1))
    {

      v30 = a6;
      v31 = v23;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = a6;
      v31 = v23;
      if ((v29 & 1) == 0)
      {
        v32 = v38;
        v33 = v39;
        v34 = v31;
        v35 = v42;
        (*(v39 + 16))(v38, v22, v42);
        v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
        v37 = swift_allocObject();
        (*(v33 + 32))(v37 + v36, v32, v35);
        sub_1002ACDCC(a9, v34, a6, v41, v37);
      }
    }

    return sub_1002AF590(a9, v31, v30, a10, 0);
  }
}

uint64_t sub_1002C5968()
{
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v0 = sub_10024C81C();
  v1 = [v0 localOriginClient];

  v2 = [v1 activeNowPlayingClient];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 activePlayerClient];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 isPlaying];

  return v4 ^ 1;
}

uint64_t sub_1002C5A30(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingSourceSession(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_1002CDCB4(v8, v6, type metadata accessor for HostedRoutingSourceSession);
      v10 = *v6;
      v11 = v6[1];
      if (v10 == RoutingControl.sessionIdentifier.getter() && v11 == v12)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          sub_10002187C(v6, type metadata accessor for HostedRoutingSourceSession);
          goto LABEL_4;
        }
      }

      v15 = sub_10025A178();
      sub_10002187C(v6, type metadata accessor for HostedRoutingSourceSession);
      if ((v15 & 1) == 0)
      {
        return 1;
      }

LABEL_4:
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sub_1002C5BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, double a9, __int128 *a10, uint64_t a11)
{
  v42 = a8;
  v19 = type metadata accessor for RoutingControl();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    a5(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    return sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v22;
    v40 = v21;
    v41 = a10;
    v24 = RoutingControl.sessionIdentifier.getter();
    v26 = v25;
    v27 = sub_100037234();
    if (v24 == *v27 && v26 == *(v27 + 1))
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v31 = v38;
        v30 = v39;
        v32 = v40;
        (*(v39 + 16))(v38, a7, v40);
        v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v34 = (v20 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        (*(v30 + 32))(v35 + v33, v31, v32);
        *(v35 + v34) = a9;
        sub_1002ACDCC(v41, a5, a6, sub_1002D4B1C, v35);
      }
    }

    v36 = swift_allocObject();
    *(v36 + 16) = a11;
    *(v36 + 24) = a9;

    sub_1002AF590(v41, a5, a6, sub_1002D4BB8, v36);
  }
}

BOOL sub_1002C5EF8(uint64_t a1, double a2)
{
  v4 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  __chkstk_darwin(v12);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v21, 1, 1, v22);
  if (*(a1 + 24))
  {
    v48 = v7;
    v24 = *(a1 + 16);
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v25 = sub_10024C81C();
    v26 = [v25 localOriginClient];

    v27 = v26;
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 existingNowPlayingClientForDisplayID:v28];

    v30 = [v29 activePlayerClient];
    v31 = v30;
    v7 = v48;
    sub_100026A90(v26, v31);
  }

  else
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v27 = sub_10024C81C();
    sub_10024C87C();
  }

  sub_1002D4BC4(v19, v21);
  if ((*(v23 + 48))(v21, 1, v22))
  {
    goto LABEL_8;
  }

  v32 = &v21[*(v22 + 36)];
  RoutingSession.NowPlayingInfo.PlaybackInfo.playbackType.getter();
  if ((*(v8 + 88))(v11, v7) != enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.finite(_:))
  {
    (*(v8 + 8))(v11, v7);
LABEL_8:
    v39 = 0;
    goto LABEL_9;
  }

  (*(v8 + 96))(v11, v7);
  v34 = v42;
  v33 = v43;
  v35 = v44;
  (*(v43 + 32))(v42, v11, v44);
  v36 = v45;
  RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.progressSnapshot.getter();
  RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot.time.getter();
  v38 = v37;
  (*(v46 + 8))(v36, v47);
  (*(v33 + 8))(v34, v35);
  v39 = vabdd_f64(v38, a2) <= 0.1;
LABEL_9:
  sub_1000038A4(v21, &qword_100523640, qword_100451520);
  return v39;
}

uint64_t sub_1002C63B8(uint64_t a1, uint64_t a2, double a3)
{
  v70 = a2;
  v60 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot();
  v52 = *(v60 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v60);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v67);
  v66 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v68 = &v50 - v12;
  v13 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo();
  v18 = *(v58 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v58);
  v57 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for HostedRoutingSourceSession(0);
  v21 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v24 = (&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v27 = *(v22 + 72);
    v64 = (v7 + 16);
    v65 = v13;
    v62 = (v14 + 88);
    v63 = (v7 + 8);
    v61 = enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.finite(_:);
    v54 = (v14 + 96);
    v55 = (v14 + 8);
    v53 = (v18 + 32);
    v52 += 8;
    v51 = (v18 + 8);
    v28 = &qword_100523640;
    v56 = v27;
    while (1)
    {
      v29 = v28;
      sub_1002CDCB4(v26, v24, type metadata accessor for HostedRoutingSourceSession);
      v31 = *v24;
      v30 = v24[1];
      if (v31 == RoutingControl.sessionIdentifier.getter() && v30 == v32)
      {

        v28 = v29;
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v29;
        if ((v34 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v35 = v68;
      sub_10001D9AC(v24 + *(v69 + 28), v68, v28, qword_100451520);
      v36 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
        break;
      }

      v37 = v35 + *(v36 + 36);
      v38 = v35;
      v40 = v66;
      v39 = v67;
      (*v64)(v66, v37, v67);
      sub_10002187C(v38, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      RoutingSession.NowPlayingInfo.PlaybackInfo.playbackType.getter();
      (*v63)(v40, v39);
      v41 = v65;
      v42 = (*v62)(v17, v65);
      if (v42 != v61)
      {
        (*v55)(v17, v41);
        goto LABEL_4;
      }

      (*v54)(v17, v41);
      v44 = v57;
      v43 = v58;
      (*v53)(v57, v17, v58);
      v45 = v59;
      RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.progressSnapshot.getter();
      RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.DurationInfo.ProgressSnapshot.time.getter();
      v47 = v46;
      (*v52)(v45, v60);
      v27 = v56;
      v48 = v43;
      v28 = v29;
      (*v51)(v44, v48);
      sub_10002187C(v24, type metadata accessor for HostedRoutingSourceSession);
      if (vabdd_f64(v47, a3) <= 0.1)
      {
        return 1;
      }

LABEL_5:
      v26 += v27;
      if (!--v25)
      {
        return 0;
      }
    }

    sub_1000038A4(v35, v28, qword_100451520);
LABEL_4:
    sub_10002187C(v24, type metadata accessor for HostedRoutingSourceSession);
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1002C6A28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v11 = type metadata accessor for RoutingControl.RoutingControlType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RoutingControl.type.getter();
  result = (*(v12 + 88))(v15, v11);
  if (result != enum case for RoutingControl.RoutingControlType.favorite(_:))
  {
    if (result == enum case for RoutingControl.RoutingControlType.unfavorite(_:))
    {
      v23 = RoutingControl.sessionIdentifier.getter();
      v25 = v24;
      v27 = *(a2 + 16);
      v26 = *(a2 + 24);

      v28 = sub_10033D250();
      swift_beginAccess();
      if (v26)
      {
        if (v27 == *v28 && v26 == v28[1])
        {

LABEL_15:
          v40 = *(**(v6 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 216);

          v40(v23, v25);

          v31 = swift_allocObject();
          v31[2] = v6;
          v31[3] = v23;
          v31[4] = v25;

          v32 = sub_1002D12F8;
          goto LABEL_16;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_15;
        }
      }

      sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
      result = swift_initStackObject();
      *(result + 16) = xmmword_10044EC70;
      if (kMRMediaRemoteOptionIsNegative)
      {
        v41 = result;

        *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 40) = v42;
        *(v41 + 72) = &type metadata for Bool;
        *(v41 + 48) = 1;
        v43 = sub_10021F050(v41);
        swift_setDeallocating();
        sub_1000038A4(v41 + 32, &unk_100527DF0, &unk_100457610);
        v44 = *a3;
        v45 = *(a3 + 8);
        v46 = *(a3 + 32);
        v52 = *(a3 + 16);
        v53 = v46;
        v54 = *(a3 + 48);
        v47 = swift_allocObject();
        *(v47 + 16) = v50;
        *(v47 + 24) = a5;
        *(v47 + 32) = v6;
        v48 = *(a3 + 16);
        *(v47 + 40) = *a3;
        *(v47 + 56) = v48;
        *(v47 + 72) = *(a3 + 32);
        *(v47 + 88) = *(a3 + 48);
        *(v47 + 96) = a2;

        sub_10026D080(&v52, v51);
        sub_1002CE274(a1, a2, v44, v45, 21, v43, sub_1002D12E0, v47);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v17 = RoutingControl.sessionIdentifier.getter();
  v19 = v18;
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);

  v22 = sub_10033D250();
  swift_beginAccess();
  if (!v20)
  {
    goto LABEL_13;
  }

  if (v21 != *v22 || v20 != v22[1])
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_12;
    }

LABEL_13:

    v33 = *a3;
    v34 = *(a3 + 8);
    v35 = *(a3 + 32);
    v52 = *(a3 + 16);
    v53 = v35;
    v54 = *(a3 + 48);
    v36 = swift_allocObject();
    *(v36 + 16) = v50;
    *(v36 + 24) = a5;
    *(v36 + 32) = v6;
    v37 = *(a3 + 16);
    *(v36 + 40) = *a3;
    *(v36 + 56) = v37;
    *(v36 + 72) = *(a3 + 32);
    *(v36 + 88) = *(a3 + 48);
    *(v36 + 96) = a2;

    sub_10026D080(&v52, v51);

    v38 = sub_10021F050(_swiftEmptyArrayStorage);
    sub_1002CE274(a1, a2, v33, v34, 21, v38, sub_1002D1360, v36);
  }

LABEL_12:
  v30 = *(**(v6 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 208);

  v30(v17, v19);

  v31 = swift_allocObject();
  v31[2] = v6;
  v31[3] = v17;
  v31[4] = v19;

  v32 = sub_1002D1488;
LABEL_16:
  sub_1002ADC18(a3, v50, a5, v32, v31);
}

uint64_t sub_1002C6FB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = type metadata accessor for RoutingControl.RoutingControlType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v41 = a2[1];
  RoutingControl.type.getter();
  v14 = (*(v9 + 88))(v12, v8);
  if (v14 == enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(104);
    v28._countAndFlagsBits = 91;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v29);

    v30._object = 0x800000010043E2B0;
    v30._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v13;
    v31._object = v41;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD00000000000004DLL;
    v32._object = 0x800000010043F8A0;
    String.append(_:)(v32);
    v39 = 0;
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v14 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    v15 = (*(v9 + 96))(v12, v8);
    __chkstk_darwin(v15);
    *(&v40 - 6) = sub_1002D32BC;
    *(&v40 - 5) = a3;
    sub_1002CF8F8(a1, v13, v41, sub_1002D4C34, (&v40 - 8), sub_1002D50F4, 0xEA0000000CLL, 1, 0xE90000000CLL, 1, "[%s] handleBeginRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
    v16 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    return (*(*(v16 - 8) + 8))(v12, v16);
  }

  if (v14 != enum case for RoutingControl.RoutingControlType.mute(_:))
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v33._countAndFlagsBits = 91;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v34);

    v35._object = 0x800000010043E2B0;
    v35._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v13;
    v36._object = v41;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 0xD00000000000001DLL;
    v37._object = 0x800000010043E2D0;
    String.append(_:)(v37);
    type metadata accessor for RoutingControl();
    sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl);
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v39 = 0;
    goto LABEL_9;
  }

  v18 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v19 = swift_allocError();
  (*(*(v18 - 8) + 104))(v20, enum case for InternalRoutingError.notImplemented(_:), v18);
  v21 = MRDFastSyncGroupSessionState.rawValue.getter(v19, 0, 0);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1002D32BC(v21, v22, v24, v26);

  return sub_10023DCB0(v23, v25, v27);
}

uint64_t sub_1002C74C0(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v11 = type metadata accessor for RoutingControl();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a5, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  *(v17 + v16) = a6;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;

  sub_1002ACDCC(a2, v20, v21, sub_1002D4F04, v17);
}

uint64_t sub_1002C7654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v45 = a2;
  v6 = type metadata accessor for RoutingControl.Target();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for HostedRoutingSourceSession(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 16);
  v40 = a4;
  swift_beginAccess();
  if (!v16)
  {
    return 0;
  }

  v17 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  v19 = (v7 + 88);
  v20 = enum case for RoutingControl.Target.session(_:);
  v41 = enum case for RoutingControl.Target.item(_:);
  v44 = (v7 + 96);
  while (1)
  {
    sub_1002CDCB4(v17, v15, type metadata accessor for HostedRoutingSourceSession);
    RoutingControl.target.getter();
    v24 = (*v19)(v10, v6);
    if (v24 == v20)
    {
      (*v44)(v10, v6);
      if (*v15 == *v10 && v15[1] == v10[1])
      {
        v21 = v10[1];
      }

      else
      {
        v26 = v10[1];
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v22 = *(v40 + 16);
      goto LABEL_5;
    }

    v43 = v16;
    if (v24 != v41)
    {
      break;
    }

    v28 = v20;
    v29 = v19;
    v30 = v18;
    (*v44)(v10, v6);
    v31 = *v10;
    v32 = v10[1];
    v33 = sub_100258614();
    v35 = v34;

    if (*v15 == v33 && v15[1] == v35)
    {

      v18 = v30;
      v19 = v29;
      v20 = v28;
      v16 = v43;
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v30;
      v19 = v29;
      v20 = v28;
      v16 = v43;
      if ((v37 & 1) == 0)
      {
LABEL_20:
        sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_6;
      }
    }

    v22 = SystemGroupSessionTransport.supportsIdleDisconnection.getter() & 1;
LABEL_5:
    v23 = sub_100267210(v15, v22);
    sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
    if (v23)
    {
      return 1;
    }

LABEL_6:
    v17 += v18;
    if (!--v16)
    {
      return 0;
    }
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002C79CC(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a2;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (a2)
  {
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      MRDFastSyncGroupSessionState.rawValue.getter(a1, 0, 0);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      a3();

      sub_10023DCB0(v17, v19, v21);
    }

    else
    {
      return a5(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002C7B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v32 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RoutingControl();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a5, v15);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v27;
  v22 = v28;
  *(v20 + 2) = a1;
  *(v20 + 3) = v21;
  *(v20 + 4) = v22;
  (*(v16 + 32))(&v20[v19], v18, v15);
  aBlock[4] = sub_1002D2BA8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C8608;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v10, v7);
  (*(v29 + 8))(v14, v30);
}

void *sub_1002C7F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(a1 + 16);
  v18 = *a1;
  v9 = *(a1 + 32);
  v16[0] = v8;
  v16[1] = v9;
  v17 = *(a1 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = sub_10029A79C();
  sub_10028BC98(&v18, v15);
  sub_10026D080(v16, v15);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v11;
  sub_10028B8E4(sub_1002D50DC, v10, a1, isUniquelyReferenced_nonNull_native);
  sub_1001E6204(&v18);
  sub_100238E4C(v16);
  v13 = *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions);
  *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions) = v15[0];

  return sub_1002A5EA8();
}

void sub_1002C82C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1002C861C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(void), uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, __int128 *a11)
{
  v79 = a8;
  v82 = a5;
  v83 = a3;
  v85 = a4;
  v84 = type metadata accessor for Logger();
  v15 = *(v84 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v84);
  v80 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = (&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v26 = (*(*a2 + 368))(v24);
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v26, v21);
  if (v27)
  {
    v81 = a6;
    if (a1)
    {
      v79 = a11;
      swift_errorRetain();
      v29 = sub_100028D40();
      v76 = *(v15 + 16);
      v77 = v29;
      v30 = v84;
      v76(v20);
      v31 = v85;

      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      v34 = os_log_type_enabled(v32, v33);
      v78 = a7;
      v75 = v15;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v86 = v74;
        *v35 = 136315650;
        v37 = _typeName(_:qualified:)();
        v39 = sub_10002C9C8(v37, v38, &v86);

        *(v35 + 4) = v39;
        v31 = v85;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_10002C9C8(v83, v31, &v86);
        *(v35 + 22) = 2114;
        swift_errorRetain();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 24) = v40;
        *v36 = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%s] pullContentFromSession<%{public}s> - failed with error: %{public}@.", v35, 0x20u);
        sub_1000038A4(v36, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v30 = v84;

        v41 = v75;
      }

      else
      {

        v41 = v15;
      }

      v51 = *(v41 + 8);
      v51(v20, v30);
      v52 = v80;
      (v76)(v80, v77, v30);
      v53 = v82;

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v56 = 136315650;
        v57 = _typeName(_:qualified:)();
        v59 = sub_10002C9C8(v57, v58, &v86);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2082;
        *(v56 + 14) = sub_10002C9C8(v83, v31, &v86);
        *(v56 + 22) = 2082;
        v60 = [v53 report];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = sub_10002C9C8(v61, v63, &v86);

        *(v56 + 24) = v64;
        _os_log_impl(&_mh_execute_header, v54, v55, "[%s] pullContentFromSession<%{public}s> - report: %{public}s", v56, 0x20u);
        swift_arrayDestroy();

        v65 = v80;
        v66 = v84;
      }

      else
      {

        v65 = v52;
        v66 = v30;
      }

      v51(v65, v66);
      [v53 finalizeWithCompletion:0];
      swift_errorRetain();
      MRDFastSyncGroupSessionState.rawValue.getter(a1, 1, 0);
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v81();

      sub_10023DCB0(v68, v70, v72);
    }

    else
    {
      v42 = String._bridgeToObjectiveC()();
      v43 = v82;
      v44 = [v82 startEvent:v42 role:1];

      v45 = String._bridgeToObjectiveC()();
      v46 = [v43 startEvent:v45 role:1];

      v47 = swift_allocObject();
      *(v47 + 16) = v43;
      *(v47 + 24) = v46;
      *(v47 + 28) = v44;
      v48 = v85;
      *(v47 + 32) = v83;
      *(v47 + 40) = v48;
      *(v47 + 48) = v81;
      *(v47 + 56) = a7;
      *(v47 + 64) = a11;
      v49 = swift_allocObject();
      *(v49 + 16) = a9;
      *(v49 + 24) = a10;
      v50 = v43;

      sub_1002AF590(v79, sub_1002D423C, v47, sub_1002D4254, v49);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002C8D90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, void, void, void), uint64_t a7)
{
  v38 = a7;
  v36 = a4;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 endEventWithID:a2];
  [a1 endEventWithID:a3];
  v17 = sub_100028D40();
  v18 = *(v13 + 16);
  v37 = v12;
  v18(v16, v17, v12);

  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v22 = 136315650;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, &v39);
    v35 = a6;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_10002C9C8(v36, a5, &v39);
    *(v22 + 22) = 2082;
    v27 = [v19 report];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28;
    a6 = v35;
    v32 = sub_10002C9C8(v31, v30, &v39);

    *(v22 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%s] pullContentFromSession<%{public}s> - report: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
  }

  (*(v13 + 8))(v16, v37);
  [v19 finalizeWithCompletion:0];
  return a6(0, 0, 0, 0);
}

uint64_t sub_1002C9068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v15 - v6);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v8 = sub_10024C81C();
  sub_10024C87C();

  v9 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1000038A4(v7, &qword_100523640, qword_100451520);
    v10 = 0;
  }

  else
  {
    v12 = *v7;
    v11 = v7[1];

    sub_10002187C(v7, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (v11)
    {
      if (v12 == a1 && v11 == a2)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

void sub_1002C91F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1002C9268(uint64_t a1, __int128 *a2, unint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(void), uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, void (*a11)(char *), void (*a12)(char *, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15)
{
  v80 = a8;
  v81 = a7;
  v78 = a12;
  v79 = a14;
  v76 = a11;
  v77 = a13;
  v75 = a9;
  v84 = type metadata accessor for Logger();
  v21 = *(v84 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v84);
  v82 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v74 - v25;
  v83 = a6;
  if (a1)
  {
    v78 = a4;
    v79 = a15;
    v80 = a2;
    swift_errorRetain();
    v27 = sub_100028D40();
    v81 = v21;
    v76 = *(v21 + 16);
    v77 = v27;
    v28 = v84;
    v76(v26);

    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v74 = a5;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v85 = v75;
      *v32 = 136315650;
      v34 = _typeName(_:qualified:)();
      v36 = sub_10002C9C8(v34, v35, &v85);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_10002C9C8(v80, a3, &v85);
      *(v32 + 22) = 2114;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 24) = v37;
      *v33 = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] handoffFromApplication<%{public}s> - failed with error: %{public}@.", v32, 0x20u);
      sub_1000038A4(v33, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      v28 = v84;
    }

    v38 = *(v81 + 8);
    v38(v26, v28);
    v39 = v78;
    v40 = v82;
    (v76)(v82, v77, v28);
    v41 = v39;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v78 = v38;
      v85 = v45;
      *v44 = 136315650;
      v46 = _typeName(_:qualified:)();
      v48 = a3;
      v49 = sub_10002C9C8(v46, v47, &v85);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_10002C9C8(v80, v48, &v85);
      *(v44 + 22) = 2082;
      v50 = [v41 report];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10002C9C8(v51, v53, &v85);

      *(v44 + 24) = v54;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v44, 0x20u);
      swift_arrayDestroy();

      v78(v82, v84);
    }

    else
    {

      v38(v40, v28);
    }

    [v41 finalizeWithCompletion:{0, v74}];
    swift_errorRetain();
    MRDFastSyncGroupSessionState.rawValue.getter(a1, 1, 0);
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74();

    sub_10023DCB0(v69, v71, v73);
  }

  else
  {
    v55 = String._bridgeToObjectiveC()();
    v56 = [a4 startEvent:v55 role:1];

    v57 = String._bridgeToObjectiveC()();
    v58 = a3;
    v59 = a5;
    v60 = [a4 startEvent:v57 role:1];

    v61 = swift_allocObject();
    *(v61 + 16) = v75;
    *(v61 + 24) = a10;
    *(v61 + 32) = a4;
    *(v61 + 40) = v60;
    *(v61 + 44) = v56;
    *(v61 + 48) = a2;
    *(v61 + 56) = v58;
    *(v61 + 64) = v59;
    *(v61 + 72) = v83;
    *(v61 + 80) = a15;
    v62 = swift_allocObject();
    v63 = v77;
    v65 = v78;
    v64 = v79;
    v62[2] = v76;
    v62[3] = v65;
    v62[4] = v63;
    v62[5] = v64;

    v66 = a4;

    sub_1002ACDCC(v80, sub_1002D4350, v61, sub_1002D43DC, v62);
  }
}

uint64_t sub_1002C9920(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void, void, void, void), uint64_t a9)
{
  v38 = a6;
  v40 = a9;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v18);
  [a3 endEventWithID:a4];
  [a3 endEventWithID:a5];
  v21 = sub_100028D40();
  v22 = *(v16 + 16);
  v39 = v15;
  v22(v20, v21, v15);

  v23 = a3;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v37 = a8;
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v26 = 136315650;
    v27 = _typeName(_:qualified:)();
    v29 = sub_10002C9C8(v27, v28, &v41);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_10002C9C8(v38, a7, &v41);
    *(v26 + 22) = 2082;
    v30 = [v23 report];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_10002C9C8(v31, v33, &v41);

    *(v26 + 24) = v34;
    a8 = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s] handoffFromApplication<%{public}s> - report: %{public}s", v26, 0x20u);
    swift_arrayDestroy();
  }

  (*(v16 + 8))(v20, v39);
  [v23 finalizeWithCompletion:0];
  return a8(0, 0, 0, 0);
}

uint64_t sub_1002C9C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a4;
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v26 - v10);
  v12 = type metadata accessor for HostedRoutingSourceSession(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  while (1)
  {
    sub_1002CDCB4(v18, v16, type metadata accessor for HostedRoutingSourceSession);
    v20 = *v16 == a2 && v16[1] == a3;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_10001D9AC(v16 + *(v12 + 28), v11, &qword_100523640, qword_100451520);
    v21 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
    {
      sub_1000038A4(v11, &qword_100523640, qword_100451520);
LABEL_4:
      sub_10002187C(v16, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_5;
    }

    v23 = *v11;
    v22 = v11[1];

    sub_10002187C(v11, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (!v22)
    {
      goto LABEL_4;
    }

    if (v23 == v27 && v22 == v26)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10002187C(v16, type metadata accessor for HostedRoutingSourceSession);
    if (v24)
    {
      return 1;
    }

LABEL_5:
    v18 += v19;
    if (!--v17)
    {
      return 0;
    }
  }

  sub_10002187C(v16, type metadata accessor for HostedRoutingSourceSession);
  return 1;
}

void sub_1002C9EE8()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingSourceSession(0);
  v102 = *(v2 - 8);
  v3 = *(v102 + 64);
  __chkstk_darwin(v2 - 8);
  v104 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = 0xD00000000000002BLL;
  v110 = 0x800000010043EC40;
  strcpy(&v108, "Timeline:\n");
  BYTE3(v108._object) = 0;
  HIDWORD(v108._object) = -369098752;
  v10 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline);
  v11._countAndFlagsBits = sub_1003385DC();
  String.append(_:)(v11);

  String.append(_:)(v108);

  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v108, "Routing Mode: ");
  HIBYTE(v108._object) = -18;
  (*(*v1 + 392))(v12);
  sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = *(v6 + 8);
  v14(v9, v5);
  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  String.append(_:)(v108);

  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v105._countAndFlagsBits = 0xD000000000000017;
  v105._object = 0x800000010043E690;
  v16 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode;
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v16, v5);
  v17 = v1;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v14(v9, v5);
  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  String.append(_:)(v105);

  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v105._countAndFlagsBits = 0xD00000000000001BLL;
  v105._object = 0x800000010043EC70;
  v21._countAndFlagsBits = (*(*v1 + 680))(v20);
  String.append(_:)(v21);

  v22._countAndFlagsBits = 10;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  String.append(_:)(v105);

  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v105._countAndFlagsBits = 0xD000000000000012;
  v105._object = 0x800000010043EC90;
  v23 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  if (*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16))
  {
    v24 = *v23;
    v25 = v23[1];

    v26 = sub_1002998F0(v24, v25);
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 10;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  String.append(_:)(v105);

  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v105._countAndFlagsBits = 0xD000000000000026;
  v105._object = 0x800000010043ECB0;
  if (*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource))
  {
    v106._countAndFlagsBits = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource);
    type metadata accessor for ActiveSessionEndpointDataSource();
    sub_1002CDD70(&qword_1005250E8, type metadata accessor for ActiveSessionEndpointDataSource);

    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 2570;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    String.append(_:)(v105);

    v105._countAndFlagsBits = 0x6E6F69737365530ALL;
    v105._object = 0xEB000000000A3A73;
    v34 = (*(*v1 + 440))(v33);
    v35 = *(v34 + 16);
    v103 = v1;
    if (v35)
    {
      v107 = _swiftEmptyArrayStorage;
      sub_1000089FC(0, v35, 0);
      v36 = v107;
      v37 = *(v102 + 80);
      v101 = v34;
      v38 = v34 + ((v37 + 32) & ~v37);
      v39 = *(v102 + 72);
      do
      {
        v40 = v104;
        v41 = sub_1002CDCB4(v38, v104, type metadata accessor for HostedRoutingSourceSession);
        v106._countAndFlagsBits = 538976288;
        v106._object = 0xE400000000000000;
        v42._countAndFlagsBits = sub_10025D928(v41);
        String.append(_:)(v42);

        countAndFlagsBits = v106._countAndFlagsBits;
        object = v106._object;
        sub_10002187C(v40, type metadata accessor for HostedRoutingSourceSession);
        v107 = v36;
        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          sub_1000089FC((v45 > 1), v46 + 1, 1);
          v36 = v107;
        }

        v36[2] = v46 + 1;
        v47 = &v36[2 * v46];
        v47[4] = countAndFlagsBits;
        v47[5] = object;
        v38 += v39;
        --v35;
      }

      while (v35);

      v17 = v103;
    }

    else
    {

      v36 = _swiftEmptyArrayStorage;
    }

    v106._countAndFlagsBits = v36;
    v48 = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
    v49 = sub_10000462C(&qword_100523680, &qword_1005229B0, &unk_100450110);
    v50 = BidirectionalCollection<>.joined(separator:)();
    v52 = v51;

    v53._countAndFlagsBits = v50;
    v53._object = v52;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 10;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    String.append(_:)(v105);

    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v105._countAndFlagsBits = 0xD000000000000013;
    v105._object = 0x800000010043ECE0;
    v55 = sub_100034D68();
    v56 = sub_100297140(v55);
    v104 = 0;

    v106._countAndFlagsBits = v56;
    v57 = BidirectionalCollection<>.joined(separator:)();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 10;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    String.append(_:)(v105);

    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v105._countAndFlagsBits = 0xD000000000000016;
    v105._object = 0x800000010043ED00;
    v62 = sub_100297780();
    v63 = [v62 availableEndpoints];

    if (!v63)
    {
      goto LABEL_29;
    }

    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v64 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
      if (v65)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
LABEL_15:
        v107 = _swiftEmptyArrayStorage;
        sub_1000089FC(0, v65 & ~(v65 >> 63), 0);
        if ((v65 & 0x8000000000000000) == 0)
        {
          v101 = v49;
          v102 = v48;
          v66 = 0;
          v67 = v107;
          do
          {
            if ((v64 & 0xC000000000000001) != 0)
            {
              v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v68 = *(v64 + 8 * v66 + 32);
            }

            v69 = v68;
            v106._countAndFlagsBits = 538976288;
            v106._object = 0xE400000000000000;
            v70 = [v68 description];
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v74._countAndFlagsBits = v71;
            v74._object = v73;
            String.append(_:)(v74);

            v75 = v106._countAndFlagsBits;
            v76 = v106._object;
            v107 = v67;
            v78 = v67[2];
            v77 = v67[3];
            if (v78 >= v77 >> 1)
            {
              sub_1000089FC((v77 > 1), v78 + 1, 1);
              v67 = v107;
            }

            ++v66;
            v67[2] = v78 + 1;
            v79 = &v67[2 * v78];
            v79[4] = v75;
            v79[5] = v76;
          }

          while (v65 != v66);

          v17 = v103;
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v67 = _swiftEmptyArrayStorage;
LABEL_26:
    v106._countAndFlagsBits = v67;
    v80 = BidirectionalCollection<>.joined(separator:)();
    v82 = v81;

    v83._countAndFlagsBits = v80;
    v83._object = v82;
    String.append(_:)(v83);

    v84._countAndFlagsBits = 10;
    v84._object = 0xE100000000000000;
    String.append(_:)(v84);
    String.append(_:)(v105);

    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v105._countAndFlagsBits = 0xD000000000000017;
    v105._object = 0x800000010043ED20;
    v85 = sub_10029A79C();
    v86 = sub_10028A9B8(v85);

    v106._countAndFlagsBits = v86;
    v87 = BidirectionalCollection<>.joined(separator:)();
    v89 = v88;

    v90._countAndFlagsBits = v87;
    v90._object = v89;
    String.append(_:)(v90);

    v91._countAndFlagsBits = 10;
    v91._object = 0xE100000000000000;
    String.append(_:)(v91);
    String.append(_:)(v105);

    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v106._countAndFlagsBits = 0xD000000000000014;
    v106._object = 0x800000010043ED40;
    v92 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
    swift_beginAccess();
    v93 = *(v17 + v92);

    v95 = sub_1002973A0(v94);

    v107 = v95;
    v96 = BidirectionalCollection<>.joined(separator:)();
    v98 = v97;

    v99._countAndFlagsBits = v96;
    v99._object = v98;
    String.append(_:)(v99);

    v100._countAndFlagsBits = 10;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);
    String.append(_:)(v106);

    return;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

size_t sub_1002CABDC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(&qword_100525748, &unk_100457D90);
  v10 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1002CADB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100525750, &qword_100457AB8);
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

uint64_t sub_1002CB05C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100525758, &unk_100457AC0);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1002CB300(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_1005257A0, &qword_100457B08);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v19 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(*(v5 + 56) + 8 * v22);
      if ((v41 & 1) == 0)
      {
        sub_10002CBE8(v24, v25, v26);
      }

      v43 = v26;
      v28 = v24;
      v29 = v27;
      v30 = *(v8 + 40);
      sub_100036860();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 24 * v16;
      *v18 = v28;
      *(v18 + 8) = v25;
      *(v18 + 16) = v17;
      *(*(v8 + 56) + 8 * v16) = v29;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1002CB5EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    sub_100036860();
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 24 * v6;
      v25 = *v11;
      v26 = *(v11 + 16);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + v9);
          if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
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

uint64_t sub_1002CB7B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1002CADB4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1002CBC28();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_1002CB934(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10000698C(a1, a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1002CB05C(v16, a3 & 1);
      v20 = *v5;
      result = sub_10000698C(a1, a2);
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
      sub_1002CBD98();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
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

uint64_t sub_1002CBA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100036134(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1002CB300(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100036134(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1002CBF00();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = v24[6] + 24 * v13;
  *v28 = a2;
  *(v28 + 8) = a3;
  *(v28 + 16) = a4;
  *(v24[7] + 8 * v13) = a1;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;

  return sub_10002CBE8(a2, a3, a4);
}

void *sub_1002CBC28()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100525750, &qword_100457AB8);
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

void *sub_1002CBD98()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100525758, &unk_100457AC0);
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

void *sub_1002CBF00()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005257A0, &qword_100457B08);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_10002CBE8(v19, v20, v23);
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

uint64_t sub_1002CC07C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1002CDD70(&qword_100525788, &type metadata accessor for ContinuousRoutingControl);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1002CC6B8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1002CC35C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for ContinuousRoutingControl();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100525790, &qword_1004584C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
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
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1002CC6B8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002CC35C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002CC95C();
      goto LABEL_12;
    }

    sub_1002CCB94(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1002CDD70(&qword_100525788, &type metadata accessor for ContinuousRoutingControl);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1002CC95C()
{
  v1 = v0;
  v2 = type metadata accessor for ContinuousRoutingControl();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_100525790, &qword_1004584C0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1002CCB94(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ContinuousRoutingControl();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100525790, &qword_1004584C0);
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1002CCEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ContinuousRoutingControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1002CDD70(&qword_100525788, &type metadata accessor for ContinuousRoutingControl);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002CC95C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1002CD158(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1002CD158(int64_t a1)
{
  v3 = type metadata accessor for ContinuousRoutingControl();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1002CDD70(&qword_100524348, &type metadata accessor for ContinuousRoutingControl);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_1002CD460(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000462C(&qword_100525768, &qword_100525760, &unk_100457AD0);
          for (i = 0; i != v6; ++i)
          {
            sub_1001BC5A8(&qword_100525760, &unk_100457AD0);
            v9 = sub_1002CD614(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1002CD614(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002CD694;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002CD69C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = static String.nanoIDFourChar()();
  *(v3 + 72) = v7;
  *(v3 + 98) = 0;
  *(v3 + 96) = 1;
  *(v3 + 80) = a1;
  *(v3 + 88) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  v8 = [a1 uniqueIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v3 + 24) = v9;
  *(v3 + 32) = v11;
  return v3;
}

char *sub_1002CD728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v49 = a5;
  v50 = a4;
  v47 = a2;
  v48 = a3;
  v51 = a1;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v7 + 2) = &_swiftEmptySetSingleton;
  *(v7 + 3) = &_swiftEmptySetSingleton;
  *(v7 + 4) = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  v15 = enum case for RoutingMode.disabled(_:);
  v16 = type metadata accessor for RoutingMode();
  v17 = *(*(v16 - 8) + 104);
  v17(&v7[v14], v15, v16);
  v17(&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode], v15, v16);
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___itemTypes] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources] = &_swiftEmptyDictionarySingleton;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource] = 0;
  v18 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements];
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *v18 = 0;
  v19 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions] = 0;
  v20 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  v20[48] = 0;
  *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls] = 0;
  v21 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken];
  *v21 = 0;
  *(v21 + 1) = 0;
  *v13 = a6;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v22 = a6;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline] = v51;

    v24 = sub_100037234();
    v25 = *(v24 + 1);
    v26 = &v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier];
    *v26 = *v24;
    *(v26 + 1) = v25;
    *(v7 + 5) = v22;
    v27 = objc_opt_self();
    v28 = v22;

    result = [v27 currentSettings];
    if (result)
    {
      v29 = result;
      v30 = [result supportSystemEndpoints];

      v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_supportActiveSession] = v30;
      v31 = v48;
      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore] = v47;
      v32 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource;
      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource] = v31;
      type metadata accessor for ActiveSessionEndpointDataSource();
      v33 = v28;

      v35 = sub_100293694(v34, &off_1004C7B48, v33);
      v36 = *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource];
      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource] = v35;

      type metadata accessor for RoutingItemDataSource();
      v37 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline;
      v38 = *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline];

      v39 = sub_100279470();
      v40 = sub_100287C20(0, 0, 3, v38, v7, &off_1004C7B78, v39);
      v41 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
      swift_beginAccess();
      v42 = *&v7[v41];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *&v7[v41];
      *&v7[v41] = 0x8000000000000000;
      sub_1002CBA90(v40, 0, 0, 3, isUniquelyReferenced_nonNull_native);
      *&v7[v41] = v52;
      swift_endAccess();
      v44 = *(**&v7[v37] + 224);

      v44(v7, &off_1004C7B58);

      v45 = *(**&v7[v32] + 184);

      v45(v7, &off_1004C7B68);

      *&v7[OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate + 8] = v49;
      swift_unknownObjectWeakAssign();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002CDC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1002CDCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for HostedRoutingSessionDataSource()
{
  result = qword_100533450;
  if (!qword_100533450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CDD70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002CDDB8(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v37 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v38 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
    v39 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
    v40 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
    v37[1] = 0;
    v37[2] = 0;
    *v37 = 0;
    sub_10029A410(v38, v39, v40);
    sub_1002CDC70(v38, v39, v40);

    sub_1002A01EC();
    return;
  }

  v54 = a1;
  v9 = [v54 outputDevices];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v11 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v13 = i;

      v14 = [v13 groupID];

      if (v14)
      {
        break;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v52 = v3;
    v15 = v5;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
    v20 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
    v21 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 8);
    v22 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16);
    *v19 = v16;
    v19[1] = v18;
    v19[2] = _swiftEmptyArrayStorage;
    sub_10029A0A4(v20, v21, v22);
    sub_1002CDC70(v20, v21, v22);
    v53 = v1;
    sub_1002A01EC();
    v23 = v19[2];
    if (v23)
    {
      v24 = *v19;
      v25 = v19[1];

      v26 = sub_100028D40();
      (*(v15 + 16))(v8, v26, v4);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v51 = v24;
        v30 = v29;
        v31 = swift_slowAlloc();
        v50 = v25;
        v32 = v31;
        v55 = v31;
        *v30 = 136315138;
        v33 = _typeName(_:qualified:)();
        v35 = sub_10002C9C8(v33, v34, &v55);
        v52 = v4;
        v36 = v35;

        *(v30 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "[%s] activeSessionEndpointDataSourceDidUpdateEndpoint - deferred elements not consumed, setting as active elements", v30, 0xCu);
        sub_100026A44(v32);
        v25 = v50;

        v24 = v51;

        (*(v15 + 8))(v8, v52);
      }

      else
      {

        (*(v15 + 8))(v8, v4);
      }

      v42 = *v19;
      v43 = v19[1];
      v44 = v19[2];
      v19[1] = 0;
      v19[2] = 0;
      *v19 = 0;
      v45 = v53;
      sub_10029A0A4(v42, v43, v44);
      sub_1002CDC70(v42, v43, v44);
      v46 = (v45 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v47 = *(v45 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v48 = *(v45 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
      v49 = *(v45 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
      *v46 = v24;
      v46[1] = v25;
      v46[2] = v23;
      sub_10029A410(v47, v48, v49);
      sub_1002CDC70(v47, v48, v49);
    }

    else
    {
      v41 = v54;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002CE274(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v134 = a7;
  LODWORD(v133) = a5;
  v128._object = a4;
  v128._countAndFlagsBits = a3;
  v127 = *v9;
  v14 = type metadata accessor for RoutingControl();
  v131 = *(v14 - 8);
  v132 = v14;
  v15 = *(v131 + 64);
  __chkstk_darwin(v14);
  v129 = v16;
  v130 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v125 - v19;
  v21 = type metadata accessor for HostedRoutingSourceSession(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = a6;

  v26 = a1;
  v27 = RoutingControl.sessionIdentifier.getter();
  v29 = v28;
  v30 = sub_100037234();
  if (v27 == *v30 && v29 == *(v30 + 1))
  {

LABEL_5:
    v33 = [objc_opt_self() localOrigin];
    v34 = v26;
    goto LABEL_6;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_5;
  }

  v126 = a8;
  v55 = (*(*v9 + 440))(v32);
  __chkstk_darwin(v55);
  v125 = v26;
  *(&v125 - 2) = v26;
  sub_10029F038(sub_1002D50F4, v55, v20);

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

    sub_1000038A4(v20, &qword_100523B88, &unk_100451A50);
    v56 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v57 = swift_allocError();
    (*(*(v56 - 8) + 104))(v58, enum case for InternalRoutingError.sessionNotFound(_:), v56);
    v59 = RoutingControl.sessionIdentifier.getter();
    MRDFastSyncGroupSessionState.rawValue.getter(v57, v59, v60);
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v134();

    sub_10023DCB0(v62, v64, v66);
    return;
  }

  v67 = sub_100032E70(v20, v25, type metadata accessor for HostedRoutingSourceSession);
  v105 = *(v25 + 3);
  a8 = v126;
  if (!v105)
  {
    goto LABEL_37;
  }

  v106 = *(v25 + 2);
  v107 = sub_100034D68();
  v34 = v26;
  if (v107[2] && (v108 = sub_10000698C(v106, v105), (v109 & 1) != 0))
  {
    v110 = *(v107[7] + 8 * v108);

    v111 = [*(v110 + 88) origin];
    if (v111)
    {
      v33 = v111;
      v112 = *(v110 + 16);

      if (v112 == 2)
      {
        sub_10002187C(v25, type metadata accessor for HostedRoutingSourceSession);
LABEL_6:
        v35 = *(a2 + 16);
        v36 = *(a2 + 24);
        sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
        v37 = sub_10024C81C();
        v38 = [v37 originClientForOrigin:v33];

        if (v36)
        {
          if (!v38)
          {
            goto LABEL_15;
          }

          v39 = String._bridgeToObjectiveC()();
          v40 = [v38 existingNowPlayingClientForDisplayID:v39];

          if (!v40)
          {
            goto LABEL_15;
          }

          v41 = &selRef_activePlayerPath;
        }

        else
        {
          if (!v38)
          {
            goto LABEL_15;
          }

          v42 = [v38 activeNowPlayingClient];

          if (!v42)
          {
            goto LABEL_15;
          }

          v40 = [v42 activePlayerClient];

          if (!v40)
          {
            goto LABEL_15;
          }

          v41 = &selRef_playerPath;
        }

        v43 = [v40 *v41];

        if (v43)
        {
LABEL_20:
          v67 = kMRMediaRemoteOptionCommandID;
          if (kMRMediaRemoteOptionCommandID)
          {
            v125 = v33;
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;
            v71 = RoutingControl.identifier.getter();
            v139 = &type metadata for String;
            *&aBlock = v71;
            *(&aBlock + 1) = v72;
            sub_1001C4088(&aBlock, v142);
            v73 = v135;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v136 = v73;
            sub_10022D818(v142, v68, v70, isUniquelyReferenced_nonNull_native);

            v67 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
            if (kMRMediaRemoteOptionRemoteControlInterfaceIdentifier)
            {
              v126 = a8;
              v75 = v136;
              v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v78 = v77;
              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(36);

              *&aBlock = 91;
              *(&aBlock + 1) = 0xE100000000000000;
              v79._countAndFlagsBits = _typeName(_:qualified:)();
              String.append(_:)(v79);

              v80._object = 0x800000010043F590;
              v80._countAndFlagsBits = 0xD00000000000001ELL;
              String.append(_:)(v80);
              String.append(_:)(v128);
              v81._countAndFlagsBits = 62;
              v81._object = 0xE100000000000000;
              String.append(_:)(v81);
              v139 = &type metadata for String;
              sub_1001C4088(&aBlock, v142);
              v82 = swift_isUniquelyReferenced_nonNull_native();
              v136 = v75;
              sub_10022D818(v142, v76, v78, v82);

              v83 = objc_opt_self();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;
              *&aBlock = 0;
              v85 = [v83 dataWithPropertyList:isa format:200 options:0 error:&aBlock];

              v67 = aBlock;
              if (v85)
              {

                v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v88 = v87;

                v89 = objc_allocWithZone(MRDRemoteControlCommand);
                v90 = v43;
                v135 = v86;
                sub_1001C3FE0(v86, v88);
                v91 = String._bridgeToObjectiveC()();
                v92 = Data._bridgeToObjectiveC()().super.isa;
                sub_1001C4034(v86, v88);
                v133 = [v89 initWithCommandType:v133 playerPath:v90 unresolvedPlayerPath:v90 senderAppDisplayID:v91 optionsData:v92];

                v93 = (*(*v9 + 368))();
                v94 = [objc_opt_self() server];
                v95 = [v94 remoteControlServer];

                v96 = v130;
                v97 = v131;
                v98 = v132;
                (*(v131 + 16))(v130, v34, v132);
                v99 = (*(v97 + 80) + 40) & ~*(v97 + 80);
                v100 = swift_allocObject();
                v101 = v134;
                *(v100 + 2) = v93;
                *(v100 + 3) = v101;
                *(v100 + 4) = v126;
                (*(v97 + 32))(&v100[v99], v96, v98);
                v140 = sub_1002D2A64;
                v141 = v100;
                *&aBlock = _NSConcreteStackBlock;
                *(&aBlock + 1) = 1107296256;
                v138 = sub_1002C7F0C;
                v139 = &unk_1004C85B8;
                v102 = _Block_copy(&aBlock);
                v103 = v93;

                v104 = v133;
                [v95 sendRemoteControlCommand:v133 completion:v102];

                sub_1001C4034(v135, v88);
                _Block_release(v102);

                return;
              }

              goto LABEL_38;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v124 = v67;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          swift_unexpectedError();
          __break(1u);
          return;
        }

LABEL_15:
        if (v133)
        {

          v44 = type metadata accessor for InternalRoutingError();
          sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
          v45 = swift_allocError();
          (*(*(v44 - 8) + 104))(v46, enum case for InternalRoutingError.noActivePlayer(_:), v44);
          v47 = RoutingControl.sessionIdentifier.getter();
          MRDFastSyncGroupSessionState.rawValue.getter(v45, v47, v48);
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v134();

          sub_10023DCB0(v50, v52, v54);
          return;
        }

        v43 = [objc_allocWithZone(MRPlayerPath) initWithOrigin:v33 client:0 player:0];
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v113 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v114 = swift_allocError();
  (*(*(v113 - 8) + 104))(v115, enum case for InternalRoutingError.sessionNotFound(_:), v113);
  v116 = RoutingControl.sessionIdentifier.getter();
  MRDFastSyncGroupSessionState.rawValue.getter(v114, v116, v117);
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v134();

  sub_10023DCB0(v119, v121, v123);
  sub_10002187C(v25, type metadata accessor for HostedRoutingSourceSession);
}

uint64_t sub_1002CEFB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v90 = a5;
  v93._countAndFlagsBits = a3;
  v93._object = a4;
  v80 = *v5;
  v81 = a2;
  v7 = type metadata accessor for RoutingControl.RoutingControlType();
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  __chkstk_darwin(v7);
  v86 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RoutingControl();
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  v12 = __chkstk_darwin(v10);
  v87 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v74 - v14;
  v16 = type metadata accessor for ContinuousRoutingControl();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v83 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v82 = &v74 - v22;
  __chkstk_darwin(v21);
  v24 = &v74 - v23;
  v25 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v74 - v27;
  v29 = sub_100015A78();
  sub_10001D9AC(v29, v28, &qword_100525C00, &unk_1004511A0);
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v28, 1, v30);
  v92 = a1;
  if (v32 == 1)
  {
    sub_1000038A4(v28, &qword_100525C00, &unk_1004511A0);
    v33 = *(v17 + 16);
    v34 = v86;
  }

  else
  {
    v35 = *(v17 + 16);
    v77 = v15;
    v78 = v35;
    v35(v24, a1, v16);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v76 = v37;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v38 = 136315650;
      v39 = _typeName(_:qualified:)();
      v75 = v36;
      v41 = sub_10002C9C8(v39, v40, v94);
      v79 = v16;
      v42 = v41;

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10002C9C8(v93._countAndFlagsBits, v93._object, v94);
      *(v38 + 22) = 2080;
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v17 + 8))(v24, v79);
      v46 = sub_10002C9C8(v43, v45, v94);
      v16 = v79;

      *(v38 + 24) = v46;
      v47 = v75;
      _os_log_impl(&_mh_execute_header, v75, v76, "[%s] handleBeginContinuousControl<%s> - handle interaction with: %s", v38, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v17 + 8))(v24, v16);
    }

    (*(v31 + 8))(v28, v30);
    v34 = v86;
    v15 = v77;
    v33 = v78;
  }

  v48 = v83;
  v33(v83, v92, v16);
  v49 = v91;
  v94[0] = sub_10029A7A8();
  v50 = v82;
  sub_1002CC07C(v82, v48);
  (*(v17 + 8))(v50, v16);
  v51 = *(v49 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls);
  *(v49 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls) = v94[0];

  ContinuousRoutingControl.control.getter();
  RoutingControl.type.getter();
  v52 = *(v88 + 8);
  v53 = v15;
  v54 = v89;
  v52(v53, v89);
  v56 = v84;
  v55 = v85;
  v57 = (*(v84 + 88))(v34, v85);
  if (v57 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
  {
    (*(v56 + 96))(v34, v55);
    v58 = v87;
    ContinuousRoutingControl.control.getter();
    sub_1002CF8F8(v58, v93._countAndFlagsBits, v93._object, sub_1002D32BC, v90, sub_1002D50F4, 0xEA0000000CLL, 1, 0xE90000000CLL, 1, "[%s] handleBeginRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
    v52(v58, v54);
    v59 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    return (*(*(v59 - 8) + 8))(v34, v59);
  }

  if (v57 == enum case for RoutingControl.RoutingControlType.rewind(_:))
  {
    v61 = v87;
    ContinuousRoutingControl.control.getter();
    v62 = sub_10021F050(_swiftEmptyArrayStorage);
    v63 = v61;
    v64 = v81;
    countAndFlagsBits = v93._countAndFlagsBits;
    object = v93._object;
    v67 = 10;
  }

  else
  {
    if (v57 != enum case for RoutingControl.RoutingControlType.fastForward(_:))
    {
      v94[0] = 0;
      v94[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(114);
      v68._countAndFlagsBits = 91;
      v68._object = 0xE100000000000000;
      String.append(_:)(v68);
      v69._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v69);

      v70._object = 0x800000010043F8F0;
      v70._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v70);
      String.append(_:)(v93);
      v71._countAndFlagsBits = 0x746E6F63202D203ELL;
      v71._object = 0xED0000203A6C6F72;
      String.append(_:)(v71);
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
      v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v72);

      v73._countAndFlagsBits = 0xD00000000000003FLL;
      v73._object = 0x800000010043F910;
      String.append(_:)(v73);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v61 = v87;
    ContinuousRoutingControl.control.getter();
    v62 = sub_10021F050(_swiftEmptyArrayStorage);
    v63 = v61;
    v64 = v81;
    countAndFlagsBits = v93._countAndFlagsBits;
    object = v93._object;
    v67 = 8;
  }

  sub_1002CE274(v63, v64, countAndFlagsBits, object, v67, v62, sub_1002D32BC, v90);

  return (v52)(v61, v54);
}

uint64_t sub_1002CF8F8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(char *))
{
  v100 = a7;
  v101 = a8;
  v12 = v11;
  v114 = a5;
  v115 = a4;
  v111 = a2;
  v112 = a3;
  v14 = *v12;
  v109 = a6;
  v110 = v14;
  v113 = type metadata accessor for Logger();
  v15 = *(v113 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v113);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RoutingControl.RoutingControlType();
  v106 = *(v19 - 8);
  v107 = v19;
  v20 = *(v106 + 64);
  __chkstk_darwin(v19);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
  v104 = *(v23 - 8);
  v105 = v23;
  v24 = *(v104 + 64);
  v25 = __chkstk_darwin(v23);
  v102 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v103 = &v99 - v27;
  v28 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v99 - v30;
  v32 = type metadata accessor for HostedRoutingSourceSession(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v108 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = RoutingControl.sessionIdentifier.getter();
  v39 = v38;
  v40 = sub_100037234();
  if (v37 == *v40 && v39 == *(v40 + 1))
  {

LABEL_5:
    v43 = sub_100028D40();
    v44 = v113;
    (*(v15 + 16))(v18, v43, v113);
    v45 = v112;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v109 = a11;
      v48 = swift_slowAlloc();
      v116[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = _typeName(_:qualified:)();
      v51 = sub_10002C9C8(v49, v50, v116);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_10002C9C8(v111, v45, v116);
      _os_log_impl(&_mh_execute_header, v46, v47, v109, v48, 0x16u);
      swift_arrayDestroy();
    }

    (*(v15 + 8))(v18, v44);
    v52 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v53 = swift_allocError();
    (*(*(v52 - 8) + 104))(v54, enum case for InternalRoutingError.unsupportedOperation(_:), v52);
    v55 = v53;
    v56 = 0;
    v57 = 0;
    goto LABEL_8;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_5;
  }

  v65 = (*(*v12 + 440))(v42);
  __chkstk_darwin(v65);
  *(&v99 - 2) = v36;
  sub_10029F038(v109, v65, v31);

  if ((*(v33 + 48))(v31, 1, v32) != 1)
  {
    v72 = v108;
    sub_100032E70(v31, v108, type metadata accessor for HostedRoutingSourceSession);
    RoutingControl.type.getter();
    v74 = v106;
    v73 = v107;
    if ((*(v106 + 88))(v22, v107) == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
    {
      (*(v74 + 96))(v22, v73);
      v76 = v103;
      v75 = v104;
      v77 = v105;
      (*(v104 + 32))(v103, v22, v105);
      v78 = *(v72 + 24);
      if (v78)
      {
        v79 = *(v72 + 16);
        v80 = sub_100034D68();
        if (v80[2] && (v81 = sub_10000698C(v79, v78), (v82 & 1) != 0))
        {
          v83 = *(v80[7] + 8 * v81);

          v84 = [*(v83 + 88) externalDevice];
          if (v84)
          {
            v85 = v84;
            if (*(v83 + 16) == 2)
            {
              v86 = v102;
              (*(v75 + 16))(v102, v76, v77);
              v87 = (*(v75 + 88))(v86, v77);
              if (v87 == enum case for RoutingControls.RelativeVolumeControl.AdjustmentType.increase(_:))
              {
                [v85 sendButtonEvent:{a9, a10}];
LABEL_27:
                (v115)(0, 0, 0, 0);

                goto LABEL_22;
              }

              if (v87 == enum case for RoutingControls.RelativeVolumeControl.AdjustmentType.decrease(_:))
              {
                [v85 sendButtonEvent:{v100, v101}];
                goto LABEL_27;
              }

LABEL_30:
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v88 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
        v89 = swift_allocError();
        (*(*(v88 - 8) + 104))(v90, enum case for InternalRoutingError.sessionNotFound(_:), v88);
        v91 = RoutingControl.sessionIdentifier.getter();
        MRDFastSyncGroupSessionState.rawValue.getter(v89, v91, v92);
        v94 = v93;
        v96 = v95;
        v98 = v97;
        v115();

        sub_10023DCB0(v94, v96, v98);
LABEL_22:
        (*(v75 + 8))(v76, v77);
        return sub_10002187C(v72, type metadata accessor for HostedRoutingSourceSession);
      }
    }

    else
    {
      (*(v74 + 8))(v22, v73);
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1000038A4(v31, &qword_100523B88, &unk_100451A50);
  v66 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v67 = swift_allocError();
  (*(*(v66 - 8) + 104))(v68, enum case for InternalRoutingError.sessionNotFound(_:), v66);
  v69 = RoutingControl.sessionIdentifier.getter();
  v71 = v70;
  v55 = v67;
  v56 = v69;
  v57 = v71;
LABEL_8:
  MRDFastSyncGroupSessionState.rawValue.getter(v55, v56, v57);
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v115();

  return sub_10023DCB0(v59, v61, v63);
}

uint64_t sub_1002D0308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v121 = a3;
  v122 = a5;
  v124 = a4;
  v108 = a2;
  v117 = *v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v118 = &v104[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for RoutingControl.RoutingControlType();
  v110 = *(v11 - 8);
  v111 = v11;
  v12 = *(v110 + 64);
  __chkstk_darwin(v11);
  v113 = &v104[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for RoutingControl();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v16 = __chkstk_darwin(v14);
  v114 = &v104[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v109 = &v104[-v18];
  v19 = sub_1001BC5A8(&qword_100525798, &qword_100457B00);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v104[-v21];
  v23 = type metadata accessor for ContinuousRoutingControl();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v112 = &v104[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v29 = &v104[-v28];
  v30 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v104[-v32];
  v34 = sub_100015A78();
  v35 = v7;
  sub_10001D9AC(v34, v33, &qword_100525C00, &unk_1004511A0);
  v123 = v8;
  v36 = (*(v8 + 48))(v33, 1, v7);
  v120 = a1;
  if (v36 == 1)
  {
    sub_1000038A4(v33, &qword_100525C00, &unk_1004511A0);
    v37 = v123;
    v38 = v23;
  }

  else
  {
    (*(v24 + 16))(v29, a1, v23);
    v39 = v124;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v107 = v35;
      v43 = v42;
      v106 = swift_slowAlloc();
      v125[0] = v106;
      *v43 = 136315650;
      v44 = _typeName(_:qualified:)();
      v105 = v41;
      v46 = sub_10002C9C8(v44, v45, v125);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_10002C9C8(v121, v39, v125);
      *(v43 + 22) = 2080;
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v24 + 8))(v29, v23);
      v50 = sub_10002C9C8(v47, v49, v125);

      *(v43 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v40, v105, "[%s] handleEndContinuousControl<%s> - handle interaction with: %s", v43, 0x20u);
      swift_arrayDestroy();

      v35 = v107;
    }

    else
    {

      (*(v24 + 8))(v29, v23);
    }

    v38 = v23;
    v37 = v123;
    (*(v123 + 8))(v33, v35);
  }

  v51 = v124;
  v52 = v119;
  v125[0] = sub_10029A7A8();
  v53 = v120;
  sub_1002CCEB0(v120, v22);
  v54 = *(v52 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls);
  *(v52 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls) = v125[0];

  v55 = (*(v24 + 48))(v22, 1, v38);
  sub_1000038A4(v22, &qword_100525798, &qword_100457B00);
  if (v55 == 1)
  {
    v56 = sub_100028D40();
    v57 = v118;
    (*(v37 + 16))(v118, v56, v35);
    v58 = v112;
    (*(v24 + 16))(v112, v53, v38);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v107 = v35;
      v62 = v61;
      v125[0] = swift_slowAlloc();
      *v62 = 136315650;
      v63 = _typeName(_:qualified:)();
      v65 = sub_10002C9C8(v63, v64, v125);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_10002C9C8(v121, v51, v125);
      *(v62 + 22) = 2082;
      sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      (*(v24 + 8))(v58, v38);
      v69 = sub_10002C9C8(v66, v68, v125);

      *(v62 + 24) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%s] handleEndContinuousControl<%{public}s> - no matching ongoing control found for: %{public}s", v62, 0x20u);
      swift_arrayDestroy();

      (*(v123 + 8))(v118, v107);
    }

    else
    {

      (*(v24 + 8))(v58, v38);
      (*(v37 + 8))(v57, v35);
    }

    v80 = type metadata accessor for InternalRoutingError();
    sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v81 = swift_allocError();
    (*(*(v80 - 8) + 104))(v82, enum case for InternalRoutingError.invalidAction(_:), v80);
    v83 = MRDFastSyncGroupSessionState.rawValue.getter(v81, 0, 0);
    v85 = v84;
    v87 = v86;
    v89 = v88;
    sub_1002D32BC(v83, v84, v86, v88);

    return sub_10023DCB0(v85, v87, v89);
  }

  else
  {
    v70 = v109;
    ContinuousRoutingControl.control.getter();
    v71 = v113;
    RoutingControl.type.getter();
    v72 = v116;
    v73 = *(v115 + 8);
    v73(v70, v116);
    v75 = v110;
    v74 = v111;
    v76 = (*(v110 + 88))(v71, v111);
    if (v76 == enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
    {
      (*(v75 + 96))(v71, v74);
      v77 = v114;
      ContinuousRoutingControl.control.getter();
      sub_1002CF8F8(v77, v121, v51, sub_1002D32BC, v122, sub_1002D4D5C, 0xEA0000000CLL, 0, 0xE90000000CLL, 0, "[%s] handleEndRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
      v73(v77, v72);
      v78 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
      return (*(*(v78 - 8) + 8))(v71, v78);
    }

    if (v76 == enum case for RoutingControl.RoutingControlType.rewind(_:))
    {
      v90 = v114;
      ContinuousRoutingControl.control.getter();
      v91 = sub_10021F050(_swiftEmptyArrayStorage);
      v92 = v90;
      v93 = v108;
      v94 = v121;
      v95 = v51;
      v96 = 11;
    }

    else
    {
      if (v76 != enum case for RoutingControl.RoutingControlType.fastForward(_:))
      {
        v125[0] = 0;
        v125[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(112);
        v97._countAndFlagsBits = 91;
        v97._object = 0xE100000000000000;
        String.append(_:)(v97);
        v98._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v98);

        v99._object = 0x800000010043F950;
        v99._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v99);
        v100._countAndFlagsBits = v121;
        v100._object = v51;
        String.append(_:)(v100);
        v101._countAndFlagsBits = 0x746E6F63202D203ELL;
        v101._object = 0xED0000203A6C6F72;
        String.append(_:)(v101);
        sub_1002CDD70(&qword_100524288, &type metadata accessor for ContinuousRoutingControl);
        v102._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v102);

        v103._countAndFlagsBits = 0xD00000000000003FLL;
        v103._object = 0x800000010043F910;
        String.append(_:)(v103);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v90 = v114;
      ContinuousRoutingControl.control.getter();
      v91 = sub_10021F050(_swiftEmptyArrayStorage);
      v92 = v90;
      v93 = v108;
      v94 = v121;
      v95 = v51;
      v96 = 9;
    }

    sub_1002CE274(v92, v93, v94, v95, v96, v91, sub_1002D32BC, v122);

    return (v73)(v90, v72);
  }
}

uint64_t sub_1002D0FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = (*(*v3 + 368))(v10);
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v15 = sub_100037234();
    if ((*v15 != a2 || *(v15 + 1) != a3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v16._countAndFlagsBits = 0xD000000000000031;
      v16._object = 0x800000010043F5D0;
      String.append(_:)(v16);
      v34[1] = a1;
      sub_10026A1B0();
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._object = 0x800000010043F610;
      v18._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v18);
      v19._countAndFlagsBits = a2;
      v19._object = a3;
      String.append(_:)(v19);
      sub_100033F40(v35, v36);
    }

    v20 = sub_100297774();
    v21 = v20;
    v22 = v20 + 64;
    v23 = 1 << v20[32];
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v20 + 8);
    v26 = (v23 + 63) >> 6;

    for (i = 0; v25; result = )
    {
      v28 = i;
LABEL_14:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = *(v21 + 7) + ((v28 << 10) | (16 * v29));
      v32 = *v30;
      v31 = *(v30 + 8);

      v32(v33);
    }

    while (1)
    {
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
      }

      v25 = *&v22[8 * v28];
      ++i;
      if (v25)
      {
        i = v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D1300()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_1002485A4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v4 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1002D1378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    v7(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    return sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v15 = *(v6 + 96);
    v16 = *(v6 + 32);

    sub_1002AF590((v6 + 40), v7, v8, a5, v15);
  }
}

uint64_t sub_1002D1490()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(**(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource) + 200);

  v5 = v4(v2, v3);

  if (v5 == 3)
  {
    v6 = 0;
  }

  else
  {
    sub_100254984();
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1002540BC(v5);
  }

  return v6 & 1;
}

uint64_t sub_1002D156C()
{
  result = type metadata accessor for RoutingMode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_1002D16D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002D16E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002D1730(uint64_t result, int a2, int a3)
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

unint64_t sub_1002D1784()
{
  result = qword_100533560[0];
  if (!qword_100533560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533560);
  }

  return result;
}

unint64_t sub_1002D17DC()
{
  result = qword_100533670;
  if (!qword_100533670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100533670);
  }

  return result;
}

unint64_t sub_1002D1834()
{
  result = qword_100533800[0];
  if (!qword_100533800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533800);
  }

  return result;
}

unint64_t sub_1002D188C()
{
  result = qword_100533A10[0];
  if (!qword_100533A10[0])
  {
    type metadata accessor for HostedRoutingSessionDataSource.EndpointEntry();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100533A10);
  }

  return result;
}

uint64_t sub_1002D18E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1002D193C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D19C0(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1002D1A34()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v7 = Strong;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v8 == v4)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_1002A58F4(v7);
LABEL_12:
    sub_100033F40(v3, v4);
  }

  return result;
}

uint64_t sub_1002D1B4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v8 = sub_100034D68();
  if (v8[2] && (v9 = sub_10000698C(v3, v4), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);

    if (v11 == v1)
    {
      if (!v7)
      {
        sub_1002A4A5C(v1);
      }

      return v6(v7);
    }
  }

  else
  {
  }

  v13 = type metadata accessor for InternalRoutingError();
  sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
  v14 = swift_allocError();
  (*(*(v13 - 8) + 104))(v15, enum case for InternalRoutingError.endpointEntryNotFound(_:), v13);
  v6(v14);
}

uint64_t sub_1002D1D34()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1002A58F4(v1);
}

uint64_t sub_1002D1E08()
{
  if (!*(v0 + 24))
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v23 = sub_10024C81C();
    v24 = [v23 localActivePlayerClient];

    if (!v24)
    {
      return 0;
    }

    v25 = [v24 supportedRemoteControlCommands];

    if (!v25)
    {
      return 0;
    }

    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_100020418(v26);

    if (!v9)
    {
      return 0;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    v42 = kMRMediaRemoteCommandInfoIsActiveKey;
    v28 = 4;
    while (1)
    {
      v29 = v28 - 4;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v30 = *(v9 + 8 * v28);
      }

      v31 = v30;
      v32 = v28 - 3;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_57;
      }

      if ([v30 command] == 21)
      {
        v33 = [v31 options];
        if (!v33)
        {

          goto LABEL_50;
        }

        v34 = v33;
        v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = v42;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v35 + 16) || (v37 = sub_10001BF64(v43), (v38 & 1) == 0))
        {

          sub_10001BF10(v43);
LABEL_50:
          v44 = 0u;
          v45 = 0u;
LABEL_51:
          sub_1000038A4(&v44, &qword_100522890, &qword_100450610);
          goto LABEL_35;
        }

        sub_100020E0C(*(v35 + 56) + 32 * v37, &v44);

        sub_10001BF10(v43);

        if (!*(&v45 + 1))
        {
          goto LABEL_51;
        }

        if (swift_dynamicCast() & 1) != 0 && (v43[0])
        {
LABEL_54:
          v40 = 1;
          goto LABEL_63;
        }
      }

      else
      {
      }

LABEL_35:
      ++v28;
      if (v32 == v27)
      {
        goto LABEL_62;
      }
    }
  }

  v1 = *(v0 + 16);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v2 = sub_10024C81C();
  v3 = [v2 localOriginClient];

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 existingNowPlayingClientForDisplayID:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 activePlayerClient];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 supportedRemoteControlCommands];

  if (!v7)
  {
    return 0;
  }

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100020418(v8);

  if (!v9)
  {
    return 0;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v41 = kMRMediaRemoteCommandInfoIsActiveKey;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_56;
        }

        v14 = *(v9 + 8 * v12);
      }

      v15 = v14;
      v16 = v12 - 3;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v14 command] == 21)
      {
        v17 = [v15 options];
        if (!v17)
        {

          goto LABEL_25;
        }

        v18 = v17;
        v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = v41;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v19 + 16) || (v21 = sub_10001BF64(v43), (v22 & 1) == 0))
        {

          sub_10001BF10(v43);
LABEL_25:
          v44 = 0u;
          v45 = 0u;
LABEL_26:
          sub_1000038A4(&v44, &qword_100522890, &qword_100450610);
          goto LABEL_10;
        }

        sub_100020E0C(*(v19 + 56) + 32 * v21, &v44);

        sub_10001BF10(v43);

        if (!*(&v45 + 1))
        {
          goto LABEL_26;
        }

        if (swift_dynamicCast() & 1) != 0 && (v43[0])
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

LABEL_10:
      ++v12;
      if (v16 == i)
      {
        goto LABEL_62;
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
    ;
  }

LABEL_62:
  v40 = 0;
LABEL_63:

  return v40;
}

uint64_t sub_1002D23D8(char a1)
{
  v3 = *(type metadata accessor for ContinuousClock() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002B29C8(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1002D24FC()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = v1[5];
  v5 = v1[6];
  result = swift_beginAccess();
  v8 = *(v2 + 16);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = __CocoaSet.count.getter();

    if (!v9)
    {
      return result;
    }
  }

  else if (!*(v8 + 16))
  {
    return result;
  }

  result = v3(result);
  if (result)
  {
    return v6(0);
  }

  return result;
}

uint64_t sub_1002D25B4(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[3];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1002D260C()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    result = swift_beginAccess();
    v6 = *(v1 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v7 = __CocoaSet.count.getter();

      if (!v7)
      {
        return result;
      }
    }

    else if (!*(v6 + 16))
    {
      return result;
    }

    return v4(1);
  }

  return result;
}

void sub_1002D26C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  if (!kMRNowPlayingPlayerPathUserInfoKey)
  {
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_10001BF64(v18), (v8 & 1) == 0))
  {

    sub_10001BF10(v18);
LABEL_13:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  sub_100020E0C(*(v6 + 56) + 32 * v7, &v19);
  sub_10001BF10(v18);

  if (!*(&v20 + 1))
  {
LABEL_14:
    sub_1000038A4(&v19, &qword_100522890, &qword_100450610);
    return;
  }

  sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
  if (swift_dynamicCast())
  {
    v9 = v18[0];
    v10 = [v18[0] client];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = [v10 bundleIdentifier];

    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == v1 && v15 == v2)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
LABEL_18:

        return;
      }
    }

    v4(v16);
    goto LABEL_18;
  }
}

uint64_t sub_1002D28C4()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  v7 = v1[8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (v3())
    {
      v12 = sub_100297774();

      sub_10027DB8C(0, 0, v5, v6);
      v11 = *(v10 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers);
      *(v10 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = v12;

      v8(0);
    }
  }

  return result;
}

uint64_t sub_1002D29A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v11 = sub_100297774();
    v8 = sub_1002859AC(v2, v3);
    v9 = *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers);
    *(v7 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers) = v11;

    if (v8)
    {
      v10 = sub_1001C7C2C(v8);
      v4(v10);
    }
  }

  return result;
}

uint64_t sub_1002D2A64(void *a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1002C7B68(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D2ADC()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002D2BA8()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  if (v2 && (v5 = *(v1 + 80), (v6 = [v2 error]) != 0))
  {
    v15 = v6;
    v7 = RoutingControl.sessionIdentifier.getter();
    MRDFastSyncGroupSessionState.rawValue.getter(v15, v7, v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v3();

    sub_10023DCB0(v10, v12, v14);
  }

  else
  {
    (v3)(0, 0, 0, 0);
  }
}

uint64_t sub_1002D2CEC()
{
  if (!*(v0 + 24))
  {
    sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
    v23 = sub_10024C81C();
    v24 = [v23 localActivePlayerClient];

    if (!v24)
    {
      return 0;
    }

    v25 = [v24 supportedRemoteControlCommands];

    if (!v25)
    {
      return 0;
    }

    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_100020418(v26);

    if (!v9)
    {
      return 0;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    v42 = kMRMediaRemoteCommandInfoIsActiveKey;
    v28 = 4;
    while (1)
    {
      v29 = v28 - 4;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v30 = *(v9 + 8 * v28);
      }

      v31 = v30;
      v32 = v28 - 3;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_57;
      }

      if ([v30 command] == 21)
      {
        v33 = [v31 options];
        if (!v33)
        {

          goto LABEL_50;
        }

        v34 = v33;
        v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = v42;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v35 + 16) || (v37 = sub_10001BF64(v43), (v38 & 1) == 0))
        {

          sub_10001BF10(v43);
LABEL_50:
          v44 = 0u;
          v45 = 0u;
LABEL_51:
          sub_1000038A4(&v44, &qword_100522890, &qword_100450610);
          goto LABEL_35;
        }

        sub_100020E0C(*(v35 + 56) + 32 * v37, &v44);

        sub_10001BF10(v43);

        if (!*(&v45 + 1))
        {
          goto LABEL_51;
        }

        if ((swift_dynamicCast() & 1) != 0 && (v43[0] & 1) == 0)
        {
LABEL_54:
          v40 = 1;
          goto LABEL_63;
        }
      }

      else
      {
      }

LABEL_35:
      ++v28;
      if (v32 == v27)
      {
        goto LABEL_62;
      }
    }
  }

  v1 = *(v0 + 16);
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v2 = sub_10024C81C();
  v3 = [v2 localOriginClient];

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 existingNowPlayingClientForDisplayID:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 activePlayerClient];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 supportedRemoteControlCommands];

  if (!v7)
  {
    return 0;
  }

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100020418(v8);

  if (!v9)
  {
    return 0;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v41 = kMRMediaRemoteCommandInfoIsActiveKey;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_56;
        }

        v14 = *(v9 + 8 * v12);
      }

      v15 = v14;
      v16 = v12 - 3;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ([v14 command] == 21)
      {
        v17 = [v15 options];
        if (!v17)
        {

          goto LABEL_25;
        }

        v18 = v17;
        v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = v41;
        sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
        sub_100037570();
        AnyHashable.init<A>(_:)();
        if (!*(v19 + 16) || (v21 = sub_10001BF64(v43), (v22 & 1) == 0))
        {

          sub_10001BF10(v43);
LABEL_25:
          v44 = 0u;
          v45 = 0u;
LABEL_26:
          sub_1000038A4(&v44, &qword_100522890, &qword_100450610);
          goto LABEL_10;
        }

        sub_100020E0C(*(v19 + 56) + 32 * v21, &v44);

        sub_10001BF10(v43);

        if (!*(&v45 + 1))
        {
          goto LABEL_26;
        }

        if ((swift_dynamicCast() & 1) != 0 && (v43[0] & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

LABEL_10:
      ++v12;
      if (v16 == i)
      {
        goto LABEL_62;
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
    ;
  }

LABEL_62:
  v40 = 0;
LABEL_63:

  return v40;
}

uint64_t sub_1002D32BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v4 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_1002B3594(a1, a2, a3, a4, v4 + v10, v4 + v13, *(v4 + v14), *(v4 + v14 + 8), *(v4 + v15), *(v4 + v15 + 8));
}

uint64_t sub_1002D3434()
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
  v15 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v15 | 7);
}

uint64_t sub_1002D35D4(char a1, const char *a2, const char *a3)
{
  v7 = *(type metadata accessor for ContinuousClock() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002AE9FC(a1, v3 + v8, v3 + v11, *(v3 + v12), *(v3 + v12 + 8), *(v3 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_1002D3704()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1002D3754()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(*result + 440))();
    v10 = v2();

    if (v10)
    {
      v12 = sub_100297768();

      sub_10027DB8C(0, 0, v3, v5);
      v11 = *(v9 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);
      *(v9 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers) = v12;

      v6(0);
    }
  }

  return result;
}

uint64_t sub_1002D38A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  sub_1002485A4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v5 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1002D3930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3;
  v5 = v3;
  v6 = *(v3 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v23 = *(v5 + 48);
  v10 = *(v5 + 112);
  v11 = *(v5 + 120);
  if (!a1)
  {
    goto LABEL_4;
  }

  v22 = *(v5 + 24);
  swift_getErrorValue();
  swift_errorRetain();
  if (sub_100248E9C(v24))
  {

    v4 = a3;
LABEL_4:
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v11;
    v13[4] = v8;
    v13[5] = v9;

    sub_1002ACDCC((v5 + 56), v6, v7, v4, v13);
  }

  swift_errorRetain();

  MRDFastSyncGroupSessionState.rawValue.getter(a1, v8, v9);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (v6)();

  sub_10023DCB0(v16, v18, v20);
}

uint64_t sub_1002D3AA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  if (a1)
  {
    swift_errorRetain();

    swift_errorRetain();
    MRDFastSyncGroupSessionState.rawValue.getter(a1, v5, v4);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v3();

    sub_10023DCB0(v8, v10, v12);
  }

  else
  {
    v14 = *(v1 + 48);
    v21 = *(v1 + 56);
    v15 = *(v1 + 88);
    v19[0] = *(v1 + 72);
    v19[1] = v15;
    v20 = *(v1 + 104);
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v2;
    *(v16 + 32) = v5;
    *(v16 + 40) = v4;
    *(v16 + 48) = v14;
    *(v16 + 56) = *(v1 + 56);
    *(v16 + 72) = *(v1 + 72);
    *(v16 + 88) = *(v1 + 88);
    *(v16 + 104) = *(v1 + 104);
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *(v17 + 24) = v4;
    swift_bridgeObjectRetain_n();

    sub_10028BC98(&v21, v18);
    sub_10026D080(v19, v18);
    sub_1002ACDCC((v1 + 56), sub_1002D3C80, v16, sub_1002D3DE0, v17);
  }
}

uint64_t sub_1002D3C80(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = v5[4];
  v9 = v5[5];
  if (a1)
  {
    sub_1002D3DE8();
    v14 = swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);

    MRDFastSyncGroupSessionState.rawValue.getter(v14, v8, v9);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v7();

    sub_10023DCB0(v17, v19, v21);

    return sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v23 = v5[6];
    return sub_1002B48B8(v5[4], v5[5], v5 + 7, v7, v6);
  }
}

unint64_t sub_1002D3DE8()
{
  result = qword_100525770;
  if (!qword_100525770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525770);
  }

  return result;
}

uint64_t sub_1002D3F48(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[4]);
  v4 = v1[6];

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1002D3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[5];
  v9 = v4[6];
  if (a1)
  {
    v12 = v4[2];
    v11 = v4[3];
    v26 = v4[4];
    v13 = v12 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = a4;
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      v15 = sub_100037234();
      v23 = v10;
      v24 = a3;
      v17 = *v15;
      v16 = *(v15 + 1);
      v21 = *(v14 + 32);

      v18 = v17;
      v10 = v23;
      v19 = v14;
      a4 = v25;
      v21(v12, v11, v26, v18, v16, ObjectType, v19);
      swift_unknownObjectRelease();
      a3 = v24;
    }
  }

  return v10(a1, a2, a3, a4);
}

void sub_1002D410C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(v4 + ((v11 + 63) & 0xFFFFFFFFFFFFFFF8));
  sub_1002BFBA8(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 28), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), (v4 + v10), (v4 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1002D425C()
{
  v1 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_1002C2BB4(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_1002D438C(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1002D43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RoutingControl() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002C5BD0(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + ((((v11 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), (v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 71) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1002D4508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RoutingControl() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState() - 8);
  return sub_1002C4CB8(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), (v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 49) & ~*(v12 + 80)));
}

uint64_t sub_1002D4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v15 = *(type metadata accessor for RoutingControl() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002C56BC(a1, a2, a3, a4, *(v7 + 16), *(v7 + 24), v7 + v16, *(v7 + v17), (v7 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), a5, a6, a7);
}

uint64_t sub_1002D4744()
{
  v1 = type metadata accessor for RoutingControl();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  sub_1002485A4(*(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40), *(v0 + v6 + 48));

  return _swift_deallocObject(v0, v6 + 49, v3 | 7);
}

uint64_t sub_1002D487C(uint64_t a1)
{
  v2 = *(*(type metadata accessor for RoutingControl() - 8) + 80);

  return sub_1002C4B14(a1);
}

uint64_t sub_1002D48F0(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for RoutingControl() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1002C5320(a1, v1 + v4);
}

uint64_t sub_1002D49C4()
{
  v1 = *(type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1002C50B8(v2);
}

uint64_t sub_1002D4A24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1002D4B1C(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C63B8(a1, v1 + v4, v5);
}

uint64_t sub_1002D4BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D4C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  if (a1)
  {
    sub_10023DBE8(a1, a2, a3, a4);
    swift_errorRetain();
    sub_10023DC40(a2, a3, a4);
    (v6)(a1, a2, a3, a4);
    sub_10023DC58(a1, a2, a3, a4);

    return sub_10023DCB0(a2, a3, a4);
  }

  else
  {
    v13 = v7;
    v14 = *(v5 + 32);
    return sub_1002CF8F8(*(v5 + 40), **(v5 + 48), *(*(v5 + 48) + 8), v6, v13, sub_1002D4D5C, 0xEA0000000CLL, 0, 0xE90000000CLL, 0, "[%s] handleEndRelativeVolumeControl<%{public}s> - relative volume is not supported for local session");
  }
}

uint64_t sub_1002D4D78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  if (v3 == RoutingControl.sessionIdentifier.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1002D4DF0()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C74C0(v4, (v0 + 24), v5, v6, v0 + v2, v7, v8);
}

uint64_t sub_1002D4E94()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002D4F04(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002C7654(a1, v1 + v4, v6, v7);
}

uint64_t sub_1002D5110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element;
  swift_beginAccess();
  return sub_1002D56A8(v1 + v3, a1, type metadata accessor for RoutingDecisionEngine.Decision.Element);
}

uint64_t sub_1002D519C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element;
  swift_beginAccess();
  sub_1002D51FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002D51FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D52C0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  LOBYTE(v3) = *(v3 + 48);

  result = sub_10026D0B8(v6, v7, v8, v9, v3);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_1002D5360(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  *(v3 + 32) = *(a1 + 32);
  v10 = *(a1 + 48);
  LOBYTE(a1) = *(v3 + 48);
  *(v3 + 48) = v10;

  return sub_1002485A4(v5, v6, v7, v8, a1);
}

uint64_t sub_1002D545C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 96))(v5);
  if (!swift_getEnumCaseMultiPayload())
  {
    return sub_1002D5640(v7, a1, type metadata accessor for HostedRoutingItem);
  }

  result = sub_1002D5710(v7, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  __break(1u);
  return result;
}

uint64_t sub_1002D554C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 96))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1002D5640(v7, a1, type metadata accessor for HostedRoutingSession);
  }

  result = sub_1002D5710(v7, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  __break(1u);
  return result;
}

uint64_t sub_1002D5640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D56A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D5710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D5770(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1002D5640(a1, v7 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  v8 = v7 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  return v7;
}

uint64_t sub_1002D5800()
{
  sub_1002D5710(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
  v1 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 8);
  v2 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 16);
  v3 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 24);
  v4 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 32);
  v5 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 40);
  v6 = *(v0 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction + 48);

  sub_1002485A4(v2, v3, v4, v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1002D5950(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v746 = a4;
  v773 = a3;
  v854 = a1;
  v5 = sub_1001BC5A8(&qword_100524248, &unk_100457C10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v717 = &v709 - v7;
  v8 = type metadata accessor for RoutingSessionConfiguration.Context();
  v744 = *(v8 - 8);
  v745 = v8;
  v9 = *(v744 + 64);
  __chkstk_darwin(v8);
  v743 = &v709 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v724 = &v709 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v729 = &v709 - v17;
  v18 = __chkstk_darwin(v16);
  v725 = &v709 - v19;
  v20 = __chkstk_darwin(v18);
  v727 = &v709 - v21;
  v22 = __chkstk_darwin(v20);
  v720 = &v709 - v23;
  v24 = __chkstk_darwin(v22);
  v736 = &v709 - v25;
  v26 = __chkstk_darwin(v24);
  v735 = &v709 - v27;
  v28 = __chkstk_darwin(v26);
  v734 = &v709 - v29;
  v30 = __chkstk_darwin(v28);
  v721 = &v709 - v31;
  v32 = __chkstk_darwin(v30);
  v719 = &v709 - v33;
  v34 = __chkstk_darwin(v32);
  v715 = &v709 - v35;
  v36 = __chkstk_darwin(v34);
  v716 = &v709 - v37;
  v38 = __chkstk_darwin(v36);
  v726 = &v709 - v39;
  v40 = __chkstk_darwin(v38);
  v732 = &v709 - v41;
  v42 = __chkstk_darwin(v40);
  v731 = &v709 - v43;
  v44 = __chkstk_darwin(v42);
  v728 = &v709 - v45;
  v46 = __chkstk_darwin(v44);
  v722 = &v709 - v47;
  v48 = __chkstk_darwin(v46);
  v738 = &v709 - v49;
  v50 = __chkstk_darwin(v48);
  v737 = &v709 - v51;
  __chkstk_darwin(v50);
  v755 = &v709 - v52;
  v752 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  v53 = *(*(v752 - 8) + 64);
  __chkstk_darwin(v752);
  v753 = &v709 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v733 = &v709 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v749 = &v709 - v59;
  v60 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v750 = *(v60 - 8);
  v751 = v60;
  v61 = *(v750 + 64);
  v62 = __chkstk_darwin(v60);
  v730 = (&v709 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v62);
  v742 = (&v709 - v64);
  v65 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  v66 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65 - 8);
  v760 = &v709 - v67;
  v762 = type metadata accessor for HostedRoutingItem(0);
  v767 = *(v762 - 8);
  v68 = *(v767 + 64);
  v69 = __chkstk_darwin(v762);
  v741 = &v709 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v739 = &v709 - v72;
  v73 = __chkstk_darwin(v71);
  v756 = &v709 - v74;
  v75 = __chkstk_darwin(v73);
  v748 = (&v709 - v76);
  v77 = __chkstk_darwin(v75);
  v757 = &v709 - v78;
  v79 = __chkstk_darwin(v77);
  v758 = (&v709 - v80);
  v81 = __chkstk_darwin(v79);
  v747 = &v709 - v82;
  v83 = __chkstk_darwin(v81);
  v740 = &v709 - v84;
  v85 = __chkstk_darwin(v83);
  v754 = &v709 - v86;
  __chkstk_darwin(v85);
  v761 = &v709 - v87;
  v770 = type metadata accessor for HostedRoutingSession(0);
  v764 = *(v770 - 8);
  v88 = v764[8];
  v89 = __chkstk_darwin(v770);
  v718 = &v709 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v92 = (&v709 - v91);
  v93 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v94 = *(*(v93 - 8) + 64);
  v95 = __chkstk_darwin(v93 - 8);
  v723 = &v709 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __chkstk_darwin(v95);
  v765 = (&v709 - v98);
  v99 = __chkstk_darwin(v97);
  v759 = &v709 - v100;
  __chkstk_darwin(v99);
  v763 = (&v709 - v101);
  v102 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v103 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102 - 8);
  v105 = &v709 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v107 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106 - 8);
  v109 = &v709 - v108;
  v110 = sub_1001D93CC();
  sub_10001D9AC(v110, v109, &qword_100525C00, &unk_1004511A0);
  v111 = (*(v12 + 48))(v109, 1, v11);
  v772 = v11;
  if (v111 == 1)
  {
    sub_1000038A4(v109, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v769 = v12;
    sub_1002D56A8(v773, v105, type metadata accessor for HostedRoutingSessionSnapshot);
    swift_bridgeObjectRetain_n();
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v713 = v92;
      v115 = a2;
      v116 = v114;
      v771 = swift_slowAlloc();
      v777[0] = v771;
      *v116 = 136315650;
      v117 = _typeName(_:qualified:)();
      v119 = sub_10002C9C8(v117, v118, v777);

      *(v116 + 4) = v119;
      *(v116 + 12) = 2080;

      v120 = sub_10002C9C8(v854, v115, v777);

      *(v116 + 14) = v120;
      v121 = swift_bridgeObjectRelease_n();
      *(v116 + 22) = 2080;
      v122 = sub_100264AAC(v121);
      v124 = sub_10002C9C8(v122, v123, v777);

      *(v116 + 24) = v124;
      v125 = v713;
      sub_1002D5710(v105, type metadata accessor for HostedRoutingSessionSnapshot);
      _os_log_impl(&_mh_execute_header, v112, v113, "[%s] computeInteraction for item: %s in snapshot: %s", v116, 0x20u);
      swift_arrayDestroy();

      a2 = v115;
      v92 = v125;
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_1002D5710(v105, type metadata accessor for HostedRoutingSessionSnapshot);
    }

    v12 = v769;
    (*(v769 + 8))(v109, v772);
  }

  v777[0] = v854;
  v777[1] = a2;
  v775 = 14906;
  v776 = 0xE200000000000000;
  sub_10026983C();
  v126 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  if (v126[2] != 2)
  {

    v143 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
    swift_allocError();
    v145 = v144;
    v146 = &enum case for InternalRoutingError.itemNotFound(_:);
LABEL_16:
    (*(*(v143 - 8) + 104))(v145, *v146, v143);
    swift_willThrow();
    return v12;
  }

  v712 = a2;
  v128 = v126[4];
  v127 = v126[5];
  v129 = v126[6];
  v130 = v126[7];
  v131 = v126;

  v132 = static String._fromSubstring(_:)();
  v771 = v133;

  if (v131[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_135;
  }

  v135 = v131[8];
  v134 = v131[9];
  v768 = v132;
  v136 = v131[10];
  v137 = v131[11];
  v714 = v131;

  v138 = v768;
  v139 = static String._fromSubstring(_:)();
  v141 = v140;

  if (v138 == static RoutingSession.placeholderSessionIdentifier.getter() && v771 == v142)
  {

LABEL_15:

    v143 = type metadata accessor for InternalRoutingError();
    sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
    swift_allocError();
    v145 = v148;
    v146 = &enum case for InternalRoutingError.invalidAction(_:);
    goto LABEL_16;
  }

  v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v147)
  {

    goto LABEL_15;
  }

  v769 = v12;
  v713 = v92;
  v709 = v139;
  v711 = v141;
  v150 = v773;
  v710 = sub_1002647C8();
  v151 = v763;
  sub_10001D9AC(v150, v763, &qword_100523620, &unk_1004511D0);
  v152 = v764;
  v153 = v764 + 6;
  v154 = v764[6];
  v155 = v770;
  v156 = (v154)(v151, 1, v770);
  sub_1000038A4(v151, &qword_100523620, &unk_1004511D0);
  if (v156 == 1)
  {
    v157 = v154;
    v12 = v153;
    v158 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v159 = v152[9];
  v160 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v158 = swift_allocObject();
  *(v158 + 1) = xmmword_10044EC70;
  v161 = v150;
  v162 = v759;
  sub_10001D9AC(v161, v759, &qword_100523620, &unk_1004511D0);
  v12 = v153;
  v157 = v154;
  result = (v154)(v162, 1, v155);
  if (result != 1)
  {
    sub_1002D5640(v162, v158 + v160, type metadata accessor for HostedRoutingSession);
LABEL_22:
    v163 = v713;
    v164 = v765;
    v777[0] = v710;
    sub_1002E6D98(v158, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
    v165 = v777[0];
    v166 = v771;

    v167 = v766;
    sub_1002E3040(v165, v768, v166, v164);
    v168 = v167;
    if (v157(v164, 1, v155) == 1)
    {

      sub_1000038A4(v164, &qword_100523620, &unk_1004511D0);
      v143 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
      swift_allocError();
      v145 = v169;
      v146 = &enum case for InternalRoutingError.sessionNotFound(_:);
      goto LABEL_16;
    }

    v765 = v157;
    v766 = v12;
    v773 = v165;
    sub_1002D5640(v164, v163, type metadata accessor for HostedRoutingSession);
    v170 = sub_100261164();
    v171 = v712;

    v172 = v760;
    v173 = v171;
    v174 = v168;
    sub_1002E33C8(v170, v854, v173, v760);
    v175 = v168;

    if ((*(v767 + 48))(v172, 1, v762) == 1)
    {

      sub_1000038A4(v172, &qword_100523C18, &qword_100451AF0);
      v176 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
      swift_allocError();
      (*(*(v176 - 8) + 104))(v177, enum case for InternalRoutingError.itemNotFound(_:), v176);
      swift_willThrow();
LABEL_29:
      sub_1002D5710(v163, type metadata accessor for HostedRoutingSession);
      return v12;
    }

    v178 = v761;
    sub_1002D5640(v172, v761, type metadata accessor for HostedRoutingItem);
    if (*(&v163->isa + v155[15]) == 1)
    {

      v179 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
      swift_allocError();
      (*(*(v179 - 8) + 104))(v180, enum case for InternalRoutingError.sessionRequiresAuthorization(_:), v179);
      swift_willThrow();
      v181 = v178;
LABEL_28:
      sub_1002D5710(v181, type metadata accessor for HostedRoutingItem);
      goto LABEL_29;
    }

    if (*(&v163->isa + v155[14]) == 1 && sub_100032ED8())
    {

      v182 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
      swift_allocError();
      (*(*(v182 - 8) + 104))(v183, enum case for InternalRoutingError.invalidAction(_:), v182);
      swift_willThrow();
      v181 = v761;
      goto LABEL_28;
    }

    v184 = v761;
    if (sub_100037908())
    {
      v185 = v749;
      sub_10001D9AC(v163 + v155[7], v749, &qword_100523640, qword_100451520);
      v186 = (*(v750 + 48))(v185, 1, v751);
      v187 = v769;
      if (v186 == 1)
      {
        v188 = v163;
        sub_1000038A4(v185, &qword_100523640, qword_100451520);
        v189 = v755;
LABEL_59:
        v252 = sub_100028D40();
        (*(v187 + 16))(v189, v252, v772);
        v253 = v771;
        swift_bridgeObjectRetain_n();
        v254 = v711;
        swift_bridgeObjectRetain_n();
        v255 = Logger.logObject.getter();
        v256 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v255, v256))
        {
          v257 = swift_slowAlloc();
          v777[0] = swift_slowAlloc();
          *v257 = 136315650;
          v258 = _typeName(_:qualified:)();
          v260 = sub_10002C9C8(v258, v259, v777);

          *(v257 + 4) = v260;
          *(v257 + 12) = 2082;

          v261 = sub_10002C9C8(v709, v254, v777);

          *(v257 + 14) = v261;
          swift_bridgeObjectRelease_n();
          *(v257 + 22) = 2082;
          v188 = v713;

          v12 = sub_10002C9C8(v768, v253, v777);

          *(v257 + 24) = v12;

          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v255, v256, "[%s] Item: %{public}s, is pull handoff item but session: %{public}s has no content", v257, 0x20u);
          swift_arrayDestroy();

          (*(v769 + 8))(v755, v772);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          v262 = *(v187 + 8);
          v12 = v187 + 8;
          v262(v189, v772);
        }

        v263 = type metadata accessor for InternalRoutingError();
        sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
        swift_allocError();
        (*(*(v263 - 8) + 104))(v264, enum case for InternalRoutingError.invalidAction(_:), v263);
        swift_willThrow();
        sub_1002D5710(v761, type metadata accessor for HostedRoutingItem);
        sub_1002D5710(v188, type metadata accessor for HostedRoutingSession);
        return v12;
      }

      v190 = v742;
      sub_1002D5640(v185, v742, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v200 = v190[1];
      v201 = v761;
      v189 = v755;
      if (!v200)
      {
        v188 = v163;
        sub_1002D5710(v190, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        goto LABEL_59;
      }

      v760 = v174;
      v202 = *v190;

      v203 = v754;
      sub_1002D56A8(v201, v754, type metadata accessor for HostedRoutingItem);
      v204 = swift_allocObject();
      v205 = v771;
      v204[2] = v768;
      v204[3] = v205;
      v206 = v711;
      v204[4] = v709;
      v204[5] = v206;
      type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
      v207 = *(v190 + 14);
      v208 = *(v190 + 60);
      v209 = sub_10025FAC0(v190[6]);
      v204[6] = sub_10026DB30(v209, v210, v202, v200);
      v816[0] = v204;
      memset(&v816[1], 0, 24);
      v817 = 6;
      sub_100272B38(v816, v778);
      v211 = v753;
      sub_1002D56A8(v203, v753, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      v212 = type metadata accessor for RoutingDecisionEngine.Decision(0);
      v213 = *(v212 + 48);
      v214 = *(v212 + 52);
      v12 = swift_allocObject();
      sub_1002D5640(v211, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v215 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v216 = v778[1];
      *v215 = v778[0];
      *(v215 + 16) = v216;
      *(v215 + 32) = v778[2];
      *(v215 + 48) = v779;
      sub_1002D5710(v203, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v201, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v713, type metadata accessor for HostedRoutingSession);
      v199 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
LABEL_40:
      sub_1002D5710(v190, v199);
      return v12;
    }

    v190 = v163;
    v191 = sub_1002588CC();
    v12 = v769;
    if (v191)
    {

      v192 = v754;
      sub_1002D56A8(v184, v754, type metadata accessor for HostedRoutingItem);
      v818[0] = v709;
      v818[1] = v711;
      v818[2] = v768;
      v818[3] = v771;
      v819 = 3;
      sub_100272B38(v818, v780);
      v193 = v753;
      sub_1002D56A8(v192, v753, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      v194 = type metadata accessor for RoutingDecisionEngine.Decision(0);
      v195 = *(v194 + 48);
      v196 = *(v194 + 52);
      v12 = swift_allocObject();
      sub_1002D5640(v193, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v197 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v198 = v780[1];
      *v197 = v780[0];
      *(v197 + 16) = v198;
      *(v197 + 32) = v780[2];
      *(v197 + 48) = v781;
      sub_1002D5710(v192, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v184, type metadata accessor for HostedRoutingItem);
      v199 = type metadata accessor for HostedRoutingSession;
      goto LABEL_40;
    }

    v217 = v743;
    RoutingSessionConfiguration.context.getter();
    v218 = sub_1000307D0();
    (*(v744 + 8))(v217, v745);
    if (v218)
    {
      v760 = v174;
      v219 = sub_100261164();
      v220 = v762;
      v854 = *(v219 + 16);
      if (v854)
      {
        v221 = 0;
        v764 = _swiftEmptyArrayStorage;
        v222 = v758;
        while (v221 < *(v219 + 16))
        {
          v223 = (*(v767 + 80) + 32) & ~*(v767 + 80);
          v224 = *(v767 + 72);
          sub_1002D56A8(v219 + v223 + v224 * v221, v222, type metadata accessor for HostedRoutingItem);
          if (*(&v222->isa + *(v220 + 36)) == 1 && (v225 = *(&v758->isa + *(v220 + 44)), LOBYTE(v775) = *sub_10025774C(), v774 = v225, sub_100248690(), v226 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v222 = v758, (v226 & 1) != 0))
          {
            sub_1002D5640(v758, v757, type metadata accessor for HostedRoutingItem);
            v227 = v764;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v229 = v227;
            v777[0] = v227;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10002A42C(0, *(v227 + 16) + 1, 1);
              v222 = v758;
              v229 = v777[0];
            }

            v231 = *(v229 + 16);
            v230 = *(v229 + 24);
            v232 = (v231 + 1);
            if (v231 >= v230 >> 1)
            {
              v764 = (v231 + 1);
              sub_10002A42C(v230 > 1, v231 + 1, 1);
              v232 = v764;
              v222 = v758;
              v229 = v777[0];
            }

            *(v229 + 16) = v232;
            v764 = v229;
            sub_1002D5640(v757, v229 + v223 + v231 * v224, type metadata accessor for HostedRoutingItem);
            v220 = v762;
          }

          else
          {
            sub_1002D5710(v222, type metadata accessor for HostedRoutingItem);
          }

          v221 = (v221 + 1);
          v155 = v770;
          if (v854 == v221)
          {
            goto LABEL_77;
          }
        }

        __break(1u);
        goto LABEL_210;
      }

      v764 = _swiftEmptyArrayStorage;
LABEL_77:

      v759 = v764[2];

      v281 = sub_100261164();
      v854 = *(v281 + 16);
      if (v854)
      {
        v282 = 0;
        v763 = _swiftEmptyArrayStorage;
        v764 = v281;
        v222 = v748;
        while (v282 < *(v281 + 16))
        {
          v283 = (*(v767 + 80) + 32) & ~*(v767 + 80);
          v284 = *(v767 + 72);
          sub_1002D56A8(v281 + v283 + v284 * v282, v222, type metadata accessor for HostedRoutingItem);
          v285 = v222;
          if (sub_100258854() && (v286 = *(&v222->isa + *(v220 + 44)), LOBYTE(v775) = *sub_10025774C(), v774 = v286, sub_100248690(), (dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0))
          {
            sub_1002D5640(v285, v756, type metadata accessor for HostedRoutingItem);
            v287 = v763;
            v288 = swift_isUniquelyReferenced_nonNull_native();
            v289 = v287;
            v777[0] = v287;
            if (v288)
            {
              v222 = v285;
            }

            else
            {
              sub_10002A42C(0, v287[2] + 1, 1);
              v222 = v748;
              v289 = v777[0];
            }

            v291 = v289[2];
            v290 = v289[3];
            if (v291 >= v290 >> 1)
            {
              sub_10002A42C(v290 > 1, v291 + 1, 1);
              v222 = v748;
              v289 = v777[0];
            }

            v289[2] = v291 + 1;
            v763 = v289;
            sub_1002D5640(v756, v289 + v283 + v291 * v284, type metadata accessor for HostedRoutingItem);
            v220 = v762;
          }

          else
          {
            sub_1002D5710(v285, type metadata accessor for HostedRoutingItem);
            v222 = v285;
          }

          v282 = (v282 + 1);
          v155 = v770;
          v281 = v764;
          if (v854 == v282)
          {
            goto LABEL_91;
          }
        }

LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      v763 = _swiftEmptyArrayStorage;
LABEL_91:

      v292 = v763[2];

      if (sub_100031908(v293))
      {
        v294 = *(v761 + *(v762 + 44));
        LOBYTE(v777[0]) = *sub_100257758();
        LOBYTE(v775) = v294;
        sub_100248690();
        if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0 && !v759 && !v292)
        {
          v295 = v733;
          sub_10001D9AC(v190 + v155[7], v733, &qword_100523640, qword_100451520);
          if ((*(v750 + 48))(v295, 1, v751) == 1)
          {
            sub_1000038A4(v295, &qword_100523640, qword_100451520);
LABEL_173:
            v554 = v772;
            v555 = sub_100028D40();
            v556 = v734;
            (*(v12 + 16))(v734, v555, v554);
            v557 = v711;
            swift_bridgeObjectRetain_n();
            v558 = Logger.logObject.getter();
            v559 = static os_log_type_t.default.getter();
            v560 = os_log_type_enabled(v558, v559);
            v561 = v761;
            if (v560)
            {
              v562 = swift_slowAlloc();
              v777[0] = swift_slowAlloc();
              *v562 = 136315394;
              v563 = _typeName(_:qualified:)();
              v565 = sub_10002C9C8(v563, v564, v777);

              *(v562 + 4) = v565;
              v557 = v711;
              *(v562 + 12) = 2082;

              v566 = v709;
              v567 = sub_10002C9C8(v709, v557, v777);

              *(v562 + 14) = v567;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v558, v559, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, publisher does not support handoff -> .set", v562, 0x16u);
              swift_arrayDestroy();

              (*(v769 + 8))(v734, v772);
              v568 = v753;
              v569 = v754;
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (*(v12 + 8))(v556, v554);
              v568 = v753;
              v569 = v754;
              v566 = v709;
            }

            sub_1002D56A8(v561, v569, type metadata accessor for HostedRoutingItem);
            v828[0] = v566;
            v828[1] = v557;
            v828[2] = v768;
            v828[3] = v771;
            v829 = 2;
            sub_100272B38(v828, v802);
            sub_1002D56A8(v569, v568, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v570 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v571 = *(v570 + 48);
            v572 = *(v570 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v568, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v573 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v574 = v802[1];
            *v573 = v802[0];
            *(v573 + 16) = v574;
            *(v573 + 32) = v802[2];
            *(v573 + 48) = v803;
            sub_1002D5710(v569, type metadata accessor for HostedRoutingItem);
            v484 = v561;
            goto LABEL_177;
          }

          v412 = v295;
          v413 = v730;
          sub_1002D5640(v412, v730, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
          v414 = *(v413 + 48);
          v415 = *(v413 + 56) | (*(v413 + 60) << 32);
          if (!sub_10025FA74(v414, v415))
          {
            sub_1002D5710(v413, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            goto LABEL_173;
          }

          v416 = *(v413 + 8);
          if (!v416)
          {
            v613 = sub_100028D40();
            v614 = v12;
            (*(v12 + 16))(v721, v613, v772);
            swift_bridgeObjectRetain_n();
            v615 = Logger.logObject.getter();
            v616 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v615, v616))
            {
              v617 = swift_slowAlloc();
              v777[0] = swift_slowAlloc();
              *v617 = 136315394;
              v618 = _typeName(_:qualified:)();
              v620 = sub_10002C9C8(v618, v619, v777);

              *(v617 + 4) = v620;
              *(v617 + 12) = 2082;
              v621 = v711;

              v622 = sub_10002C9C8(v709, v621, v777);

              *(v617 + 14) = v622;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v615, v616, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has no handoff content -> .set", v617, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v614 + 8))(v721, v772);
            v650 = v761;
            v651 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v826[0] = v709;
            v826[1] = v711;
            v826[2] = v768;
            v826[3] = v771;
            v827 = 2;
            sub_100272B38(v826, v800);
            v652 = v753;
            sub_1002D56A8(v651, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v653 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v654 = *(v653 + 48);
            v655 = *(v653 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v652, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v656 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v657 = v800[1];
            *v656 = v800[0];
            *(v656 + 16) = v657;
            *(v656 + 32) = v800[2];
            *(v656 + 48) = v801;
            sub_1002D5710(v651, type metadata accessor for HostedRoutingItem);
            sub_1002D5710(v650, type metadata accessor for HostedRoutingItem);
            v658 = v713;
            goto LABEL_208;
          }

          v767 = *v413;
          v417 = v711;

          v854 = v416;

          v418 = v723;
          v419 = v417;
          v420 = v760;
          sub_1002E31F8(v773, v709, v419, v723);
          v760 = v420;
          if (v765(v418, 1, v770) == 1)
          {
            sub_1000038A4(v723, &qword_100523620, &unk_1004511D0);
            v421 = sub_100028D40();
            (*(v769 + 16))(v719, v421, v772);
            swift_bridgeObjectRetain_n();
            v422 = Logger.logObject.getter();
            v423 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v422, v423))
            {
              v424 = swift_slowAlloc();
              v777[0] = swift_slowAlloc();
              *v424 = 136315394;
              v425 = _typeName(_:qualified:)();
              v427 = sub_10002C9C8(v425, v426, v777);

              *(v424 + 4) = v427;
              *(v424 + 12) = 2082;
              v428 = v711;

              v429 = sub_10002C9C8(v709, v428, v777);

              *(v424 + 14) = v429;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v422, v423, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has handoff content, no existing containing session -> .handoff", v424, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v769 + 8))(v719, v772);
            type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
            v664 = sub_10025FAC0(v414);
            v666 = sub_10026DB30(v664, v665, v767, v854);
            v454 = v730;
            v667 = v730 + *(v751 + 36);
            v668 = v717;
            RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
            v669 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
            (*(*(v669 - 8) + 56))(v668, 0, 1, v669);
            (*(*v666 + 192))(v668);
            v670 = v761;
            v671 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v672 = swift_allocObject();
            v673 = v713;
            isa = v713[1].isa;
            v672[2] = v713->isa;
            v672[3] = isa;
            v675 = v711;
            v672[4] = v709;
            v672[5] = v675;
            v672[6] = v666;
            v824[0] = v672;
            memset(&v824[1], 0, 24);
            v825 = 6;

            sub_100272B38(v824, v798);
            v676 = v753;
            sub_1002D56A8(v671, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v677 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v678 = *(v677 + 48);
            v679 = *(v677 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v676, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v680 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v681 = v798[1];
            *v680 = v798[0];
            *(v680 + 16) = v681;
            *(v680 + 32) = v798[2];
            *(v680 + 48) = v799;
            sub_1002D5710(v671, type metadata accessor for HostedRoutingItem);

            sub_1002D5710(v670, type metadata accessor for HostedRoutingItem);
            v682 = v673;
LABEL_218:
            sub_1002D5710(v682, type metadata accessor for HostedRoutingSession);
            v594 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
LABEL_185:
            v595 = v594;
            p_isa = &v454->isa;
LABEL_195:
            sub_1002D5710(p_isa, v595);
            return v12;
          }

          v623 = v718;
          sub_1002D5640(v723, v718, type metadata accessor for HostedRoutingSession);
          if (*(v623 + *(v770 + 36)) != 1 || !sub_10025FA68(v414, v415))
          {
            v632 = sub_100028D40();
            (*(v769 + 16))(v716, v632, v772);
            swift_bridgeObjectRetain_n();
            v633 = Logger.logObject.getter();
            v634 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v633, v634))
            {
              v635 = swift_slowAlloc();
              v777[0] = swift_slowAlloc();
              *v635 = 136315394;
              v636 = _typeName(_:qualified:)();
              v638 = sub_10002C9C8(v636, v637, v777);

              *(v635 + 4) = v638;
              *(v635 + 12) = 2082;
              v639 = v711;

              v640 = sub_10002C9C8(v709, v639, v777);

              *(v635 + 14) = v640;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v633, v634, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has handoff content, existing containing session -> .handoff", v635, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            (*(v769 + 8))(v716, v772);
            type metadata accessor for RoutingInteraction.Action.HandoffContext(0);
            v683 = sub_10025FAC0(v414);
            v685 = sub_10026DB30(v683, v684, v767, v854);
            v454 = v730;
            v686 = v730 + *(v751 + 36);
            v687 = v717;
            RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
            v688 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
            (*(*(v688 - 8) + 56))(v687, 0, 1, v688);
            (*(*v685 + 192))(v687);
            v689 = v761;
            v690 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v691 = swift_allocObject();
            v692 = v713;
            v693 = v713[1].isa;
            v691[2] = v713->isa;
            v691[3] = v693;
            v694 = v711;
            v691[4] = v709;
            v691[5] = v694;
            v691[6] = v685;
            v822[0] = v691;
            memset(&v822[1], 0, 24);
            v823 = 6;

            sub_100272B38(v822, v794);
            v695 = v753;
            sub_1002D56A8(v690, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v696 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v697 = *(v696 + 48);
            v698 = *(v696 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v695, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v699 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v700 = v794[1];
            *v699 = v794[0];
            *(v699 + 16) = v700;
            *(v699 + 32) = v794[2];
            *(v699 + 48) = v795;
            sub_1002D5710(v690, type metadata accessor for HostedRoutingItem);

            sub_1002D5710(v718, type metadata accessor for HostedRoutingSession);
            sub_1002D5710(v689, type metadata accessor for HostedRoutingItem);
            v682 = v692;
            goto LABEL_218;
          }

          v624 = sub_100028D40();
          (*(v769 + 16))(v715, v624, v772);
          swift_bridgeObjectRetain_n();
          v269 = Logger.logObject.getter();
          v625 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v269, v625))
          {
            v626 = swift_slowAlloc();
            v777[0] = swift_slowAlloc();
            *v626 = 136315394;
            v627 = _typeName(_:qualified:)();
            v629 = sub_10002C9C8(v627, v628, v777);

            *(v626 + 4) = v629;
            *(v626 + 12) = 2082;
            v630 = v711;

            v631 = sub_10002C9C8(v709, v630, v777);

            *(v626 + 14) = v631;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v269, v625, "[%s] Item: %{public}s, selected in local session, is .remoteControllable, has handoff content, existing containing session, push disabled -> .set", v626, 0x16u);
            swift_arrayDestroy();

LABEL_221:
            (*(v769 + 8))(v715, v772);
            v701 = v761;
            v702 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v820[0] = v709;
            v820[1] = v711;
            v820[2] = v768;
            v820[3] = v771;
            v821 = 2;
            sub_100272B38(v820, v796);
            v703 = v753;
            sub_1002D56A8(v702, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v704 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v705 = *(v704 + 48);
            v706 = *(v704 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v703, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v707 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v708 = v796[1];
            *v707 = v796[0];
            *(v707 + 16) = v708;
            *(v707 + 32) = v796[2];
            *(v707 + 48) = v797;
            sub_1002D5710(v702, type metadata accessor for HostedRoutingItem);
            sub_1002D5710(v718, type metadata accessor for HostedRoutingSession);
            sub_1002D5710(v701, type metadata accessor for HostedRoutingItem);
            v658 = v713;
LABEL_208:
            sub_1002D5710(v658, type metadata accessor for HostedRoutingSession);
            v595 = type metadata accessor for HostedRoutingSession.NowPlayingInfo;
            p_isa = &v730->isa;
            goto LABEL_195;
          }

LABEL_220:

          swift_bridgeObjectRelease_n();

          goto LABEL_221;
        }
      }

      v297 = v761;
      v296 = v762;
      v298 = v711;
      if (*(v761 + *(v762 + 36)) == 1)
      {
        v299 = v711;
        v300 = sub_100261164();
        v301 = v760;
        v302 = sub_1002E6EF4(v300);
        v760 = v301;

        sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
        v303 = *(v767 + 72);
        v304 = (*(v767 + 80) + 32) & ~*(v767 + 80);
        v305 = swift_allocObject();
        *(v305 + 16) = xmmword_10044EC70;
        sub_1002D56A8(v297, v305 + v304, type metadata accessor for HostedRoutingItem);
        v306 = sub_10001ECB8(v302, v305);

        swift_setDeallocating();
        v307 = *(v305 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v308 = sub_100028D40();
        v309 = *(v12 + 16);
        if (v306)
        {
          v310 = v735;
          v311 = v772;
          v309(v735, v308, v772);
          v312 = v771;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v313 = Logger.logObject.getter();
          v314 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v313, v314))
          {
            v315 = swift_slowAlloc();
            v777[0] = swift_slowAlloc();
            *v315 = 136315650;
            v316 = _typeName(_:qualified:)();
            v318 = sub_10002C9C8(v316, v317, v777);

            *(v315 + 4) = v318;
            *(v315 + 12) = 2082;

            v319 = sub_10002C9C8(v709, v299, v777);

            *(v315 + 14) = v319;
            swift_bridgeObjectRelease_n();
            *(v315 + 22) = 2082;

            v12 = sub_10002C9C8(v768, v312, v777);

            *(v315 + 24) = v12;

            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v313, v314, "[%s] Item: %{public}s, selected in session: %{public}s, is sole picked item -> no-op", v315, 0x20u);
            swift_arrayDestroy();

            (*(v769 + 8))(v735, v772);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            v477 = *(v12 + 8);
            v12 += 8;
            v477(v310, v311);
          }

          goto LABEL_154;
        }

        v362 = v736;
        v363 = v772;
        v309(v736, v308, v772);
        v364 = v771;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v365 = Logger.logObject.getter();
        v366 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v365, v366))
        {
          v367 = swift_slowAlloc();
          v854 = swift_slowAlloc();
          v777[0] = v854;
          *v367 = 136315650;
          v368 = _typeName(_:qualified:)();
          v370 = sub_10002C9C8(v368, v369, v777);

          *(v367 + 4) = v370;
          *(v367 + 12) = 2082;

          v371 = sub_10002C9C8(v709, v711, v777);

          *(v367 + 14) = v371;
          swift_bridgeObjectRelease_n();
          *(v367 + 22) = 2082;
          v299 = v711;

          v372 = v768;
          v373 = sub_10002C9C8(v768, v364, v777);

          *(v367 + 24) = v373;
          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v365, v366, "[%s] Item: %{public}s, selected in session: %{public}s, is picked -> .remove", v367, 0x20u);
          swift_arrayDestroy();

          (*(v769 + 8))(v736, v772);
          v374 = v753;
          v375 = v754;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          (*(v12 + 8))(v362, v363);
          v374 = v753;
          v375 = v754;
          v372 = v768;
        }

        v234 = v761;
        sub_1002D56A8(v761, v375, type metadata accessor for HostedRoutingItem);
        v830[0] = v709;
        v830[1] = v299;
        v830[2] = v372;
        v830[3] = v771;
        v831 = 1;
        sub_100272B38(v830, v804);
        sub_1002D56A8(v375, v374, type metadata accessor for HostedRoutingItem);
        swift_storeEnumTagMultiPayload();
        v480 = type metadata accessor for RoutingDecisionEngine.Decision(0);
        v481 = *(v480 + 48);
        v482 = *(v480 + 52);
        v12 = swift_allocObject();
        sub_1002D5640(v374, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v397 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v483 = v804[1];
        *v397 = v804[0];
        *(v397 + 16) = v483;
        *(v397 + 32) = v804[2];
        v399 = v805;
LABEL_157:
        *(v397 + 48) = v399;
        sub_1002D5710(v375, type metadata accessor for HostedRoutingItem);
        v484 = v234;
LABEL_177:
        sub_1002D5710(v484, type metadata accessor for HostedRoutingItem);
        sub_1002D5710(v713, type metadata accessor for HostedRoutingSession);
        return v12;
      }

      v320 = *(v761 + *(v762 + 44));
      v770 = sub_10025774C();
      LOBYTE(v777[0]) = *v770;
      LOBYTE(v775) = v320;
      v321 = sub_100248690();
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v766 = v321;
        result = sub_100261164();
        v322 = result;
        v323 = *(result + 16);
        if (v323)
        {
          v324 = 0;
          v854 = _swiftEmptyArrayStorage;
          v325 = v739;
          while (v324 < *(v322 + 16))
          {
            v327 = (*(v767 + 80) + 32) & ~*(v767 + 80);
            v328 = *(v767 + 72);
            sub_1002D56A8(v322 + v327 + v328 * v324, v325, type metadata accessor for HostedRoutingItem);
            if (*(v325 + *(v296 + 36)) != 1 || (v329 = *(v325 + *(v296 + 44)), LOBYTE(v775) = *v770, v774 = v329, (dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0))
            {
              result = sub_1002D5710(v325, type metadata accessor for HostedRoutingItem);
            }

            else
            {
              sub_1002D5640(v325, v741, type metadata accessor for HostedRoutingItem);
              v330 = v854;
              v331 = swift_isUniquelyReferenced_nonNull_native();
              v777[0] = v330;
              if ((v331 & 1) == 0)
              {
                sub_10002A42C(0, v330[2].isa + 1, 1);
                v330 = v777[0];
              }

              v333 = v330[2].isa;
              v332 = v330[3].isa;
              if (v333 >= v332 >> 1)
              {
                sub_10002A42C(v332 > 1, v333 + 1, 1);
                v330 = v777[0];
              }

              v330[2].isa = (v333 + 1);
              v854 = v330;
              result = sub_1002D5640(v741, v330 + v327 + v333 * v328, type metadata accessor for HostedRoutingItem);
              v296 = v762;
              v325 = v739;
            }

            ++v324;
            v326 = v772;
            if (v323 == v324)
            {
              goto LABEL_165;
            }
          }

          __break(1u);
          goto LABEL_223;
        }

        v854 = _swiftEmptyArrayStorage;
        v326 = v772;
LABEL_165:

        v518 = v854[2].isa;
        v519 = sub_100028D40();
        v520 = v769;
        v521 = *(v769 + 16);
        if (v518)
        {
          v522 = v729;
          v521(v729, v519, v326);
          v523 = v771;
          swift_bridgeObjectRetain_n();
          v524 = v711;
          swift_bridgeObjectRetain_n();
          v525 = Logger.logObject.getter();
          v526 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v525, v526))
          {
            v527 = swift_slowAlloc();
            v777[0] = swift_slowAlloc();
            *v527 = 136315650;
            v528 = _typeName(_:qualified:)();
            v530 = sub_10002C9C8(v528, v529, v777);

            *(v527 + 4) = v530;
            *(v527 + 12) = 2082;

            v531 = sub_10002C9C8(v709, v711, v777);

            *(v527 + 14) = v531;
            swift_bridgeObjectRelease_n();
            *(v527 + 22) = 2082;

            v532 = v768;
            v533 = sub_10002C9C8(v768, v523, v777);

            *(v527 + 24) = v533;
            v524 = v711;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v525, v526, "[%s] Item: %{public}s, is not picked in session: %{public}s, session has existing non-groupable items -> .set", v527, 0x20u);
            swift_arrayDestroy();

            (*(v769 + 8))(v729, v772);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            (*(v520 + 8))(v522, v326);
            v532 = v768;
          }

          v575 = v761;
          v576 = v754;
          sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
          v834[0] = v709;
          v834[1] = v524;
          v834[2] = v532;
          v834[3] = v523;
          v835 = 2;
          sub_100272B38(v834, v812);
          v577 = v753;
          sub_1002D56A8(v576, v753, type metadata accessor for HostedRoutingItem);
          swift_storeEnumTagMultiPayload();
          v578 = type metadata accessor for RoutingDecisionEngine.Decision(0);
          v579 = *(v578 + 48);
          v580 = *(v578 + 52);
          v12 = swift_allocObject();
          sub_1002D5640(v577, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v581 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v582 = v812[1];
          *v581 = v812[0];
          *(v581 + 16) = v582;
          *(v581 + 32) = v812[2];
          v583 = v813;
        }

        else
        {
          v521(v724, v519, v326);
          v534 = v771;
          swift_bridgeObjectRetain_n();
          v535 = v711;
          swift_bridgeObjectRetain_n();
          v536 = Logger.logObject.getter();
          v537 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v536, v537))
          {
            v538 = swift_slowAlloc();
            v770 = swift_slowAlloc();
            v777[0] = v770;
            *v538 = 136315650;
            v539 = _typeName(_:qualified:)();
            v541 = sub_10002C9C8(v539, v540, v777);

            *(v538 + 4) = v541;
            *(v538 + 12) = 2082;

            v542 = sub_10002C9C8(v709, v535, v777);

            *(v538 + 14) = v542;
            swift_bridgeObjectRelease_n();
            *(v538 + 22) = 2082;

            v543 = v768;
            v544 = sub_10002C9C8(v768, v534, v777);

            *(v538 + 24) = v544;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v536, v537, "[%s] Item: %{public}s, is not picked in session: %{public}s -> .add", v538, 0x20u);
            swift_arrayDestroy();

            (*(v769 + 8))(v724, v772);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();

            (*(v769 + 8))(v724, v772);
            v543 = v768;
          }

          v575 = v761;
          v576 = v754;
          sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
          v832[0] = v709;
          v832[1] = v535;
          v832[2] = v543;
          v832[3] = v534;
          v833 = 0;
          sub_100272B38(v832, v814);
          v608 = v753;
          sub_1002D56A8(v576, v753, type metadata accessor for HostedRoutingItem);
          swift_storeEnumTagMultiPayload();
          v609 = type metadata accessor for RoutingDecisionEngine.Decision(0);
          v610 = *(v609 + 48);
          v611 = *(v609 + 52);
          v12 = swift_allocObject();
          sub_1002D5640(v608, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v581 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v612 = v814[1];
          *v581 = v814[0];
          *(v581 + 16) = v612;
          *(v581 + 32) = v814[2];
          v583 = v815;
        }

        goto LABEL_193;
      }

      v376 = sub_100257764();
      LOBYTE(v777[0]) = *v376;
      LOBYTE(v775) = v320;
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v377 = sub_100261164();
        v378 = *(v377 + 16);
        if (v378)
        {
          v379 = v377 + ((*(v767 + 80) + 32) & ~*(v767 + 80));
          v380 = *(v767 + 72);
          while (1)
          {
            if (*(v379 + *(v762 + 36)))
            {
              v381 = *(v379 + *(v762 + 44));
              LOBYTE(v777[0]) = *v376;
              LOBYTE(v775) = v381;
              if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
              {
                break;
              }
            }

            v379 += v380;
            if (!--v378)
            {
              goto LABEL_162;
            }
          }

          v190 = v713;

          v382 = sub_100028D40();
          (*(v769 + 16))(v720, v382, v772);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v222 = Logger.logObject.getter();
          v383 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v222, v383))
          {
            v384 = swift_slowAlloc();
            v777[0] = swift_slowAlloc();
            *v384 = 136315650;
            v385 = _typeName(_:qualified:)();
            v387 = sub_10002C9C8(v385, v386, v777);

            *(v384 + 4) = v387;
            *(v384 + 12) = 2082;
            v388 = v711;

            v389 = sub_10002C9C8(v709, v388, v777);

            *(v384 + 14) = v389;
            swift_bridgeObjectRelease_n();
            *(v384 + 22) = 2082;
            v390 = v771;

            v391 = sub_10002C9C8(v768, v390, v777);

            *(v384 + 24) = v391;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v222, v383, "[%s] Item: %{public}s, is not picked in session: %{public}s, supports split, session has existing non-split items -> .set", v384, 0x20u);
            swift_arrayDestroy();

LABEL_212:
            (*(v769 + 8))(v720, v772);
            v641 = v761;
            v642 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v838[0] = v709;
            v838[1] = v711;
            v838[2] = v768;
            v838[3] = v771;
            v839 = 2;
            sub_100272B38(v838, v806);
            v659 = v753;
            sub_1002D56A8(v642, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v660 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v661 = *(v660 + 48);
            v662 = *(v660 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v659, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v647 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v663 = v806[1];
            *v647 = v806[0];
            *(v647 + 16) = v663;
            *(v647 + 32) = v806[2];
            v649 = v807;
LABEL_213:
            *(v647 + 48) = v649;
            sub_1002D5710(v642, type metadata accessor for HostedRoutingItem);
            sub_1002D5710(v641, type metadata accessor for HostedRoutingItem);
            v595 = type metadata accessor for HostedRoutingSession;
            p_isa = v190;
            goto LABEL_195;
          }

LABEL_211:

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          goto LABEL_212;
        }

LABEL_162:

        v506 = sub_100028D40();
        v507 = v769;
        (*(v769 + 16))(v727, v506, v772);
        v508 = v771;
        swift_bridgeObjectRetain_n();
        v509 = v711;
        swift_bridgeObjectRetain_n();
        v510 = Logger.logObject.getter();
        v511 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v510, v511))
        {
          v512 = swift_slowAlloc();
          v854 = swift_slowAlloc();
          v777[0] = v854;
          *v512 = 136315650;
          v513 = _typeName(_:qualified:)();
          v515 = sub_10002C9C8(v513, v514, v777);

          *(v512 + 4) = v515;
          *(v512 + 12) = 2082;

          v516 = sub_10002C9C8(v709, v509, v777);

          *(v512 + 14) = v516;
          swift_bridgeObjectRelease_n();
          *(v512 + 22) = 2082;

          v517 = sub_10002C9C8(v768, v508, v777);

          *(v512 + 24) = v517;
          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v510, v511, "[%s] Item: %{public}s, is not picked in session: %{public}s, supports split, session has only split items -> .add", v512, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v507 + 8))(v727, v772);
        v575 = v761;
        v576 = v754;
        sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
        v836[0] = v709;
        v836[1] = v509;
        v836[2] = v768;
        v836[3] = v508;
        v837 = 0;
        sub_100272B38(v836, v808);
        v603 = v753;
        sub_1002D56A8(v576, v753, type metadata accessor for HostedRoutingItem);
        swift_storeEnumTagMultiPayload();
        v604 = type metadata accessor for RoutingDecisionEngine.Decision(0);
        v605 = *(v604 + 48);
        v606 = *(v604 + 52);
        v12 = swift_allocObject();
        sub_1002D5640(v603, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v581 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v607 = v808[1];
        *v581 = v808[0];
        *(v581 + 16) = v607;
        *(v581 + 32) = v808[2];
        v583 = v809;
        goto LABEL_193;
      }

      v485 = sub_100028D40();
      v486 = v725;
      v487 = v772;
      (*(v12 + 16))(v725, v485, v772);
      v488 = v771;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v489 = Logger.logObject.getter();
      v490 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v489, v490))
      {
        v491 = swift_slowAlloc();
        v777[0] = swift_slowAlloc();
        *v491 = 136315650;
        v492 = _typeName(_:qualified:)();
        v494 = sub_10002C9C8(v492, v493, v777);

        *(v491 + 4) = v494;
        *(v491 + 12) = 2082;

        v495 = sub_10002C9C8(v709, v711, v777);

        *(v491 + 14) = v495;
        swift_bridgeObjectRelease_n();
        *(v491 + 22) = 2082;
        v298 = v711;

        v496 = sub_10002C9C8(v768, v488, v777);

        *(v491 + 24) = v496;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v489, v490, "[%s] Item: %{public}s, is not picked in session: %{public}s, not multi select or split -> .set", v491, 0x20u);
        swift_arrayDestroy();

        (*(v769 + 8))(v725, v487);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v12 + 8))(v486, v487);
      }

      v545 = v761;
      v546 = v754;
      sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
      v840[0] = v709;
      v840[1] = v298;
      v840[2] = v768;
      v840[3] = v488;
      v841 = 2;
      sub_100272B38(v840, v810);
      v597 = v753;
      sub_1002D56A8(v546, v753, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      v598 = type metadata accessor for RoutingDecisionEngine.Decision(0);
      v599 = *(v598 + 48);
      v600 = *(v598 + 52);
      v12 = swift_allocObject();
      sub_1002D5640(v597, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v551 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v601 = v810[1];
      *v551 = v810[0];
      *(v551 + 16) = v601;
      *(v551 + 32) = v810[2];
      v553 = v811;
      goto LABEL_188;
    }

    v234 = v761;
    v233 = v762;
    if (*(v761 + *(v762 + 36)) != 1)
    {
      v760 = v174;
      v265 = *(v761 + *(v762 + 44));
      v770 = sub_10025774C();
      LOBYTE(v777[0]) = *v770;
      LOBYTE(v775) = v265;
      v266 = sub_100248690();
      v267 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v268 = v711;
      if (v267)
      {
        v766 = v266;
        v269 = v713;
        v270 = sub_100261164();
        v271 = *(v270 + 16);
        if (!v271)
        {
          v854 = _swiftEmptyArrayStorage;
          v274 = v772;
LABEL_148:

          v444 = v854[2].isa;
          v445 = sub_100028D40();
          v446 = v769;
          v447 = *(v769 + 16);
          if (v444)
          {
            v448 = v732;
            v447(v732, v445, v274);
            v449 = v771;
            swift_bridgeObjectRetain_n();
            v450 = v711;
            swift_bridgeObjectRetain_n();
            v451 = Logger.logObject.getter();
            v452 = static os_log_type_t.default.getter();
            v453 = os_log_type_enabled(v451, v452);
            v454 = v713;
            if (v453)
            {
              v455 = swift_slowAlloc();
              v777[0] = swift_slowAlloc();
              *v455 = 136315650;
              v456 = _typeName(_:qualified:)();
              v458 = v454;
              v459 = sub_10002C9C8(v456, v457, v777);

              *(v455 + 4) = v459;
              v454 = v458;
              *(v455 + 12) = 2082;

              v460 = sub_10002C9C8(v709, v711, v777);

              *(v455 + 14) = v460;
              swift_bridgeObjectRelease_n();
              *(v455 + 22) = 2082;

              v461 = v768;
              v462 = sub_10002C9C8(v768, v449, v777);

              *(v455 + 24) = v462;
              v450 = v711;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v451, v452, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, session has existing non-groupable items -> .set", v455, 0x20u);
              swift_arrayDestroy();

              (*(v769 + 8))(v732, v772);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();

              (*(v446 + 8))(v448, v274);
              v461 = v768;
            }

            v497 = v761;
            v498 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v846[0] = v709;
            v846[1] = v450;
            v846[2] = v461;
            v846[3] = v449;
            v847 = 2;
            sub_100272B38(v846, v790);
            v499 = v753;
            sub_1002D56A8(v498, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v500 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v501 = *(v500 + 48);
            v502 = *(v500 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v499, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v503 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v504 = v790[1];
            *v503 = v790[0];
            *(v503 + 16) = v504;
            *(v503 + 32) = v790[2];
            v505 = v791;
          }

          else
          {
            v463 = v726;
            v447(v726, v445, v274);
            v464 = v771;
            swift_bridgeObjectRetain_n();
            v465 = v711;
            swift_bridgeObjectRetain_n();
            v466 = Logger.logObject.getter();
            v467 = static os_log_type_t.default.getter();
            v468 = os_log_type_enabled(v466, v467);
            v454 = v713;
            if (v468)
            {
              v469 = swift_slowAlloc();
              v777[0] = swift_slowAlloc();
              *v469 = 136315650;
              v470 = _typeName(_:qualified:)();
              v472 = v454;
              v473 = sub_10002C9C8(v470, v471, v777);

              *(v469 + 4) = v473;
              v454 = v472;
              *(v469 + 12) = 2082;

              v474 = sub_10002C9C8(v709, v711, v777);

              *(v469 + 14) = v474;
              swift_bridgeObjectRelease_n();
              *(v469 + 22) = 2082;

              v475 = v768;
              v476 = sub_10002C9C8(v768, v464, v777);

              *(v469 + 24) = v476;
              v465 = v711;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v466, v467, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context -> .add", v469, 0x20u);
              swift_arrayDestroy();

              (*(v769 + 8))(v726, v772);
            }

            else
            {

              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();

              (*(v446 + 8))(v463, v274);
              v475 = v768;
            }

            v497 = v761;
            v498 = v754;
            sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
            v844[0] = v709;
            v844[1] = v465;
            v844[2] = v475;
            v844[3] = v464;
            v845 = 0;
            sub_100272B38(v844, v792);
            v589 = v753;
            sub_1002D56A8(v498, v753, type metadata accessor for HostedRoutingItem);
            swift_storeEnumTagMultiPayload();
            v590 = type metadata accessor for RoutingDecisionEngine.Decision(0);
            v591 = *(v590 + 48);
            v592 = *(v590 + 52);
            v12 = swift_allocObject();
            sub_1002D5640(v589, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
            v503 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
            v593 = v792[1];
            *v503 = v792[0];
            *(v503 + 16) = v593;
            *(v503 + 32) = v792[2];
            v505 = v793;
          }

          *(v503 + 48) = v505;
          sub_1002D5710(v498, type metadata accessor for HostedRoutingItem);
          sub_1002D5710(v497, type metadata accessor for HostedRoutingItem);
          v594 = type metadata accessor for HostedRoutingSession;
          goto LABEL_185;
        }

        v272 = 0;
        v854 = _swiftEmptyArrayStorage;
        v273 = v740;
        while (v272 < *(v270 + 16))
        {
          v275 = (*(v767 + 80) + 32) & ~*(v767 + 80);
          v276 = *(v767 + 72);
          sub_1002D56A8(v270 + v275 + v276 * v272, v273, type metadata accessor for HostedRoutingItem);
          if (*(v273 + *(v233 + 36)) != 1 || (v277 = *(v273 + *(v233 + 44)), LOBYTE(v775) = *v770, v774 = v277, v269 = &v774, (dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) != 0))
          {
            sub_1002D5710(v273, type metadata accessor for HostedRoutingItem);
          }

          else
          {
            sub_1002D5640(v273, v747, type metadata accessor for HostedRoutingItem);
            v269 = v854;
            v278 = swift_isUniquelyReferenced_nonNull_native();
            v777[0] = v269;
            if ((v278 & 1) == 0)
            {
              sub_10002A42C(0, v269[2].isa + 1, 1);
              v269 = v777[0];
            }

            v280 = v269[2].isa;
            v279 = v269[3].isa;
            if (v280 >= v279 >> 1)
            {
              sub_10002A42C(v279 > 1, v280 + 1, 1);
              v269 = v777[0];
            }

            v269[2].isa = (v280 + 1);
            v854 = v269;
            sub_1002D5640(v747, v269 + v275 + v280 * v276, type metadata accessor for HostedRoutingItem);
            v233 = v762;
            v273 = v740;
          }

          ++v272;
          v274 = v772;
          if (v271 == v272)
          {
            goto LABEL_148;
          }
        }

        __break(1u);
        goto LABEL_220;
      }

      v345 = sub_100257764();
      LOBYTE(v777[0]) = *v345;
      LOBYTE(v775) = v265;
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v346 = sub_100261164();
        v347 = *(v346 + 16);
        if (v347)
        {
          v348 = v346 + ((*(v767 + 80) + 32) & ~*(v767 + 80));
          v349 = *(v767 + 72);
          while (1)
          {
            if (*(v348 + *(v762 + 36)))
            {
              v350 = *(v348 + *(v762 + 44));
              LOBYTE(v777[0]) = *v345;
              LOBYTE(v775) = v350;
              if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
              {
                break;
              }
            }

            v348 += v349;
            if (!--v347)
            {
              goto LABEL_145;
            }
          }

          v190 = v713;

          v351 = sub_100028D40();
          (*(v769 + 16))(v722, v351, v772);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v352 = Logger.logObject.getter();
          v353 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v352, v353))
          {
            v354 = swift_slowAlloc();
            v777[0] = swift_slowAlloc();
            *v354 = 136315650;
            v355 = _typeName(_:qualified:)();
            v357 = sub_10002C9C8(v355, v356, v777);

            *(v354 + 4) = v357;
            *(v354 + 12) = 2082;
            v358 = v711;

            v359 = sub_10002C9C8(v709, v358, v777);

            *(v354 + 14) = v359;
            swift_bridgeObjectRelease_n();
            *(v354 + 22) = 2082;
            v360 = v771;

            v361 = sub_10002C9C8(v768, v360, v777);

            *(v354 + 24) = v361;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v352, v353, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, supports split, session has existing non-split items -> .set", v354, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v769 + 8))(v722, v772);
          v641 = v761;
          v642 = v754;
          sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
          v850[0] = v709;
          v850[1] = v711;
          v850[2] = v768;
          v850[3] = v771;
          v851 = 2;
          sub_100272B38(v850, v784);
          v643 = v753;
          sub_1002D56A8(v642, v753, type metadata accessor for HostedRoutingItem);
          swift_storeEnumTagMultiPayload();
          v644 = type metadata accessor for RoutingDecisionEngine.Decision(0);
          v645 = *(v644 + 48);
          v646 = *(v644 + 52);
          v12 = swift_allocObject();
          sub_1002D5640(v643, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
          v647 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
          v648 = v784[1];
          *v647 = v784[0];
          *(v647 + 16) = v648;
          *(v647 + 32) = v784[2];
          v649 = v785;
          goto LABEL_213;
        }

LABEL_145:

        v430 = sub_100028D40();
        v431 = v769;
        v432 = v728;
        v433 = v772;
        (*(v769 + 16))(v728, v430, v772);
        v434 = v771;
        swift_bridgeObjectRetain_n();
        v435 = v711;
        swift_bridgeObjectRetain_n();
        v436 = Logger.logObject.getter();
        v437 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v436, v437))
        {
          v438 = swift_slowAlloc();
          v777[0] = swift_slowAlloc();
          *v438 = 136315650;
          v439 = _typeName(_:qualified:)();
          v441 = sub_10002C9C8(v439, v440, v777);

          *(v438 + 4) = v441;
          *(v438 + 12) = 2082;

          v442 = sub_10002C9C8(v709, v711, v777);

          *(v438 + 14) = v442;
          swift_bridgeObjectRelease_n();
          *(v438 + 22) = 2082;
          v435 = v711;

          v443 = sub_10002C9C8(v768, v434, v777);

          *(v438 + 24) = v443;
          swift_bridgeObjectRelease_n();

          _os_log_impl(&_mh_execute_header, v436, v437, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, supports split, session has only split items -> .add", v438, 0x20u);
          swift_arrayDestroy();

          (*(v769 + 8))(v728, v433);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          (*(v431 + 8))(v432, v433);
        }

        v575 = v761;
        v576 = v754;
        sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
        v848[0] = v709;
        v848[1] = v435;
        v848[2] = v768;
        v848[3] = v434;
        v849 = 0;
        sub_100272B38(v848, v786);
        v584 = v753;
        sub_1002D56A8(v576, v753, type metadata accessor for HostedRoutingItem);
        swift_storeEnumTagMultiPayload();
        v585 = type metadata accessor for RoutingDecisionEngine.Decision(0);
        v586 = *(v585 + 48);
        v587 = *(v585 + 52);
        v12 = swift_allocObject();
        sub_1002D5640(v584, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
        v581 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
        v588 = v786[1];
        *v581 = v786[0];
        *(v581 + 16) = v588;
        *(v581 + 32) = v786[2];
        v583 = v787;
LABEL_193:
        *(v581 + 48) = v583;
        sub_1002D5710(v576, type metadata accessor for HostedRoutingItem);
        v602 = v575;
        goto LABEL_194;
      }

      v400 = sub_100028D40();
      v401 = v731;
      v402 = v772;
      (*(v12 + 16))(v731, v400, v772);
      v403 = v771;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v404 = Logger.logObject.getter();
      v405 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v404, v405))
      {
        v406 = swift_slowAlloc();
        v777[0] = swift_slowAlloc();
        *v406 = 136315650;
        v407 = _typeName(_:qualified:)();
        v409 = sub_10002C9C8(v407, v408, v777);

        *(v406 + 4) = v409;
        *(v406 + 12) = 2082;

        v410 = sub_10002C9C8(v709, v711, v777);

        *(v406 + 14) = v410;
        swift_bridgeObjectRelease_n();
        *(v406 + 22) = 2082;
        v268 = v711;

        v411 = sub_10002C9C8(v768, v403, v777);

        *(v406 + 24) = v411;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v404, v405, "[%s] Item: %{public}s, is not picked in session: %{public}s, not RC context, not multi select or split -> .set", v406, 0x20u);
        swift_arrayDestroy();

        (*(v769 + 8))(v731, v402);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v12 + 8))(v401, v402);
      }

      v545 = v761;
      v546 = v754;
      sub_1002D56A8(v761, v754, type metadata accessor for HostedRoutingItem);
      v852[0] = v709;
      v852[1] = v268;
      v852[2] = v768;
      v852[3] = v403;
      v853 = 2;
      sub_100272B38(v852, v788);
      v547 = v753;
      sub_1002D56A8(v546, v753, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      v548 = type metadata accessor for RoutingDecisionEngine.Decision(0);
      v549 = *(v548 + 48);
      v550 = *(v548 + 52);
      v12 = swift_allocObject();
      sub_1002D5640(v547, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v551 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v552 = v788[1];
      *v551 = v788[0];
      *(v551 + 16) = v552;
      *(v551 + 32) = v788[2];
      v553 = v789;
LABEL_188:
      *(v551 + 48) = v553;
      sub_1002D5710(v546, type metadata accessor for HostedRoutingItem);
      v602 = v545;
LABEL_194:
      sub_1002D5710(v602, type metadata accessor for HostedRoutingItem);
      v595 = type metadata accessor for HostedRoutingSession;
      p_isa = &v713->isa;
      goto LABEL_195;
    }

    v235 = sub_100261164();
    v236 = sub_1002E6EF4(v235);
    v760 = v175;

    sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
    v237 = *(v767 + 72);
    v238 = (*(v767 + 80) + 32) & ~*(v767 + 80);
    v239 = swift_allocObject();
    *(v239 + 16) = xmmword_10044EC70;
    sub_1002D56A8(v234, v239 + v238, type metadata accessor for HostedRoutingItem);
    v240 = sub_10001ECB8(v236, v239);

    swift_setDeallocating();
    v241 = *(v239 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v242 = sub_100028D40();
    v243 = *(v12 + 16);
    v244 = v711;
    if ((v240 & 1) == 0)
    {
      v334 = v738;
      v335 = v772;
      v243(v738, v242, v772);
      v336 = v771;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v337, v338))
      {
        v339 = swift_slowAlloc();
        v777[0] = swift_slowAlloc();
        *v339 = 136315650;
        v340 = _typeName(_:qualified:)();
        v342 = sub_10002C9C8(v340, v341, v777);

        *(v339 + 4) = v342;
        *(v339 + 12) = 2082;

        v343 = sub_10002C9C8(v709, v711, v777);

        *(v339 + 14) = v343;
        swift_bridgeObjectRelease_n();
        *(v339 + 22) = 2082;
        v244 = v711;

        v344 = sub_10002C9C8(v768, v336, v777);

        *(v339 + 24) = v344;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v337, v338, "[%s] Item: %{public}s, is picked in session: %{public}s, not RC context -> .remove", v339, 0x20u);
        swift_arrayDestroy();

        (*(v769 + 8))(v738, v772);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v12 + 8))(v334, v335);
      }

      v393 = v753;
      v375 = v754;
      sub_1002D56A8(v234, v754, type metadata accessor for HostedRoutingItem);
      v842[0] = v709;
      v842[1] = v244;
      v842[2] = v768;
      v842[3] = v336;
      v843 = 1;
      sub_100272B38(v842, v782);
      sub_1002D56A8(v375, v393, type metadata accessor for HostedRoutingItem);
      swift_storeEnumTagMultiPayload();
      v394 = type metadata accessor for RoutingDecisionEngine.Decision(0);
      v395 = *(v394 + 48);
      v396 = *(v394 + 52);
      v12 = swift_allocObject();
      sub_1002D5640(v393, v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_element, type metadata accessor for RoutingDecisionEngine.Decision.Element);
      v397 = v12 + OBJC_IVAR____TtCC12mediaremoted21RoutingDecisionEngine8Decision_interaction;
      v398 = v782[1];
      *v397 = v782[0];
      *(v397 + 16) = v398;
      *(v397 + 32) = v782[2];
      v399 = v783;
      goto LABEL_157;
    }

    v132 = v737;
    a2 = v772;
    v243(v737, v242, v772);
    v245 = v771;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v127 = Logger.logObject.getter();
    v246 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v127, v246))
    {
      v247 = swift_slowAlloc();
      v854 = swift_slowAlloc();
      v777[0] = v854;
      *v247 = 136315650;
      v248 = _typeName(_:qualified:)();
      v250 = sub_10002C9C8(v248, v249, v777);

      *(v247 + 4) = v250;
      *(v247 + 12) = 2082;

      v251 = sub_10002C9C8(v709, v244, v777);

      *(v247 + 14) = v251;
      swift_bridgeObjectRelease_n();
      *(v247 + 22) = 2082;

      v12 = sub_10002C9C8(v768, v245, v777);

      *(v247 + 24) = v12;

      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v127, v246, "[%s] Item: %{public}s, is sole picked item in session: %{public}s, not RC context -> no-op", v247, 0x20u);
      swift_arrayDestroy();

      (*(v769 + 8))(v737, a2);
LABEL_154:
      v478 = type metadata accessor for InternalRoutingError();
      sub_1002E798C(&qword_100524710, &type metadata accessor for InternalRoutingError);
      swift_allocError();
      (*(*(v478 - 8) + 104))(v479, enum case for InternalRoutingError.NOP(_:), v478);
      swift_willThrow();
      sub_1002D5710(v761, type metadata accessor for HostedRoutingItem);
      sub_1002D5710(v713, type metadata accessor for HostedRoutingSession);
      return v12;
    }

LABEL_135:

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v392 = *(v12 + 8);
    v12 += 8;
    v392(v132, a2);
    goto LABEL_154;
  }

LABEL_223:
  __break(1u);
  return result;
}